
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
    8098:	0000a140 	.word	0x0000a140

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
    8478:	00000048 	.word	0x00000048
    847c:	00000054 	.word	0x00000054
    8480:	00000008 	.word	0x00000008
    8484:	00000040 	.word	0x00000040
    8488:	00000020 	.word	0x00000020

0000848c <_ZN2os7console4putcEc>:
    848c:	ea00025c 	b	8e04 <_ZN2os4uart4putcEc>

00008490 <_ZN2os7console4getcEv>:
    8490:	e59f303c 	ldr	r3, [pc, #60]	; 84d4 <_ZN2os7console4getcEv+0x44>
    8494:	e59f203c 	ldr	r2, [pc, #60]	; 84d8 <_ZN2os7console4getcEv+0x48>
    8498:	e08f3003 	add	r3, pc, r3
    849c:	e92d4070 	push	{r4, r5, r6, lr}
    84a0:	e7935002 	ldr	r5, [r3, r2]
    84a4:	e1a00005 	mov	r0, r5
    84a8:	eb000181 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    84ac:	eb00026d 	bl	8e68 <_ZN2os4uart4getcEv>
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
    84d8:	00000048 	.word	0x00000048

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
    8528:	00000054 	.word	0x00000054

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
    8678:	00000040 	.word	0x00000040

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
    86cc:	00000020 	.word	0x00000020

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
    872c:	00000040 	.word	0x00000040
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
    8764:	0000003c 	.word	0x0000003c

00008768 <_ZN2os10get_cpu_idEv>:
    8768:	ea000298 	b	91d0 <__get_cpu_id>

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
    8794:	0000003c 	.word	0x0000003c

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
    882c:	ea00027a 	b	921c <move_exception_vector>
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
    89b0:	00000024 	.word	0x00000024

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
    8b18:	e5930004 	ldr	r0, [r3, #4]
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
    8c1c:	ea000010 	b	8c64 <_ZN2os6thread8thread_t13get_state_strEv+0x54>
    8c20:	ea000009 	b	8c4c <_ZN2os6thread8thread_t13get_state_strEv+0x3c>
    8c24:	ea00000b 	b	8c58 <_ZN2os6thread8thread_t13get_state_strEv+0x48>
    8c28:	ea000004 	b	8c40 <_ZN2os6thread8thread_t13get_state_strEv+0x30>
    8c2c:	ea000000 	b	8c34 <_ZN2os6thread8thread_t13get_state_strEv+0x24>
    8c30:	ea00000b 	b	8c64 <_ZN2os6thread8thread_t13get_state_strEv+0x54>
    8c34:	e59f0034 	ldr	r0, [pc, #52]	; 8c70 <_ZN2os6thread8thread_t13get_state_strEv+0x60>
    8c38:	e08f0000 	add	r0, pc, r0
    8c3c:	e12fff1e 	bx	lr
    8c40:	e59f002c 	ldr	r0, [pc, #44]	; 8c74 <_ZN2os6thread8thread_t13get_state_strEv+0x64>
    8c44:	e08f0000 	add	r0, pc, r0
    8c48:	e12fff1e 	bx	lr
    8c4c:	e59f0024 	ldr	r0, [pc, #36]	; 8c78 <_ZN2os6thread8thread_t13get_state_strEv+0x68>
    8c50:	e08f0000 	add	r0, pc, r0
    8c54:	e12fff1e 	bx	lr
    8c58:	e59f001c 	ldr	r0, [pc, #28]	; 8c7c <_ZN2os6thread8thread_t13get_state_strEv+0x6c>
    8c5c:	e08f0000 	add	r0, pc, r0
    8c60:	e12fff1e 	bx	lr
    8c64:	e59f0014 	ldr	r0, [pc, #20]	; 8c80 <_ZN2os6thread8thread_t13get_state_strEv+0x70>
    8c68:	e08f0000 	add	r0, pc, r0
    8c6c:	e12fff1e 	bx	lr
    8c70:	00002528 	.word	0x00002528
    8c74:	00002508 	.word	0x00002508
    8c78:	000024f4 	.word	0x000024f4
    8c7c:	000024f8 	.word	0x000024f8
    8c80:	000024d0 	.word	0x000024d0

00008c84 <_ZN2os11concurrency10dispatcherEm>:
    8c84:	e59f301c 	ldr	r3, [pc, #28]	; 8ca8 <_ZN2os11concurrency10dispatcherEm+0x24>
    8c88:	e59f201c 	ldr	r2, [pc, #28]	; 8cac <_ZN2os11concurrency10dispatcherEm+0x28>
    8c8c:	e08f3003 	add	r3, pc, r3
    8c90:	e7933002 	ldr	r3, [r3, r2]
    8c94:	e0833180 	add	r3, r3, r0, lsl #3
    8c98:	e5930004 	ldr	r0, [r3, #4]
    8c9c:	e5903000 	ldr	r3, [r0]
    8ca0:	e5933010 	ldr	r3, [r3, #16]
    8ca4:	e12fff13 	bx	r3
    8ca8:	00003380 	.word	0x00003380
    8cac:	0000003c 	.word	0x0000003c

00008cb0 <grim_reaper>:
    8cb0:	e59f2040 	ldr	r2, [pc, #64]	; 8cf8 <grim_reaper+0x48>
    8cb4:	e59f3040 	ldr	r3, [pc, #64]	; 8cfc <grim_reaper+0x4c>
    8cb8:	e08f2002 	add	r2, pc, r2
    8cbc:	e59f103c 	ldr	r1, [pc, #60]	; 8d00 <grim_reaper+0x50>
    8cc0:	e92d4010 	push	{r4, lr}
    8cc4:	e08f1001 	add	r1, pc, r1
    8cc8:	e7920003 	ldr	r0, [r2, r3]
    8ccc:	eb000186 	bl	92ec <_ZStlsRSt7ostreamPKc>
    8cd0:	ebfffea5 	bl	876c <_ZN2os8this_cpuEv>
    8cd4:	e5903004 	ldr	r3, [r0, #4]
    8cd8:	e5930008 	ldr	r0, [r3, #8]
    8cdc:	eb000104 	bl	90f4 <switch_stack>
    8ce0:	ebfffea1 	bl	876c <_ZN2os8this_cpuEv>
    8ce4:	e5900004 	ldr	r0, [r0, #4]
    8ce8:	e8bd4010 	pop	{r4, lr}
    8cec:	e5903000 	ldr	r3, [r0]
    8cf0:	e5933014 	ldr	r3, [r3, #20]
    8cf4:	e12fff13 	bx	r3
    8cf8:	00003354 	.word	0x00003354
    8cfc:	00000058 	.word	0x00000058
    8d00:	000024a4 	.word	0x000024a4

00008d04 <thread_exit>:
    8d04:	e59f202c 	ldr	r2, [pc, #44]	; 8d38 <thread_exit+0x34>
    8d08:	e59f302c 	ldr	r3, [pc, #44]	; 8d3c <thread_exit+0x38>
    8d0c:	e08f2002 	add	r2, pc, r2
    8d10:	e59f1028 	ldr	r1, [pc, #40]	; 8d40 <thread_exit+0x3c>
    8d14:	e92d4010 	push	{r4, lr}
    8d18:	e08f1001 	add	r1, pc, r1
    8d1c:	e7920003 	ldr	r0, [r2, r3]
    8d20:	eb000171 	bl	92ec <_ZStlsRSt7ostreamPKc>
    8d24:	ebfffe90 	bl	876c <_ZN2os8this_cpuEv>
    8d28:	e5900004 	ldr	r0, [r0, #4]
    8d2c:	e8bd4010 	pop	{r4, lr}
    8d30:	e2800008 	add	r0, r0, #8, 0
    8d34:	ea00011b 	b	91a8 <context_load>
    8d38:	00003300 	.word	0x00003300
    8d3c:	00000058 	.word	0x00000058
    8d40:	00002464 	.word	0x00002464

00008d44 <_ZN2os17arm_generic_timer3setEm>:
    8d44:	e59f3024 	ldr	r3, [pc, #36]	; 8d70 <_ZN2os17arm_generic_timer3setEm+0x2c>
    8d48:	e3042dd3 	movw	r2, #19923	; 0x4dd3
    8d4c:	e3412062 	movt	r2, #4194	; 0x1062
    8d50:	e08f3003 	add	r3, pc, r3
    8d54:	e5933000 	ldr	r3, [r3]
    8d58:	e0c21392 	smull	r1, r2, r2, r3
    8d5c:	e1a03fc3 	asr	r3, r3, #31
    8d60:	e0633342 	rsb	r3, r3, r2, asr #6
    8d64:	e0030390 	mul	r3, r0, r3
    8d68:	ee0e3f13 	mcr	15, 0, r3, cr14, cr3, {0}
    8d6c:	e12fff1e 	bx	lr
    8d70:	000042d0 	.word	0x000042d0

00008d74 <_ZN2os5timer3setEm>:
    8d74:	eafffff2 	b	8d44 <_ZN2os17arm_generic_timer3setEm>

00008d78 <_ZN2os17arm_generic_timer4initEPFvmEm>:
    8d78:	e92d4070 	push	{r4, r5, r6, lr}
    8d7c:	e1a06000 	mov	r6, r0
    8d80:	e1a05001 	mov	r5, r1
    8d84:	ee1e2f10 	mrc	15, 0, r2, cr14, cr0, {0}
    8d88:	e59f3044 	ldr	r3, [pc, #68]	; 8dd4 <_ZN2os17arm_generic_timer4initEPFvmEm+0x5c>
    8d8c:	e08f3003 	add	r3, pc, r3
    8d90:	e5832000 	str	r2, [r3]
    8d94:	ebfffe73 	bl	8768 <_ZN2os10get_cpu_idEv>
    8d98:	e1a04000 	mov	r4, r0
    8d9c:	e1a00006 	mov	r0, r6
    8da0:	e1a01004 	mov	r1, r4
    8da4:	ebfffea2 	bl	8834 <_ZN2os10interrupts22register_timer_handlerEPFvmEi>
    8da8:	e1a00005 	mov	r0, r5
    8dac:	ebffffe4 	bl	8d44 <_ZN2os17arm_generic_timer3setEm>
    8db0:	e1a00104 	lsl	r0, r4, #2
    8db4:	e3a01008 	mov	r1, #8, 0
    8db8:	e2800101 	add	r0, r0, #1073741824	; 0x40000000
    8dbc:	e2800040 	add	r0, r0, #64, 0	; 0x40
    8dc0:	ebffff31 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8dc4:	e3a03001 	mov	r3, #1, 0
    8dc8:	ee0e3f33 	mcr	15, 0, r3, cr14, cr3, {1}
    8dcc:	e8bd4070 	pop	{r4, r5, r6, lr}
    8dd0:	eafffe77 	b	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    8dd4:	00004294 	.word	0x00004294

00008dd8 <_ZN2os5timer4initEPFvmEm>:
    8dd8:	eaffffe6 	b	8d78 <_ZN2os17arm_generic_timer4initEPFvmEm>

00008ddc <_ZN2os17arm_generic_timer7disableEv>:
    8ddc:	e92d4010 	push	{r4, lr}
    8de0:	ebfffe60 	bl	8768 <_ZN2os10get_cpu_idEv>
    8de4:	e3a01000 	mov	r1, #0, 0
    8de8:	ee0e1f33 	mcr	15, 0, r1, cr14, cr3, {1}
    8dec:	e1a00100 	lsl	r0, r0, #2
    8df0:	e2800101 	add	r0, r0, #1073741824	; 0x40000000
    8df4:	e8bd4010 	pop	{r4, lr}
    8df8:	e2800060 	add	r0, r0, #96, 0	; 0x60
    8dfc:	eaffff22 	b	8a8c <_ZN2os4mmio5writeEmm>

00008e00 <_ZN2os5timer7disableEv>:
    8e00:	eafffff5 	b	8ddc <_ZN2os17arm_generic_timer7disableEv>

00008e04 <_ZN2os4uart4putcEc>:
    8e04:	e59f3054 	ldr	r3, [pc, #84]	; 8e60 <_ZN2os4uart4putcEc+0x5c>
    8e08:	e350007e 	cmp	r0, #126, 0	; 0x7e
    8e0c:	e08f3003 	add	r3, pc, r3
    8e10:	812fff1e 	bxhi	lr
    8e14:	e59f2048 	ldr	r2, [pc, #72]	; 8e64 <_ZN2os4uart4putcEc+0x60>
    8e18:	e92d4070 	push	{r4, r5, r6, lr}
    8e1c:	e1a04000 	mov	r4, r0
    8e20:	e7936002 	ldr	r6, [r3, r2]
    8e24:	e3015018 	movw	r5, #4120	; 0x1018
    8e28:	e3435f20 	movt	r5, #16160	; 0x3f20
    8e2c:	e1a00006 	mov	r0, r6
    8e30:	ebffff1f 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    8e34:	e1a00005 	mov	r0, r5
    8e38:	ebffff15 	bl	8a94 <_ZN2os4mmio4readEm>
    8e3c:	e3100020 	tst	r0, #32, 0
    8e40:	1afffffb 	bne	8e34 <_ZN2os4uart4putcEc+0x30>
    8e44:	e3a00a01 	mov	r0, #4096	; 0x1000
    8e48:	e1a01004 	mov	r1, r4
    8e4c:	e3430f20 	movt	r0, #16160	; 0x3f20
    8e50:	ebffff0d 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8e54:	e1a00006 	mov	r0, r6
    8e58:	e8bd4070 	pop	{r4, r5, r6, lr}
    8e5c:	eaffff1d 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    8e60:	00003200 	.word	0x00003200
    8e64:	0000001c 	.word	0x0000001c

00008e68 <_ZN2os4uart4getcEv>:
    8e68:	e59f303c 	ldr	r3, [pc, #60]	; 8eac <_ZN2os4uart4getcEv+0x44>
    8e6c:	e59f203c 	ldr	r2, [pc, #60]	; 8eb0 <_ZN2os4uart4getcEv+0x48>
    8e70:	e08f3003 	add	r3, pc, r3
    8e74:	e92d4010 	push	{r4, lr}
    8e78:	e3014018 	movw	r4, #4120	; 0x1018
    8e7c:	e7930002 	ldr	r0, [r3, r2]
    8e80:	e3434f20 	movt	r4, #16160	; 0x3f20
    8e84:	ebffff0a 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    8e88:	e1a00004 	mov	r0, r4
    8e8c:	ebffff00 	bl	8a94 <_ZN2os4mmio4readEm>
    8e90:	e3100010 	tst	r0, #16, 0
    8e94:	1afffffb 	bne	8e88 <_ZN2os4uart4getcEv+0x20>
    8e98:	e3a00a01 	mov	r0, #4096	; 0x1000
    8e9c:	e3430f20 	movt	r0, #16160	; 0x3f20
    8ea0:	ebfffefb 	bl	8a94 <_ZN2os4mmio4readEm>
    8ea4:	e6ef0070 	uxtb	r0, r0
    8ea8:	e8bd8010 	pop	{r4, pc}
    8eac:	0000319c 	.word	0x0000319c
    8eb0:	0000001c 	.word	0x0000001c

00008eb4 <putc>:
    8eb4:	eaffffd2 	b	8e04 <_ZN2os4uart4putcEc>

00008eb8 <_ZN2os5delayEl>:
    8eb8:	e2500001 	subs	r0, r0, #1, 0
    8ebc:	1afffffd 	bne	8eb8 <_ZN2os5delayEl>
    8ec0:	e12fff1e 	bx	lr

00008ec4 <_ZN2os4uart4initEv>:
    8ec4:	e59f30c4 	ldr	r3, [pc, #196]	; 8f90 <_ZN2os4uart4initEv+0xcc>
    8ec8:	e59f20c4 	ldr	r2, [pc, #196]	; 8f94 <_ZN2os4uart4initEv+0xd0>
    8ecc:	e08f3003 	add	r3, pc, r3
    8ed0:	e92d4070 	push	{r4, r5, r6, lr}
    8ed4:	e3014030 	movw	r4, #4144	; 0x1030
    8ed8:	e7930002 	ldr	r0, [r3, r2]
    8edc:	e3a05098 	mov	r5, #152, 0	; 0x98
    8ee0:	e3434f20 	movt	r4, #16160	; 0x3f20
    8ee4:	ebfffeef 	bl	8aa8 <_ZN2os4sync8spinlock4initEv>
    8ee8:	e3435f20 	movt	r5, #16160	; 0x3f20
    8eec:	e1a00004 	mov	r0, r4
    8ef0:	e3a01000 	mov	r1, #0, 0
    8ef4:	ebfffee4 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8ef8:	e3a00094 	mov	r0, #148, 0	; 0x94
    8efc:	e3a01000 	mov	r1, #0, 0
    8f00:	e3430f20 	movt	r0, #16160	; 0x3f20
    8f04:	ebfffee0 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8f08:	e3a00096 	mov	r0, #150, 0	; 0x96
    8f0c:	ebffffe9 	bl	8eb8 <_ZN2os5delayEl>
    8f10:	e1a00005 	mov	r0, r5
    8f14:	e3a01903 	mov	r1, #49152	; 0xc000
    8f18:	ebfffedb 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8f1c:	e3a00096 	mov	r0, #150, 0	; 0x96
    8f20:	ebffffe4 	bl	8eb8 <_ZN2os5delayEl>
    8f24:	e1a00005 	mov	r0, r5
    8f28:	e3a01000 	mov	r1, #0, 0
    8f2c:	ebfffed6 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8f30:	e3010044 	movw	r0, #4164	; 0x1044
    8f34:	e30017ff 	movw	r1, #2047	; 0x7ff
    8f38:	e3430f20 	movt	r0, #16160	; 0x3f20
    8f3c:	ebfffed2 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8f40:	e3010024 	movw	r0, #4132	; 0x1024
    8f44:	e3a01001 	mov	r1, #1, 0
    8f48:	e3430f20 	movt	r0, #16160	; 0x3f20
    8f4c:	ebfffece 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8f50:	e3010028 	movw	r0, #4136	; 0x1028
    8f54:	e3a01028 	mov	r1, #40, 0	; 0x28
    8f58:	e3430f20 	movt	r0, #16160	; 0x3f20
    8f5c:	ebfffeca 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8f60:	e301002c 	movw	r0, #4140	; 0x102c
    8f64:	e3a01070 	mov	r1, #112, 0	; 0x70
    8f68:	e3430f20 	movt	r0, #16160	; 0x3f20
    8f6c:	ebfffec6 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8f70:	e3010038 	movw	r0, #4152	; 0x1038
    8f74:	e30017f2 	movw	r1, #2034	; 0x7f2
    8f78:	e3430f20 	movt	r0, #16160	; 0x3f20
    8f7c:	ebfffec2 	bl	8a8c <_ZN2os4mmio5writeEmm>
    8f80:	e1a00004 	mov	r0, r4
    8f84:	e3001301 	movw	r1, #769	; 0x301
    8f88:	e8bd4070 	pop	{r4, r5, r6, lr}
    8f8c:	eafffebe 	b	8a8c <_ZN2os4mmio5writeEmm>
    8f90:	00003140 	.word	0x00003140
    8f94:	0000001c 	.word	0x0000001c

00008f98 <_ZN2os6kernel4initEiii>:
    8f98:	e92d4010 	push	{r4, lr}
    8f9c:	ebffffc8 	bl	8ec4 <_ZN2os4uart4initEv>
    8fa0:	e8bd4010 	pop	{r4, lr}
    8fa4:	eafffd1f 	b	8428 <_ZN2os7console11iolock_initEv>

00008fa8 <_ZN2os6kernel9wait_initEv>:
    8fa8:	e59f3020 	ldr	r3, [pc, #32]	; 8fd0 <_ZN2os6kernel9wait_initEv+0x28>
    8fac:	e59f2020 	ldr	r2, [pc, #32]	; 8fd4 <_ZN2os6kernel9wait_initEv+0x2c>
    8fb0:	e08f3003 	add	r3, pc, r3
    8fb4:	e92d4010 	push	{r4, lr}
    8fb8:	e7934002 	ldr	r4, [r3, r2]
    8fbc:	e1a00004 	mov	r0, r4
    8fc0:	ebfffebb 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    8fc4:	e1a00004 	mov	r0, r4
    8fc8:	e8bd4010 	pop	{r4, lr}
    8fcc:	eafffec1 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    8fd0:	0000305c 	.word	0x0000305c
    8fd4:	0000000c 	.word	0x0000000c

00008fd8 <_ZN2os6kernel7destroyEv>:
    8fd8:	e12fff1e 	bx	lr

00008fdc <__cxa_pure_virtual>:
    8fdc:	e12fff1e 	bx	lr

00008fe0 <__cxa_atexit>:
    8fe0:	e92d4070 	push	{r4, r5, r6, lr}
    8fe4:	e59f404c 	ldr	r4, [pc, #76]	; 9038 <__cxa_atexit+0x58>
    8fe8:	e59f304c 	ldr	r3, [pc, #76]	; 903c <__cxa_atexit+0x5c>
    8fec:	e08f4004 	add	r4, pc, r4
    8ff0:	e7946003 	ldr	r6, [r4, r3]
    8ff4:	e5963000 	ldr	r3, [r6]
    8ff8:	e353007f 	cmp	r3, #127, 0	; 0x7f
    8ffc:	8a00000b 	bhi	9030 <__cxa_atexit+0x50>
    9000:	e59fe038 	ldr	lr, [pc, #56]	; 9040 <__cxa_atexit+0x60>
    9004:	e3a0c00c 	mov	ip, #12, 0
    9008:	e00c039c 	mul	ip, ip, r3
    900c:	e794e00e 	ldr	lr, [r4, lr]
    9010:	e2833001 	add	r3, r3, #1, 0
    9014:	e5863000 	str	r3, [r6]
    9018:	e1a05000 	mov	r5, r0
    901c:	e08e300c 	add	r3, lr, ip
    9020:	e3a00000 	mov	r0, #0, 0
    9024:	e78e500c 	str	r5, [lr, ip]
    9028:	e9830006 	stmib	r3, {r1, r2}
    902c:	e8bd8070 	pop	{r4, r5, r6, pc}
    9030:	e3e00000 	mvn	r0, #0, 0
    9034:	e8bd8070 	pop	{r4, r5, r6, pc}
    9038:	00003020 	.word	0x00003020
    903c:	00000014 	.word	0x00000014
    9040:	00000038 	.word	0x00000038

00009044 <__cxa_finalize>:
    9044:	e59f209c 	ldr	r2, [pc, #156]	; 90e8 <__cxa_finalize+0xa4>
    9048:	e59f309c 	ldr	r3, [pc, #156]	; 90ec <__cxa_finalize+0xa8>
    904c:	e08f2002 	add	r2, pc, r2
    9050:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    9054:	e2505000 	subs	r5, r0, #0, 0
    9058:	e7923003 	ldr	r3, [r2, r3]
    905c:	e5934000 	ldr	r4, [r3]
    9060:	0a000011 	beq	90ac <__cxa_finalize+0x68>
    9064:	e3540000 	cmp	r4, #0, 0
    9068:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    906c:	e59f307c 	ldr	r3, [pc, #124]	; 90f0 <__cxa_finalize+0xac>
    9070:	e3a0100c 	mov	r1, #12, 0
    9074:	e3a07000 	mov	r7, #0, 0
    9078:	e7926003 	ldr	r6, [r2, r3]
    907c:	e0246491 	mla	r4, r1, r4, r6
    9080:	ea000002 	b	9090 <__cxa_finalize+0x4c>
    9084:	e244400c 	sub	r4, r4, #12, 0
    9088:	e1540006 	cmp	r4, r6
    908c:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    9090:	e514300c 	ldr	r3, [r4, #-12]
    9094:	e1530005 	cmp	r3, r5
    9098:	1afffff9 	bne	9084 <__cxa_finalize+0x40>
    909c:	e5140008 	ldr	r0, [r4, #-8]
    90a0:	e12fff35 	blx	r5
    90a4:	e504700c 	str	r7, [r4, #-12]
    90a8:	eafffff5 	b	9084 <__cxa_finalize+0x40>
    90ac:	e3540000 	cmp	r4, #0, 0
    90b0:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    90b4:	e59f3034 	ldr	r3, [pc, #52]	; 90f0 <__cxa_finalize+0xac>
    90b8:	e3a0100c 	mov	r1, #12, 0
    90bc:	e7925003 	ldr	r5, [r2, r3]
    90c0:	e0245491 	mla	r4, r1, r4, r5
    90c4:	e514300c 	ldr	r3, [r4, #-12]
    90c8:	e3530000 	cmp	r3, #0, 0
    90cc:	0a000001 	beq	90d8 <__cxa_finalize+0x94>
    90d0:	e5140008 	ldr	r0, [r4, #-8]
    90d4:	e12fff33 	blx	r3
    90d8:	e244400c 	sub	r4, r4, #12, 0
    90dc:	e1540005 	cmp	r4, r5
    90e0:	1afffff7 	bne	90c4 <__cxa_finalize+0x80>
    90e4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    90e8:	00002fc0 	.word	0x00002fc0
    90ec:	00000014 	.word	0x00000014
    90f0:	00000038 	.word	0x00000038

000090f4 <switch_stack>:
    90f4:	e1a0d000 	mov	sp, r0
    90f8:	e12fff1e 	bx	lr

000090fc <context_switch>:
    90fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    9100:	e10fc000 	mrs	ip, CPSR
    9104:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    9108:	e580d000 	str	sp, [r0]
    910c:	e591d000 	ldr	sp, [r1]
    9110:	e28d0038 	add	r0, sp, #56, 0	; 0x38
    9114:	e5810000 	str	r0, [r1]
    9118:	e8bd1fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    911c:	e121f00c 	msr	CPSR_c, ip
    9120:	e59fe0a0 	ldr	lr, [pc, #160]	; 91c8 <get_sp+0x8>
    9124:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
    9128:	e12fff1e 	bx	lr

0000912c <first_context_switch_main_thread>:
    912c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    9130:	e10fc000 	mrs	ip, CPSR
    9134:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    9138:	e580d000 	str	sp, [r0]
    913c:	e591d000 	ldr	sp, [r1]
    9140:	e28d0038 	add	r0, sp, #56, 0	; 0x38
    9144:	e5810000 	str	r0, [r1]
    9148:	e8bd1fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    914c:	e121f00c 	msr	CPSR_c, ip
    9150:	e59fe074 	ldr	lr, [pc, #116]	; 91cc <get_sp+0xc>
    9154:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
    9158:	e12fff1e 	bx	lr

0000915c <first_context_switch_secondary_thread>:
    915c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    9160:	e10fc000 	mrs	ip, CPSR
    9164:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    9168:	e580d000 	str	sp, [r0]
    916c:	e591d000 	ldr	sp, [r1]
    9170:	e28d0038 	add	r0, sp, #56, 0	; 0x38
    9174:	e5810000 	str	r0, [r1]
    9178:	e8bd1fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    917c:	e121f00c 	msr	CPSR_c, ip
    9180:	e59fe040 	ldr	lr, [pc, #64]	; 91c8 <get_sp+0x8>
    9184:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
    9188:	e12fff1e 	bx	lr

0000918c <context_save>:
    918c:	e92d2000 	stmfd	sp!, {sp}
    9190:	e590d000 	ldr	sp, [r0]
    9194:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    9198:	e10fc000 	mrs	ip, CPSR
    919c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    91a0:	e580d000 	str	sp, [r0]
    91a4:	e12fff1e 	bx	lr

000091a8 <context_load>:
    91a8:	e590d000 	ldr	sp, [r0]
    91ac:	e8bd1fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    91b0:	e121f00c 	msr	CPSR_c, ip
    91b4:	e580d000 	str	sp, [r0]
    91b8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
    91bc:	e12fff1e 	bx	lr

000091c0 <get_sp>:
    91c0:	e1a0000d 	mov	r0, sp
    91c4:	e12fff1e 	bx	lr
    91c8:	00008d04 	.word	0x00008d04
    91cc:	00008cb0 	.word	0x00008cb0

000091d0 <__get_cpu_id>:
    91d0:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
    91d4:	e2000003 	and	r0, r0, #3, 0
    91d8:	e12fff1e 	bx	lr

000091dc <exception_vector>:
    91dc:	e59ff018 	ldr	pc, [pc, #24]	; 91fc <reset_handler_addr>
    91e0:	e59ff018 	ldr	pc, [pc, #24]	; 9200 <undefined_instruction_handler_addr>
    91e4:	e59ff018 	ldr	pc, [pc, #24]	; 9204 <software_interrupt_handler_addr>
    91e8:	e59ff018 	ldr	pc, [pc, #24]	; 9208 <prefetch_abort_handler_addr>
    91ec:	e59ff018 	ldr	pc, [pc, #24]	; 920c <data_abort_handler_addr>
    91f0:	e59ff018 	ldr	pc, [pc, #24]	; 9210 <unused_handler_addr>
    91f4:	e59ff018 	ldr	pc, [pc, #24]	; 9214 <irq_handler_addr>
    91f8:	e59ff018 	ldr	pc, [pc, #24]	; 9218 <fast_irq_handler_addr>

000091fc <reset_handler_addr>:
    91fc:	00008868 	.word	0x00008868

00009200 <undefined_instruction_handler_addr>:
    9200:	000088c0 	.word	0x000088c0

00009204 <software_interrupt_handler_addr>:
    9204:	000088d0 	.word	0x000088d0

00009208 <prefetch_abort_handler_addr>:
    9208:	00008888 	.word	0x00008888

0000920c <data_abort_handler_addr>:
    920c:	000088a4 	.word	0x000088a4

00009210 <unused_handler_addr>:
    9210:	00008868 	.word	0x00008868

00009214 <irq_handler_addr>:
    9214:	00009240 	.word	0x00009240

00009218 <fast_irq_handler_addr>:
    9218:	00009240 	.word	0x00009240

0000921c <move_exception_vector>:
    921c:	e92d03f0 	push	{r4, r5, r6, r7, r8, r9}
    9220:	e59f0048 	ldr	r0, [pc, #72]	; 9270 <irq_handler_asm_wrapper+0x30>
    9224:	e3a01000 	mov	r1, #0, 0
    9228:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    922c:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    9230:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    9234:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    9238:	e8bd03f0 	pop	{r4, r5, r6, r7, r8, r9}
    923c:	e12fff3e 	blx	lr

00009240 <irq_handler_asm_wrapper>:
    9240:	e24ee004 	sub	lr, lr, #4, 0
    9244:	f96d0513 	srsdb	sp!, #19
    9248:	f10e00d3 	cpsid	if,#19
    924c:	e92d500f 	push	{r0, r1, r2, r3, ip, lr}
    9250:	e20d1004 	and	r1, sp, #4, 0
    9254:	e04dd001 	sub	sp, sp, r1
    9258:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    925c:	ebfffda1 	bl	88e8 <irq_handler>
    9260:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    9264:	e08dd001 	add	sp, sp, r1
    9268:	e8bd500f 	pop	{r0, r1, r2, r3, ip, lr}
    926c:	f8bd0a00 	rfeia	sp!
    9270:	000091dc 	.word	0x000091dc

00009274 <_ZStlsRSt7ostreamm>:
    9274:	e92d4010 	push	{r4, lr}
    9278:	e1a04000 	mov	r4, r0
    927c:	e1a00001 	mov	r0, r1
    9280:	ebfffce8 	bl	8628 <_ZN2os7console6putu32Em>
    9284:	e1a00004 	mov	r0, r4
    9288:	e8bd8010 	pop	{r4, pc}

0000928c <_ZStlsRSt7ostreaml>:
    928c:	e92d4010 	push	{r4, lr}
    9290:	e1a04000 	mov	r4, r0
    9294:	e1a00001 	mov	r0, r1
    9298:	ebfffcf7 	bl	867c <_ZN2os7console6puti32El>
    929c:	e1a00004 	mov	r0, r4
    92a0:	e8bd8010 	pop	{r4, pc}

000092a4 <_ZStlsRSt7ostreamt>:
    92a4:	e92d4010 	push	{r4, lr}
    92a8:	e1a04000 	mov	r4, r0
    92ac:	e1a00001 	mov	r0, r1
    92b0:	ebfffcdc 	bl	8628 <_ZN2os7console6putu32Em>
    92b4:	e1a00004 	mov	r0, r4
    92b8:	e8bd8010 	pop	{r4, pc}

000092bc <_ZStlsRSt7ostreams>:
    92bc:	e92d4010 	push	{r4, lr}
    92c0:	e1a04000 	mov	r4, r0
    92c4:	e1a00001 	mov	r0, r1
    92c8:	ebfffceb 	bl	867c <_ZN2os7console6puti32El>
    92cc:	e1a00004 	mov	r0, r4
    92d0:	e8bd8010 	pop	{r4, pc}

000092d4 <_ZStlsRSt7ostreamc>:
    92d4:	e92d4010 	push	{r4, lr}
    92d8:	e1a04000 	mov	r4, r0
    92dc:	e1a00001 	mov	r0, r1
    92e0:	ebfffc69 	bl	848c <_ZN2os7console4putcEc>
    92e4:	e1a00004 	mov	r0, r4
    92e8:	e8bd8010 	pop	{r4, pc}

000092ec <_ZStlsRSt7ostreamPKc>:
    92ec:	e92d4010 	push	{r4, lr}
    92f0:	e1a04000 	mov	r4, r0
    92f4:	e1a00001 	mov	r0, r1
    92f8:	ebfffc77 	bl	84dc <_ZN2os7console4putsEPKc>
    92fc:	e1a00004 	mov	r0, r4
    9300:	e8bd8010 	pop	{r4, pc}

00009304 <_ZStlsRSt7ostreamPFS0_S0_E>:
    9304:	e12fff11 	bx	r1

00009308 <_ZSt4endlRSt7ostream>:
    9308:	e92d4010 	push	{r4, lr}
    930c:	e1a04000 	mov	r4, r0
    9310:	e3a0000a 	mov	r0, #10, 0
    9314:	ebfffc5c 	bl	848c <_ZN2os7console4putcEc>
    9318:	e1a00004 	mov	r0, r4
    931c:	e8bd8010 	pop	{r4, pc}

00009320 <_Z13second_threadv>:
    9320:	e59f30bc 	ldr	r3, [pc, #188]	; 93e4 <_Z13second_threadv+0xc4>
    9324:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9328:	e3a0a000 	mov	sl, #0, 0
    932c:	e08f3003 	add	r3, pc, r3
    9330:	e30896a0 	movw	r9, #34464	; 0x86a0
    9334:	e59f00ac 	ldr	r0, [pc, #172]	; 93e8 <_Z13second_threadv+0xc8>
    9338:	e24dd00c 	sub	sp, sp, #12, 0
    933c:	e59f10a8 	ldr	r1, [pc, #168]	; 93ec <_Z13second_threadv+0xcc>
    9340:	e1a0800a 	mov	r8, sl
    9344:	e59f20a4 	ldr	r2, [pc, #164]	; 93f0 <_Z13second_threadv+0xd0>
    9348:	e59f50a4 	ldr	r5, [pc, #164]	; 93f4 <_Z13second_threadv+0xd4>
    934c:	e7934000 	ldr	r4, [r3, r0]
    9350:	e7937001 	ldr	r7, [r3, r1]
    9354:	e7936002 	ldr	r6, [r3, r2]
    9358:	e3409001 	movt	r9, #1
    935c:	e08f5005 	add	r5, pc, r5
    9360:	e58d8004 	str	r8, [sp, #4]
    9364:	e59d3004 	ldr	r3, [sp, #4]
    9368:	e1530009 	cmp	r3, r9
    936c:	2a000005 	bcs	9388 <_Z13second_threadv+0x68>
    9370:	e59d3004 	ldr	r3, [sp, #4]
    9374:	e2833001 	add	r3, r3, #1, 0
    9378:	e58d3004 	str	r3, [sp, #4]
    937c:	e59d3004 	ldr	r3, [sp, #4]
    9380:	e1530009 	cmp	r3, r9
    9384:	3afffff9 	bcc	9370 <_Z13second_threadv+0x50>
    9388:	e1a00004 	mov	r0, r4
    938c:	ebfffdc8 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9390:	e1a01005 	mov	r1, r5
    9394:	e1a00007 	mov	r0, r7
    9398:	ebffffd3 	bl	92ec <_ZStlsRSt7ostreamPKc>
    939c:	e1a0100a 	mov	r1, sl
    93a0:	e28aa001 	add	sl, sl, #1, 0
    93a4:	ebffffb2 	bl	9274 <_ZStlsRSt7ostreamm>
    93a8:	e3a01020 	mov	r1, #32, 0
    93ac:	ebffffc8 	bl	92d4 <_ZStlsRSt7ostreamc>
    93b0:	e1a0b000 	mov	fp, r0
    93b4:	ebffff81 	bl	91c0 <get_sp>
    93b8:	e1a01000 	mov	r1, r0
    93bc:	e1a0000b 	mov	r0, fp
    93c0:	ebffffab 	bl	9274 <_ZStlsRSt7ostreamm>
    93c4:	e1a01006 	mov	r1, r6
    93c8:	ebffffcd 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    93cc:	e1a00004 	mov	r0, r4
    93d0:	ebfffdc0 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    93d4:	e35a0015 	cmp	sl, #21, 0
    93d8:	1affffe0 	bne	9360 <_Z13second_threadv+0x40>
    93dc:	e28dd00c 	add	sp, sp, #12, 0
    93e0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    93e4:	00002ce0 	.word	0x00002ce0
    93e8:	00000010 	.word	0x00000010
    93ec:	00000058 	.word	0x00000058
    93f0:	00000000 	.word	0x00000000
    93f4:	00001e30 	.word	0x00001e30

000093f8 <_Z12third_threadv>:
    93f8:	e59f30e0 	ldr	r3, [pc, #224]	; 94e0 <_Z12third_threadv+0xe8>
    93fc:	e59f20e0 	ldr	r2, [pc, #224]	; 94e4 <_Z12third_threadv+0xec>
    9400:	e08f3003 	add	r3, pc, r3
    9404:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    9408:	e24dd01c 	sub	sp, sp, #28, 0
    940c:	e7932002 	ldr	r2, [r3, r2]
    9410:	e3a05000 	mov	r5, #0, 0
    9414:	e59f10cc 	ldr	r1, [pc, #204]	; 94e8 <_Z12third_threadv+0xf0>
    9418:	e30846a0 	movw	r4, #34464	; 0x86a0
    941c:	e58d2008 	str	r2, [sp, #8]
    9420:	e1a08005 	mov	r8, r5
    9424:	e59f20c0 	ldr	r2, [pc, #192]	; 94ec <_Z12third_threadv+0xf4>
    9428:	e7931001 	ldr	r1, [r3, r1]
    942c:	e59f70bc 	ldr	r7, [pc, #188]	; 94f0 <_Z12third_threadv+0xf8>
    9430:	e58d100c 	str	r1, [sp, #12]
    9434:	e3404001 	movt	r4, #1
    9438:	e7936002 	ldr	r6, [r3, r2]
    943c:	e08f7007 	add	r7, pc, r7
    9440:	e58d8014 	str	r8, [sp, #20]
    9444:	e59d3014 	ldr	r3, [sp, #20]
    9448:	e1530004 	cmp	r3, r4
    944c:	2a000005 	bcs	9468 <_Z12third_threadv+0x70>
    9450:	e59d3014 	ldr	r3, [sp, #20]
    9454:	e2833001 	add	r3, r3, #1, 0
    9458:	e58d3014 	str	r3, [sp, #20]
    945c:	e59d3014 	ldr	r3, [sp, #20]
    9460:	e1530004 	cmp	r3, r4
    9464:	3afffff9 	bcc	9450 <_Z12third_threadv+0x58>
    9468:	e1a00006 	mov	r0, r6
    946c:	ebfffd90 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9470:	e59d0008 	ldr	r0, [sp, #8]
    9474:	e1a01007 	mov	r1, r7
    9478:	ebffff9b 	bl	92ec <_ZStlsRSt7ostreamPKc>
    947c:	e1a01005 	mov	r1, r5
    9480:	e2855001 	add	r5, r5, #1, 0
    9484:	ebffff7a 	bl	9274 <_ZStlsRSt7ostreamm>
    9488:	e3a01020 	mov	r1, #32, 0
    948c:	ebffff90 	bl	92d4 <_ZStlsRSt7ostreamc>
    9490:	e58d0004 	str	r0, [sp, #4]
    9494:	e1a09000 	mov	r9, r0
    9498:	ebffff48 	bl	91c0 <get_sp>
    949c:	e1a01000 	mov	r1, r0
    94a0:	e1a00009 	mov	r0, r9
    94a4:	ebffff72 	bl	9274 <_ZStlsRSt7ostreamm>
    94a8:	e59d100c 	ldr	r1, [sp, #12]
    94ac:	ebffff94 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    94b0:	e1a00006 	mov	r0, r6
    94b4:	ebfffd87 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    94b8:	e3550015 	cmp	r5, #21, 0
    94bc:	1affffdf 	bne	9440 <_Z12third_threadv+0x48>
    94c0:	e59f102c 	ldr	r1, [pc, #44]	; 94f4 <_Z12third_threadv+0xfc>
    94c4:	e59d0008 	ldr	r0, [sp, #8]
    94c8:	e08f1001 	add	r1, pc, r1
    94cc:	ebffff86 	bl	92ec <_ZStlsRSt7ostreamPKc>
    94d0:	e59d100c 	ldr	r1, [sp, #12]
    94d4:	e28dd01c 	add	sp, sp, #28, 0
    94d8:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
    94dc:	eaffff88 	b	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    94e0:	00002c0c 	.word	0x00002c0c
    94e4:	00000058 	.word	0x00000058
    94e8:	00000000 	.word	0x00000000
    94ec:	00000010 	.word	0x00000010
    94f0:	00001d60 	.word	0x00001d60
    94f4:	00001ce4 	.word	0x00001ce4

000094f8 <_Z13fourth_threadv>:
    94f8:	e59f30bc 	ldr	r3, [pc, #188]	; 95bc <_Z13fourth_threadv+0xc4>
    94fc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9500:	e3a0a000 	mov	sl, #0, 0
    9504:	e08f3003 	add	r3, pc, r3
    9508:	e30896a0 	movw	r9, #34464	; 0x86a0
    950c:	e59f00ac 	ldr	r0, [pc, #172]	; 95c0 <_Z13fourth_threadv+0xc8>
    9510:	e24dd00c 	sub	sp, sp, #12, 0
    9514:	e59f10a8 	ldr	r1, [pc, #168]	; 95c4 <_Z13fourth_threadv+0xcc>
    9518:	e1a0800a 	mov	r8, sl
    951c:	e59f20a4 	ldr	r2, [pc, #164]	; 95c8 <_Z13fourth_threadv+0xd0>
    9520:	e59f50a4 	ldr	r5, [pc, #164]	; 95cc <_Z13fourth_threadv+0xd4>
    9524:	e7934000 	ldr	r4, [r3, r0]
    9528:	e7937001 	ldr	r7, [r3, r1]
    952c:	e7936002 	ldr	r6, [r3, r2]
    9530:	e3409001 	movt	r9, #1
    9534:	e08f5005 	add	r5, pc, r5
    9538:	e58d8004 	str	r8, [sp, #4]
    953c:	e59d3004 	ldr	r3, [sp, #4]
    9540:	e1530009 	cmp	r3, r9
    9544:	2a000005 	bcs	9560 <_Z13fourth_threadv+0x68>
    9548:	e59d3004 	ldr	r3, [sp, #4]
    954c:	e2833001 	add	r3, r3, #1, 0
    9550:	e58d3004 	str	r3, [sp, #4]
    9554:	e59d3004 	ldr	r3, [sp, #4]
    9558:	e1530009 	cmp	r3, r9
    955c:	3afffff9 	bcc	9548 <_Z13fourth_threadv+0x50>
    9560:	e1a00004 	mov	r0, r4
    9564:	ebfffd52 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9568:	e1a01005 	mov	r1, r5
    956c:	e1a00007 	mov	r0, r7
    9570:	ebffff5d 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9574:	e1a0100a 	mov	r1, sl
    9578:	e28aa001 	add	sl, sl, #1, 0
    957c:	ebffff3c 	bl	9274 <_ZStlsRSt7ostreamm>
    9580:	e3a01020 	mov	r1, #32, 0
    9584:	ebffff52 	bl	92d4 <_ZStlsRSt7ostreamc>
    9588:	e1a0b000 	mov	fp, r0
    958c:	ebffff0b 	bl	91c0 <get_sp>
    9590:	e1a01000 	mov	r1, r0
    9594:	e1a0000b 	mov	r0, fp
    9598:	ebffff35 	bl	9274 <_ZStlsRSt7ostreamm>
    959c:	e1a01006 	mov	r1, r6
    95a0:	ebffff57 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    95a4:	e1a00004 	mov	r0, r4
    95a8:	ebfffd4a 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    95ac:	e35a0015 	cmp	sl, #21, 0
    95b0:	1affffe0 	bne	9538 <_Z13fourth_threadv+0x40>
    95b4:	e28dd00c 	add	sp, sp, #12, 0
    95b8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    95bc:	00002b08 	.word	0x00002b08
    95c0:	00000010 	.word	0x00000010
    95c4:	00000058 	.word	0x00000058
    95c8:	00000000 	.word	0x00000000
    95cc:	00001c8c 	.word	0x00001c8c

000095d0 <_Z11main_threadv>:
    95d0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    95d4:	e24dd014 	sub	sp, sp, #20, 0
    95d8:	e59f5408 	ldr	r5, [pc, #1032]	; 99e8 <_Z11main_threadv+0x418>
    95dc:	ebfffc62 	bl	876c <_ZN2os8this_cpuEv>
    95e0:	e5906004 	ldr	r6, [r0, #4]
    95e4:	e08f5005 	add	r5, pc, r5
    95e8:	e5963084 	ldr	r3, [r6, #132]	; 0x84
    95ec:	e3530005 	cmp	r3, #5, 0
    95f0:	0a0000f8 	beq	99d8 <_Z11main_threadv+0x408>
    95f4:	e2868098 	add	r8, r6, #152, 0	; 0x98
    95f8:	e286400c 	add	r4, r6, #12, 0
    95fc:	e1a00008 	mov	r0, r8
    9600:	e2869084 	add	r9, r6, #132, 0	; 0x84
    9604:	ebfffd2a 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9608:	ea000002 	b	9618 <_Z11main_threadv+0x48>
    960c:	e2844018 	add	r4, r4, #24, 0
    9610:	e1590004 	cmp	r9, r4
    9614:	0a0000f1 	beq	99e0 <_Z11main_threadv+0x410>
    9618:	e1a00004 	mov	r0, r4
    961c:	e1a07004 	mov	r7, r4
    9620:	ebfffd3e 	bl	8b20 <_ZN2os6thread8thread_t8is_emptyEv>
    9624:	e3500000 	cmp	r0, #0, 0
    9628:	0afffff7 	beq	960c <_Z11main_threadv+0x3c>
    962c:	e59f33b8 	ldr	r3, [pc, #952]	; 99ec <_Z11main_threadv+0x41c>
    9630:	e3a02003 	mov	r2, #3, 0
    9634:	e5842004 	str	r2, [r4, #4]
    9638:	e28d000c 	add	r0, sp, #12, 0
    963c:	e795c003 	ldr	ip, [r5, r3]
    9640:	e3012010 	movw	r2, #4112	; 0x1010
    9644:	e5961094 	ldr	r1, [r6, #148]	; 0x94
    9648:	e59c3000 	ldr	r3, [ip]
    964c:	e283e001 	add	lr, r3, #1, 0
    9650:	e58ce000 	str	lr, [ip]
    9654:	e5843000 	str	r3, [r4]
    9658:	ebfffcd7 	bl	89bc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj>
    965c:	e5902008 	ldr	r2, [r0, #8]
    9660:	e1a03000 	mov	r3, r0
    9664:	e2422a01 	sub	r2, r2, #4096	; 0x1000
    9668:	e2422010 	sub	r2, r2, #16, 0
    966c:	e3520020 	cmp	r2, #32, 0
    9670:	9a000008 	bls	9698 <_Z11main_threadv+0xc8>
    9674:	e590c000 	ldr	ip, [r0]
    9678:	e2801a01 	add	r1, r0, #4096	; 0x1000
    967c:	e5810014 	str	r0, [r1, #20]
    9680:	e3010010 	movw	r0, #4112	; 0x1010
    9684:	e581c010 	str	ip, [r1, #16]
    9688:	e083c000 	add	ip, r3, r0
    968c:	e5830008 	str	r0, [r3, #8]
    9690:	e583c000 	str	ip, [r3]
    9694:	e5812018 	str	r2, [r1, #24]
    9698:	e2830efd 	add	r0, r3, #4048	; 0xfd0
    969c:	e2833010 	add	r3, r3, #16, 0
    96a0:	e584300c 	str	r3, [r4, #12]
    96a4:	e2800008 	add	r0, r0, #8, 0
    96a8:	e5840008 	str	r0, [r4, #8]
    96ac:	e3a01038 	mov	r1, #56, 0	; 0x38
    96b0:	ebfffcae 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    96b4:	e59f3334 	ldr	r3, [pc, #820]	; 99f0 <_Z11main_threadv+0x420>
    96b8:	e3a0c013 	mov	ip, #19, 0
    96bc:	e5962084 	ldr	r2, [r6, #132]	; 0x84
    96c0:	e1a00008 	mov	r0, r8
    96c4:	e795e003 	ldr	lr, [r5, r3]
    96c8:	e5963088 	ldr	r3, [r6, #136]	; 0x88
    96cc:	e2822001 	add	r2, r2, #1, 0
    96d0:	e5941008 	ldr	r1, [r4, #8]
    96d4:	e2833001 	add	r3, r3, #1, 0
    96d8:	e581e034 	str	lr, [r1, #52]	; 0x34
    96dc:	e581c030 	str	ip, [r1, #48]	; 0x30
    96e0:	e1c628f4 	strd	r2, [r6, #132]	; 0x84
    96e4:	ebfffcfb 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    96e8:	ebfffc1f 	bl	876c <_ZN2os8this_cpuEv>
    96ec:	e5906004 	ldr	r6, [r0, #4]
    96f0:	e5963084 	ldr	r3, [r6, #132]	; 0x84
    96f4:	e3530005 	cmp	r3, #5, 0
    96f8:	0a0000b4 	beq	99d0 <_Z11main_threadv+0x400>
    96fc:	e2869098 	add	r9, r6, #152, 0	; 0x98
    9700:	e286400c 	add	r4, r6, #12, 0
    9704:	e1a00009 	mov	r0, r9
    9708:	e2868084 	add	r8, r6, #132, 0	; 0x84
    970c:	ebfffce8 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9710:	ea000002 	b	9720 <_Z11main_threadv+0x150>
    9714:	e2844018 	add	r4, r4, #24, 0
    9718:	e1580004 	cmp	r8, r4
    971c:	0a0000af 	beq	99e0 <_Z11main_threadv+0x410>
    9720:	e1a00004 	mov	r0, r4
    9724:	e1a0a004 	mov	sl, r4
    9728:	ebfffcfc 	bl	8b20 <_ZN2os6thread8thread_t8is_emptyEv>
    972c:	e3500000 	cmp	r0, #0, 0
    9730:	0afffff7 	beq	9714 <_Z11main_threadv+0x144>
    9734:	e59f32b0 	ldr	r3, [pc, #688]	; 99ec <_Z11main_threadv+0x41c>
    9738:	e3a02003 	mov	r2, #3, 0
    973c:	e5842004 	str	r2, [r4, #4]
    9740:	e28d000c 	add	r0, sp, #12, 0
    9744:	e795c003 	ldr	ip, [r5, r3]
    9748:	e3012010 	movw	r2, #4112	; 0x1010
    974c:	e5961094 	ldr	r1, [r6, #148]	; 0x94
    9750:	e59c3000 	ldr	r3, [ip]
    9754:	e283e001 	add	lr, r3, #1, 0
    9758:	e58ce000 	str	lr, [ip]
    975c:	e5843000 	str	r3, [r4]
    9760:	ebfffc95 	bl	89bc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj>
    9764:	e5902008 	ldr	r2, [r0, #8]
    9768:	e1a03000 	mov	r3, r0
    976c:	e2422a01 	sub	r2, r2, #4096	; 0x1000
    9770:	e2422010 	sub	r2, r2, #16, 0
    9774:	e3520020 	cmp	r2, #32, 0
    9778:	9a000008 	bls	97a0 <_Z11main_threadv+0x1d0>
    977c:	e590c000 	ldr	ip, [r0]
    9780:	e2801a01 	add	r1, r0, #4096	; 0x1000
    9784:	e5810014 	str	r0, [r1, #20]
    9788:	e3010010 	movw	r0, #4112	; 0x1010
    978c:	e581c010 	str	ip, [r1, #16]
    9790:	e083c000 	add	ip, r3, r0
    9794:	e5830008 	str	r0, [r3, #8]
    9798:	e583c000 	str	ip, [r3]
    979c:	e5812018 	str	r2, [r1, #24]
    97a0:	e2830efd 	add	r0, r3, #4048	; 0xfd0
    97a4:	e2833010 	add	r3, r3, #16, 0
    97a8:	e584300c 	str	r3, [r4, #12]
    97ac:	e2800008 	add	r0, r0, #8, 0
    97b0:	e5840008 	str	r0, [r4, #8]
    97b4:	e3a01038 	mov	r1, #56, 0	; 0x38
    97b8:	ebfffc6c 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    97bc:	e59f3230 	ldr	r3, [pc, #560]	; 99f4 <_Z11main_threadv+0x424>
    97c0:	e3a0c013 	mov	ip, #19, 0
    97c4:	e5962084 	ldr	r2, [r6, #132]	; 0x84
    97c8:	e1a00009 	mov	r0, r9
    97cc:	e795e003 	ldr	lr, [r5, r3]
    97d0:	e5963088 	ldr	r3, [r6, #136]	; 0x88
    97d4:	e2822001 	add	r2, r2, #1, 0
    97d8:	e5941008 	ldr	r1, [r4, #8]
    97dc:	e2833001 	add	r3, r3, #1, 0
    97e0:	e581e034 	str	lr, [r1, #52]	; 0x34
    97e4:	e581c030 	str	ip, [r1, #48]	; 0x30
    97e8:	e1c628f4 	strd	r2, [r6, #132]	; 0x84
    97ec:	ebfffcb9 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    97f0:	ebfffbdd 	bl	876c <_ZN2os8this_cpuEv>
    97f4:	e5906004 	ldr	r6, [r0, #4]
    97f8:	e5963084 	ldr	r3, [r6, #132]	; 0x84
    97fc:	e3530005 	cmp	r3, #5, 0
    9800:	0a00006f 	beq	99c4 <_Z11main_threadv+0x3f4>
    9804:	e286b098 	add	fp, r6, #152, 0	; 0x98
    9808:	e286400c 	add	r4, r6, #12, 0
    980c:	e1a0000b 	mov	r0, fp
    9810:	e2868084 	add	r8, r6, #132, 0	; 0x84
    9814:	ebfffca6 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9818:	ea000002 	b	9828 <_Z11main_threadv+0x258>
    981c:	e2844018 	add	r4, r4, #24, 0
    9820:	e1580004 	cmp	r8, r4
    9824:	0a00006d 	beq	99e0 <_Z11main_threadv+0x410>
    9828:	e58d4004 	str	r4, [sp, #4]
    982c:	e1a00004 	mov	r0, r4
    9830:	ebfffcba 	bl	8b20 <_ZN2os6thread8thread_t8is_emptyEv>
    9834:	e3500000 	cmp	r0, #0, 0
    9838:	0afffff7 	beq	981c <_Z11main_threadv+0x24c>
    983c:	e59f31a8 	ldr	r3, [pc, #424]	; 99ec <_Z11main_threadv+0x41c>
    9840:	e3a02003 	mov	r2, #3, 0
    9844:	e5842004 	str	r2, [r4, #4]
    9848:	e28d000c 	add	r0, sp, #12, 0
    984c:	e795c003 	ldr	ip, [r5, r3]
    9850:	e3012010 	movw	r2, #4112	; 0x1010
    9854:	e5961094 	ldr	r1, [r6, #148]	; 0x94
    9858:	e59c3000 	ldr	r3, [ip]
    985c:	e283e001 	add	lr, r3, #1, 0
    9860:	e58ce000 	str	lr, [ip]
    9864:	e5843000 	str	r3, [r4]
    9868:	ebfffc53 	bl	89bc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj>
    986c:	e5902008 	ldr	r2, [r0, #8]
    9870:	e1a03000 	mov	r3, r0
    9874:	e2422a01 	sub	r2, r2, #4096	; 0x1000
    9878:	e2422010 	sub	r2, r2, #16, 0
    987c:	e3520020 	cmp	r2, #32, 0
    9880:	9a000008 	bls	98a8 <_Z11main_threadv+0x2d8>
    9884:	e590c000 	ldr	ip, [r0]
    9888:	e2801a01 	add	r1, r0, #4096	; 0x1000
    988c:	e5810014 	str	r0, [r1, #20]
    9890:	e3010010 	movw	r0, #4112	; 0x1010
    9894:	e581c010 	str	ip, [r1, #16]
    9898:	e083c000 	add	ip, r3, r0
    989c:	e5830008 	str	r0, [r3, #8]
    98a0:	e583c000 	str	ip, [r3]
    98a4:	e5812018 	str	r2, [r1, #24]
    98a8:	e2830efd 	add	r0, r3, #4048	; 0xfd0
    98ac:	e2833010 	add	r3, r3, #16, 0
    98b0:	e584300c 	str	r3, [r4, #12]
    98b4:	e2800008 	add	r0, r0, #8, 0
    98b8:	e5840008 	str	r0, [r4, #8]
    98bc:	e3a01038 	mov	r1, #56, 0	; 0x38
    98c0:	ebfffc2a 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    98c4:	e59f312c 	ldr	r3, [pc, #300]	; 99f8 <_Z11main_threadv+0x428>
    98c8:	e3a01013 	mov	r1, #19, 0
    98cc:	e5962084 	ldr	r2, [r6, #132]	; 0x84
    98d0:	e1a0000b 	mov	r0, fp
    98d4:	e795e003 	ldr	lr, [r5, r3]
    98d8:	e5963088 	ldr	r3, [r6, #136]	; 0x88
    98dc:	e2822001 	add	r2, r2, #1, 0
    98e0:	e594c008 	ldr	ip, [r4, #8]
    98e4:	e2833001 	add	r3, r3, #1, 0
    98e8:	e58ce034 	str	lr, [ip, #52]	; 0x34
    98ec:	e58c1030 	str	r1, [ip, #48]	; 0x30
    98f0:	e1c628f4 	strd	r2, [r6, #132]	; 0x84
    98f4:	ebfffc77 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    98f8:	e59f80fc 	ldr	r8, [pc, #252]	; 99fc <_Z11main_threadv+0x42c>
    98fc:	e1a00007 	mov	r0, r7
    9900:	e3a0b000 	mov	fp, #0, 0
    9904:	ebfffcb8 	bl	8bec <_ZN2os6thread8thread_t4joinEv>
    9908:	e08f8008 	add	r8, pc, r8
    990c:	e1a0000a 	mov	r0, sl
    9910:	e308a6a0 	movw	sl, #34464	; 0x86a0
    9914:	ebfffcb4 	bl	8bec <_ZN2os6thread8thread_t4joinEv>
    9918:	e59f10e0 	ldr	r1, [pc, #224]	; 9a00 <_Z11main_threadv+0x430>
    991c:	e1a0700b 	mov	r7, fp
    9920:	e59f20dc 	ldr	r2, [pc, #220]	; 9a04 <_Z11main_threadv+0x434>
    9924:	e59f30dc 	ldr	r3, [pc, #220]	; 9a08 <_Z11main_threadv+0x438>
    9928:	e7954001 	ldr	r4, [r5, r1]
    992c:	e7956002 	ldr	r6, [r5, r2]
    9930:	e340a001 	movt	sl, #1
    9934:	e7955003 	ldr	r5, [r5, r3]
    9938:	e58d700c 	str	r7, [sp, #12]
    993c:	e59d300c 	ldr	r3, [sp, #12]
    9940:	e153000a 	cmp	r3, sl
    9944:	2a000005 	bcs	9960 <_Z11main_threadv+0x390>
    9948:	e59d300c 	ldr	r3, [sp, #12]
    994c:	e2833001 	add	r3, r3, #1, 0
    9950:	e58d300c 	str	r3, [sp, #12]
    9954:	e59d300c 	ldr	r3, [sp, #12]
    9958:	e153000a 	cmp	r3, sl
    995c:	3afffff9 	bcc	9948 <_Z11main_threadv+0x378>
    9960:	e1a00004 	mov	r0, r4
    9964:	ebfffc52 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9968:	e1a01008 	mov	r1, r8
    996c:	e1a00006 	mov	r0, r6
    9970:	ebfffe5d 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9974:	e1a0100b 	mov	r1, fp
    9978:	e28bb001 	add	fp, fp, #1, 0
    997c:	ebfffe3c 	bl	9274 <_ZStlsRSt7ostreamm>
    9980:	e3a01020 	mov	r1, #32, 0
    9984:	ebfffe52 	bl	92d4 <_ZStlsRSt7ostreamc>
    9988:	e1a09000 	mov	r9, r0
    998c:	ebfffe0b 	bl	91c0 <get_sp>
    9990:	e1a01000 	mov	r1, r0
    9994:	e1a00009 	mov	r0, r9
    9998:	ebfffe35 	bl	9274 <_ZStlsRSt7ostreamm>
    999c:	e1a01005 	mov	r1, r5
    99a0:	ebfffe57 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    99a4:	e1a00004 	mov	r0, r4
    99a8:	ebfffc4a 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    99ac:	e35b0029 	cmp	fp, #41, 0	; 0x29
    99b0:	1affffe0 	bne	9938 <_Z11main_threadv+0x368>
    99b4:	e59d0004 	ldr	r0, [sp, #4]
    99b8:	ebfffc8b 	bl	8bec <_ZN2os6thread8thread_t4joinEv>
    99bc:	e28dd014 	add	sp, sp, #20, 0
    99c0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    99c4:	e3a03000 	mov	r3, #0, 0
    99c8:	e58d3004 	str	r3, [sp, #4]
    99cc:	eaffffc9 	b	98f8 <_Z11main_threadv+0x328>
    99d0:	e3a0a000 	mov	sl, #0, 0
    99d4:	eaffff85 	b	97f0 <_Z11main_threadv+0x220>
    99d8:	e3a07000 	mov	r7, #0, 0
    99dc:	eaffff41 	b	96e8 <_Z11main_threadv+0x118>
    99e0:	e5800004 	str	r0, [r0, #4]
    99e4:	e7f000f0 	udf	#0
    99e8:	00002a28 	.word	0x00002a28
    99ec:	00000028 	.word	0x00000028
    99f0:	0000005c 	.word	0x0000005c
    99f4:	00000034 	.word	0x00000034
    99f8:	00000030 	.word	0x00000030
    99fc:	000018c8 	.word	0x000018c8
    9a00:	00000010 	.word	0x00000010
    9a04:	00000058 	.word	0x00000058
    9a08:	00000000 	.word	0x00000000

00009a0c <_Z11core0_entrymi>:
    9a0c:	e92d4070 	push	{r4, r5, r6, lr}
    9a10:	e1a06001 	mov	r6, r1
    9a14:	e59f4090 	ldr	r4, [pc, #144]	; 9aac <_Z11core0_entrymi+0xa0>
    9a18:	e1a05000 	mov	r5, r0
    9a1c:	ebfffb44 	bl	8734 <_ZN2os8cpu_initEm>
    9a20:	e08f4004 	add	r4, pc, r4
    9a24:	e3a01000 	mov	r1, #0, 0
    9a28:	e1a02006 	mov	r2, r6
    9a2c:	e1a00001 	mov	r0, r1
    9a30:	ebfffd58 	bl	8f98 <_ZN2os6kernel4initEiii>
    9a34:	ebfffb6d 	bl	87f0 <_ZN2os10interrupts4initEv>
    9a38:	e59f3070 	ldr	r3, [pc, #112]	; 9ab0 <_Z11core0_entrymi+0xa4>
    9a3c:	e7940003 	ldr	r0, [r4, r3]
    9a40:	ebfffc2a 	bl	8af0 <_ZN2os4sync10signallock6signalEv>
    9a44:	e59f3068 	ldr	r3, [pc, #104]	; 9ab4 <_Z11core0_entrymi+0xa8>
    9a48:	e7940003 	ldr	r0, [r4, r3]
    9a4c:	ebfffc27 	bl	8af0 <_ZN2os4sync10signallock6signalEv>
    9a50:	e59f3060 	ldr	r3, [pc, #96]	; 9ab8 <_Z11core0_entrymi+0xac>
    9a54:	e7940003 	ldr	r0, [r4, r3]
    9a58:	ebfffc24 	bl	8af0 <_ZN2os4sync10signallock6signalEv>
    9a5c:	e59f3058 	ldr	r3, [pc, #88]	; 9abc <_Z11core0_entrymi+0xb0>
    9a60:	e7946003 	ldr	r6, [r4, r3]
    9a64:	e1a00006 	mov	r0, r6
    9a68:	ebfffc11 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9a6c:	e59f304c 	ldr	r3, [pc, #76]	; 9ac0 <_Z11core0_entrymi+0xb4>
    9a70:	e59f104c 	ldr	r1, [pc, #76]	; 9ac4 <_Z11core0_entrymi+0xb8>
    9a74:	e7940003 	ldr	r0, [r4, r3]
    9a78:	e08f1001 	add	r1, pc, r1
    9a7c:	ebfffe1a 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9a80:	e1a01005 	mov	r1, r5
    9a84:	ebfffdfa 	bl	9274 <_ZStlsRSt7ostreamm>
    9a88:	e59f1038 	ldr	r1, [pc, #56]	; 9ac8 <_Z11core0_entrymi+0xbc>
    9a8c:	e08f1001 	add	r1, pc, r1
    9a90:	ebfffe15 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9a94:	e59f3030 	ldr	r3, [pc, #48]	; 9acc <_Z11core0_entrymi+0xc0>
    9a98:	e7941003 	ldr	r1, [r4, r3]
    9a9c:	ebfffe18 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    9aa0:	e1a00006 	mov	r0, r6
    9aa4:	e8bd4070 	pop	{r4, r5, r6, lr}
    9aa8:	eafffc0a 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9aac:	000025ec 	.word	0x000025ec
    9ab0:	0000002c 	.word	0x0000002c
    9ab4:	00000060 	.word	0x00000060
    9ab8:	00000044 	.word	0x00000044
    9abc:	00000010 	.word	0x00000010
    9ac0:	00000058 	.word	0x00000058
    9ac4:	00001768 	.word	0x00001768
    9ac8:	0000175c 	.word	0x0000175c
    9acc:	00000000 	.word	0x00000000

00009ad0 <_Z7handlerm>:
    9ad0:	e92d4070 	push	{r4, r5, r6, lr}
    9ad4:	e1a05000 	mov	r5, r0
    9ad8:	e59f4054 	ldr	r4, [pc, #84]	; 9b34 <_Z7handlerm+0x64>
    9adc:	e59f3054 	ldr	r3, [pc, #84]	; 9b38 <_Z7handlerm+0x68>
    9ae0:	e08f4004 	add	r4, pc, r4
    9ae4:	e7946003 	ldr	r6, [r4, r3]
    9ae8:	e1a00006 	mov	r0, r6
    9aec:	ebfffbf0 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9af0:	e59f3044 	ldr	r3, [pc, #68]	; 9b3c <_Z7handlerm+0x6c>
    9af4:	e59f1044 	ldr	r1, [pc, #68]	; 9b40 <_Z7handlerm+0x70>
    9af8:	e7940003 	ldr	r0, [r4, r3]
    9afc:	e08f1001 	add	r1, pc, r1
    9b00:	ebfffdf9 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9b04:	e59f3038 	ldr	r3, [pc, #56]	; 9b44 <_Z7handlerm+0x74>
    9b08:	e7943003 	ldr	r3, [r4, r3]
    9b0c:	e7931185 	ldr	r1, [r3, r5, lsl #3]
    9b10:	ebfffdd7 	bl	9274 <_ZStlsRSt7ostreamm>
    9b14:	e59f302c 	ldr	r3, [pc, #44]	; 9b48 <_Z7handlerm+0x78>
    9b18:	e7941003 	ldr	r1, [r4, r3]
    9b1c:	ebfffdf8 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    9b20:	e1a00006 	mov	r0, r6
    9b24:	ebfffbeb 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9b28:	e8bd4070 	pop	{r4, r5, r6, lr}
    9b2c:	e3a00ffa 	mov	r0, #1000	; 0x3e8
    9b30:	eafffc8f 	b	8d74 <_ZN2os5timer3setEm>
    9b34:	0000252c 	.word	0x0000252c
    9b38:	00000010 	.word	0x00000010
    9b3c:	00000058 	.word	0x00000058
    9b40:	000016f8 	.word	0x000016f8
    9b44:	0000003c 	.word	0x0000003c
    9b48:	00000000 	.word	0x00000000

00009b4c <_Z11core1_entrym>:
    9b4c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9b50:	e24dd0b4 	sub	sp, sp, #180, 0	; 0xb4
    9b54:	e59f7490 	ldr	r7, [pc, #1168]	; 9fec <_Z11core1_entrym+0x4a0>
    9b58:	e1a05000 	mov	r5, r0
    9b5c:	e28da0ac 	add	sl, sp, #172, 0	; 0xac
    9b60:	ebfffaf3 	bl	8734 <_ZN2os8cpu_initEm>
    9b64:	e08f7007 	add	r7, pc, r7
    9b68:	e28d8020 	add	r8, sp, #32, 0
    9b6c:	e59f347c 	ldr	r3, [pc, #1148]	; 9ff0 <_Z11core1_entrym+0x4a4>
    9b70:	e3a09000 	mov	r9, #0, 0
    9b74:	e1a0b009 	mov	fp, r9
    9b78:	e7970003 	ldr	r0, [r7, r3]
    9b7c:	ebfffbde 	bl	8afc <_ZN2os4sync10signallock4waitEv>
    9b80:	e59f346c 	ldr	r3, [pc, #1132]	; 9ff4 <_Z11core1_entrym+0x4a8>
    9b84:	e7976003 	ldr	r6, [r7, r3]
    9b88:	e1a00006 	mov	r0, r6
    9b8c:	ebfffbc8 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9b90:	e59f3460 	ldr	r3, [pc, #1120]	; 9ff8 <_Z11core1_entrym+0x4ac>
    9b94:	e59f1460 	ldr	r1, [pc, #1120]	; 9ffc <_Z11core1_entrym+0x4b0>
    9b98:	e7974003 	ldr	r4, [r7, r3]
    9b9c:	e08f1001 	add	r1, pc, r1
    9ba0:	e1a00004 	mov	r0, r4
    9ba4:	ebfffdd0 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9ba8:	e1a01005 	mov	r1, r5
    9bac:	ebfffdb0 	bl	9274 <_ZStlsRSt7ostreamm>
    9bb0:	e59f1448 	ldr	r1, [pc, #1096]	; a000 <_Z11core1_entrym+0x4b4>
    9bb4:	e08f1001 	add	r1, pc, r1
    9bb8:	ebfffdcb 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9bbc:	e59f3440 	ldr	r3, [pc, #1088]	; a004 <_Z11core1_entrym+0x4b8>
    9bc0:	e7975003 	ldr	r5, [r7, r3]
    9bc4:	e1a01005 	mov	r1, r5
    9bc8:	ebfffdcd 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    9bcc:	e1a00006 	mov	r0, r6
    9bd0:	ebfffbc0 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9bd4:	ebfffb6f 	bl	8998 <_ZN2os6memory14get_kernel_endEv>
    9bd8:	e1a06000 	mov	r6, r0
    9bdc:	ebfffb74 	bl	89b4 <_ZN2os6memory15get_memory_sizeEv>
    9be0:	e1a02000 	mov	r2, r0
    9be4:	e3a01010 	mov	r1, #16, 0
    9be8:	e58d2000 	str	r2, [sp]
    9bec:	e1a00006 	mov	r0, r6
    9bf0:	ebfffb5e 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    9bf4:	e59d2000 	ldr	r2, [sp]
    9bf8:	e1a0000a 	mov	r0, sl
    9bfc:	e59f3404 	ldr	r3, [pc, #1028]	; a008 <_Z11core1_entrym+0x4bc>
    9c00:	e5862008 	str	r2, [r6, #8]
    9c04:	e3a02032 	mov	r2, #50, 0	; 0x32
    9c08:	e7973003 	ldr	r3, [r7, r3]
    9c0c:	e58d60a8 	str	r6, [sp, #168]	; 0xa8
    9c10:	e28d6014 	add	r6, sp, #20, 0
    9c14:	e58d20a4 	str	r2, [sp, #164]	; 0xa4
    9c18:	e2833008 	add	r3, r3, #8, 0
    9c1c:	e58d3014 	str	r3, [sp, #20]
    9c20:	ebfffb9d 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    9c24:	e58d90a0 	str	r9, [sp, #160]	; 0xa0
    9c28:	e1a00008 	mov	r0, r8
    9c2c:	e58d909c 	str	r9, [sp, #156]	; 0x9c
    9c30:	e3a01078 	mov	r1, #120, 0	; 0x78
    9c34:	e58d9098 	str	r9, [sp, #152]	; 0x98
    9c38:	ebfffb4c 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    9c3c:	e28d3098 	add	r3, sp, #152, 0	; 0x98
    9c40:	e58d3000 	str	r3, [sp]
    9c44:	e1a03008 	mov	r3, r8
    9c48:	e59d2000 	ldr	r2, [sp]
    9c4c:	e2833018 	add	r3, r3, #24, 0
    9c50:	e503b014 	str	fp, [r3, #-20]	; 0xffffffec
    9c54:	e1530002 	cmp	r3, r2
    9c58:	1afffffa 	bne	9c48 <_Z11core1_entrym+0xfc>
    9c5c:	ebfffac2 	bl	876c <_ZN2os8this_cpuEv>
    9c60:	e59d3098 	ldr	r3, [sp, #152]	; 0x98
    9c64:	e5806004 	str	r6, [r0, #4]
    9c68:	e3530005 	cmp	r3, #5, 0
    9c6c:	0a0000dc 	beq	9fe4 <_Z11core1_entrym+0x498>
    9c70:	e1a0000a 	mov	r0, sl
    9c74:	e1a09008 	mov	r9, r8
    9c78:	ebfffb8d 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    9c7c:	e59db000 	ldr	fp, [sp]
    9c80:	ea000002 	b	9c90 <_Z11core1_entrym+0x144>
    9c84:	e2899018 	add	r9, r9, #24, 0
    9c88:	e15b0009 	cmp	fp, r9
    9c8c:	0a0000d2 	beq	9fdc <_Z11core1_entrym+0x490>
    9c90:	e1a00009 	mov	r0, r9
    9c94:	ebfffba1 	bl	8b20 <_ZN2os6thread8thread_t8is_emptyEv>
    9c98:	e3500000 	cmp	r0, #0, 0
    9c9c:	0afffff8 	beq	9c84 <_Z11core1_entrym+0x138>
    9ca0:	e59f1364 	ldr	r1, [pc, #868]	; a00c <_Z11core1_entrym+0x4c0>
    9ca4:	e3a02003 	mov	r2, #3, 0
    9ca8:	e5892004 	str	r2, [r9, #4]
    9cac:	e28d0010 	add	r0, sp, #16, 0
    9cb0:	e797e001 	ldr	lr, [r7, r1]
    9cb4:	e3012010 	movw	r2, #4112	; 0x1010
    9cb8:	e59d10a8 	ldr	r1, [sp, #168]	; 0xa8
    9cbc:	e59ec000 	ldr	ip, [lr]
    9cc0:	e589c000 	str	ip, [r9]
    9cc4:	e28cc001 	add	ip, ip, #1, 0
    9cc8:	e58ec000 	str	ip, [lr]
    9ccc:	ebfffb3a 	bl	89bc <_ZN2os6memory11heap_policy8best_fitclEPNS0_14heap_segment_tEj>
    9cd0:	e1a02000 	mov	r2, r0
    9cd4:	e5900008 	ldr	r0, [r0, #8]
    9cd8:	e2400a01 	sub	r0, r0, #4096	; 0x1000
    9cdc:	e2400010 	sub	r0, r0, #16, 0
    9ce0:	e3500020 	cmp	r0, #32, 0
    9ce4:	9a000008 	bls	9d0c <_Z11core1_entrym+0x1c0>
    9ce8:	e592e000 	ldr	lr, [r2]
    9cec:	e2821a01 	add	r1, r2, #4096	; 0x1000
    9cf0:	e301c010 	movw	ip, #4112	; 0x1010
    9cf4:	e581e010 	str	lr, [r1, #16]
    9cf8:	e082e00c 	add	lr, r2, ip
    9cfc:	e5812014 	str	r2, [r1, #20]
    9d00:	e582c008 	str	ip, [r2, #8]
    9d04:	e582e000 	str	lr, [r2]
    9d08:	e5810018 	str	r0, [r1, #24]
    9d0c:	e2820efd 	add	r0, r2, #4048	; 0xfd0
    9d10:	e2822010 	add	r2, r2, #16, 0
    9d14:	e589200c 	str	r2, [r9, #12]
    9d18:	e2800008 	add	r0, r0, #8, 0
    9d1c:	e5890008 	str	r0, [r9, #8]
    9d20:	e3a01038 	mov	r1, #56, 0	; 0x38
    9d24:	e28db01c 	add	fp, sp, #28, 0
    9d28:	ebfffb10 	bl	8970 <_ZN2os6memory5bzeroEPvj>
    9d2c:	e59f22dc 	ldr	r2, [pc, #732]	; a010 <_Z11core1_entrym+0x4c4>
    9d30:	e3a0c013 	mov	ip, #19, 0
    9d34:	e5991008 	ldr	r1, [r9, #8]
    9d38:	e1a0000a 	mov	r0, sl
    9d3c:	e7972002 	ldr	r2, [r7, r2]
    9d40:	e581c030 	str	ip, [r1, #48]	; 0x30
    9d44:	e5812034 	str	r2, [r1, #52]	; 0x34
    9d48:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
    9d4c:	e59d209c 	ldr	r2, [sp, #156]	; 0x9c
    9d50:	e2811001 	add	r1, r1, #1, 0
    9d54:	e58d1098 	str	r1, [sp, #152]	; 0x98
    9d58:	e2822001 	add	r2, r2, #1, 0
    9d5c:	e58d209c 	str	r2, [sp, #156]	; 0x9c
    9d60:	ebfffb5c 	bl	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    9d64:	e59f22a8 	ldr	r2, [pc, #680]	; a014 <_Z11core1_entrym+0x4c8>
    9d68:	e3a01002 	mov	r1, #2, 0
    9d6c:	e58d9018 	str	r9, [sp, #24]
    9d70:	e5891004 	str	r1, [r9, #4]
    9d74:	e59d10a4 	ldr	r1, [sp, #164]	; 0xa4
    9d78:	e7970002 	ldr	r0, [r7, r2]
    9d7c:	ebfffc15 	bl	8dd8 <_ZN2os5timer4initEPFvmEm>
    9d80:	e2891008 	add	r1, r9, #8, 0
    9d84:	e1a0000b 	mov	r0, fp
    9d88:	ebfffce7 	bl	912c <first_context_switch_main_thread>
    9d8c:	e59d3098 	ldr	r3, [sp, #152]	; 0x98
    9d90:	e3530000 	cmp	r3, #0, 0
    9d94:	0a00007a 	beq	9f84 <_Z11core1_entrym+0x438>
    9d98:	e59f3278 	ldr	r3, [pc, #632]	; a018 <_Z11core1_entrym+0x4cc>
    9d9c:	e58d800c 	str	r8, [sp, #12]
    9da0:	e08f3003 	add	r3, pc, r3
    9da4:	e58d3004 	str	r3, [sp, #4]
    9da8:	e59f326c 	ldr	r3, [pc, #620]	; a01c <_Z11core1_entrym+0x4d0>
    9dac:	e08f3003 	add	r3, pc, r3
    9db0:	e58d3008 	str	r3, [sp, #8]
    9db4:	ebfffa77 	bl	8798 <_ZN2os10interrupts18disable_interruptsEv>
    9db8:	e59d9018 	ldr	r9, [sp, #24]
    9dbc:	e3a03004 	mov	r3, #4, 0
    9dc0:	e599200c 	ldr	r2, [r9, #12]
    9dc4:	e5893004 	str	r3, [r9, #4]
    9dc8:	e512300c 	ldr	r3, [r2, #-12]
    9dcc:	e2421010 	sub	r1, r2, #16, 0
    9dd0:	e5122010 	ldr	r2, [r2, #-16]
    9dd4:	e3530000 	cmp	r3, #0, 0
    9dd8:	1a00000a 	bne	9e08 <_Z11core1_entrym+0x2bc>
    9ddc:	ea00000c 	b	9e14 <_Z11core1_entrym+0x2c8>
    9de0:	e593c004 	ldr	ip, [r3, #4]
    9de4:	e5911008 	ldr	r1, [r1, #8]
    9de8:	e5930008 	ldr	r0, [r3, #8]
    9dec:	e35c0000 	cmp	ip, #0, 0
    9df0:	e5832000 	str	r2, [r3]
    9df4:	e0800001 	add	r0, r0, r1
    9df8:	e1a01003 	mov	r1, r3
    9dfc:	e5830008 	str	r0, [r3, #8]
    9e00:	0a000003 	beq	9e14 <_Z11core1_entrym+0x2c8>
    9e04:	e1a0300c 	mov	r3, ip
    9e08:	e5d3000c 	ldrb	r0, [r3, #12]
    9e0c:	e3500000 	cmp	r0, #0, 0
    9e10:	0afffff2 	beq	9de0 <_Z11core1_entrym+0x294>
    9e14:	e3520000 	cmp	r2, #0, 0
    9e18:	1a000006 	bne	9e38 <_Z11core1_entrym+0x2ec>
    9e1c:	ea000008 	b	9e44 <_Z11core1_entrym+0x2f8>
    9e20:	e5922000 	ldr	r2, [r2]
    9e24:	e5913008 	ldr	r3, [r1, #8]
    9e28:	e5920008 	ldr	r0, [r2, #8]
    9e2c:	e5812000 	str	r2, [r1]
    9e30:	e0833000 	add	r3, r3, r0
    9e34:	e5813008 	str	r3, [r1, #8]
    9e38:	e5d2300c 	ldrb	r3, [r2, #12]
    9e3c:	e3530000 	cmp	r3, #0, 0
    9e40:	0afffff6 	beq	9e20 <_Z11core1_entrym+0x2d4>
    9e44:	e59d209c 	ldr	r2, [sp, #156]	; 0x9c
    9e48:	e2899010 	add	r9, r9, #16, 0
    9e4c:	e59d3098 	ldr	r3, [sp, #152]	; 0x98
    9e50:	e3a00000 	mov	r0, #0, 0
    9e54:	e59d700c 	ldr	r7, [sp, #12]
    9e58:	e2422001 	sub	r2, r2, #1, 0
    9e5c:	e5c1000c 	strb	r0, [r1, #12]
    9e60:	e2433001 	sub	r3, r3, #1, 0
    9e64:	e58d209c 	str	r2, [sp, #156]	; 0x9c
    9e68:	e58d3098 	str	r3, [sp, #152]	; 0x98
    9e6c:	e1a00007 	mov	r0, r7
    9e70:	ebfffb38 	bl	8b58 <_ZN2os6thread8thread_t11is_sleepingEv>
    9e74:	e3500000 	cmp	r0, #0, 0
    9e78:	0a000002 	beq	9e88 <_Z11core1_entrym+0x33c>
    9e7c:	e5973014 	ldr	r3, [r7, #20]
    9e80:	e1590003 	cmp	r9, r3
    9e84:	0a00004c 	beq	9fbc <_Z11core1_entrym+0x470>
    9e88:	e59d3000 	ldr	r3, [sp]
    9e8c:	e2877018 	add	r7, r7, #24, 0
    9e90:	e1570003 	cmp	r7, r3
    9e94:	1afffff4 	bne	9e6c <_Z11core1_entrym+0x320>
    9e98:	e1a09006 	mov	r9, r6
    9e9c:	e3a07000 	mov	r7, #0, 0
    9ea0:	e3a0105b 	mov	r1, #91, 0	; 0x5b
    9ea4:	e1a00004 	mov	r0, r4
    9ea8:	e1a0a009 	mov	sl, r9
    9eac:	ebfffd08 	bl	92d4 <_ZStlsRSt7ostreamc>
    9eb0:	e1a01007 	mov	r1, r7
    9eb4:	e2877001 	add	r7, r7, #1, 0
    9eb8:	e2899018 	add	r9, r9, #24, 0
    9ebc:	ebfffcec 	bl	9274 <_ZStlsRSt7ostreamm>
    9ec0:	e59d1004 	ldr	r1, [sp, #4]
    9ec4:	ebfffd08 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9ec8:	e5ba100c 	ldr	r1, [sl, #12]!
    9ecc:	ebfffce8 	bl	9274 <_ZStlsRSt7ostreamm>
    9ed0:	e59d1008 	ldr	r1, [sp, #8]
    9ed4:	ebfffd04 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9ed8:	e1a08000 	mov	r8, r0
    9edc:	e1a0000a 	mov	r0, sl
    9ee0:	ebfffb4a 	bl	8c10 <_ZN2os6thread8thread_t13get_state_strEv>
    9ee4:	e1a01000 	mov	r1, r0
    9ee8:	e1a00008 	mov	r0, r8
    9eec:	ebfffcfe 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9ef0:	e1a01005 	mov	r1, r5
    9ef4:	ebfffd02 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    9ef8:	e3570005 	cmp	r7, #5, 0
    9efc:	1affffe7 	bne	9ea0 <_Z11core1_entrym+0x354>
    9f00:	e59d00a0 	ldr	r0, [sp, #160]	; 0xa0
    9f04:	e3a07018 	mov	r7, #24, 0
    9f08:	ea000005 	b	9f24 <_Z11core1_entrym+0x3d8>
    9f0c:	e59d00a0 	ldr	r0, [sp, #160]	; 0xa0
    9f10:	e2800001 	add	r0, r0, #1, 0
    9f14:	e58d00a0 	str	r0, [sp, #160]	; 0xa0
    9f18:	e3500005 	cmp	r0, #5, 0
    9f1c:	058d30a0 	streq	r3, [sp, #160]	; 0xa0
    9f20:	01a00003 	moveq	r0, r3
    9f24:	e0206097 	mla	r0, r7, r0, r6
    9f28:	e280000c 	add	r0, r0, #12, 0
    9f2c:	ebfffb04 	bl	8b44 <_ZN2os6thread8thread_t8is_readyEv>
    9f30:	e2503000 	subs	r3, r0, #0, 0
    9f34:	0afffff4 	beq	9f0c <_Z11core1_entrym+0x3c0>
    9f38:	e59d20a0 	ldr	r2, [sp, #160]	; 0xa0
    9f3c:	e3a03002 	mov	r3, #2, 0
    9f40:	e59d00a4 	ldr	r0, [sp, #164]	; 0xa4
    9f44:	e0070297 	mul	r7, r7, r2
    9f48:	e28d20b0 	add	r2, sp, #176, 0	; 0xb0
    9f4c:	e0822007 	add	r2, r2, r7
    9f50:	e287700c 	add	r7, r7, #12, 0
    9f54:	e0867007 	add	r7, r6, r7
    9f58:	e502308c 	str	r3, [r2, #-140]	; 0xffffff74
    9f5c:	e58d7018 	str	r7, [sp, #24]
    9f60:	ebfffb83 	bl	8d74 <_ZN2os5timer3setEm>
    9f64:	ebfffa12 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    9f68:	e59d1018 	ldr	r1, [sp, #24]
    9f6c:	e1a0000b 	mov	r0, fp
    9f70:	e2811008 	add	r1, r1, #8, 0
    9f74:	ebfffc60 	bl	90fc <context_switch>
    9f78:	e59d3098 	ldr	r3, [sp, #152]	; 0x98
    9f7c:	e3530000 	cmp	r3, #0, 0
    9f80:	1affff8b 	bne	9db4 <_Z11core1_entrym+0x268>
    9f84:	e59f1094 	ldr	r1, [pc, #148]	; a020 <_Z11core1_entrym+0x4d4>
    9f88:	e1a00004 	mov	r0, r4
    9f8c:	e08f1001 	add	r1, pc, r1
    9f90:	ebfffcd5 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9f94:	e1a01005 	mov	r1, r5
    9f98:	ebfffcd9 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    9f9c:	e59f1080 	ldr	r1, [pc, #128]	; a024 <_Z11core1_entrym+0x4d8>
    9fa0:	e1a00004 	mov	r0, r4
    9fa4:	e08f1001 	add	r1, pc, r1
    9fa8:	ebfffccf 	bl	92ec <_ZStlsRSt7ostreamPKc>
    9fac:	e1a01005 	mov	r1, r5
    9fb0:	ebfffcd3 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    9fb4:	e28dd0b4 	add	sp, sp, #180, 0	; 0xb4
    9fb8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9fbc:	e59d309c 	ldr	r3, [sp, #156]	; 0x9c
    9fc0:	e3a02003 	mov	r2, #3, 0
    9fc4:	e5872004 	str	r2, [r7, #4]
    9fc8:	e3a01000 	mov	r1, #0, 0
    9fcc:	e5871014 	str	r1, [r7, #20]
    9fd0:	e2833001 	add	r3, r3, #1, 0
    9fd4:	e58d309c 	str	r3, [sp, #156]	; 0x9c
    9fd8:	eaffffae 	b	9e98 <_Z11core1_entrym+0x34c>
    9fdc:	e5800004 	str	r0, [r0, #4]
    9fe0:	e7f000f0 	udf	#0
    9fe4:	e58bb004 	str	fp, [fp, #4]
    9fe8:	e7f000f0 	udf	#0
    9fec:	000024a8 	.word	0x000024a8
    9ff0:	0000002c 	.word	0x0000002c
    9ff4:	00000010 	.word	0x00000010
    9ff8:	00000058 	.word	0x00000058
    9ffc:	00001644 	.word	0x00001644
    a000:	00001634 	.word	0x00001634
    a004:	00000000 	.word	0x00000000
    a008:	00000004 	.word	0x00000004
    a00c:	00000028 	.word	0x00000028
    a010:	00000018 	.word	0x00000018
    a014:	00000050 	.word	0x00000050
    a018:	0000149c 	.word	0x0000149c
    a01c:	00001498 	.word	0x00001498
    a020:	00001278 	.word	0x00001278
    a024:	00001278 	.word	0x00001278

0000a028 <_Z11core2_entrym>:
    a028:	e92d4070 	push	{r4, r5, r6, lr}
    a02c:	e1a05000 	mov	r5, r0
    a030:	e59f4060 	ldr	r4, [pc, #96]	; a098 <_Z11core2_entrym+0x70>
    a034:	ebfff9be 	bl	8734 <_ZN2os8cpu_initEm>
    a038:	e59f305c 	ldr	r3, [pc, #92]	; a09c <_Z11core2_entrym+0x74>
    a03c:	e08f4004 	add	r4, pc, r4
    a040:	e7940003 	ldr	r0, [r4, r3]
    a044:	ebfffaac 	bl	8afc <_ZN2os4sync10signallock4waitEv>
    a048:	e59f3050 	ldr	r3, [pc, #80]	; a0a0 <_Z11core2_entrym+0x78>
    a04c:	e7946003 	ldr	r6, [r4, r3]
    a050:	e1a00006 	mov	r0, r6
    a054:	ebfffa96 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    a058:	e59f3044 	ldr	r3, [pc, #68]	; a0a4 <_Z11core2_entrym+0x7c>
    a05c:	e59f1044 	ldr	r1, [pc, #68]	; a0a8 <_Z11core2_entrym+0x80>
    a060:	e7940003 	ldr	r0, [r4, r3]
    a064:	e08f1001 	add	r1, pc, r1
    a068:	ebfffc9f 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a06c:	e1a01005 	mov	r1, r5
    a070:	ebfffc7f 	bl	9274 <_ZStlsRSt7ostreamm>
    a074:	e59f1030 	ldr	r1, [pc, #48]	; a0ac <_Z11core2_entrym+0x84>
    a078:	e08f1001 	add	r1, pc, r1
    a07c:	ebfffc9a 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a080:	e59f3028 	ldr	r3, [pc, #40]	; a0b0 <_Z11core2_entrym+0x88>
    a084:	e7941003 	ldr	r1, [r4, r3]
    a088:	ebfffc9d 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    a08c:	e1a00006 	mov	r0, r6
    a090:	e8bd4070 	pop	{r4, r5, r6, lr}
    a094:	eafffa8f 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    a098:	00001fd0 	.word	0x00001fd0
    a09c:	00000060 	.word	0x00000060
    a0a0:	00000010 	.word	0x00000010
    a0a4:	00000058 	.word	0x00000058
    a0a8:	0000117c 	.word	0x0000117c
    a0ac:	00001170 	.word	0x00001170
    a0b0:	00000000 	.word	0x00000000

0000a0b4 <_Z11core3_entrym>:
    a0b4:	e92d4070 	push	{r4, r5, r6, lr}
    a0b8:	e1a05000 	mov	r5, r0
    a0bc:	e59f4060 	ldr	r4, [pc, #96]	; a124 <_Z11core3_entrym+0x70>
    a0c0:	ebfff99b 	bl	8734 <_ZN2os8cpu_initEm>
    a0c4:	e59f305c 	ldr	r3, [pc, #92]	; a128 <_Z11core3_entrym+0x74>
    a0c8:	e08f4004 	add	r4, pc, r4
    a0cc:	e7940003 	ldr	r0, [r4, r3]
    a0d0:	ebfffa89 	bl	8afc <_ZN2os4sync10signallock4waitEv>
    a0d4:	e59f3050 	ldr	r3, [pc, #80]	; a12c <_Z11core3_entrym+0x78>
    a0d8:	e7946003 	ldr	r6, [r4, r3]
    a0dc:	e1a00006 	mov	r0, r6
    a0e0:	ebfffa73 	bl	8ab4 <_ZN2os4sync8spinlock7acquireEv>
    a0e4:	e59f3044 	ldr	r3, [pc, #68]	; a130 <_Z11core3_entrym+0x7c>
    a0e8:	e59f1044 	ldr	r1, [pc, #68]	; a134 <_Z11core3_entrym+0x80>
    a0ec:	e7940003 	ldr	r0, [r4, r3]
    a0f0:	e08f1001 	add	r1, pc, r1
    a0f4:	ebfffc7c 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a0f8:	e1a01005 	mov	r1, r5
    a0fc:	ebfffc5c 	bl	9274 <_ZStlsRSt7ostreamm>
    a100:	e59f1030 	ldr	r1, [pc, #48]	; a138 <_Z11core3_entrym+0x84>
    a104:	e08f1001 	add	r1, pc, r1
    a108:	ebfffc77 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a10c:	e59f3028 	ldr	r3, [pc, #40]	; a13c <_Z11core3_entrym+0x88>
    a110:	e7941003 	ldr	r1, [r4, r3]
    a114:	ebfffc7a 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    a118:	e1a00006 	mov	r0, r6
    a11c:	e8bd4070 	pop	{r4, r5, r6, lr}
    a120:	eafffa6c 	b	8ad8 <_ZN2os4sync8spinlock7releaseEv>
    a124:	00001f44 	.word	0x00001f44
    a128:	00000044 	.word	0x00000044
    a12c:	00000010 	.word	0x00000010
    a130:	00000058 	.word	0x00000058
    a134:	000010f0 	.word	0x000010f0
    a138:	000010e4 	.word	0x000010e4
    a13c:	00000000 	.word	0x00000000

0000a140 <entry>:
    a140:	e3510003 	cmp	r1, #3, 0
    a144:	908ff101 	addls	pc, pc, r1, lsl #2
    a148:	ea00000c 	b	a180 <entry+0x40>
    a14c:	ea000004 	b	a164 <entry+0x24>
    a150:	ea000006 	b	a170 <entry+0x30>
    a154:	ea000007 	b	a178 <entry+0x38>
    a158:	eaffffff 	b	a15c <entry+0x1c>
    a15c:	e3a00003 	mov	r0, #3, 0
    a160:	eaffffd3 	b	a0b4 <_Z11core3_entrym>
    a164:	e1a01002 	mov	r1, r2
    a168:	e3a00000 	mov	r0, #0, 0
    a16c:	eafffe26 	b	9a0c <_Z11core0_entrymi>
    a170:	e3a00001 	mov	r0, #1, 0
    a174:	eafffe74 	b	9b4c <_Z11core1_entrym>
    a178:	e3a00002 	mov	r0, #2, 0
    a17c:	eaffffa9 	b	a028 <_Z11core2_entrym>
    a180:	e12fff1e 	bx	lr

Disassembly of section .text.startup:

0000a184 <_GLOBAL__sub_I_console.cpp>:
    a184:	e92d4010 	push	{r4, lr}
    a188:	e59f4040 	ldr	r4, [pc, #64]	; a1d0 <_GLOBAL__sub_I_console.cpp+0x4c>
    a18c:	e59f3040 	ldr	r3, [pc, #64]	; a1d4 <_GLOBAL__sub_I_console.cpp+0x50>
    a190:	e08f4004 	add	r4, pc, r4
    a194:	e7940003 	ldr	r0, [r4, r3]
    a198:	ebfffa3f 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    a19c:	e59f3034 	ldr	r3, [pc, #52]	; a1d8 <_GLOBAL__sub_I_console.cpp+0x54>
    a1a0:	e7940003 	ldr	r0, [r4, r3]
    a1a4:	ebfffa3c 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    a1a8:	e59f302c 	ldr	r3, [pc, #44]	; a1dc <_GLOBAL__sub_I_console.cpp+0x58>
    a1ac:	e7940003 	ldr	r0, [r4, r3]
    a1b0:	ebfffa39 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    a1b4:	e59f3024 	ldr	r3, [pc, #36]	; a1e0 <_GLOBAL__sub_I_console.cpp+0x5c>
    a1b8:	e7940003 	ldr	r0, [r4, r3]
    a1bc:	ebfffa36 	bl	8a9c <_ZN2os4sync8spinlockC1Ev>
    a1c0:	e59f301c 	ldr	r3, [pc, #28]	; a1e4 <_GLOBAL__sub_I_console.cpp+0x60>
    a1c4:	e7940003 	ldr	r0, [r4, r3]
    a1c8:	e8bd4010 	pop	{r4, lr}
    a1cc:	eafffa32 	b	8a9c <_ZN2os4sync8spinlockC1Ev>
    a1d0:	00001e7c 	.word	0x00001e7c
    a1d4:	00000048 	.word	0x00000048
    a1d8:	00000054 	.word	0x00000054
    a1dc:	00000008 	.word	0x00000008
    a1e0:	00000040 	.word	0x00000040
    a1e4:	00000020 	.word	0x00000020

0000a1e8 <_GLOBAL__sub_I_uart.cpp>:
    a1e8:	e59f300c 	ldr	r3, [pc, #12]	; a1fc <_GLOBAL__sub_I_uart.cpp+0x14>
    a1ec:	e59f200c 	ldr	r2, [pc, #12]	; a200 <_GLOBAL__sub_I_uart.cpp+0x18>
    a1f0:	e08f3003 	add	r3, pc, r3
    a1f4:	e7930002 	ldr	r0, [r3, r2]
    a1f8:	eafffa27 	b	8a9c <_ZN2os4sync8spinlockC1Ev>
    a1fc:	00001e1c 	.word	0x00001e1c
    a200:	0000001c 	.word	0x0000001c

0000a204 <_GLOBAL__sub_I_kernel.cpp>:
    a204:	e59f300c 	ldr	r3, [pc, #12]	; a218 <_GLOBAL__sub_I_kernel.cpp+0x14>
    a208:	e59f200c 	ldr	r2, [pc, #12]	; a21c <_GLOBAL__sub_I_kernel.cpp+0x18>
    a20c:	e08f3003 	add	r3, pc, r3
    a210:	e7930002 	ldr	r0, [r3, r2]
    a214:	eafffa20 	b	8a9c <_ZN2os4sync8spinlockC1Ev>
    a218:	00001e00 	.word	0x00001e00
    a21c:	0000000c 	.word	0x0000000c

0000a220 <_GLOBAL__sub_I_code.cpp>:
    a220:	e92d4010 	push	{r4, lr}
    a224:	e59f4034 	ldr	r4, [pc, #52]	; a260 <_GLOBAL__sub_I_code.cpp+0x40>
    a228:	e59f3034 	ldr	r3, [pc, #52]	; a264 <_GLOBAL__sub_I_code.cpp+0x44>
    a22c:	e08f4004 	add	r4, pc, r4
    a230:	e7940003 	ldr	r0, [r4, r3]
    a234:	ebfffa2a 	bl	8ae4 <_ZN2os4sync10signallockC1Ev>
    a238:	e59f3028 	ldr	r3, [pc, #40]	; a268 <_GLOBAL__sub_I_code.cpp+0x48>
    a23c:	e7940003 	ldr	r0, [r4, r3]
    a240:	ebfffa27 	bl	8ae4 <_ZN2os4sync10signallockC1Ev>
    a244:	e59f3020 	ldr	r3, [pc, #32]	; a26c <_GLOBAL__sub_I_code.cpp+0x4c>
    a248:	e7940003 	ldr	r0, [r4, r3]
    a24c:	ebfffa24 	bl	8ae4 <_ZN2os4sync10signallockC1Ev>
    a250:	e59f3018 	ldr	r3, [pc, #24]	; a270 <_GLOBAL__sub_I_code.cpp+0x50>
    a254:	e7940003 	ldr	r0, [r4, r3]
    a258:	e8bd4010 	pop	{r4, lr}
    a25c:	eafffa0e 	b	8a9c <_ZN2os4sync8spinlockC1Ev>
    a260:	00001de0 	.word	0x00001de0
    a264:	0000002c 	.word	0x0000002c
    a268:	00000060 	.word	0x00000060
    a26c:	00000044 	.word	0x00000044
    a270:	00000010 	.word	0x00000010

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11grim_reaperEv:

0000a274 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11grim_reaperEv>:
    a274:	e92d4070 	push	{r4, r5, r6, lr}
    a278:	e1a04000 	mov	r4, r0
    a27c:	e59f5048 	ldr	r5, [pc, #72]	; a2cc <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11grim_reaperEv+0x58>
    a280:	ebfffade 	bl	8e00 <_ZN2os5timer7disableEv>
    a284:	e59f2044 	ldr	r2, [pc, #68]	; a2d0 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11grim_reaperEv+0x5c>
    a288:	e08f5005 	add	r5, pc, r5
    a28c:	e59f1040 	ldr	r1, [pc, #64]	; a2d4 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11grim_reaperEv+0x60>
    a290:	e1a03005 	mov	r3, r5
    a294:	e7950002 	ldr	r0, [r5, r2]
    a298:	e08f1001 	add	r1, pc, r1
    a29c:	ebfffc12 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a2a0:	e5943084 	ldr	r3, [r4, #132]	; 0x84
    a2a4:	e5942088 	ldr	r2, [r4, #136]	; 0x88
    a2a8:	e2433001 	sub	r3, r3, #1, 0
    a2ac:	e5843084 	str	r3, [r4, #132]	; 0x84
    a2b0:	e3530000 	cmp	r3, #0, 0
    a2b4:	e2423001 	sub	r3, r2, #1, 0
    a2b8:	e5843088 	str	r3, [r4, #136]	; 0x88
    a2bc:	18bd8070 	popne	{r4, r5, r6, pc}
    a2c0:	e2840008 	add	r0, r4, #8, 0
    a2c4:	e8bd4070 	pop	{r4, r5, r6, lr}
    a2c8:	eafffbb6 	b	91a8 <context_load>
    a2cc:	00001d84 	.word	0x00001d84
    a2d0:	00000058 	.word	0x00000058
    a2d4:	00000f94 	.word	0x00000f94

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_allEPNS_6thread15sleep_channel_tE:

0000a2d8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_allEPNS_6thread15sleep_channel_tE>:
    a2d8:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    a2dc:	e1a05000 	mov	r5, r0
    a2e0:	e24dd00c 	sub	sp, sp, #12, 0
    a2e4:	e1a07001 	mov	r7, r1
    a2e8:	e280400c 	add	r4, r0, #12, 0
    a2ec:	e2806084 	add	r6, r0, #132, 0	; 0x84
    a2f0:	e58d1004 	str	r1, [sp, #4]
    a2f4:	e3a09000 	mov	r9, #0, 0
    a2f8:	e3a08003 	mov	r8, #3, 0
    a2fc:	e1a00004 	mov	r0, r4
    a300:	ebfffa14 	bl	8b58 <_ZN2os6thread8thread_t11is_sleepingEv>
    a304:	e3500000 	cmp	r0, #0, 0
    a308:	0a000006 	beq	a328 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_allEPNS_6thread15sleep_channel_tE+0x50>
    a30c:	e5943014 	ldr	r3, [r4, #20]
    a310:	e1530007 	cmp	r3, r7
    a314:	05953088 	ldreq	r3, [r5, #136]	; 0x88
    a318:	05849014 	streq	r9, [r4, #20]
    a31c:	05848004 	streq	r8, [r4, #4]
    a320:	02833001 	addeq	r3, r3, #1, 0
    a324:	05853088 	streq	r3, [r5, #136]	; 0x88
    a328:	e2844018 	add	r4, r4, #24, 0
    a32c:	e1560004 	cmp	r6, r4
    a330:	1afffff1 	bne	a2fc <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_allEPNS_6thread15sleep_channel_tE+0x24>
    a334:	e28dd00c 	add	sp, sp, #12, 0
    a338:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE:

0000a33c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE>:
    a33c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    a340:	e1a06000 	mov	r6, r0
    a344:	e1a07001 	mov	r7, r1
    a348:	e280400c 	add	r4, r0, #12, 0
    a34c:	e2805084 	add	r5, r0, #132, 0	; 0x84
    a350:	ea000002 	b	a360 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE+0x24>
    a354:	e2844018 	add	r4, r4, #24, 0
    a358:	e1540005 	cmp	r4, r5
    a35c:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    a360:	e1a00004 	mov	r0, r4
    a364:	ebfff9fb 	bl	8b58 <_ZN2os6thread8thread_t11is_sleepingEv>
    a368:	e3500000 	cmp	r0, #0, 0
    a36c:	0afffff8 	beq	a354 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE+0x18>
    a370:	e5943014 	ldr	r3, [r4, #20]
    a374:	e1530007 	cmp	r3, r7
    a378:	1afffff5 	bne	a354 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE8wake_oneEPNS_6thread15sleep_channel_tE+0x18>
    a37c:	e5963088 	ldr	r3, [r6, #136]	; 0x88
    a380:	e3a02000 	mov	r2, #0, 0
    a384:	e5842014 	str	r2, [r4, #20]
    a388:	e3a02003 	mov	r2, #3, 0
    a38c:	e5842004 	str	r2, [r4, #4]
    a390:	e2833001 	add	r3, r3, #1, 0
    a394:	e5863088 	str	r3, [r6, #136]	; 0x88
    a398:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv:

0000a39c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv>:
    a39c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a3a0:	e1a04000 	mov	r4, r0
    a3a4:	e59f722c 	ldr	r7, [pc, #556]	; a5d8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x23c>
    a3a8:	ebfff8fa 	bl	8798 <_ZN2os10interrupts18disable_interruptsEv>
    a3ac:	e5941004 	ldr	r1, [r4, #4]
    a3b0:	e3a03004 	mov	r3, #4, 0
    a3b4:	e08f7007 	add	r7, pc, r7
    a3b8:	e591200c 	ldr	r2, [r1, #12]
    a3bc:	e5813004 	str	r3, [r1, #4]
    a3c0:	e512300c 	ldr	r3, [r2, #-12]
    a3c4:	e2420010 	sub	r0, r2, #16, 0
    a3c8:	e5122010 	ldr	r2, [r2, #-16]
    a3cc:	e3530000 	cmp	r3, #0, 0
    a3d0:	1a00000a 	bne	a400 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x64>
    a3d4:	ea00000c 	b	a40c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x70>
    a3d8:	e593e004 	ldr	lr, [r3, #4]
    a3dc:	e5900008 	ldr	r0, [r0, #8]
    a3e0:	e593c008 	ldr	ip, [r3, #8]
    a3e4:	e35e0000 	cmp	lr, #0, 0
    a3e8:	e5832000 	str	r2, [r3]
    a3ec:	e08cc000 	add	ip, ip, r0
    a3f0:	e1a00003 	mov	r0, r3
    a3f4:	e583c008 	str	ip, [r3, #8]
    a3f8:	0a000003 	beq	a40c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x70>
    a3fc:	e1a0300e 	mov	r3, lr
    a400:	e5d3c00c 	ldrb	ip, [r3, #12]
    a404:	e35c0000 	cmp	ip, #0, 0
    a408:	0afffff2 	beq	a3d8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x3c>
    a40c:	e3520000 	cmp	r2, #0, 0
    a410:	1a000006 	bne	a430 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x94>
    a414:	ea000008 	b	a43c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0xa0>
    a418:	e5922000 	ldr	r2, [r2]
    a41c:	e5903008 	ldr	r3, [r0, #8]
    a420:	e592c008 	ldr	ip, [r2, #8]
    a424:	e5802000 	str	r2, [r0]
    a428:	e083300c 	add	r3, r3, ip
    a42c:	e5803008 	str	r3, [r0, #8]
    a430:	e5d2300c 	ldrb	r3, [r2, #12]
    a434:	e3530000 	cmp	r3, #0, 0
    a438:	0afffff6 	beq	a418 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x7c>
    a43c:	e5943088 	ldr	r3, [r4, #136]	; 0x88
    a440:	e3a0c000 	mov	ip, #0, 0
    a444:	e5942084 	ldr	r2, [r4, #132]	; 0x84
    a448:	e2818010 	add	r8, r1, #16, 0
    a44c:	e5c0c00c 	strb	ip, [r0, #12]
    a450:	e2430001 	sub	r0, r3, #1, 0
    a454:	e5941000 	ldr	r1, [r4]
    a458:	e2422001 	sub	r2, r2, #1, 0
    a45c:	e59f3178 	ldr	r3, [pc, #376]	; a5dc <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x240>
    a460:	e5842084 	str	r2, [r4, #132]	; 0x84
    a464:	e5840088 	str	r0, [r4, #136]	; 0x88
    a468:	e5912008 	ldr	r2, [r1, #8]
    a46c:	e7973003 	ldr	r3, [r7, r3]
    a470:	e1520003 	cmp	r2, r3
    a474:	1a00004a 	bne	a5a4 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x208>
    a478:	e284500c 	add	r5, r4, #12, 0
    a47c:	e2849084 	add	r9, r4, #132, 0	; 0x84
    a480:	e1a06005 	mov	r6, r5
    a484:	e1a00006 	mov	r0, r6
    a488:	ebfff9b2 	bl	8b58 <_ZN2os6thread8thread_t11is_sleepingEv>
    a48c:	e3500000 	cmp	r0, #0, 0
    a490:	0a000002 	beq	a4a0 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x104>
    a494:	e5963014 	ldr	r3, [r6, #20]
    a498:	e1580003 	cmp	r8, r3
    a49c:	0a000045 	beq	a5b8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x21c>
    a4a0:	e2866018 	add	r6, r6, #24, 0
    a4a4:	e1560009 	cmp	r6, r9
    a4a8:	1afffff5 	bne	a484 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0xe8>
    a4ac:	e59f212c 	ldr	r2, [pc, #300]	; a5e0 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x244>
    a4b0:	e3a06000 	mov	r6, #0, 0
    a4b4:	e59f3128 	ldr	r3, [pc, #296]	; a5e4 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x248>
    a4b8:	e59f9128 	ldr	r9, [pc, #296]	; a5e8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x24c>
    a4bc:	e59f8128 	ldr	r8, [pc, #296]	; a5ec <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x250>
    a4c0:	e797a002 	ldr	sl, [r7, r2]
    a4c4:	e797b003 	ldr	fp, [r7, r3]
    a4c8:	e08f9009 	add	r9, pc, r9
    a4cc:	e08f8008 	add	r8, pc, r8
    a4d0:	e3a0105b 	mov	r1, #91, 0	; 0x5b
    a4d4:	e1a0000a 	mov	r0, sl
    a4d8:	ebfffb7d 	bl	92d4 <_ZStlsRSt7ostreamc>
    a4dc:	e1a01006 	mov	r1, r6
    a4e0:	e2866001 	add	r6, r6, #1, 0
    a4e4:	ebfffb62 	bl	9274 <_ZStlsRSt7ostreamm>
    a4e8:	e1a01009 	mov	r1, r9
    a4ec:	ebfffb7e 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a4f0:	e5951000 	ldr	r1, [r5]
    a4f4:	ebfffb5e 	bl	9274 <_ZStlsRSt7ostreamm>
    a4f8:	e1a01008 	mov	r1, r8
    a4fc:	ebfffb7a 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a500:	e1a07000 	mov	r7, r0
    a504:	e1a00005 	mov	r0, r5
    a508:	e2855018 	add	r5, r5, #24, 0
    a50c:	ebfff9bf 	bl	8c10 <_ZN2os6thread8thread_t13get_state_strEv>
    a510:	e1a01000 	mov	r1, r0
    a514:	e1a00007 	mov	r0, r7
    a518:	ebfffb73 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a51c:	e1a0100b 	mov	r1, fp
    a520:	ebfffb77 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    a524:	e3560005 	cmp	r6, #5, 0
    a528:	1affffe8 	bne	a4d0 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x134>
    a52c:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a530:	e3a05018 	mov	r5, #24, 0
    a534:	ea000005 	b	a550 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x1b4>
    a538:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a53c:	e2800001 	add	r0, r0, #1, 0
    a540:	e584008c 	str	r0, [r4, #140]	; 0x8c
    a544:	e3500005 	cmp	r0, #5, 0
    a548:	0584308c 	streq	r3, [r4, #140]	; 0x8c
    a54c:	01a00003 	moveq	r0, r3
    a550:	e0204095 	mla	r0, r5, r0, r4
    a554:	e280000c 	add	r0, r0, #12, 0
    a558:	ebfff979 	bl	8b44 <_ZN2os6thread8thread_t8is_readyEv>
    a55c:	e2503000 	subs	r3, r0, #0, 0
    a560:	0afffff4 	beq	a538 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x19c>
    a564:	e594308c 	ldr	r3, [r4, #140]	; 0x8c
    a568:	e3a02002 	mov	r2, #2, 0
    a56c:	e0050395 	mul	r5, r5, r3
    a570:	e0843005 	add	r3, r4, r5
    a574:	e285500c 	add	r5, r5, #12, 0
    a578:	e0845005 	add	r5, r4, r5
    a57c:	e5845004 	str	r5, [r4, #4]
    a580:	e5832010 	str	r2, [r3, #16]
    a584:	e5940090 	ldr	r0, [r4, #144]	; 0x90
    a588:	ebfff9f9 	bl	8d74 <_ZN2os5timer3setEm>
    a58c:	ebfff888 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    a590:	e5941004 	ldr	r1, [r4, #4]
    a594:	e2840008 	add	r0, r4, #8, 0
    a598:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a59c:	e2811008 	add	r1, r1, #8, 0
    a5a0:	eafffad5 	b	90fc <context_switch>
    a5a4:	e1a01008 	mov	r1, r8
    a5a8:	e1a00004 	mov	r0, r4
    a5ac:	e284500c 	add	r5, r4, #12, 0
    a5b0:	e12fff32 	blx	r2
    a5b4:	eaffffbc 	b	a4ac <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x110>
    a5b8:	e5943088 	ldr	r3, [r4, #136]	; 0x88
    a5bc:	e3a02000 	mov	r2, #0, 0
    a5c0:	e5862014 	str	r2, [r6, #20]
    a5c4:	e3a02003 	mov	r2, #3, 0
    a5c8:	e5862004 	str	r2, [r6, #4]
    a5cc:	e2833001 	add	r3, r3, #1, 0
    a5d0:	e5843088 	str	r3, [r4, #136]	; 0x88
    a5d4:	eaffffb4 	b	a4ac <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE11thread_exitEv+0x110>
    a5d8:	00001c58 	.word	0x00001c58
    a5dc:	0000004c 	.word	0x0000004c
    a5e0:	00000058 	.word	0x00000058
    a5e4:	00000000 	.word	0x00000000
    a5e8:	00000d74 	.word	0x00000d74
    a5ec:	00000d78 	.word	0x00000d78

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv:

0000a5f0 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv>:
    a5f0:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a5f4:	e1a04000 	mov	r4, r0
    a5f8:	e59f5114 	ldr	r5, [pc, #276]	; a714 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv+0x124>
    a5fc:	e280700c 	add	r7, r0, #12, 0
    a600:	e5900090 	ldr	r0, [r0, #144]	; 0x90
    a604:	e3a06000 	mov	r6, #0, 0
    a608:	e08f5005 	add	r5, pc, r5
    a60c:	ebfff9d8 	bl	8d74 <_ZN2os5timer3setEm>
    a610:	e59f9100 	ldr	r9, [pc, #256]	; a718 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv+0x128>
    a614:	e59f8100 	ldr	r8, [pc, #256]	; a71c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv+0x12c>
    a618:	e59f2100 	ldr	r2, [pc, #256]	; a720 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv+0x130>
    a61c:	e59f3100 	ldr	r3, [pc, #256]	; a724 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv+0x134>
    a620:	e08f9009 	add	r9, pc, r9
    a624:	e08f8008 	add	r8, pc, r8
    a628:	e795a002 	ldr	sl, [r5, r2]
    a62c:	e795b003 	ldr	fp, [r5, r3]
    a630:	e3a0105b 	mov	r1, #91, 0	; 0x5b
    a634:	e1a0000a 	mov	r0, sl
    a638:	ebfffb25 	bl	92d4 <_ZStlsRSt7ostreamc>
    a63c:	e1a01006 	mov	r1, r6
    a640:	e2866001 	add	r6, r6, #1, 0
    a644:	ebfffb0a 	bl	9274 <_ZStlsRSt7ostreamm>
    a648:	e1a01009 	mov	r1, r9
    a64c:	ebfffb26 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a650:	e5971000 	ldr	r1, [r7]
    a654:	ebfffb06 	bl	9274 <_ZStlsRSt7ostreamm>
    a658:	e1a01008 	mov	r1, r8
    a65c:	ebfffb22 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a660:	e1a05000 	mov	r5, r0
    a664:	e1a00007 	mov	r0, r7
    a668:	e2877018 	add	r7, r7, #24, 0
    a66c:	ebfff967 	bl	8c10 <_ZN2os6thread8thread_t13get_state_strEv>
    a670:	e1a01000 	mov	r1, r0
    a674:	e1a00005 	mov	r0, r5
    a678:	ebfffb1b 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a67c:	e1a0100b 	mov	r1, fp
    a680:	ebfffb1f 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    a684:	e3560005 	cmp	r6, #5, 0
    a688:	1affffe8 	bne	a630 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv+0x40>
    a68c:	e5943088 	ldr	r3, [r4, #136]	; 0x88
    a690:	e3530001 	cmp	r3, #1, 0
    a694:	98bd8ff8 	popls	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a698:	e5946004 	ldr	r6, [r4, #4]
    a69c:	e3a05018 	mov	r5, #24, 0
    a6a0:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a6a4:	ea000005 	b	a6c0 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv+0xd0>
    a6a8:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a6ac:	e2800001 	add	r0, r0, #1, 0
    a6b0:	e584008c 	str	r0, [r4, #140]	; 0x8c
    a6b4:	e3500005 	cmp	r0, #5, 0
    a6b8:	0584308c 	streq	r3, [r4, #140]	; 0x8c
    a6bc:	01a00003 	moveq	r0, r3
    a6c0:	e0204095 	mla	r0, r5, r0, r4
    a6c4:	e280000c 	add	r0, r0, #12, 0
    a6c8:	ebfff91d 	bl	8b44 <_ZN2os6thread8thread_t8is_readyEv>
    a6cc:	e2503000 	subs	r3, r0, #0, 0
    a6d0:	0afffff4 	beq	a6a8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE10dispatcherEv+0xb8>
    a6d4:	e594308c 	ldr	r3, [r4, #140]	; 0x8c
    a6d8:	e3a01003 	mov	r1, #3, 0
    a6dc:	e3a02002 	mov	r2, #2, 0
    a6e0:	e0050395 	mul	r5, r5, r3
    a6e4:	e0843005 	add	r3, r4, r5
    a6e8:	e285500c 	add	r5, r5, #12, 0
    a6ec:	e0845005 	add	r5, r4, r5
    a6f0:	e5845004 	str	r5, [r4, #4]
    a6f4:	e5861004 	str	r1, [r6, #4]
    a6f8:	e5832010 	str	r2, [r3, #16]
    a6fc:	ebfff82c 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    a700:	e5941004 	ldr	r1, [r4, #4]
    a704:	e2860008 	add	r0, r6, #8, 0
    a708:	e8bd4ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a70c:	e2811008 	add	r1, r1, #8, 0
    a710:	eafffa79 	b	90fc <context_switch>
    a714:	00001a04 	.word	0x00001a04
    a718:	00000c1c 	.word	0x00000c1c
    a71c:	00000c20 	.word	0x00000c20
    a720:	00000058 	.word	0x00000058
    a724:	00000000 	.word	0x00000000

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE:

0000a728 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE>:
    a728:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a72c:	e2515000 	subs	r5, r1, #0, 0
    a730:	e59f713c 	ldr	r7, [pc, #316]	; a874 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0x14c>
    a734:	e24dd00c 	sub	sp, sp, #12, 0
    a738:	e08f7007 	add	r7, pc, r7
    a73c:	0a00004a 	beq	a86c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0x144>
    a740:	e59f8130 	ldr	r8, [pc, #304]	; a878 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0x150>
    a744:	e1a04000 	mov	r4, r0
    a748:	e59f912c 	ldr	r9, [pc, #300]	; a87c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0x154>
    a74c:	ebfff811 	bl	8798 <_ZN2os10interrupts18disable_interruptsEv>
    a750:	e5943004 	ldr	r3, [r4, #4]
    a754:	e3a00001 	mov	r0, #1, 0
    a758:	e5941088 	ldr	r1, [r4, #136]	; 0x88
    a75c:	e284600c 	add	r6, r4, #12, 0
    a760:	e5835014 	str	r5, [r3, #20]
    a764:	e3a05000 	mov	r5, #0, 0
    a768:	e5830004 	str	r0, [r3, #4]
    a76c:	e2411001 	sub	r1, r1, #1, 0
    a770:	e59f2108 	ldr	r2, [pc, #264]	; a880 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0x158>
    a774:	e59f3108 	ldr	r3, [pc, #264]	; a884 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0x15c>
    a778:	e5841088 	str	r1, [r4, #136]	; 0x88
    a77c:	e08f8008 	add	r8, pc, r8
    a780:	e797a002 	ldr	sl, [r7, r2]
    a784:	e797b003 	ldr	fp, [r7, r3]
    a788:	e08f9009 	add	r9, pc, r9
    a78c:	e3a0105b 	mov	r1, #91, 0	; 0x5b
    a790:	e1a0000a 	mov	r0, sl
    a794:	ebffface 	bl	92d4 <_ZStlsRSt7ostreamc>
    a798:	e1a01005 	mov	r1, r5
    a79c:	e2855001 	add	r5, r5, #1, 0
    a7a0:	ebfffab3 	bl	9274 <_ZStlsRSt7ostreamm>
    a7a4:	e1a01008 	mov	r1, r8
    a7a8:	ebfffacf 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a7ac:	e5961000 	ldr	r1, [r6]
    a7b0:	ebfffaaf 	bl	9274 <_ZStlsRSt7ostreamm>
    a7b4:	e1a01009 	mov	r1, r9
    a7b8:	ebfffacb 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a7bc:	e58d0004 	str	r0, [sp, #4]
    a7c0:	e1a00006 	mov	r0, r6
    a7c4:	e59d7004 	ldr	r7, [sp, #4]
    a7c8:	ebfff910 	bl	8c10 <_ZN2os6thread8thread_t13get_state_strEv>
    a7cc:	e1a01000 	mov	r1, r0
    a7d0:	e2866018 	add	r6, r6, #24, 0
    a7d4:	e1a00007 	mov	r0, r7
    a7d8:	ebfffac3 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a7dc:	e1a0100b 	mov	r1, fp
    a7e0:	ebfffac7 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    a7e4:	e3550005 	cmp	r5, #5, 0
    a7e8:	1affffe7 	bne	a78c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0x64>
    a7ec:	e5946004 	ldr	r6, [r4, #4]
    a7f0:	e3a05018 	mov	r5, #24, 0
    a7f4:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a7f8:	ea000005 	b	a814 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0xec>
    a7fc:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a800:	e2800001 	add	r0, r0, #1, 0
    a804:	e584008c 	str	r0, [r4, #140]	; 0x8c
    a808:	e3500005 	cmp	r0, #5, 0
    a80c:	0584308c 	streq	r3, [r4, #140]	; 0x8c
    a810:	01a00003 	moveq	r0, r3
    a814:	e0204095 	mla	r0, r5, r0, r4
    a818:	e280000c 	add	r0, r0, #12, 0
    a81c:	ebfff8c8 	bl	8b44 <_ZN2os6thread8thread_t8is_readyEv>
    a820:	e2503000 	subs	r3, r0, #0, 0
    a824:	0afffff4 	beq	a7fc <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE5sleepEPNS_6thread15sleep_channel_tE+0xd4>
    a828:	e594308c 	ldr	r3, [r4, #140]	; 0x8c
    a82c:	e3a02002 	mov	r2, #2, 0
    a830:	e0050395 	mul	r5, r5, r3
    a834:	e0843005 	add	r3, r4, r5
    a838:	e285500c 	add	r5, r5, #12, 0
    a83c:	e0845005 	add	r5, r4, r5
    a840:	e5845004 	str	r5, [r4, #4]
    a844:	e5832010 	str	r2, [r3, #16]
    a848:	e5940090 	ldr	r0, [r4, #144]	; 0x90
    a84c:	ebfff948 	bl	8d74 <_ZN2os5timer3setEm>
    a850:	ebfff7d7 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    a854:	e5941004 	ldr	r1, [r4, #4]
    a858:	e2860008 	add	r0, r6, #8, 0
    a85c:	e2811008 	add	r1, r1, #8, 0
    a860:	e28dd00c 	add	sp, sp, #12, 0
    a864:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a868:	eafffa23 	b	90fc <context_switch>
    a86c:	e28dd00c 	add	sp, sp, #12, 0
    a870:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a874:	000018d4 	.word	0x000018d4
    a878:	00000ac0 	.word	0x00000ac0
    a87c:	00000abc 	.word	0x00000abc
    a880:	00000058 	.word	0x00000058
    a884:	00000000 	.word	0x00000000

Disassembly of section .text._ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE:

0000a888 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE>:
    a888:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a88c:	e24dd00c 	sub	sp, sp, #12, 0
    a890:	e59f8164 	ldr	r8, [pc, #356]	; a9fc <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x174>
    a894:	e1a06001 	mov	r6, r1
    a898:	e58d1004 	str	r1, [sp, #4]
    a89c:	e1a04000 	mov	r4, r0
    a8a0:	e08f8008 	add	r8, pc, r8
    a8a4:	ebfff7bb 	bl	8798 <_ZN2os10interrupts18disable_interruptsEv>
    a8a8:	e1a00006 	mov	r0, r6
    a8ac:	ebfff8ae 	bl	8b6c <_ZN2os6thread8thread_t11is_finishedEv>
    a8b0:	e2505000 	subs	r5, r0, #0, 0
    a8b4:	1a00004b 	bne	a9e8 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x160>
    a8b8:	e5940004 	ldr	r0, [r4, #4]
    a8bc:	e2862010 	add	r2, r6, #16, 0
    a8c0:	e5941088 	ldr	r1, [r4, #136]	; 0x88
    a8c4:	e3a0c001 	mov	ip, #1, 0
    a8c8:	e5802014 	str	r2, [r0, #20]
    a8cc:	e284700c 	add	r7, r4, #12, 0
    a8d0:	e59f3128 	ldr	r3, [pc, #296]	; aa00 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x178>
    a8d4:	e2411001 	sub	r1, r1, #1, 0
    a8d8:	e59f2124 	ldr	r2, [pc, #292]	; aa04 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x17c>
    a8dc:	e59fa124 	ldr	sl, [pc, #292]	; aa08 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x180>
    a8e0:	e59f9124 	ldr	r9, [pc, #292]	; aa0c <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x184>
    a8e4:	e580c004 	str	ip, [r0, #4]
    a8e8:	e08fa00a 	add	sl, pc, sl
    a8ec:	e5841088 	str	r1, [r4, #136]	; 0x88
    a8f0:	e08f9009 	add	r9, pc, r9
    a8f4:	e7983003 	ldr	r3, [r8, r3]
    a8f8:	e798b002 	ldr	fp, [r8, r2]
    a8fc:	e58d3004 	str	r3, [sp, #4]
    a900:	e1a00003 	mov	r0, r3
    a904:	e3a0105b 	mov	r1, #91, 0	; 0x5b
    a908:	ebfffa71 	bl	92d4 <_ZStlsRSt7ostreamc>
    a90c:	e1a01005 	mov	r1, r5
    a910:	e2855001 	add	r5, r5, #1, 0
    a914:	ebfffa56 	bl	9274 <_ZStlsRSt7ostreamm>
    a918:	e1a0100a 	mov	r1, sl
    a91c:	ebfffa72 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a920:	e5971000 	ldr	r1, [r7]
    a924:	ebfffa52 	bl	9274 <_ZStlsRSt7ostreamm>
    a928:	e1a01009 	mov	r1, r9
    a92c:	ebfffa6e 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a930:	e1a08000 	mov	r8, r0
    a934:	e1a00007 	mov	r0, r7
    a938:	e2877018 	add	r7, r7, #24, 0
    a93c:	ebfff8b3 	bl	8c10 <_ZN2os6thread8thread_t13get_state_strEv>
    a940:	e1a01000 	mov	r1, r0
    a944:	e1a00008 	mov	r0, r8
    a948:	ebfffa67 	bl	92ec <_ZStlsRSt7ostreamPKc>
    a94c:	e1a0100b 	mov	r1, fp
    a950:	ebfffa6b 	bl	9304 <_ZStlsRSt7ostreamPFS0_S0_E>
    a954:	e59d3004 	ldr	r3, [sp, #4]
    a958:	e3550005 	cmp	r5, #5, 0
    a95c:	1affffe6 	bne	a8fc <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x74>
    a960:	e5947004 	ldr	r7, [r4, #4]
    a964:	e3a05018 	mov	r5, #24, 0
    a968:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a96c:	ea000005 	b	a988 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0x100>
    a970:	e594008c 	ldr	r0, [r4, #140]	; 0x8c
    a974:	e2800001 	add	r0, r0, #1, 0
    a978:	e584008c 	str	r0, [r4, #140]	; 0x8c
    a97c:	e3500005 	cmp	r0, #5, 0
    a980:	0584308c 	streq	r3, [r4, #140]	; 0x8c
    a984:	01a00003 	moveq	r0, r3
    a988:	e0204095 	mla	r0, r5, r0, r4
    a98c:	e280000c 	add	r0, r0, #12, 0
    a990:	ebfff86b 	bl	8b44 <_ZN2os6thread8thread_t8is_readyEv>
    a994:	e2503000 	subs	r3, r0, #0, 0
    a998:	0afffff4 	beq	a970 <_ZN2os11concurrency12rr_schedulerILm5ENS_6memory4heapINS2_11heap_policy8best_fitEEEE4joinEPNS_6thread8thread_tE+0xe8>
    a99c:	e594308c 	ldr	r3, [r4, #140]	; 0x8c
    a9a0:	e3a02002 	mov	r2, #2, 0
    a9a4:	e0050395 	mul	r5, r5, r3
    a9a8:	e0843005 	add	r3, r4, r5
    a9ac:	e285500c 	add	r5, r5, #12, 0
    a9b0:	e0845005 	add	r5, r4, r5
    a9b4:	e5845004 	str	r5, [r4, #4]
    a9b8:	e5832010 	str	r2, [r3, #16]
    a9bc:	e5940090 	ldr	r0, [r4, #144]	; 0x90
    a9c0:	ebfff8eb 	bl	8d74 <_ZN2os5timer3setEm>
    a9c4:	ebfff77a 	bl	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    a9c8:	e5941004 	ldr	r1, [r4, #4]
    a9cc:	e2870008 	add	r0, r7, #8, 0
    a9d0:	e2811008 	add	r1, r1, #8, 0
    a9d4:	ebfff9c8 	bl	90fc <context_switch>
    a9d8:	e3a03000 	mov	r3, #0, 0
    a9dc:	e5863004 	str	r3, [r6, #4]
    a9e0:	e28dd00c 	add	sp, sp, #12, 0
    a9e4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a9e8:	e3a03000 	mov	r3, #0, 0
    a9ec:	e5863004 	str	r3, [r6, #4]
    a9f0:	e28dd00c 	add	sp, sp, #12, 0
    a9f4:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    a9f8:	eafff76d 	b	87b4 <_ZN2os10interrupts17enable_interruptsEv>
    a9fc:	0000176c 	.word	0x0000176c
    aa00:	00000058 	.word	0x00000058
    aa04:	00000000 	.word	0x00000000
    aa08:	00000954 	.word	0x00000954
    aa0c:	00000954 	.word	0x00000954
