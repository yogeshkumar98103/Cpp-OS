#include "os/spinlock.h"
#include "os/interrupts.h"

// extern "C" int try_lock(int* lock);
using namespace os;

namespace os::sync {
    spinlock::spinlock(){
        lock = 0;
    }

    void spinlock::init(){
        lock = 0;
    }

    void spinlock::acquire(){
        // interrupts::disable_interrupts();
        while (__atomic_test_and_set(&lock, __ATOMIC_ACQUIRE));
    }

    void spinlock::release(){
        __atomic_store_n(&lock, 0, __ATOMIC_RELAXED);
        // interrupts::enable_interrupts();
    }

    signallock::signallock(){
        lock = 0;
    }

    void signallock::signal(){
        lock = 1;
    }

    void signallock::wait(){
        while(!lock);
    }
}
