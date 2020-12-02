#ifndef __OS__MMIO_H
#define __OS__MMIO_H

#include <stdint.h>

namespace os::mmio {
    #if (RASPI_MODEL == 2 || RASPI_MODEL == 3)
    inline const uint32_t MMIO_BASE = 0x3F000000;
    #elif (RASPI_MODEL == 4)
    inline const uint32_t MMIO_BASE = 0xFE000000;
    #endif

    inline const uint32_t PERIPHERAL_LENGTH   = 0x01000000;
    inline const uint32_t SYSTEM_TIMER_OFFSET = 0x3000;
    inline const uint32_t INTERRUPTS_OFFSET   = 0xB000;
    inline const uint32_t MAILBOX_OFFSET      = 0xB880;
    inline const uint32_t UART0_OFFSET        = 0x201000;
    inline const uint32_t GPIO_OFFSET         = 0x200000;
    inline const uint32_t EMMC_OFFSET         = 0x300000;


    void write(uint32_t reg, uint32_t data);
    uint32_t read(uint32_t reg);
}

#endif // __OS__MMIO_H