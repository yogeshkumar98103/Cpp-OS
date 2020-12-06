#include "os/thread.h"
#include "os/interrupts.h"

using namespace os;

namespace os::collection {

    template <typename type_t, size_t capacity>
    class queue {
        type_t arr[capacity];
        uint32_t front;
        uint32_t rear;
        uint32_t size;

    public:

        queue(){
            rear = capacity - 1;
            front = size = 0;
        }

        bool is_empty(){
            return size == 0;
        }

        bool is_full(){
            return size == capacity;
        }

        enqueue(type_t ele){
            if (is_full()) return; 
            rear = (rear + 1) % capacity; 
            arr[rear] = ele; 
            ++size;
        }

        type_t dequeue(){
            type_t ele = arr[front]; 
            front = (front + 1) % capacity; 
            --size; 
            return ele; 
        }

        type_t peek_front(){
            return arr[front];
        }
    };
}

namespace os::sync {
    inline const uint32_t NWAITERS = 20;

    class mutexlocks {
        using mutex_t = uint32_t;
        os::collection::queue<thread::thread_t*, NWAITERS> waiters;

        mutex_t lock;
        os::thread::sleep_channel_t sleep_chan;

    public:
        
        mutexlocks();
        void acquire();
        void release();
    };

    mutexlocks::mutexlocks(){
        lock = 0;
    }

    void mutexlocks::acquire(){
        while(__atomic_test_and_set(&lock, __ATOMIC_ACQUIRE)){
            waiters.enqueue(os::this_thread());
            os::this_thread()->sleep(&sleep_chan);
        }
    }

    void mutexlocks::release(){
        
        waiters.dequeue()->wake_this();
        __atomic_store_n(&lock, 0, __ATOMIC_RELEASE);
    }
}