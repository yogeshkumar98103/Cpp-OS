#include "os/kernel.h"

namespace os::kernel {
    void init(int r1, int r2, int atags){
        (void) r1;
        (void) r2;
        (void) atags;

        os::uart::init();
    }

    void destroy(){
        // TODO: Halt
    }
}