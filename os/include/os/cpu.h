#ifndef __OS__CPU_H
#define __OS__CPU_H

#include "thread.h"

namespace os {
    struct cpu_t {
        os::concurrency::scheduler_base* scheduler;
    };

    inline cpu_t cpu[NCPU];

    void init(uint32_t cpu_id);
    cpu_t& this_cpu();
    int get_cpu_id();
}

#endif // __OS__CPU_H