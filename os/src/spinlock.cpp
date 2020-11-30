#include "os/spinlock.h"

// extern "C" int try_lock(int* lock);

namespace os::sync {
    spinlock::spinlock(){
        lock = 0;
    }

    void spinlock::init(){
        lock = 0;
    }

    void spinlock::acquire(){
        while (__atomic_test_and_set(&lock, __ATOMIC_ACQUIRE));
        // while (!try_lock(&lock));
    }

    void spinlock::release(){
        __atomic_store_n(&lock, 0, __ATOMIC_RELAXED);
        // lock = 0;
    }

    signallock::signallock(){
        lock = 0;
    }

    void signallock::signal(){
        // __atomic_fetch_add(&lock, 1, __ATOMIC_RELAXED);
        lock = 1;
    }

    void signallock::wait(){
        while(!lock);
    }
}
