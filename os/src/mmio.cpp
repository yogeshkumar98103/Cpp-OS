#include "os/mmio.h"

namespace os::mmio {
    void write(uint32_t reg, uint32_t data){
        *(volatile uint32_t*)reg = data;
    }

    uint32_t read(uint32_t reg){
        return *(volatile uint32_t*)reg;
    }
}