#ifndef __OS__TIMER_H
#define __OS__TIMER_H

// https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bcm2836/QA7_rev3.4.pdf

#include <stdint.h>
#include "mmio.h"

namespace os::mmio {
    inline const uint32_t CORE_TIMER_IRQCNTL_BASE = 0x40000040;
    inline const uint32_t CORE_IRQ_SOURCE_BASE = 0x40000060;
}

namespace os::timer {
    void init();
    void set(uint32_t usecs);
}

namespace os::arm_generic_timer {
    void init();
    void set(uint32_t usecs);
}

// namespace os::mmio {
//     inline const uint32_t SYSTEM_TIMER_BASE = MMIO_BASE + SYSTEM_TIMER_OFFSET;
//     inline const uint32_t ARM_TIMER_BASE    = MMIO_BASE + 0xB400;
// }

// namespace os::armtimer {
//     inline const uint32_t basic_arm_timer_irq         = (1 << 0);
//     inline const uint32_t basic_arm_mailbox_irq       = (1 << 1);
//     inline const uint32_t basic_arm_doorbell_0_irq    = (1 << 2);
//     inline const uint32_t basic_arm_doorbell_1__irq   = (1 << 3);
//     inline const uint32_t basic_gpu_0_halted_irq      = (1 << 4);
//     inline const uint32_t basic_gpu_1_halted_irq      = (1 << 5);
//     inline const uint32_t basic_access_error_1_irq    = (1 << 6); 
//     inline const uint32_t basic_access_error_0_irq    = (1 << 7);


//     inline const uint32_t arm_timer_ctrl_32bit         = (1 << 1);

//     inline const uint32_t arm_timer_ctrl_prescale_1    = (0 << 2);
//     inline const uint32_t arm_timer_ctrl_prescale_16   = (1 << 2);
//     inline const uint32_t arm_timer_ctrl_prescale_256  = (2 << 2);

//     inline const uint32_t arm_timer_ctrl_int_enable    = (1 << 5);
//     inline const uint32_t arm_timer_ctrl_int_disable   = (0 << 5);

//     inline const uint32_t arm_timer_ctrl_enable        = (1 << 7);
//     inline const uint32_t arm_timer_ctrl_disable       = (0 << 7);

//     struct arm_timer_t {
//         volatile uint32_t load;
//         volatile uint32_t value;
//         volatile uint32_t control;
//         volatile uint32_t irq_clear;
//         volatile uint32_t raw_irq;
//         volatile uint32_t masked_irq;
//         volatile uint32_t reload;
//         volatile uint32_t pre_divider;
//         volatile uint32_t free_running_counter;
//     };

//     void init();
//     void set(uint32_t ticks);
// }

// namespace os::systemtimer {   
//     struct timer_control_reg_t {
//         uint8_t timer0_matched: 1;
//         uint8_t timer1_matched: 1;
//         uint8_t timer2_matched: 1;
//         uint8_t timer3_matched: 1;
//         uint32_t reserved: 28;
//     };

//     struct timer_registers_t {
//         timer_control_reg_t control;
//         uint32_t counter_low;
//         uint32_t counter_high;
//         uint32_t timer0;
//         uint32_t timer1;
//         uint32_t timer2;
//         uint32_t timer3;
//     };

//     void init(void);
//     void set(uint32_t usecs);
//     void udelay(uint32_t usecs);
// }


#endif // __OS__TIMER_H