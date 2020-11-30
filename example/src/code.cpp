#include "os/kernel.h"
#include "os/console.h"
#include "os/memory.h"

#ifdef AARCH64 
extern "C" int entry(uint64_t dtb_ptr32, uint64_t x1, uint64_t x2, uint64_t x3){
    os::kernel::init(dtb_ptr32, x1, x2, x3);

#else
extern "C" int entry(int r1, int r2, int atags){
    os::kernel::init(r1, r2, atags);

#endif

    void* heap_start   = os::memory::get_kernel_end();
    uint32_t heap_size = os::memory::get_memory_size();

    os::memory::best_fit_heap heap(heap_start, heap_size);

    char* str = (char*)heap.malloc(100);

    os::console::puts("Kernel Started\n");
    for(uint32_t i = 0; ; ++i){
        os::console::puts("Enter Text: ");
        os::console::getline(str, 99);
        os::console::putc('[');
        os::console::putu32(i);
        os::console::puts("] You typed: ");
        os::console::puts(str);
        os::console::putc('\n');
    }

    heap.free(str);

    os::kernel::destroy();
}