
/Users/yogeshkumar98103/Documents/Programming/C++/OperatingSystem/example/bin/os.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <__start>:
    8000:	ee101fb0 	mrc	15, 0, r1, cr0, cr0, {5}
    8004:	e2011003 	and	r1, r1, #3, 0
    8008:	e3510000 	cmp	r1, #0, 0
    800c:	0a000005 	beq	8028 <core0_setup>
    8010:	e3510001 	cmp	r1, #1, 0
    8014:	0a00000f 	beq	8058 <core1_setup>
    8018:	e3510002 	cmp	r1, #2, 0
    801c:	0a00000f 	beq	8060 <core2_setup>
    8020:	e3510003 	cmp	r1, #3, 0
    8024:	0a00000f 	beq	8068 <core3_setup>

00008028 <core0_setup>:
    8028:	e59fd050 	ldr	sp, [pc, #80]	; 8080 <halt+0x8>
    802c:	e59f4050 	ldr	r4, [pc, #80]	; 8084 <halt+0xc>
    8030:	e59f9050 	ldr	r9, [pc, #80]	; 8088 <halt+0x10>
    8034:	e3a05000 	mov	r5, #0, 0
    8038:	e3a06000 	mov	r6, #0, 0
    803c:	e3a07000 	mov	r7, #0, 0
    8040:	e3a08000 	mov	r8, #0, 0
    8044:	ea000000 	b	804c <core0_setup+0x24>
    8048:	e8a401e0 	stmia	r4!, {r5, r6, r7, r8}
    804c:	e1540009 	cmp	r4, r9
    8050:	3afffffc 	bcc	8048 <core0_setup+0x20>
    8054:	ea000004 	b	806c <call_entry>

00008058 <core1_setup>:
    8058:	e59fd02c 	ldr	sp, [pc, #44]	; 808c <halt+0x14>
    805c:	ea000002 	b	806c <call_entry>

00008060 <core2_setup>:
    8060:	e59fd028 	ldr	sp, [pc, #40]	; 8090 <halt+0x18>
    8064:	ea000000 	b	806c <call_entry>

00008068 <core3_setup>:
    8068:	e59fd024 	ldr	sp, [pc, #36]	; 8094 <halt+0x1c>

0000806c <call_entry>:
    806c:	e59f3024 	ldr	r3, [pc, #36]	; 8098 <halt+0x20>
    8070:	e12fff33 	blx	r3
    8074:	eaffffff 	b	8078 <halt>

00008078 <halt>:
    8078:	e320f002 	wfe
    807c:	eafffffd 	b	8078 <halt>
    8080:	0000f000 	.word	0x0000f000
    8084:	0000d000 	.word	0x0000d000
    8088:	0000e000 	.word	0x0000e000
    808c:	00010000 	.word	0x00010000
    8090:	00011000 	.word	0x00011000
    8094:	00012000 	.word	0x00012000
    8098:	00009fa0 	.word	0x00009fa0

0000809c <_Z17u32toa_branchlut2mPc>:
    809c:	e30e30ff 	movw	r3, #57599	; 0xe0ff
    80a0:	e34035f5 	movt	r3, #1525	; 0x5f5
    80a4:	e1500003 	cmp	r0, r3
    80a8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    80ac:	8a00001c 	bhi	8124 <_Z17u32toa_branchlut2mPc+0x88>
    80b0:	e302370f 	movw	r3, #9999	; 0x270f
    80b4:	e1500003 	cmp	r0, r3
    80b8:	8a00005e 	bhi	8238 <_Z17u32toa_branchlut2mPc+0x19c>
    80bc:	e3500063 	cmp	r0, #99, 0	; 0x63
    80c0:	9a000098 	bls	8328 <_Z17u32toa_branchlut2mPc+0x28c>
    80c4:	e308351f 	movw	r3, #34079	; 0x851f
    80c8:	e3500ffa 	cmp	r0, #1000	; 0x3e8
    80cc:	e34531eb 	movt	r3, #20971	; 0x51eb
    80d0:	e0832093 	umull	r2, r3, r3, r0
    80d4:	e1a032a3 	lsr	r3, r3, #5
    80d8:	2a0000a0 	bcs	8360 <_Z17u32toa_branchlut2mPc+0x2c4>
    80dc:	e1a0c001 	mov	ip, r1
    80e0:	e2833030 	add	r3, r3, #48, 0	; 0x30
    80e4:	e4cc3001 	strb	r3, [ip], #1
    80e8:	e59f2300 	ldr	r2, [pc, #768]	; 83f0 <_Z17u32toa_branchlut2mPc+0x354>
    80ec:	e308351f 	movw	r3, #34079	; 0x851f
    80f0:	e34531eb 	movt	r3, #20971	; 0x51eb
    80f4:	e3a01064 	mov	r1, #100, 0	; 0x64
    80f8:	e083e093 	umull	lr, r3, r3, r0
    80fc:	e08f2002 	add	r2, pc, r2
    8100:	e1a0500c 	mov	r5, ip
    8104:	e1a032a3 	lsr	r3, r3, #5
    8108:	e0600391 	mls	r0, r1, r3, r0
    810c:	e0821080 	add	r1, r2, r0, lsl #1
    8110:	e7d22080 	ldrb	r2, [r2, r0, lsl #1]
    8114:	e5d13001 	ldrb	r3, [r1, #1]
    8118:	e4c52002 	strb	r2, [r5], #2
    811c:	e5cc3001 	strb	r3, [ip, #1]
    8120:	ea00003d 	b	821c <_Z17u32toa_branchlut2mPc+0x180>
    8124:	e3033b89 	movw	r3, #15241	; 0x3b89
    8128:	e30c29ff 	movw	r2, #51711	; 0xc9ff
    812c:	e3432b9a 	movt	r2, #15258	; 0x3b9a
    8130:	e34535e6 	movt	r3, #21990	; 0x55e6
    8134:	e083c093 	umull	ip, r3, r3, r0
    8138:	e1500002 	cmp	r0, r2
    813c:	e1a02ca3 	lsr	r2, r3, #25
    8140:	9a000038 	bls	8228 <_Z17u32toa_branchlut2mPc+0x18c>
    8144:	e59fc2a8 	ldr	ip, [pc, #680]	; 83f4 <_Z17u32toa_branchlut2mPc+0x358>
    8148:	e1a03001 	mov	r3, r1
    814c:	e08fc00c 	add	ip, pc, ip
    8150:	e08ce082 	add	lr, ip, r2, lsl #1
    8154:	e7dcc082 	ldrb	ip, [ip, r2, lsl #1]
    8158:	e5de2001 	ldrb	r2, [lr, #1]
    815c:	e4c3c002 	strb	ip, [r3], #2
    8160:	e5c12001 	strb	r2, [r1, #1]
    8164:	e59fc28c 	ldr	ip, [pc, #652]	; 83f8 <_Z17u32toa_branchlut2mPc+0x35c>
    8168:	e3031b89 	movw	r1, #15241	; 0x3b89
    816c:	e34515e6 	movt	r1, #21990	; 0x55e6
    8170:	e3a02ce1 	mov	r2, #57600	; 0xe100
    8174:	e081e091 	umull	lr, r1, r1, r0
    8178:	e34025f5 	movt	r2, #1525	; 0x5f5
    817c:	e301e759 	movw	lr, #5977	; 0x1759
    8180:	e1a01ca1 	lsr	r1, r1, #25
    8184:	e3024710 	movw	r4, #10000	; 0x2710
    8188:	e0610192 	mls	r1, r2, r1, r0
    818c:	e34de1b7 	movt	lr, #53687	; 0xd1b7
    8190:	e308251f 	movw	r2, #34079	; 0x851f
    8194:	e080e19e 	umull	lr, r0, lr, r1
    8198:	e34521eb 	movt	r2, #20971	; 0x51eb
    819c:	e3a0e064 	mov	lr, #100, 0	; 0x64
    81a0:	e1a006a0 	lsr	r0, r0, #13
    81a4:	e2835008 	add	r5, r3, #8, 0
    81a8:	e0611094 	mls	r1, r4, r0, r1
    81ac:	e0846092 	umull	r6, r4, r2, r0
    81b0:	e0826192 	umull	r6, r2, r2, r1
    81b4:	e08fc00c 	add	ip, pc, ip
    81b8:	e1a022a2 	lsr	r2, r2, #5
    81bc:	e1a042a4 	lsr	r4, r4, #5
    81c0:	e061129e 	mls	r1, lr, r2, r1
    81c4:	e06e049e 	mls	lr, lr, r4, r0
    81c8:	e08c6081 	add	r6, ip, r1, lsl #1
    81cc:	e1a0000c 	mov	r0, ip
    81d0:	e08cc08e 	add	ip, ip, lr, lsl #1
    81d4:	e7d08081 	ldrb	r8, [r0, r1, lsl #1]
    81d8:	e0801082 	add	r1, r0, r2, lsl #1
    81dc:	e5d69001 	ldrb	r9, [r6, #1]
    81e0:	e7d0608e 	ldrb	r6, [r0, lr, lsl #1]
    81e4:	e5d1e001 	ldrb	lr, [r1, #1]
    81e8:	e0801084 	add	r1, r0, r4, lsl #1
    81ec:	e5dc7001 	ldrb	r7, [ip, #1]
    81f0:	e5d11001 	ldrb	r1, [r1, #1]
    81f4:	e7d0c082 	ldrb	ip, [r0, r2, lsl #1]
    81f8:	e7d02084 	ldrb	r2, [r0, r4, lsl #1]
    81fc:	e5c39007 	strb	r9, [r3, #7]
    8200:	e5c38006 	strb	r8, [r3, #6]
    8204:	e5c37003 	strb	r7, [r3, #3]
    8208:	e5c36002 	strb	r6, [r3, #2]
    820c:	e5c3e005 	strb	lr, [r3, #5]
    8210:	e5c3c004 	strb	ip, [r3, #4]
    8214:	e5c31001 	strb	r1, [r3, #1]
    8218:	e5c32000 	strb	r2, [r3]
    821c:	e3a03000 	mov	r3, #0, 0
    8220:	e5c53000 	strb	r3, [r5]
    8224:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
    8228:	e1a03001 	mov	r3, r1
    822c:	e2822030 	add	r2, r2, #48, 0	; 0x30
    8230:	e4c32001 	strb	r2, [r3], #1
    8234:	eaffffca 	b	8164 <_Z17u32toa_branchlut2mPc+0xc8>
    8238:	e3013759 	movw	r3, #5977	; 0x1759
    823c:	e3042240 	movw	r2, #16960	; 0x4240
    8240:	e34d31b7 	movt	r3, #53687	; 0xd1b7
    8244:	e340200f 	movt	r2, #15
    8248:	e083c093 	umull	ip, r3, r3, r0
    824c:	e1500002 	cmp	r0, r2
    8250:	e1a036a3 	lsr	r3, r3, #13
    8254:	3a000039 	bcc	8340 <_Z17u32toa_branchlut2mPc+0x2a4>
    8258:	e308251f 	movw	r2, #34079	; 0x851f
    825c:	e309c67f 	movw	ip, #38527	; 0x967f
    8260:	e34521eb 	movt	r2, #20971	; 0x51eb
    8264:	e340c098 	movt	ip, #152	; 0x98
    8268:	e082e392 	umull	lr, r2, r2, r3
    826c:	e150000c 	cmp	r0, ip
    8270:	e1a022a2 	lsr	r2, r2, #5
    8274:	8a000054 	bhi	83cc <_Z17u32toa_branchlut2mPc+0x330>
    8278:	e1a0e001 	mov	lr, r1
    827c:	e2822030 	add	r2, r2, #48, 0	; 0x30
    8280:	e4ce2001 	strb	r2, [lr], #1
    8284:	e59f1170 	ldr	r1, [pc, #368]	; 83fc <_Z17u32toa_branchlut2mPc+0x360>
    8288:	e308251f 	movw	r2, #34079	; 0x851f
    828c:	e34521eb 	movt	r2, #20971	; 0x51eb
    8290:	e3a0c064 	mov	ip, #100, 0	; 0x64
    8294:	e0824392 	umull	r4, r2, r2, r3
    8298:	e08f1001 	add	r1, pc, r1
    829c:	e1a022a2 	lsr	r2, r2, #5
    82a0:	e063329c 	mls	r3, ip, r2, r3
    82a4:	e1a02001 	mov	r2, r1
    82a8:	e1a0c00e 	mov	ip, lr
    82ac:	e0811083 	add	r1, r1, r3, lsl #1
    82b0:	e7d22083 	ldrb	r2, [r2, r3, lsl #1]
    82b4:	e5d13001 	ldrb	r3, [r1, #1]
    82b8:	e4cc2002 	strb	r2, [ip], #2
    82bc:	e5ce3001 	strb	r3, [lr, #1]
    82c0:	e59f1138 	ldr	r1, [pc, #312]	; 8400 <_Z17u32toa_branchlut2mPc+0x364>
    82c4:	e3013759 	movw	r3, #5977	; 0x1759
    82c8:	e34d31b7 	movt	r3, #53687	; 0xd1b7
    82cc:	e302e710 	movw	lr, #10000	; 0x2710
    82d0:	e0832093 	umull	r2, r3, r3, r0
    82d4:	e08f1001 	add	r1, pc, r1
    82d8:	e308251f 	movw	r2, #34079	; 0x851f
    82dc:	e1a036a3 	lsr	r3, r3, #13
    82e0:	e28c5004 	add	r5, ip, #4, 0
    82e4:	e063039e 	mls	r3, lr, r3, r0
    82e8:	e34521eb 	movt	r2, #20971	; 0x51eb
    82ec:	e3a00064 	mov	r0, #100, 0	; 0x64
    82f0:	e082e392 	umull	lr, r2, r2, r3
    82f4:	e1a022a2 	lsr	r2, r2, #5
    82f8:	e0633290 	mls	r3, r0, r2, r3
    82fc:	e0810082 	add	r0, r1, r2, lsl #1
    8300:	e0814083 	add	r4, r1, r3, lsl #1
    8304:	e7d1e083 	ldrb	lr, [r1, r3, lsl #1]
    8308:	e5d44001 	ldrb	r4, [r4, #1]
    830c:	e5d00001 	ldrb	r0, [r0, #1]
    8310:	e7d13082 	ldrb	r3, [r1, r2, lsl #1]
    8314:	e5cc4003 	strb	r4, [ip, #3]
    8318:	e5cce002 	strb	lr, [ip, #2]
    831c:	e5cc0001 	strb	r0, [ip, #1]
    8320:	e5cc3000 	strb	r3, [ip]
    8324:	eaffffbc 	b	821c <_Z17u32toa_branchlut2mPc+0x180>
    8328:	e3500009 	cmp	r0, #9, 0
    832c:	8a00001d 	bhi	83a8 <_Z17u32toa_branchlut2mPc+0x30c>
    8330:	e1a05001 	mov	r5, r1
    8334:	e2800030 	add	r0, r0, #48, 0	; 0x30
    8338:	e4c50001 	strb	r0, [r5], #1
    833c:	eaffffb6 	b	821c <_Z17u32toa_branchlut2mPc+0x180>
    8340:	e30826a0 	movw	r2, #34464	; 0x86a0
    8344:	e3402001 	movt	r2, #1
    8348:	e1500002 	cmp	r0, r2
    834c:	2a00000c 	bcs	8384 <_Z17u32toa_branchlut2mPc+0x2e8>
    8350:	e1a0c001 	mov	ip, r1
    8354:	e2833030 	add	r3, r3, #48, 0	; 0x30
    8358:	e4cc3001 	strb	r3, [ip], #1
    835c:	eaffffd7 	b	82c0 <_Z17u32toa_branchlut2mPc+0x224>
    8360:	e59f209c 	ldr	r2, [pc, #156]	; 8404 <_Z17u32toa_branchlut2mPc+0x368>
    8364:	e1a0c001 	mov	ip, r1
    8368:	e08f2002 	add	r2, pc, r2
    836c:	e082e083 	add	lr, r2, r3, lsl #1
    8370:	e7d22083 	ldrb	r2, [r2, r3, lsl #1]
    8374:	e5de3001 	ldrb	r3, [lr, #1]
    8378:	e4cc2002 	strb	r2, [ip], #2
    837c:	e5c13001 	strb	r3, [r1, #1]
    8380:	eaffff58 	b	80e8 <_Z17u32toa_branchlut2mPc+0x4c>
    8384:	e59f207c 	ldr	r2, [pc, #124]	; 8408 <_Z17u32toa_branchlut2mPc+0x36c>
    8388:	e1a0c001 	mov	ip, r1
    838c:	e08f2002 	add	r2, pc, r2
    8390:	e082e083 	add	lr, r2, r3, lsl #1
    8394:	e7d22083 	ldrb	r2, [r2, r3, lsl #1]
    8398:	e5de3001 	ldrb	r3, [lr, #1]
    839c:	e4cc2002 	strb	r2, [ip], #2
    83a0:	e5c13001 	strb	r3, [r1, #1]
    83a4:	eaffffc5 	b	82c0 <_Z17u32toa_branchlut2mPc+0x224>
    83a8:	e59f305c 	ldr	r3, [pc, #92]	; 840c <_Z17u32toa_branchlut2mPc+0x370>
    83ac:	e1a05001 	mov	r5, r1
    83b0:	e08f3003 	add	r3, pc, r3
    83b4:	e083c080 	add	ip, r3, r0, lsl #1
    83b8:	e7d32080 	ldrb	r2, [r3, r0, lsl #1]
    83bc:	e5dc3001 	ldrb	r3, [ip, #1]
    83c0:	e4c52002 	strb	r2, [r5], #2
    83c4:	e5c13001 	strb	r3, [r1, #1]
    83c8:	eaffff93 	b	821c <_Z17u32toa_branchlut2mPc+0x180>
    83cc:	e59fc03c 	ldr	ip, [pc, #60]	; 8410 <_Z17u32toa_branchlut2mPc+0x374>
    83d0:	e1a0e001 	mov	lr, r1
    83d4:	e08fc00c 	add	ip, pc, ip
    83d8:	e08c4082 	add	r4, ip, r2, lsl #1
    83dc:	e7dcc082 	ldrb	ip, [ip, r2, lsl #1]
    83e0:	e5d42001 	ldrb	r2, [r4, #1]
    83e4:	e4cec002 	strb	ip, [lr], #2
    83e8:	e5c12001 	strb	r2, [r1, #1]
    83ec:	eaffffa4 	b	8284 <_Z17u32toa_branchlut2mPc+0x1e8>
    83f0:	00002efc 	.word	0x00002efc
    83f4:	00002eac 	.word	0x00002eac
    83f8:	00002e44 	.word	0x00002e44
    83fc:	00002d60 	.word	0x00002d60
    8400:	00002d24 	.word	0x00002d24
    8404:	00002c90 	.word	0x00002c90
    8408:	00002c6c 	.word	0x00002c6c
    840c:	00002c48 	.word	0x00002c48
    8410:	00002c24 	.word	0x00002c24

00008414 <_Z17i32toa_branchlut2lPc>:
    8414:	e3500000 	cmp	r0, #0, 0
    8418:	b2600000 	rsblt	r0, r0, #0, 0
    841c:	b3a0302d 	movlt	r3, #45, 0	; 0x2d
    8420:	b4c13001 	strblt	r3, [r1], #1
    8424:	eaffff1c 	b	809c <_Z17u32toa_branchlut2mPc>

00008428 <_ZN2os7console11iolock_initEv>:
    8428:	e92d4010 	push	{r4, lr}
    842c:	e59f4040 	ldr	r4, [pc, #64]	; 8474 <_ZN2os7console11iolock_initEv+0x4c>
    8430:	e59f3040 	ldr	r3, [pc, #64]	; 8478 <_ZN2os7console11iolock_initEv+0x50>
    8434:	e08f4004 	add	r4, pc, r4
    8438:	e7940003 	ldr	r0, [r4, r3]
    843c:	eb000199 	bl	8aa8 <_ZN2os4sync8spinlock4initEv>
    8440:	e59f3034 	ldr	r3, [pc, #52]	; 847c <_ZN2os7console11iolock_initEv+0x54>
    8444:	e7940003 	ldr	r0, [r4, r3]
    8448:	eb000196 	bl	8aa8 <_ZN2os4sync8spinlock4initEv>
    844c:	e59f302c 	ldr	r3, [pc, #44]	; 8480 <_ZN2os7console11iolock_initEv+0x58>
    8450:	e7940003 	ldr	r0, [r4, r3]
    8454:	eb000193 	bl	8aa8 <_ZN2os4sync8spinlock4initEv>
    8458:	e59f3024 	ldr	r3, [pc, #36]	; 8484 <_ZN2os7console11iolock_initEv+0x5c>
    845c:	e7940003 	ldr	r0, [r4, r3]
    8460:	eb000190 	bl	8aa8 <_ZN2os4sync8spinlock4initEv>
    8464:	e59f301c 	ldr	r3, [pc, #28]	; 8488 <_ZN2os7console11iolock_initEv+0x60>
    8468:	e7940003 	ldr	r0, [r4, r3]
    846c:	e8bd4010 	pop	{r4, lr}
    8470:	ea00018c 	b	8aa8 <_ZN2os4sync8spinlock4initEv>
    8474:	00003bd8 	.word	0x00003bd8
    8478:	0000004c 	.word	0x0000004c
    847c:	00000050 	.word	0x00000050
    8480:	00000008 	.word	0x00000008
    8484:	00000044 	.word	0x00000044
    8488:	00000024 	.word	0x00000024

0000848c <_ZN2os7console4putcEc>:
    848c:	ea000236 	b	8d6c <_ZN2os4uart4putcEc>

00008490 <_ZN2os7console4getcEv>:
    8490:	e59f303c 	ldr	r3, [pc, #60]	; 84d4 <_ZN2os7console4getcEv+0x44>
    8494:	e59f203c 	ldr	r2, [pc, #60]	; 84d8 <_ZN2os7console4getcEv+0x48>
    8498:	e08f3003 	add	r3, pc, r3
    849c:	e92d4070 	push	{r4, r5, r6, lr}
    84a0:	e7935002 	ldr	r5, [r3, r2]
    84a4:	e1a00005 	mov	r0, r5
    84a8:	eb000181 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    84ac:	eb000247 	bl	8dd0 <_ZN2os4uart4getcEv>
    84b0:	e350000d 	cmp	r0, #13, 0
    84b4:	11a04000 	movne	r4, r0
    84b8:	03a0400a 	moveq	r4, #10, 0
    84bc:	e1a00004 	mov	r0, r4
    84c0:	ebfffff1 	bl	848c <_ZN2os7console4putcEc>
    84c4:	e1a00005 	mov	r0, r5
    84c8:	eb000182 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    84cc:	e1a00004 	mov	r0, r4
    84d0:	e8bd8070 	pop	{r4, r5, r6, pc}
    84d4:	00003b74 	.word	0x00003b74
    84d8:	0000004c 	.word	0x0000004c

000084dc <_ZN2os7console4putsEPKc>:
    84dc:	e59f3040 	ldr	r3, [pc, #64]	; 8524 <_ZN2os7console4putsEPKc+0x48>
    84e0:	e59f2040 	ldr	r2, [pc, #64]	; 8528 <_ZN2os7console4putsEPKc+0x4c>
    84e4:	e08f3003 	add	r3, pc, r3
    84e8:	e92d4070 	push	{r4, r5, r6, lr}
    84ec:	e1a04000 	mov	r4, r0
    84f0:	e7935002 	ldr	r5, [r3, r2]
    84f4:	e1a00005 	mov	r0, r5
    84f8:	eb00016d 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    84fc:	e5d40000 	ldrb	r0, [r4]
    8500:	e3500000 	cmp	r0, #0, 0
    8504:	0a000003 	beq	8518 <_ZN2os7console4putsEPKc+0x3c>
    8508:	ebffffdf 	bl	848c <_ZN2os7console4putcEc>
    850c:	e5f40001 	ldrb	r0, [r4, #1]!
    8510:	e3500000 	cmp	r0, #0, 0
    8514:	1afffffb 	bne	8508 <_ZN2os7console4putsEPKc+0x2c>
    8518:	e1a00005 	mov	r0, r5
    851c:	e8bd4070 	pop	{r4, r5, r6, lr}
    8520:	ea00016c 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    8524:	00003b28 	.word	0x00003b28
    8528:	00000050 	.word	0x00000050

0000852c <_ZN2os7console4getsEPcc>:
    852c:	e59f3054 	ldr	r3, [pc, #84]	; 8588 <_ZN2os7console4getsEPcc+0x5c>
    8530:	e59f2054 	ldr	r2, [pc, #84]	; 858c <_ZN2os7console4getsEPcc+0x60>
    8534:	e08f3003 	add	r3, pc, r3
    8538:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    853c:	e1a04000 	mov	r4, r0
    8540:	e7937002 	ldr	r7, [r3, r2]
    8544:	e1a06001 	mov	r6, r1
    8548:	e3a05000 	mov	r5, #0, 0
    854c:	e1a00007 	mov	r0, r7
    8550:	eb000157 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    8554:	ea000000 	b	855c <_ZN2os7console4getsEPcc+0x30>
    8558:	e2855001 	add	r5, r5, #1, 0
    855c:	ebffffcb 	bl	8490 <_ZN2os7console4getcEv>
    8560:	e1500006 	cmp	r0, r6
    8564:	e1a03004 	mov	r3, r4
    8568:	e4c40001 	strb	r0, [r4], #1
    856c:	1afffff9 	bne	8558 <_ZN2os7console4getsEPcc+0x2c>
    8570:	e3a02000 	mov	r2, #0, 0
    8574:	e1a00007 	mov	r0, r7
    8578:	e5c32000 	strb	r2, [r3]
    857c:	eb000155 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    8580:	e1a00005 	mov	r0, r5
    8584:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    8588:	00003ad8 	.word	0x00003ad8
    858c:	00000008 	.word	0x00000008

00008590 <_ZN2os7console4getsEPcic>:
    8590:	e59f3078 	ldr	r3, [pc, #120]	; 8610 <_ZN2os7console4getsEPcic+0x80>
    8594:	e59fc078 	ldr	ip, [pc, #120]	; 8614 <_ZN2os7console4getsEPcic+0x84>
    8598:	e08f3003 	add	r3, pc, r3
    859c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    85a0:	e1a07001 	mov	r7, r1
    85a4:	e793800c 	ldr	r8, [r3, ip]
    85a8:	e1a06000 	mov	r6, r0
    85ac:	e1a09002 	mov	r9, r2
    85b0:	e1a00008 	mov	r0, r8
    85b4:	eb00013e 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    85b8:	e3570000 	cmp	r7, #0, 0
    85bc:	da000011 	ble	8608 <_ZN2os7console4getsEPcic+0x78>
    85c0:	e1a04006 	mov	r4, r6
    85c4:	e3a05000 	mov	r5, #0, 0
    85c8:	ea000003 	b	85dc <_ZN2os7console4getsEPcic+0x4c>
    85cc:	e2855001 	add	r5, r5, #1, 0
    85d0:	e1a06004 	mov	r6, r4
    85d4:	e1570005 	cmp	r7, r5
    85d8:	0a000004 	beq	85f0 <_ZN2os7console4getsEPcic+0x60>
    85dc:	e1a06004 	mov	r6, r4
    85e0:	ebffffaa 	bl	8490 <_ZN2os7console4getcEv>
    85e4:	e1500009 	cmp	r0, r9
    85e8:	e4c40001 	strb	r0, [r4], #1
    85ec:	1afffff6 	bne	85cc <_ZN2os7console4getsEPcic+0x3c>
    85f0:	e3a03000 	mov	r3, #0, 0
    85f4:	e1a00008 	mov	r0, r8
    85f8:	e5c63000 	strb	r3, [r6]
    85fc:	eb000135 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    8600:	e1a00005 	mov	r0, r5
    8604:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    8608:	e3a05000 	mov	r5, #0, 0
    860c:	eafffff7 	b	85f0 <_ZN2os7console4getsEPcic+0x60>
    8610:	00003a74 	.word	0x00003a74
    8614:	00000008 	.word	0x00000008

00008618 <_ZN2os7console7getlineEPc>:
    8618:	e3a0100d 	mov	r1, #13, 0
    861c:	eaffffc2 	b	852c <_ZN2os7console4getsEPcc>

00008620 <_ZN2os7console7getlineEPci>:
    8620:	e3a0200a 	mov	r2, #10, 0
    8624:	eaffffd9 	b	8590 <_ZN2os7console4getsEPcic>

00008628 <_ZN2os7console6putu32Em>:
    8628:	e59f3044 	ldr	r3, [pc, #68]	; 8674 <_ZN2os7console6putu32Em+0x4c>
    862c:	e59f2044 	ldr	r2, [pc, #68]	; 8678 <_ZN2os7console6putu32Em+0x50>
    8630:	e08f3003 	add	r3, pc, r3
    8634:	e92d4030 	push	{r4, r5, lr}
    8638:	e1a04000 	mov	r4, r0
    863c:	e7935002 	ldr	r5, [r3, r2]
    8640:	e24dd014 	sub	sp, sp, #20, 0
    8644:	e1a00005 	mov	r0, r5
    8648:	eb000119 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    864c:	e1a00004 	mov	r0, r4
    8650:	e28d4004 	add	r4, sp, #4, 0
    8654:	e1a01004 	mov	r1, r4
    8658:	ebfffe8f 	bl	809c <_Z17u32toa_branchlut2mPc>
    865c:	e1a00004 	mov	r0, r4
    8660:	ebffff9d 	bl	84dc <_ZN2os7console4putsEPKc>
    8664:	e1a00005 	mov	r0, r5
    8668:	eb00011a 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    866c:	e28dd014 	add	sp, sp, #20, 0
    8670:	e8bd8030 	pop	{r4, r5, pc}
    8674:	000039dc 	.word	0x000039dc
    8678:	00000044 	.word	0x00000044

0000867c <_ZN2os7console6puti32El>:
    867c:	e59f3044 	ldr	r3, [pc, #68]	; 86c8 <_ZN2os7console6puti32El+0x4c>
    8680:	e59f2044 	ldr	r2, [pc, #68]	; 86cc <_ZN2os7console6puti32El+0x50>
    8684:	e08f3003 	add	r3, pc, r3
    8688:	e92d4030 	push	{r4, r5, lr}
    868c:	e1a04000 	mov	r4, r0
    8690:	e7935002 	ldr	r5, [r3, r2]
    8694:	e24dd014 	sub	sp, sp, #20, 0
    8698:	e1a00005 	mov	r0, r5
    869c:	eb000104 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    86a0:	e1a00004 	mov	r0, r4
    86a4:	e28d4004 	add	r4, sp, #4, 0
    86a8:	e1a01004 	mov	r1, r4
    86ac:	ebfffe7a 	bl	809c <_Z17u32toa_branchlut2mPc>
    86b0:	e1a00004 	mov	r0, r4
    86b4:	ebffff88 	bl	84dc <_ZN2os7console4putsEPKc>
    86b8:	e1a00005 	mov	r0, r5
    86bc:	eb000105 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    86c0:	e28dd014 	add	sp, sp, #20, 0
    86c4:	e8bd8030 	pop	{r4, r5, pc}
    86c8:	00003988 	.word	0x00003988
    86cc:	00000024 	.word	0x00000024

000086d0 <putu32>:
    86d0:	e59f3050 	ldr	r3, [pc, #80]	; 8728 <putu32+0x58>
    86d4:	e59f2050 	ldr	r2, [pc, #80]	; 872c <putu32+0x5c>
    86d8:	e08f3003 	add	r3, pc, r3
    86dc:	e92d4030 	push	{r4, r5, lr}
    86e0:	e1a04000 	mov	r4, r0
    86e4:	e7935002 	ldr	r5, [r3, r2]
    86e8:	e24dd014 	sub	sp, sp, #20, 0
    86ec:	e1a00005 	mov	r0, r5
    86f0:	eb0000ef 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    86f4:	e1a00004 	mov	r0, r4
    86f8:	e28d4004 	add	r4, sp, #4, 0
    86fc:	e1a01004 	mov	r1, r4
    8700:	ebfffe65 	bl	809c <_Z17u32toa_branchlut2mPc>
    8704:	e1a00004 	mov	r0, r4
    8708:	ebffff73 	bl	84dc <_ZN2os7console4putsEPKc>
    870c:	e59f001c 	ldr	r0, [pc, #28]	; 8730 <putu32+0x60>
    8710:	e08f0000 	add	r0, pc, r0
    8714:	ebffff70 	bl	84dc <_ZN2os7console4putsEPKc>
    8718:	e1a00005 	mov	r0, r5
    871c:	eb0000ed 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    8720:	e28dd014 	add	sp, sp, #20, 0
    8724:	e8bd8030 	pop	{r4, r5, pc}
    8728:	00003934 	.word	0x00003934
    872c:	00000044 	.word	0x00000044
    8730:	000029b0 	.word	0x000029b0

00008734 <_ZN2os8cpu_initEm>:
    8734:	e59f3024 	ldr	r3, [pc, #36]	; 8760 <_ZN2os8cpu_initEm+0x2c>
    8738:	e3a0c000 	mov	ip, #0, 0
    873c:	e59f2020 	ldr	r2, [pc, #32]	; 8764 <_ZN2os8cpu_initEm+0x30>
    8740:	e08f3003 	add	r3, pc, r3
    8744:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8748:	e3a0e001 	mov	lr, #1, 0
    874c:	e7932002 	ldr	r2, [r3, r2]
    8750:	e0821180 	add	r1, r2, r0, lsl #3
    8754:	e782e180 	str	lr, [r2, r0, lsl #3]
    8758:	e581c004 	str	ip, [r1, #4]
    875c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
    8760:	000038cc 	.word	0x000038cc
    8764:	00000040 	.word	0x00000040

00008768 <_ZN2os10get_cpu_idEv>:
    8768:	ea000250 	b	90b0 <__get_cpu_id>

0000876c <_ZN2os8this_cpuEv>:
    876c:	e92d4010 	push	{r4, lr}
    8770:	ebfffffc 	bl	8768 <_ZN2os10get_cpu_idEv>
    8774:	e59f4014 	ldr	r4, [pc, #20]	; 8790 <_ZN2os8this_cpuEv+0x24>
    8778:	e59f2014 	ldr	r2, [pc, #20]	; 8794 <_ZN2os8this_cpuEv+0x28>
    877c:	e08f4004 	add	r4, pc, r4
    8780:	e1a03004 	mov	r3, r4
    8784:	e7943002 	ldr	r3, [r4, r2]
    8788:	e0830180 	add	r0, r3, r0, lsl #3
    878c:	e8bd8010 	pop	{r4, pc}
    8790:	00003890 	.word	0x00003890
    8794:	00000040 	.word	0x00000040

00008798 <_ZN2os10interrupts18disable_interruptsEv>:
    8798:	e92d4010 	push	{r4, lr}
    879c:	f10c0080 	cpsid	i
    87a0:	ebfffff1 	bl	876c <_ZN2os8this_cpuEv>
    87a4:	e5903000 	ldr	r3, [r0]
    87a8:	e2833001 	add	r3, r3, #1, 0
    87ac:	e5803000 	str	r3, [r0]
    87b0:	e8bd8010 	pop	{r4, pc}

000087b4 <_ZN2os10interrupts17enable_interruptsEv>:
    87b4:	e92d4010 	push	{r4, lr}
    87b8:	ebffffeb 	bl	876c <_ZN2os8this_cpuEv>
    87bc:	e5903000 	ldr	r3, [r0]
    87c0:	e3530001 	cmp	r3, #1, 0
    87c4:	9a000004 	bls	87dc <_ZN2os10interrupts17enable_interruptsEv+0x28>
    87c8:	ebffffe7 	bl	876c <_ZN2os8this_cpuEv>
    87cc:	e5903000 	ldr	r3, [r0]
    87d0:	e2433001 	sub	r3, r3, #1, 0
    87d4:	e5803000 	str	r3, [r0]
    87d8:	e8bd8010 	pop	{r4, pc}
    87dc:	ebffffe2 	bl	876c <_ZN2os8this_cpuEv>
    87e0:	e3a03000 	mov	r3, #0, 0
    87e4:	e5803000 	str	r3, [r0]
    87e8:	f1080080 	cpsie	i
    87ec:	e8bd8010 	pop	{r4, pc}

000087f0 <_ZN2os10interrupts4initEv>:
    87f0:	e92d4010 	push	{r4, lr}
    87f4:	e3a03cb2 	mov	r3, #45568	; 0xb200
    87f8:	e59f4030 	ldr	r4, [pc, #48]	; 8830 <_ZN2os10interrupts4initEv+0x40>
    87fc:	e3a01010 	mov	r1, #16, 0
    8800:	e3433f00 	movt	r3, #16128	; 0x3f00
    8804:	e08f4004 	add	r4, pc, r4
    8808:	e1a00004 	mov	r0, r4
    880c:	e4803004 	str	r3, [r0], #4
    8810:	eb000056 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    8814:	e5943000 	ldr	r3, [r4]
    8818:	e3e02000 	mvn	r2, #0, 0
    881c:	e8bd4010 	pop	{r4, lr}
    8820:	e5832024 	str	r2, [r3, #36]	; 0x24
    8824:	e583201c 	str	r2, [r3, #28]
    8828:	e5832020 	str	r2, [r3, #32]
    882c:	ea000232 	b	90fc <move_exception_vector>
    8830:	00004808 	.word	0x00004808

00008834 <_ZN2os10interrupts22register_timer_handlerEPFvmEi>:
    8834:	e59f300c 	ldr	r3, [pc, #12]	; 8848 <_ZN2os10interrupts22register_timer_handlerEPFvmEi+0x14>
    8838:	e08f3003 	add	r3, pc, r3
    883c:	e0833101 	add	r3, r3, r1, lsl #2
    8840:	e5830004 	str	r0, [r3, #4]
    8844:	e12fff1e 	bx	lr
    8848:	000047d4 	.word	0x000047d4

0000884c <_ZN2os10interrupts24unregister_timer_handlerEi>:
    884c:	e59f3010 	ldr	r3, [pc, #16]	; 8864 <_ZN2os10interrupts24unregister_timer_handlerEi+0x18>
    8850:	e3a02000 	mov	r2, #0, 0
    8854:	e08f3003 	add	r3, pc, r3
    8858:	e0833100 	add	r3, r3, r0, lsl #2
    885c:	e5832004 	str	r2, [r3, #4]
    8860:	e12fff1e 	bx	lr
    8864:	000047b8 	.word	0x000047b8

00008868 <reset_handler>:
    8868:	e24ee004 	sub	lr, lr, #4, 0
    886c:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
    8870:	e59f000c 	ldr	r0, [pc, #12]	; 8884 <reset_handler+0x1c>
    8874:	e08f0000 	add	r0, pc, r0
    8878:	ebffff17 	bl	84dc <_ZN2os7console4putsEPKc>
    887c:	ebfffddf 	bl	8000 <__start>
    8880:	e8fd900f 	ldm	sp!, {r0, r1, r2, r3, ip, pc}^
    8884:	00002854 	.word	0x00002854

00008888 <prefetch_abort_handler>:
    8888:	e24ee004 	sub	lr, lr, #4, 0
    888c:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
    8890:	e59f0008 	ldr	r0, [pc, #8]	; 88a0 <prefetch_abort_handler+0x18>
    8894:	e08f0000 	add	r0, pc, r0
    8898:	ebffff0f 	bl	84dc <_ZN2os7console4putsEPKc>
    889c:	eafffffe 	b	889c <prefetch_abort_handler+0x14>
    88a0:	00002844 	.word	0x00002844

000088a4 <data_abort_handler>:
    88a4:	e24ee004 	sub	lr, lr, #4, 0
    88a8:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
    88ac:	e59f0008 	ldr	r0, [pc, #8]	; 88bc <data_abort_handler+0x18>
    88b0:	e08f0000 	add	r0, pc, r0
    88b4:	ebffff08 	bl	84dc <_ZN2os7console4putsEPKc>
    88b8:	eafffffe 	b	88b8 <data_abort_handler+0x14>
    88bc:	00002840 	.word	0x00002840

000088c0 <undefined_instruction_handler>:
    88c0:	e24ee004 	sub	lr, lr, #4, 0
    88c4:	e1a0000e 	mov	r0, lr
    88c8:	ebffff80 	bl	86d0 <putu32>
    88cc:	e12fff1e 	bx	lr

000088d0 <software_interrupt_handler>:
    88d0:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
    88d4:	e59f0008 	ldr	r0, [pc, #8]	; 88e4 <software_interrupt_handler+0x14>
    88d8:	e08f0000 	add	r0, pc, r0
    88dc:	ebfffefe 	bl	84dc <_ZN2os7console4putsEPKc>
    88e0:	eafffffe 	b	88e0 <software_interrupt_handler+0x10>
    88e4:	0000282c 	.word	0x0000282c

000088e8 <irq_handler>:
    88e8:	e92d4070 	push	{r4, r5, r6, lr}
    88ec:	ebffff9d 	bl	8768 <_ZN2os10get_cpu_idEv>
    88f0:	e1a04000 	mov	r4, r0
    88f4:	ebffffa7 	bl	8798 <_ZN2os10interrupts18disable_interruptsEv>
    88f8:	e59f0044 	ldr	r0, [pc, #68]	; 8944 <irq_handler+0x5c>
    88fc:	e1a05104 	lsl	r5, r4, #2
    8900:	e08f0000 	add	r0, pc, r0
    8904:	ebfffef4 	bl	84dc <_ZN2os7console4putsEPKc>
    8908:	e2850101 	add	r0, r5, #1073741824	; 0x40000000
    890c:	e2800060 	add	r0, r0, #96, 0	; 0x60
    8910:	eb00005f 	bl	8a94 <_ZN2os4mmio4readEm>
    8914:	e3100008 	tst	r0, #8, 0
    8918:	0a000007 	beq	893c <irq_handler+0x54>
    891c:	e59f3024 	ldr	r3, [pc, #36]	; 8948 <irq_handler+0x60>
    8920:	e08f3003 	add	r3, pc, r3
    8924:	e0835005 	add	r5, r3, r5
    8928:	e5953004 	ldr	r3, [r5, #4]
    892c:	e3530000 	cmp	r3, #0, 0
    8930:	0a000001 	beq	893c <irq_handler+0x54>
    8934:	e1a00004 	mov	r0, r4
    8938:	e12fff33 	blx	r3
    893c:	e8bd4070 	pop	{r4, r5, r6, lr}
    8940:	eaffff9b 	b	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    8944:	00002814 	.word	0x00002814
    8948:	000046ec 	.word	0x000046ec

0000894c <fast_irq_handler>:
    894c:	e24ee004 	sub	lr, lr, #4, 0
    8950:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
    8954:	ebffff8f 	bl	8798 <_ZN2os10interrupts18disable_interruptsEv>
    8958:	e59f000c 	ldr	r0, [pc, #12]	; 896c <fast_irq_handler+0x20>
    895c:	e08f0000 	add	r0, pc, r0
    8960:	ebfffedd 	bl	84dc <_ZN2os7console4putsEPKc>
    8964:	ebffff92 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    8968:	e8fd801f 	ldm	sp!, {r0, r1, r2, r3, r4, pc}^
    896c:	000027c8 	.word	0x000027c8

00008970 <_ZN2os6memory5bzeroEPvj>:
    8970:	e3510000 	cmp	r1, #0, 0
    8974:	012fff1e 	bxeq	lr
    8978:	e0801001 	add	r1, r0, r1
    897c:	e3a02000 	mov	r2, #0, 0
    8980:	e2400001 	sub	r0, r0, #1, 0
    8984:	e2413001 	sub	r3, r1, #1, 0
    8988:	e5e02001 	strb	r2, [r0, #1]!
    898c:	e1500003 	cmp	r0, r3
    8990:	1afffffc 	bne	8988 <_ZN2os6memory5bzeroEPvj+0x18>
    8994:	e12fff1e 	bx	lr

00008998 <_ZN2os6memory14get_kernel_endEv>:
    8998:	e59f300c 	ldr	r3, [pc, #12]	; 89ac <_ZN2os6memory14get_kernel_endEv+0x14>
    899c:	e59f200c 	ldr	r2, [pc, #12]	; 89b0 <_ZN2os6memory14get_kernel_endEv+0x18>
    89a0:	e08f3003 	add	r3, pc, r3
    89a4:	e7930002 	ldr	r0, [r3, r2]
    89a8:	e12fff1e 	bx	lr
    89ac:	0000366c 	.word	0x0000366c
    89b0:	00000028 	.word	0x00000028

000089b4 <_ZN2os6memory15get_memory_sizeEv>:
    89b4:	e3a00302 	mov	r0, #134217728	; 0x8000000
    89b8:	e12fff1e 	bx	lr

000089bc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj>:
    89bc:	e3510000 	cmp	r1, #0, 0
    89c0:	0a00000e 	beq	8a00 <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj+0x44>
    89c4:	e3a0c000 	mov	ip, #0, 0
    89c8:	e1a0000c 	mov	r0, ip
    89cc:	e5d1300c 	ldrb	r3, [r1, #12]
    89d0:	e3530000 	cmp	r3, #0, 0
    89d4:	1a000003 	bne	89e8 <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj+0x2c>
    89d8:	e5913008 	ldr	r3, [r1, #8]
    89dc:	e153000c 	cmp	r3, ip
    89e0:	81a0c003 	movhi	ip, r3
    89e4:	81a00001 	movhi	r0, r1
    89e8:	e5911000 	ldr	r1, [r1]
    89ec:	e3510000 	cmp	r1, #0, 0
    89f0:	1afffff5 	bne	89cc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj+0x10>
    89f4:	e152000c 	cmp	r2, ip
    89f8:	83a00000 	movhi	r0, #0, 0
    89fc:	e12fff1e 	bx	lr
    8a00:	e1a00001 	mov	r0, r1
    8a04:	e1a0c001 	mov	ip, r1
    8a08:	eafffff9 	b	89f4 <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj+0x38>

00008a0c <_ZN2os6memory11heap_policy9worst_fitclEPNS0_14heap_segment_tEj>:
    8a0c:	e3510000 	cmp	r1, #0, 0
    8a10:	0a000019 	beq	8a7c <_ZN2os6memory11heap_policy9worst_fitclEPNS0_14heap_segment_tEj+0x70>
    8a14:	e3e0c000 	mvn	ip, #0, 0
    8a18:	e3a00000 	mov	r0, #0, 0
    8a1c:	e5d1300c 	ldrb	r3, [r1, #12]
    8a20:	e3530000 	cmp	r3, #0, 0
    8a24:	1a000010 	bne	8a6c <_ZN2os6memory11heap_policy9worst_fitclEPNS0_14heap_segment_tEj+0x60>
    8a28:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8a2c:	e5913008 	ldr	r3, [r1, #8]
    8a30:	e1530002 	cmp	r3, r2
    8a34:	23a0e001 	movcs	lr, #1, 0
    8a38:	33a0e000 	movcc	lr, #0, 0
    8a3c:	e153000c 	cmp	r3, ip
    8a40:	23a0e000 	movcs	lr, #0, 0
    8a44:	e35e0000 	cmp	lr, #0, 0
    8a48:	11a0c003 	movne	ip, r3
    8a4c:	11a00001 	movne	r0, r1
    8a50:	e5911000 	ldr	r1, [r1]
    8a54:	e3510000 	cmp	r1, #0, 0
    8a58:	049df004 	popeq	{pc}		; (ldreq pc, [sp], #4)
    8a5c:	e5d1300c 	ldrb	r3, [r1, #12]
    8a60:	e3530000 	cmp	r3, #0, 0
    8a64:	1afffff9 	bne	8a50 <_ZN2os6memory11heap_policy9worst_fitclEPNS0_14heap_segment_tEj+0x44>
    8a68:	eaffffef 	b	8a2c <_ZN2os6memory11heap_policy9worst_fitclEPNS0_14heap_segment_tEj+0x20>
    8a6c:	e5911000 	ldr	r1, [r1]
    8a70:	e3510000 	cmp	r1, #0, 0
    8a74:	1affffe8 	bne	8a1c <_ZN2os6memory11heap_policy9worst_fitclEPNS0_14heap_segment_tEj+0x10>
    8a78:	e12fff1e 	bx	lr
    8a7c:	e1a00001 	mov	r0, r1
    8a80:	e12fff1e 	bx	lr

00008a84 <_ZN2os6memory11heap_policy9first_fitclEPNS0_14heap_segment_tEj>:
    8a84:	e3a00000 	mov	r0, #0, 0
    8a88:	e12fff1e 	bx	lr

00008a8c <_ZN2os4mmio5writeEmm>:
    8a8c:	e5801000 	str	r1, [r0]
    8a90:	e12fff1e 	bx	lr

00008a94 <_ZN2os4mmio4readEm>:
    8a94:	e5900000 	ldr	r0, [r0]
    8a98:	e12fff1e 	bx	lr

00008a9c <_ZN2os4sync8spinlockC1Ev>:
    8a9c:	e3a02000 	mov	r2, #0, 0
    8aa0:	e5802000 	str	r2, [r0]
    8aa4:	e12fff1e 	bx	lr

00008aa8 <_ZN2os4sync8spinlock4initEv>:
    8aa8:	e3a03000 	mov	r3, #0, 0
    8aac:	e5803000 	str	r3, [r0]
    8ab0:	e12fff1e 	bx	lr

00008ab4 <_ZN2os4sync8spinlock7acquireEv>:
    8ab4:	e3a02001 	mov	r2, #1, 0
    8ab8:	e1d03f9f 	ldrexb	r3, [r0]
    8abc:	e1c01f92 	strexb	r1, r2, [r0]
    8ac0:	e3510000 	cmp	r1, #0, 0
    8ac4:	1afffffb 	bne	8ab8 <_ZN2os4sync8spinlock7acquireEv+0x4>
    8ac8:	e31300ff 	tst	r3, #255, 0	; 0xff
    8acc:	f57ff05b 	dmb	ish
    8ad0:	1afffff8 	bne	8ab8 <_ZN2os4sync8spinlock7acquireEv+0x4>
    8ad4:	eaffff2f 	b	8798 <_ZN2os10interrupts18disable_interruptsEv>

00008ad8 <_ZN2os4sync8spinlock7releaseEv>:
    8ad8:	e3a03000 	mov	r3, #0, 0
    8adc:	e5803000 	str	r3, [r0]
    8ae0:	eaffff33 	b	87b4 <_ZN2os10interrupts17enable_interruptsEv>

00008ae4 <_ZN2os4sync10signallockC1Ev>:
    8ae4:	e3a02000 	mov	r2, #0, 0
    8ae8:	e5802000 	str	r2, [r0]
    8aec:	e12fff1e 	bx	lr

00008af0 <_ZN2os4sync10signallock6signalEv>:
    8af0:	e3a03001 	mov	r3, #1, 0
    8af4:	e5803000 	str	r3, [r0]
    8af8:	e12fff1e 	bx	lr

00008afc <_ZN2os4sync10signallock4waitEv>:
    8afc:	e5903000 	ldr	r3, [r0]
    8b00:	e3530000 	cmp	r3, #0, 0
    8b04:	0afffffc 	beq	8afc <_ZN2os4sync10signallock4waitEv>
    8b08:	e12fff1e 	bx	lr

00008b0c <_ZN2os11this_threadEv>:
    8b0c:	e92d4010 	push	{r4, lr}
    8b10:	ebffff15 	bl	876c <_ZN2os8this_cpuEv>
    8b14:	e5903004 	ldr	r3, [r0, #4]
    8b18:	e5930008 	ldr	r0, [r3, #8]
    8b1c:	e8bd8010 	pop	{r4, pc}

00008b20 <_ZN2os6thread8thread_t8is_emptyEv>:
    8b20:	e5900004 	ldr	r0, [r0, #4]
    8b24:	e16f0f10 	clz	r0, r0
    8b28:	e1a002a0 	lsr	r0, r0, #5
    8b2c:	e12fff1e 	bx	lr

00008b30 <_ZN2os6thread8thread_t10is_runningEv>:
    8b30:	e5900004 	ldr	r0, [r0, #4]
    8b34:	e2400002 	sub	r0, r0, #2, 0
    8b38:	e16f0f10 	clz	r0, r0
    8b3c:	e1a002a0 	lsr	r0, r0, #5
    8b40:	e12fff1e 	bx	lr

00008b44 <_ZN2os6thread8thread_t8is_readyEv>:
    8b44:	e5900004 	ldr	r0, [r0, #4]
    8b48:	e2400003 	sub	r0, r0, #3, 0
    8b4c:	e16f0f10 	clz	r0, r0
    8b50:	e1a002a0 	lsr	r0, r0, #5
    8b54:	e12fff1e 	bx	lr

00008b58 <_ZN2os6thread8thread_t11is_sleepingEv>:
    8b58:	e5900004 	ldr	r0, [r0, #4]
    8b5c:	e2400001 	sub	r0, r0, #1, 0
    8b60:	e16f0f10 	clz	r0, r0
    8b64:	e1a002a0 	lsr	r0, r0, #5
    8b68:	e12fff1e 	bx	lr

00008b6c <_ZN2os6thread8thread_t11is_finishedEv>:
    8b6c:	e5900004 	ldr	r0, [r0, #4]
    8b70:	e2400004 	sub	r0, r0, #4, 0
    8b74:	e16f0f10 	clz	r0, r0
    8b78:	e1a002a0 	lsr	r0, r0, #5
    8b7c:	e12fff1e 	bx	lr

00008b80 <_ZN2os6thread8thread_t5sleepEPNS0_15sleep_channel_tE>:
    8b80:	e92d4010 	push	{r4, lr}
    8b84:	e1a04001 	mov	r4, r1
    8b88:	ebfffef7 	bl	876c <_ZN2os8this_cpuEv>
    8b8c:	e5900004 	ldr	r0, [r0, #4]
    8b90:	e1a01004 	mov	r1, r4
    8b94:	e8bd4010 	pop	{r4, lr}
    8b98:	e5903000 	ldr	r3, [r0]
    8b9c:	e5933000 	ldr	r3, [r3]
    8ba0:	e12fff13 	bx	r3

00008ba4 <_ZN2os6thread8thread_t8wake_allEPNS0_15sleep_channel_tE>:
    8ba4:	e92d4010 	push	{r4, lr}
    8ba8:	e1a04001 	mov	r4, r1
    8bac:	ebfffeee 	bl	876c <_ZN2os8this_cpuEv>
    8bb0:	e5900004 	ldr	r0, [r0, #4]
    8bb4:	e1a01004 	mov	r1, r4
    8bb8:	e8bd4010 	pop	{r4, lr}
    8bbc:	e5903000 	ldr	r3, [r0]
    8bc0:	e593300c 	ldr	r3, [r3, #12]
    8bc4:	e12fff13 	bx	r3

00008bc8 <_ZN2os6thread8thread_t8wake_oneEPNS0_15sleep_channel_tE>:
    8bc8:	e92d4010 	push	{r4, lr}
    8bcc:	e1a04001 	mov	r4, r1
    8bd0:	ebfffee5 	bl	876c <_ZN2os8this_cpuEv>
    8bd4:	e5900004 	ldr	r0, [r0, #4]
    8bd8:	e1a01004 	mov	r1, r4
    8bdc:	e8bd4010 	pop	{r4, lr}
    8be0:	e5903000 	ldr	r3, [r0]
    8be4:	e5933008 	ldr	r3, [r3, #8]
    8be8:	e12fff13 	bx	r3

00008bec <_ZN2os6thread8thread_t4joinEv>:
    8bec:	e92d4010 	push	{r4, lr}
    8bf0:	e1a04000 	mov	r4, r0
    8bf4:	ebfffedc 	bl	876c <_ZN2os8this_cpuEv>
    8bf8:	e5900004 	ldr	r0, [r0, #4]
    8bfc:	e1a01004 	mov	r1, r4
    8c00:	e8bd4010 	pop	{r4, lr}
    8c04:	e5903000 	ldr	r3, [r0]
    8c08:	e5933004 	ldr	r3, [r3, #4]
    8c0c:	e12fff13 	bx	r3

00008c10 <_ZN2os6thread8thread_t13get_state_strEv>:
    8c10:	e5903004 	ldr	r3, [r0, #4]
    8c14:	e3530004 	cmp	r3, #4, 0
    8c18:	908ff103 	addls	pc, pc, r3, lsl #2
    8c1c:	ea000013 	b	8c70 <_ZN2os6thread8thread_t13get_state_strEv+0x60>
    8c20:	ea000006 	b	8c40 <_ZN2os6thread8thread_t13get_state_strEv+0x30>
    8c24:	ea00000e 	b	8c64 <_ZN2os6thread8thread_t13get_state_strEv+0x54>
    8c28:	ea000007 	b	8c4c <_ZN2os6thread8thread_t13get_state_strEv+0x3c>
    8c2c:	ea000000 	b	8c34 <_ZN2os6thread8thread_t13get_state_strEv+0x24>
    8c30:	ea000008 	b	8c58 <_ZN2os6thread8thread_t13get_state_strEv+0x48>
    8c34:	e59f0040 	ldr	r0, [pc, #64]	; 8c7c <_ZN2os6thread8thread_t13get_state_strEv+0x6c>
    8c38:	e08f0000 	add	r0, pc, r0
    8c3c:	e12fff1e 	bx	lr
    8c40:	e59f0038 	ldr	r0, [pc, #56]	; 8c80 <_ZN2os6thread8thread_t13get_state_strEv+0x70>
    8c44:	e08f0000 	add	r0, pc, r0
    8c48:	e12fff1e 	bx	lr
    8c4c:	e59f0030 	ldr	r0, [pc, #48]	; 8c84 <_ZN2os6thread8thread_t13get_state_strEv+0x74>
    8c50:	e08f0000 	add	r0, pc, r0
    8c54:	e12fff1e 	bx	lr
    8c58:	e59f0028 	ldr	r0, [pc, #40]	; 8c88 <_ZN2os6thread8thread_t13get_state_strEv+0x78>
    8c5c:	e08f0000 	add	r0, pc, r0
    8c60:	e12fff1e 	bx	lr
    8c64:	e59f0020 	ldr	r0, [pc, #32]	; 8c8c <_ZN2os6thread8thread_t13get_state_strEv+0x7c>
    8c68:	e08f0000 	add	r0, pc, r0
    8c6c:	e12fff1e 	bx	lr
    8c70:	e59f0018 	ldr	r0, [pc, #24]	; 8c90 <_ZN2os6thread8thread_t13get_state_strEv+0x80>
    8c74:	e08f0000 	add	r0, pc, r0
    8c78:	e12fff1e 	bx	lr
    8c7c:	00002528 	.word	0x00002528
    8c80:	000024f4 	.word	0x000024f4
    8c84:	000024f0 	.word	0x000024f0
    8c88:	000024f8 	.word	0x000024f8
    8c8c:	000024e0 	.word	0x000024e0
    8c90:	000024ac 	.word	0x000024ac

00008c94 <thread_exit>:
    8c94:	e92d4010 	push	{r4, lr}
    8c98:	ebfffeb3 	bl	876c <_ZN2os8this_cpuEv>
    8c9c:	e5900004 	ldr	r0, [r0, #4]
    8ca0:	e8bd4010 	pop	{r4, lr}
    8ca4:	e2800004 	add	r0, r0, #4, 0
    8ca8:	ea0000f7 	b	908c <context_load>

00008cac <_ZN2os17arm_generic_timer3setEm>:
    8cac:	e59f3024 	ldr	r3, [pc, #36]	; 8cd8 <_ZN2os17arm_generic_timer3setEm+0x2c>
    8cb0:	e3042dd3 	movw	r2, #19923	; 0x4dd3
    8cb4:	e3412062 	movt	r2, #4194	; 0x1062
    8cb8:	e08f3003 	add	r3, pc, r3
    8cbc:	e5933000 	ldr	r3, [r3]
    8cc0:	e0c21392 	smull	r1, r2, r2, r3
    8cc4:	e1a03fc3 	asr	r3, r3, #31
    8cc8:	e0633342 	rsb	r3, r3, r2, asr #6
    8ccc:	e0030390 	mul	r3, r0, r3
    8cd0:	ee0e3f13 	mcr	15, 0, r3, cr14, cr3, {0}
    8cd4:	e12fff1e 	bx	lr
    8cd8:	00004368 	.word	0x00004368

00008cdc <_ZN2os5timer3setEm>:
    8cdc:	eafffff2 	b	8cac <_ZN2os17arm_generic_timer3setEm>

00008ce0 <_ZN2os17arm_generic_timer4initEPFvmEm>:
    8ce0:	e92d4070 	push	{r4, r5, r6, lr}
    8ce4:	e1a06000 	mov	r6, r0
    8ce8:	e1a05001 	mov	r5, r1
    8cec:	ee1e2f10 	mrc	15, 0, r2, cr14, cr0, {0}
    8cf0:	e59f3044 	ldr	r3, [pc, #68]	; 8d3c <_ZN2os17arm_generic_timer4initEPFvmEm+0x5c>
    8cf4:	e08f3003 	add	r3, pc, r3
    8cf8:	e5832000 	str	r2, [r3]
    8cfc:	ebfffe99 	bl	8768 <_ZN2os10get_cpu_idEv>
    8d00:	e1a04000 	mov	r4, r0
    8d04:	e1a00006 	mov	r0, r6
    8d08:	e1a01004 	mov	r1, r4
    8d0c:	ebfffec8 	bl	8834 <_ZN2os10interrupts22register_timer_handlerEPFvmEi>
    8d10:	e1a00005 	mov	r0, r5
    8d14:	ebffffe4 	bl	8cac <_ZN2os17arm_generic_timer3setEm>
    8d18:	e1a00104 	lsl	r0, r4, #2
    8d1c:	e3a01008 	mov	r1, #8, 0
    8d20:	e2800101 	add	r0, r0, #1073741824	; 0x40000000
    8d24:	e2800040 	add	r0, r0, #64, 0	; 0x40
    8d28:	ebffff57 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8d2c:	e3a03001 	mov	r3, #1, 0
    8d30:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
    8d34:	e8bd4070 	pop	{r4, r5, r6, lr}
    8d38:	eafffe9d 	b	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    8d3c:	0000432c 	.word	0x0000432c

00008d40 <_ZN2os5timer4initEPFvmEm>:
    8d40:	eaffffe6 	b	8ce0 <_ZN2os17arm_generic_timer4initEPFvmEm>

00008d44 <_ZN2os17arm_generic_timer7disableEv>:
    8d44:	e92d4010 	push	{r4, lr}
    8d48:	ebfffe86 	bl	8768 <_ZN2os10get_cpu_idEv>
    8d4c:	e3a01000 	mov	r1, #0, 0
    8d50:	ee0e1f33 	mcr	15, 0, r1, cr14, cr3, {1}
    8d54:	e1a00100 	lsl	r0, r0, #2
    8d58:	e2800101 	add	r0, r0, #1073741824	; 0x40000000
    8d5c:	e8bd4010 	pop	{r4, lr}
    8d60:	e2800060 	add	r0, r0, #96, 0	; 0x60
    8d64:	eaffff48 	b	8a8c <_ZN2os4mmio5writeEmm>

00008d68 <_ZN2os5timer7disableEv>:
    8d68:	eafffff5 	b	8d44 <_ZN2os17arm_generic_timer7disableEv>

00008d6c <_ZN2os4uart4putcEc>:
    8d6c:	e59f3054 	ldr	r3, [pc, #84]	; 8dc8 <_ZN2os4uart4putcEc+0x5c>
    8d70:	e350007e 	cmp	r0, #126, 0	; 0x7e
    8d74:	e08f3003 	add	r3, pc, r3
    8d78:	812fff1e 	bxhi	lr
    8d7c:	e59f2048 	ldr	r2, [pc, #72]	; 8dcc <_ZN2os4uart4putcEc+0x60>
    8d80:	e92d4070 	push	{r4, r5, r6, lr}
    8d84:	e1a04000 	mov	r4, r0
    8d88:	e7936002 	ldr	r6, [r3, r2]
    8d8c:	e3015018 	movw	r5, #4120	; 0x1018
    8d90:	e3435f20 	movt	r5, #16160	; 0x3f20
    8d94:	e1a00006 	mov	r0, r6
    8d98:	ebffff45 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    8d9c:	e1a00005 	mov	r0, r5
    8da0:	ebffff3b 	bl	8a94 <_ZN2os4mmio4readEm>
    8da4:	e3100020 	tst	r0, #32, 0
    8da8:	1afffffb 	bne	8d9c <_ZN2os4uart4putcEc+0x30>
    8dac:	e3a00a01 	mov	r0, #4096	; 0x1000
    8db0:	e1a01004 	mov	r1, r4
    8db4:	e3430f20 	movt	r0, #16160	; 0x3f20
    8db8:	ebffff33 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8dbc:	e1a00006 	mov	r0, r6
    8dc0:	e8bd4070 	pop	{r4, r5, r6, lr}
    8dc4:	eaffff43 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    8dc8:	00003298 	.word	0x00003298
    8dcc:	00000020 	.word	0x00000020

00008dd0 <_ZN2os4uart4getcEv>:
    8dd0:	e59f303c 	ldr	r3, [pc, #60]	; 8e14 <_ZN2os4uart4getcEv+0x44>
    8dd4:	e59f203c 	ldr	r2, [pc, #60]	; 8e18 <_ZN2os4uart4getcEv+0x48>
    8dd8:	e08f3003 	add	r3, pc, r3
    8ddc:	e92d4010 	push	{r4, lr}
    8de0:	e3014018 	movw	r4, #4120	; 0x1018
    8de4:	e7930002 	ldr	r0, [r3, r2]
    8de8:	e3434f20 	movt	r4, #16160	; 0x3f20
    8dec:	ebffff30 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    8df0:	e1a00004 	mov	r0, r4
    8df4:	ebffff26 	bl	8a94 <_ZN2os4mmio4readEm>
    8df8:	e3100010 	tst	r0, #16, 0
    8dfc:	1afffffb 	bne	8df0 <_ZN2os4uart4getcEv+0x20>
    8e00:	e3a00a01 	mov	r0, #4096	; 0x1000
    8e04:	e3430f20 	movt	r0, #16160	; 0x3f20
    8e08:	ebffff21 	bl	8a94 <_ZN2os4mmio4readEm>
    8e0c:	e6ef0070 	uxtb	r0, r0
    8e10:	e8bd8010 	pop	{r4, pc}
    8e14:	00003234 	.word	0x00003234
    8e18:	00000020 	.word	0x00000020

00008e1c <putc>:
    8e1c:	eaffffd2 	b	8d6c <_ZN2os4uart4putcEc>

00008e20 <_ZN2os5delayEl>:
    8e20:	e2500001 	subs	r0, r0, #1, 0
    8e24:	1afffffd 	bne	8e20 <_ZN2os5delayEl>
    8e28:	e12fff1e 	bx	lr

00008e2c <_ZN2os4uart4initEv>:
    8e2c:	e59f30c4 	ldr	r3, [pc, #196]	; 8ef8 <_ZN2os4uart4initEv+0xcc>
    8e30:	e59f20c4 	ldr	r2, [pc, #196]	; 8efc <_ZN2os4uart4initEv+0xd0>
    8e34:	e08f3003 	add	r3, pc, r3
    8e38:	e92d4070 	push	{r4, r5, r6, lr}
    8e3c:	e3014030 	movw	r4, #4144	; 0x1030
    8e40:	e7930002 	ldr	r0, [r3, r2]
    8e44:	e3a05098 	mov	r5, #152, 0	; 0x98
    8e48:	e3434f20 	movt	r4, #16160	; 0x3f20
    8e4c:	ebffff15 	bl	8aa8 <_ZN2os4sync8spinlock4initEv>
    8e50:	e3435f20 	movt	r5, #16160	; 0x3f20
    8e54:	e1a00004 	mov	r0, r4
    8e58:	e3a01000 	mov	r1, #0, 0
    8e5c:	ebffff0a 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8e60:	e3a00094 	mov	r0, #148, 0	; 0x94
    8e64:	e3a01000 	mov	r1, #0, 0
    8e68:	e3430f20 	movt	r0, #16160	; 0x3f20
    8e6c:	ebffff06 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8e70:	e3a00096 	mov	r0, #150, 0	; 0x96
    8e74:	ebffffe9 	bl	8e20 <_ZN2os5delayEl>
    8e78:	e1a00005 	mov	r0, r5
    8e7c:	e3a01903 	mov	r1, #49152	; 0xc000
    8e80:	ebffff01 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8e84:	e3a00096 	mov	r0, #150, 0	; 0x96
    8e88:	ebffffe4 	bl	8e20 <_ZN2os5delayEl>
    8e8c:	e1a00005 	mov	r0, r5
    8e90:	e3a01000 	mov	r1, #0, 0
    8e94:	ebfffefc 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8e98:	e3010044 	movw	r0, #4164	; 0x1044
    8e9c:	e30017ff 	movw	r1, #2047	; 0x7ff
    8ea0:	e3430f20 	movt	r0, #16160	; 0x3f20
    8ea4:	ebfffef8 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8ea8:	e3010024 	movw	r0, #4132	; 0x1024
    8eac:	e3a01001 	mov	r1, #1, 0
    8eb0:	e3430f20 	movt	r0, #16160	; 0x3f20
    8eb4:	ebfffef4 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8eb8:	e3010028 	movw	r0, #4136	; 0x1028
    8ebc:	e3a01028 	mov	r1, #40, 0	; 0x28
    8ec0:	e3430f20 	movt	r0, #16160	; 0x3f20
    8ec4:	ebfffef0 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8ec8:	e301002c 	movw	r0, #4140	; 0x102c
    8ecc:	e3a01070 	mov	r1, #112, 0	; 0x70
    8ed0:	e3430f20 	movt	r0, #16160	; 0x3f20
    8ed4:	ebfffeec 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8ed8:	e3010038 	movw	r0, #4152	; 0x1038
    8edc:	e30017f2 	movw	r1, #2034	; 0x7f2
    8ee0:	e3430f20 	movt	r0, #16160	; 0x3f20
    8ee4:	ebfffee8 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8ee8:	e1a00004 	mov	r0, r4
    8eec:	e3001301 	movw	r1, #769	; 0x301
    8ef0:	e8bd4070 	pop	{r4, r5, r6, lr}
    8ef4:	eafffee4 	b	8a8c <_ZN2os4mmio5writeEmm>
    8ef8:	000031d8 	.word	0x000031d8
    8efc:	00000020 	.word	0x00000020

00008f00 <_ZN2os6kernel4initEiii>:
    8f00:	e92d4010 	push	{r4, lr}
    8f04:	ebffffc8 	bl	8e2c <_ZN2os4uart4initEv>
    8f08:	e8bd4010 	pop	{r4, lr}
    8f0c:	eafffd45 	b	8428 <_ZN2os7console11iolock_initEv>

00008f10 <_ZN2os6kernel9wait_initEv>:
    8f10:	e59f3020 	ldr	r3, [pc, #32]	; 8f38 <_ZN2os6kernel9wait_initEv+0x28>
    8f14:	e59f2020 	ldr	r2, [pc, #32]	; 8f3c <_ZN2os6kernel9wait_initEv+0x2c>
    8f18:	e08f3003 	add	r3, pc, r3
    8f1c:	e92d4010 	push	{r4, lr}
    8f20:	e7934002 	ldr	r4, [r3, r2]
    8f24:	e1a00004 	mov	r0, r4
    8f28:	ebfffee1 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    8f2c:	e1a00004 	mov	r0, r4
    8f30:	e8bd4010 	pop	{r4, lr}
    8f34:	eafffee7 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    8f38:	000030f4 	.word	0x000030f4
    8f3c:	0000000c 	.word	0x0000000c

00008f40 <_ZN2os6kernel7destroyEv>:
    8f40:	e12fff1e 	bx	lr

00008f44 <__cxa_pure_virtual>:
    8f44:	e12fff1e 	bx	lr

00008f48 <__cxa_atexit>:
    8f48:	e92d4070 	push	{r4, r5, r6, lr}
    8f4c:	e59f404c 	ldr	r4, [pc, #76]	; 8fa0 <__cxa_atexit+0x58>
    8f50:	e59f304c 	ldr	r3, [pc, #76]	; 8fa4 <__cxa_atexit+0x5c>
    8f54:	e08f4004 	add	r4, pc, r4
    8f58:	e7946003 	ldr	r6, [r4, r3]
    8f5c:	e5963000 	ldr	r3, [r6]
    8f60:	e353007f 	cmp	r3, #127, 0	; 0x7f
    8f64:	8a00000b 	bhi	8f98 <__cxa_atexit+0x50>
    8f68:	e59fe038 	ldr	lr, [pc, #56]	; 8fa8 <__cxa_atexit+0x60>
    8f6c:	e3a0c00c 	mov	ip, #12, 0
    8f70:	e00c039c 	mul	ip, ip, r3
    8f74:	e794e00e 	ldr	lr, [r4, lr]
    8f78:	e2833001 	add	r3, r3, #1, 0
    8f7c:	e5863000 	str	r3, [r6]
    8f80:	e1a05000 	mov	r5, r0
    8f84:	e08e300c 	add	r3, lr, ip
    8f88:	e3a00000 	mov	r0, #0, 0
    8f8c:	e78e500c 	str	r5, [lr, ip]
    8f90:	e9830006 	stmib	r3, {r1, r2}
    8f94:	e8bd8070 	pop	{r4, r5, r6, pc}
    8f98:	e3e00000 	mvn	r0, #0, 0
    8f9c:	e8bd8070 	pop	{r4, r5, r6, pc}
    8fa0:	000030b8 	.word	0x000030b8
    8fa4:	00000014 	.word	0x00000014
    8fa8:	0000003c 	.word	0x0000003c

00008fac <__cxa_finalize>:
    8fac:	e59f209c 	ldr	r2, [pc, #156]	; 9050 <__cxa_finalize+0xa4>
    8fb0:	e59f309c 	ldr	r3, [pc, #156]	; 9054 <__cxa_finalize+0xa8>
    8fb4:	e08f2002 	add	r2, pc, r2
    8fb8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8fbc:	e2505000 	subs	r5, r0, #0, 0
    8fc0:	e7923003 	ldr	r3, [r2, r3]
    8fc4:	e5934000 	ldr	r4, [r3]
    8fc8:	0a000011 	beq	9014 <__cxa_finalize+0x68>
    8fcc:	e3540000 	cmp	r4, #0, 0
    8fd0:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    8fd4:	e59f307c 	ldr	r3, [pc, #124]	; 9058 <__cxa_finalize+0xac>
    8fd8:	e3a0100c 	mov	r1, #12, 0
    8fdc:	e3a07000 	mov	r7, #0, 0
    8fe0:	e7926003 	ldr	r6, [r2, r3]
    8fe4:	e0246491 	mla	r4, r1, r4, r6
    8fe8:	ea000002 	b	8ff8 <__cxa_finalize+0x4c>
    8fec:	e244400c 	sub	r4, r4, #12, 0
    8ff0:	e1540006 	cmp	r4, r6
    8ff4:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    8ff8:	e514300c 	ldr	r3, [r4, #-12]
    8ffc:	e1530005 	cmp	r3, r5
    9000:	1afffff9 	bne	8fec <__cxa_finalize+0x40>
    9004:	e5140008 	ldr	r0, [r4, #-8]
    9008:	e12fff35 	blx	r5
    900c:	e504700c 	str	r7, [r4, #-12]
    9010:	eafffff5 	b	8fec <__cxa_finalize+0x40>
    9014:	e3540000 	cmp	r4, #0, 0
    9018:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    901c:	e59f3034 	ldr	r3, [pc, #52]	; 9058 <__cxa_finalize+0xac>
    9020:	e3a0100c 	mov	r1, #12, 0
    9024:	e7925003 	ldr	r5, [r2, r3]
    9028:	e0245491 	mla	r4, r1, r4, r5
    902c:	e514300c 	ldr	r3, [r4, #-12]
    9030:	e3530000 	cmp	r3, #0, 0
    9034:	0a000001 	beq	9040 <__cxa_finalize+0x94>
    9038:	e5140008 	ldr	r0, [r4, #-8]
    903c:	e12fff33 	blx	r3
    9040:	e244400c 	sub	r4, r4, #12, 0
    9044:	e1540005 	cmp	r4, r5
    9048:	1afffff7 	bne	902c <__cxa_finalize+0x80>
    904c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    9050:	00003058 	.word	0x00003058
    9054:	00000014 	.word	0x00000014
    9058:	0000003c 	.word	0x0000003c

0000905c <context_switch>:
    905c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    9060:	e10fc000 	mrs	ip, CPSR
    9064:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    9068:	e580d000 	str	sp, [r0]
    906c:	e591d000 	ldr	sp, [r1]
    9070:	e28d0038 	add	r0, sp, #56, 0	; 0x38
    9074:	e5810000 	str	r0, [r1]
    9078:	e8bd1fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    907c:	e121f00c 	msr	CPSR_c, ip
    9080:	e59fe024 	ldr	lr, [pc, #36]	; 90ac <get_sp+0x8>
    9084:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
    9088:	e12fff1e 	bx	lr

0000908c <context_load>:
    908c:	e590d000 	ldr	sp, [r0]
    9090:	e8bd1fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    9094:	e121f00c 	msr	CPSR_c, ip
    9098:	e580d000 	str	sp, [r0]
    909c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
    90a0:	e12fff1e 	bx	lr

000090a4 <get_sp>:
    90a4:	e1a0000d 	mov	r0, sp
    90a8:	e12fff1e 	bx	lr
    90ac:	00008c94 	.word	0x00008c94

000090b0 <__get_cpu_id>:
    90b0:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
    90b4:	e2000003 	and	r0, r0, #3, 0
    90b8:	e12fff1e 	bx	lr

000090bc <exception_vector>:
    90bc:	e59ff018 	ldr	pc, [pc, #24]	; 90dc <reset_handler_addr>
    90c0:	e59ff018 	ldr	pc, [pc, #24]	; 90e0 <undefined_instruction_handler_addr>
    90c4:	e59ff018 	ldr	pc, [pc, #24]	; 90e4 <software_interrupt_handler_addr>
    90c8:	e59ff018 	ldr	pc, [pc, #24]	; 90e8 <prefetch_abort_handler_addr>
    90cc:	e59ff018 	ldr	pc, [pc, #24]	; 90ec <data_abort_handler_addr>
    90d0:	e59ff018 	ldr	pc, [pc, #24]	; 90f0 <unused_handler_addr>
    90d4:	e59ff018 	ldr	pc, [pc, #24]	; 90f4 <irq_handler_addr>
    90d8:	e59ff018 	ldr	pc, [pc, #24]	; 90f8 <fast_irq_handler_addr>

000090dc <reset_handler_addr>:
    90dc:	00008868 	.word	0x00008868

000090e0 <undefined_instruction_handler_addr>:
    90e0:	000088c0 	.word	0x000088c0

000090e4 <software_interrupt_handler_addr>:
    90e4:	000088d0 	.word	0x000088d0

000090e8 <prefetch_abort_handler_addr>:
    90e8:	00008888 	.word	0x00008888

000090ec <data_abort_handler_addr>:
    90ec:	000088a4 	.word	0x000088a4

000090f0 <unused_handler_addr>:
    90f0:	00008868 	.word	0x00008868

000090f4 <irq_handler_addr>:
    90f4:	00009120 	.word	0x00009120

000090f8 <fast_irq_handler_addr>:
    90f8:	00009120 	.word	0x00009120

000090fc <move_exception_vector>:
    90fc:	e92d03f0 	push	{r4, r5, r6, r7, r8, r9}
    9100:	e59f0048 	ldr	r0, [pc, #72]	; 9150 <irq_handler_asm_wrapper+0x30>
    9104:	e3a01000 	mov	r1, #0, 0
    9108:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    910c:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    9110:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    9114:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    9118:	e8bd03f0 	pop	{r4, r5, r6, r7, r8, r9}
    911c:	e12fff3e 	blx	lr

00009120 <irq_handler_asm_wrapper>:
    9120:	e24ee004 	sub	lr, lr, #4, 0
    9124:	f96d0513 	srsdb	sp!, #19
    9128:	f10e00d3 	cpsid	if,#19
    912c:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
    9130:	e20d1004 	and	r1, sp, #4, 0
    9134:	e04dd001 	sub	sp, sp, r1
    9138:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    913c:	ebfffde9 	bl	88e8 <irq_handler>
    9140:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    9144:	e08dd001 	add	sp, sp, r1
    9148:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
    914c:	f8bd0a00 	rfeia	sp!
    9150:	000090bc 	.word	0x000090bc

00009154 <_ZStlsRSt7ostreamm>:
    9154:	e92d4010 	push	{r4, lr}
    9158:	e1a04000 	mov	r4, r0
    915c:	e1a00001 	mov	r0, r1
    9160:	ebfffd30 	bl	8628 <_ZN2os7console6putu32Em>
    9164:	e1a00004 	mov	r0, r4
    9168:	e8bd8010 	pop	{r4, pc}

0000916c <_ZStlsRSt7ostreaml>:
    916c:	e92d4010 	push	{r4, lr}
    9170:	e1a04000 	mov	r4, r0
    9174:	e1a00001 	mov	r0, r1
    9178:	ebfffd3f 	bl	867c <_ZN2os7console6puti32El>
    917c:	e1a00004 	mov	r0, r4
    9180:	e8bd8010 	pop	{r4, pc}

00009184 <_ZStlsRSt7ostreamt>:
    9184:	e92d4010 	push	{r4, lr}
    9188:	e1a04000 	mov	r4, r0
    918c:	e1a00001 	mov	r0, r1
    9190:	ebfffd24 	bl	8628 <_ZN2os7console6putu32Em>
    9194:	e1a00004 	mov	r0, r4
    9198:	e8bd8010 	pop	{r4, pc}

0000919c <_ZStlsRSt7ostreams>:
    919c:	e92d4010 	push	{r4, lr}
    91a0:	e1a04000 	mov	r4, r0
    91a4:	e1a00001 	mov	r0, r1
    91a8:	ebfffd33 	bl	867c <_ZN2os7console6puti32El>
    91ac:	e1a00004 	mov	r0, r4
    91b0:	e8bd8010 	pop	{r4, pc}

000091b4 <_ZStlsRSt7ostreamc>:
    91b4:	e92d4010 	push	{r4, lr}
    91b8:	e1a04000 	mov	r4, r0
    91bc:	e1a00001 	mov	r0, r1
    91c0:	ebfffcb1 	bl	848c <_ZN2os7console4putcEc>
    91c4:	e1a00004 	mov	r0, r4
    91c8:	e8bd8010 	pop	{r4, pc}

000091cc <_ZStlsRSt7ostreamPKc>:
    91cc:	e92d4010 	push	{r4, lr}
    91d0:	e1a04000 	mov	r4, r0
    91d4:	e1a00001 	mov	r0, r1
    91d8:	ebfffcbf 	bl	84dc <_ZN2os7console4putsEPKc>
    91dc:	e1a00004 	mov	r0, r4
    91e0:	e8bd8010 	pop	{r4, pc}

000091e4 <_ZStlsRSt7ostreamPFS0_S0_E>:
    91e4:	e12fff11 	bx	r1

000091e8 <_ZSt4endlRSt7ostream>:
    91e8:	e92d4010 	push	{r4, lr}
    91ec:	e1a04000 	mov	r4, r0
    91f0:	e3a0000a 	mov	r0, #10, 0
    91f4:	ebfffca4 	bl	848c <_ZN2os7console4putcEc>
    91f8:	e1a00004 	mov	r0, r4
    91fc:	e8bd8010 	pop	{r4, pc}

00009200 <_Z13second_threadv>:
    9200:	e59f30bc 	ldr	r3, [pc, #188]	; 92c4 <_Z13second_threadv+0xc4>
    9204:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9208:	e3a0a000 	mov	sl, #0, 0
    920c:	e08f3003 	add	r3, pc, r3
    9210:	e30896a0 	movw	r9, #34464	; 0x86a0
    9214:	e59f00ac 	ldr	r0, [pc, #172]	; 92c8 <_Z13second_threadv+0xc8>
    9218:	e24dd00c 	sub	sp, sp, #12, 0
    921c:	e59f10a8 	ldr	r1, [pc, #168]	; 92cc <_Z13second_threadv+0xcc>
    9220:	e1a0800a 	mov	r8, sl
    9224:	e59f20a4 	ldr	r2, [pc, #164]	; 92d0 <_Z13second_threadv+0xd0>
    9228:	e59f50a4 	ldr	r5, [pc, #164]	; 92d4 <_Z13second_threadv+0xd4>
    922c:	e7934000 	ldr	r4, [r3, r0]
    9230:	e7937001 	ldr	r7, [r3, r1]
    9234:	e7936002 	ldr	r6, [r3, r2]
    9238:	e3409001 	movt	r9, #1
    923c:	e08f5005 	add	r5, pc, r5
    9240:	e58d8004 	str	r8, [sp, #4]
    9244:	e59d3004 	ldr	r3, [sp, #4]
    9248:	e1530009 	cmp	r3, r9
    924c:	2a000005 	bcs	9268 <_Z13second_threadv+0x68>
    9250:	e59d3004 	ldr	r3, [sp, #4]
    9254:	e2833001 	add	r3, r3, #1, 0
    9258:	e58d3004 	str	r3, [sp, #4]
    925c:	e59d3004 	ldr	r3, [sp, #4]
    9260:	e1530009 	cmp	r3, r9
    9264:	3afffff9 	bcc	9250 <_Z13second_threadv+0x50>
    9268:	e1a00004 	mov	r0, r4
    926c:	ebfffe10 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9270:	e1a01005 	mov	r1, r5
    9274:	e1a00007 	mov	r0, r7
    9278:	ebffffd3 	bl	91cc <_ZStlsRSt7ostreamPKc>
    927c:	e1a0100a 	mov	r1, sl
    9280:	e28aa001 	add	sl, sl, #1, 0
    9284:	ebffffb2 	bl	9154 <_ZStlsRSt7ostreamm>
    9288:	e3a01020 	mov	r1, #32, 0
    928c:	ebffffc8 	bl	91b4 <_ZStlsRSt7ostreamc>
    9290:	e1a0b000 	mov	fp, r0
    9294:	ebffff82 	bl	90a4 <get_sp>
    9298:	e1a01000 	mov	r1, r0
    929c:	e1a0000b 	mov	r0, fp
    92a0:	ebffffab 	bl	9154 <_ZStlsRSt7ostreamm>
    92a4:	e1a01006 	mov	r1, r6
    92a8:	ebffffcd 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    92ac:	e1a00004 	mov	r0, r4
    92b0:	ebfffe08 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    92b4:	e35a0015 	cmp	sl, #21, 0
    92b8:	1affffe0 	bne	9240 <_Z13second_threadv+0x40>
    92bc:	e28dd00c 	add	sp, sp, #12, 0
    92c0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    92c4:	00002e00 	.word	0x00002e00
    92c8:	00000010 	.word	0x00000010
    92cc:	00000054 	.word	0x00000054
    92d0:	00000000 	.word	0x00000000
    92d4:	00001f2c 	.word	0x00001f2c

000092d8 <_Z12third_threadv>:
    92d8:	e59f30bc 	ldr	r3, [pc, #188]	; 939c <_Z12third_threadv+0xc4>
    92dc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    92e0:	e3a0a000 	mov	sl, #0, 0
    92e4:	e08f3003 	add	r3, pc, r3
    92e8:	e30896a0 	movw	r9, #34464	; 0x86a0
    92ec:	e59f00ac 	ldr	r0, [pc, #172]	; 93a0 <_Z12third_threadv+0xc8>
    92f0:	e24dd00c 	sub	sp, sp, #12, 0
    92f4:	e59f10a8 	ldr	r1, [pc, #168]	; 93a4 <_Z12third_threadv+0xcc>
    92f8:	e1a0800a 	mov	r8, sl
    92fc:	e59f20a4 	ldr	r2, [pc, #164]	; 93a8 <_Z12third_threadv+0xd0>
    9300:	e59f50a4 	ldr	r5, [pc, #164]	; 93ac <_Z12third_threadv+0xd4>
    9304:	e7934000 	ldr	r4, [r3, r0]
    9308:	e7937001 	ldr	r7, [r3, r1]
    930c:	e7936002 	ldr	r6, [r3, r2]
    9310:	e3409001 	movt	r9, #1
    9314:	e08f5005 	add	r5, pc, r5
    9318:	e58d8004 	str	r8, [sp, #4]
    931c:	e59d3004 	ldr	r3, [sp, #4]
    9320:	e1530009 	cmp	r3, r9
    9324:	2a000005 	bcs	9340 <_Z12third_threadv+0x68>
    9328:	e59d3004 	ldr	r3, [sp, #4]
    932c:	e2833001 	add	r3, r3, #1, 0
    9330:	e58d3004 	str	r3, [sp, #4]
    9334:	e59d3004 	ldr	r3, [sp, #4]
    9338:	e1530009 	cmp	r3, r9
    933c:	3afffff9 	bcc	9328 <_Z12third_threadv+0x50>
    9340:	e1a00004 	mov	r0, r4
    9344:	ebfffdda 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9348:	e1a01005 	mov	r1, r5
    934c:	e1a00007 	mov	r0, r7
    9350:	ebffff9d 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9354:	e1a0100a 	mov	r1, sl
    9358:	e28aa001 	add	sl, sl, #1, 0
    935c:	ebffff7c 	bl	9154 <_ZStlsRSt7ostreamm>
    9360:	e3a01020 	mov	r1, #32, 0
    9364:	ebffff92 	bl	91b4 <_ZStlsRSt7ostreamc>
    9368:	e1a0b000 	mov	fp, r0
    936c:	ebffff4c 	bl	90a4 <get_sp>
    9370:	e1a01000 	mov	r1, r0
    9374:	e1a0000b 	mov	r0, fp
    9378:	ebffff75 	bl	9154 <_ZStlsRSt7ostreamm>
    937c:	e1a01006 	mov	r1, r6
    9380:	ebffff97 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    9384:	e1a00004 	mov	r0, r4
    9388:	ebfffdd2 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    938c:	e35a0015 	cmp	sl, #21, 0
    9390:	1affffe0 	bne	9318 <_Z12third_threadv+0x40>
    9394:	e28dd00c 	add	sp, sp, #12, 0
    9398:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    939c:	00002d28 	.word	0x00002d28
    93a0:	00000010 	.word	0x00000010
    93a4:	00000054 	.word	0x00000054
    93a8:	00000000 	.word	0x00000000
    93ac:	00001e64 	.word	0x00001e64

000093b0 <_Z13fourth_threadv>:
    93b0:	e59f30bc 	ldr	r3, [pc, #188]	; 9474 <_Z13fourth_threadv+0xc4>
    93b4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    93b8:	e3a0a000 	mov	sl, #0, 0
    93bc:	e08f3003 	add	r3, pc, r3
    93c0:	e30896a0 	movw	r9, #34464	; 0x86a0
    93c4:	e59f00ac 	ldr	r0, [pc, #172]	; 9478 <_Z13fourth_threadv+0xc8>
    93c8:	e24dd00c 	sub	sp, sp, #12, 0
    93cc:	e59f10a8 	ldr	r1, [pc, #168]	; 947c <_Z13fourth_threadv+0xcc>
    93d0:	e1a0800a 	mov	r8, sl
    93d4:	e59f20a4 	ldr	r2, [pc, #164]	; 9480 <_Z13fourth_threadv+0xd0>
    93d8:	e59f50a4 	ldr	r5, [pc, #164]	; 9484 <_Z13fourth_threadv+0xd4>
    93dc:	e7934000 	ldr	r4, [r3, r0]
    93e0:	e7937001 	ldr	r7, [r3, r1]
    93e4:	e7936002 	ldr	r6, [r3, r2]
    93e8:	e3409001 	movt	r9, #1
    93ec:	e08f5005 	add	r5, pc, r5
    93f0:	e58d8004 	str	r8, [sp, #4]
    93f4:	e59d3004 	ldr	r3, [sp, #4]
    93f8:	e1530009 	cmp	r3, r9
    93fc:	2a000005 	bcs	9418 <_Z13fourth_threadv+0x68>
    9400:	e59d3004 	ldr	r3, [sp, #4]
    9404:	e2833001 	add	r3, r3, #1, 0
    9408:	e58d3004 	str	r3, [sp, #4]
    940c:	e59d3004 	ldr	r3, [sp, #4]
    9410:	e1530009 	cmp	r3, r9
    9414:	3afffff9 	bcc	9400 <_Z13fourth_threadv+0x50>
    9418:	e1a00004 	mov	r0, r4
    941c:	ebfffda4 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9420:	e1a01005 	mov	r1, r5
    9424:	e1a00007 	mov	r0, r7
    9428:	ebffff67 	bl	91cc <_ZStlsRSt7ostreamPKc>
    942c:	e1a0100a 	mov	r1, sl
    9430:	e28aa001 	add	sl, sl, #1, 0
    9434:	ebffff46 	bl	9154 <_ZStlsRSt7ostreamm>
    9438:	e3a01020 	mov	r1, #32, 0
    943c:	ebffff5c 	bl	91b4 <_ZStlsRSt7ostreamc>
    9440:	e1a0b000 	mov	fp, r0
    9444:	ebffff16 	bl	90a4 <get_sp>
    9448:	e1a01000 	mov	r1, r0
    944c:	e1a0000b 	mov	r0, fp
    9450:	ebffff3f 	bl	9154 <_ZStlsRSt7ostreamm>
    9454:	e1a01006 	mov	r1, r6
    9458:	ebffff61 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    945c:	e1a00004 	mov	r0, r4
    9460:	ebfffd9c 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9464:	e35a0015 	cmp	sl, #21, 0
    9468:	1affffe0 	bne	93f0 <_Z13fourth_threadv+0x40>
    946c:	e28dd00c 	add	sp, sp, #12, 0
    9470:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9474:	00002c50 	.word	0x00002c50
    9478:	00000010 	.word	0x00000010
    947c:	00000054 	.word	0x00000054
    9480:	00000000 	.word	0x00000000
    9484:	00001d9c 	.word	0x00001d9c

00009488 <_Z11main_threadv>:
    9488:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    948c:	e24dd014 	sub	sp, sp, #20, 0
    9490:	e59f5408 	ldr	r5, [pc, #1032]	; 98a0 <_Z11main_threadv+0x418>
    9494:	ebfffcb4 	bl	876c <_ZN2os8this_cpuEv>
    9498:	e5906004 	ldr	r6, [r0, #4]
    949c:	e08f5005 	add	r5, pc, r5
    94a0:	e5963084 	ldr	r3, [r6, #132]	; 0x84
    94a4:	e3530005 	cmp	r3, #5, 0
    94a8:	0a0000f8 	beq	9890 <_Z11main_threadv+0x408>
    94ac:	e2868098 	add	r8, r6, #152, 0	; 0x98
    94b0:	e286400c 	add	r4, r6, #12, 0
    94b4:	e1a00008 	mov	r0, r8
    94b8:	e2869084 	add	r9, r6, #132, 0	; 0x84
    94bc:	ebfffd7c 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    94c0:	ea000002 	b	94d0 <_Z11main_threadv+0x48>
    94c4:	e2844018 	add	r4, r4, #24, 0
    94c8:	e1590004 	cmp	r9, r4
    94cc:	0a0000f1 	beq	9898 <_Z11main_threadv+0x410>
    94d0:	e1a00004 	mov	r0, r4
    94d4:	e1a07004 	mov	r7, r4
    94d8:	ebfffd90 	bl	8b20 <_ZN2os6thread8thread_t8is_emptyEv>
    94dc:	e3500000 	cmp	r0, #0, 0
    94e0:	0afffff7 	beq	94c4 <_Z11main_threadv+0x3c>
    94e4:	e59f33b8 	ldr	r3, [pc, #952]	; 98a4 <_Z11main_threadv+0x41c>
    94e8:	e3a02003 	mov	r2, #3, 0
    94ec:	e5842004 	str	r2, [r4, #4]
    94f0:	e28d000c 	add	r0, sp, #12, 0
    94f4:	e795c003 	ldr	ip, [r5, r3]
    94f8:	e3012010 	movw	r2, #4112	; 0x1010
    94fc:	e5961094 	ldr	r1, [r6, #148]	; 0x94
    9500:	e59c3000 	ldr	r3, [ip]
    9504:	e283e001 	add	lr, r3, #1, 0
    9508:	e58ce000 	str	lr, [ip]
    950c:	e5843000 	str	r3, [r4]
    9510:	ebfffd29 	bl	89bc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj>
    9514:	e5902008 	ldr	r2, [r0, #8]
    9518:	e1a03000 	mov	r3, r0
    951c:	e2422a01 	sub	r2, r2, #4096	; 0x1000
    9520:	e2422010 	sub	r2, r2, #16, 0
    9524:	e3520020 	cmp	r2, #32, 0
    9528:	9a000008 	bls	9550 <_Z11main_threadv+0xc8>
    952c:	e590c000 	ldr	ip, [r0]
    9530:	e2801a01 	add	r1, r0, #4096	; 0x1000
    9534:	e5810014 	str	r0, [r1, #20]
    9538:	e3010010 	movw	r0, #4112	; 0x1010
    953c:	e581c010 	str	ip, [r1, #16]
    9540:	e083c000 	add	ip, r3, r0
    9544:	e5830008 	str	r0, [r3, #8]
    9548:	e583c000 	str	ip, [r3]
    954c:	e5812018 	str	r2, [r1, #24]
    9550:	e2830efd 	add	r0, r3, #4048	; 0xfd0
    9554:	e2833010 	add	r3, r3, #16, 0
    9558:	e584300c 	str	r3, [r4, #12]
    955c:	e2800008 	add	r0, r0, #8, 0
    9560:	e5840008 	str	r0, [r4, #8]
    9564:	e3a01038 	mov	r1, #56, 0	; 0x38
    9568:	ebfffd00 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    956c:	e59f3334 	ldr	r3, [pc, #820]	; 98a8 <_Z11main_threadv+0x420>
    9570:	e3a0c013 	mov	ip, #19, 0
    9574:	e5962084 	ldr	r2, [r6, #132]	; 0x84
    9578:	e1a00008 	mov	r0, r8
    957c:	e795e003 	ldr	lr, [r5, r3]
    9580:	e5963088 	ldr	r3, [r6, #136]	; 0x88
    9584:	e2822001 	add	r2, r2, #1, 0
    9588:	e5941008 	ldr	r1, [r4, #8]
    958c:	e2833001 	add	r3, r3, #1, 0
    9590:	e581e034 	str	lr, [r1, #52]	; 0x34
    9594:	e581c030 	str	ip, [r1, #48]	; 0x30
    9598:	e1c628f4 	strd	r2, [r6, #132]	; 0x84
    959c:	ebfffd4d 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    95a0:	ebfffc71 	bl	876c <_ZN2os8this_cpuEv>
    95a4:	e5906004 	ldr	r6, [r0, #4]
    95a8:	e5963084 	ldr	r3, [r6, #132]	; 0x84
    95ac:	e3530005 	cmp	r3, #5, 0
    95b0:	0a0000b4 	beq	9888 <_Z11main_threadv+0x400>
    95b4:	e2869098 	add	r9, r6, #152, 0	; 0x98
    95b8:	e286400c 	add	r4, r6, #12, 0
    95bc:	e1a00009 	mov	r0, r9
    95c0:	e2868084 	add	r8, r6, #132, 0	; 0x84
    95c4:	ebfffd3a 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    95c8:	ea000002 	b	95d8 <_Z11main_threadv+0x150>
    95cc:	e2844018 	add	r4, r4, #24, 0
    95d0:	e1580004 	cmp	r8, r4
    95d4:	0a0000af 	beq	9898 <_Z11main_threadv+0x410>
    95d8:	e1a00004 	mov	r0, r4
    95dc:	e1a0a004 	mov	sl, r4
    95e0:	ebfffd4e 	bl	8b20 <_ZN2os6thread8thread_t8is_emptyEv>
    95e4:	e3500000 	cmp	r0, #0, 0
    95e8:	0afffff7 	beq	95cc <_Z11main_threadv+0x144>
    95ec:	e59f32b0 	ldr	r3, [pc, #688]	; 98a4 <_Z11main_threadv+0x41c>
    95f0:	e3a02003 	mov	r2, #3, 0
    95f4:	e5842004 	str	r2, [r4, #4]
    95f8:	e28d000c 	add	r0, sp, #12, 0
    95fc:	e795c003 	ldr	ip, [r5, r3]
    9600:	e3012010 	movw	r2, #4112	; 0x1010
    9604:	e5961094 	ldr	r1, [r6, #148]	; 0x94
    9608:	e59c3000 	ldr	r3, [ip]
    960c:	e283e001 	add	lr, r3, #1, 0
    9610:	e58ce000 	str	lr, [ip]
    9614:	e5843000 	str	r3, [r4]
    9618:	ebfffce7 	bl	89bc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj>
    961c:	e5902008 	ldr	r2, [r0, #8]
    9620:	e1a03000 	mov	r3, r0
    9624:	e2422a01 	sub	r2, r2, #4096	; 0x1000
    9628:	e2422010 	sub	r2, r2, #16, 0
    962c:	e3520020 	cmp	r2, #32, 0
    9630:	9a000008 	bls	9658 <_Z11main_threadv+0x1d0>
    9634:	e590c000 	ldr	ip, [r0]
    9638:	e2801a01 	add	r1, r0, #4096	; 0x1000
    963c:	e5810014 	str	r0, [r1, #20]
    9640:	e3010010 	movw	r0, #4112	; 0x1010
    9644:	e581c010 	str	ip, [r1, #16]
    9648:	e083c000 	add	ip, r3, r0
    964c:	e5830008 	str	r0, [r3, #8]
    9650:	e583c000 	str	ip, [r3]
    9654:	e5812018 	str	r2, [r1, #24]
    9658:	e2830efd 	add	r0, r3, #4048	; 0xfd0
    965c:	e2833010 	add	r3, r3, #16, 0
    9660:	e584300c 	str	r3, [r4, #12]
    9664:	e2800008 	add	r0, r0, #8, 0
    9668:	e5840008 	str	r0, [r4, #8]
    966c:	e3a01038 	mov	r1, #56, 0	; 0x38
    9670:	ebfffcbe 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    9674:	e59f3230 	ldr	r3, [pc, #560]	; 98ac <_Z11main_threadv+0x424>
    9678:	e3a0c013 	mov	ip, #19, 0
    967c:	e5962084 	ldr	r2, [r6, #132]	; 0x84
    9680:	e1a00009 	mov	r0, r9
    9684:	e795e003 	ldr	lr, [r5, r3]
    9688:	e5963088 	ldr	r3, [r6, #136]	; 0x88
    968c:	e2822001 	add	r2, r2, #1, 0
    9690:	e5941008 	ldr	r1, [r4, #8]
    9694:	e2833001 	add	r3, r3, #1, 0
    9698:	e581e034 	str	lr, [r1, #52]	; 0x34
    969c:	e581c030 	str	ip, [r1, #48]	; 0x30
    96a0:	e1c628f4 	strd	r2, [r6, #132]	; 0x84
    96a4:	ebfffd0b 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    96a8:	ebfffc2f 	bl	876c <_ZN2os8this_cpuEv>
    96ac:	e5906004 	ldr	r6, [r0, #4]
    96b0:	e5963084 	ldr	r3, [r6, #132]	; 0x84
    96b4:	e3530005 	cmp	r3, #5, 0
    96b8:	0a00006f 	beq	987c <_Z11main_threadv+0x3f4>
    96bc:	e286b098 	add	fp, r6, #152, 0	; 0x98
    96c0:	e286400c 	add	r4, r6, #12, 0
    96c4:	e1a0000b 	mov	r0, fp
    96c8:	e2868084 	add	r8, r6, #132, 0	; 0x84
    96cc:	ebfffcf8 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    96d0:	ea000002 	b	96e0 <_Z11main_threadv+0x258>
    96d4:	e2844018 	add	r4, r4, #24, 0
    96d8:	e1580004 	cmp	r8, r4
    96dc:	0a00006d 	beq	9898 <_Z11main_threadv+0x410>
    96e0:	e58d4004 	str	r4, [sp, #4]
    96e4:	e1a00004 	mov	r0, r4
    96e8:	ebfffd0c 	bl	8b20 <_ZN2os6thread8thread_t8is_emptyEv>
    96ec:	e3500000 	cmp	r0, #0, 0
    96f0:	0afffff7 	beq	96d4 <_Z11main_threadv+0x24c>
    96f4:	e59f31a8 	ldr	r3, [pc, #424]	; 98a4 <_Z11main_threadv+0x41c>
    96f8:	e3a02003 	mov	r2, #3, 0
    96fc:	e5842004 	str	r2, [r4, #4]
    9700:	e28d000c 	add	r0, sp, #12, 0
    9704:	e795c003 	ldr	ip, [r5, r3]
    9708:	e3012010 	movw	r2, #4112	; 0x1010
    970c:	e5961094 	ldr	r1, [r6, #148]	; 0x94
    9710:	e59c3000 	ldr	r3, [ip]
    9714:	e283e001 	add	lr, r3, #1, 0
    9718:	e58ce000 	str	lr, [ip]
    971c:	e5843000 	str	r3, [r4]
    9720:	ebfffca5 	bl	89bc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj>
    9724:	e5902008 	ldr	r2, [r0, #8]
    9728:	e1a03000 	mov	r3, r0
    972c:	e2422a01 	sub	r2, r2, #4096	; 0x1000
    9730:	e2422010 	sub	r2, r2, #16, 0
    9734:	e3520020 	cmp	r2, #32, 0
    9738:	9a000008 	bls	9760 <_Z11main_threadv+0x2d8>
    973c:	e590c000 	ldr	ip, [r0]
    9740:	e2801a01 	add	r1, r0, #4096	; 0x1000
    9744:	e5810014 	str	r0, [r1, #20]
    9748:	e3010010 	movw	r0, #4112	; 0x1010
    974c:	e581c010 	str	ip, [r1, #16]
    9750:	e083c000 	add	ip, r3, r0
    9754:	e5830008 	str	r0, [r3, #8]
    9758:	e583c000 	str	ip, [r3]
    975c:	e5812018 	str	r2, [r1, #24]
    9760:	e2830efd 	add	r0, r3, #4048	; 0xfd0
    9764:	e2833010 	add	r3, r3, #16, 0
    9768:	e584300c 	str	r3, [r4, #12]
    976c:	e2800008 	add	r0, r0, #8, 0
    9770:	e5840008 	str	r0, [r4, #8]
    9774:	e3a01038 	mov	r1, #56, 0	; 0x38
    9778:	ebfffc7c 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    977c:	e59f312c 	ldr	r3, [pc, #300]	; 98b0 <_Z11main_threadv+0x428>
    9780:	e3a01013 	mov	r1, #19, 0
    9784:	e5962084 	ldr	r2, [r6, #132]	; 0x84
    9788:	e1a0000b 	mov	r0, fp
    978c:	e795e003 	ldr	lr, [r5, r3]
    9790:	e5963088 	ldr	r3, [r6, #136]	; 0x88
    9794:	e2822001 	add	r2, r2, #1, 0
    9798:	e594c008 	ldr	ip, [r4, #8]
    979c:	e2833001 	add	r3, r3, #1, 0
    97a0:	e58ce034 	str	lr, [ip, #52]	; 0x34
    97a4:	e58c1030 	str	r1, [ip, #48]	; 0x30
    97a8:	e1c628f4 	strd	r2, [r6, #132]	; 0x84
    97ac:	ebfffcc9 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    97b0:	e59f80fc 	ldr	r8, [pc, #252]	; 98b4 <_Z11main_threadv+0x42c>
    97b4:	e1a00007 	mov	r0, r7
    97b8:	e3a0b000 	mov	fp, #0, 0
    97bc:	ebfffd0a 	bl	8bec <_ZN2os6thread8thread_t4joinEv>
    97c0:	e08f8008 	add	r8, pc, r8
    97c4:	e1a0000a 	mov	r0, sl
    97c8:	e308a6a0 	movw	sl, #34464	; 0x86a0
    97cc:	ebfffd06 	bl	8bec <_ZN2os6thread8thread_t4joinEv>
    97d0:	e59f10e0 	ldr	r1, [pc, #224]	; 98b8 <_Z11main_threadv+0x430>
    97d4:	e1a0700b 	mov	r7, fp
    97d8:	e59f20dc 	ldr	r2, [pc, #220]	; 98bc <_Z11main_threadv+0x434>
    97dc:	e59f30dc 	ldr	r3, [pc, #220]	; 98c0 <_Z11main_threadv+0x438>
    97e0:	e7954001 	ldr	r4, [r5, r1]
    97e4:	e7956002 	ldr	r6, [r5, r2]
    97e8:	e340a001 	movt	sl, #1
    97ec:	e7955003 	ldr	r5, [r5, r3]
    97f0:	e58d700c 	str	r7, [sp, #12]
    97f4:	e59d300c 	ldr	r3, [sp, #12]
    97f8:	e153000a 	cmp	r3, sl
    97fc:	2a000005 	bcs	9818 <_Z11main_threadv+0x390>
    9800:	e59d300c 	ldr	r3, [sp, #12]
    9804:	e2833001 	add	r3, r3, #1, 0
    9808:	e58d300c 	str	r3, [sp, #12]
    980c:	e59d300c 	ldr	r3, [sp, #12]
    9810:	e153000a 	cmp	r3, sl
    9814:	3afffff9 	bcc	9800 <_Z11main_threadv+0x378>
    9818:	e1a00004 	mov	r0, r4
    981c:	ebfffca4 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9820:	e1a01008 	mov	r1, r8
    9824:	e1a00006 	mov	r0, r6
    9828:	ebfffe67 	bl	91cc <_ZStlsRSt7ostreamPKc>
    982c:	e1a0100b 	mov	r1, fp
    9830:	e28bb001 	add	fp, fp, #1, 0
    9834:	ebfffe46 	bl	9154 <_ZStlsRSt7ostreamm>
    9838:	e3a01020 	mov	r1, #32, 0
    983c:	ebfffe5c 	bl	91b4 <_ZStlsRSt7ostreamc>
    9840:	e1a09000 	mov	r9, r0
    9844:	ebfffe16 	bl	90a4 <get_sp>
    9848:	e1a01000 	mov	r1, r0
    984c:	e1a00009 	mov	r0, r9
    9850:	ebfffe3f 	bl	9154 <_ZStlsRSt7ostreamm>
    9854:	e1a01005 	mov	r1, r5
    9858:	ebfffe61 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    985c:	e1a00004 	mov	r0, r4
    9860:	ebfffc9c 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9864:	e35b0029 	cmp	fp, #41, 0	; 0x29
    9868:	1affffe0 	bne	97f0 <_Z11main_threadv+0x368>
    986c:	e59d0004 	ldr	r0, [sp, #4]
    9870:	ebfffcdd 	bl	8bec <_ZN2os6thread8thread_t4joinEv>
    9874:	e28dd014 	add	sp, sp, #20, 0
    9878:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    987c:	e3a03000 	mov	r3, #0, 0
    9880:	e58d3004 	str	r3, [sp, #4]
    9884:	eaffffc9 	b	97b0 <_Z11main_threadv+0x328>
    9888:	e3a0a000 	mov	sl, #0, 0
    988c:	eaffff85 	b	96a8 <_Z11main_threadv+0x220>
    9890:	e3a07000 	mov	r7, #0, 0
    9894:	eaffff41 	b	95a0 <_Z11main_threadv+0x118>
    9898:	e5800004 	str	r0, [r0, #4]
    989c:	e7f000f0 	udf	#0
    98a0:	00002b70 	.word	0x00002b70
    98a4:	0000002c 	.word	0x0000002c
    98a8:	00000058 	.word	0x00000058
    98ac:	00000038 	.word	0x00000038
    98b0:	00000034 	.word	0x00000034
    98b4:	000019d8 	.word	0x000019d8
    98b8:	00000010 	.word	0x00000010
    98bc:	00000054 	.word	0x00000054
    98c0:	00000000 	.word	0x00000000

000098c4 <_Z11core0_entrymi>:
    98c4:	e92d4070 	push	{r4, r5, r6, lr}
    98c8:	e1a06001 	mov	r6, r1
    98cc:	e59f4090 	ldr	r4, [pc, #144]	; 9964 <_Z11core0_entrymi+0xa0>
    98d0:	e1a05000 	mov	r5, r0
    98d4:	ebfffb96 	bl	8734 <_ZN2os8cpu_initEm>
    98d8:	e08f4004 	add	r4, pc, r4
    98dc:	e3a01000 	mov	r1, #0, 0
    98e0:	e1a02006 	mov	r2, r6
    98e4:	e1a00001 	mov	r0, r1
    98e8:	ebfffd84 	bl	8f00 <_ZN2os6kernel4initEiii>
    98ec:	ebfffbbf 	bl	87f0 <_ZN2os10interrupts4initEv>
    98f0:	e59f3070 	ldr	r3, [pc, #112]	; 9968 <_Z11core0_entrymi+0xa4>
    98f4:	e7940003 	ldr	r0, [r4, r3]
    98f8:	ebfffc7c 	bl	8af0 <_ZN2os4sync10signallock6signalEv>
    98fc:	e59f3068 	ldr	r3, [pc, #104]	; 996c <_Z11core0_entrymi+0xa8>
    9900:	e7940003 	ldr	r0, [r4, r3]
    9904:	ebfffc79 	bl	8af0 <_ZN2os4sync10signallock6signalEv>
    9908:	e59f3060 	ldr	r3, [pc, #96]	; 9970 <_Z11core0_entrymi+0xac>
    990c:	e7940003 	ldr	r0, [r4, r3]
    9910:	ebfffc76 	bl	8af0 <_ZN2os4sync10signallock6signalEv>
    9914:	e59f3058 	ldr	r3, [pc, #88]	; 9974 <_Z11core0_entrymi+0xb0>
    9918:	e7946003 	ldr	r6, [r4, r3]
    991c:	e1a00006 	mov	r0, r6
    9920:	ebfffc63 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9924:	e59f304c 	ldr	r3, [pc, #76]	; 9978 <_Z11core0_entrymi+0xb4>
    9928:	e59f104c 	ldr	r1, [pc, #76]	; 997c <_Z11core0_entrymi+0xb8>
    992c:	e7940003 	ldr	r0, [r4, r3]
    9930:	e08f1001 	add	r1, pc, r1
    9934:	ebfffe24 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9938:	e1a01005 	mov	r1, r5
    993c:	ebfffe04 	bl	9154 <_ZStlsRSt7ostreamm>
    9940:	e59f1038 	ldr	r1, [pc, #56]	; 9980 <_Z11core0_entrymi+0xbc>
    9944:	e08f1001 	add	r1, pc, r1
    9948:	ebfffe1f 	bl	91cc <_ZStlsRSt7ostreamPKc>
    994c:	e59f3030 	ldr	r3, [pc, #48]	; 9984 <_Z11core0_entrymi+0xc0>
    9950:	e7941003 	ldr	r1, [r4, r3]
    9954:	ebfffe22 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    9958:	e1a00006 	mov	r0, r6
    995c:	e8bd4070 	pop	{r4, r5, r6, lr}
    9960:	eafffc5c 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9964:	00002734 	.word	0x00002734
    9968:	00000030 	.word	0x00000030
    996c:	0000005c 	.word	0x0000005c
    9970:	00000048 	.word	0x00000048
    9974:	00000010 	.word	0x00000010
    9978:	00000054 	.word	0x00000054
    997c:	00001878 	.word	0x00001878
    9980:	0000186c 	.word	0x0000186c
    9984:	00000000 	.word	0x00000000

00009988 <_Z7handlerm>:
    9988:	e92d4070 	push	{r4, r5, r6, lr}
    998c:	e1a05000 	mov	r5, r0
    9990:	e59f4054 	ldr	r4, [pc, #84]	; 99ec <_Z7handlerm+0x64>
    9994:	e59f3054 	ldr	r3, [pc, #84]	; 99f0 <_Z7handlerm+0x68>
    9998:	e08f4004 	add	r4, pc, r4
    999c:	e7946003 	ldr	r6, [r4, r3]
    99a0:	e1a00006 	mov	r0, r6
    99a4:	ebfffc42 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    99a8:	e59f3044 	ldr	r3, [pc, #68]	; 99f4 <_Z7handlerm+0x6c>
    99ac:	e59f1044 	ldr	r1, [pc, #68]	; 99f8 <_Z7handlerm+0x70>
    99b0:	e7940003 	ldr	r0, [r4, r3]
    99b4:	e08f1001 	add	r1, pc, r1
    99b8:	ebfffe03 	bl	91cc <_ZStlsRSt7ostreamPKc>
    99bc:	e59f3038 	ldr	r3, [pc, #56]	; 99fc <_Z7handlerm+0x74>
    99c0:	e7943003 	ldr	r3, [r4, r3]
    99c4:	e7931185 	ldr	r1, [r3, r5, lsl #3]
    99c8:	ebfffde1 	bl	9154 <_ZStlsRSt7ostreamm>
    99cc:	e59f302c 	ldr	r3, [pc, #44]	; 9a00 <_Z7handlerm+0x78>
    99d0:	e7941003 	ldr	r1, [r4, r3]
    99d4:	ebfffe02 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    99d8:	e1a00006 	mov	r0, r6
    99dc:	ebfffc3d 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    99e0:	e8bd4070 	pop	{r4, r5, r6, lr}
    99e4:	e3a00ffa 	mov	r0, #1000	; 0x3e8
    99e8:	eafffcbb 	b	8cdc <_ZN2os5timer3setEm>
    99ec:	00002674 	.word	0x00002674
    99f0:	00000010 	.word	0x00000010
    99f4:	00000054 	.word	0x00000054
    99f8:	00001808 	.word	0x00001808
    99fc:	00000040 	.word	0x00000040
    9a00:	00000000 	.word	0x00000000

00009a04 <_Z11core1_entrym>:
    9a04:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9a08:	e24dd0ac 	sub	sp, sp, #172, 0	; 0xac
    9a0c:	e59f443c 	ldr	r4, [pc, #1084]	; 9e50 <_Z11core1_entrym+0x44c>
    9a10:	e1a07000 	mov	r7, r0
    9a14:	e28da0a4 	add	sl, sp, #164, 0	; 0xa4
    9a18:	ebfffb45 	bl	8734 <_ZN2os8cpu_initEm>
    9a1c:	e08f4004 	add	r4, pc, r4
    9a20:	e28d6018 	add	r6, sp, #24, 0
    9a24:	e59f3428 	ldr	r3, [pc, #1064]	; 9e54 <_Z11core1_entrym+0x450>
    9a28:	e3a09000 	mov	r9, #0, 0
    9a2c:	e1a0b009 	mov	fp, r9
    9a30:	e7940003 	ldr	r0, [r4, r3]
    9a34:	ebfffc30 	bl	8afc <_ZN2os4sync10signallock4waitEv>
    9a38:	e59f3418 	ldr	r3, [pc, #1048]	; 9e58 <_Z11core1_entrym+0x454>
    9a3c:	e7948003 	ldr	r8, [r4, r3]
    9a40:	e1a00008 	mov	r0, r8
    9a44:	ebfffc1a 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9a48:	e59f340c 	ldr	r3, [pc, #1036]	; 9e5c <_Z11core1_entrym+0x458>
    9a4c:	e59f140c 	ldr	r1, [pc, #1036]	; 9e60 <_Z11core1_entrym+0x45c>
    9a50:	e7945003 	ldr	r5, [r4, r3]
    9a54:	e08f1001 	add	r1, pc, r1
    9a58:	e1a00005 	mov	r0, r5
    9a5c:	ebfffdda 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9a60:	e1a01007 	mov	r1, r7
    9a64:	ebfffdba 	bl	9154 <_ZStlsRSt7ostreamm>
    9a68:	e59f13f4 	ldr	r1, [pc, #1012]	; 9e64 <_Z11core1_entrym+0x460>
    9a6c:	e08f1001 	add	r1, pc, r1
    9a70:	ebfffdd5 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9a74:	e59f33ec 	ldr	r3, [pc, #1004]	; 9e68 <_Z11core1_entrym+0x464>
    9a78:	e7947003 	ldr	r7, [r4, r3]
    9a7c:	e1a01007 	mov	r1, r7
    9a80:	ebfffdd7 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    9a84:	e1a00008 	mov	r0, r8
    9a88:	ebfffc12 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9a8c:	ebfffbc1 	bl	8998 <_ZN2os6memory14get_kernel_endEv>
    9a90:	e1a08000 	mov	r8, r0
    9a94:	ebfffbc6 	bl	89b4 <_ZN2os6memory15get_memory_sizeEv>
    9a98:	e1a02000 	mov	r2, r0
    9a9c:	e3a01010 	mov	r1, #16, 0
    9aa0:	e58d2000 	str	r2, [sp]
    9aa4:	e1a00008 	mov	r0, r8
    9aa8:	ebfffbb0 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    9aac:	e59d2000 	ldr	r2, [sp]
    9ab0:	e1a0000a 	mov	r0, sl
    9ab4:	e59f33b0 	ldr	r3, [pc, #944]	; 9e6c <_Z11core1_entrym+0x468>
    9ab8:	e5882008 	str	r2, [r8, #8]
    9abc:	e3a0201e 	mov	r2, #30, 0
    9ac0:	e7943003 	ldr	r3, [r4, r3]
    9ac4:	e58d209c 	str	r2, [sp, #156]	; 0x9c
    9ac8:	e58d80a0 	str	r8, [sp, #160]	; 0xa0
    9acc:	e2833008 	add	r3, r3, #8, 0
    9ad0:	e58d300c 	str	r3, [sp, #12]
    9ad4:	ebfffbf0 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    9ad8:	e58d9098 	str	r9, [sp, #152]	; 0x98
    9adc:	e28d300c 	add	r3, sp, #12, 0
    9ae0:	e58d9094 	str	r9, [sp, #148]	; 0x94
    9ae4:	e1a00006 	mov	r0, r6
    9ae8:	e58d9090 	str	r9, [sp, #144]	; 0x90
    9aec:	e3a01078 	mov	r1, #120, 0	; 0x78
    9af0:	e58d3000 	str	r3, [sp]
    9af4:	e28d9090 	add	r9, sp, #144, 0	; 0x90
    9af8:	ebfffb9c 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    9afc:	e1a03006 	mov	r3, r6
    9b00:	e583b004 	str	fp, [r3, #4]
    9b04:	e2833018 	add	r3, r3, #24, 0
    9b08:	e1530009 	cmp	r3, r9
    9b0c:	1afffffb 	bne	9b00 <_Z11core1_entrym+0xfc>
    9b10:	ebfffb15 	bl	876c <_ZN2os8this_cpuEv>
    9b14:	e59d3090 	ldr	r3, [sp, #144]	; 0x90
    9b18:	e59d2000 	ldr	r2, [sp]
    9b1c:	e3530005 	cmp	r3, #5, 0
    9b20:	e5802004 	str	r2, [r0, #4]
    9b24:	0a0000c7 	beq	9e48 <_Z11core1_entrym+0x444>
    9b28:	e1a0000a 	mov	r0, sl
    9b2c:	e1a08006 	mov	r8, r6
    9b30:	ebfffbdf 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9b34:	ea000002 	b	9b44 <_Z11core1_entrym+0x140>
    9b38:	e2888018 	add	r8, r8, #24, 0
    9b3c:	e1590008 	cmp	r9, r8
    9b40:	0a0000be 	beq	9e40 <_Z11core1_entrym+0x43c>
    9b44:	e1a00008 	mov	r0, r8
    9b48:	ebfffbf4 	bl	8b20 <_ZN2os6thread8thread_t8is_emptyEv>
    9b4c:	e3500000 	cmp	r0, #0, 0
    9b50:	0afffff8 	beq	9b38 <_Z11core1_entrym+0x134>
    9b54:	e59f1314 	ldr	r1, [pc, #788]	; 9e70 <_Z11core1_entrym+0x46c>
    9b58:	e3a02003 	mov	r2, #3, 0
    9b5c:	e5882004 	str	r2, [r8, #4]
    9b60:	e28d0008 	add	r0, sp, #8, 0
    9b64:	e794e001 	ldr	lr, [r4, r1]
    9b68:	e3012010 	movw	r2, #4112	; 0x1010
    9b6c:	e59d10a0 	ldr	r1, [sp, #160]	; 0xa0
    9b70:	e59ec000 	ldr	ip, [lr]
    9b74:	e588c000 	str	ip, [r8]
    9b78:	e28cc001 	add	ip, ip, #1, 0
    9b7c:	e58ec000 	str	ip, [lr]
    9b80:	ebfffb8d 	bl	89bc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj>
    9b84:	e1a02000 	mov	r2, r0
    9b88:	e5900008 	ldr	r0, [r0, #8]
    9b8c:	e2400a01 	sub	r0, r0, #4096	; 0x1000
    9b90:	e2400010 	sub	r0, r0, #16, 0
    9b94:	e3500020 	cmp	r0, #32, 0
    9b98:	9a000008 	bls	9bc0 <_Z11core1_entrym+0x1bc>
    9b9c:	e592e000 	ldr	lr, [r2]
    9ba0:	e2821a01 	add	r1, r2, #4096	; 0x1000
    9ba4:	e301c010 	movw	ip, #4112	; 0x1010
    9ba8:	e581e010 	str	lr, [r1, #16]
    9bac:	e082e00c 	add	lr, r2, ip
    9bb0:	e5812014 	str	r2, [r1, #20]
    9bb4:	e582c008 	str	ip, [r2, #8]
    9bb8:	e582e000 	str	lr, [r2]
    9bbc:	e5810018 	str	r0, [r1, #24]
    9bc0:	e2820efd 	add	r0, r2, #4048	; 0xfd0
    9bc4:	e2822010 	add	r2, r2, #16, 0
    9bc8:	e588200c 	str	r2, [r8, #12]
    9bcc:	e2800008 	add	r0, r0, #8, 0
    9bd0:	e5880008 	str	r0, [r8, #8]
    9bd4:	e3a01038 	mov	r1, #56, 0	; 0x38
    9bd8:	e28db010 	add	fp, sp, #16, 0
    9bdc:	ebfffb63 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    9be0:	e59f228c 	ldr	r2, [pc, #652]	; 9e74 <_Z11core1_entrym+0x470>
    9be4:	e3a0c013 	mov	ip, #19, 0
    9be8:	e5981008 	ldr	r1, [r8, #8]
    9bec:	e1a0000a 	mov	r0, sl
    9bf0:	e7942002 	ldr	r2, [r4, r2]
    9bf4:	e581c030 	str	ip, [r1, #48]	; 0x30
    9bf8:	e5812034 	str	r2, [r1, #52]	; 0x34
    9bfc:	e59d1090 	ldr	r1, [sp, #144]	; 0x90
    9c00:	e59d2094 	ldr	r2, [sp, #148]	; 0x94
    9c04:	e2811001 	add	r1, r1, #1, 0
    9c08:	e58d1090 	str	r1, [sp, #144]	; 0x90
    9c0c:	e2822001 	add	r2, r2, #1, 0
    9c10:	e58d2094 	str	r2, [sp, #148]	; 0x94
    9c14:	ebfffbaf 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9c18:	e59f2258 	ldr	r2, [pc, #600]	; 9e78 <_Z11core1_entrym+0x474>
    9c1c:	e3a01002 	mov	r1, #2, 0
    9c20:	e58d8014 	str	r8, [sp, #20]
    9c24:	e5881004 	str	r1, [r8, #4]
    9c28:	e59d109c 	ldr	r1, [sp, #156]	; 0x9c
    9c2c:	e7940002 	ldr	r0, [r4, r2]
    9c30:	ebfffc42 	bl	8d40 <_ZN2os5timer4initEPFvmEm>
    9c34:	e2881008 	add	r1, r8, #8, 0
    9c38:	e1a0000b 	mov	r0, fp
    9c3c:	ebfffd06 	bl	905c <context_switch>
    9c40:	e59d3090 	ldr	r3, [sp, #144]	; 0x90
    9c44:	e3530000 	cmp	r3, #0, 0
    9c48:	0a000063 	beq	9ddc <_Z11core1_entrym+0x3d8>
    9c4c:	e59fa228 	ldr	sl, [pc, #552]	; 9e7c <_Z11core1_entrym+0x478>
    9c50:	e3a04000 	mov	r4, #0, 0
    9c54:	e08fa00a 	add	sl, pc, sl
    9c58:	ebffface 	bl	8798 <_ZN2os10interrupts18disable_interruptsEv>
    9c5c:	e1a0100a 	mov	r1, sl
    9c60:	e1a00005 	mov	r0, r5
    9c64:	ebfffd58 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9c68:	e59d0014 	ldr	r0, [sp, #20]
    9c6c:	e590200c 	ldr	r2, [r0, #12]
    9c70:	e512300c 	ldr	r3, [r2, #-12]
    9c74:	e2421010 	sub	r1, r2, #16, 0
    9c78:	e5122010 	ldr	r2, [r2, #-16]
    9c7c:	e3530000 	cmp	r3, #0, 0
    9c80:	1a00000a 	bne	9cb0 <_Z11core1_entrym+0x2ac>
    9c84:	ea00000c 	b	9cbc <_Z11core1_entrym+0x2b8>
    9c88:	e593e004 	ldr	lr, [r3, #4]
    9c8c:	e5911008 	ldr	r1, [r1, #8]
    9c90:	e593c008 	ldr	ip, [r3, #8]
    9c94:	e35e0000 	cmp	lr, #0, 0
    9c98:	e5832000 	str	r2, [r3]
    9c9c:	e08cc001 	add	ip, ip, r1
    9ca0:	e1a01003 	mov	r1, r3
    9ca4:	e583c008 	str	ip, [r3, #8]
    9ca8:	0a000003 	beq	9cbc <_Z11core1_entrym+0x2b8>
    9cac:	e1a0300e 	mov	r3, lr
    9cb0:	e5d3c00c 	ldrb	ip, [r3, #12]
    9cb4:	e35c0000 	cmp	ip, #0, 0
    9cb8:	0afffff2 	beq	9c88 <_Z11core1_entrym+0x284>
    9cbc:	e3520000 	cmp	r2, #0, 0
    9cc0:	1a000006 	bne	9ce0 <_Z11core1_entrym+0x2dc>
    9cc4:	ea000008 	b	9cec <_Z11core1_entrym+0x2e8>
    9cc8:	e5922000 	ldr	r2, [r2]
    9ccc:	e5913008 	ldr	r3, [r1, #8]
    9cd0:	e592c008 	ldr	ip, [r2, #8]
    9cd4:	e5812000 	str	r2, [r1]
    9cd8:	e083300c 	add	r3, r3, ip
    9cdc:	e5813008 	str	r3, [r1, #8]
    9ce0:	e5d2300c 	ldrb	r3, [r2, #12]
    9ce4:	e3530000 	cmp	r3, #0, 0
    9ce8:	0afffff6 	beq	9cc8 <_Z11core1_entrym+0x2c4>
    9cec:	e59d3090 	ldr	r3, [sp, #144]	; 0x90
    9cf0:	e59d2094 	ldr	r2, [sp, #148]	; 0x94
    9cf4:	e5c1400c 	strb	r4, [r1, #12]
    9cf8:	e2433001 	sub	r3, r3, #1, 0
    9cfc:	e58d3090 	str	r3, [sp, #144]	; 0x90
    9d00:	e3530000 	cmp	r3, #0, 0
    9d04:	e2422001 	sub	r2, r2, #1, 0
    9d08:	e58d2094 	str	r2, [sp, #148]	; 0x94
    9d0c:	0a000041 	beq	9e18 <_Z11core1_entrym+0x414>
    9d10:	e2802010 	add	r2, r0, #16, 0
    9d14:	e1a08006 	mov	r8, r6
    9d18:	e3a03004 	mov	r3, #4, 0
    9d1c:	e5803004 	str	r3, [r0, #4]
    9d20:	e58d2004 	str	r2, [sp, #4]
    9d24:	e1a00008 	mov	r0, r8
    9d28:	ebfffb8a 	bl	8b58 <_ZN2os6thread8thread_t11is_sleepingEv>
    9d2c:	e59d2004 	ldr	r2, [sp, #4]
    9d30:	e3500000 	cmp	r0, #0, 0
    9d34:	0a000002 	beq	9d44 <_Z11core1_entrym+0x340>
    9d38:	e5981014 	ldr	r1, [r8, #20]
    9d3c:	e1520001 	cmp	r2, r1
    9d40:	0a000037 	beq	9e24 <_Z11core1_entrym+0x420>
    9d44:	e2888018 	add	r8, r8, #24, 0
    9d48:	e1580009 	cmp	r8, r9
    9d4c:	1afffff3 	bne	9d20 <_Z11core1_entrym+0x31c>
    9d50:	e59d0098 	ldr	r0, [sp, #152]	; 0x98
    9d54:	e3a08018 	mov	r8, #24, 0
    9d58:	ea000005 	b	9d74 <_Z11core1_entrym+0x370>
    9d5c:	e59d0098 	ldr	r0, [sp, #152]	; 0x98
    9d60:	e2800001 	add	r0, r0, #1, 0
    9d64:	e58d0098 	str	r0, [sp, #152]	; 0x98
    9d68:	e3500005 	cmp	r0, #5, 0
    9d6c:	058d2098 	streq	r2, [sp, #152]	; 0x98
    9d70:	01a00002 	moveq	r0, r2
    9d74:	e59d3000 	ldr	r3, [sp]
    9d78:	e0203098 	mla	r0, r8, r0, r3
    9d7c:	e280000c 	add	r0, r0, #12, 0
    9d80:	ebfffb6f 	bl	8b44 <_ZN2os6thread8thread_t8is_readyEv>
    9d84:	e2502000 	subs	r2, r0, #0, 0
    9d88:	0afffff3 	beq	9d5c <_Z11core1_entrym+0x358>
    9d8c:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
    9d90:	e3a02002 	mov	r2, #2, 0
    9d94:	e59dc000 	ldr	ip, [sp]
    9d98:	e0030198 	mul	r3, r8, r1
    9d9c:	e59d009c 	ldr	r0, [sp, #156]	; 0x9c
    9da0:	e28d10a8 	add	r1, sp, #168, 0	; 0xa8
    9da4:	e0811003 	add	r1, r1, r3
    9da8:	e283300c 	add	r3, r3, #12, 0
    9dac:	e08c3003 	add	r3, ip, r3
    9db0:	e501208c 	str	r2, [r1, #-140]	; 0xffffff74
    9db4:	e58d3014 	str	r3, [sp, #20]
    9db8:	ebfffbc7 	bl	8cdc <_ZN2os5timer3setEm>
    9dbc:	ebfffa7c 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    9dc0:	e59d1014 	ldr	r1, [sp, #20]
    9dc4:	e1a0000b 	mov	r0, fp
    9dc8:	e2811008 	add	r1, r1, #8, 0
    9dcc:	ebfffca2 	bl	905c <context_switch>
    9dd0:	e59d3090 	ldr	r3, [sp, #144]	; 0x90
    9dd4:	e3530000 	cmp	r3, #0, 0
    9dd8:	1affff9e 	bne	9c58 <_Z11core1_entrym+0x254>
    9ddc:	ebfffbe1 	bl	8d68 <_ZN2os5timer7disableEv>
    9de0:	e59f1098 	ldr	r1, [pc, #152]	; 9e80 <_Z11core1_entrym+0x47c>
    9de4:	e1a00005 	mov	r0, r5
    9de8:	e08f1001 	add	r1, pc, r1
    9dec:	ebfffcf6 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9df0:	e1a01007 	mov	r1, r7
    9df4:	ebfffcfa 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    9df8:	e59f1084 	ldr	r1, [pc, #132]	; 9e84 <_Z11core1_entrym+0x480>
    9dfc:	e1a00005 	mov	r0, r5
    9e00:	e08f1001 	add	r1, pc, r1
    9e04:	ebfffcf0 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9e08:	e1a01007 	mov	r1, r7
    9e0c:	ebfffcf4 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    9e10:	e28dd0ac 	add	sp, sp, #172, 0	; 0xac
    9e14:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9e18:	e5803004 	str	r3, [r0, #4]
    9e1c:	ebfffa64 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    9e20:	eaffffea 	b	9dd0 <_Z11core1_entrym+0x3cc>
    9e24:	e59d2094 	ldr	r2, [sp, #148]	; 0x94
    9e28:	e3a01003 	mov	r1, #3, 0
    9e2c:	e5884014 	str	r4, [r8, #20]
    9e30:	e5881004 	str	r1, [r8, #4]
    9e34:	e2823001 	add	r3, r2, #1, 0
    9e38:	e58d3094 	str	r3, [sp, #148]	; 0x94
    9e3c:	eaffffc3 	b	9d50 <_Z11core1_entrym+0x34c>
    9e40:	e5800004 	str	r0, [r0, #4]
    9e44:	e7f000f0 	udf	#0
    9e48:	e58bb004 	str	fp, [fp, #4]
    9e4c:	e7f000f0 	udf	#0
    9e50:	000025f0 	.word	0x000025f0
    9e54:	00000030 	.word	0x00000030
    9e58:	00000010 	.word	0x00000010
    9e5c:	00000054 	.word	0x00000054
    9e60:	00001754 	.word	0x00001754
    9e64:	00001744 	.word	0x00001744
    9e68:	00000000 	.word	0x00000000
    9e6c:	00000004 	.word	0x00000004
    9e70:	0000002c 	.word	0x0000002c
    9e74:	00000018 	.word	0x00000018
    9e78:	0000001c 	.word	0x0000001c
    9e7c:	00001578 	.word	0x00001578
    9e80:	000013f4 	.word	0x000013f4
    9e84:	000013f4 	.word	0x000013f4

00009e88 <_Z11core2_entrym>:
    9e88:	e92d4070 	push	{r4, r5, r6, lr}
    9e8c:	e1a05000 	mov	r5, r0
    9e90:	e59f4060 	ldr	r4, [pc, #96]	; 9ef8 <_Z11core2_entrym+0x70>
    9e94:	ebfffa26 	bl	8734 <_ZN2os8cpu_initEm>
    9e98:	e59f305c 	ldr	r3, [pc, #92]	; 9efc <_Z11core2_entrym+0x74>
    9e9c:	e08f4004 	add	r4, pc, r4
    9ea0:	e7940003 	ldr	r0, [r4, r3]
    9ea4:	ebfffb14 	bl	8afc <_ZN2os4sync10signallock4waitEv>
    9ea8:	e59f3050 	ldr	r3, [pc, #80]	; 9f00 <_Z11core2_entrym+0x78>
    9eac:	e7946003 	ldr	r6, [r4, r3]
    9eb0:	e1a00006 	mov	r0, r6
    9eb4:	ebfffafe 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9eb8:	e59f3044 	ldr	r3, [pc, #68]	; 9f04 <_Z11core2_entrym+0x7c>
    9ebc:	e59f1044 	ldr	r1, [pc, #68]	; 9f08 <_Z11core2_entrym+0x80>
    9ec0:	e7940003 	ldr	r0, [r4, r3]
    9ec4:	e08f1001 	add	r1, pc, r1
    9ec8:	ebfffcbf 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9ecc:	e1a01005 	mov	r1, r5
    9ed0:	ebfffc9f 	bl	9154 <_ZStlsRSt7ostreamm>
    9ed4:	e59f1030 	ldr	r1, [pc, #48]	; 9f0c <_Z11core2_entrym+0x84>
    9ed8:	e08f1001 	add	r1, pc, r1
    9edc:	ebfffcba 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9ee0:	e59f3028 	ldr	r3, [pc, #40]	; 9f10 <_Z11core2_entrym+0x88>
    9ee4:	e7941003 	ldr	r1, [r4, r3]
    9ee8:	ebfffcbd 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    9eec:	e1a00006 	mov	r0, r6
    9ef0:	e8bd4070 	pop	{r4, r5, r6, lr}
    9ef4:	eafffaf7 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9ef8:	00002170 	.word	0x00002170
    9efc:	0000005c 	.word	0x0000005c
    9f00:	00000010 	.word	0x00000010
    9f04:	00000054 	.word	0x00000054
    9f08:	000012e4 	.word	0x000012e4
    9f0c:	000012d8 	.word	0x000012d8
    9f10:	00000000 	.word	0x00000000

00009f14 <_Z11core3_entrym>:
    9f14:	e92d4070 	push	{r4, r5, r6, lr}
    9f18:	e1a05000 	mov	r5, r0
    9f1c:	e59f4060 	ldr	r4, [pc, #96]	; 9f84 <_Z11core3_entrym+0x70>
    9f20:	ebfffa03 	bl	8734 <_ZN2os8cpu_initEm>
    9f24:	e59f305c 	ldr	r3, [pc, #92]	; 9f88 <_Z11core3_entrym+0x74>
    9f28:	e08f4004 	add	r4, pc, r4
    9f2c:	e7940003 	ldr	r0, [r4, r3]
    9f30:	ebfffaf1 	bl	8afc <_ZN2os4sync10signallock4waitEv>
    9f34:	e59f3050 	ldr	r3, [pc, #80]	; 9f8c <_Z11core3_entrym+0x78>
    9f38:	e7946003 	ldr	r6, [r4, r3]
    9f3c:	e1a00006 	mov	r0, r6
    9f40:	ebfffadb 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9f44:	e59f3044 	ldr	r3, [pc, #68]	; 9f90 <_Z11core3_entrym+0x7c>
    9f48:	e59f1044 	ldr	r1, [pc, #68]	; 9f94 <_Z11core3_entrym+0x80>
    9f4c:	e7940003 	ldr	r0, [r4, r3]
    9f50:	e08f1001 	add	r1, pc, r1
    9f54:	ebfffc9c 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9f58:	e1a01005 	mov	r1, r5
    9f5c:	ebfffc7c 	bl	9154 <_ZStlsRSt7ostreamm>
    9f60:	e59f1030 	ldr	r1, [pc, #48]	; 9f98 <_Z11core3_entrym+0x84>
    9f64:	e08f1001 	add	r1, pc, r1
    9f68:	ebfffc97 	bl	91cc <_ZStlsRSt7ostreamPKc>
    9f6c:	e59f3028 	ldr	r3, [pc, #40]	; 9f9c <_Z11core3_entrym+0x88>
    9f70:	e7941003 	ldr	r1, [r4, r3]
    9f74:	ebfffc9a 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    9f78:	e1a00006 	mov	r0, r6
    9f7c:	e8bd4070 	pop	{r4, r5, r6, lr}
    9f80:	eafffad4 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9f84:	000020e4 	.word	0x000020e4
    9f88:	00000048 	.word	0x00000048
    9f8c:	00000010 	.word	0x00000010
    9f90:	00000054 	.word	0x00000054
    9f94:	00001258 	.word	0x00001258
    9f98:	0000124c 	.word	0x0000124c
    9f9c:	00000000 	.word	0x00000000

00009fa0 <entry>:
    9fa0:	e3510003 	cmp	r1, #3, 0
    9fa4:	908ff101 	addls	pc, pc, r1, lsl #2
    9fa8:	ea00000c 	b	9fe0 <entry+0x40>
    9fac:	ea000004 	b	9fc4 <entry+0x24>
    9fb0:	ea000006 	b	9fd0 <entry+0x30>
    9fb4:	ea000007 	b	9fd8 <entry+0x38>
    9fb8:	eaffffff 	b	9fbc <entry+0x1c>
    9fbc:	e3a00003 	mov	r0, #3, 0
    9fc0:	eaffffd3 	b	9f14 <_Z11core3_entrym>
    9fc4:	e1a01002 	mov	r1, r2
    9fc8:	e3a00000 	mov	r0, #0, 0
    9fcc:	eafffe3c 	b	98c4 <_Z11core0_entrymi>
    9fd0:	e3a00001 	mov	r0, #1, 0
    9fd4:	eafffe8a 	b	9a04 <_Z11core1_entrym>
    9fd8:	e3a00002 	mov	r0, #2, 0
    9fdc:	eaffffa9 	b	9e88 <_Z11core2_entrym>
    9fe0:	e12fff1e 	bx	lr

Disassembly of section .text.startup:

00009fe4 <_GLOBAL__sub_I_console.cpp>:
    9fe4:	e92d4010 	push	{r4, lr}
    9fe8:	e59f4040 	ldr	r4, [pc, #64]	; a030 <_GLOBAL__sub_I_console.cpp+0x4c>
    9fec:	e59f3040 	ldr	r3, [pc, #64]	; a034 <_GLOBAL__sub_I_console.cpp+0x50>
    9ff0:	e08f4004 	add	r4, pc, r4
    9ff4:	e7940003 	ldr	r0, [r4, r3]
    9ff8:	ebfffaa7 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    9ffc:	e59f3034 	ldr	r3, [pc, #52]	; a038 <_GLOBAL__sub_I_console.cpp+0x54>
    a000:	e7940003 	ldr	r0, [r4, r3]
    a004:	ebfffaa4 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    a008:	e59f302c 	ldr	r3, [pc, #44]	; a03c <_GLOBAL__sub_I_console.cpp+0x58>
    a00c:	e7940003 	ldr	r0, [r4, r3]
    a010:	ebfffaa1 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    a014:	e59f3024 	ldr	r3, [pc, #36]	; a040 <_GLOBAL__sub_I_console.cpp+0x5c>
    a018:	e7940003 	ldr	r0, [r4, r3]
    a01c:	ebfffa9e 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    a020:	e59f301c 	ldr	r3, [pc, #28]	; a044 <_GLOBAL__sub_I_console.cpp+0x60>
    a024:	e7940003 	ldr	r0, [r4, r3]
    a028:	e8bd4010 	pop	{r4, lr}
    a02c:	eafffa9a 	b	8a9c <_ZN2os4sync8spinlockC1Ev>
    a030:	0000201c 	.word	0x0000201c
    a034:	0000004c 	.word	0x0000004c
    a038:	00000050 	.word	0x00000050
    a03c:	00000008 	.word	0x00000008
    a040:	00000044 	.word	0x00000044
    a044:	00000024 	.word	0x00000024

0000a048 <_GLOBAL__sub_I_uart.cpp>:
    a048:	e59f300c 	ldr	r3, [pc, #12]	; a05c <_GLOBAL__sub_I_uart.cpp+0x14>
    a04c:	e59f200c 	ldr	r2, [pc, #12]	; a060 <_GLOBAL__sub_I_uart.cpp+0x18>
    a050:	e08f3003 	add	r3, pc, r3
    a054:	e7930002 	ldr	r0, [r3, r2]
    a058:	eafffa8f 	b	8a9c <_ZN2os4sync8spinlockC1Ev>
    a05c:	00001fbc 	.word	0x00001fbc
    a060:	00000020 	.word	0x00000020

0000a064 <_GLOBAL__sub_I_kernel.cpp>:
    a064:	e59f300c 	ldr	r3, [pc, #12]	; a078 <_GLOBAL__sub_I_kernel.cpp+0x14>
    a068:	e59f200c 	ldr	r2, [pc, #12]	; a07c <_GLOBAL__sub_I_kernel.cpp+0x18>
    a06c:	e08f3003 	add	r3, pc, r3
    a070:	e7930002 	ldr	r0, [r3, r2]
    a074:	eafffa88 	b	8a9c <_ZN2os4sync8spinlockC1Ev>
    a078:	00001fa0 	.word	0x00001fa0
    a07c:	0000000c 	.word	0x0000000c

0000a080 <_GLOBAL__sub_I_code.cpp>:
    a080:	e92d4010 	push	{r4, lr}
    a084:	e59f4034 	ldr	r4, [pc, #52]	; a0c0 <_GLOBAL__sub_I_code.cpp+0x40>
    a088:	e59f3034 	ldr	r3, [pc, #52]	; a0c4 <_GLOBAL__sub_I_code.cpp+0x44>
    a08c:	e08f4004 	add	r4, pc, r4
    a090:	e7940003 	ldr	r0, [r4, r3]
    a094:	ebfffa92 	bl	8ae4 <_ZN2os4sync10signallockC1Ev>
    a098:	e59f3028 	ldr	r3, [pc, #40]	; a0c8 <_GLOBAL__sub_I_code.cpp+0x48>
    a09c:	e7940003 	ldr	r0, [r4, r3]
    a0a0:	ebfffa8f 	bl	8ae4 <_ZN2os4sync10signallockC1Ev>
    a0a4:	e59f3020 	ldr	r3, [pc, #32]	; a0cc <_GLOBAL__sub_I_code.cpp+0x4c>
    a0a8:	e7940003 	ldr	r0, [r4, r3]
    a0ac:	ebfffa8c 	bl	8ae4 <_ZN2os4sync10signallockC1Ev>
    a0b0:	e59f3018 	ldr	r3, [pc, #24]	; a0d0 <_GLOBAL__sub_I_code.cpp+0x50>
    a0b4:	e7940003 	ldr	r0, [r4, r3]
    a0b8:	e8bd4010 	pop	{r4, lr}
    a0bc:	eafffa76 	b	8a9c <_ZN2os4sync8spinlockC1Ev>
    a0c0:	00001f80 	.word	0x00001f80
    a0c4:	00000030 	.word	0x00000030
    a0c8:	0000005c 	.word	0x0000005c
    a0cc:	00000048 	.word	0x00000048
    a0d0:	00000010 	.word	0x00000010

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_allEPNS_6thread15sleep_channel_tE:

0000a0d4 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_allEPNS_6thread15sleep_channel_tE>:
    a0d4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    a0d8:	e1a05000 	mov	r5, r0
    a0dc:	e1a07001 	mov	r7, r1
    a0e0:	e280400c 	add	r4, r0, #12, 0
    a0e4:	e2806084 	add	r6, r0, #132, 0	; 0x84
    a0e8:	e3a09000 	mov	r9, #0, 0
    a0ec:	e3a08003 	mov	r8, #3, 0
    a0f0:	e1a00004 	mov	r0, r4
    a0f4:	ebfffa97 	bl	8b58 <_ZN2os6thread8thread_t11is_sleepingEv>
    a0f8:	e3500000 	cmp	r0, #0, 0
    a0fc:	0a000006 	beq	a11c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_allEPNS_6thread15sleep_channel_tE+0x48>
    a100:	e5943014 	ldr	r3, [r4, #20]
    a104:	e1530007 	cmp	r3, r7
    a108:	05953088 	ldreq	r3, [r5, #136]	; 0x88
    a10c:	05849014 	streq	r9, [r4, #20]
    a110:	05848004 	streq	r8, [r4, #4]
    a114:	02833001 	addeq	r3, r3, #1, 0
    a118:	05853088 	streq	r3, [r5, #136]	; 0x88
    a11c:	e2844018 	add	r4, r4, #24, 0
    a120:	e1560004 	cmp	r6, r4
    a124:	1afffff1 	bne	a0f0 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_allEPNS_6thread15sleep_channel_tE+0x1c>
    a128:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE:

0000a12c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE>:
    a12c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    a130:	e1a06000 	mov	r6, r0
    a134:	e1a07001 	mov	r7, r1
    a138:	e280400c 	add	r4, r0, #12, 0
    a13c:	e2805084 	add	r5, r0, #132, 0	; 0x84
    a140:	ea000002 	b	a150 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE+0x24>
    a144:	e2844018 	add	r4, r4, #24, 0
    a148:	e1540005 	cmp	r4, r5
    a14c:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    a150:	e1a00004 	mov	r0, r4
    a154:	ebfffa7f 	bl	8b58 <_ZN2os6thread8thread_t11is_sleepingEv>
    a158:	e3500000 	cmp	r0, #0, 0
    a15c:	0afffff8 	beq	a144 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE+0x18>
    a160:	e5943014 	ldr	r3, [r4, #20]
    a164:	e1530007 	cmp	r3, r7
    a168:	1afffff5 	bne	a144 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE+0x18>
    a16c:	e5963088 	ldr	r3, [r6, #136]	; 0x88
    a170:	e3a02000 	mov	r2, #0, 0
    a174:	e5842014 	str	r2, [r4, #20]
    a178:	e3a02003 	mov	r2, #3, 0
    a17c:	e5842004 	str	r2, [r4, #4]
    a180:	e2833001 	add	r3, r3, #1, 0
    a184:	e5863088 	str	r3, [r6, #136]	; 0x88
    a188:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE:

0000a18c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE>:
    a18c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    a190:	e2517000 	subs	r7, r1, #0, 0
    a194:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    a198:	e1a04000 	mov	r4, r0
    a19c:	ebfff97d 	bl	8798 <_ZN2os10interrupts18disable_interruptsEv>
    a1a0:	e3a02001 	mov	r2, #1, 0
    a1a4:	e3a05018 	mov	r5, #24, 0
    a1a8:	e5943088 	ldr	r3, [r4, #136]	; 0x88
    a1ac:	e5946008 	ldr	r6, [r4, #8]
    a1b0:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a1b4:	e2433001 	sub	r3, r3, #1, 0
    a1b8:	e5867014 	str	r7, [r6, #20]
    a1bc:	e5862004 	str	r2, [r6, #4]
    a1c0:	e5843088 	str	r3, [r4, #136]	; 0x88
    a1c4:	ea000005 	b	a1e0 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0x54>
    a1c8:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a1cc:	e2800001 	add	r0, r0, #1, 0
    a1d0:	e584008c 	str	r0, [r4, #140]	; 0x8c
    a1d4:	e3500005 	cmp	r0, #5, 0
    a1d8:	0584308c 	streq	r3, [r4, #140]	; 0x8c
    a1dc:	01a00003 	moveq	r0, r3
    a1e0:	e0204095 	mla	r0, r5, r0, r4
    a1e4:	e280000c 	add	r0, r0, #12, 0
    a1e8:	ebfffa55 	bl	8b44 <_ZN2os6thread8thread_t8is_readyEv>
    a1ec:	e2503000 	subs	r3, r0, #0, 0
    a1f0:	0afffff4 	beq	a1c8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0x3c>
    a1f4:	e594308c 	ldr	r3, [r4, #140]	; 0x8c
    a1f8:	e3a02002 	mov	r2, #2, 0
    a1fc:	e0050395 	mul	r5, r5, r3
    a200:	e0843005 	add	r3, r4, r5
    a204:	e285500c 	add	r5, r5, #12, 0
    a208:	e0845005 	add	r5, r4, r5
    a20c:	e5845008 	str	r5, [r4, #8]
    a210:	e5832010 	str	r2, [r3, #16]
    a214:	e5940090 	ldr	r0, [r4, #144]	; 0x90
    a218:	ebfffaaf 	bl	8cdc <_ZN2os5timer3setEm>
    a21c:	ebfff964 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    a220:	e5941008 	ldr	r1, [r4, #8]
    a224:	e2860008 	add	r0, r6, #8, 0
    a228:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    a22c:	e2811008 	add	r1, r1, #8, 0
    a230:	eafffb89 	b	905c <context_switch>

Disassembly of section .text._ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm:

0000a234 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm>:
    a234:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a238:	e24dd00c 	sub	sp, sp, #12, 0
    a23c:	e59f71c8 	ldr	r7, [pc, #456]	; a40c <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1d8>
    a240:	e59f21c8 	ldr	r2, [pc, #456]	; a410 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1dc>
    a244:	e08f7007 	add	r7, pc, r7
    a248:	e7973002 	ldr	r3, [r7, r2]
    a24c:	e0833180 	add	r3, r3, r0, lsl #3
    a250:	e5934004 	ldr	r4, [r3, #4]
    a254:	e5943088 	ldr	r3, [r4, #136]	; 0x88
    a258:	e3530001 	cmp	r3, #1, 0
    a25c:	9a000045 	bls	a378 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x144>
    a260:	e5943008 	ldr	r3, [r4, #8]
    a264:	e3a05018 	mov	r5, #24, 0
    a268:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a26c:	e58d3004 	str	r3, [sp, #4]
    a270:	ea000005 	b	a28c <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x58>
    a274:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a278:	e2800001 	add	r0, r0, #1, 0
    a27c:	e584008c 	str	r0, [r4, #140]	; 0x8c
    a280:	e3500005 	cmp	r0, #5, 0
    a284:	0584308c 	streq	r3, [r4, #140]	; 0x8c
    a288:	01a00003 	moveq	r0, r3
    a28c:	e0204095 	mla	r0, r5, r0, r4
    a290:	e280000c 	add	r0, r0, #12, 0
    a294:	ebfffa2a 	bl	8b44 <_ZN2os6thread8thread_t8is_readyEv>
    a298:	e2503000 	subs	r3, r0, #0, 0
    a29c:	0afffff4 	beq	a274 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x40>
    a2a0:	e594308c 	ldr	r3, [r4, #140]	; 0x8c
    a2a4:	e3a0c003 	mov	ip, #3, 0
    a2a8:	e59f2164 	ldr	r2, [pc, #356]	; a414 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1e0>
    a2ac:	e3a00002 	mov	r0, #2, 0
    a2b0:	e0050395 	mul	r5, r5, r3
    a2b4:	e59de004 	ldr	lr, [sp, #4]
    a2b8:	e284800c 	add	r8, r4, #12, 0
    a2bc:	e0841005 	add	r1, r4, r5
    a2c0:	e285500c 	add	r5, r5, #12, 0
    a2c4:	e59f314c 	ldr	r3, [pc, #332]	; a418 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1e4>
    a2c8:	e0845005 	add	r5, r4, r5
    a2cc:	e5845008 	str	r5, [r4, #8]
    a2d0:	e3a05000 	mov	r5, #0, 0
    a2d4:	e58ec004 	str	ip, [lr, #4]
    a2d8:	e59fb13c 	ldr	fp, [pc, #316]	; a41c <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1e8>
    a2dc:	e5810010 	str	r0, [r1, #16]
    a2e0:	e797a002 	ldr	sl, [r7, r2]
    a2e4:	e7979003 	ldr	r9, [r7, r3]
    a2e8:	e59f7130 	ldr	r7, [pc, #304]	; a420 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1ec>
    a2ec:	e08fb00b 	add	fp, pc, fp
    a2f0:	e08f7007 	add	r7, pc, r7
    a2f4:	e3a0105b 	mov	r1, #91, 0	; 0x5b
    a2f8:	e1a0000a 	mov	r0, sl
    a2fc:	ebfffbac 	bl	91b4 <_ZStlsRSt7ostreamc>
    a300:	e1a01005 	mov	r1, r5
    a304:	e2855001 	add	r5, r5, #1, 0
    a308:	ebfffb91 	bl	9154 <_ZStlsRSt7ostreamm>
    a30c:	e1a0100b 	mov	r1, fp
    a310:	ebfffbad 	bl	91cc <_ZStlsRSt7ostreamPKc>
    a314:	e5981000 	ldr	r1, [r8]
    a318:	ebfffb8d 	bl	9154 <_ZStlsRSt7ostreamm>
    a31c:	e1a01007 	mov	r1, r7
    a320:	ebfffba9 	bl	91cc <_ZStlsRSt7ostreamPKc>
    a324:	e1a06000 	mov	r6, r0
    a328:	e1a00008 	mov	r0, r8
    a32c:	e2888018 	add	r8, r8, #24, 0
    a330:	ebfffa36 	bl	8c10 <_ZN2os6thread8thread_t13get_state_strEv>
    a334:	e1a01000 	mov	r1, r0
    a338:	e1a00006 	mov	r0, r6
    a33c:	ebfffba2 	bl	91cc <_ZStlsRSt7ostreamPKc>
    a340:	e1a01009 	mov	r1, r9
    a344:	ebfffba6 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    a348:	e3550005 	cmp	r5, #5, 0
    a34c:	1affffe8 	bne	a2f4 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0xc0>
    a350:	e5940090 	ldr	r0, [r4, #144]	; 0x90
    a354:	ebfffa60 	bl	8cdc <_ZN2os5timer3setEm>
    a358:	ebfff915 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    a35c:	e5941008 	ldr	r1, [r4, #8]
    a360:	e59d3004 	ldr	r3, [sp, #4]
    a364:	e2811008 	add	r1, r1, #8, 0
    a368:	e2830008 	add	r0, r3, #8, 0
    a36c:	e28dd00c 	add	sp, sp, #12, 0
    a370:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a374:	eafffb38 	b	905c <context_switch>
    a378:	e59f2094 	ldr	r2, [pc, #148]	; a414 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1e0>
    a37c:	e284600c 	add	r6, r4, #12, 0
    a380:	e59f3090 	ldr	r3, [pc, #144]	; a418 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1e4>
    a384:	e3a05000 	mov	r5, #0, 0
    a388:	e59fb094 	ldr	fp, [pc, #148]	; a424 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1f0>
    a38c:	e59f8094 	ldr	r8, [pc, #148]	; a428 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x1f4>
    a390:	e797a002 	ldr	sl, [r7, r2]
    a394:	e7979003 	ldr	r9, [r7, r3]
    a398:	e08fb00b 	add	fp, pc, fp
    a39c:	e08f8008 	add	r8, pc, r8
    a3a0:	e3a0105b 	mov	r1, #91, 0	; 0x5b
    a3a4:	e1a0000a 	mov	r0, sl
    a3a8:	ebfffb81 	bl	91b4 <_ZStlsRSt7ostreamc>
    a3ac:	e1a01005 	mov	r1, r5
    a3b0:	e2855001 	add	r5, r5, #1, 0
    a3b4:	ebfffb66 	bl	9154 <_ZStlsRSt7ostreamm>
    a3b8:	e1a0100b 	mov	r1, fp
    a3bc:	ebfffb82 	bl	91cc <_ZStlsRSt7ostreamPKc>
    a3c0:	e5961000 	ldr	r1, [r6]
    a3c4:	ebfffb62 	bl	9154 <_ZStlsRSt7ostreamm>
    a3c8:	e1a01008 	mov	r1, r8
    a3cc:	ebfffb7e 	bl	91cc <_ZStlsRSt7ostreamPKc>
    a3d0:	e1a07000 	mov	r7, r0
    a3d4:	e1a00006 	mov	r0, r6
    a3d8:	e2866018 	add	r6, r6, #24, 0
    a3dc:	ebfffa0b 	bl	8c10 <_ZN2os6thread8thread_t13get_state_strEv>
    a3e0:	e1a01000 	mov	r1, r0
    a3e4:	e1a00007 	mov	r0, r7
    a3e8:	ebfffb77 	bl	91cc <_ZStlsRSt7ostreamPKc>
    a3ec:	e1a01009 	mov	r1, r9
    a3f0:	ebfffb7b 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    a3f4:	e3550005 	cmp	r5, #5, 0
    a3f8:	1affffe8 	bne	a3a0 <_ZN2os11concurrency10dispatcherINS0_12rr_schedulerILm5ENS_6memory4heapINS3_11heap_policy8best_fitEEEEEEEvm+0x16c>
    a3fc:	e5940090 	ldr	r0, [r4, #144]	; 0x90
    a400:	e28dd00c 	add	sp, sp, #12, 0
    a404:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a408:	eafffa33 	b	8cdc <_ZN2os5timer3setEm>
    a40c:	00001dc8 	.word	0x00001dc8
    a410:	00000040 	.word	0x00000040
    a414:	00000054 	.word	0x00000054
    a418:	00000000 	.word	0x00000000
    a41c:	00000f18 	.word	0x00000f18
    a420:	00000f1c 	.word	0x00000f1c
    a424:	00000e6c 	.word	0x00000e6c
    a428:	00000e70 	.word	0x00000e70

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE:

0000a42c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE>:
    a42c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a430:	e1a06001 	mov	r6, r1
    a434:	e59f7168 	ldr	r7, [pc, #360]	; a5a4 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x178>
    a438:	e24dd00c 	sub	sp, sp, #12, 0
    a43c:	e1a04000 	mov	r4, r0
    a440:	ebfff8d4 	bl	8798 <_ZN2os10interrupts18disable_interruptsEv>
    a444:	e08f7007 	add	r7, pc, r7
    a448:	e1a00006 	mov	r0, r6
    a44c:	ebfff9c6 	bl	8b6c <_ZN2os6thread8thread_t11is_finishedEv>
    a450:	e3500000 	cmp	r0, #0, 0
    a454:	1a00004d 	bne	a590 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x164>
    a458:	e5943088 	ldr	r3, [r4, #136]	; 0x88
    a45c:	e2862010 	add	r2, r6, #16, 0
    a460:	e5948008 	ldr	r8, [r4, #8]
    a464:	e3a05018 	mov	r5, #24, 0
    a468:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a46c:	e2433001 	sub	r3, r3, #1, 0
    a470:	e5882014 	str	r2, [r8, #20]
    a474:	e3a02001 	mov	r2, #1, 0
    a478:	e5882004 	str	r2, [r8, #4]
    a47c:	e5843088 	str	r3, [r4, #136]	; 0x88
    a480:	ea000005 	b	a49c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x70>
    a484:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a488:	e2800001 	add	r0, r0, #1, 0
    a48c:	e584008c 	str	r0, [r4, #140]	; 0x8c
    a490:	e3500005 	cmp	r0, #5, 0
    a494:	0584308c 	streq	r3, [r4, #140]	; 0x8c
    a498:	01a00003 	moveq	r0, r3
    a49c:	e0204095 	mla	r0, r5, r0, r4
    a4a0:	e280000c 	add	r0, r0, #12, 0
    a4a4:	ebfff9a6 	bl	8b44 <_ZN2os6thread8thread_t8is_readyEv>
    a4a8:	e2503000 	subs	r3, r0, #0, 0
    a4ac:	0afffff4 	beq	a484 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x58>
    a4b0:	e594208c 	ldr	r2, [r4, #140]	; 0x8c
    a4b4:	e3a00002 	mov	r0, #2, 0
    a4b8:	e59f30e8 	ldr	r3, [pc, #232]	; a5a8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x17c>
    a4bc:	e284900c 	add	r9, r4, #12, 0
    a4c0:	e0050295 	mul	r5, r5, r2
    a4c4:	e59f20e0 	ldr	r2, [pc, #224]	; a5ac <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x180>
    a4c8:	e0841005 	add	r1, r4, r5
    a4cc:	e285500c 	add	r5, r5, #12, 0
    a4d0:	e0845005 	add	r5, r4, r5
    a4d4:	e5845008 	str	r5, [r4, #8]
    a4d8:	e3a05000 	mov	r5, #0, 0
    a4dc:	e5810010 	str	r0, [r1, #16]
    a4e0:	e59fa0c8 	ldr	sl, [pc, #200]	; a5b0 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x184>
    a4e4:	e7973003 	ldr	r3, [r7, r3]
    a4e8:	e797b002 	ldr	fp, [r7, r2]
    a4ec:	e59f70c0 	ldr	r7, [pc, #192]	; a5b4 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x188>
    a4f0:	e08fa00a 	add	sl, pc, sl
    a4f4:	e08f7007 	add	r7, pc, r7
    a4f8:	e58d3004 	str	r3, [sp, #4]
    a4fc:	e1a00003 	mov	r0, r3
    a500:	e3a0105b 	mov	r1, #91, 0	; 0x5b
    a504:	ebfffb2a 	bl	91b4 <_ZStlsRSt7ostreamc>
    a508:	e1a01005 	mov	r1, r5
    a50c:	e2855001 	add	r5, r5, #1, 0
    a510:	ebfffb0f 	bl	9154 <_ZStlsRSt7ostreamm>
    a514:	e1a0100a 	mov	r1, sl
    a518:	ebfffb2b 	bl	91cc <_ZStlsRSt7ostreamPKc>
    a51c:	e5991000 	ldr	r1, [r9]
    a520:	ebfffb0b 	bl	9154 <_ZStlsRSt7ostreamm>
    a524:	e1a01007 	mov	r1, r7
    a528:	ebfffb27 	bl	91cc <_ZStlsRSt7ostreamPKc>
    a52c:	e1a02000 	mov	r2, r0
    a530:	e1a00009 	mov	r0, r9
    a534:	e58d2000 	str	r2, [sp]
    a538:	ebfff9b4 	bl	8c10 <_ZN2os6thread8thread_t13get_state_strEv>
    a53c:	e59d2000 	ldr	r2, [sp]
    a540:	e1a01000 	mov	r1, r0
    a544:	e2899018 	add	r9, r9, #24, 0
    a548:	e1a00002 	mov	r0, r2
    a54c:	ebfffb1e 	bl	91cc <_ZStlsRSt7ostreamPKc>
    a550:	e1a0100b 	mov	r1, fp
    a554:	ebfffb22 	bl	91e4 <_ZStlsRSt7ostreamPFS0_S0_E>
    a558:	e59d3004 	ldr	r3, [sp, #4]
    a55c:	e3550005 	cmp	r5, #5, 0
    a560:	1affffe4 	bne	a4f8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0xcc>
    a564:	e5940090 	ldr	r0, [r4, #144]	; 0x90
    a568:	ebfff9db 	bl	8cdc <_ZN2os5timer3setEm>
    a56c:	ebfff890 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    a570:	e5941008 	ldr	r1, [r4, #8]
    a574:	e2880008 	add	r0, r8, #8, 0
    a578:	e2811008 	add	r1, r1, #8, 0
    a57c:	ebfffab6 	bl	905c <context_switch>
    a580:	e3a03000 	mov	r3, #0, 0
    a584:	e5863004 	str	r3, [r6, #4]
    a588:	e28dd00c 	add	sp, sp, #12, 0
    a58c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a590:	e3a03000 	mov	r3, #0, 0
    a594:	e5863004 	str	r3, [r6, #4]
    a598:	e28dd00c 	add	sp, sp, #12, 0
    a59c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a5a0:	eafff883 	b	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    a5a4:	00001bc8 	.word	0x00001bc8
    a5a8:	00000054 	.word	0x00000054
    a5ac:	00000000 	.word	0x00000000
    a5b0:	00000d14 	.word	0x00000d14
    a5b4:	00000d18 	.word	0x00000d18
