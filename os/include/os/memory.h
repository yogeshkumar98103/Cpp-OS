#ifndef __OS__MEMORY_H
#define __OS__MEMORY_H

#include <stdint.h>
#include <stddef.h>

namespace os::memory{
    void bzero(void* addr, size_t len);
    void*  get_kernel_end();
    size_t get_memory_size();

    /// This is the header stored at beginning of each heap segment
    struct heap_segment_t {
        heap_segment_t* next;
        heap_segment_t* prev;
        size_t seg_size;          // This includes header size also
        bool allocated;
    };

    /// `alloc_policy` is used when selecting segment of heap to fulfill current request
    /// following policies are defined under `os::heap_policy`
    /// 1. best_fit
    /// 2. worst_fit
    /// 3. first_fit
    template <typename alloc_policy>
    class heap {
        heap_segment_t* heap_head = nullptr;

    public:

        heap(void* start, size_t heap_size){
            heap_head = reinterpret_cast<heap_segment_t*>(start);
            os::memory::bzero(heap_head, sizeof(heap_segment_t));
            heap_head->seg_size = heap_size;
        }

        void* malloc(size_t bytes){
            bytes += sizeof(heap_segment_t);
            bytes = (bytes + 0xf) & 0xf; // 16 byte align

            heap_segment_t* heap_segment = alloc_policy()(heap_head, bytes);
            uint32_t remaining_space = heap_segment->seg_size - bytes;
            if(remaining_space > 2 * sizeof(heap_segment_t)){
                heap_segment_t* next_segment = (heap_segment_t*)((char*)heap_segment + bytes);
                next_segment->prev = heap_segment;
                next_segment->next = heap_head->next;
                heap_segment->next = next_segment;
                heap_segment->seg_size -= remaining_space;
                next_segment->seg_size  = remaining_space;
            }

            return heap_segment + 1;
        }

        void free(void* addr){
            heap_segment_t* heap_segment = reinterpret_cast<heap_segment_t*>((char*)addr - sizeof(heap_segment_t));
        
            // Merge with previous unallocated segments
            while(heap_segment->prev != nullptr && !heap_segment->prev->allocated){
                heap_segment->prev->next = heap_segment->next;
                heap_segment->prev->seg_size += heap_segment->seg_size;
                heap_segment = heap_segment->prev;
            }

            // Merge with next unallocated segments
            while(heap_segment->next != nullptr && !heap_segment->next->allocated){
                heap_segment->next = heap_segment->next->next;
                heap_segment->seg_size += heap_segment->next->seg_size;
            }

            heap_segment->allocated = false;
        }
    };

    namespace heap_policy {
        struct best_fit {
            os::memory::heap_segment_t* operator ()(heap_segment_t* heap_head, size_t bytes);
        };

        struct worst_fit {
            os::memory::heap_segment_t* operator ()(heap_segment_t* heap_head, size_t bytes);
        };

        struct first_fit {
            os::memory::heap_segment_t* operator ()(heap_segment_t* heap_head, size_t bytes);
        };
    }

    using best_fit_heap = os::memory::heap<os::memory::heap_policy::best_fit>;
    using worst_fit_heap = os::memory::heap<os::memory::heap_policy::worst_fit>;
}

#endif // __OS__MEMORY_H