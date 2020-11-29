// Source: https://wiki.osdev.org/Raspberry_Pi_Bare_Bones#Pi_3.2C_4 
// With the latest firmware, only the primary core runs (core 0), 
// and the secondary cores are awaiting in a spin loop. 
// To wake them up, write a function's address at:- 
// 0xE0 (core 1), 0xE8 (core 2) or 0xF0 (core 3) and they will start to execute that function.

.section ".text.boot"
.global _start
    .org 0x80000

_start:
    // Entry point for the kernel. Registers:
    // x0 -> 32 bit pointer to DTB in memory (primary core only) / 0 (secondary cores)
    // x1 -> 0
    // x2 -> 0
    // x3 -> 0
    // x4 -> 32 bit kernel entry point, _start location
    
    // set up stack
    ldr     x5, =_start
    mov     sp, x5
 
    // clear bss
    ldr     x5, =__bss_start
    ldr     w6, =__bss_size

3:  cbz     w6, 4f              // cbz - compare and branch on zero
    str     xzr, [x5], #8
    sub     w6, w6, #1
    cbnz    w6, 3b
 
    // jump to C code, should not return
4:  bl      entry

    // for failsafe, halt this core too
    b 1b