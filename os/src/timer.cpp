#include "os/timer.h"
#include "os/console.h"
#include "os/interrupts.h"
#include "os/mmio.h"
#include "os/cpu_utils.h"

using namespace os;

namespace os::timer {
    void init(){
        arm_generic_timer::init();
    }

    void set(uint32_t usecs){
        arm_generic_timer::set(usecs);
    }

}

namespace os::arm_generic_timer {
    static int cntfrq;

    static void timer_handler(){
        
    }

    static void timer_clearer(){

    }

    static inline void set_cntv(bool enable) {
        asm volatile ("mcr p15, 0, %0, c14, c3, 1" :: "r"(enable));
    }

    static inline uint32_t read_cntfrq(void) {
        uint32_t val;
        asm volatile ("mrc p15, 0, %0, c14, c0, 0" : "=r"(val));
        return val;
    }

    static inline void write_cntv_tval(uint32_t val) {
        asm volatile ("mcr p15, 0, %0, c14, c3, 0" :: "r"(val));
    }

    void init(){
        cntfrq = read_cntfrq();
        int cpu_id = get_cpu_id();
        write_cntv_tval(cntfrq);
        mmio::write(mmio::CORE_TIMER_IRQCNTL_BASE + cpu_id * 0x4, 0x08);
        set_cntv(true);
        interrupts::enable_interrupts();
    }

    void set(uint32_t usecs){
        (void) usecs;
        write_cntv_tval(cntfrq);
    }

    void disable(){
        set_cntv(false);
    }
}

// namespace os::armtimer {
//     static arm_timer_t* arm_timer;
    
//     static void timer_irq_handler(void) {
//         os::console::puts("Timer Interrupt.\n");
//     }

//     static void timer_irq_clearer(void) {
//         os::console::puts("Timer Cleared.\n");
//         arm_timer->irq_clear = 1;
//     }

//     void init (){
//         os::interrupts::get_interrupt_regs()->irq_basic_enable = basic_arm_timer_irq;
//         arm_timer = reinterpret_cast<arm_timer_t*>(mmio::ARM_TIMER_BASE);
//         os::interrupts::register_irq_handler(
//             os::interrupts::IRQNumber::ARMTimer, 
//             timer_irq_handler, timer_irq_clearer
//         );
//     }

//     // time = clk / 256 * ticks
//     void set(uint32_t ticks){
//         arm_timer->load = ticks;
//         arm_timer->control = arm_timer_ctrl_32bit        | 
//                              arm_timer_ctrl_enable       | 
//                              arm_timer_ctrl_int_enable   | 
//                              arm_timer_ctrl_prescale_256 ;
//     }
// }

// namespace os::systemtimer {
//     static timer_registers_t* timer_regs;

//     static void timer_irq_handler(void) {
//         os::console::puts("Timer Interrupt.\n");
//     }

//     static void timer_irq_clearer(void) {
//         os::console::puts("Timer Clearer.\n");
//         timer_regs->control.timer1_matched = 1;
//     }

//     void init(void) {
//         timer_regs = (timer_registers_t *) os::mmio::SYSTEM_TIMER_BASE;
//         os::interrupts::register_irq_handler(
//             os::interrupts::IRQNumber::SystemTimer1, 
//             timer_irq_handler, timer_irq_clearer
//         );
//     }

//     void set(uint32_t usecs) {
//         timer_regs->timer1 = timer_regs->counter_low + usecs;
//     }

//     __attribute__ ((optimize(0))) void udelay (uint32_t usecs) {
//         volatile uint32_t curr = timer_regs->counter_low;
//         volatile uint32_t x = timer_regs->counter_low - curr;
//         while (x < usecs) {
//             x = timer_regs->counter_low - curr;
//         }
//     }
// }