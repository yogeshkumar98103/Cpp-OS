#include "os/uart.h"

namespace os::mmio {
    inline void write(uint32_t reg, uint32_t data){
        *(volatile uint32_t*)reg = data;
    }

    inline uint32_t read(uint32_t reg){
        return *(volatile uint32_t*)reg;
    }
}

namespace os{
    void delay(int32_t count) {
        asm volatile("__delay_%=: subs %[count], %[count], #1; bne __delay_%=\n"
                : "=r"(count): [count]"0"(count) : "cc");
    }
}

#if (RASPI_MODEL >= 3)
// A Mailbox message with set clock rate of PL011 to 3MHz tag
volatile unsigned int  __attribute__((aligned(16))) mbox[9] = {
    9*4, 0, 0x38002, 12, 8, 2, 3000000, 0 ,0
};
#endif

namespace os::uart {
    void init(){
        os::mmio::write(UART0_CR, 0x00000000);

        // Setup the GPIO pin 14 && 15.
        // Disable pull up/down for all GPIO pins & delay for 150 cycles.
        os::mmio::write(GPPUD, 0x00000000);
        delay(150);

        // Disable pull up/down for pin 14,15 & delay for 150 cycles.
        os::mmio::write(GPPUDCLK0, (1 << 14) | (1 << 15));
        delay(150);

        // Write 0 to GPPUDCLK0 to make it take effect.
        os::mmio::write(GPPUDCLK0, 0x00000000);

        // Clear pending interrupts.
        os::mmio::write(UART0_ICR, 0x7FF);

        // Set integer & fractional part of baud rate.
        // Divider = UART_CLOCK/(16 * Baud)
        // Fraction part register = (Fractional part * 64) + 0.5
        // UART_CLOCK = 3000000; Baud = 115200.

        // For Raspi3 and 4 the UART_CLOCK is system-clock dependent by default.
        // Set it to 3Mhz so that we can consistently set the baud rate
#if (RASPI_MODEL >= 3)
        // UART_CLOCK = 30000000;
        unsigned int r = (((unsigned int)(&mbox) & ~0xF) | 8);
        // wait until we can talk to the VC
        while ( os::mmio::read(MBOX_STATUS) & 0x80000000 ) { }
        // send our message to property channel and wait for the response
        os::mmio::write(MBOX_WRITE, r);
        while ( (os::mmio::read(MBOX_STATUS) & 0x40000000) || os::mmio::read(MBOX_READ) != r ) { }
#endif

        // Divider = 3000000 / (16 * 115200) = 1.627 = ~1.
        os::mmio::write(UART0_IBRD, 1);
        // Fractional part register = (.627 * 64) + 0.5 = 40.6 = ~40.
        os::mmio::write(UART0_FBRD, 40);

        // Enable FIFO & 8 bit data transmissio (1 stop bit, no parity).
        os::mmio::write(UART0_LCRH, (1 << 4) | (1 << 5) | (1 << 6));

        // Mask all interrupts.
        os::mmio::write(UART0_IMSC, (1 << 1) | (1 << 4) | (1 << 5) | (1 << 6) |
                (1 << 7) | (1 << 8) | (1 << 9) | (1 << 10));

        os::mmio::write(UART0_CR, (1 << 0) | (1 << 8) | (1 << 9));
    }

    void putc(const char c){
        while (os::mmio::read(UART0_FR) & (1 << 5));
        os::mmio::write(UART0_DR, c);
    }

    char getc() {
        while (os::mmio::read(UART0_FR) & (1 << 4));
        return os::mmio::read(UART0_DR);
    }
}