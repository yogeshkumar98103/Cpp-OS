#include "os/kernel.h"
#include "os/console.h"
#include "os/memory.h"
#include "os/spinlock.h"
#include "os/interrupts.h"
#include "os/timer.h"
#include "os/thread.h"
#include "os/cpu.h"

#include "iostream.h"
#include "utility.h"

os::sync::signallock coreinitlock1;
os::sync::signallock coreinitlock2;
os::sync::signallock coreinitlock3;
os::sync::spinlock printlock;

void core0_entry(uint32_t core_id, int atags){
    using namespace os::console;
    os::cpu_init(core_id);
    os::kernel::init(0, 0, atags);
    os::interrupts::init();

    coreinitlock1.signal();
    coreinitlock2.signal();
    coreinitlock3.signal();

    printlock.acquire();
    std::cout << "Core #" << core_id << " Started" << std::endl;
    printlock.release();

    // char* str = (char*)heap.malloc(100);
    // os::console::puts("Kernel Started\n");
    // for(uint32_t i = 0; ; ++i){
    //     std::cout << "Enter Text: ";
    //     os::console::getline(str, 99);
    //     std::cout << '[' << i << "] You typed: " << str << std::endl;
    // }
    // heap.free(str);
}

using scheduler_t = os::concurrency::rr_scheduler<5, os::memory::best_fit_heap>;
scheduler_t* scheduler;

void second_thread(){
    uint32_t j = 0;
    while(true){
        for(volatile uint32_t i = 0; i < 10000000; ++i);
        printlock.acquire();
        std::cout << "Second Thread: " << j++ << ' ' << get_sp() << std::endl;
        printlock.release();
    } 
}

void third_thread(){
    uint32_t j = 0;
    while(true){
        for(volatile uint32_t i = 0; i < 10000000; ++i);
        printlock.acquire();
        std::cout << "Third Thread: " << j++ << ' ' << get_sp() << std::endl;
        printlock.release();
    } 
}

void fourth_thread(){
    uint32_t j = 0;
    while(true){
        for(volatile uint32_t i = 0; i < 10000000; ++i);
        printlock.acquire();
        std::cout << "Fourth Thread: " << j++ << ' ' << get_sp() << std::endl;
        printlock.release();
    } 
}

void main_thread(){
    scheduler->spawn(second_thread);
    scheduler->spawn(third_thread);
    scheduler->spawn(fourth_thread);

    uint32_t j = 0;
    while(true){
        for(volatile uint32_t i = 0; i < 10000000; ++i);
        printlock.acquire();
        std::cout << "Main Thread: " << j++ << ' ' << get_sp() << std::endl;
        printlock.release();
    } 
}

void handler(uint32_t core_id){
    printlock.acquire();
    std::cout << "Interrupt on " << os::cpu[core_id].ncli << std::endl;
    printlock.release();
    os::timer::set(1000);
}

void core1_entry(uint32_t core_id){
    using namespace os::concurrency;
    os::cpu_init(core_id);
    coreinitlock1.wait();

    printlock.acquire();
    std::cout << "Core #" << core_id << " Started" << std::endl;
    printlock.release();

    void* heap_start   = os::memory::get_kernel_end();
    uint32_t heap_size = os::memory::get_memory_size();
    os::memory::best_fit_heap heap(heap_start, heap_size);
    scheduler_t scheduler(1000, std::move(heap));
    ::scheduler = &scheduler;
    os::cpu[core_id].scheduler = (scheduler_base*)&scheduler;
    scheduler.start(main_thread);
    std::cout << "Back to core 1" << std::endl;

    // auto p1 = heap.malloc(os::STACK_SIZE);
    // auto p2 = heap.malloc(os::STACK_SIZE);
    // auto p3 = heap.malloc(os::STACK_SIZE);

    std::cout << "Hello" << std::endl;

    // os::timer::init(handler, 1000);
}

void core2_entry(uint32_t core_id){
    os::cpu_init(core_id);
    coreinitlock2.wait();

    printlock.acquire();
    std::cout << "Core #" << core_id << " Started" << std::endl;
    printlock.release();
}

void core3_entry(uint32_t core_id){
    os::cpu_init(core_id);
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
