#include "os/console.h"

namespace os::console {
    void putc(const char ch){
        // TODO: print character
    }

    void puts(const char* str){
        while((*str) != '\0') putc(*(str++));
    }
}