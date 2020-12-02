#ifndef __OS__UART_H
#define __OS__UART_H

#include <stddef.h>
#include <stdint.h>
#include "mmio.h"

namespace os{
    // Loop <count> times in a way that the compiler won't optimize away
    void delay(int32_t count);
}

namespace os::mmio {
    // The GPIO registers base address.
    inline const uint32_t GPIO_BASE    = MMIO_BASE + GPIO_OFFSET;
    // The offsets for reach register.
    // Controls actuation of pull up/down to ALL GPIO pins.
    inline const uint32_t GPPUD        = (GPIO_BASE + 0x94);
    // Controls actuation of pull up/down for specific GPIO pin.
    inline const uint32_t GPPUDCLK0    = (GPIO_BASE + 0x98);
    // The base address for UART.
    inline const uint32_t UART0_BASE   = MMIO_BASE + UART0_OFFSET;
    // The offsets for reach register for the UART.
    inline const uint32_t UART0_DR     = (UART0_BASE + 0x00);
    inline const uint32_t UART0_RSRECR = (UART0_BASE + 0x04);
    inline const uint32_t UART0_FR     = (UART0_BASE + 0x18);
    inline const uint32_t UART0_ILPR   = (UART0_BASE + 0x20);
    inline const uint32_t UART0_IBRD   = (UART0_BASE + 0x24);
    inline const uint32_t UART0_FBRD   = (UART0_BASE + 0x28);
    inline const uint32_t UART0_LCRH   = (UART0_BASE + 0x2C);
    inline const uint32_t UART0_CR     = (UART0_BASE + 0x30);
    inline const uint32_t UART0_IFLS   = (UART0_BASE + 0x34);
    inline const uint32_t UART0_IMSC   = (UART0_BASE + 0x38);
    inline const uint32_t UART0_RIS    = (UART0_BASE + 0x3C);
    inline const uint32_t UART0_MIS    = (UART0_BASE + 0x40);
    inline const uint32_t UART0_ICR    = (UART0_BASE + 0x44);
    inline const uint32_t UART0_DMACR  = (UART0_BASE + 0x48);
    inline const uint32_t UART0_ITCR   = (UART0_BASE + 0x80);
    inline const uint32_t UART0_ITIP   = (UART0_BASE + 0x84);
    inline const uint32_t UART0_ITOP   = (UART0_BASE + 0x88);
    inline const uint32_t UART0_TDR    = (UART0_BASE + 0x8C);
    // The offsets for Mailbox registers
    inline const uint32_t MBOX_BASE    = (MMIO_BASE + 0xB880);
    inline const uint32_t MBOX_READ    = (MBOX_BASE + 0x00);
    inline const uint32_t MBOX_STATUS  = (MBOX_BASE + 0x18);
    inline const uint32_t MBOX_WRITE   = (MBOX_BASE + 0x20);
}

namespace os::uart {
    void init();
    void putc(char c);
    char getc();
}

#endif //  __OS__UART_H
