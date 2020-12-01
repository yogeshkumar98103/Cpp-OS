#include "os/interrupts.h"

extern "C" void move_exception_vector(void);
extern uint32_t exception_vector;   

namespace os::interrupts{
    static interrupt_registers_t* interrupt_regs;

    static interrupt_handler_f handlers[NUM_IRQS];
    static interrupt_clearer_f clearers[NUM_IRQS];

    void interrupts_init(void) {
        interrupt_regs = (interrupt_registers_t *)INTERRUPTS_PENDING;
        bzero(handlers, sizeof(interrupt_handler_f) * NUM_IRQS);
        bzero(clearers, sizeof(interrupt_clearer_f) * NUM_IRQS);
        interrupt_regs->irq_basic_disable = 0xffffffff; // disable all interrupts
        interrupt_regs->irq_gpu_disable1 = 0xffffffff;
        interrupt_regs->irq_gpu_disable2 = 0xffffffff;
        move_exception_vector();
        ENABLE_INTERRUPTS();
    }

}