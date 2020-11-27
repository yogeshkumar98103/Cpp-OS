#ifndef __OS__CONSOLE_H
#define __OS__CONSOLE_H

#include "os/uart.h"

namespace os::console {
    char getc();
    void putc(const char ch);
    void puts(const char* str);
}

#endif // __OS__CONSOLE_H