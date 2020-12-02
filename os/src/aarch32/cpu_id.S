.section ".text"
.global __get_cpu_id

__get_cpu_id:
    mrc     p15, #0, r0, c0, c0, #5
    and     r0, r0, #3
    blx     lr