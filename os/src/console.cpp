#include "os/console.h"

namespace os::console {
    char getc(){
        return os::uart::getc();
    }

    void putc(const char ch){
        return os::uart::putc(ch);
    }

    void puts(const char* str){
        while((*str) != '\0') putc(*(str++));
    }
}