#ifndef __OS__CONSOLE_H
#define __OS__CONSOLE_H

#include "os/uart.h"

namespace os::console {
    char getc();
    int gets(char* str, char delim = ' ');
    int gets(char* str, int limit, char delim = ' ');
    int getline(char* str);
    int getline(char* str, int limit);
    void putc(const char ch);
    void puts(const char* str);
}

#endif // __OS__CONSOLE_H