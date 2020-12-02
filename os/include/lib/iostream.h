#ifndef __STDLIB__STDIO_H
#define __STDLIB__STDIO_H

#include "stdint.h"

namespace std {
    class ostream {};
    extern ostream cout;

    using io_modifier_t = ostream& (*)(ostream&);

    ostream& operator << (ostream& out, const int32_t num);
    ostream& operator << (ostream& out, const uint32_t num);
    ostream& operator << (ostream& out, const int16_t num);
    ostream& operator << (ostream& out, const uint16_t num);
    ostream& operator << (ostream& out, const char num);
    ostream& operator << (ostream& out, const char* num);
    
    ostream& operator << (ostream& out, io_modifier_t modifier);

    ostream& endl (ostream& out);
}

#endif // __STDLIB__STDIO_H