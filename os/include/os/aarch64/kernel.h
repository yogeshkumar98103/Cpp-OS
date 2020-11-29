/// AARCH64

#include "os/uart.h"

namespace os::kernel {
    void init(uint64_t dtb_ptr32, uint64_t x1, uint64_t x2, uint64_t x3);
    void destroy();
}