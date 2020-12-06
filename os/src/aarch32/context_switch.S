.section ".text"
.global context_switch
.global context_load
.global get_sp

context_switch:
    push    {lr}
    mrs     r12, cpsr
    push    {r0-r12}
    str     sp, [r0]

    ldr     sp, [r1]
    add     r0, sp, #56  // 56 is size of cpu_context_t
    str     r0, [r1]
    pop     {r0-r12}
    msr     cpsr_c, r12
    ldr     lr, =thread_exit
    pop     {pc}
    bx      lr

context_load:
    ldr     sp, [r0]
    pop     {r0-r12}
    msr     cpsr_c, r12
    str     sp, [r0]
    pop     {pc}
    bx      lr

get_sp:
    mov     r0, sp
    bx      lr