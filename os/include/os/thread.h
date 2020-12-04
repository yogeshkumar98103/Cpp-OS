#ifndef __OS__THREAD_H
#define __OS__THREAD_H

#include "constants.h"
#include "memory.h"
#include "interrupts.h"
#include "spinlock.h"
#include "lib/utility.h"
#include "timer.h"
#include "lib/iostream.h"

namespace os::thread {
    enum class thread_state {
        empty, sleeping, running, ready,
    };

    using tid_t = uint32_t;
    extern tid_t next_thread_id;

    struct cpu_context_t {
        uint32_t r0;
        uint32_t r1; 
        uint32_t r2; 
        uint32_t r3; 
        uint32_t r4; 
        uint32_t r5; 
        uint32_t r6; 
        uint32_t r7; 
        uint32_t r8;
        uint32_t r9;
        uint32_t r10;
        uint32_t r11;
        uint32_t cpsr; 
        // uint32_t sp;
        uint32_t lr;
    };

    struct thread_t {        
        tid_t tid;
        thread_state state;
        cpu_context_t* context;
        char* stack;

        bool is_empty();
        bool is_running();
        bool is_ready();
        bool is_sleeping();
        const char* get_state_str();
    };
}

extern "C" void first_context_switch(os::thread::cpu_context_t**, os::thread::cpu_context_t**);
extern "C" void context_switch(os::thread::cpu_context_t**, os::thread::cpu_context_t**);
extern "C" void context_load(os::thread::cpu_context_t**);
extern "C" void context_save(os::thread::cpu_context_t**);
extern "C" void switch_stack(os::thread::cpu_context_t*);
extern "C" void grim_reaper();
extern "C" uint32_t get_sp();

namespace os::concurrency {
    class scheduler_base{
    public:
        os::thread::thread_t* current_thread;
        os::thread::cpu_context_t* sch_context;

        friend void dispatcher(uint32_t cpu_id);

        virtual void dispatcher();
        virtual void grim_reaper();
    };

    void dispatcher(uint32_t cpu_id);

    template <uint32_t nthreads, typename heap_t>
    class rr_scheduler: public scheduler_base {
        os::thread::thread_t threads[nthreads];
        
        uint32_t all_thread_count;
        uint32_t active_thread_count;
        uint32_t qidx;
        uint32_t time_quanta;

        heap_t heap;
        os::sync::spinlock tlock;
        
    public:
        // rr_scheduler() = default;

        rr_scheduler(uint32_t time_quanta_ms, heap_t&& heap_): time_quanta(time_quanta_ms), heap(std::move(heap_)){
            qidx = 0;
            active_thread_count = 0;
            all_thread_count = 0;
            memory::bzero(threads, sizeof(os::thread::thread_t) * nthreads);
            for(os::thread::thread_t* thread = &threads[0]; thread < &threads[nthreads]; ++thread){
                thread->state = os::thread::thread_state::empty;
            }
        }

        template <typename func_t, typename... args_u>
        void start(func_t main_thread, args_u&& ...args){
            os::thread::thread_t* thread = spawn(main_thread, args...);
            current_thread = thread;
            current_thread->state = os::thread::thread_state::running;
            os::timer::init(os::concurrency::dispatcher, time_quanta);

            first_context_switch(&sch_context, &thread->context);
            std::cout << "Returned from switch" << std::endl;
        }

        template <typename func_t, typename... args_u>
        os::thread::thread_t* spawn(func_t thread_func, args_u&& ...args){
            if(nthreads == all_thread_count) return nullptr;
            // TODO: add args to stack

            tlock.acquire();
            os::thread::thread_t& thread = *find_slot();
            thread.state = os::thread::thread_state::ready;
            thread.tid = os::thread::next_thread_id++;
            thread.stack = (char*)heap.malloc(STACK_SIZE);
            thread.context = reinterpret_cast<os::thread::cpu_context_t*>(thread.stack + os::STACK_SIZE - sizeof(os::thread::cpu_context_t));
            os::memory::bzero(thread.context, sizeof(os::thread::cpu_context_t));
            thread.context->lr = reinterpret_cast<uint32_t>(thread_func);
            thread.context->cpsr = 0x13 | (8 << 1);         // supervisor mode with IRQs only

            ++all_thread_count;
            ++active_thread_count;

            tlock.release();
            return &thread;
        }

    private:

        /// This function chooses next thread to schedule
        /// This is only called when there are atleast one active thread
        os::thread::thread_t* get_next(){
            while(!threads[qidx].is_ready()){
                qidx = qidx + 1;
                if(qidx == nthreads) qidx = 0;
                // std::cout << qidx << ' ';
            }
            return &threads[qidx];
        }

        void dispatcher() override {
            os::timer::set(time_quanta);
            std::cout << "active_thread_count: " << active_thread_count << std::endl;

            // debug_threads();

            if(active_thread_count > 1){
                os::thread::thread_t* old_thread = current_thread;
                current_thread = get_next();
                old_thread->state = os::thread::thread_state::ready;
                current_thread->state = os::thread::thread_state::running;
                // debug_threads();
                // std::cout << current_thread->tid << std::endl;
                // std::cout << "B: " << current_thread->tid << std::endl;
                // std::cout << "Stack Ptr: " << get_sp() << std::endl;
                // std::cout << "Stack 1: " << (uint32_t)old_thread->context << std::endl;
                // std::cout << "Stack 2: " << (uint32_t)current_thread->context << std::endl;
                os::interrupts::enable_interrupts();
                context_switch(&old_thread->context, &current_thread->context);
                // std::cout << "A: " << current_thread->tid << std::endl;
                // std::cout << "Stack Ptr: " << get_sp() << std::endl;
                // std::cout << "Stack 1: " << (uint32_t)old_thread->context << std::endl;
                // std::cout << "Stack 2: " << (uint32_t)current_thread->context << std::endl;
            }
            else std::cout << current_thread->tid << std::endl;

            // os::interrupts::disable_interrupts();
        }

        void grim_reaper() override {
            // os::interrupts::disable_interrupts();
            std::cout << "Grim Reaper!!\n";

            current_thread->state = os::thread::thread_state::empty;
            heap.free(current_thread->stack);
            active_thread_count--;
            all_thread_count--;

            if(all_thread_count == 0){
                // os::interrupts::enable_interrupts();
                context_load(&sch_context);
                // Never return here
            }

            current_thread = get_next();
            context_load(&current_thread->context);

            // os::interrupts::enable_interrupts();
        }

        os::thread::thread_t* find_slot(){
            for(uint32_t i = 0; i < nthreads; ++i){
                if(threads[i].is_empty()) return &threads[i];
            }

            // Control never reaches here
            return nullptr;
        }

        void debug_threads(){
            for(uint32_t i = 0; i < nthreads; ++i){
                std::cout << '[' << i << "] tid: " << threads[i].tid << " state: " << threads[i].get_state_str() << std::endl;
            }
        }
    };
}

#endif // __OS__THREAD_H