#include "os/thread.h"
#include "os/constants.h"
#include "os/timer.h"
#include "os/cpu.h"
#include "os/console.h"

namespace os {
    thread::thread_t* this_thread(){
        return os::this_cpu().scheduler->current_thread;
    }
}

namespace os::thread {
    tid_t next_thread_id = 1;

    bool thread_t::is_empty(){
        return state == thread_state::empty;
    }

    bool thread_t::is_running(){
        return state == thread_state::running;
    }

    bool thread_t::is_ready(){
        return state == thread_state::ready;
    }

    bool thread_t::is_sleeping(){
        return state == thread_state::sleeping;
    }

    bool thread_t::is_finished(){
        return state == thread_state::finished;
    }

    void thread_t::sleep(sleep_channel_t* sleep_chan){ 
        os::this_cpu().scheduler->sleep(sleep_chan);
    }

    void thread_t::wake_all(sleep_channel_t* sleep_chan){
        os::this_cpu().scheduler->wake_all(sleep_chan);
    }

    void thread_t::wake_one(sleep_channel_t* sleep_chan){
        os::this_cpu().scheduler->wake_one(sleep_chan);
    }

    void thread_t::join(){
        os::this_cpu().scheduler->join(this);
    }

    const char* thread_t::get_state_str(){
        switch(state){
            case thread_state::empty:       return "empty";
            case thread_state::ready:       return "ready";
            case thread_state::running:     return "running";
            case thread_state::sleeping:    return "sleeping";
            case thread_state::finished:    return "finished";
        }
    }
}

namespace os::concurrency {
    void dispatcher(uint32_t cpu_id){
        // switch_stack(os::this_cpu().scheduler->sch_context);
        os::cpu[cpu_id].scheduler->dispatcher();
    }
}

extern "C" void grim_reaper(){
    using namespace os::concurrency;
    std::cout << "Outer Grim Reaper\n";
    switch_stack(os::this_cpu().scheduler->sch_context);
    os::this_cpu().scheduler->grim_reaper();
}

extern "C" void thread_exit(){
    using namespace os::concurrency;
    std::cout << "Thread Exit\n";
    // while(1);
    context_load(&os::this_cpu().scheduler->sch_context);
    // context_switch(os::this_cpu().scheduler->current_thread->context, os::this_cpu().scheduler->sch_context);
    // switch_stack(os::this_cpu().scheduler->sch_context);
    // os::this_cpu().scheduler->thread_exit();
}