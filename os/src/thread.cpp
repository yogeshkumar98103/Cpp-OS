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
        return "";
    }
}

extern "C" void thread_exit(){
    context_load(&os::this_cpu().scheduler->sch_context);
}