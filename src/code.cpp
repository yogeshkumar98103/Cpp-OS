#include "os/kernel.h"
#include "os/console.h"

extern "C" int entry(int r1, int r2, int atags){
    os::kernel::init(r1, r2, atags);

    os::console::puts("Kernel Started");
    while (1){
        os::console::putc(os::console::getc());
        os::console::putc('\n');
    }

    os::kernel::destroy();
}