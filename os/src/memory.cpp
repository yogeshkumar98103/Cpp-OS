#include "os/memory.h"

extern int __end;

namespace os::memory{
    void bzero(void* addr, uint32_t len){
        for(uint32_t i = 0; i < len; ++i)
            (static_cast<char*>(addr))[i] = 0;
    }

    void* get_kernel_end(){
        return reinterpret_cast<void*>(__end);
    }

    uint32_t get_memory_size(uint32_t atags){
        (void) atags;

        // TODO: Parse atags
        return 128 * 1024 * 1024;  // 128MB
    }
}

namespace os::memory::heap_policy {
    os::memory::heap_segment_t* best_fit::operator ()(heap_segment_t* heap_head, uint32_t bytes){
        heap_segment_t* cur = nullptr;
        heap_segment_t* candidate = nullptr;
        uint32_t candidate_size = 0;

        for(cur = heap_head; cur != nullptr; cur = cur->next){
            if(!cur->allocated && cur->seg_size > candidate_size){
                candidate_size = cur->seg_size;
                candidate = cur;
            }
        }

        return candidate_size >= bytes ? candidate: nullptr;
    }

    os::memory::heap_segment_t* worst_fit::operator ()(heap_segment_t* heap_head, uint32_t bytes){
        heap_segment_t* cur = nullptr;
        heap_segment_t* candidate = nullptr;
        uint32_t candidate_size = 0xffffffff;

        for(cur = heap_head; cur != nullptr; cur = cur->next){
            if(!cur->allocated && cur->seg_size < candidate_size && cur->seg_size >= bytes){
                candidate_size = cur->seg_size;
                candidate = cur;
            }
        }

        return candidate;
    }

    os::memory::heap_segment_t* first_fit::operator ()(heap_segment_t* heap_head, uint32_t bytes){
        // NOT USED IN CODE
        (void) heap_head;
        (void) bytes;
        return nullptr;
    }
}