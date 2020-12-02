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

// void enable_cntv(void) {
//     uint32_t cntv_ctl = 1;
// 	asm volatile ("mcr p15, 0, %0, c14, c3, 1" :: "r"(cntv_ctl) ); // write CNTV_CTL
// }

// uint32_t read_cntfrq(void) {
//     uint32_t val;
// 	asm volatile ("mrc p15, 0, %0, c14, c0, 0" : "=r"(val) );
//     return val;
// }

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


    // int cntfrq = read_cntfrq();
    // write_cntv_tval(cntfrq);    // clear cntv interrupt and set next 1 sec timer.
    // os::mmio::write(CORE0_TIMER_IRQCNTL, 0x08);
    // enable_cntv(); 
    // __asm__ __volatile__("cpsie i");

    // volatile uint32_t* local_interrupt_0 = (uint32_t*)0x40000024;
    // volatile uint32_t* local_timer_control = (uint32_t*)0x40000034;
    // volatile uint32_t* local_timer_write_flags = (uint32_t*)0x40000038;
    // volatile uint32_t* core0_timer_int_control = (uint32_t*)0x40000040;

    // *local_interrupt_0 = 0;
    // *local_timer_control = (1U << 29) | (1U << 28) | (0x00ffffff);
    // *local_timer_write_flags = (1U << 31) | (1U << 30);
    // *core0_timer_int_control = (1 << 1);
    // __asm__ __volatile__("cpsie i");
}

void core1_entry(int core_id){
    coreinitlock1.wait();

    printlock.acquire();
    std::cout << "Core #" << core_id << " Started" << std::endl;
    printlock.release();

    os::timer::init();
    os::timer::set(0);

    // volatile uint32_t* local_interrupt_0 = (uint32_t*)0x40000024;
    // volatile uint32_t* local_timer_control = (uint32_t*)0x40000034;
    // volatile uint32_t* local_timer_write_flags = (uint32_t*)0x40000038;
    // const uint32_t control_reg = 0x40000000;
    // const uint32_t core_timer_prescaler = 0x40000008;
    // const uint32_t core_timer_int_control = 0x40000040 + 4 * core_id;
    
    // *local_interrupt_0 = core_id;
    // *local_timer_control = (1U << 29) | (1U << 28) | (0x00ffffff);
    // *local_timer_write_flags = (1U << 31) | (1U << 30);
    // os::mmio::write(core_timer_prescaler, 1 << 30);
    // os::mmio::write(core_timer_int_control, 1);
    // __asm__ __volatile__("cpsie i");
}

void core2_entry(int core_id){
    coreinitlock2.wait();

    printlock.acquire();
    std::cout << "Core #" << core_id << " Started" << std::endl;
    printlock.release();
}

void core3_entry(int core_id){
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
