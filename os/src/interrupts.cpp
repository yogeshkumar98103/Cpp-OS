#include "os/interrupts.h"
#include "os/memory.h"
#include "os/console.h"

extern "C" void move_exception_vector(void);
extern "C" void setup_interrupts(void);
extern uint32_t exception_vector;   

namespace os::interrupts{
    static volatile interrupt_registers_t* interrupt_regs;
    static interrupt_handler_f handlers[NUM_IRQS];
    static interrupt_clearer_f clearers[NUM_IRQS];

    volatile interrupt_registers_t* get_interrupt_regs(){
        return interrupt_regs;
    }

    void init(void) {
        interrupt_regs = (volatile interrupt_registers_t *) os::mmio::INTERRUPTS_PENDING;
        os::memory::bzero(handlers, sizeof(interrupt_handler_f) * NUM_IRQS);
        os::memory::bzero(clearers, sizeof(interrupt_clearer_f) * NUM_IRQS);
        interrupt_regs->irq_basic_disable = 0xffffffff; // disable all interrupts
        interrupt_regs->irq_gpu_disable1  = 0xffffffff;
        interrupt_regs->irq_gpu_disable2  = 0xffffffff;
        move_exception_vector();
        enable_interrupts();
    }

    void register_irq_handler(uint32_t irq_num, interrupt_handler_f handler, interrupt_clearer_f clearer) {
        uint32_t irq_pos;
        if (irq_is_basic(irq_num)) {
            irq_pos = irq_num - 64;
            handlers[irq_num] = handler;
            clearers[irq_num] = clearer;
            interrupt_regs->irq_basic_enable |= (1 << irq_pos);
        }
        else if (irq_is_gpu2(irq_num)) {
            irq_pos = irq_num - 32;
            handlers[irq_num] = handler;
            clearers[irq_num] = clearer;
            interrupt_regs->irq_gpu_enable2 |= (1 << irq_pos);
        }
        else if (irq_is_gpu1(irq_num)) {
            irq_pos = irq_num;
            handlers[irq_num] = handler;
            clearers[irq_num] = clearer;
            interrupt_regs->irq_gpu_enable1 |= (1 << irq_pos);
        }
        else {
            // os::console::printf("[-] ERROR: CANNOT REGISTER IRQ HANDLER: INVALID IRQ NUMBER: %d\n", irq_num);
            os::console::puts("[-] ERROR: CANNOT REGISTER IRQ HANDLER: INVALID IRQ NUMBER\n");
        }
    }

    void unregister_irq_handler(uint32_t irq_num) {
        uint32_t irq_pos;

        if (irq_is_basic(irq_num)) {
            irq_pos = irq_num - 64;
            handlers[irq_num] = 0;
            clearers[irq_num] = 0;
            // Setting the disable bit clears the enabled bit
            interrupt_regs->irq_basic_disable |= (1 << irq_pos);
        }
        else if (irq_is_gpu2(irq_num)) {
            irq_pos = irq_num - 32;
            handlers[irq_num] = 0;
            clearers[irq_num] = 0;
            interrupt_regs->irq_gpu_disable2 |= (1 << irq_pos);
        }
        else if (irq_is_gpu1(irq_num)) {
            irq_pos = irq_num;
            handlers[irq_num] = 0;
            clearers[irq_num] = 0;
            interrupt_regs->irq_gpu_disable1 |= (1 << irq_pos);
        }
        else {
            // os::console::printf("ERROR: CANNOT UNREGISTER IRQ HANDLER: INVALID IRQ NUMBER: %d\n", irq_num);
            os::console::puts("[-] ERROR: CANNOT UNREGISTER IRQ HANDLER: INVALID IRQ NUMBER\n");
        }
    }
}

extern "C" void _start(void);

extern "C" void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
    os::console::puts("RESET HANDLER\n");
    _start();
    // while(1);
}
extern "C" void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
    os::console::puts("PREFETCH ABORT HANDLER\n");
    while(1);
}
extern "C" void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
    os::console::puts("DATA ABORT HANDLER\n");
    while(1);
}
extern "C" void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
    os::console::puts("UNDEFINED INSTRUCTION HANDLER\n");
    while(1);
}
extern "C" void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
    os::console::puts("SWI HANDLER\n");
    while(1);
}
extern "C" void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
    os::console::puts("FIQ HANDLER\n");
    while(1);
}

// extern "C" void __attribute__ ((interrupt ("RESET"))) reset_handler(void) {
//     os::console::puts("RESET HANDLER\n");
//     while(1);
// }

// __attribute__ ((interrupt ("IRQ")))

extern "C" void  irq_handler(void) {
    using namespace os::interrupts;
    // disable_interrupts();
    volatile uint32_t* local_timer_write_flags = (uint32_t*)0x40000038;
    *local_timer_write_flags = (1U << 31) | (1U << 30);

    os::console::puts("Interrupted! ");

    for (int i = 0; i < NUM_IRQS; ++i) {
        // If the interrupt is pending and there is a handler, run the handler
        if(irq_is_pending(interrupt_regs, i)){
            os::console::putu32(i);
            os::console::putc(' ');
        }
        
        // if (irq_is_pending(interrupt_regs, i) && handlers[i] != 0) {
        //     clearers[i]();
        //     enable_interrupts();
        //     handlers[i]();
        //     disable_interrupts();
        //     return;
        // }
    }

    os::console::putc('\n');
    // enable_interrupts();
}