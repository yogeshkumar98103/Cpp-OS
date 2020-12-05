#ifndef __OS__CPU_H
#define __OS__CPU_H

// #include "thread.h"
#include <stdint.h>
#include "constants.h"

namespace os::concurrency {
    class scheduler_base;
}

namespace os {
    struct cpu_t {
        uint32_t ncli;
        os::concurrency::scheduler_base* scheduler;
    };

    inline cpu_t cpu[NCPU];

    void cpu_init(uint32_t cpu_id);
    cpu_t& this_cpu();
    int get_cpu_id();
}

#endif // __OS__CPU_H