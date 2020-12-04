#ifndef __OS__CONSTANTS_H
#define __OS__CONSTANTS_H

#include <stdint.h>

namespace os {
    inline const uint32_t NCPU = 4;
    inline const uint32_t NTHREAD = 10;
    inline const uint32_t STACK_SIZE = 4096;
}

#endif // __OS__CONSTANTS_H