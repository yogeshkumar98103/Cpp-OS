#include "os/cpu.h"

extern "C" int __get_cpu_id(void);

namespace os {
    
    void cpu_init(uint32_t cpu_id){
        cpu[cpu_id].ncli = 1;               // Interrupts disabled
        cpu[cpu_id].scheduler = nullptr;
    }

    cpu_t& this_cpu(){
        return cpu[get_cpu_id()];
    }

    int get_cpu_id(){
        return __get_cpu_id();
    }
}