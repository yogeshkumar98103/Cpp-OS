#include "os/console.h"

namespace os::console {
    char getc(){
        char c = os::uart::getc();

        if(c == '\r') c = '\n';
        os::console::putc(c);

        return c;
    }

    void putc(const char ch){
        return os::uart::putc(ch);
    }

    void puts(const char* str){
        while((*str) != '\0') putc(*(str++));
    }

    int gets(char* str, char delim){
        int char_read = 0;
        for(char_read = 0; (*str = getc()) != delim; ++char_read, ++str);
        *str = '\0';
        return char_read;
    }

    int gets(char* str, int limit, char delim){
        int char_read = 0;
        for(char_read = 0; char_read < limit && (*str = getc()) != delim; ++char_read, ++str);
        *str = '\0';
        return char_read;
    }

    int getline(char* str){
        return gets(str, '\r');
    }

    int getline(char* str, int limit){
        return gets(str, limit, '\n');
    }
}