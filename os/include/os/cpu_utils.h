#ifndef __OS__CPU_UTILS__H
#define __OS__CPU_UTILS__H

extern "C" int __get_cpu_id(void);

namespace os {
    inline int get_cpu_id(){
        return __get_cpu_id();
    }
}

#endif // __OS__CPU_UTILS__H