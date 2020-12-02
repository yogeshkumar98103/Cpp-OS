#ifndef __OS__INTERRUPTS_H
#define __OS__INTERRUPTS_H

#include <stdint.h>
#include "constants.h"

namespace os::mmio {
    inline const uint32_t INTERRUPTS_BASE = MMIO_BASE + INTERRUPTS_OFFSET;
    inline const uint32_t INTERRUPTS_PENDING = INTERRUPTS_BASE + 0x200;
}

namespace os::interrupts {
    inline const int32_t NUM_IRQS = 72;

    struct interrupt_registers_t {
        uint32_t irq_basic_pending;
        uint32_t irq_gpu_pending1;
        uint32_t irq_gpu_pending2;
        uint32_t fiq_control;
        uint32_t irq_gpu_enable1;
        uint32_t irq_gpu_enable2;
        uint32_t irq_basic_enable;
        uint32_t irq_gpu_disable1;
        uint32_t irq_gpu_disable2;
        uint32_t irq_basic_disable;
    };

    volatile interrupt_registers_t* get_interrupt_regs();

    inline constexpr bool irq_is_basic(const uint32_t num) {
        return num >= 64;
    }

    inline constexpr bool irq_is_gpu1(const uint32_t num) {
        return num < 32;
    }

    inline constexpr bool irq_is_gpu2(const uint32_t num) {
        return num >= 32 && num < 64;
    }

    inline constexpr bool irq_is_pending(volatile interrupt_registers_t* regs, const uint32_t num) {
        return ((irq_is_basic(num) && ((1 << (num - 64)) & regs->irq_basic_pending)) || 
                (irq_is_gpu2(num)  && ((1 << (num - 32)) & regs->irq_gpu_pending2))  || 
                (irq_is_gpu1(num)  && ((1 << (num))      & regs->irq_gpu_pending1))) ;
    }

    __inline__ int interrupts_enabled(void) {
        int res;
        __asm__ __volatile__("mrs %[res], CPSR": [res] "=r" (res)::);
        return ((res >> 7) & 1) == 0;
    }

    __inline__ void enable_interrupts(void) {
        if (!interrupts_enabled()) {
            __asm__ __volatile__("cpsie i");
        }
    }

    __inline__ void disable_interrupts(void) {
        if (interrupts_enabled()) {
            __asm__ __volatile__("cpsid i");
        }
    }

    namespace IRQNumber {
        inline const uint32_t SystemTimer1  = 1;
        inline const uint32_t USBController = 9;
        inline const uint32_t ARMTimer      = 64;
    };

    using interrupt_handler_f = void (*)(void);
    using interrupt_clearer_f = void (*)(void);

    void init(void);
    void register_irq_handler(uint32_t irq_num, interrupt_handler_f handler, interrupt_clearer_f clearer);
    void unregister_irq_handler(uint32_t irq_num);
}

#endif // __OS__INTERRUPTS_H