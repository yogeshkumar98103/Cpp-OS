#include "os/kernel.h"
#include "os/console.h"
#include "os/memory.h"
#include "os/spinlock.h"

// typedef void (*constructor)();
// extern "C" constructor start_ctors;
// extern "C" constructor end_ctors;
// extern "C" void callConstructors(){
//   for(constructor* i = &start_ctors; i != &end_ctors; i++)
//      (*i)();
// }

// os::sync::spinlock coreinitlock1;
// os::sync::spinlock coreinitlock2;
// os::sync::spinlock coreinitlock3;

os::sync::signallock coreinitlock1;
os::sync::signallock coreinitlock2;
os::sync::signallock coreinitlock3;

// void* heap_start   = os::memory::get_kernel_end();
    // uint32_t heap_size = os::memory::get_memory_size();

    // os::memory::best_fit_heap heap(heap_start, heap_size);

    // char* str = (char*)heap.malloc(100);

    // os::console::puts("Kernel Started\n");
    // for(uint32_t i = 0; ; ++i){
    //     os::console::puts("Enter Text: ");
    //     os::console::getline(str, 99);
    //     os::console::putc('[');
    //     os::console::putu32(i);
    //     os::console::puts("] You typed: ");
    //     os::console::puts(str);
    //     os::console::putc('\n');
    // }

    // heap.free(str);

void core0_entry(int core_id, int atags){
    os::kernel::init(0, 0, atags);
    coreinitlock1.signal();
    coreinitlock2.signal();
    coreinitlock3.signal();

    os::console::puts("Core #");
    os::console::putu32(core_id);
    os::console::puts(" Started\n");
}

void core1_entry(int core_id){
    coreinitlock1.wait();

    os::console::puts("Core #");
    os::console::putu32(core_id);
    os::console::puts(" Started\n");
}

void core2_entry(int core_id){
    coreinitlock2.wait();

    os::console::puts("Core #");
    os::console::putu32(core_id);
    os::console::puts(" Started\n");
}

void core3_entry(int core_id){
    coreinitlock3.wait();

    os::console::puts("Core #");
    os::console::putu32(core_id);
    os::console::puts(" Started\n");
}

#ifdef AARCH64 
extern "C" int entry(uint64_t dtb_ptr32, uint64_t x1, uint64_t x2, uint64_t x3){
    os::kernel::init(dtb_ptr32, x1, x2, x3);

#else
extern "C" void entry(int r1, int core_id, int atags){

#endif
    (void) r1;

    switch(core_id){
        case 0: core0_entry(core_id, atags); break;
        case 1: core1_entry(core_id); break;
        case 2: core2_entry(core_id); break;
        case 3: core3_entry(core_id); break;
    }
}



// extern "C" void core_dispatcher(int r1, int core_id, int atags){
//     (void) atags;
//     (void) r1;

    
// }
