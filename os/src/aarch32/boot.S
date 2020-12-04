.section ".text.boot"
.global _start

// Entry point for the kernel.
// r15 -> should begin execution at 0x8000.
// r0 -> 0x00000000
// r1 -> 0x00000C42 - machine id
// r2 -> 0x00000100 - start of ATAGS

_start:
    mrc p15, #0, r1, c0, c0, #5
    mrs r4, cpsr
    bic r4, r4, #0x1f

    orr r3, r4, #0x11
	msr cpsr_c, r3
	ldr sp, =_start

    orr r3, r4, #0x13
	msr cpsr_c, r3

    and r1, r1, #3
    cmp r1, #0
    beq core0_setup
    cmp r1, #1
    beq core1_setup
    cmp r1, #2
    beq core2_setup
    cmp r1, #3
    beq core3_setup

core0_setup:
    // save CPSR.
    @ mrs r0, cpsr

    @ // set sp in irq mode.
    @ bic r1, r0, #0x1F
    @ orr r1, r1, #0x12
    @ msr cpsr_c,r1
    @ mov sp, #0x4000

    @ // set sp in svc mode.
    @ msr cpsr_c, r0
    ldr sp, =__core0_stack

    // Set .bss to all 0s
    ldr r4, =__bss_start
    ldr r9, =__bss_end  
    mov r5, #0
    mov r6, #0
    mov r7, #0
    mov r8, #0
    b 2f

1: 
    stmia r4!, {r5-r8}

2: 
    cmp r4, r9
    blo 1b

    b call_entry

core1_setup:
    ldr sp, =__core1_stack
    b call_entry

core2_setup:
    ldr sp, =__core2_stack
    b call_entry

core3_setup:
    ldr sp, =__core3_stack

call_entry:
    ldr r3, =entry
    blx r3
    b halt

halt: 
    wfe
    b halt
