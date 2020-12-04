#include "os/thread.h"
#include "os/constants.h"
#include "os/timer.h"
#include "os/cpu.h"
#include "os/console.h"

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

    const char* thread_t::get_state_str(){
        switch(state){
            case thread_state::empty:       return "empty";
            case thread_state::ready:       return "ready";
            case thread_state::running:     return "running";
            case thread_state::sleeping:    return "sleeping";
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