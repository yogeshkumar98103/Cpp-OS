.section ".text"

.global move_exception_vector

exception_vector:
    ldr pc, reset_handler_addr
    ldr pc, undefined_instruction_handler_addr
    ldr pc, software_interrupt_handler_addr
    ldr pc, prefetch_abort_handler_addr
    ldr pc, data_abort_handler_addr
    ldr pc, unused_handler_addr                     // Reserved
    ldr pc, interrupt_handler_addr
    ldr pc, fast_interrupt_handler_addr

reset_handler_addr:                 .word _start
undefined_instruction_handler_addr: .word undefined_instruction_handler
software_interrupt_handler_addr:    .word software_interrupt_handler
prefetch_abort_handler_addr:        .word prefetch_abort_handler
data_abort_handler_addr:            .word data_abort_handler
unused_handler_addr                 .word _start
irq_handler_addr:                   .word irq_handler_asm_wrapper
fast_irq_handler_addr:              .word fast_irq_handler

move_exception_vector:
    push    {r4, r5, r6, r7, r8, r9}
    ldr     r0, =exception_vector 
    mov     r1, #0x0000
    ldmia   r0!,{r2, r3, r4, r5, r6, r7, r8, r9}
    stmia   r1!,{r2, r3, r4, r5, r6, r7, r8, r9}
    ldmia   r0!,{r2, r3, r4, r5, r6, r7, r8, r9}
    stmia   r1!,{r2, r3, r4, r5, r6, r7, r8, r9}
    pop     {r4, r5, r6, r7, r8, r9}
    blx     lr