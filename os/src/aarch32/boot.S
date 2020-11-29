.section ".text.boot"
.global _start

// Entry point for the kernel.
// r15 -> should begin execution at 0x8000.
// r0 -> 0x00000000
// r1 -> 0x00000C42 - machine id
// r2 -> 0x00000100 - start of ATAGS

_start:
    mrc p15, #0, r1, c0, c0, #5
    and r1, r1, #3
    cmp r1, #0 
    bne halt

    mov sp, #0x8000

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

    ldr r3, =entry
    blx r3

halt: 
    wfe
    b halt