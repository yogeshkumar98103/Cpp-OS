#include "os/kernel.h"
#include "os/console.h"
#include "os/memory.h"
#include "os/spinlock.h"
#include "os/interrupts.h"
#include "os/timer.h"

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

void core0_entry(int core_id, int atags){
    os::kernel::init(0, 0, atags);
    coreinitlock1.signal();
    coreinitlock2.signal();
    coreinitlock3.signal();

    printlock.acquire();
    os::console::puts("Core #");
    os::console::putu32(core_id);
    os::console::puts(" Started\n");
    printlock.release();

    os::interrupts::init();

    volatile uint32_t* local_interrupt_0 = (uint32_t*)0x40000024;
    volatile uint32_t* local_timer_control = (uint32_t*)0x40000034;
    volatile uint32_t* local_timer_write_flags = (uint32_t*)0x40000038;
    volatile uint32_t* core0_timer_int_control = (uint32_t*)0x40000040;
    // reload value 5000000 = like half sec, enable clock, enable interrupt

    *local_interrupt_0 = 0;
    *local_timer_control = (1U << 29) | (1U << 28) | (0x00ffffff);
    // 3.) Hit timer interrupt clear and reload register 0x40000038 (bits 30 & 31)
    // QA7_rev3.4.pdf page 18 ... write 1 to both bits which clears irq signal and loads value from above
    *local_timer_write_flags = (1U << 31) | (1U << 30);

    // 4.) Setup timer interrupt control register 0x40000040 (all bits ... zero all but the one bit set)
    // QA7_rev3.4.pdf page 13 ... now this depends what mode Core0 leaves your bootstub in.
    // If you did no EL changes in stub the core0 will still be in Hyp mode if like me you dropped it to SVC mode it is Non Secure

    // If Core0 enters in Hyp mode ... set nCNTHPIRQ_IRQ bit 1
    // If Core0 enters in Svc mode ... set nCNTPNSIRQ_IRQ bit 2
    *core0_timer_int_control = (1 << 1);

    // 5.) Now you need to enable global interupts
    __asm__ __volatile__("cpsie i");

    // os::armtimer::init();
    // os::armtimer::set(0x4000000);
}

void core1_entry(int core_id){
    coreinitlock1.wait();

    printlock.acquire();
    os::console::puts("Core #");
    os::console::putu32(core_id);
    os::console::puts(" Started\n");
    printlock.release();
}

void core2_entry(int core_id){
    coreinitlock2.wait();

    printlock.acquire();
    os::console::puts("Core #");
    os::console::putu32(core_id);
    os::console::puts(" Started\n");
    printlock.release();
}

void core3_entry(int core_id){
    coreinitlock3.wait();

    printlock.acquire();
    os::console::puts("Core #");
    os::console::putu32(core_id);
    os::console::puts(" Started\n");
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
