#include "iostream.h"
#include "os/console.h"

namespace std {
    ostream cout;

    ostream& operator << (ostream& out, const uint32_t num){
        os::console::putu32(num);
        return out;
    }

    ostream& operator << (ostream& out, const int32_t num){
        os::console::puti32(num);
        return out;
    }

    ostream& operator << (ostream& out, const uint16_t num){
        os::console::putu32(num);
        return out;
    }

    ostream& operator << (ostream& out, const int16_t num){
        os::console::puti32(num);
        return out;
    }

    ostream& operator << (ostream& out, const char ch){
        os::console::putc(ch);
        return out;
    }

    ostream& operator << (ostream& out, const char* str){
        os::console::puts(str);
        return out;
    }

    ostream& operator << (ostream& out, io_modifier_t modifier){
        return modifier(out);
    }

    ostream& endl (ostream& out){
        os::console::putc('\n');
        return out;
    }
}
