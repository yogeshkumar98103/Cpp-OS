#include "os/console.h"
#include "os/itoa.h"

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

    void putu32(uint32_t num){
        static char str[12];
        u32toa_branchlut2(num, str);
        puts(str);
    }

    void puti32(int32_t num){
        static char str[12];
        u32toa_branchlut2(num, str);
        puts(str);
    }

    // void putu16(uint16_t num){
    //     static char str[10];
    //     u16toa_branchlut2(num, str);
    // }

    // void puti16(int16_t num){
    //     static char str[10];
    //     u16toa_branchlut2(num, str);
    // }

    #ifdef AARCH64
        void putu64(uint64_t num){
            static char str[20];
            u64toa_branchlut2(num, str);
            puts(str);
        }

        void puti64(int64_t num){
            static char str[20];
            u64toa_branchlut2(num, str);
            puts(str);
        }
    #endif
}