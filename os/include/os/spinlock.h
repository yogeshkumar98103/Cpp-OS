#ifndef __OS__SPINLOCK_H
#define __OS__SPINLOCK_H

namespace os::sync {
    class spinlock {
        using lock_t = volatile int;

        // Lock states:-
        // 0 -> Acquired
        // 1 -> Released

    public:
        lock_t lock; 

        spinlock();
        void init();
        void acquire();
        void release();
    };

    class signallock {
        using lock_t = volatile int;
    public:
        lock_t lock; 

        signallock();
        void wait();
        void signal();
    };
}

#endif // __OS__SPINLOCK_H