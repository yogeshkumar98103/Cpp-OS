#ifndef __OS__THREAD_H
#define __OS__THREAD_H

#include "constants.h"
#include "memory.h"
#include "interrupts.h"
#include "spinlock.h"
#include "lib/utility.h"
#include "timer.h"
#include "lib/iostream.h"
#include "cpu.h"

namespace os::thread {
    enum class thread_state {
        empty, sleeping, running, ready, finished
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
        uint32_t lr;
    };

    struct sleep_channel_t {};

    struct thread_t {        
        tid_t tid;
        thread_state state;
        cpu_context_t* context;
        char* stack;                    // start of stack page
        sleep_channel_t join_channel;   // other thread will sleep on this channel when join is called
        sleep_channel_t* chan;          // if not null then thread is sleeping on this channel

        bool is_empty();
        bool is_running();
        bool is_ready();
        bool is_sleeping();
        bool is_finished();

        const char* get_state_str();
        void join();
        void sleep(sleep_channel_t* sleep_chan);
        void wake_one(sleep_channel_t* sleep_chan);
        void wake_all(sleep_channel_t* sleep_chan);
    };

    template <typename scheduler_t, typename func_t, typename... args_u>
    thread_t* spawn(func_t thread_func, args_u&& ...args) {
        return ((scheduler_t*)os::this_cpu().scheduler)->spawn(thread_func, args...);
    }
}

namespace os {
    thread::thread_t* this_thread();
    // thread::thread_t* this_scheduler();
}

extern "C" void context_switch(os::thread::cpu_context_t**, os::thread::cpu_context_t**);
extern "C" void context_load(os::thread::cpu_context_t**);
extern "C" void thread_exit();
extern "C" uint32_t get_sp();

namespace os::concurrency {
    template <typename scheduler_t>
    void dispatcher(uint32_t cpu_id){
        ((scheduler_t*)os::cpu[cpu_id].scheduler)->dispatcher();
    }
    
    class scheduler_base{
    public:
        os::thread::cpu_context_t* sch_context;
        os::thread::thread_t* current_thread;

        virtual void sleep(os::thread::sleep_channel_t* sleep_chan) = 0;
        virtual void join(os::thread::thread_t* thread) = 0;
        virtual void wake_one(os::thread::sleep_channel_t* sleep_chan) = 0;
        virtual void wake_all(os::thread::sleep_channel_t* sleep_chan) = 0;
    };

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

        template <typename scheduler_t>
        friend void dispatcher(uint32_t cpu_id);
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

        ~rr_scheduler(){

        }

        template <typename func_t, typename... args_u>
        void start(func_t main_thread, args_u&& ...args){
            os::this_cpu().scheduler = static_cast<scheduler_base*>(this);

            os::thread::thread_t* thread = spawn(main_thread, args...);
            current_thread = thread;
            current_thread->state = os::thread::thread_state::running;
            os::timer::init(os::concurrency::dispatcher<rr_scheduler<nthreads, heap_t>>, time_quanta);

            context_switch(&sch_context, &thread->context);
            while(all_thread_count > 0) thread_exit();

            os::timer::disable();

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

        void sleep(os::thread::sleep_channel_t* sleep_chan) override {
            if(sleep_chan == nullptr) return;
            os::interrupts::disable_interrupts();

            // tlock.acquire();
            current_thread->chan = sleep_chan;
            current_thread->state = os::thread::thread_state::sleeping;
            active_thread_count--;
            // tlock.release();

            // debug_threads();
            os::thread::thread_t* old_thread = current_thread;

            // if all threads are sleeping then we spin on this function until a thread wakes up
            // although not recommended, this waking can be done by some other cpu.
            current_thread = get_next();    
            current_thread->state = os::thread::thread_state::running;

            os::timer::set(time_quanta);
            os::interrupts::enable_interrupts();
            context_switch(&old_thread->context, &current_thread->context);
        }

        void join(os::thread::thread_t* thread) override {
            os::interrupts::disable_interrupts();

            if(thread->is_finished()){
                thread->state = os::thread::thread_state::empty;
                os::interrupts::enable_interrupts();
                return;
            }

            current_thread->chan = &thread->join_channel;
            current_thread->state = os::thread::thread_state::sleeping;
            active_thread_count--;

            os::thread::thread_t* old_thread = current_thread;

            // if all threads are sleeping then we spin on this function until a thread wakes up
            // although not recommended, this waking can be done by some other cpu.
            current_thread = get_next();    
            current_thread->state = os::thread::thread_state::running;

            debug_threads();

            os::timer::set(time_quanta);
            os::interrupts::enable_interrupts();
            context_switch(&old_thread->context, &current_thread->context);
            thread->state = os::thread::thread_state::empty;
        }

        void wake_all(os::thread::sleep_channel_t* sleep_chan) override {
            for(os::thread::thread_t* thread = &threads[0]; thread < &threads[nthreads]; ++thread){
                if(thread->is_sleeping() && thread->chan == sleep_chan){
                    thread->chan = nullptr;
                    thread->state = os::thread::thread_state::ready;
                    active_thread_count++;
                }
            }
        }

        void wake_one(os::thread::sleep_channel_t* sleep_chan) override {
            for(os::thread::thread_t* thread = &threads[0]; thread < &threads[nthreads]; ++thread){
                if(thread->is_sleeping() && thread->chan == sleep_chan){
                    thread->chan = nullptr;
                    thread->state = os::thread::thread_state::ready;
                    active_thread_count++;
                    break;
                }
            }
        }

    private:

        void dispatcher() {
            if(active_thread_count > 1){
                os::thread::thread_t* old_thread = current_thread;
                current_thread = get_next();
                old_thread->state = os::thread::thread_state::ready;
                current_thread->state = os::thread::thread_state::running;
                debug_threads();

                os::timer::set(time_quanta);
                os::interrupts::enable_interrupts();
                context_switch(&old_thread->context, &current_thread->context);
            }
            else {
                debug_threads();
                os::timer::set(time_quanta);
            }
        }

        void thread_exit() {
            os::interrupts::disable_interrupts();
            std::cout << "Thread Exit\n";

            heap.free(current_thread->stack);
            active_thread_count--;
            all_thread_count--;

            if(all_thread_count == 0) {
                current_thread->state = os::thread::thread_state::empty;
                os::interrupts::enable_interrupts();
                return;
            }

            current_thread->state = os::thread::thread_state::finished;
            wake_one(&current_thread->join_channel);
            current_thread = get_next();
            current_thread->state = os::thread::thread_state::running;

            os::timer::set(time_quanta);
            os::interrupts::enable_interrupts();

            context_switch(&sch_context, &current_thread->context);
            // context_load(&current_thread->context); 
        }

        /// This function chooses next thread to schedule
        /// This is only called when there are atleast one active thread
        os::thread::thread_t* get_next(){
            while(!threads[qidx].is_ready()){
                qidx = qidx + 1;
                if(qidx == nthreads) qidx = 0;
            }
            return &threads[qidx];
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