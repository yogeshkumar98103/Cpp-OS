#include "os/kernel.h"
#include "os/console.h"
#include "os/memory.h"
#include "os/spinlock.h"
#include "os/interrupts.h"
#include "os/timer.h"

#include "iostream.h"

// typedef void (*constructor)();
// extern "C" constructor start_ctors;
// extern "C" constructor end_ctors;
// extern "C" void callConstructors(){
//   for(constructor* i = &start_ctors; i != &end_ctors; i++)
//      (*i)();
// }

// os::sync::spinlock coreinitlock1;
// os::sync::spinlock coreinitlock2;
// os::sync::spinlock coreinitlock3;

os::sync::signallock coreinitlock1;
os::sync::signallock coreinitlock2;
os::sync::signallock coreinitlock3;
os::sync::spinlock printlock;

// void* heap_start   = os::memory::get_kernel_end();
    // uint32_t heap_size = os::memory::get_memory_size();

    // os::memory::best_fit_heap heap(heap_start, heap_size);

    // char* str = (char*)heap.malloc(100);

    // os::console::puts("Kernel Started\n");
    // for(uint32_t i = 0; ; ++i){
    //     os::console::puts("Enter Text: ");
    //     os::console::getline(str, 99);
    //     os::console::putc('[');
    //     os::console::putu32(i);
    //     os::console::puts("] You typed: ");
    //     os::console::puts(str);
    //     os::console::putc('\n');
    // }

    // heap.free(str);

void core0_entry(uint32_t core_id, int atags){
    using namespace os::console;

    os::kernel::init(0, 0, atags);
    os::interrupts::init();

    coreinitlock1.signal();
    coreinitlock2.signal();
    coreinitlock3.signal();

    printlock.acquire();
    std::cout << "Core #" << core_id << " Started" << std::endl;
    printlock.release();
}

void timer_irq_handler(const uint32_t cpu_id){
    os::timer::set(2000);
    std::cout << "Interrupted Core #" << cpu_id << std::endl;
}

void core1_entry(uint32_t core_id){
    coreinitlock1.wait();

    printlock.acquire();
    std::cout << "Core #" << core_id << " Started" << std::endl;
    printlock.release();

    os::timer::init(timer_irq_handler, 0);
}

void core2_entry(uint32_t core_id){
    coreinitlock2.wait();

    printlock.acquire();
    std::cout << "Core #" << core_id << " Started" << std::endl;
    printlock.release();
}

void core3_entry(uint32_t core_id){
    coreinitlock3.wait();

    printlock.acquire();
    std::cout << "Core #" << core_id << " Started" << std::endl;
    printlock.release();
}

#ifdef AARCH64 
extern "C" int entry(uint64_t dtb_ptr32, uint64_t x1, uint64_t x2, uint64_t x3){
    os::kernel::init(dtb_ptr32, x1, x2, x3);

#else
extern "C" void entry(int r0, int core_id, int atags){

#endif
    (void) r0;

    switch(core_id){
        case 0: core0_entry(core_id, atags); break;
        case 1: core1_entry(core_id); break;
        case 2: core2_entry(core_id); break;
        case 3: core3_entry(core_id); break;
    }
}



// extern "C" void core_dispatcher(int r1, int core_id, int atags){
//     (void) atags;
//     (void) r1;

    
// }
