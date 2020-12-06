#include "os/console.h"
#include "os/itoa.h"
#include "os/spinlock.h"

namespace os::console {
    os::sync::spinlock getc_iolock{};
    os::sync::spinlock puts_iolock{};
    os::sync::spinlock gets_iolock{};
    os::sync::spinlock putu32_iolock{};
    os::sync::spinlock puti32_iolock{};

    void iolock_init(){
        getc_iolock.init();
        puts_iolock.init();
        gets_iolock.init();
        putu32_iolock.init();
        puti32_iolock.init();
    }

    char getc(){
        getc_iolock.acquire();
        char c = os::uart::getc();

        if(c == '\r') c = '\n';
        os::console::putc(c);
        getc_iolock.release();
        return c;
    }

    void putc(const char ch){
        os::uart::putc(ch);
    }

    void puts(const char* str){
        puts_iolock.acquire();
        while((*str) != '\0') putc(*(str++));
        puts_iolock.release();
    }

    int gets(char* str, char delim){
        gets_iolock.acquire();
        int char_read = 0;
        for(char_read = 0; (*str = getc()) != delim; ++char_read, ++str);
        *str = '\0';
        gets_iolock.release();
        return char_read;
    }

    int gets(char* str, int limit, char delim){
        gets_iolock.acquire();
        int char_read = 0;
        for(char_read = 0; char_read < limit && (*str = getc()) != delim; ++char_read, ++str);
        *str = '\0';
        gets_iolock.release();
        return char_read;
    }

    int getline(char* str){
        return gets(str, '\r');
    }

    int getline(char* str, int limit){
        return gets(str, limit, '\n');
    }

    void putu32(uint32_t num){
        putu32_iolock.acquire();
        char str[12];
        u32toa_branchlut2(num, str);
        puts(str);
        putu32_iolock.release();
    }

    void puti32(int32_t num){
        puti32_iolock.acquire();
        char str[12];
        u32toa_branchlut2(num, str);
        puts(str);
        puti32_iolock.release();
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

extern "C" void putu32(uint32_t num){
    using namespace os::console;
    
    putu32_iolock.acquire();
    char str[12];

    // str[0] = (num % 10) + '0';
    // num /= 10;
    // str[1] = (num % 10) + '0';
    // num /= 10;
    // str[2] = (num % 10) + '0';
    // num /= 10;
    // str[3] = (num % 10) + '0';
    // num /= 10;
    // str[4] = (num % 10) + '0';
    // num /= 10;
    // str[5] = (num % 10) + '0';
    // num /= 10;
    // str[6] = (num % 10) + '0';
    // num /= 10;

    u32toa_branchlut2(num, str);
    // str[7] = str[8] = str[9] = str[10] = str[11] = 0;
    os::console::puts(str);
    os::console::puts(" <-\n");
    putu32_iolock.release();
}