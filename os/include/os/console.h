#ifndef __OS__CONSOLE_H
#define __OS__CONSOLE_H

#include "os/uart.h"
#include <stddef.h>

extern "C" void putu32(uint32_t ch);

namespace os::console {
    void iolock_init();
    
    char getc();

    int gets(char* str, char delim = ' ');
    int gets(char* str, int limit, char delim = ' ');

    int getline(char* str);
    int getline(char* str, int limit);

    void putc(const char ch);
    void putu32(uint32_t ch);
    void puti32(int32_t ch);
    // void putu16(uint16_t ch);
    // void puti16(int16_t ch);

#ifdef AARCH64
    void putu64(uint64_t ch);
    void puti64(int64_t ch);
#endif

    void puts(const char* str);
}

#endif // __OS__CONSOLE_H