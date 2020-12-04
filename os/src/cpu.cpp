#include "os/cpu.h"

extern "C" int __get_cpu_id(void);

namespace os {
    
    void init(uint32_t cpu_id){
        (void) cpu_id;
    }

    cpu_t& this_cpu(){
        return cpu[get_cpu_id()];
    }

    int get_cpu_id(){
        return __get_cpu_id();
    }
}