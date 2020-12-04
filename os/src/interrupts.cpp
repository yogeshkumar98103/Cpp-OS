#include "os/interrupts.h"
#include "os/memory.h"
#include "os/console.h"
#include "os/cpu.h"
#include "os/mmio.h"
#include "os/timer.h"
#include "os/constants.h"

// https://github.com/eggman/raspberrypi/tree/master/qemu-raspi2/timer01
// https://www.raspberrypi.org/documentation/faqs/
// https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bcm2836/QA7_rev3.4.pdf

using namespace os;

extern "C" void move_exception_vector(void);
extern "C" void setup_interrupts(void);
extern uint32_t exception_vector;   

namespace os::interrupts {
    __inline__ int __interrupts_enabled(void) {
        int res;
        __asm__ __volatile__("mrs %[res], CPSR": [res] "=r" (res)::);
        return ((res >> 7) & 1) == 0;
    }

    __inline__ void __enable_interrupts(void) {
        // if (!__interrupts_enabled()) {
            __asm__ __volatile__("cpsie i");
        // }
    }

    __inline__ void __disable_interrupts(void) {
        // if (__interrupts_enabled()) {
            __asm__ __volatile__("cpsid i");
        // }
    }

    void disable_interrupts(){
        __asm__ __volatile__("cpsid i");
        ++os::this_cpu().ncli;
    }

    void enable_interrupts(){
        if(os::this_cpu().ncli > 1){
            --os::this_cpu().ncli;
        }
        else {
            os::this_cpu().ncli = 0;
            __asm__ __volatile__("cpsie i");
        } 
    }

    static volatile interrupt_registers_t* interrupt_regs;
    // static interrupt_handler_f handlers[NUM_IRQS];
    // static interrupt_clearer_f clearers[NUM_IRQS];

    static timer_handler_f timer_handler[NCPU];
    // static timer_handler_f timer_clearer[NCPU];

    // volatile interrupt_registers_t* get_interrupt_regs(){
    //     return interrupt_regs;
    // }

    void init(void) {
        interrupt_regs = (volatile interrupt_registers_t *) mmio::INTERRUPTS_PENDING;
        memory::bzero(timer_handler, sizeof (timer_handler_f) * NCPU);
        // os::memory::bzero(handlers, sizeof(interrupt_handler_f) * NUM_IRQS);
        // os::memory::bzero(clearers, sizeof(interrupt_clearer_f) * NUM_IRQS);
        interrupt_regs->irq_basic_disable = 0xffffffff; // disable all interrupts
        // interrupt_regs->irq_basic_enable  = 1;
        interrupt_regs->irq_gpu_disable1  = 0xffffffff;
        interrupt_regs->irq_gpu_disable2  = 0xffffffff;
        move_exception_vector();
    }

    void register_timer_handler(timer_handler_f handler, int cpu_id){
        timer_handler[cpu_id] = handler;
        // timer_clearer[cpu_id] = clearer;
    }

    void unregister_timer_handler(int cpu_id){
        timer_handler[cpu_id] = nullptr;
        // timer_clearer[cpu_id] = nullptr;
    }
}

extern "C" void _start(void);

extern "C" void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
    os::console::puts("RESET HANDLER\n");
    _start();
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

static inline bool is_timer_irq(int cpu_id){
    return mmio::read(mmio::CORE_IRQ_SOURCE_BASE + cpu_id * 0x4) & 0x08; 
} 

extern "C" void context_save(os::thread::cpu_context_t**);

extern "C" void irq_handler(void) {
    using namespace os::interrupts;

    uint32_t cpu_id = get_cpu_id();
    disable_interrupts();
    // os::cpu[cpu_id].ncli++;
    // console::putu32((os::cpu[cpu_id].ncli/10) % 10);
    console::puts("Interrupt!!\n");

    if(is_timer_irq(cpu_id)){
        if(timer_handler[cpu_id]){
            // context_save(&os::cpu[cpu_id].scheduler->current_thread->context);
            // os::interrupts::enable_interrupts();
            timer_handler[cpu_id](cpu_id);
            // os::interrupts::disable_interrupts();
        }
    }


    enable_interrupts();
}

extern "C" void irq_handler_asm_wrapper();

extern "C" void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
    using namespace os::interrupts;
    disable_interrupts();
    console::puts("Fast Interrupt!!\n");
    irq_handler_asm_wrapper();
    enable_interrupts();
}


// for (int i = 0; i < NUM_IRQS; ++i) {
    //     // If the interrupt is pending and there is a handler, run the handler
    //     if(irq_is_pending(interrupt_regs, i)){
    //         os::console::putu32(i);
    //         os::console::putc(' ');
    //     }
        
    //     // if (irq_is_pending(interrupt_regs, i) && handlers[i] != 0) {
    //     //     clearers[i]();
    //     //     enable_interrupts();
    //     //     handlers[i]();
    //     //     disable_interrupts();
    //     //     return;
    //     // }
    // }

 // void register_irq_handler(uint32_t irq_num, interrupt_handler_f handler) {
    //     uint32_t irq_pos;
    //     if (irq_is_basic(irq_num)) {
    //         irq_pos = irq_num - 64;
    //         handlers[irq_num] = handler;
    //         interrupt_regs->irq_basic_enable |= (1 << irq_pos);
    //     }
    //     else if (irq_is_gpu2(irq_num)) {
    //         irq_pos = irq_num - 32;
    //         handlers[irq_num] = handler;
    //         interrupt_regs->irq_gpu_enable2 |= (1 << irq_pos);
    //     }
    //     else if (irq_is_gpu1(irq_num)) {
    //         irq_pos = irq_num;
    //         handlers[irq_num] = handler;
    //         interrupt_regs->irq_gpu_enable1 |= (1 << irq_pos);
    //     }
    //     else {
    //         // os::console::printf("[-] ERROR: CANNOT REGISTER IRQ HANDLER: INVALID IRQ NUMBER: %d\n", irq_num);
    //         os::console::puts("[-] ERROR: CANNOT REGISTER IRQ HANDLER: INVALID IRQ NUMBER\n");
    //     }
    // }

    // void unregister_irq_handler(uint32_t irq_num) {
    //     uint32_t irq_pos;

    //     if (irq_is_basic(irq_num)) {
    //         irq_pos = irq_num - 64;
    //         handlers[irq_num] = 0;
    //         clearers[irq_num] = 0;
    //         // Setting the disable bit clears the enabled bit
    //         interrupt_regs->irq_basic_disable |= (1 << irq_pos);
    //     }
    //     else if (irq_is_gpu2(irq_num)) {
    //         irq_pos = irq_num - 32;
    //         handlers[irq_num] = 0;
    //         clearers[irq_num] = 0;
    //         interrupt_regs->irq_gpu_disable2 |= (1 << irq_pos);
    //     }
    //     else if (irq_is_gpu1(irq_num)) {
    //         irq_pos = irq_num;
    //         handlers[irq_num] = 0;
    //         clearers[irq_num] = 0;
    //         interrupt_regs->irq_gpu_disable1 |= (1 << irq_pos);
    //     }
    //     else {
    //         // os::console::printf("ERROR: CANNOT UNREGISTER IRQ HANDLER: INVALID IRQ NUMBER: %d\n", irq_num);
    //         os::console::puts("[-] ERROR: CANNOT UNREGISTER IRQ HANDLER: INVALID IRQ NUMBER\n");
    //     }
    // }