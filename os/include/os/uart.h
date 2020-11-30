#ifndef __OS__UART_H
#define __OS__UART_H

#include <stddef.h>
#include <stdint.h>
// #include <cinttypes>

#if (RASPI_MODEL == 2 || RASPI_MODEL == 3)
#define MMIO_BASE 0x3F000000
#elif (RASPI_MODEL == 4)
#define MMIO_BASE 0xFE000000
#endif

// #define MMIO_BASE PERIPHERAL_BASE
#define PERIPHERAL_LENGTH 0x01000000
#define SYSTEM_TIMER_OFFSET 0x3000
#define INTERRUPTS_OFFSET 0xB000
#define MAILBOX_OFFSET 0xB880
#define UART0_OFFSET 0x201000
#define GPIO_OFFSET 0x200000
#define EMMC_OFFSET 0x300000

namespace os{
    // Loop <count> times in a way that the compiler won't optimize away
    void delay(int32_t count);
}

namespace os::mmio {
    inline void write(uint32_t reg, uint32_t data);
    inline uint32_t read(uint32_t reg);
}

namespace os::uart {
    void init();
    void putc(char c);
    char getc();

    enum {
        // The GPIO registers base address.
        GPIO_BASE = MMIO_BASE + GPIO_OFFSET,
        // The offsets for reach register.

        // Controls actuation of pull up/down to ALL GPIO pins.
        GPPUD = (GPIO_BASE + 0x94),

        // Controls actuation of pull up/down for specific GPIO pin.
        GPPUDCLK0 = (GPIO_BASE + 0x98),

        // The base address for UART.
        UART0_BASE = MMIO_BASE + UART0_OFFSET,

        // The offsets for reach register for the UART.
        UART0_DR     = (UART0_BASE + 0x00),
        UART0_RSRECR = (UART0_BASE + 0x04),
        UART0_FR     = (UART0_BASE + 0x18),
        UART0_ILPR   = (UART0_BASE + 0x20),
        UART0_IBRD   = (UART0_BASE + 0x24),
        UART0_FBRD   = (UART0_BASE + 0x28),
        UART0_LCRH   = (UART0_BASE + 0x2C),
        UART0_CR     = (UART0_BASE + 0x30),
        UART0_IFLS   = (UART0_BASE + 0x34),
        UART0_IMSC   = (UART0_BASE + 0x38),
        UART0_RIS    = (UART0_BASE + 0x3C),
        UART0_MIS    = (UART0_BASE + 0x40),
        UART0_ICR    = (UART0_BASE + 0x44),
        UART0_DMACR  = (UART0_BASE + 0x48),
        UART0_ITCR   = (UART0_BASE + 0x80),
        UART0_ITIP   = (UART0_BASE + 0x84),
        UART0_ITOP   = (UART0_BASE + 0x88),
        UART0_TDR    = (UART0_BASE + 0x8C),

        // The offsets for Mailbox registers
        MBOX_BASE    = (MMIO_BASE + 0xB880),
        MBOX_READ    = (MBOX_BASE + 0x00),
        MBOX_STATUS  = (MBOX_BASE + 0x18),
        MBOX_WRITE   = (MBOX_BASE + 0x20)
    };
}

#endif //  __OS__UART_H
