#include "os/kernel.h"
#include "os/console.h"

int start(int r1, int r2, int atags){
    os::kernel::init(r1, r2, atags);

    os::console::puts("Kernel Started");

    os::kernel::destroy();
}