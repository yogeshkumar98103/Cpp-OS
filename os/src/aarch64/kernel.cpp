// AARCH64
#include "os/kernel.h"

namespace os::kernel {
    void init(uint64_t dtb_ptr32, uint64_t x1, uint64_t x2, uint64_t x3){
        (void) dtb_ptr32;
        (void) x1;
        (void) x2;
        (void) x3;

        os::uart::init();
    }

    void destroy(){
        // TODO: Halt
    }
}