	.cpu cortex-a7
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"interrupts.cpp"
	.text
	.align	2
	.global	_ZN2os10interrupts18disable_interruptsEv
	.arch armv7ve
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	_ZN2os10interrupts18disable_interruptsEv, %function
_ZN2os10interrupts18disable_interruptsEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.syntax divided
@ 39 "../src/interrupts.cpp" 1
	cpsid i
@ 0 "" 2
	.arm
	.syntax unified
	bl	_ZN2os8this_cpuEv(PLT)
	ldr	r3, [r0]
	add	r3, r3, #1
	str	r3, [r0]
	pop	{r4, pc}
	.size	_ZN2os10interrupts18disable_interruptsEv, .-_ZN2os10interrupts18disable_interruptsEv
	.align	2
	.global	_ZN2os10interrupts17enable_interruptsEv
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	_ZN2os10interrupts17enable_interruptsEv, %function
_ZN2os10interrupts17enable_interruptsEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	_ZN2os8this_cpuEv(PLT)
	ldr	r3, [r0]
	cmp	r3, #1
	bls	.L5
	bl	_ZN2os8this_cpuEv(PLT)
	ldr	r3, [r0]
	sub	r3, r3, #1
	str	r3, [r0]
	pop	{r4, pc}
.L5:
	bl	_ZN2os8this_cpuEv(PLT)
	mov	r3, #0
	str	r3, [r0]
	.syntax divided
@ 49 "../src/interrupts.cpp" 1
	cpsie i
@ 0 "" 2
	.arm
	.syntax unified
	pop	{r4, pc}
	.size	_ZN2os10interrupts17enable_interruptsEv, .-_ZN2os10interrupts17enable_interruptsEv
	.align	2
	.global	_ZN2os10interrupts4initEv
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	_ZN2os10interrupts4initEv, %function
_ZN2os10interrupts4initEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #45568
	ldr	r4, .L10
	mov	r1, #16
	movt	r3, 16128
.LPIC0:
	add	r4, pc, r4
	mov	r0, r4
	str	r3, [r0], #4
	bl	_ZN2os6memory5bzeroEPvj(PLT)
	ldr	r3, [r4]
	mvn	r2, #0
	pop	{r4, lr}
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	b	move_exception_vector(PLT)
.L11:
	.align	2
.L10:
	.word	.LANCHOR0-(.LPIC0+8)
	.size	_ZN2os10interrupts4initEv, .-_ZN2os10interrupts4initEv
	.align	2
	.global	_ZN2os10interrupts22register_timer_handlerEPFvmEi
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	_ZN2os10interrupts22register_timer_handlerEPFvmEi, %function
_ZN2os10interrupts22register_timer_handlerEPFvmEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L13
.LPIC3:
	add	r3, pc, r3
	add	r3, r3, r1, lsl #2
	str	r0, [r3, #4]
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0-(.LPIC3+8)
	.size	_ZN2os10interrupts22register_timer_handlerEPFvmEi, .-_ZN2os10interrupts22register_timer_handlerEPFvmEi
	.align	2
	.global	_ZN2os10interrupts24unregister_timer_handlerEi
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	_ZN2os10interrupts24unregister_timer_handlerEi, %function
_ZN2os10interrupts24unregister_timer_handlerEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	mov	r2, #0
.LPIC4:
	add	r3, pc, r3
	add	r3, r3, r0, lsl #2
	str	r2, [r3, #4]
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0-(.LPIC4+8)
	.size	_ZN2os10interrupts24unregister_timer_handlerEi, .-_ZN2os10interrupts24unregister_timer_handlerEi
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"RESET HANDLER\012\000"
	.text
	.align	2
	.global	reset_handler
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	reset_handler, %function
reset_handler:
	@ Interrupt Service Routine.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	lr, lr, #4
	push	{r0, r1, r2, r3, ip, lr}
	ldr	r0, .L20
.LPIC5:
	add	r0, pc, r0
	bl	_ZN2os7console4putsEPKc(PLT)
	bl	_start(PLT)
	ldmfd	sp!, {r0, r1, r2, r3, ip, pc}^
.L21:
	.align	2
.L20:
	.word	.LC0-(.LPIC5+8)
	.size	reset_handler, .-reset_handler
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"PREFETCH ABORT HANDLER\012\000"
	.text
	.align	2
	.global	prefetch_abort_handler
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	prefetch_abort_handler, %function
prefetch_abort_handler:
	@ Interrupt Service Routine.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	lr, lr, #4
	push	{r0, r1, r2, r3, ip, lr}
	ldr	r0, .L25
.LPIC6:
	add	r0, pc, r0
	bl	_ZN2os7console4putsEPKc(PLT)
.L23:
	b	.L23
.L26:
	.align	2
.L25:
	.word	.LC1-(.LPIC6+8)
	.size	prefetch_abort_handler, .-prefetch_abort_handler
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"DATA ABORT HANDLER\012\000"
	.text
	.align	2
	.global	data_abort_handler
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	data_abort_handler, %function
data_abort_handler:
	@ Interrupt Service Routine.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	lr, lr, #4
	push	{r0, r1, r2, r3, ip, lr}
	ldr	r0, .L30
.LPIC7:
	add	r0, pc, r0
	bl	_ZN2os7console4putsEPKc(PLT)
.L28:
	b	.L28
.L31:
	.align	2
.L30:
	.word	.LC2-(.LPIC7+8)
	.size	data_abort_handler, .-data_abort_handler
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"UNDEFINED INSTRUCTION HANDLER\012\000"
	.text
	.align	2
	.global	undefined_instruction_handler
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	undefined_instruction_handler, %function
undefined_instruction_handler:
	@ ARM Exception Handler.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, ip, lr}
	ldr	r0, .L35
.LPIC8:
	add	r0, pc, r0
	bl	_ZN2os7console4putsEPKc(PLT)
.L33:
	b	.L33
.L36:
	.align	2
.L35:
	.word	.LC3-(.LPIC8+8)
	.size	undefined_instruction_handler, .-undefined_instruction_handler
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"SWI HANDLER\012\000"
	.text
	.align	2
	.global	software_interrupt_handler
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	software_interrupt_handler, %function
software_interrupt_handler:
	@ ARM Exception Handler.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, ip, lr}
	ldr	r0, .L40
.LPIC9:
	add	r0, pc, r0
	bl	_ZN2os7console4putsEPKc(PLT)
.L38:
	b	.L38
.L41:
	.align	2
.L40:
	.word	.LC4-(.LPIC9+8)
	.size	software_interrupt_handler, .-software_interrupt_handler
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"Interrupt!!\012\000"
	.text
	.align	2
	.global	irq_handler
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	irq_handler, %function
irq_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	_ZN2os10get_cpu_idEv(PLT)
	mov	r4, r0
	bl	_ZN2os10interrupts18disable_interruptsEv(PLT)
	ldr	r0, .L51
	lsl	r5, r4, #2
.LPIC10:
	add	r0, pc, r0
	bl	_ZN2os7console4putsEPKc(PLT)
	add	r0, r5, #1073741824
	add	r0, r0, #96
	bl	_ZN2os4mmio4readEm(PLT)
	tst	r0, #8
	beq	.L43
	ldr	r3, .L51+4
.LPIC11:
	add	r3, pc, r3
	add	r5, r3, r5
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L43
	mov	r0, r4
	blx	r3
.L43:
	pop	{r4, r5, r6, lr}
	b	_ZN2os10interrupts17enable_interruptsEv(PLT)
.L52:
	.align	2
.L51:
	.word	.LC5-(.LPIC10+8)
	.word	.LANCHOR0-(.LPIC11+8)
	.size	irq_handler, .-irq_handler
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"Fast Interrupt!!\012\000"
	.text
	.align	2
	.global	fast_irq_handler
	.syntax unified
	.arm
	.fpu neon-vfpv4
	.type	fast_irq_handler, %function
fast_irq_handler:
	@ Fast Interrupt Service Routine.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	lr, lr, #4
	push	{r0, r1, r2, r3, r4, lr}
	bl	_ZN2os10interrupts18disable_interruptsEv(PLT)
	ldr	r0, .L55
.LPIC12:
	add	r0, pc, r0
	bl	_ZN2os7console4putsEPKc(PLT)
	bl	_ZN2os10interrupts17enable_interruptsEv(PLT)
	bl	irq_handler(PLT)
	ldmfd	sp!, {r0, r1, r2, r3, r4, pc}^
.L56:
	.align	2
.L55:
	.word	.LC6-(.LPIC12+8)
	.size	fast_irq_handler, .-fast_irq_handler
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZN2os10interruptsL14interrupt_regsE, %object
	.size	_ZN2os10interruptsL14interrupt_regsE, 4
_ZN2os10interruptsL14interrupt_regsE:
	.space	4
	.type	_ZN2os10interruptsL13timer_handlerE, %object
	.size	_ZN2os10interruptsL13timer_handlerE, 16
_ZN2os10interruptsL13timer_handlerE:
	.space	16
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 9-2019-q4-major) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
