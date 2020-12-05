.section ".text"
.global context_switch
.global first_context_switch_main_thread
.global context_save
.global context_load
.global switch_stack
.global switch_to_thread
.global get_sp

@ switch_to_thread:
@     // Save the current thread's state
@     push    {lr}     // Push stack pointer and link register
@     push    {sp}
@     mrs     r12, cpsr   // Get the current program state register
@     push    {r0-r12}    // Save all general purpose registers and program state
@     str     sp, [r0]    // Store the stack pointer into the saved_state field of the current process
@     // Restore the new thread's state
@     ldr     sp, [r1]    // Load the stack pointer of the new process
@     ldr     r0, =#(10000)// Set Quantum time to 10 ms (10000 us)
@     bl      timer_set   // reset the timer to go off in another quantum
@     pop     {r0-r12}    // restore the general purpose registers
@     msr     cpsr_c, r12   // Restore the new thread's program status register
@     pop     {lr, pc}    // we have no idea what lr should be, so just give it a garbage value. pc gets the stored lr so this function returns to there
switch_stack:
    mov     sp, r0
    bx      lr

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


first_context_switch_main_thread:
    push    {lr}
    mrs     r12, cpsr
    push    {r0-r12}
    str     sp, [r0]

    ldr     sp, [r1]
    add     r0, sp, #56  // 56 is size of cpu_context_t
    str     r0, [r1]
    pop     {r0-r12}
    msr     cpsr_c, r12
    ldr     lr, =grim_reaper
    pop     {pc}
    bx      lr

first_context_switch_secondary_thread:
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

context_save:
    push    {sp}
    ldr     sp, [r0]
    push    {lr}
    mrs     r12, cpsr
    push    {r0-r12}
    str     sp, [r0]
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
    
@ context_switch:
    @ mov     r0, sp 
    @ push    {lr}        // Push stack pointer and link register
    @ push    {sp}
    @ mrs     r12, cpsr   // Get the current program state register
    @ push    {r0-r12}    // Save all general purpose registers and program state
    @ str     sp, [r0]    // Store the stack pointer into the saved_state field of the current process
    
    // Restore the new thread's state
    
    @ ldr     sp, [r1]    // Load the stack pointer of the new process
    @ push     {sp}
    @ mov      sp, r1
    @ pop      {r0-r12}
    @ msr      cpsr_c, r12
    @ pop      {pc}

    @ ldr     r0, =#(10000)// Set Quantum time to 10 ms (10000 us)
    @ bl      timer_set   // reset the timer to go off in another quantum
    @ pop     {r0-r12}    // restore the general purpose registers
    @ msr     cpsr_c, r12   // Restore the new thread's program status register
    // pop     {lr, pc}    // we have no idea what lr should be, so just give it a garbage value. pc gets the stored lr so this function returns to there
    @ pop     {r0}
    @ ldr     r3, =#37104
    @ cmp     r0, r3
    @ beq     print_eq
    @ ldr     r0, =#66
    @ bl      putc
    @ blx     lr

    // mov     r0, lr
    @ bl      putu32
    @ mov     pc, r0

@ print_eq:
    @ ldr     r0, =#65
    @ bl      putc
    @ blx     lr