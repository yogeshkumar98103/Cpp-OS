#ifndef __OS__KERNEL_H
#define __OS__KERNEL_H

#include "os/uart.h"

namespace os::kernel {
    void init(int r1, int r2, int atags);
    void destroy();
}

#endif // __OS__KERNEL_H