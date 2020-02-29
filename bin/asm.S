
bin/main:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Vector_Init>:
       0:	e59ff018 	ldr	pc, [pc, #24]	; 20 <Reset_Addr>
       4:	e59ff018 	ldr	pc, [pc, #24]	; 24 <Undefined_Addr>
       8:	e59ff018 	ldr	pc, [pc, #24]	; 28 <SWI_Addr>
       c:	e59ff018 	ldr	pc, [pc, #24]	; 2c <Prefetch_Addr>
      10:	e59ff018 	ldr	pc, [pc, #24]	; 30 <Abort_Addr>
      14:	e320f000 	nop	{0}
      18:	e59ff014 	ldr	pc, [pc, #20]	; 34 <IRQ_Addr>
      1c:	e59ff014 	ldr	pc, [pc, #20]	; 38 <FIQ_Addr>

00000020 <Reset_Addr>:
      20:	0000003c 	andeq	r0, r0, ip, lsr r0

00000024 <Undefined_Addr>:
      24:	00000044 	andeq	r0, r0, r4, asr #32

00000028 <SWI_Addr>:
      28:	00000078 	andeq	r0, r0, r8, ror r0

0000002c <Prefetch_Addr>:
      2c:	0000007c 	andeq	r0, r0, ip, ror r0

00000030 <Abort_Addr>:
      30:	0000007c 	andeq	r0, r0, ip, ror r0

00000034 <IRQ_Addr>:
      34:	0000007c 	andeq	r0, r0, ip, ror r0

00000038 <FIQ_Addr>:
      38:	0000007c 	andeq	r0, r0, ip, ror r0

0000003c <Reset_Handler>:
      3c:	fa000023 	blx	d0 <_mainCRTStartup>
      40:	eafffffe 	b	40 <Reset_Handler+0x4>

00000044 <Undefined_Handler>:
      44:	e94d7fff 	stmdb	sp, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, sp, lr}^
      48:	e320f000 	nop	{0}
      4c:	e24dd03c 	sub	sp, sp, #60	; 0x3c
      50:	e14f0000 	mrs	r0, SPSR
      54:	e24e1002 	sub	r1, lr, #2
      58:	e3100020 	tst	r0, #32
      5c:	eafffffe 	b	5c <Undefined_Handler+0x18>
      60:	02411002 	subeq	r1, r1, #2
      64:	e92d0002 	stmfd	sp!, {r1}
      68:	e92d0001 	stmfd	sp!, {r0}
      6c:	e320f000 	nop	{0}
      70:	e1a0000d 	mov	r0, sp
      74:	eafffffe 	b	74 <Undefined_Handler+0x30>

00000078 <SWI_Handler>:
      78:	eafffffe 	b	78 <SWI_Handler>

0000007c <Abort_Handler>:
      7c:	eafffffe 	b	7c <Abort_Handler>

00000080 <__do_global_dtors_aux>:
      80:	b510      	push	{r4, lr}
      82:	f243 2410 	movw	r4, #12816	; 0x3210
      86:	f2c0 0400 	movt	r4, #0
      8a:	7823      	ldrb	r3, [r4, #0]
      8c:	b963      	cbnz	r3, a8 <__do_global_dtors_aux+0x28>
      8e:	f240 0300 	movw	r3, #0
      92:	f2c0 0300 	movt	r3, #0
      96:	b12b      	cbz	r3, a4 <__do_global_dtors_aux+0x24>
      98:	f243 2004 	movw	r0, #12804	; 0x3204
      9c:	f2c0 0000 	movt	r0, #0
      a0:	f3af 8000 	nop.w
      a4:	2301      	movs	r3, #1
      a6:	7023      	strb	r3, [r4, #0]
      a8:	bd10      	pop	{r4, pc}
      aa:	bf00      	nop

000000ac <frame_dummy>:
      ac:	b508      	push	{r3, lr}
      ae:	f240 0300 	movw	r3, #0
      b2:	f2c0 0300 	movt	r3, #0
      b6:	b14b      	cbz	r3, cc <frame_dummy+0x20>
      b8:	f243 2114 	movw	r1, #12820	; 0x3214
      bc:	f243 2004 	movw	r0, #12804	; 0x3204
      c0:	f2c0 0100 	movt	r1, #0
      c4:	f2c0 0000 	movt	r0, #0
      c8:	f3af 8000 	nop.w
      cc:	bd08      	pop	{r3, pc}
      ce:	bf00      	nop

000000d0 <_mainCRTStartup>:
      d0:	4b15      	ldr	r3, [pc, #84]	; (128 <_mainCRTStartup+0x58>)
      d2:	2b00      	cmp	r3, #0
      d4:	bf08      	it	eq
      d6:	4b13      	ldreq	r3, [pc, #76]	; (124 <_mainCRTStartup+0x54>)
      d8:	469d      	mov	sp, r3
      da:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
      de:	2100      	movs	r1, #0
      e0:	468b      	mov	fp, r1
      e2:	460f      	mov	r7, r1
      e4:	4813      	ldr	r0, [pc, #76]	; (134 <_mainCRTStartup+0x64>)
      e6:	4a14      	ldr	r2, [pc, #80]	; (138 <_mainCRTStartup+0x68>)
      e8:	1a12      	subs	r2, r2, r0
      ea:	f000 fbcb 	bl	884 <memset>
      ee:	4b0f      	ldr	r3, [pc, #60]	; (12c <_mainCRTStartup+0x5c>)
      f0:	2b00      	cmp	r3, #0
      f2:	d000      	beq.n	f6 <_mainCRTStartup+0x26>
      f4:	4798      	blx	r3
      f6:	4b0e      	ldr	r3, [pc, #56]	; (130 <_mainCRTStartup+0x60>)
      f8:	2b00      	cmp	r3, #0
      fa:	d000      	beq.n	fe <_mainCRTStartup+0x2e>
      fc:	4798      	blx	r3
      fe:	2000      	movs	r0, #0
     100:	2100      	movs	r1, #0
     102:	0004      	movs	r4, r0
     104:	000d      	movs	r5, r1
     106:	480d      	ldr	r0, [pc, #52]	; (13c <_mainCRTStartup+0x6c>)
     108:	2800      	cmp	r0, #0
     10a:	d002      	beq.n	112 <_mainCRTStartup+0x42>
     10c:	480c      	ldr	r0, [pc, #48]	; (140 <_mainCRTStartup+0x70>)
     10e:	f3af 8000 	nop.w
     112:	f000 fb83 	bl	81c <__libc_init_array>
     116:	0020      	movs	r0, r4
     118:	0029      	movs	r1, r5
     11a:	f000 e9d2 	blx	4c0 <main>
     11e:	f000 fa35 	bl	58c <exit>
     122:	bf00      	nop
     124:	00080000 	andeq	r0, r8, r0
     128:	07fffff8 			; <UNDEFINED> instruction: 0x07fffff8
     12c:	000004a8 	andeq	r0, r0, r8, lsr #9
     130:	000004b8 			; <UNDEFINED> instruction: 0x000004b8
     134:	00003202 	andeq	r3, r0, r2, lsl #4
     138:	000032e8 	andeq	r3, r0, r8, ror #5
	...

00000144 <UartEnable>:
     144:	e24dd010 	sub	sp, sp, #16
     148:	e58d0004 	str	r0, [sp, #4]
     14c:	e59d3004 	ldr	r3, [sp, #4]
     150:	e5933000 	ldr	r3, [r3]
     154:	e58d300c 	str	r3, [sp, #12]
     158:	e59d300c 	ldr	r3, [sp, #12]
     15c:	e3c3303c 	bic	r3, r3, #60	; 0x3c
     160:	e58d300c 	str	r3, [sp, #12]
     164:	e59d300c 	ldr	r3, [sp, #12]
     168:	e3833014 	orr	r3, r3, #20
     16c:	e58d300c 	str	r3, [sp, #12]
     170:	e59d3004 	ldr	r3, [sp, #4]
     174:	e59d200c 	ldr	r2, [sp, #12]
     178:	e5832000 	str	r2, [r3]
     17c:	e320f000 	nop	{0}
     180:	e28dd010 	add	sp, sp, #16
     184:	e12fff1e 	bx	lr

00000188 <Zynq7000_UART_SENDCHAR>:
     188:	e24dd008 	sub	sp, sp, #8
     18c:	e58d0004 	str	r0, [sp, #4]
     190:	e1a03001 	mov	r3, r1
     194:	e5cd3003 	strb	r3, [sp, #3]
     198:	e320f000 	nop	{0}
     19c:	e59d3004 	ldr	r3, [sp, #4]
     1a0:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
     1a4:	e2033010 	and	r3, r3, #16
     1a8:	e3530000 	cmp	r3, #0
     1ac:	1afffffa 	bne	19c <Zynq7000_UART_SENDCHAR+0x14>
     1b0:	e5dd2003 	ldrb	r2, [sp, #3]
     1b4:	e59d3004 	ldr	r3, [sp, #4]
     1b8:	e5832030 	str	r2, [r3, #48]	; 0x30
     1bc:	e5dd3003 	ldrb	r3, [sp, #3]
     1c0:	e1a00003 	mov	r0, r3
     1c4:	e28dd008 	add	sp, sp, #8
     1c8:	e12fff1e 	bx	lr

000001cc <Zynq7000_UART_GETCHAR>:
     1cc:	e24dd010 	sub	sp, sp, #16
     1d0:	e58d0004 	str	r0, [sp, #4]
     1d4:	e59d3004 	ldr	r3, [sp, #4]
     1d8:	e5933014 	ldr	r3, [r3, #20]
     1dc:	e2033001 	and	r3, r3, #1
     1e0:	e3530000 	cmp	r3, #0
     1e4:	0a000007 	beq	208 <Zynq7000_UART_GETCHAR+0x3c>
     1e8:	e59d3004 	ldr	r3, [sp, #4]
     1ec:	e5933030 	ldr	r3, [r3, #48]	; 0x30
     1f0:	e5cd300e 	strb	r3, [sp, #14]
     1f4:	e59d3004 	ldr	r3, [sp, #4]
     1f8:	e3a02005 	mov	r2, #5
     1fc:	e5832014 	str	r2, [r3, #20]
     200:	e5dd300e 	ldrb	r3, [sp, #14]
     204:	ea000009 	b	230 <Zynq7000_UART_GETCHAR+0x64>
     208:	e320f000 	nop	{0}
     20c:	e59d3004 	ldr	r3, [sp, #4]
     210:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
     214:	e2033002 	and	r3, r3, #2
     218:	e3530002 	cmp	r3, #2
     21c:	0afffffa 	beq	20c <Zynq7000_UART_GETCHAR+0x40>
     220:	e59d3004 	ldr	r3, [sp, #4]
     224:	e5933030 	ldr	r3, [r3, #48]	; 0x30
     228:	e5cd300f 	strb	r3, [sp, #15]
     22c:	e5dd300f 	ldrb	r3, [sp, #15]
     230:	e1a00003 	mov	r0, r3
     234:	e28dd010 	add	sp, sp, #16
     238:	e12fff1e 	bx	lr

0000023c <_write>:
     23c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     240:	e24dd01c 	sub	sp, sp, #28
     244:	e58d000c 	str	r0, [sp, #12]
     248:	e58d1008 	str	r1, [sp, #8]
     24c:	e58d2004 	str	r2, [sp, #4]
     250:	e59d300c 	ldr	r3, [sp, #12]
     254:	e3530001 	cmp	r3, #1
     258:	0a000002 	beq	268 <_write+0x2c>
     25c:	e3530002 	cmp	r3, #2
     260:	0a000012 	beq	2b0 <_write+0x74>
     264:	ea000024 	b	2fc <_write+0xc0>
     268:	e3a03000 	mov	r3, #0
     26c:	e58d3014 	str	r3, [sp, #20]
     270:	ea000009 	b	29c <_write+0x60>
     274:	e59d3008 	ldr	r3, [sp, #8]
     278:	e2832001 	add	r2, r3, #1
     27c:	e58d2008 	str	r2, [sp, #8]
     280:	e5d33000 	ldrb	r3, [r3]
     284:	e1a01003 	mov	r1, r3
     288:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     28c:	ebffffbd 	bl	188 <Zynq7000_UART_SENDCHAR>
     290:	e59d3014 	ldr	r3, [sp, #20]
     294:	e2833001 	add	r3, r3, #1
     298:	e58d3014 	str	r3, [sp, #20]
     29c:	e59d2014 	ldr	r2, [sp, #20]
     2a0:	e59d3004 	ldr	r3, [sp, #4]
     2a4:	e1520003 	cmp	r2, r3
     2a8:	bafffff1 	blt	274 <_write+0x38>
     2ac:	ea000018 	b	314 <_write+0xd8>
     2b0:	e3a03000 	mov	r3, #0
     2b4:	e58d3014 	str	r3, [sp, #20]
     2b8:	ea00000a 	b	2e8 <_write+0xac>
     2bc:	e59d3008 	ldr	r3, [sp, #8]
     2c0:	e2832001 	add	r2, r3, #1
     2c4:	e58d2008 	str	r2, [sp, #8]
     2c8:	e5d33000 	ldrb	r3, [r3]
     2cc:	e1a01003 	mov	r1, r3
     2d0:	e3a00a01 	mov	r0, #4096	; 0x1000
     2d4:	e34e0000 	movt	r0, #57344	; 0xe000
     2d8:	ebffffaa 	bl	188 <Zynq7000_UART_SENDCHAR>
     2dc:	e59d3014 	ldr	r3, [sp, #20]
     2e0:	e2833001 	add	r3, r3, #1
     2e4:	e58d3014 	str	r3, [sp, #20]
     2e8:	e59d2014 	ldr	r2, [sp, #20]
     2ec:	e59d3004 	ldr	r3, [sp, #4]
     2f0:	e1520003 	cmp	r2, r3
     2f4:	bafffff0 	blt	2bc <_write+0x80>
     2f8:	ea000005 	b	314 <_write+0xd8>
     2fc:	fa00009f 	blx	580 <__errno>
     300:	e1a02000 	mov	r2, r0
     304:	e3a03009 	mov	r3, #9
     308:	e5823000 	str	r3, [r2]
     30c:	e3e03000 	mvn	r3, #0
     310:	ea000000 	b	318 <_write+0xdc>
     314:	e59d3004 	ldr	r3, [sp, #4]
     318:	e1a00003 	mov	r0, r3
     31c:	e28dd01c 	add	sp, sp, #28
     320:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00000324 <_read>:
     324:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     328:	e24dd024 	sub	sp, sp, #36	; 0x24
     32c:	e58d000c 	str	r0, [sp, #12]
     330:	e58d1008 	str	r1, [sp, #8]
     334:	e58d2004 	str	r2, [sp, #4]
     338:	e3a03000 	mov	r3, #0
     33c:	e58d3018 	str	r3, [sp, #24]
     340:	e59d300c 	ldr	r3, [sp, #12]
     344:	e3530000 	cmp	r3, #0
     348:	1a00003b 	bne	43c <_read+0x118>
     34c:	e3a03000 	mov	r3, #0
     350:	e58d301c 	str	r3, [sp, #28]
     354:	ea00002f 	b	418 <_read+0xf4>
     358:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     35c:	ebffff9a 	bl	1cc <Zynq7000_UART_GETCHAR>
     360:	e1a03000 	mov	r3, r0
     364:	e5cd3017 	strb	r3, [sp, #23]
     368:	e5dd3017 	ldrb	r3, [sp, #23]
     36c:	e1a01003 	mov	r1, r3
     370:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     374:	ebffff83 	bl	188 <Zynq7000_UART_SENDCHAR>
     378:	e59d3008 	ldr	r3, [sp, #8]
     37c:	e2832001 	add	r2, r3, #1
     380:	e58d2008 	str	r2, [sp, #8]
     384:	e5dd2017 	ldrb	r2, [sp, #23]
     388:	e5c32000 	strb	r2, [r3]
     38c:	e59d3018 	ldr	r3, [sp, #24]
     390:	e2833001 	add	r3, r3, #1
     394:	e58d3018 	str	r3, [sp, #24]
     398:	e5dd3017 	ldrb	r3, [sp, #23]
     39c:	e353000d 	cmp	r3, #13
     3a0:	1a000015 	bne	3fc <_read+0xd8>
     3a4:	e59d301c 	ldr	r3, [sp, #28]
     3a8:	e2833001 	add	r3, r3, #1
     3ac:	e58d301c 	str	r3, [sp, #28]
     3b0:	e59d201c 	ldr	r2, [sp, #28]
     3b4:	e59d3004 	ldr	r3, [sp, #4]
     3b8:	e1520003 	cmp	r2, r3
     3bc:	aa00001a 	bge	42c <_read+0x108>
     3c0:	e3a0300a 	mov	r3, #10
     3c4:	e5cd3017 	strb	r3, [sp, #23]
     3c8:	e5dd3017 	ldrb	r3, [sp, #23]
     3cc:	e1a01003 	mov	r1, r3
     3d0:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     3d4:	ebffff6b 	bl	188 <Zynq7000_UART_SENDCHAR>
     3d8:	e59d3008 	ldr	r3, [sp, #8]
     3dc:	e2832001 	add	r2, r3, #1
     3e0:	e58d2008 	str	r2, [sp, #8]
     3e4:	e3a0200a 	mov	r2, #10
     3e8:	e5c32000 	strb	r2, [r3]
     3ec:	e59d3018 	ldr	r3, [sp, #24]
     3f0:	e2833001 	add	r3, r3, #1
     3f4:	e58d3018 	str	r3, [sp, #24]
     3f8:	ea00000b 	b	42c <_read+0x108>
     3fc:	e5dd3017 	ldrb	r3, [sp, #23]
     400:	e353000a 	cmp	r3, #10
     404:	0a00000a 	beq	434 <_read+0x110>
     408:	e320f000 	nop	{0}
     40c:	e59d301c 	ldr	r3, [sp, #28]
     410:	e2833001 	add	r3, r3, #1
     414:	e58d301c 	str	r3, [sp, #28]
     418:	e59d201c 	ldr	r2, [sp, #28]
     41c:	e59d3004 	ldr	r3, [sp, #4]
     420:	e1520003 	cmp	r2, r3
     424:	baffffcb 	blt	358 <_read+0x34>
     428:	ea000009 	b	454 <_read+0x130>
     42c:	e320f000 	nop	{0}
     430:	ea000007 	b	454 <_read+0x130>
     434:	e320f000 	nop	{0}
     438:	ea000005 	b	454 <_read+0x130>
     43c:	fa00004f 	blx	580 <__errno>
     440:	e1a02000 	mov	r2, r0
     444:	e3a03009 	mov	r3, #9
     448:	e5823000 	str	r3, [r2]
     44c:	e3e03000 	mvn	r3, #0
     450:	ea000000 	b	458 <_read+0x134>
     454:	e59d3018 	ldr	r3, [sp, #24]
     458:	e1a00003 	mov	r0, r3
     45c:	e28dd024 	add	sp, sp, #36	; 0x24
     460:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00000464 <HAL_init>:
     464:	e92d4010 	push	{r4, lr}
     468:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     46c:	ebffff34 	bl	144 <UartEnable>
     470:	e3a00a01 	mov	r0, #4096	; 0x1000
     474:	e34e0000 	movt	r0, #57344	; 0xe000
     478:	ebffff31 	bl	144 <UartEnable>
     47c:	e3020f58 	movw	r0, #12120	; 0x2f58
     480:	e3400000 	movt	r0, #0
     484:	fa000199 	blx	af0 <puts>
     488:	e3020f78 	movw	r0, #12152	; 0x2f78
     48c:	e3400000 	movt	r0, #0
     490:	fa000196 	blx	af0 <puts>
     494:	e3020f98 	movw	r0, #12184	; 0x2f98
     498:	e3400000 	movt	r0, #0
     49c:	fa000193 	blx	af0 <puts>
     4a0:	e320f000 	nop	{0}
     4a4:	e8bd8010 	pop	{r4, pc}

000004a8 <hardware_init_hook>:
     4a8:	e92d4010 	push	{r4, lr}
     4ac:	ebffffec 	bl	464 <HAL_init>
     4b0:	e320f000 	nop	{0}
     4b4:	e8bd8010 	pop	{r4, pc}

000004b8 <software_init_hook>:
     4b8:	e320f000 	nop	{0}
     4bc:	e12fff1e 	bx	lr

000004c0 <main>:
     4c0:	e92d4010 	push	{r4, lr}
     4c4:	e3a00a32 	mov	r0, #204800	; 0x32000
     4c8:	fa0000e5 	blx	864 <malloc>
     4cc:	e1a02000 	mov	r2, r0
     4d0:	e303323c 	movw	r3, #12860	; 0x323c
     4d4:	e3403000 	movt	r3, #0
     4d8:	e5832000 	str	r2, [r3]
     4dc:	e3023d80 	movw	r3, #11648	; 0x2d80
     4e0:	e3403000 	movt	r3, #0
     4e4:	e5933000 	ldr	r3, [r3]
     4e8:	e5933004 	ldr	r3, [r3, #4]
     4ec:	e1a00003 	mov	r0, r3
     4f0:	fa00002f 	blx	5b4 <fileno>
     4f4:	e1a03000 	mov	r3, r0
     4f8:	e1a00003 	mov	r0, r3
     4fc:	fb0001bf 	blx	c02 <isatty>
     500:	e1a03000 	mov	r3, r0
     504:	e3530000 	cmp	r3, #0
     508:	0a000002 	beq	518 <main+0x58>
     50c:	e3020fc4 	movw	r0, #12228	; 0x2fc4
     510:	e3400000 	movt	r0, #0
     514:	fa00013b 	blx	a08 <iprintf>
     518:	e3020fdc 	movw	r0, #12252	; 0x2fdc
     51c:	e3400000 	movt	r0, #0
     520:	fa000138 	blx	a08 <iprintf>
     524:	e3031290 	movw	r1, #12944	; 0x3290
     528:	e3401000 	movt	r1, #0
     52c:	e3020ff0 	movw	r0, #12272	; 0x2ff0
     530:	e3400000 	movt	r0, #0
     534:	fa000179 	blx	b20 <iscanf>
     538:	e3020ff4 	movw	r0, #12276	; 0x2ff4
     53c:	e3400000 	movt	r0, #0
     540:	fa000130 	blx	a08 <iprintf>
     544:	e3031240 	movw	r1, #12864	; 0x3240
     548:	e3401000 	movt	r1, #0
     54c:	e3020ff0 	movw	r0, #12272	; 0x2ff0
     550:	e3400000 	movt	r0, #0
     554:	fa000171 	blx	b20 <iscanf>
     558:	e303000c 	movw	r0, #12300	; 0x300c
     55c:	e3400000 	movt	r0, #0
     560:	fa000128 	blx	a08 <iprintf>
     564:	e3030024 	movw	r0, #12324	; 0x3024
     568:	e3400000 	movt	r0, #0
     56c:	fa000125 	blx	a08 <iprintf>
     570:	e3030030 	movw	r0, #12336	; 0x3030
     574:	e3400000 	movt	r0, #0
     578:	fa000122 	blx	a08 <iprintf>
     57c:	eafffffe 	b	57c <main+0xbc>

00000580 <__errno>:
     580:	4b01      	ldr	r3, [pc, #4]	; (588 <__errno+0x8>)
     582:	6818      	ldr	r0, [r3, #0]
     584:	4770      	bx	lr
     586:	bf00      	nop
     588:	00002d80 	andeq	r2, r0, r0, lsl #27

0000058c <exit>:
     58c:	b508      	push	{r3, lr}
     58e:	4604      	mov	r4, r0
     590:	4b06      	ldr	r3, [pc, #24]	; (5ac <exit+0x20>)
     592:	b113      	cbz	r3, 59a <exit+0xe>
     594:	2100      	movs	r1, #0
     596:	f3af 8000 	nop.w
     59a:	4b05      	ldr	r3, [pc, #20]	; (5b0 <exit+0x24>)
     59c:	6818      	ldr	r0, [r3, #0]
     59e:	6a83      	ldr	r3, [r0, #40]	; 0x28
     5a0:	b103      	cbz	r3, 5a4 <exit+0x18>
     5a2:	4798      	blx	r3
     5a4:	4620      	mov	r0, r4
     5a6:	f002 fbdb 	bl	2d60 <_exit>
     5aa:	bf00      	nop
     5ac:	00000000 	andeq	r0, r0, r0
     5b0:	00003098 	muleq	r0, r8, r0

000005b4 <fileno>:
     5b4:	b570      	push	{r4, r5, r6, lr}
     5b6:	4604      	mov	r4, r0
     5b8:	4e10      	ldr	r6, [pc, #64]	; (5fc <fileno+0x48>)
     5ba:	6835      	ldr	r5, [r6, #0]
     5bc:	b125      	cbz	r5, 5c8 <fileno+0x14>
     5be:	69ab      	ldr	r3, [r5, #24]
     5c0:	b913      	cbnz	r3, 5c8 <fileno+0x14>
     5c2:	4628      	mov	r0, r5
     5c4:	f000 f86c 	bl	6a0 <__sinit>
     5c8:	4b0d      	ldr	r3, [pc, #52]	; (600 <fileno+0x4c>)
     5ca:	429c      	cmp	r4, r3
     5cc:	d106      	bne.n	5dc <fileno+0x28>
     5ce:	686c      	ldr	r4, [r5, #4]
     5d0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     5d4:	b163      	cbz	r3, 5f0 <fileno+0x3c>
     5d6:	f9b4 000e 	ldrsh.w	r0, [r4, #14]
     5da:	bd70      	pop	{r4, r5, r6, pc}
     5dc:	4b09      	ldr	r3, [pc, #36]	; (604 <fileno+0x50>)
     5de:	429c      	cmp	r4, r3
     5e0:	d101      	bne.n	5e6 <fileno+0x32>
     5e2:	68ac      	ldr	r4, [r5, #8]
     5e4:	e7f4      	b.n	5d0 <fileno+0x1c>
     5e6:	4b08      	ldr	r3, [pc, #32]	; (608 <fileno+0x54>)
     5e8:	429c      	cmp	r4, r3
     5ea:	bf08      	it	eq
     5ec:	68ec      	ldreq	r4, [r5, #12]
     5ee:	e7ef      	b.n	5d0 <fileno+0x1c>
     5f0:	6833      	ldr	r3, [r6, #0]
     5f2:	2209      	movs	r2, #9
     5f4:	f04f 30ff 	mov.w	r0, #4294967295
     5f8:	601a      	str	r2, [r3, #0]
     5fa:	e7ee      	b.n	5da <fileno+0x26>
     5fc:	00002d80 	andeq	r2, r0, r0, lsl #27
     600:	00003058 	andeq	r3, r0, r8, asr r0
     604:	00003078 	andeq	r3, r0, r8, ror r0
     608:	00003038 	andeq	r3, r0, r8, lsr r0

0000060c <__fp_lock>:
     60c:	2000      	movs	r0, #0
     60e:	4770      	bx	lr

00000610 <std>:
     610:	2300      	movs	r3, #0
     612:	b510      	push	{r4, lr}
     614:	4604      	mov	r4, r0
     616:	e9c0 3300 	strd	r3, r3, [r0]
     61a:	6083      	str	r3, [r0, #8]
     61c:	8181      	strh	r1, [r0, #12]
     61e:	4619      	mov	r1, r3
     620:	6643      	str	r3, [r0, #100]	; 0x64
     622:	81c2      	strh	r2, [r0, #14]
     624:	2208      	movs	r2, #8
     626:	e9c0 3304 	strd	r3, r3, [r0, #16]
     62a:	305c      	adds	r0, #92	; 0x5c
     62c:	f840 3c44 	str.w	r3, [r0, #-68]
     630:	f000 f928 	bl	884 <memset>
     634:	4b04      	ldr	r3, [pc, #16]	; (648 <std+0x38>)
     636:	6224      	str	r4, [r4, #32]
     638:	6263      	str	r3, [r4, #36]	; 0x24
     63a:	4b04      	ldr	r3, [pc, #16]	; (64c <std+0x3c>)
     63c:	62a3      	str	r3, [r4, #40]	; 0x28
     63e:	4b04      	ldr	r3, [pc, #16]	; (650 <std+0x40>)
     640:	62e3      	str	r3, [r4, #44]	; 0x2c
     642:	4b04      	ldr	r3, [pc, #16]	; (654 <std+0x44>)
     644:	6323      	str	r3, [r4, #48]	; 0x30
     646:	bd10      	pop	{r4, pc}
     648:	00000b79 	andeq	r0, r0, r9, ror fp
     64c:	00000b9f 	muleq	r0, pc, fp	; <UNPREDICTABLE>
     650:	00000bd7 	ldrdeq	r0, [r0], -r7
     654:	00000bfb 	strdeq	r0, [r0], -fp

00000658 <_cleanup_r>:
     658:	4901      	ldr	r1, [pc, #4]	; (660 <_cleanup_r+0x8>)
     65a:	f000 b8c1 	b.w	7e0 <_fwalk_reent>
     65e:	bf00      	nop
     660:	00000ee9 	andeq	r0, r0, r9, ror #29

00000664 <__fp_unlock>:
     664:	2000      	movs	r0, #0
     666:	4770      	bx	lr

00000668 <__sfmoreglue>:
     668:	1e4a      	subs	r2, r1, #1
     66a:	b570      	push	{r4, r5, r6, lr}
     66c:	2568      	movs	r5, #104	; 0x68
     66e:	4355      	muls	r5, r2
     670:	460e      	mov	r6, r1
     672:	f105 0174 	add.w	r1, r5, #116	; 0x74
     676:	f000 f959 	bl	92c <_malloc_r>
     67a:	4604      	mov	r4, r0
     67c:	b140      	cbz	r0, 690 <__sfmoreglue+0x28>
     67e:	2100      	movs	r1, #0
     680:	f105 0268 	add.w	r2, r5, #104	; 0x68
     684:	e9c0 1600 	strd	r1, r6, [r0]
     688:	300c      	adds	r0, #12
     68a:	60a0      	str	r0, [r4, #8]
     68c:	f000 f8fa 	bl	884 <memset>
     690:	4620      	mov	r0, r4
     692:	bd70      	pop	{r4, r5, r6, pc}

00000694 <_cleanup>:
     694:	4b01      	ldr	r3, [pc, #4]	; (69c <_cleanup+0x8>)
     696:	6818      	ldr	r0, [r3, #0]
     698:	f7ff bfde 	b.w	658 <_cleanup_r>
     69c:	00003098 	muleq	r0, r8, r0

000006a0 <__sinit>:
     6a0:	6983      	ldr	r3, [r0, #24]
     6a2:	b510      	push	{r4, lr}
     6a4:	4604      	mov	r4, r0
     6a6:	bb33      	cbnz	r3, 6f6 <__sinit+0x56>
     6a8:	e9c0 3312 	strd	r3, r3, [r0, #72]	; 0x48
     6ac:	6503      	str	r3, [r0, #80]	; 0x50
     6ae:	4b12      	ldr	r3, [pc, #72]	; (6f8 <__sinit+0x58>)
     6b0:	4a12      	ldr	r2, [pc, #72]	; (6fc <__sinit+0x5c>)
     6b2:	681b      	ldr	r3, [r3, #0]
     6b4:	6282      	str	r2, [r0, #40]	; 0x28
     6b6:	4298      	cmp	r0, r3
     6b8:	bf04      	itt	eq
     6ba:	2301      	moveq	r3, #1
     6bc:	6183      	streq	r3, [r0, #24]
     6be:	f000 f81f 	bl	700 <__sfp>
     6c2:	6060      	str	r0, [r4, #4]
     6c4:	4620      	mov	r0, r4
     6c6:	f000 f81b 	bl	700 <__sfp>
     6ca:	60a0      	str	r0, [r4, #8]
     6cc:	4620      	mov	r0, r4
     6ce:	f000 f817 	bl	700 <__sfp>
     6d2:	2200      	movs	r2, #0
     6d4:	2104      	movs	r1, #4
     6d6:	60e0      	str	r0, [r4, #12]
     6d8:	6860      	ldr	r0, [r4, #4]
     6da:	f7ff ff99 	bl	610 <std>
     6de:	2201      	movs	r2, #1
     6e0:	2109      	movs	r1, #9
     6e2:	68a0      	ldr	r0, [r4, #8]
     6e4:	f7ff ff94 	bl	610 <std>
     6e8:	2202      	movs	r2, #2
     6ea:	2112      	movs	r1, #18
     6ec:	68e0      	ldr	r0, [r4, #12]
     6ee:	f7ff ff8f 	bl	610 <std>
     6f2:	2301      	movs	r3, #1
     6f4:	61a3      	str	r3, [r4, #24]
     6f6:	bd10      	pop	{r4, pc}
     6f8:	00003098 	muleq	r0, r8, r0
     6fc:	00000659 	andeq	r0, r0, r9, asr r6

00000700 <__sfp>:
     700:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     702:	4607      	mov	r7, r0
     704:	4b1a      	ldr	r3, [pc, #104]	; (770 <__sfp+0x70>)
     706:	681e      	ldr	r6, [r3, #0]
     708:	69b3      	ldr	r3, [r6, #24]
     70a:	b913      	cbnz	r3, 712 <__sfp+0x12>
     70c:	4630      	mov	r0, r6
     70e:	f7ff ffc7 	bl	6a0 <__sinit>
     712:	3648      	adds	r6, #72	; 0x48
     714:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
     718:	3b01      	subs	r3, #1
     71a:	d503      	bpl.n	724 <__sfp+0x24>
     71c:	6833      	ldr	r3, [r6, #0]
     71e:	b133      	cbz	r3, 72e <__sfp+0x2e>
     720:	6836      	ldr	r6, [r6, #0]
     722:	e7f7      	b.n	714 <__sfp+0x14>
     724:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
     728:	b16d      	cbz	r5, 746 <__sfp+0x46>
     72a:	3468      	adds	r4, #104	; 0x68
     72c:	e7f4      	b.n	718 <__sfp+0x18>
     72e:	2104      	movs	r1, #4
     730:	4638      	mov	r0, r7
     732:	f7ff ff99 	bl	668 <__sfmoreglue>
     736:	6030      	str	r0, [r6, #0]
     738:	2800      	cmp	r0, #0
     73a:	d1f1      	bne.n	720 <__sfp+0x20>
     73c:	4604      	mov	r4, r0
     73e:	230c      	movs	r3, #12
     740:	603b      	str	r3, [r7, #0]
     742:	4620      	mov	r0, r4
     744:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     746:	4b0b      	ldr	r3, [pc, #44]	; (774 <__sfp+0x74>)
     748:	2208      	movs	r2, #8
     74a:	6665      	str	r5, [r4, #100]	; 0x64
     74c:	4629      	mov	r1, r5
     74e:	e9c4 5500 	strd	r5, r5, [r4]
     752:	f104 005c 	add.w	r0, r4, #92	; 0x5c
     756:	60a5      	str	r5, [r4, #8]
     758:	e9c4 3503 	strd	r3, r5, [r4, #12]
     75c:	e9c4 5505 	strd	r5, r5, [r4, #20]
     760:	f000 f890 	bl	884 <memset>
     764:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
     768:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
     76c:	e7e9      	b.n	742 <__sfp+0x42>
     76e:	bf00      	nop
     770:	00003098 	muleq	r0, r8, r0
     774:	ffff0001 			; <UNDEFINED> instruction: 0xffff0001

00000778 <__sfp_lock_acquire>:
     778:	4770      	bx	lr

0000077a <__sfp_lock_release>:
     77a:	4770      	bx	lr

0000077c <__sinit_lock_acquire>:
     77c:	4770      	bx	lr

0000077e <__sinit_lock_release>:
     77e:	4770      	bx	lr

00000780 <__fp_lock_all>:
     780:	4b02      	ldr	r3, [pc, #8]	; (78c <__fp_lock_all+0xc>)
     782:	4903      	ldr	r1, [pc, #12]	; (790 <__fp_lock_all+0x10>)
     784:	6818      	ldr	r0, [r3, #0]
     786:	f000 b80f 	b.w	7a8 <_fwalk>
     78a:	bf00      	nop
     78c:	00002d80 	andeq	r2, r0, r0, lsl #27
     790:	0000060d 	andeq	r0, r0, sp, lsl #12

00000794 <__fp_unlock_all>:
     794:	4b02      	ldr	r3, [pc, #8]	; (7a0 <__fp_unlock_all+0xc>)
     796:	4903      	ldr	r1, [pc, #12]	; (7a4 <__fp_unlock_all+0x10>)
     798:	6818      	ldr	r0, [r3, #0]
     79a:	f000 b805 	b.w	7a8 <_fwalk>
     79e:	bf00      	nop
     7a0:	00002d80 	andeq	r2, r0, r0, lsl #27
     7a4:	00000665 	andeq	r0, r0, r5, ror #12

000007a8 <_fwalk>:
     7a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
     7ac:	f100 0448 	add.w	r4, r0, #72	; 0x48
     7b0:	4688      	mov	r8, r1
     7b2:	2600      	movs	r6, #0
     7b4:	b914      	cbnz	r4, 7bc <_fwalk+0x14>
     7b6:	4630      	mov	r0, r6
     7b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
     7bc:	e9d4 7501 	ldrd	r7, r5, [r4, #4]
     7c0:	3f01      	subs	r7, #1
     7c2:	d501      	bpl.n	7c8 <_fwalk+0x20>
     7c4:	6824      	ldr	r4, [r4, #0]
     7c6:	e7f5      	b.n	7b4 <_fwalk+0xc>
     7c8:	89ab      	ldrh	r3, [r5, #12]
     7ca:	2b01      	cmp	r3, #1
     7cc:	d906      	bls.n	7dc <_fwalk+0x34>
     7ce:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
     7d2:	3301      	adds	r3, #1
     7d4:	d002      	beq.n	7dc <_fwalk+0x34>
     7d6:	4628      	mov	r0, r5
     7d8:	47c0      	blx	r8
     7da:	4306      	orrs	r6, r0
     7dc:	3568      	adds	r5, #104	; 0x68
     7de:	e7ef      	b.n	7c0 <_fwalk+0x18>

000007e0 <_fwalk_reent>:
     7e0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
     7e4:	f100 0448 	add.w	r4, r0, #72	; 0x48
     7e8:	4680      	mov	r8, r0
     7ea:	4689      	mov	r9, r1
     7ec:	2600      	movs	r6, #0
     7ee:	b914      	cbnz	r4, 7f6 <_fwalk_reent+0x16>
     7f0:	4630      	mov	r0, r6
     7f2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
     7f6:	e9d4 7501 	ldrd	r7, r5, [r4, #4]
     7fa:	3f01      	subs	r7, #1
     7fc:	d501      	bpl.n	802 <_fwalk_reent+0x22>
     7fe:	6824      	ldr	r4, [r4, #0]
     800:	e7f5      	b.n	7ee <_fwalk_reent+0xe>
     802:	89ab      	ldrh	r3, [r5, #12]
     804:	2b01      	cmp	r3, #1
     806:	d907      	bls.n	818 <_fwalk_reent+0x38>
     808:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
     80c:	3301      	adds	r3, #1
     80e:	d003      	beq.n	818 <_fwalk_reent+0x38>
     810:	4629      	mov	r1, r5
     812:	4640      	mov	r0, r8
     814:	47c8      	blx	r9
     816:	4306      	orrs	r6, r0
     818:	3568      	adds	r5, #104	; 0x68
     81a:	e7ee      	b.n	7fa <_fwalk_reent+0x1a>

0000081c <__libc_init_array>:
     81c:	b570      	push	{r4, r5, r6, lr}
     81e:	2500      	movs	r5, #0
     820:	4e0c      	ldr	r6, [pc, #48]	; (854 <__libc_init_array+0x38>)
     822:	4c0d      	ldr	r4, [pc, #52]	; (858 <__libc_init_array+0x3c>)
     824:	1ba4      	subs	r4, r4, r6
     826:	10a4      	asrs	r4, r4, #2
     828:	42a5      	cmp	r5, r4
     82a:	d109      	bne.n	840 <__libc_init_array+0x24>
     82c:	f002 fa9a 	bl	2d64 <_init>
     830:	4e0a      	ldr	r6, [pc, #40]	; (85c <__libc_init_array+0x40>)
     832:	4c0b      	ldr	r4, [pc, #44]	; (860 <__libc_init_array+0x44>)
     834:	2500      	movs	r5, #0
     836:	1ba4      	subs	r4, r4, r6
     838:	10a4      	asrs	r4, r4, #2
     83a:	42a5      	cmp	r5, r4
     83c:	d105      	bne.n	84a <__libc_init_array+0x2e>
     83e:	bd70      	pop	{r4, r5, r6, pc}
     840:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
     844:	3501      	adds	r5, #1
     846:	4798      	blx	r3
     848:	e7ee      	b.n	828 <__libc_init_array+0xc>
     84a:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
     84e:	3501      	adds	r5, #1
     850:	4798      	blx	r3
     852:	e7f2      	b.n	83a <__libc_init_array+0x1e>
	...

00000864 <malloc>:
     864:	4b02      	ldr	r3, [pc, #8]	; (870 <malloc+0xc>)
     866:	4601      	mov	r1, r0
     868:	6818      	ldr	r0, [r3, #0]
     86a:	f000 b85f 	b.w	92c <_malloc_r>
     86e:	bf00      	nop
     870:	00002d80 	andeq	r2, r0, r0, lsl #27

00000874 <free>:
     874:	4b02      	ldr	r3, [pc, #8]	; (880 <free+0xc>)
     876:	4601      	mov	r1, r0
     878:	6818      	ldr	r0, [r3, #0]
     87a:	f000 b80b 	b.w	894 <_free_r>
     87e:	bf00      	nop
     880:	00002d80 	andeq	r2, r0, r0, lsl #27

00000884 <memset>:
     884:	4402      	add	r2, r0
     886:	4603      	mov	r3, r0
     888:	4293      	cmp	r3, r2
     88a:	d100      	bne.n	88e <memset+0xa>
     88c:	4770      	bx	lr
     88e:	f803 1b01 	strb.w	r1, [r3], #1
     892:	e7f9      	b.n	888 <memset+0x4>

00000894 <_free_r>:
     894:	b538      	push	{r3, r4, r5, lr}
     896:	4605      	mov	r5, r0
     898:	2900      	cmp	r1, #0
     89a:	d043      	beq.n	924 <_free_r+0x90>
     89c:	f851 3c04 	ldr.w	r3, [r1, #-4]
     8a0:	1f0c      	subs	r4, r1, #4
     8a2:	2b00      	cmp	r3, #0
     8a4:	bfb8      	it	lt
     8a6:	18e4      	addlt	r4, r4, r3
     8a8:	f000 fbd0 	bl	104c <__malloc_lock>
     8ac:	4a1e      	ldr	r2, [pc, #120]	; (928 <_free_r+0x94>)
     8ae:	6813      	ldr	r3, [r2, #0]
     8b0:	4610      	mov	r0, r2
     8b2:	b933      	cbnz	r3, 8c2 <_free_r+0x2e>
     8b4:	6063      	str	r3, [r4, #4]
     8b6:	6014      	str	r4, [r2, #0]
     8b8:	4628      	mov	r0, r5
     8ba:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
     8be:	f000 bbc6 	b.w	104e <__malloc_unlock>
     8c2:	42a3      	cmp	r3, r4
     8c4:	d90b      	bls.n	8de <_free_r+0x4a>
     8c6:	6821      	ldr	r1, [r4, #0]
     8c8:	1862      	adds	r2, r4, r1
     8ca:	4293      	cmp	r3, r2
     8cc:	bf01      	itttt	eq
     8ce:	681a      	ldreq	r2, [r3, #0]
     8d0:	685b      	ldreq	r3, [r3, #4]
     8d2:	1852      	addeq	r2, r2, r1
     8d4:	6022      	streq	r2, [r4, #0]
     8d6:	6063      	str	r3, [r4, #4]
     8d8:	6004      	str	r4, [r0, #0]
     8da:	e7ed      	b.n	8b8 <_free_r+0x24>
     8dc:	4613      	mov	r3, r2
     8de:	685a      	ldr	r2, [r3, #4]
     8e0:	b10a      	cbz	r2, 8e6 <_free_r+0x52>
     8e2:	42a2      	cmp	r2, r4
     8e4:	d9fa      	bls.n	8dc <_free_r+0x48>
     8e6:	6819      	ldr	r1, [r3, #0]
     8e8:	1858      	adds	r0, r3, r1
     8ea:	42a0      	cmp	r0, r4
     8ec:	d10b      	bne.n	906 <_free_r+0x72>
     8ee:	6820      	ldr	r0, [r4, #0]
     8f0:	4401      	add	r1, r0
     8f2:	6019      	str	r1, [r3, #0]
     8f4:	1858      	adds	r0, r3, r1
     8f6:	4282      	cmp	r2, r0
     8f8:	d1de      	bne.n	8b8 <_free_r+0x24>
     8fa:	6810      	ldr	r0, [r2, #0]
     8fc:	6852      	ldr	r2, [r2, #4]
     8fe:	4401      	add	r1, r0
     900:	6019      	str	r1, [r3, #0]
     902:	605a      	str	r2, [r3, #4]
     904:	e7d8      	b.n	8b8 <_free_r+0x24>
     906:	d902      	bls.n	90e <_free_r+0x7a>
     908:	230c      	movs	r3, #12
     90a:	602b      	str	r3, [r5, #0]
     90c:	e7d4      	b.n	8b8 <_free_r+0x24>
     90e:	6820      	ldr	r0, [r4, #0]
     910:	1821      	adds	r1, r4, r0
     912:	428a      	cmp	r2, r1
     914:	bf01      	itttt	eq
     916:	6811      	ldreq	r1, [r2, #0]
     918:	6852      	ldreq	r2, [r2, #4]
     91a:	1809      	addeq	r1, r1, r0
     91c:	6021      	streq	r1, [r4, #0]
     91e:	6062      	str	r2, [r4, #4]
     920:	605c      	str	r4, [r3, #4]
     922:	e7c9      	b.n	8b8 <_free_r+0x24>
     924:	bd38      	pop	{r3, r4, r5, pc}
     926:	bf00      	nop
     928:	0000322c 	andeq	r3, r0, ip, lsr #4

0000092c <_malloc_r>:
     92c:	b570      	push	{r4, r5, r6, lr}
     92e:	1ccd      	adds	r5, r1, #3
     930:	f025 0503 	bic.w	r5, r5, #3
     934:	4606      	mov	r6, r0
     936:	3508      	adds	r5, #8
     938:	2d0c      	cmp	r5, #12
     93a:	bf38      	it	cc
     93c:	250c      	movcc	r5, #12
     93e:	2d00      	cmp	r5, #0
     940:	db01      	blt.n	946 <_malloc_r+0x1a>
     942:	42a9      	cmp	r1, r5
     944:	d903      	bls.n	94e <_malloc_r+0x22>
     946:	230c      	movs	r3, #12
     948:	6033      	str	r3, [r6, #0]
     94a:	2000      	movs	r0, #0
     94c:	bd70      	pop	{r4, r5, r6, pc}
     94e:	f000 fb7d 	bl	104c <__malloc_lock>
     952:	4a21      	ldr	r2, [pc, #132]	; (9d8 <_malloc_r+0xac>)
     954:	6814      	ldr	r4, [r2, #0]
     956:	4621      	mov	r1, r4
     958:	b991      	cbnz	r1, 980 <_malloc_r+0x54>
     95a:	4c20      	ldr	r4, [pc, #128]	; (9dc <_malloc_r+0xb0>)
     95c:	6823      	ldr	r3, [r4, #0]
     95e:	b91b      	cbnz	r3, 968 <_malloc_r+0x3c>
     960:	4630      	mov	r0, r6
     962:	f000 f8cd 	bl	b00 <_sbrk_r>
     966:	6020      	str	r0, [r4, #0]
     968:	4629      	mov	r1, r5
     96a:	4630      	mov	r0, r6
     96c:	f000 f8c8 	bl	b00 <_sbrk_r>
     970:	1c43      	adds	r3, r0, #1
     972:	d124      	bne.n	9be <_malloc_r+0x92>
     974:	230c      	movs	r3, #12
     976:	4630      	mov	r0, r6
     978:	6033      	str	r3, [r6, #0]
     97a:	f000 fb68 	bl	104e <__malloc_unlock>
     97e:	e7e4      	b.n	94a <_malloc_r+0x1e>
     980:	680b      	ldr	r3, [r1, #0]
     982:	1b5b      	subs	r3, r3, r5
     984:	d418      	bmi.n	9b8 <_malloc_r+0x8c>
     986:	2b0b      	cmp	r3, #11
     988:	d90f      	bls.n	9aa <_malloc_r+0x7e>
     98a:	18cc      	adds	r4, r1, r3
     98c:	600b      	str	r3, [r1, #0]
     98e:	50cd      	str	r5, [r1, r3]
     990:	4630      	mov	r0, r6
     992:	f000 fb5c 	bl	104e <__malloc_unlock>
     996:	f104 000b 	add.w	r0, r4, #11
     99a:	1d23      	adds	r3, r4, #4
     99c:	f020 0007 	bic.w	r0, r0, #7
     9a0:	1ac3      	subs	r3, r0, r3
     9a2:	d0d3      	beq.n	94c <_malloc_r+0x20>
     9a4:	425a      	negs	r2, r3
     9a6:	50e2      	str	r2, [r4, r3]
     9a8:	e7d0      	b.n	94c <_malloc_r+0x20>
     9aa:	684b      	ldr	r3, [r1, #4]
     9ac:	428c      	cmp	r4, r1
     9ae:	bf1a      	itte	ne
     9b0:	6063      	strne	r3, [r4, #4]
     9b2:	460c      	movne	r4, r1
     9b4:	6013      	streq	r3, [r2, #0]
     9b6:	e7eb      	b.n	990 <_malloc_r+0x64>
     9b8:	460c      	mov	r4, r1
     9ba:	6849      	ldr	r1, [r1, #4]
     9bc:	e7cc      	b.n	958 <_malloc_r+0x2c>
     9be:	1cc4      	adds	r4, r0, #3
     9c0:	f024 0403 	bic.w	r4, r4, #3
     9c4:	42a0      	cmp	r0, r4
     9c6:	d005      	beq.n	9d4 <_malloc_r+0xa8>
     9c8:	1a21      	subs	r1, r4, r0
     9ca:	4630      	mov	r0, r6
     9cc:	f000 f898 	bl	b00 <_sbrk_r>
     9d0:	3001      	adds	r0, #1
     9d2:	d0cf      	beq.n	974 <_malloc_r+0x48>
     9d4:	6025      	str	r5, [r4, #0]
     9d6:	e7db      	b.n	990 <_malloc_r+0x64>
     9d8:	0000322c 	andeq	r3, r0, ip, lsr #4
     9dc:	00003230 	andeq	r3, r0, r0, lsr r2

000009e0 <_iprintf_r>:
     9e0:	b40e      	push	{r1, r2, r3}
     9e2:	b517      	push	{r0, r1, r2, r4, lr}
     9e4:	4604      	mov	r4, r0
     9e6:	b118      	cbz	r0, 9f0 <_iprintf_r+0x10>
     9e8:	6983      	ldr	r3, [r0, #24]
     9ea:	b90b      	cbnz	r3, 9f0 <_iprintf_r+0x10>
     9ec:	f7ff fe58 	bl	6a0 <__sinit>
     9f0:	ab06      	add	r3, sp, #24
     9f2:	9a05      	ldr	r2, [sp, #20]
     9f4:	68a1      	ldr	r1, [r4, #8]
     9f6:	4620      	mov	r0, r4
     9f8:	9301      	str	r3, [sp, #4]
     9fa:	f000 fb5f 	bl	10bc <_vfiprintf_r>
     9fe:	b003      	add	sp, #12
     a00:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     a04:	b003      	add	sp, #12
     a06:	4770      	bx	lr

00000a08 <iprintf>:
     a08:	b40f      	push	{r0, r1, r2, r3}
     a0a:	4b0a      	ldr	r3, [pc, #40]	; (a34 <iprintf+0x2c>)
     a0c:	b513      	push	{r0, r1, r4, lr}
     a0e:	681c      	ldr	r4, [r3, #0]
     a10:	b124      	cbz	r4, a1c <iprintf+0x14>
     a12:	69a3      	ldr	r3, [r4, #24]
     a14:	b913      	cbnz	r3, a1c <iprintf+0x14>
     a16:	4620      	mov	r0, r4
     a18:	f7ff fe42 	bl	6a0 <__sinit>
     a1c:	ab05      	add	r3, sp, #20
     a1e:	9a04      	ldr	r2, [sp, #16]
     a20:	68a1      	ldr	r1, [r4, #8]
     a22:	4620      	mov	r0, r4
     a24:	9301      	str	r3, [sp, #4]
     a26:	f000 fb49 	bl	10bc <_vfiprintf_r>
     a2a:	b002      	add	sp, #8
     a2c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     a30:	b004      	add	sp, #16
     a32:	4770      	bx	lr
     a34:	00002d80 	andeq	r2, r0, r0, lsl #27

00000a38 <_puts_r>:
     a38:	b570      	push	{r4, r5, r6, lr}
     a3a:	460e      	mov	r6, r1
     a3c:	4605      	mov	r5, r0
     a3e:	b118      	cbz	r0, a48 <_puts_r+0x10>
     a40:	6983      	ldr	r3, [r0, #24]
     a42:	b90b      	cbnz	r3, a48 <_puts_r+0x10>
     a44:	f7ff fe2c 	bl	6a0 <__sinit>
     a48:	69ab      	ldr	r3, [r5, #24]
     a4a:	68ac      	ldr	r4, [r5, #8]
     a4c:	b913      	cbnz	r3, a54 <_puts_r+0x1c>
     a4e:	4628      	mov	r0, r5
     a50:	f7ff fe26 	bl	6a0 <__sinit>
     a54:	4b23      	ldr	r3, [pc, #140]	; (ae4 <_puts_r+0xac>)
     a56:	429c      	cmp	r4, r3
     a58:	d117      	bne.n	a8a <_puts_r+0x52>
     a5a:	686c      	ldr	r4, [r5, #4]
     a5c:	89a3      	ldrh	r3, [r4, #12]
     a5e:	071b      	lsls	r3, r3, #28
     a60:	d51d      	bpl.n	a9e <_puts_r+0x66>
     a62:	6923      	ldr	r3, [r4, #16]
     a64:	b1db      	cbz	r3, a9e <_puts_r+0x66>
     a66:	3e01      	subs	r6, #1
     a68:	f816 1f01 	ldrb.w	r1, [r6, #1]!
     a6c:	68a3      	ldr	r3, [r4, #8]
     a6e:	3b01      	subs	r3, #1
     a70:	60a3      	str	r3, [r4, #8]
     a72:	b9e9      	cbnz	r1, ab0 <_puts_r+0x78>
     a74:	2b00      	cmp	r3, #0
     a76:	da2e      	bge.n	ad6 <_puts_r+0x9e>
     a78:	4622      	mov	r2, r4
     a7a:	210a      	movs	r1, #10
     a7c:	4628      	mov	r0, r5
     a7e:	f000 f8c3 	bl	c08 <__swbuf_r>
     a82:	3001      	adds	r0, #1
     a84:	d011      	beq.n	aaa <_puts_r+0x72>
     a86:	200a      	movs	r0, #10
     a88:	e011      	b.n	aae <_puts_r+0x76>
     a8a:	4b17      	ldr	r3, [pc, #92]	; (ae8 <_puts_r+0xb0>)
     a8c:	429c      	cmp	r4, r3
     a8e:	d101      	bne.n	a94 <_puts_r+0x5c>
     a90:	68ac      	ldr	r4, [r5, #8]
     a92:	e7e3      	b.n	a5c <_puts_r+0x24>
     a94:	4b15      	ldr	r3, [pc, #84]	; (aec <_puts_r+0xb4>)
     a96:	429c      	cmp	r4, r3
     a98:	bf08      	it	eq
     a9a:	68ec      	ldreq	r4, [r5, #12]
     a9c:	e7de      	b.n	a5c <_puts_r+0x24>
     a9e:	4621      	mov	r1, r4
     aa0:	4628      	mov	r0, r5
     aa2:	f000 f91d 	bl	ce0 <__swsetup_r>
     aa6:	2800      	cmp	r0, #0
     aa8:	d0dd      	beq.n	a66 <_puts_r+0x2e>
     aaa:	f04f 30ff 	mov.w	r0, #4294967295
     aae:	bd70      	pop	{r4, r5, r6, pc}
     ab0:	2b00      	cmp	r3, #0
     ab2:	da04      	bge.n	abe <_puts_r+0x86>
     ab4:	69a2      	ldr	r2, [r4, #24]
     ab6:	429a      	cmp	r2, r3
     ab8:	dc06      	bgt.n	ac8 <_puts_r+0x90>
     aba:	290a      	cmp	r1, #10
     abc:	d004      	beq.n	ac8 <_puts_r+0x90>
     abe:	6823      	ldr	r3, [r4, #0]
     ac0:	1c5a      	adds	r2, r3, #1
     ac2:	6022      	str	r2, [r4, #0]
     ac4:	7019      	strb	r1, [r3, #0]
     ac6:	e7cf      	b.n	a68 <_puts_r+0x30>
     ac8:	4622      	mov	r2, r4
     aca:	4628      	mov	r0, r5
     acc:	f000 f89c 	bl	c08 <__swbuf_r>
     ad0:	3001      	adds	r0, #1
     ad2:	d1c9      	bne.n	a68 <_puts_r+0x30>
     ad4:	e7e9      	b.n	aaa <_puts_r+0x72>
     ad6:	6823      	ldr	r3, [r4, #0]
     ad8:	200a      	movs	r0, #10
     ada:	1c5a      	adds	r2, r3, #1
     adc:	6022      	str	r2, [r4, #0]
     ade:	7018      	strb	r0, [r3, #0]
     ae0:	e7e5      	b.n	aae <_puts_r+0x76>
     ae2:	bf00      	nop
     ae4:	00003058 	andeq	r3, r0, r8, asr r0
     ae8:	00003078 	andeq	r3, r0, r8, ror r0
     aec:	00003038 	andeq	r3, r0, r8, lsr r0

00000af0 <puts>:
     af0:	4b02      	ldr	r3, [pc, #8]	; (afc <puts+0xc>)
     af2:	4601      	mov	r1, r0
     af4:	6818      	ldr	r0, [r3, #0]
     af6:	f7ff bf9f 	b.w	a38 <_puts_r>
     afa:	bf00      	nop
     afc:	00002d80 	andeq	r2, r0, r0, lsl #27

00000b00 <_sbrk_r>:
     b00:	b538      	push	{r3, r4, r5, lr}
     b02:	4605      	mov	r5, r0
     b04:	4c05      	ldr	r4, [pc, #20]	; (b1c <_sbrk_r+0x1c>)
     b06:	4608      	mov	r0, r1
     b08:	2300      	movs	r3, #0
     b0a:	6023      	str	r3, [r4, #0]
     b0c:	f002 f918 	bl	2d40 <_sbrk>
     b10:	1c43      	adds	r3, r0, #1
     b12:	d102      	bne.n	b1a <_sbrk_r+0x1a>
     b14:	6823      	ldr	r3, [r4, #0]
     b16:	b103      	cbz	r3, b1a <_sbrk_r+0x1a>
     b18:	602b      	str	r3, [r5, #0]
     b1a:	bd38      	pop	{r3, r4, r5, pc}
     b1c:	000032e0 	andeq	r3, r0, r0, ror #5

00000b20 <iscanf>:
     b20:	b40f      	push	{r0, r1, r2, r3}
     b22:	4b0a      	ldr	r3, [pc, #40]	; (b4c <iscanf+0x2c>)
     b24:	b513      	push	{r0, r1, r4, lr}
     b26:	681c      	ldr	r4, [r3, #0]
     b28:	b124      	cbz	r4, b34 <iscanf+0x14>
     b2a:	69a3      	ldr	r3, [r4, #24]
     b2c:	b913      	cbnz	r3, b34 <iscanf+0x14>
     b2e:	4620      	mov	r0, r4
     b30:	f7ff fdb6 	bl	6a0 <__sinit>
     b34:	ab05      	add	r3, sp, #20
     b36:	9a04      	ldr	r2, [sp, #16]
     b38:	6861      	ldr	r1, [r4, #4]
     b3a:	4620      	mov	r0, r4
     b3c:	9301      	str	r3, [sp, #4]
     b3e:	f000 fef9 	bl	1934 <_vfiscanf_r>
     b42:	b002      	add	sp, #8
     b44:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     b48:	b004      	add	sp, #16
     b4a:	4770      	bx	lr
     b4c:	00002d80 	andeq	r2, r0, r0, lsl #27

00000b50 <_iscanf_r>:
     b50:	b40e      	push	{r1, r2, r3}
     b52:	b517      	push	{r0, r1, r2, r4, lr}
     b54:	4604      	mov	r4, r0
     b56:	b118      	cbz	r0, b60 <_iscanf_r+0x10>
     b58:	6983      	ldr	r3, [r0, #24]
     b5a:	b90b      	cbnz	r3, b60 <_iscanf_r+0x10>
     b5c:	f7ff fda0 	bl	6a0 <__sinit>
     b60:	ab06      	add	r3, sp, #24
     b62:	9a05      	ldr	r2, [sp, #20]
     b64:	6861      	ldr	r1, [r4, #4]
     b66:	4620      	mov	r0, r4
     b68:	9301      	str	r3, [sp, #4]
     b6a:	f000 fee3 	bl	1934 <_vfiscanf_r>
     b6e:	b003      	add	sp, #12
     b70:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     b74:	b003      	add	sp, #12
     b76:	4770      	bx	lr

00000b78 <__sread>:
     b78:	b510      	push	{r4, lr}
     b7a:	460c      	mov	r4, r1
     b7c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     b80:	f001 f854 	bl	1c2c <_read_r>
     b84:	2800      	cmp	r0, #0
     b86:	bfab      	itete	ge
     b88:	6d63      	ldrge	r3, [r4, #84]	; 0x54
     b8a:	89a3      	ldrhlt	r3, [r4, #12]
     b8c:	181b      	addge	r3, r3, r0
     b8e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
     b92:	bfac      	ite	ge
     b94:	6563      	strge	r3, [r4, #84]	; 0x54
     b96:	81a3      	strhlt	r3, [r4, #12]
     b98:	bd10      	pop	{r4, pc}

00000b9a <__seofread>:
     b9a:	2000      	movs	r0, #0
     b9c:	4770      	bx	lr

00000b9e <__swrite>:
     b9e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
     ba2:	461f      	mov	r7, r3
     ba4:	898b      	ldrh	r3, [r1, #12]
     ba6:	4605      	mov	r5, r0
     ba8:	460c      	mov	r4, r1
     baa:	4616      	mov	r6, r2
     bac:	05db      	lsls	r3, r3, #23
     bae:	d505      	bpl.n	bbc <__swrite+0x1e>
     bb0:	2302      	movs	r3, #2
     bb2:	2200      	movs	r2, #0
     bb4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     bb8:	f000 f9d2 	bl	f60 <_lseek_r>
     bbc:	89a3      	ldrh	r3, [r4, #12]
     bbe:	4632      	mov	r2, r6
     bc0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
     bc4:	4628      	mov	r0, r5
     bc6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
     bca:	81a3      	strh	r3, [r4, #12]
     bcc:	463b      	mov	r3, r7
     bce:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
     bd2:	f000 b873 	b.w	cbc <_write_r>

00000bd6 <__sseek>:
     bd6:	b510      	push	{r4, lr}
     bd8:	460c      	mov	r4, r1
     bda:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     bde:	f000 f9bf 	bl	f60 <_lseek_r>
     be2:	1c43      	adds	r3, r0, #1
     be4:	89a3      	ldrh	r3, [r4, #12]
     be6:	bf15      	itete	ne
     be8:	6560      	strne	r0, [r4, #84]	; 0x54
     bea:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
     bee:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
     bf2:	81a3      	strheq	r3, [r4, #12]
     bf4:	bf18      	it	ne
     bf6:	81a3      	strhne	r3, [r4, #12]
     bf8:	bd10      	pop	{r4, pc}

00000bfa <__sclose>:
     bfa:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     bfe:	f000 b8dd 	b.w	dbc <_close_r>

00000c02 <isatty>:
     c02:	f002 b88b 	b.w	2d1c <_isatty>
	...

00000c08 <__swbuf_r>:
     c08:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     c0a:	460e      	mov	r6, r1
     c0c:	4614      	mov	r4, r2
     c0e:	4605      	mov	r5, r0
     c10:	b118      	cbz	r0, c1a <__swbuf_r+0x12>
     c12:	6983      	ldr	r3, [r0, #24]
     c14:	b90b      	cbnz	r3, c1a <__swbuf_r+0x12>
     c16:	f7ff fd43 	bl	6a0 <__sinit>
     c1a:	4b21      	ldr	r3, [pc, #132]	; (ca0 <__swbuf_r+0x98>)
     c1c:	429c      	cmp	r4, r3
     c1e:	d12a      	bne.n	c76 <__swbuf_r+0x6e>
     c20:	686c      	ldr	r4, [r5, #4]
     c22:	69a3      	ldr	r3, [r4, #24]
     c24:	60a3      	str	r3, [r4, #8]
     c26:	89a3      	ldrh	r3, [r4, #12]
     c28:	071a      	lsls	r2, r3, #28
     c2a:	d52e      	bpl.n	c8a <__swbuf_r+0x82>
     c2c:	6923      	ldr	r3, [r4, #16]
     c2e:	b363      	cbz	r3, c8a <__swbuf_r+0x82>
     c30:	6923      	ldr	r3, [r4, #16]
     c32:	b2f6      	uxtb	r6, r6
     c34:	6820      	ldr	r0, [r4, #0]
     c36:	4637      	mov	r7, r6
     c38:	1ac0      	subs	r0, r0, r3
     c3a:	6963      	ldr	r3, [r4, #20]
     c3c:	4283      	cmp	r3, r0
     c3e:	dc04      	bgt.n	c4a <__swbuf_r+0x42>
     c40:	4621      	mov	r1, r4
     c42:	4628      	mov	r0, r5
     c44:	f000 f950 	bl	ee8 <_fflush_r>
     c48:	bb28      	cbnz	r0, c96 <__swbuf_r+0x8e>
     c4a:	68a3      	ldr	r3, [r4, #8]
     c4c:	3001      	adds	r0, #1
     c4e:	3b01      	subs	r3, #1
     c50:	60a3      	str	r3, [r4, #8]
     c52:	6823      	ldr	r3, [r4, #0]
     c54:	1c5a      	adds	r2, r3, #1
     c56:	6022      	str	r2, [r4, #0]
     c58:	701e      	strb	r6, [r3, #0]
     c5a:	6963      	ldr	r3, [r4, #20]
     c5c:	4283      	cmp	r3, r0
     c5e:	d004      	beq.n	c6a <__swbuf_r+0x62>
     c60:	89a3      	ldrh	r3, [r4, #12]
     c62:	07db      	lsls	r3, r3, #31
     c64:	d519      	bpl.n	c9a <__swbuf_r+0x92>
     c66:	2e0a      	cmp	r6, #10
     c68:	d117      	bne.n	c9a <__swbuf_r+0x92>
     c6a:	4621      	mov	r1, r4
     c6c:	4628      	mov	r0, r5
     c6e:	f000 f93b 	bl	ee8 <_fflush_r>
     c72:	b190      	cbz	r0, c9a <__swbuf_r+0x92>
     c74:	e00f      	b.n	c96 <__swbuf_r+0x8e>
     c76:	4b0b      	ldr	r3, [pc, #44]	; (ca4 <__swbuf_r+0x9c>)
     c78:	429c      	cmp	r4, r3
     c7a:	d101      	bne.n	c80 <__swbuf_r+0x78>
     c7c:	68ac      	ldr	r4, [r5, #8]
     c7e:	e7d0      	b.n	c22 <__swbuf_r+0x1a>
     c80:	4b09      	ldr	r3, [pc, #36]	; (ca8 <__swbuf_r+0xa0>)
     c82:	429c      	cmp	r4, r3
     c84:	bf08      	it	eq
     c86:	68ec      	ldreq	r4, [r5, #12]
     c88:	e7cb      	b.n	c22 <__swbuf_r+0x1a>
     c8a:	4621      	mov	r1, r4
     c8c:	4628      	mov	r0, r5
     c8e:	f000 f827 	bl	ce0 <__swsetup_r>
     c92:	2800      	cmp	r0, #0
     c94:	d0cc      	beq.n	c30 <__swbuf_r+0x28>
     c96:	f04f 37ff 	mov.w	r7, #4294967295
     c9a:	4638      	mov	r0, r7
     c9c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     c9e:	bf00      	nop
     ca0:	00003058 	andeq	r3, r0, r8, asr r0
     ca4:	00003078 	andeq	r3, r0, r8, ror r0
     ca8:	00003038 	andeq	r3, r0, r8, lsr r0

00000cac <__swbuf>:
     cac:	4b02      	ldr	r3, [pc, #8]	; (cb8 <__swbuf+0xc>)
     cae:	460a      	mov	r2, r1
     cb0:	4601      	mov	r1, r0
     cb2:	6818      	ldr	r0, [r3, #0]
     cb4:	f7ff bfa8 	b.w	c08 <__swbuf_r>
     cb8:	00002d80 	andeq	r2, r0, r0, lsl #27

00000cbc <_write_r>:
     cbc:	b538      	push	{r3, r4, r5, lr}
     cbe:	4605      	mov	r5, r0
     cc0:	4c06      	ldr	r4, [pc, #24]	; (cdc <_write_r+0x20>)
     cc2:	4608      	mov	r0, r1
     cc4:	4611      	mov	r1, r2
     cc6:	2200      	movs	r2, #0
     cc8:	6022      	str	r2, [r4, #0]
     cca:	461a      	mov	r2, r3
     ccc:	f7ff eab6 	blx	23c <_write>
     cd0:	1c43      	adds	r3, r0, #1
     cd2:	d102      	bne.n	cda <_write_r+0x1e>
     cd4:	6823      	ldr	r3, [r4, #0]
     cd6:	b103      	cbz	r3, cda <_write_r+0x1e>
     cd8:	602b      	str	r3, [r5, #0]
     cda:	bd38      	pop	{r3, r4, r5, pc}
     cdc:	000032e0 	andeq	r3, r0, r0, ror #5

00000ce0 <__swsetup_r>:
     ce0:	4b32      	ldr	r3, [pc, #200]	; (dac <__swsetup_r+0xcc>)
     ce2:	b570      	push	{r4, r5, r6, lr}
     ce4:	4606      	mov	r6, r0
     ce6:	681d      	ldr	r5, [r3, #0]
     ce8:	460c      	mov	r4, r1
     cea:	b125      	cbz	r5, cf6 <__swsetup_r+0x16>
     cec:	69ab      	ldr	r3, [r5, #24]
     cee:	b913      	cbnz	r3, cf6 <__swsetup_r+0x16>
     cf0:	4628      	mov	r0, r5
     cf2:	f7ff fcd5 	bl	6a0 <__sinit>
     cf6:	4b2e      	ldr	r3, [pc, #184]	; (db0 <__swsetup_r+0xd0>)
     cf8:	429c      	cmp	r4, r3
     cfa:	d10f      	bne.n	d1c <__swsetup_r+0x3c>
     cfc:	686c      	ldr	r4, [r5, #4]
     cfe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     d02:	b29a      	uxth	r2, r3
     d04:	0715      	lsls	r5, r2, #28
     d06:	d42c      	bmi.n	d62 <__swsetup_r+0x82>
     d08:	06d0      	lsls	r0, r2, #27
     d0a:	d411      	bmi.n	d30 <__swsetup_r+0x50>
     d0c:	2209      	movs	r2, #9
     d0e:	6032      	str	r2, [r6, #0]
     d10:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     d14:	f04f 30ff 	mov.w	r0, #4294967295
     d18:	81a3      	strh	r3, [r4, #12]
     d1a:	e03e      	b.n	d9a <__swsetup_r+0xba>
     d1c:	4b25      	ldr	r3, [pc, #148]	; (db4 <__swsetup_r+0xd4>)
     d1e:	429c      	cmp	r4, r3
     d20:	d101      	bne.n	d26 <__swsetup_r+0x46>
     d22:	68ac      	ldr	r4, [r5, #8]
     d24:	e7eb      	b.n	cfe <__swsetup_r+0x1e>
     d26:	4b24      	ldr	r3, [pc, #144]	; (db8 <__swsetup_r+0xd8>)
     d28:	429c      	cmp	r4, r3
     d2a:	bf08      	it	eq
     d2c:	68ec      	ldreq	r4, [r5, #12]
     d2e:	e7e6      	b.n	cfe <__swsetup_r+0x1e>
     d30:	0751      	lsls	r1, r2, #29
     d32:	d512      	bpl.n	d5a <__swsetup_r+0x7a>
     d34:	6b61      	ldr	r1, [r4, #52]	; 0x34
     d36:	b141      	cbz	r1, d4a <__swsetup_r+0x6a>
     d38:	f104 0344 	add.w	r3, r4, #68	; 0x44
     d3c:	4299      	cmp	r1, r3
     d3e:	d002      	beq.n	d46 <__swsetup_r+0x66>
     d40:	4630      	mov	r0, r6
     d42:	f7ff fda7 	bl	894 <_free_r>
     d46:	2300      	movs	r3, #0
     d48:	6363      	str	r3, [r4, #52]	; 0x34
     d4a:	89a3      	ldrh	r3, [r4, #12]
     d4c:	f023 0324 	bic.w	r3, r3, #36	; 0x24
     d50:	81a3      	strh	r3, [r4, #12]
     d52:	2300      	movs	r3, #0
     d54:	6063      	str	r3, [r4, #4]
     d56:	6923      	ldr	r3, [r4, #16]
     d58:	6023      	str	r3, [r4, #0]
     d5a:	89a3      	ldrh	r3, [r4, #12]
     d5c:	f043 0308 	orr.w	r3, r3, #8
     d60:	81a3      	strh	r3, [r4, #12]
     d62:	6923      	ldr	r3, [r4, #16]
     d64:	b94b      	cbnz	r3, d7a <__swsetup_r+0x9a>
     d66:	89a3      	ldrh	r3, [r4, #12]
     d68:	f403 7320 	and.w	r3, r3, #640	; 0x280
     d6c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     d70:	d003      	beq.n	d7a <__swsetup_r+0x9a>
     d72:	4621      	mov	r1, r4
     d74:	4630      	mov	r0, r6
     d76:	f000 f929 	bl	fcc <__smakebuf_r>
     d7a:	89a2      	ldrh	r2, [r4, #12]
     d7c:	f012 0301 	ands.w	r3, r2, #1
     d80:	d00c      	beq.n	d9c <__swsetup_r+0xbc>
     d82:	2300      	movs	r3, #0
     d84:	60a3      	str	r3, [r4, #8]
     d86:	6963      	ldr	r3, [r4, #20]
     d88:	425b      	negs	r3, r3
     d8a:	61a3      	str	r3, [r4, #24]
     d8c:	6923      	ldr	r3, [r4, #16]
     d8e:	b953      	cbnz	r3, da6 <__swsetup_r+0xc6>
     d90:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     d94:	f013 0080 	ands.w	r0, r3, #128	; 0x80
     d98:	d1ba      	bne.n	d10 <__swsetup_r+0x30>
     d9a:	bd70      	pop	{r4, r5, r6, pc}
     d9c:	0792      	lsls	r2, r2, #30
     d9e:	bf58      	it	pl
     da0:	6963      	ldrpl	r3, [r4, #20]
     da2:	60a3      	str	r3, [r4, #8]
     da4:	e7f2      	b.n	d8c <__swsetup_r+0xac>
     da6:	2000      	movs	r0, #0
     da8:	e7f7      	b.n	d9a <__swsetup_r+0xba>
     daa:	bf00      	nop
     dac:	00002d80 	andeq	r2, r0, r0, lsl #27
     db0:	00003058 	andeq	r3, r0, r8, asr r0
     db4:	00003078 	andeq	r3, r0, r8, ror r0
     db8:	00003038 	andeq	r3, r0, r8, lsr r0

00000dbc <_close_r>:
     dbc:	b538      	push	{r3, r4, r5, lr}
     dbe:	4605      	mov	r5, r0
     dc0:	4c05      	ldr	r4, [pc, #20]	; (dd8 <_close_r+0x1c>)
     dc2:	4608      	mov	r0, r1
     dc4:	2300      	movs	r3, #0
     dc6:	6023      	str	r3, [r4, #0]
     dc8:	f001 ff94 	bl	2cf4 <_close>
     dcc:	1c43      	adds	r3, r0, #1
     dce:	d102      	bne.n	dd6 <_close_r+0x1a>
     dd0:	6823      	ldr	r3, [r4, #0]
     dd2:	b103      	cbz	r3, dd6 <_close_r+0x1a>
     dd4:	602b      	str	r3, [r5, #0]
     dd6:	bd38      	pop	{r3, r4, r5, pc}
     dd8:	000032e0 	andeq	r3, r0, r0, ror #5

00000ddc <__sflush_r>:
     ddc:	898a      	ldrh	r2, [r1, #12]
     dde:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
     de2:	4605      	mov	r5, r0
     de4:	0710      	lsls	r0, r2, #28
     de6:	460c      	mov	r4, r1
     de8:	d459      	bmi.n	e9e <__sflush_r+0xc2>
     dea:	684b      	ldr	r3, [r1, #4]
     dec:	2b00      	cmp	r3, #0
     dee:	dc05      	bgt.n	dfc <__sflush_r+0x20>
     df0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
     df2:	2b00      	cmp	r3, #0
     df4:	dc02      	bgt.n	dfc <__sflush_r+0x20>
     df6:	2000      	movs	r0, #0
     df8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
     dfc:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
     dfe:	2e00      	cmp	r6, #0
     e00:	d0f9      	beq.n	df6 <__sflush_r+0x1a>
     e02:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
     e06:	682f      	ldr	r7, [r5, #0]
     e08:	f04f 0300 	mov.w	r3, #0
     e0c:	6a21      	ldr	r1, [r4, #32]
     e0e:	602b      	str	r3, [r5, #0]
     e10:	d032      	beq.n	e78 <__sflush_r+0x9c>
     e12:	6d60      	ldr	r0, [r4, #84]	; 0x54
     e14:	89a3      	ldrh	r3, [r4, #12]
     e16:	075a      	lsls	r2, r3, #29
     e18:	d505      	bpl.n	e26 <__sflush_r+0x4a>
     e1a:	6863      	ldr	r3, [r4, #4]
     e1c:	1ac0      	subs	r0, r0, r3
     e1e:	6b63      	ldr	r3, [r4, #52]	; 0x34
     e20:	b10b      	cbz	r3, e26 <__sflush_r+0x4a>
     e22:	6c23      	ldr	r3, [r4, #64]	; 0x40
     e24:	1ac0      	subs	r0, r0, r3
     e26:	2300      	movs	r3, #0
     e28:	4602      	mov	r2, r0
     e2a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
     e2c:	4628      	mov	r0, r5
     e2e:	6a21      	ldr	r1, [r4, #32]
     e30:	47b0      	blx	r6
     e32:	1c43      	adds	r3, r0, #1
     e34:	89a3      	ldrh	r3, [r4, #12]
     e36:	d106      	bne.n	e46 <__sflush_r+0x6a>
     e38:	6829      	ldr	r1, [r5, #0]
     e3a:	291d      	cmp	r1, #29
     e3c:	d848      	bhi.n	ed0 <__sflush_r+0xf4>
     e3e:	4a29      	ldr	r2, [pc, #164]	; (ee4 <__sflush_r+0x108>)
     e40:	40ca      	lsrs	r2, r1
     e42:	07d6      	lsls	r6, r2, #31
     e44:	d544      	bpl.n	ed0 <__sflush_r+0xf4>
     e46:	2200      	movs	r2, #0
     e48:	6062      	str	r2, [r4, #4]
     e4a:	6922      	ldr	r2, [r4, #16]
     e4c:	04d9      	lsls	r1, r3, #19
     e4e:	6022      	str	r2, [r4, #0]
     e50:	d504      	bpl.n	e5c <__sflush_r+0x80>
     e52:	1c42      	adds	r2, r0, #1
     e54:	d101      	bne.n	e5a <__sflush_r+0x7e>
     e56:	682b      	ldr	r3, [r5, #0]
     e58:	b903      	cbnz	r3, e5c <__sflush_r+0x80>
     e5a:	6560      	str	r0, [r4, #84]	; 0x54
     e5c:	6b61      	ldr	r1, [r4, #52]	; 0x34
     e5e:	602f      	str	r7, [r5, #0]
     e60:	2900      	cmp	r1, #0
     e62:	d0c8      	beq.n	df6 <__sflush_r+0x1a>
     e64:	f104 0344 	add.w	r3, r4, #68	; 0x44
     e68:	4299      	cmp	r1, r3
     e6a:	d002      	beq.n	e72 <__sflush_r+0x96>
     e6c:	4628      	mov	r0, r5
     e6e:	f7ff fd11 	bl	894 <_free_r>
     e72:	2000      	movs	r0, #0
     e74:	6360      	str	r0, [r4, #52]	; 0x34
     e76:	e7bf      	b.n	df8 <__sflush_r+0x1c>
     e78:	2301      	movs	r3, #1
     e7a:	4628      	mov	r0, r5
     e7c:	47b0      	blx	r6
     e7e:	1c41      	adds	r1, r0, #1
     e80:	d1c8      	bne.n	e14 <__sflush_r+0x38>
     e82:	682b      	ldr	r3, [r5, #0]
     e84:	2b00      	cmp	r3, #0
     e86:	d0c5      	beq.n	e14 <__sflush_r+0x38>
     e88:	2b1d      	cmp	r3, #29
     e8a:	d001      	beq.n	e90 <__sflush_r+0xb4>
     e8c:	2b16      	cmp	r3, #22
     e8e:	d101      	bne.n	e94 <__sflush_r+0xb8>
     e90:	602f      	str	r7, [r5, #0]
     e92:	e7b0      	b.n	df6 <__sflush_r+0x1a>
     e94:	89a3      	ldrh	r3, [r4, #12]
     e96:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     e9a:	81a3      	strh	r3, [r4, #12]
     e9c:	e7ac      	b.n	df8 <__sflush_r+0x1c>
     e9e:	690f      	ldr	r7, [r1, #16]
     ea0:	2f00      	cmp	r7, #0
     ea2:	d0a8      	beq.n	df6 <__sflush_r+0x1a>
     ea4:	0793      	lsls	r3, r2, #30
     ea6:	680e      	ldr	r6, [r1, #0]
     ea8:	600f      	str	r7, [r1, #0]
     eaa:	bf08      	it	eq
     eac:	694b      	ldreq	r3, [r1, #20]
     eae:	eba6 0807 	sub.w	r8, r6, r7
     eb2:	bf18      	it	ne
     eb4:	2300      	movne	r3, #0
     eb6:	608b      	str	r3, [r1, #8]
     eb8:	f1b8 0f00 	cmp.w	r8, #0
     ebc:	dd9b      	ble.n	df6 <__sflush_r+0x1a>
     ebe:	4643      	mov	r3, r8
     ec0:	463a      	mov	r2, r7
     ec2:	6a21      	ldr	r1, [r4, #32]
     ec4:	4628      	mov	r0, r5
     ec6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
     ec8:	47b0      	blx	r6
     eca:	2800      	cmp	r0, #0
     ecc:	dc06      	bgt.n	edc <__sflush_r+0x100>
     ece:	89a3      	ldrh	r3, [r4, #12]
     ed0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     ed4:	f04f 30ff 	mov.w	r0, #4294967295
     ed8:	81a3      	strh	r3, [r4, #12]
     eda:	e78d      	b.n	df8 <__sflush_r+0x1c>
     edc:	4407      	add	r7, r0
     ede:	eba8 0800 	sub.w	r8, r8, r0
     ee2:	e7e9      	b.n	eb8 <__sflush_r+0xdc>
     ee4:	20400001 	subcs	r0, r0, r1

00000ee8 <_fflush_r>:
     ee8:	b538      	push	{r3, r4, r5, lr}
     eea:	4605      	mov	r5, r0
     eec:	690b      	ldr	r3, [r1, #16]
     eee:	460c      	mov	r4, r1
     ef0:	b1db      	cbz	r3, f2a <_fflush_r+0x42>
     ef2:	b118      	cbz	r0, efc <_fflush_r+0x14>
     ef4:	6983      	ldr	r3, [r0, #24]
     ef6:	b90b      	cbnz	r3, efc <_fflush_r+0x14>
     ef8:	f7ff fbd2 	bl	6a0 <__sinit>
     efc:	4b0c      	ldr	r3, [pc, #48]	; (f30 <_fflush_r+0x48>)
     efe:	429c      	cmp	r4, r3
     f00:	d109      	bne.n	f16 <_fflush_r+0x2e>
     f02:	686c      	ldr	r4, [r5, #4]
     f04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     f08:	b17b      	cbz	r3, f2a <_fflush_r+0x42>
     f0a:	4621      	mov	r1, r4
     f0c:	4628      	mov	r0, r5
     f0e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
     f12:	f7ff bf63 	b.w	ddc <__sflush_r>
     f16:	4b07      	ldr	r3, [pc, #28]	; (f34 <_fflush_r+0x4c>)
     f18:	429c      	cmp	r4, r3
     f1a:	d101      	bne.n	f20 <_fflush_r+0x38>
     f1c:	68ac      	ldr	r4, [r5, #8]
     f1e:	e7f1      	b.n	f04 <_fflush_r+0x1c>
     f20:	4b05      	ldr	r3, [pc, #20]	; (f38 <_fflush_r+0x50>)
     f22:	429c      	cmp	r4, r3
     f24:	bf08      	it	eq
     f26:	68ec      	ldreq	r4, [r5, #12]
     f28:	e7ec      	b.n	f04 <_fflush_r+0x1c>
     f2a:	2000      	movs	r0, #0
     f2c:	bd38      	pop	{r3, r4, r5, pc}
     f2e:	bf00      	nop
     f30:	00003058 	andeq	r3, r0, r8, asr r0
     f34:	00003078 	andeq	r3, r0, r8, ror r0
     f38:	00003038 	andeq	r3, r0, r8, lsr r0

00000f3c <fflush>:
     f3c:	4601      	mov	r1, r0
     f3e:	b920      	cbnz	r0, f4a <fflush+0xe>
     f40:	4b04      	ldr	r3, [pc, #16]	; (f54 <fflush+0x18>)
     f42:	4905      	ldr	r1, [pc, #20]	; (f58 <fflush+0x1c>)
     f44:	6818      	ldr	r0, [r3, #0]
     f46:	f7ff bc4b 	b.w	7e0 <_fwalk_reent>
     f4a:	4b04      	ldr	r3, [pc, #16]	; (f5c <fflush+0x20>)
     f4c:	6818      	ldr	r0, [r3, #0]
     f4e:	f7ff bfcb 	b.w	ee8 <_fflush_r>
     f52:	bf00      	nop
     f54:	00003098 	muleq	r0, r8, r0
     f58:	00000ee9 	andeq	r0, r0, r9, ror #29
     f5c:	00002d80 	andeq	r2, r0, r0, lsl #27

00000f60 <_lseek_r>:
     f60:	b538      	push	{r3, r4, r5, lr}
     f62:	4605      	mov	r5, r0
     f64:	4c06      	ldr	r4, [pc, #24]	; (f80 <_lseek_r+0x20>)
     f66:	4608      	mov	r0, r1
     f68:	4611      	mov	r1, r2
     f6a:	2200      	movs	r2, #0
     f6c:	6022      	str	r2, [r4, #0]
     f6e:	461a      	mov	r2, r3
     f70:	f001 fedc 	bl	2d2c <_lseek>
     f74:	1c43      	adds	r3, r0, #1
     f76:	d102      	bne.n	f7e <_lseek_r+0x1e>
     f78:	6823      	ldr	r3, [r4, #0]
     f7a:	b103      	cbz	r3, f7e <_lseek_r+0x1e>
     f7c:	602b      	str	r3, [r5, #0]
     f7e:	bd38      	pop	{r3, r4, r5, pc}
     f80:	000032e0 	andeq	r3, r0, r0, ror #5

00000f84 <__swhatbuf_r>:
     f84:	b570      	push	{r4, r5, r6, lr}
     f86:	460e      	mov	r6, r1
     f88:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     f8c:	b096      	sub	sp, #88	; 0x58
     f8e:	4614      	mov	r4, r2
     f90:	461d      	mov	r5, r3
     f92:	2900      	cmp	r1, #0
     f94:	da07      	bge.n	fa6 <__swhatbuf_r+0x22>
     f96:	2300      	movs	r3, #0
     f98:	602b      	str	r3, [r5, #0]
     f9a:	89b3      	ldrh	r3, [r6, #12]
     f9c:	061a      	lsls	r2, r3, #24
     f9e:	d410      	bmi.n	fc2 <__swhatbuf_r+0x3e>
     fa0:	f44f 6380 	mov.w	r3, #1024	; 0x400
     fa4:	e00e      	b.n	fc4 <__swhatbuf_r+0x40>
     fa6:	466a      	mov	r2, sp
     fa8:	f001 f9a6 	bl	22f8 <_fstat_r>
     fac:	2800      	cmp	r0, #0
     fae:	dbf2      	blt.n	f96 <__swhatbuf_r+0x12>
     fb0:	9a01      	ldr	r2, [sp, #4]
     fb2:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
     fb6:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
     fba:	425a      	negs	r2, r3
     fbc:	415a      	adcs	r2, r3
     fbe:	602a      	str	r2, [r5, #0]
     fc0:	e7ee      	b.n	fa0 <__swhatbuf_r+0x1c>
     fc2:	2340      	movs	r3, #64	; 0x40
     fc4:	2000      	movs	r0, #0
     fc6:	6023      	str	r3, [r4, #0]
     fc8:	b016      	add	sp, #88	; 0x58
     fca:	bd70      	pop	{r4, r5, r6, pc}

00000fcc <__smakebuf_r>:
     fcc:	898b      	ldrh	r3, [r1, #12]
     fce:	b573      	push	{r0, r1, r4, r5, r6, lr}
     fd0:	079d      	lsls	r5, r3, #30
     fd2:	4606      	mov	r6, r0
     fd4:	460c      	mov	r4, r1
     fd6:	d507      	bpl.n	fe8 <__smakebuf_r+0x1c>
     fd8:	f104 0347 	add.w	r3, r4, #71	; 0x47
     fdc:	6023      	str	r3, [r4, #0]
     fde:	6123      	str	r3, [r4, #16]
     fe0:	2301      	movs	r3, #1
     fe2:	6163      	str	r3, [r4, #20]
     fe4:	b002      	add	sp, #8
     fe6:	bd70      	pop	{r4, r5, r6, pc}
     fe8:	ab01      	add	r3, sp, #4
     fea:	466a      	mov	r2, sp
     fec:	f7ff ffca 	bl	f84 <__swhatbuf_r>
     ff0:	9900      	ldr	r1, [sp, #0]
     ff2:	4605      	mov	r5, r0
     ff4:	4630      	mov	r0, r6
     ff6:	f7ff fc99 	bl	92c <_malloc_r>
     ffa:	b948      	cbnz	r0, 1010 <__STACK_SIZE+0x10>
     ffc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    1000:	059a      	lsls	r2, r3, #22
    1002:	d4ef      	bmi.n	fe4 <__smakebuf_r+0x18>
    1004:	f023 0303 	bic.w	r3, r3, #3
    1008:	f043 0302 	orr.w	r3, r3, #2
    100c:	81a3      	strh	r3, [r4, #12]
    100e:	e7e3      	b.n	fd8 <__smakebuf_r+0xc>
    1010:	4b0d      	ldr	r3, [pc, #52]	; (1048 <__STACK_SIZE+0x48>)
    1012:	62b3      	str	r3, [r6, #40]	; 0x28
    1014:	89a3      	ldrh	r3, [r4, #12]
    1016:	6020      	str	r0, [r4, #0]
    1018:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    101c:	81a3      	strh	r3, [r4, #12]
    101e:	9b00      	ldr	r3, [sp, #0]
    1020:	6120      	str	r0, [r4, #16]
    1022:	6163      	str	r3, [r4, #20]
    1024:	9b01      	ldr	r3, [sp, #4]
    1026:	b15b      	cbz	r3, 1040 <__STACK_SIZE+0x40>
    1028:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
    102c:	4630      	mov	r0, r6
    102e:	f001 fac7 	bl	25c0 <_isatty_r>
    1032:	b128      	cbz	r0, 1040 <__STACK_SIZE+0x40>
    1034:	89a3      	ldrh	r3, [r4, #12]
    1036:	f023 0303 	bic.w	r3, r3, #3
    103a:	f043 0301 	orr.w	r3, r3, #1
    103e:	81a3      	strh	r3, [r4, #12]
    1040:	89a3      	ldrh	r3, [r4, #12]
    1042:	431d      	orrs	r5, r3
    1044:	81a5      	strh	r5, [r4, #12]
    1046:	e7cd      	b.n	fe4 <__smakebuf_r+0x18>
    1048:	00000659 	andeq	r0, r0, r9, asr r6

0000104c <__malloc_lock>:
    104c:	4770      	bx	lr

0000104e <__malloc_unlock>:
    104e:	4770      	bx	lr

00001050 <__sfputc_r>:
    1050:	6893      	ldr	r3, [r2, #8]
    1052:	b410      	push	{r4}
    1054:	3b01      	subs	r3, #1
    1056:	2b00      	cmp	r3, #0
    1058:	6093      	str	r3, [r2, #8]
    105a:	da08      	bge.n	106e <__sfputc_r+0x1e>
    105c:	6994      	ldr	r4, [r2, #24]
    105e:	42a3      	cmp	r3, r4
    1060:	db01      	blt.n	1066 <__sfputc_r+0x16>
    1062:	290a      	cmp	r1, #10
    1064:	d103      	bne.n	106e <__sfputc_r+0x1e>
    1066:	f85d 4b04 	ldr.w	r4, [sp], #4
    106a:	f7ff bdcd 	b.w	c08 <__swbuf_r>
    106e:	6813      	ldr	r3, [r2, #0]
    1070:	1c58      	adds	r0, r3, #1
    1072:	6010      	str	r0, [r2, #0]
    1074:	7019      	strb	r1, [r3, #0]
    1076:	4608      	mov	r0, r1
    1078:	f85d 4b04 	ldr.w	r4, [sp], #4
    107c:	4770      	bx	lr

0000107e <__sfputs_r>:
    107e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1080:	18d5      	adds	r5, r2, r3
    1082:	4606      	mov	r6, r0
    1084:	460f      	mov	r7, r1
    1086:	4614      	mov	r4, r2
    1088:	42ac      	cmp	r4, r5
    108a:	d101      	bne.n	1090 <__sfputs_r+0x12>
    108c:	2000      	movs	r0, #0
    108e:	e007      	b.n	10a0 <__sfputs_r+0x22>
    1090:	463a      	mov	r2, r7
    1092:	f814 1b01 	ldrb.w	r1, [r4], #1
    1096:	4630      	mov	r0, r6
    1098:	f7ff ffda 	bl	1050 <__sfputc_r>
    109c:	1c43      	adds	r3, r0, #1
    109e:	d1f3      	bne.n	1088 <__sfputs_r+0xa>
    10a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000010a2 <__sprint_r>:
    10a2:	b538      	push	{r3, r4, r5, lr}
    10a4:	4614      	mov	r4, r2
    10a6:	6893      	ldr	r3, [r2, #8]
    10a8:	2500      	movs	r5, #0
    10aa:	b913      	cbnz	r3, 10b2 <__sprint_r+0x10>
    10ac:	4618      	mov	r0, r3
    10ae:	6053      	str	r3, [r2, #4]
    10b0:	bd38      	pop	{r3, r4, r5, pc}
    10b2:	f001 f933 	bl	231c <__sfvwrite_r>
    10b6:	e9c4 5501 	strd	r5, r5, [r4, #4]
    10ba:	e7f9      	b.n	10b0 <__sprint_r+0xe>

000010bc <_vfiprintf_r>:
    10bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    10c0:	460c      	mov	r4, r1
    10c2:	b09d      	sub	sp, #116	; 0x74
    10c4:	4617      	mov	r7, r2
    10c6:	461d      	mov	r5, r3
    10c8:	4606      	mov	r6, r0
    10ca:	b118      	cbz	r0, 10d4 <_vfiprintf_r+0x18>
    10cc:	6983      	ldr	r3, [r0, #24]
    10ce:	b90b      	cbnz	r3, 10d4 <_vfiprintf_r+0x18>
    10d0:	f7ff fae6 	bl	6a0 <__sinit>
    10d4:	4b7c      	ldr	r3, [pc, #496]	; (12c8 <_vfiprintf_r+0x20c>)
    10d6:	429c      	cmp	r4, r3
    10d8:	d158      	bne.n	118c <_vfiprintf_r+0xd0>
    10da:	6874      	ldr	r4, [r6, #4]
    10dc:	89a3      	ldrh	r3, [r4, #12]
    10de:	0718      	lsls	r0, r3, #28
    10e0:	d55e      	bpl.n	11a0 <_vfiprintf_r+0xe4>
    10e2:	6923      	ldr	r3, [r4, #16]
    10e4:	2b00      	cmp	r3, #0
    10e6:	d05b      	beq.n	11a0 <_vfiprintf_r+0xe4>
    10e8:	f04f 0b01 	mov.w	fp, #1
    10ec:	2300      	movs	r3, #0
    10ee:	9503      	str	r5, [sp, #12]
    10f0:	9309      	str	r3, [sp, #36]	; 0x24
    10f2:	2320      	movs	r3, #32
    10f4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
    10f8:	2330      	movs	r3, #48	; 0x30
    10fa:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
    10fe:	46b8      	mov	r8, r7
    1100:	4645      	mov	r5, r8
    1102:	f815 3b01 	ldrb.w	r3, [r5], #1
    1106:	b10b      	cbz	r3, 110c <_vfiprintf_r+0x50>
    1108:	2b25      	cmp	r3, #37	; 0x25
    110a:	d154      	bne.n	11b6 <_vfiprintf_r+0xfa>
    110c:	ebb8 0a07 	subs.w	sl, r8, r7
    1110:	d00b      	beq.n	112a <_vfiprintf_r+0x6e>
    1112:	4653      	mov	r3, sl
    1114:	463a      	mov	r2, r7
    1116:	4621      	mov	r1, r4
    1118:	4630      	mov	r0, r6
    111a:	f7ff ffb0 	bl	107e <__sfputs_r>
    111e:	3001      	adds	r0, #1
    1120:	f000 80c2 	beq.w	12a8 <_vfiprintf_r+0x1ec>
    1124:	9b09      	ldr	r3, [sp, #36]	; 0x24
    1126:	4453      	add	r3, sl
    1128:	9309      	str	r3, [sp, #36]	; 0x24
    112a:	f898 3000 	ldrb.w	r3, [r8]
    112e:	2b00      	cmp	r3, #0
    1130:	f000 80ba 	beq.w	12a8 <_vfiprintf_r+0x1ec>
    1134:	2300      	movs	r3, #0
    1136:	f04f 32ff 	mov.w	r2, #4294967295
    113a:	9304      	str	r3, [sp, #16]
    113c:	9307      	str	r3, [sp, #28]
    113e:	e9cd 2305 	strd	r2, r3, [sp, #20]
    1142:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
    1146:	931a      	str	r3, [sp, #104]	; 0x68
    1148:	46a8      	mov	r8, r5
    114a:	2205      	movs	r2, #5
    114c:	f818 1b01 	ldrb.w	r1, [r8], #1
    1150:	485e      	ldr	r0, [pc, #376]	; (12cc <_vfiprintf_r+0x210>)
    1152:	f001 faad 	bl	26b0 <memchr>
    1156:	9b04      	ldr	r3, [sp, #16]
    1158:	bb78      	cbnz	r0, 11ba <_vfiprintf_r+0xfe>
    115a:	06d9      	lsls	r1, r3, #27
    115c:	bf44      	itt	mi
    115e:	2220      	movmi	r2, #32
    1160:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
    1164:	071a      	lsls	r2, r3, #28
    1166:	bf44      	itt	mi
    1168:	222b      	movmi	r2, #43	; 0x2b
    116a:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
    116e:	782a      	ldrb	r2, [r5, #0]
    1170:	2a2a      	cmp	r2, #42	; 0x2a
    1172:	d02a      	beq.n	11ca <_vfiprintf_r+0x10e>
    1174:	9a07      	ldr	r2, [sp, #28]
    1176:	46a8      	mov	r8, r5
    1178:	2000      	movs	r0, #0
    117a:	250a      	movs	r5, #10
    117c:	4641      	mov	r1, r8
    117e:	f811 3b01 	ldrb.w	r3, [r1], #1
    1182:	3b30      	subs	r3, #48	; 0x30
    1184:	2b09      	cmp	r3, #9
    1186:	d969      	bls.n	125c <_vfiprintf_r+0x1a0>
    1188:	b360      	cbz	r0, 11e4 <_vfiprintf_r+0x128>
    118a:	e024      	b.n	11d6 <_vfiprintf_r+0x11a>
    118c:	4b50      	ldr	r3, [pc, #320]	; (12d0 <_vfiprintf_r+0x214>)
    118e:	429c      	cmp	r4, r3
    1190:	d101      	bne.n	1196 <_vfiprintf_r+0xda>
    1192:	68b4      	ldr	r4, [r6, #8]
    1194:	e7a2      	b.n	10dc <_vfiprintf_r+0x20>
    1196:	4b4f      	ldr	r3, [pc, #316]	; (12d4 <_vfiprintf_r+0x218>)
    1198:	429c      	cmp	r4, r3
    119a:	bf08      	it	eq
    119c:	68f4      	ldreq	r4, [r6, #12]
    119e:	e79d      	b.n	10dc <_vfiprintf_r+0x20>
    11a0:	4621      	mov	r1, r4
    11a2:	4630      	mov	r0, r6
    11a4:	f7ff fd9c 	bl	ce0 <__swsetup_r>
    11a8:	2800      	cmp	r0, #0
    11aa:	d09d      	beq.n	10e8 <_vfiprintf_r+0x2c>
    11ac:	f04f 30ff 	mov.w	r0, #4294967295
    11b0:	b01d      	add	sp, #116	; 0x74
    11b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    11b6:	46a8      	mov	r8, r5
    11b8:	e7a2      	b.n	1100 <_vfiprintf_r+0x44>
    11ba:	4a44      	ldr	r2, [pc, #272]	; (12cc <_vfiprintf_r+0x210>)
    11bc:	4645      	mov	r5, r8
    11be:	1a80      	subs	r0, r0, r2
    11c0:	fa0b f000 	lsl.w	r0, fp, r0
    11c4:	4318      	orrs	r0, r3
    11c6:	9004      	str	r0, [sp, #16]
    11c8:	e7be      	b.n	1148 <_vfiprintf_r+0x8c>
    11ca:	9a03      	ldr	r2, [sp, #12]
    11cc:	1d11      	adds	r1, r2, #4
    11ce:	9103      	str	r1, [sp, #12]
    11d0:	6812      	ldr	r2, [r2, #0]
    11d2:	2a00      	cmp	r2, #0
    11d4:	db01      	blt.n	11da <_vfiprintf_r+0x11e>
    11d6:	9207      	str	r2, [sp, #28]
    11d8:	e004      	b.n	11e4 <_vfiprintf_r+0x128>
    11da:	4252      	negs	r2, r2
    11dc:	f043 0302 	orr.w	r3, r3, #2
    11e0:	9207      	str	r2, [sp, #28]
    11e2:	9304      	str	r3, [sp, #16]
    11e4:	f898 3000 	ldrb.w	r3, [r8]
    11e8:	2b2e      	cmp	r3, #46	; 0x2e
    11ea:	d10e      	bne.n	120a <_vfiprintf_r+0x14e>
    11ec:	f898 3001 	ldrb.w	r3, [r8, #1]
    11f0:	2b2a      	cmp	r3, #42	; 0x2a
    11f2:	d138      	bne.n	1266 <_vfiprintf_r+0x1aa>
    11f4:	9b03      	ldr	r3, [sp, #12]
    11f6:	f108 0802 	add.w	r8, r8, #2
    11fa:	1d1a      	adds	r2, r3, #4
    11fc:	9203      	str	r2, [sp, #12]
    11fe:	681b      	ldr	r3, [r3, #0]
    1200:	2b00      	cmp	r3, #0
    1202:	bfb8      	it	lt
    1204:	f04f 33ff 	movlt.w	r3, #4294967295
    1208:	9305      	str	r3, [sp, #20]
    120a:	4d33      	ldr	r5, [pc, #204]	; (12d8 <_vfiprintf_r+0x21c>)
    120c:	2203      	movs	r2, #3
    120e:	f898 1000 	ldrb.w	r1, [r8]
    1212:	4628      	mov	r0, r5
    1214:	f001 fa4c 	bl	26b0 <memchr>
    1218:	b140      	cbz	r0, 122c <_vfiprintf_r+0x170>
    121a:	2340      	movs	r3, #64	; 0x40
    121c:	1b40      	subs	r0, r0, r5
    121e:	fa03 f000 	lsl.w	r0, r3, r0
    1222:	f108 0801 	add.w	r8, r8, #1
    1226:	9b04      	ldr	r3, [sp, #16]
    1228:	4303      	orrs	r3, r0
    122a:	9304      	str	r3, [sp, #16]
    122c:	f898 1000 	ldrb.w	r1, [r8]
    1230:	2206      	movs	r2, #6
    1232:	482a      	ldr	r0, [pc, #168]	; (12dc <_vfiprintf_r+0x220>)
    1234:	f108 0701 	add.w	r7, r8, #1
    1238:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
    123c:	f001 fa38 	bl	26b0 <memchr>
    1240:	2800      	cmp	r0, #0
    1242:	d037      	beq.n	12b4 <_vfiprintf_r+0x1f8>
    1244:	4b26      	ldr	r3, [pc, #152]	; (12e0 <_vfiprintf_r+0x224>)
    1246:	bb1b      	cbnz	r3, 1290 <_vfiprintf_r+0x1d4>
    1248:	9b03      	ldr	r3, [sp, #12]
    124a:	3307      	adds	r3, #7
    124c:	f023 0307 	bic.w	r3, r3, #7
    1250:	3308      	adds	r3, #8
    1252:	9303      	str	r3, [sp, #12]
    1254:	9b09      	ldr	r3, [sp, #36]	; 0x24
    1256:	444b      	add	r3, r9
    1258:	9309      	str	r3, [sp, #36]	; 0x24
    125a:	e750      	b.n	10fe <_vfiprintf_r+0x42>
    125c:	fb05 3202 	mla	r2, r5, r2, r3
    1260:	2001      	movs	r0, #1
    1262:	4688      	mov	r8, r1
    1264:	e78a      	b.n	117c <_vfiprintf_r+0xc0>
    1266:	2300      	movs	r3, #0
    1268:	f108 0801 	add.w	r8, r8, #1
    126c:	4619      	mov	r1, r3
    126e:	250a      	movs	r5, #10
    1270:	9305      	str	r3, [sp, #20]
    1272:	4640      	mov	r0, r8
    1274:	f810 2b01 	ldrb.w	r2, [r0], #1
    1278:	3a30      	subs	r2, #48	; 0x30
    127a:	2a09      	cmp	r2, #9
    127c:	d903      	bls.n	1286 <_vfiprintf_r+0x1ca>
    127e:	2b00      	cmp	r3, #0
    1280:	d0c3      	beq.n	120a <_vfiprintf_r+0x14e>
    1282:	9105      	str	r1, [sp, #20]
    1284:	e7c1      	b.n	120a <_vfiprintf_r+0x14e>
    1286:	fb05 2101 	mla	r1, r5, r1, r2
    128a:	2301      	movs	r3, #1
    128c:	4680      	mov	r8, r0
    128e:	e7f0      	b.n	1272 <_vfiprintf_r+0x1b6>
    1290:	ab03      	add	r3, sp, #12
    1292:	4622      	mov	r2, r4
    1294:	9300      	str	r3, [sp, #0]
    1296:	a904      	add	r1, sp, #16
    1298:	4b12      	ldr	r3, [pc, #72]	; (12e4 <_vfiprintf_r+0x228>)
    129a:	4630      	mov	r0, r6
    129c:	f3af 8000 	nop.w
    12a0:	f1b0 3fff 	cmp.w	r0, #4294967295
    12a4:	4681      	mov	r9, r0
    12a6:	d1d5      	bne.n	1254 <_vfiprintf_r+0x198>
    12a8:	89a3      	ldrh	r3, [r4, #12]
    12aa:	065b      	lsls	r3, r3, #25
    12ac:	f53f af7e 	bmi.w	11ac <_vfiprintf_r+0xf0>
    12b0:	9809      	ldr	r0, [sp, #36]	; 0x24
    12b2:	e77d      	b.n	11b0 <_vfiprintf_r+0xf4>
    12b4:	ab03      	add	r3, sp, #12
    12b6:	4622      	mov	r2, r4
    12b8:	9300      	str	r3, [sp, #0]
    12ba:	a904      	add	r1, sp, #16
    12bc:	4b09      	ldr	r3, [pc, #36]	; (12e4 <_vfiprintf_r+0x228>)
    12be:	4630      	mov	r0, r6
    12c0:	f000 f896 	bl	13f0 <_printf_i>
    12c4:	e7ec      	b.n	12a0 <_vfiprintf_r+0x1e4>
    12c6:	bf00      	nop
    12c8:	00003058 	andeq	r3, r0, r8, asr r0
    12cc:	0000309c 	muleq	r0, ip, r0
    12d0:	00003078 	andeq	r3, r0, r8, ror r0
    12d4:	00003038 	andeq	r3, r0, r8, lsr r0
    12d8:	000030a2 	andeq	r3, r0, r2, lsr #1
    12dc:	000030a6 	andeq	r3, r0, r6, lsr #1
    12e0:	00000000 	andeq	r0, r0, r0
    12e4:	0000107f 	andeq	r1, r0, pc, ror r0

000012e8 <vfiprintf>:
    12e8:	4613      	mov	r3, r2
    12ea:	460a      	mov	r2, r1
    12ec:	4601      	mov	r1, r0
    12ee:	4802      	ldr	r0, [pc, #8]	; (12f8 <vfiprintf+0x10>)
    12f0:	6800      	ldr	r0, [r0, #0]
    12f2:	f7ff bee3 	b.w	10bc <_vfiprintf_r>
    12f6:	bf00      	nop
    12f8:	00002d80 	andeq	r2, r0, r0, lsl #27

000012fc <_printf_common>:
    12fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    1300:	4691      	mov	r9, r2
    1302:	461f      	mov	r7, r3
    1304:	688a      	ldr	r2, [r1, #8]
    1306:	690b      	ldr	r3, [r1, #16]
    1308:	4606      	mov	r6, r0
    130a:	460c      	mov	r4, r1
    130c:	f8dd 8020 	ldr.w	r8, [sp, #32]
    1310:	4293      	cmp	r3, r2
    1312:	bfb8      	it	lt
    1314:	4613      	movlt	r3, r2
    1316:	f8c9 3000 	str.w	r3, [r9]
    131a:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
    131e:	b112      	cbz	r2, 1326 <_printf_common+0x2a>
    1320:	3301      	adds	r3, #1
    1322:	f8c9 3000 	str.w	r3, [r9]
    1326:	6823      	ldr	r3, [r4, #0]
    1328:	0699      	lsls	r1, r3, #26
    132a:	bf42      	ittt	mi
    132c:	f8d9 3000 	ldrmi.w	r3, [r9]
    1330:	3302      	addmi	r3, #2
    1332:	f8c9 3000 	strmi.w	r3, [r9]
    1336:	6825      	ldr	r5, [r4, #0]
    1338:	f015 0506 	ands.w	r5, r5, #6
    133c:	d107      	bne.n	134e <_printf_common+0x52>
    133e:	f104 0a19 	add.w	sl, r4, #25
    1342:	68e3      	ldr	r3, [r4, #12]
    1344:	f8d9 2000 	ldr.w	r2, [r9]
    1348:	1a9b      	subs	r3, r3, r2
    134a:	42ab      	cmp	r3, r5
    134c:	dc2c      	bgt.n	13a8 <_printf_common+0xac>
    134e:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
    1352:	6822      	ldr	r2, [r4, #0]
    1354:	3300      	adds	r3, #0
    1356:	bf18      	it	ne
    1358:	2301      	movne	r3, #1
    135a:	0692      	lsls	r2, r2, #26
    135c:	d431      	bmi.n	13c2 <_printf_common+0xc6>
    135e:	f104 0243 	add.w	r2, r4, #67	; 0x43
    1362:	4639      	mov	r1, r7
    1364:	4630      	mov	r0, r6
    1366:	47c0      	blx	r8
    1368:	3001      	adds	r0, #1
    136a:	d024      	beq.n	13b6 <_printf_common+0xba>
    136c:	6823      	ldr	r3, [r4, #0]
    136e:	341a      	adds	r4, #26
    1370:	f854 5c0e 	ldr.w	r5, [r4, #-14]
    1374:	f8d9 2000 	ldr.w	r2, [r9]
    1378:	f003 0306 	and.w	r3, r3, #6
    137c:	2b04      	cmp	r3, #4
    137e:	f854 3c12 	ldr.w	r3, [r4, #-18]
    1382:	bf08      	it	eq
    1384:	1aad      	subeq	r5, r5, r2
    1386:	f854 2c0a 	ldr.w	r2, [r4, #-10]
    138a:	bf18      	it	ne
    138c:	2500      	movne	r5, #0
    138e:	f04f 0900 	mov.w	r9, #0
    1392:	bf08      	it	eq
    1394:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
    1398:	4293      	cmp	r3, r2
    139a:	bfc4      	itt	gt
    139c:	1a9b      	subgt	r3, r3, r2
    139e:	18ed      	addgt	r5, r5, r3
    13a0:	454d      	cmp	r5, r9
    13a2:	d11a      	bne.n	13da <_printf_common+0xde>
    13a4:	2000      	movs	r0, #0
    13a6:	e008      	b.n	13ba <_printf_common+0xbe>
    13a8:	2301      	movs	r3, #1
    13aa:	4652      	mov	r2, sl
    13ac:	4639      	mov	r1, r7
    13ae:	4630      	mov	r0, r6
    13b0:	47c0      	blx	r8
    13b2:	3001      	adds	r0, #1
    13b4:	d103      	bne.n	13be <_printf_common+0xc2>
    13b6:	f04f 30ff 	mov.w	r0, #4294967295
    13ba:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    13be:	3501      	adds	r5, #1
    13c0:	e7bf      	b.n	1342 <_printf_common+0x46>
    13c2:	18e1      	adds	r1, r4, r3
    13c4:	1c5a      	adds	r2, r3, #1
    13c6:	2030      	movs	r0, #48	; 0x30
    13c8:	4422      	add	r2, r4
    13ca:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
    13ce:	3302      	adds	r3, #2
    13d0:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
    13d4:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
    13d8:	e7c1      	b.n	135e <_printf_common+0x62>
    13da:	2301      	movs	r3, #1
    13dc:	4622      	mov	r2, r4
    13de:	4639      	mov	r1, r7
    13e0:	4630      	mov	r0, r6
    13e2:	47c0      	blx	r8
    13e4:	3001      	adds	r0, #1
    13e6:	d0e6      	beq.n	13b6 <_printf_common+0xba>
    13e8:	f109 0901 	add.w	r9, r9, #1
    13ec:	e7d8      	b.n	13a0 <_printf_common+0xa4>
	...

000013f0 <_printf_i>:
    13f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    13f4:	4617      	mov	r7, r2
    13f6:	7e0a      	ldrb	r2, [r1, #24]
    13f8:	b085      	sub	sp, #20
    13fa:	4698      	mov	r8, r3
    13fc:	4606      	mov	r6, r0
    13fe:	2a6e      	cmp	r2, #110	; 0x6e
    1400:	460c      	mov	r4, r1
    1402:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    1404:	f101 0a43 	add.w	sl, r1, #67	; 0x43
    1408:	f000 80bb 	beq.w	1582 <_printf_i+0x192>
    140c:	d824      	bhi.n	1458 <_printf_i+0x68>
    140e:	2a63      	cmp	r2, #99	; 0x63
    1410:	d039      	beq.n	1486 <_printf_i+0x96>
    1412:	d80a      	bhi.n	142a <_printf_i+0x3a>
    1414:	2a00      	cmp	r2, #0
    1416:	f000 80c1 	beq.w	159c <_printf_i+0x1ac>
    141a:	2a58      	cmp	r2, #88	; 0x58
    141c:	f000 808a 	beq.w	1534 <_printf_i+0x144>
    1420:	f104 0542 	add.w	r5, r4, #66	; 0x42
    1424:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
    1428:	e035      	b.n	1496 <_printf_i+0xa6>
    142a:	2a64      	cmp	r2, #100	; 0x64
    142c:	d001      	beq.n	1432 <_printf_i+0x42>
    142e:	2a69      	cmp	r2, #105	; 0x69
    1430:	d1f6      	bne.n	1420 <_printf_i+0x30>
    1432:	6820      	ldr	r0, [r4, #0]
    1434:	6819      	ldr	r1, [r3, #0]
    1436:	0605      	lsls	r5, r0, #24
    1438:	f101 0204 	add.w	r2, r1, #4
    143c:	d52d      	bpl.n	149a <_printf_i+0xaa>
    143e:	6808      	ldr	r0, [r1, #0]
    1440:	601a      	str	r2, [r3, #0]
    1442:	2800      	cmp	r0, #0
    1444:	da03      	bge.n	144e <_printf_i+0x5e>
    1446:	4240      	negs	r0, r0
    1448:	232d      	movs	r3, #45	; 0x2d
    144a:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
    144e:	f8df 91d0 	ldr.w	r9, [pc, #464]	; 1620 <_printf_i+0x230>
    1452:	f04f 0b0a 	mov.w	fp, #10
    1456:	e03d      	b.n	14d4 <_printf_i+0xe4>
    1458:	2a73      	cmp	r2, #115	; 0x73
    145a:	f000 80a3 	beq.w	15a4 <_printf_i+0x1b4>
    145e:	d808      	bhi.n	1472 <_printf_i+0x82>
    1460:	2a6f      	cmp	r2, #111	; 0x6f
    1462:	d021      	beq.n	14a8 <_printf_i+0xb8>
    1464:	2a70      	cmp	r2, #112	; 0x70
    1466:	d1db      	bne.n	1420 <_printf_i+0x30>
    1468:	680a      	ldr	r2, [r1, #0]
    146a:	f042 0220 	orr.w	r2, r2, #32
    146e:	600a      	str	r2, [r1, #0]
    1470:	e003      	b.n	147a <_printf_i+0x8a>
    1472:	2a75      	cmp	r2, #117	; 0x75
    1474:	d018      	beq.n	14a8 <_printf_i+0xb8>
    1476:	2a78      	cmp	r2, #120	; 0x78
    1478:	d1d2      	bne.n	1420 <_printf_i+0x30>
    147a:	2278      	movs	r2, #120	; 0x78
    147c:	f8df 91a4 	ldr.w	r9, [pc, #420]	; 1624 <_printf_i+0x234>
    1480:	f884 2045 	strb.w	r2, [r4, #69]	; 0x45
    1484:	e05a      	b.n	153c <_printf_i+0x14c>
    1486:	681a      	ldr	r2, [r3, #0]
    1488:	f104 0542 	add.w	r5, r4, #66	; 0x42
    148c:	1d11      	adds	r1, r2, #4
    148e:	6019      	str	r1, [r3, #0]
    1490:	6813      	ldr	r3, [r2, #0]
    1492:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
    1496:	2301      	movs	r3, #1
    1498:	e091      	b.n	15be <_printf_i+0x1ce>
    149a:	f010 0f40 	tst.w	r0, #64	; 0x40
    149e:	6808      	ldr	r0, [r1, #0]
    14a0:	601a      	str	r2, [r3, #0]
    14a2:	bf18      	it	ne
    14a4:	b200      	sxthne	r0, r0
    14a6:	e7cc      	b.n	1442 <_printf_i+0x52>
    14a8:	6819      	ldr	r1, [r3, #0]
    14aa:	6825      	ldr	r5, [r4, #0]
    14ac:	1d08      	adds	r0, r1, #4
    14ae:	6018      	str	r0, [r3, #0]
    14b0:	062b      	lsls	r3, r5, #24
    14b2:	d501      	bpl.n	14b8 <_printf_i+0xc8>
    14b4:	6808      	ldr	r0, [r1, #0]
    14b6:	e002      	b.n	14be <_printf_i+0xce>
    14b8:	0668      	lsls	r0, r5, #25
    14ba:	d5fb      	bpl.n	14b4 <_printf_i+0xc4>
    14bc:	8808      	ldrh	r0, [r1, #0]
    14be:	2a6f      	cmp	r2, #111	; 0x6f
    14c0:	f8df 915c 	ldr.w	r9, [pc, #348]	; 1620 <_printf_i+0x230>
    14c4:	bf14      	ite	ne
    14c6:	f04f 0b0a 	movne.w	fp, #10
    14ca:	f04f 0b08 	moveq.w	fp, #8
    14ce:	2300      	movs	r3, #0
    14d0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
    14d4:	6862      	ldr	r2, [r4, #4]
    14d6:	2a00      	cmp	r2, #0
    14d8:	60a2      	str	r2, [r4, #8]
    14da:	f2c0 8097 	blt.w	160c <_printf_i+0x21c>
    14de:	6823      	ldr	r3, [r4, #0]
    14e0:	f023 0304 	bic.w	r3, r3, #4
    14e4:	6023      	str	r3, [r4, #0]
    14e6:	2800      	cmp	r0, #0
    14e8:	d140      	bne.n	156c <_printf_i+0x17c>
    14ea:	2a00      	cmp	r2, #0
    14ec:	f040 8090 	bne.w	1610 <_printf_i+0x220>
    14f0:	4655      	mov	r5, sl
    14f2:	f1bb 0f08 	cmp.w	fp, #8
    14f6:	d10b      	bne.n	1510 <_printf_i+0x120>
    14f8:	6823      	ldr	r3, [r4, #0]
    14fa:	07db      	lsls	r3, r3, #31
    14fc:	d508      	bpl.n	1510 <_printf_i+0x120>
    14fe:	6923      	ldr	r3, [r4, #16]
    1500:	6862      	ldr	r2, [r4, #4]
    1502:	429a      	cmp	r2, r3
    1504:	bfde      	ittt	le
    1506:	2330      	movle	r3, #48	; 0x30
    1508:	f805 3c01 	strble.w	r3, [r5, #-1]
    150c:	f105 35ff 	addle.w	r5, r5, #4294967295
    1510:	ebaa 0305 	sub.w	r3, sl, r5
    1514:	6123      	str	r3, [r4, #16]
    1516:	f8cd 8000 	str.w	r8, [sp]
    151a:	463b      	mov	r3, r7
    151c:	aa03      	add	r2, sp, #12
    151e:	4621      	mov	r1, r4
    1520:	4630      	mov	r0, r6
    1522:	f7ff feeb 	bl	12fc <_printf_common>
    1526:	3001      	adds	r0, #1
    1528:	d14e      	bne.n	15c8 <_printf_i+0x1d8>
    152a:	f04f 30ff 	mov.w	r0, #4294967295
    152e:	b005      	add	sp, #20
    1530:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1534:	f8df 90e8 	ldr.w	r9, [pc, #232]	; 1620 <_printf_i+0x230>
    1538:	f881 2045 	strb.w	r2, [r1, #69]	; 0x45
    153c:	6818      	ldr	r0, [r3, #0]
    153e:	6822      	ldr	r2, [r4, #0]
    1540:	1d01      	adds	r1, r0, #4
    1542:	6800      	ldr	r0, [r0, #0]
    1544:	6019      	str	r1, [r3, #0]
    1546:	0613      	lsls	r3, r2, #24
    1548:	d50c      	bpl.n	1564 <_printf_i+0x174>
    154a:	07d1      	lsls	r1, r2, #31
    154c:	bf44      	itt	mi
    154e:	f042 0220 	orrmi.w	r2, r2, #32
    1552:	6022      	strmi	r2, [r4, #0]
    1554:	b918      	cbnz	r0, 155e <_printf_i+0x16e>
    1556:	6823      	ldr	r3, [r4, #0]
    1558:	f023 0320 	bic.w	r3, r3, #32
    155c:	6023      	str	r3, [r4, #0]
    155e:	f04f 0b10 	mov.w	fp, #16
    1562:	e7b4      	b.n	14ce <_printf_i+0xde>
    1564:	0655      	lsls	r5, r2, #25
    1566:	bf48      	it	mi
    1568:	b280      	uxthmi	r0, r0
    156a:	e7ee      	b.n	154a <_printf_i+0x15a>
    156c:	4655      	mov	r5, sl
    156e:	4659      	mov	r1, fp
    1570:	f001 fa58 	bl	2a24 <__aeabi_uidivmod>
    1574:	f819 3001 	ldrb.w	r3, [r9, r1]
    1578:	f805 3d01 	strb.w	r3, [r5, #-1]!
    157c:	2800      	cmp	r0, #0
    157e:	d1f6      	bne.n	156e <_printf_i+0x17e>
    1580:	e7b7      	b.n	14f2 <_printf_i+0x102>
    1582:	680d      	ldr	r5, [r1, #0]
    1584:	681a      	ldr	r2, [r3, #0]
    1586:	6949      	ldr	r1, [r1, #20]
    1588:	1d10      	adds	r0, r2, #4
    158a:	6018      	str	r0, [r3, #0]
    158c:	0628      	lsls	r0, r5, #24
    158e:	6813      	ldr	r3, [r2, #0]
    1590:	d501      	bpl.n	1596 <_printf_i+0x1a6>
    1592:	6019      	str	r1, [r3, #0]
    1594:	e002      	b.n	159c <_printf_i+0x1ac>
    1596:	066a      	lsls	r2, r5, #25
    1598:	d5fb      	bpl.n	1592 <_printf_i+0x1a2>
    159a:	8019      	strh	r1, [r3, #0]
    159c:	2300      	movs	r3, #0
    159e:	4655      	mov	r5, sl
    15a0:	6123      	str	r3, [r4, #16]
    15a2:	e7b8      	b.n	1516 <_printf_i+0x126>
    15a4:	681a      	ldr	r2, [r3, #0]
    15a6:	1d11      	adds	r1, r2, #4
    15a8:	6019      	str	r1, [r3, #0]
    15aa:	6815      	ldr	r5, [r2, #0]
    15ac:	2100      	movs	r1, #0
    15ae:	6862      	ldr	r2, [r4, #4]
    15b0:	4628      	mov	r0, r5
    15b2:	f001 f87d 	bl	26b0 <memchr>
    15b6:	b108      	cbz	r0, 15bc <_printf_i+0x1cc>
    15b8:	1b40      	subs	r0, r0, r5
    15ba:	6060      	str	r0, [r4, #4]
    15bc:	6863      	ldr	r3, [r4, #4]
    15be:	6123      	str	r3, [r4, #16]
    15c0:	2300      	movs	r3, #0
    15c2:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
    15c6:	e7a6      	b.n	1516 <_printf_i+0x126>
    15c8:	6923      	ldr	r3, [r4, #16]
    15ca:	462a      	mov	r2, r5
    15cc:	4639      	mov	r1, r7
    15ce:	4630      	mov	r0, r6
    15d0:	47c0      	blx	r8
    15d2:	3001      	adds	r0, #1
    15d4:	d0a9      	beq.n	152a <_printf_i+0x13a>
    15d6:	6823      	ldr	r3, [r4, #0]
    15d8:	079b      	lsls	r3, r3, #30
    15da:	d413      	bmi.n	1604 <_printf_i+0x214>
    15dc:	68e0      	ldr	r0, [r4, #12]
    15de:	9b03      	ldr	r3, [sp, #12]
    15e0:	4298      	cmp	r0, r3
    15e2:	bfb8      	it	lt
    15e4:	4618      	movlt	r0, r3
    15e6:	e7a2      	b.n	152e <_printf_i+0x13e>
    15e8:	2301      	movs	r3, #1
    15ea:	464a      	mov	r2, r9
    15ec:	4639      	mov	r1, r7
    15ee:	4630      	mov	r0, r6
    15f0:	47c0      	blx	r8
    15f2:	3001      	adds	r0, #1
    15f4:	d099      	beq.n	152a <_printf_i+0x13a>
    15f6:	3501      	adds	r5, #1
    15f8:	68e3      	ldr	r3, [r4, #12]
    15fa:	9a03      	ldr	r2, [sp, #12]
    15fc:	1a9b      	subs	r3, r3, r2
    15fe:	42ab      	cmp	r3, r5
    1600:	dcf2      	bgt.n	15e8 <_printf_i+0x1f8>
    1602:	e7eb      	b.n	15dc <_printf_i+0x1ec>
    1604:	2500      	movs	r5, #0
    1606:	f104 0919 	add.w	r9, r4, #25
    160a:	e7f5      	b.n	15f8 <_printf_i+0x208>
    160c:	2800      	cmp	r0, #0
    160e:	d1ad      	bne.n	156c <_printf_i+0x17c>
    1610:	f899 3000 	ldrb.w	r3, [r9]
    1614:	f104 0542 	add.w	r5, r4, #66	; 0x42
    1618:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
    161c:	e769      	b.n	14f2 <_printf_i+0x102>
    161e:	bf00      	nop
    1620:	000030ad 	andeq	r3, r0, sp, lsr #1
    1624:	000030be 	strheq	r3, [r0], -lr

00001628 <__svfiscanf_r>:
    1628:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    162c:	f5ad 7d23 	sub.w	sp, sp, #652	; 0x28c
    1630:	460c      	mov	r4, r1
    1632:	2100      	movs	r1, #0
    1634:	9144      	str	r1, [sp, #272]	; 0x110
    1636:	4606      	mov	r6, r0
    1638:	9145      	str	r1, [sp, #276]	; 0x114
    163a:	4692      	mov	sl, r2
    163c:	499e      	ldr	r1, [pc, #632]	; (18b8 <__svfiscanf_r+0x290>)
    163e:	270a      	movs	r7, #10
    1640:	f8df 927c 	ldr.w	r9, [pc, #636]	; 18c0 <__svfiscanf_r+0x298>
    1644:	f10d 0804 	add.w	r8, sp, #4
    1648:	9300      	str	r3, [sp, #0]
    164a:	91a0      	str	r1, [sp, #640]	; 0x280
    164c:	499b      	ldr	r1, [pc, #620]	; (18bc <__svfiscanf_r+0x294>)
    164e:	f8cd 8118 	str.w	r8, [sp, #280]	; 0x118
    1652:	91a1      	str	r1, [sp, #644]	; 0x284
    1654:	f89a 3000 	ldrb.w	r3, [sl]
    1658:	2b00      	cmp	r3, #0
    165a:	f000 812b 	beq.w	18b4 <__svfiscanf_r+0x28c>
    165e:	f000 ffed 	bl	263c <__locale_ctype_ptr>
    1662:	4655      	mov	r5, sl
    1664:	f815 bb01 	ldrb.w	fp, [r5], #1
    1668:	4458      	add	r0, fp
    166a:	7843      	ldrb	r3, [r0, #1]
    166c:	f013 0308 	ands.w	r3, r3, #8
    1670:	d01c      	beq.n	16ac <__svfiscanf_r+0x84>
    1672:	6863      	ldr	r3, [r4, #4]
    1674:	2b00      	cmp	r3, #0
    1676:	dd12      	ble.n	169e <__svfiscanf_r+0x76>
    1678:	f000 ffe0 	bl	263c <__locale_ctype_ptr>
    167c:	6823      	ldr	r3, [r4, #0]
    167e:	781a      	ldrb	r2, [r3, #0]
    1680:	4410      	add	r0, r2
    1682:	7842      	ldrb	r2, [r0, #1]
    1684:	0712      	lsls	r2, r2, #28
    1686:	d401      	bmi.n	168c <__svfiscanf_r+0x64>
    1688:	46aa      	mov	sl, r5
    168a:	e7e3      	b.n	1654 <__svfiscanf_r+0x2c>
    168c:	9a45      	ldr	r2, [sp, #276]	; 0x114
    168e:	3301      	adds	r3, #1
    1690:	6023      	str	r3, [r4, #0]
    1692:	3201      	adds	r2, #1
    1694:	9245      	str	r2, [sp, #276]	; 0x114
    1696:	6862      	ldr	r2, [r4, #4]
    1698:	3a01      	subs	r2, #1
    169a:	6062      	str	r2, [r4, #4]
    169c:	e7e9      	b.n	1672 <__svfiscanf_r+0x4a>
    169e:	9ba1      	ldr	r3, [sp, #644]	; 0x284
    16a0:	4621      	mov	r1, r4
    16a2:	4630      	mov	r0, r6
    16a4:	4798      	blx	r3
    16a6:	2800      	cmp	r0, #0
    16a8:	d0e6      	beq.n	1678 <__svfiscanf_r+0x50>
    16aa:	e7ed      	b.n	1688 <__svfiscanf_r+0x60>
    16ac:	f1bb 0f25 	cmp.w	fp, #37	; 0x25
    16b0:	f040 8082 	bne.w	17b8 <__svfiscanf_r+0x190>
    16b4:	9343      	str	r3, [sp, #268]	; 0x10c
    16b6:	9341      	str	r3, [sp, #260]	; 0x104
    16b8:	f89a 3001 	ldrb.w	r3, [sl, #1]
    16bc:	2b2a      	cmp	r3, #42	; 0x2a
    16be:	d103      	bne.n	16c8 <__svfiscanf_r+0xa0>
    16c0:	f10a 0502 	add.w	r5, sl, #2
    16c4:	2310      	movs	r3, #16
    16c6:	9341      	str	r3, [sp, #260]	; 0x104
    16c8:	46aa      	mov	sl, r5
    16ca:	f815 1b01 	ldrb.w	r1, [r5], #1
    16ce:	f1a1 0230 	sub.w	r2, r1, #48	; 0x30
    16d2:	2a09      	cmp	r2, #9
    16d4:	d922      	bls.n	171c <__svfiscanf_r+0xf4>
    16d6:	2203      	movs	r2, #3
    16d8:	4879      	ldr	r0, [pc, #484]	; (18c0 <__svfiscanf_r+0x298>)
    16da:	f000 ffe9 	bl	26b0 <memchr>
    16de:	b138      	cbz	r0, 16f0 <__svfiscanf_r+0xc8>
    16e0:	eba0 0309 	sub.w	r3, r0, r9
    16e4:	2001      	movs	r0, #1
    16e6:	4098      	lsls	r0, r3
    16e8:	9b41      	ldr	r3, [sp, #260]	; 0x104
    16ea:	46aa      	mov	sl, r5
    16ec:	4318      	orrs	r0, r3
    16ee:	9041      	str	r0, [sp, #260]	; 0x104
    16f0:	f89a 3000 	ldrb.w	r3, [sl]
    16f4:	f10a 0501 	add.w	r5, sl, #1
    16f8:	2b67      	cmp	r3, #103	; 0x67
    16fa:	d82b      	bhi.n	1754 <__svfiscanf_r+0x12c>
    16fc:	2b65      	cmp	r3, #101	; 0x65
    16fe:	f080 80a0 	bcs.w	1842 <__svfiscanf_r+0x21a>
    1702:	2b47      	cmp	r3, #71	; 0x47
    1704:	d810      	bhi.n	1728 <__svfiscanf_r+0x100>
    1706:	2b45      	cmp	r3, #69	; 0x45
    1708:	f080 809b 	bcs.w	1842 <__svfiscanf_r+0x21a>
    170c:	2b00      	cmp	r3, #0
    170e:	d06c      	beq.n	17ea <__svfiscanf_r+0x1c2>
    1710:	2b25      	cmp	r3, #37	; 0x25
    1712:	d051      	beq.n	17b8 <__svfiscanf_r+0x190>
    1714:	2303      	movs	r3, #3
    1716:	9742      	str	r7, [sp, #264]	; 0x108
    1718:	9347      	str	r3, [sp, #284]	; 0x11c
    171a:	e027      	b.n	176c <__svfiscanf_r+0x144>
    171c:	9b43      	ldr	r3, [sp, #268]	; 0x10c
    171e:	fb07 1303 	mla	r3, r7, r3, r1
    1722:	3b30      	subs	r3, #48	; 0x30
    1724:	9343      	str	r3, [sp, #268]	; 0x10c
    1726:	e7cf      	b.n	16c8 <__svfiscanf_r+0xa0>
    1728:	2b5b      	cmp	r3, #91	; 0x5b
    172a:	d06a      	beq.n	1802 <__svfiscanf_r+0x1da>
    172c:	d80c      	bhi.n	1748 <__svfiscanf_r+0x120>
    172e:	2b58      	cmp	r3, #88	; 0x58
    1730:	d1f0      	bne.n	1714 <__svfiscanf_r+0xec>
    1732:	9a41      	ldr	r2, [sp, #260]	; 0x104
    1734:	f442 7200 	orr.w	r2, r2, #512	; 0x200
    1738:	9241      	str	r2, [sp, #260]	; 0x104
    173a:	2210      	movs	r2, #16
    173c:	9242      	str	r2, [sp, #264]	; 0x108
    173e:	2b6e      	cmp	r3, #110	; 0x6e
    1740:	bf8c      	ite	hi
    1742:	2304      	movhi	r3, #4
    1744:	2303      	movls	r3, #3
    1746:	e010      	b.n	176a <__svfiscanf_r+0x142>
    1748:	2b63      	cmp	r3, #99	; 0x63
    174a:	d065      	beq.n	1818 <__svfiscanf_r+0x1f0>
    174c:	2b64      	cmp	r3, #100	; 0x64
    174e:	d1e1      	bne.n	1714 <__svfiscanf_r+0xec>
    1750:	9742      	str	r7, [sp, #264]	; 0x108
    1752:	e7f4      	b.n	173e <__svfiscanf_r+0x116>
    1754:	2b70      	cmp	r3, #112	; 0x70
    1756:	d04b      	beq.n	17f0 <__svfiscanf_r+0x1c8>
    1758:	d826      	bhi.n	17a8 <__svfiscanf_r+0x180>
    175a:	2b6e      	cmp	r3, #110	; 0x6e
    175c:	d062      	beq.n	1824 <__svfiscanf_r+0x1fc>
    175e:	d84c      	bhi.n	17fa <__svfiscanf_r+0x1d2>
    1760:	2b69      	cmp	r3, #105	; 0x69
    1762:	d1d7      	bne.n	1714 <__svfiscanf_r+0xec>
    1764:	2300      	movs	r3, #0
    1766:	9342      	str	r3, [sp, #264]	; 0x108
    1768:	2303      	movs	r3, #3
    176a:	9347      	str	r3, [sp, #284]	; 0x11c
    176c:	6863      	ldr	r3, [r4, #4]
    176e:	2b00      	cmp	r3, #0
    1770:	dd69      	ble.n	1846 <__svfiscanf_r+0x21e>
    1772:	9b41      	ldr	r3, [sp, #260]	; 0x104
    1774:	0659      	lsls	r1, r3, #25
    1776:	d407      	bmi.n	1788 <__svfiscanf_r+0x160>
    1778:	f000 ff60 	bl	263c <__locale_ctype_ptr>
    177c:	6823      	ldr	r3, [r4, #0]
    177e:	781a      	ldrb	r2, [r3, #0]
    1780:	4410      	add	r0, r2
    1782:	7842      	ldrb	r2, [r0, #1]
    1784:	0712      	lsls	r2, r2, #28
    1786:	d465      	bmi.n	1854 <__svfiscanf_r+0x22c>
    1788:	9b47      	ldr	r3, [sp, #284]	; 0x11c
    178a:	2b02      	cmp	r3, #2
    178c:	dc74      	bgt.n	1878 <__svfiscanf_r+0x250>
    178e:	466b      	mov	r3, sp
    1790:	4622      	mov	r2, r4
    1792:	a941      	add	r1, sp, #260	; 0x104
    1794:	4630      	mov	r0, r6
    1796:	f000 f8f5 	bl	1984 <_scanf_chars>
    179a:	2801      	cmp	r0, #1
    179c:	f000 808a 	beq.w	18b4 <__svfiscanf_r+0x28c>
    17a0:	2802      	cmp	r0, #2
    17a2:	f47f af71 	bne.w	1688 <__svfiscanf_r+0x60>
    17a6:	e01d      	b.n	17e4 <__svfiscanf_r+0x1bc>
    17a8:	2b75      	cmp	r3, #117	; 0x75
    17aa:	d0d1      	beq.n	1750 <__svfiscanf_r+0x128>
    17ac:	2b78      	cmp	r3, #120	; 0x78
    17ae:	d0c0      	beq.n	1732 <__svfiscanf_r+0x10a>
    17b0:	2b73      	cmp	r3, #115	; 0x73
    17b2:	d1af      	bne.n	1714 <__svfiscanf_r+0xec>
    17b4:	2302      	movs	r3, #2
    17b6:	e7d8      	b.n	176a <__svfiscanf_r+0x142>
    17b8:	6863      	ldr	r3, [r4, #4]
    17ba:	2b00      	cmp	r3, #0
    17bc:	dd0c      	ble.n	17d8 <__svfiscanf_r+0x1b0>
    17be:	6823      	ldr	r3, [r4, #0]
    17c0:	781a      	ldrb	r2, [r3, #0]
    17c2:	455a      	cmp	r2, fp
    17c4:	d176      	bne.n	18b4 <__svfiscanf_r+0x28c>
    17c6:	6862      	ldr	r2, [r4, #4]
    17c8:	3301      	adds	r3, #1
    17ca:	6023      	str	r3, [r4, #0]
    17cc:	9b45      	ldr	r3, [sp, #276]	; 0x114
    17ce:	3a01      	subs	r2, #1
    17d0:	6062      	str	r2, [r4, #4]
    17d2:	3301      	adds	r3, #1
    17d4:	9345      	str	r3, [sp, #276]	; 0x114
    17d6:	e757      	b.n	1688 <__svfiscanf_r+0x60>
    17d8:	9ba1      	ldr	r3, [sp, #644]	; 0x284
    17da:	4621      	mov	r1, r4
    17dc:	4630      	mov	r0, r6
    17de:	4798      	blx	r3
    17e0:	2800      	cmp	r0, #0
    17e2:	d0ec      	beq.n	17be <__svfiscanf_r+0x196>
    17e4:	9844      	ldr	r0, [sp, #272]	; 0x110
    17e6:	2800      	cmp	r0, #0
    17e8:	d15a      	bne.n	18a0 <__svfiscanf_r+0x278>
    17ea:	f04f 30ff 	mov.w	r0, #4294967295
    17ee:	e05d      	b.n	18ac <__svfiscanf_r+0x284>
    17f0:	9a41      	ldr	r2, [sp, #260]	; 0x104
    17f2:	f042 0220 	orr.w	r2, r2, #32
    17f6:	9241      	str	r2, [sp, #260]	; 0x104
    17f8:	e79b      	b.n	1732 <__svfiscanf_r+0x10a>
    17fa:	2308      	movs	r3, #8
    17fc:	9342      	str	r3, [sp, #264]	; 0x108
    17fe:	2304      	movs	r3, #4
    1800:	e7b3      	b.n	176a <__svfiscanf_r+0x142>
    1802:	4629      	mov	r1, r5
    1804:	4640      	mov	r0, r8
    1806:	f000 fb23 	bl	1e50 <__sccl>
    180a:	9b41      	ldr	r3, [sp, #260]	; 0x104
    180c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1810:	9341      	str	r3, [sp, #260]	; 0x104
    1812:	2301      	movs	r3, #1
    1814:	4605      	mov	r5, r0
    1816:	e7a8      	b.n	176a <__svfiscanf_r+0x142>
    1818:	9b41      	ldr	r3, [sp, #260]	; 0x104
    181a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    181e:	9341      	str	r3, [sp, #260]	; 0x104
    1820:	2300      	movs	r3, #0
    1822:	e7a2      	b.n	176a <__svfiscanf_r+0x142>
    1824:	9841      	ldr	r0, [sp, #260]	; 0x104
    1826:	06c3      	lsls	r3, r0, #27
    1828:	f53f af2e 	bmi.w	1688 <__svfiscanf_r+0x60>
    182c:	9b00      	ldr	r3, [sp, #0]
    182e:	07c0      	lsls	r0, r0, #31
    1830:	9a45      	ldr	r2, [sp, #276]	; 0x114
    1832:	f103 0104 	add.w	r1, r3, #4
    1836:	9100      	str	r1, [sp, #0]
    1838:	681b      	ldr	r3, [r3, #0]
    183a:	bf4c      	ite	mi
    183c:	801a      	strhmi	r2, [r3, #0]
    183e:	601a      	strpl	r2, [r3, #0]
    1840:	e722      	b.n	1688 <__svfiscanf_r+0x60>
    1842:	2305      	movs	r3, #5
    1844:	e791      	b.n	176a <__svfiscanf_r+0x142>
    1846:	9ba1      	ldr	r3, [sp, #644]	; 0x284
    1848:	4621      	mov	r1, r4
    184a:	4630      	mov	r0, r6
    184c:	4798      	blx	r3
    184e:	2800      	cmp	r0, #0
    1850:	d08f      	beq.n	1772 <__svfiscanf_r+0x14a>
    1852:	e7c7      	b.n	17e4 <__svfiscanf_r+0x1bc>
    1854:	9a45      	ldr	r2, [sp, #276]	; 0x114
    1856:	3201      	adds	r2, #1
    1858:	9245      	str	r2, [sp, #276]	; 0x114
    185a:	6862      	ldr	r2, [r4, #4]
    185c:	3a01      	subs	r2, #1
    185e:	6062      	str	r2, [r4, #4]
    1860:	2a00      	cmp	r2, #0
    1862:	dd02      	ble.n	186a <__svfiscanf_r+0x242>
    1864:	3301      	adds	r3, #1
    1866:	6023      	str	r3, [r4, #0]
    1868:	e786      	b.n	1778 <__svfiscanf_r+0x150>
    186a:	9ba1      	ldr	r3, [sp, #644]	; 0x284
    186c:	4621      	mov	r1, r4
    186e:	4630      	mov	r0, r6
    1870:	4798      	blx	r3
    1872:	2800      	cmp	r0, #0
    1874:	d080      	beq.n	1778 <__svfiscanf_r+0x150>
    1876:	e7b5      	b.n	17e4 <__svfiscanf_r+0x1bc>
    1878:	2b04      	cmp	r3, #4
    187a:	dc06      	bgt.n	188a <__svfiscanf_r+0x262>
    187c:	466b      	mov	r3, sp
    187e:	4622      	mov	r2, r4
    1880:	a941      	add	r1, sp, #260	; 0x104
    1882:	4630      	mov	r0, r6
    1884:	f000 f8dc 	bl	1a40 <_scanf_i>
    1888:	e787      	b.n	179a <__svfiscanf_r+0x172>
    188a:	4b0e      	ldr	r3, [pc, #56]	; (18c4 <__svfiscanf_r+0x29c>)
    188c:	2b00      	cmp	r3, #0
    188e:	f43f aefb 	beq.w	1688 <__svfiscanf_r+0x60>
    1892:	466b      	mov	r3, sp
    1894:	4622      	mov	r2, r4
    1896:	a941      	add	r1, sp, #260	; 0x104
    1898:	4630      	mov	r0, r6
    189a:	f3af 8000 	nop.w
    189e:	e77c      	b.n	179a <__svfiscanf_r+0x172>
    18a0:	89a3      	ldrh	r3, [r4, #12]
    18a2:	f013 0f40 	tst.w	r3, #64	; 0x40
    18a6:	bf18      	it	ne
    18a8:	f04f 30ff 	movne.w	r0, #4294967295
    18ac:	f50d 7d23 	add.w	sp, sp, #652	; 0x28c
    18b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    18b4:	9844      	ldr	r0, [sp, #272]	; 0x110
    18b6:	e7f9      	b.n	18ac <__svfiscanf_r+0x284>
    18b8:	00002205 	andeq	r2, r0, r5, lsl #4
    18bc:	00001d39 	andeq	r1, r0, r9, lsr sp
    18c0:	000030a2 	andeq	r3, r0, r2, lsr #1
    18c4:	00000000 	andeq	r0, r0, r0

000018c8 <vfiscanf>:
    18c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    18cc:	4604      	mov	r4, r0
    18ce:	4e10      	ldr	r6, [pc, #64]	; (1910 <vfiscanf+0x48>)
    18d0:	460f      	mov	r7, r1
    18d2:	4690      	mov	r8, r2
    18d4:	6835      	ldr	r5, [r6, #0]
    18d6:	b125      	cbz	r5, 18e2 <vfiscanf+0x1a>
    18d8:	69ab      	ldr	r3, [r5, #24]
    18da:	b913      	cbnz	r3, 18e2 <vfiscanf+0x1a>
    18dc:	4628      	mov	r0, r5
    18de:	f7fe fedf 	bl	6a0 <__sinit>
    18e2:	4b0c      	ldr	r3, [pc, #48]	; (1914 <vfiscanf+0x4c>)
    18e4:	429c      	cmp	r4, r3
    18e6:	d108      	bne.n	18fa <vfiscanf+0x32>
    18e8:	686c      	ldr	r4, [r5, #4]
    18ea:	4643      	mov	r3, r8
    18ec:	463a      	mov	r2, r7
    18ee:	4621      	mov	r1, r4
    18f0:	6830      	ldr	r0, [r6, #0]
    18f2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    18f6:	f7ff be97 	b.w	1628 <__svfiscanf_r>
    18fa:	4b07      	ldr	r3, [pc, #28]	; (1918 <vfiscanf+0x50>)
    18fc:	429c      	cmp	r4, r3
    18fe:	d101      	bne.n	1904 <vfiscanf+0x3c>
    1900:	68ac      	ldr	r4, [r5, #8]
    1902:	e7f2      	b.n	18ea <vfiscanf+0x22>
    1904:	4b05      	ldr	r3, [pc, #20]	; (191c <vfiscanf+0x54>)
    1906:	429c      	cmp	r4, r3
    1908:	bf08      	it	eq
    190a:	68ec      	ldreq	r4, [r5, #12]
    190c:	e7ed      	b.n	18ea <vfiscanf+0x22>
    190e:	bf00      	nop
    1910:	00002d80 	andeq	r2, r0, r0, lsl #27
    1914:	00003058 	andeq	r3, r0, r8, asr r0
    1918:	00003078 	andeq	r3, r0, r8, ror r0
    191c:	00003038 	andeq	r3, r0, r8, lsr r0

00001920 <__svfscanf>:
    1920:	4613      	mov	r3, r2
    1922:	460a      	mov	r2, r1
    1924:	4601      	mov	r1, r0
    1926:	4802      	ldr	r0, [pc, #8]	; (1930 <__svfscanf+0x10>)
    1928:	6800      	ldr	r0, [r0, #0]
    192a:	f7ff be7d 	b.w	1628 <__svfiscanf_r>
    192e:	bf00      	nop
    1930:	00002d80 	andeq	r2, r0, r0, lsl #27

00001934 <_vfiscanf_r>:
    1934:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1938:	460c      	mov	r4, r1
    193a:	4616      	mov	r6, r2
    193c:	461f      	mov	r7, r3
    193e:	4605      	mov	r5, r0
    1940:	b118      	cbz	r0, 194a <_vfiscanf_r+0x16>
    1942:	6983      	ldr	r3, [r0, #24]
    1944:	b90b      	cbnz	r3, 194a <_vfiscanf_r+0x16>
    1946:	f7fe feab 	bl	6a0 <__sinit>
    194a:	4b0b      	ldr	r3, [pc, #44]	; (1978 <_vfiscanf_r+0x44>)
    194c:	429c      	cmp	r4, r3
    194e:	d108      	bne.n	1962 <_vfiscanf_r+0x2e>
    1950:	686c      	ldr	r4, [r5, #4]
    1952:	463b      	mov	r3, r7
    1954:	4632      	mov	r2, r6
    1956:	4621      	mov	r1, r4
    1958:	4628      	mov	r0, r5
    195a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    195e:	f7ff be63 	b.w	1628 <__svfiscanf_r>
    1962:	4b06      	ldr	r3, [pc, #24]	; (197c <_vfiscanf_r+0x48>)
    1964:	429c      	cmp	r4, r3
    1966:	d101      	bne.n	196c <_vfiscanf_r+0x38>
    1968:	68ac      	ldr	r4, [r5, #8]
    196a:	e7f2      	b.n	1952 <_vfiscanf_r+0x1e>
    196c:	4b04      	ldr	r3, [pc, #16]	; (1980 <_vfiscanf_r+0x4c>)
    196e:	429c      	cmp	r4, r3
    1970:	bf08      	it	eq
    1972:	68ec      	ldreq	r4, [r5, #12]
    1974:	e7ed      	b.n	1952 <_vfiscanf_r+0x1e>
    1976:	bf00      	nop
    1978:	00003058 	andeq	r3, r0, r8, asr r0
    197c:	00003078 	andeq	r3, r0, r8, ror r0
    1980:	00003038 	andeq	r3, r0, r8, lsr r0

00001984 <_scanf_chars>:
    1984:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1988:	4615      	mov	r5, r2
    198a:	688a      	ldr	r2, [r1, #8]
    198c:	4680      	mov	r8, r0
    198e:	460c      	mov	r4, r1
    1990:	b932      	cbnz	r2, 19a0 <_scanf_chars+0x1c>
    1992:	698a      	ldr	r2, [r1, #24]
    1994:	2a00      	cmp	r2, #0
    1996:	bf14      	ite	ne
    1998:	f04f 32ff 	movne.w	r2, #4294967295
    199c:	2201      	moveq	r2, #1
    199e:	608a      	str	r2, [r1, #8]
    19a0:	6822      	ldr	r2, [r4, #0]
    19a2:	2600      	movs	r6, #0
    19a4:	06d1      	lsls	r1, r2, #27
    19a6:	bf5f      	itttt	pl
    19a8:	681a      	ldrpl	r2, [r3, #0]
    19aa:	1d11      	addpl	r1, r2, #4
    19ac:	6019      	strpl	r1, [r3, #0]
    19ae:	6817      	ldrpl	r7, [r2, #0]
    19b0:	69a3      	ldr	r3, [r4, #24]
    19b2:	b1d3      	cbz	r3, 19ea <_scanf_chars+0x66>
    19b4:	2b01      	cmp	r3, #1
    19b6:	d107      	bne.n	19c8 <_scanf_chars+0x44>
    19b8:	682b      	ldr	r3, [r5, #0]
    19ba:	6962      	ldr	r2, [r4, #20]
    19bc:	781b      	ldrb	r3, [r3, #0]
    19be:	5cd3      	ldrb	r3, [r2, r3]
    19c0:	b99b      	cbnz	r3, 19ea <_scanf_chars+0x66>
    19c2:	2e00      	cmp	r6, #0
    19c4:	d12c      	bne.n	1a20 <_scanf_chars+0x9c>
    19c6:	e005      	b.n	19d4 <_scanf_chars+0x50>
    19c8:	2b02      	cmp	r3, #2
    19ca:	d006      	beq.n	19da <_scanf_chars+0x56>
    19cc:	bb46      	cbnz	r6, 1a20 <_scanf_chars+0x9c>
    19ce:	69a3      	ldr	r3, [r4, #24]
    19d0:	2b01      	cmp	r3, #1
    19d2:	d125      	bne.n	1a20 <_scanf_chars+0x9c>
    19d4:	2001      	movs	r0, #1
    19d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    19da:	f000 fe2f 	bl	263c <__locale_ctype_ptr>
    19de:	682b      	ldr	r3, [r5, #0]
    19e0:	781b      	ldrb	r3, [r3, #0]
    19e2:	4418      	add	r0, r3
    19e4:	7843      	ldrb	r3, [r0, #1]
    19e6:	071b      	lsls	r3, r3, #28
    19e8:	d4f0      	bmi.n	19cc <_scanf_chars+0x48>
    19ea:	6823      	ldr	r3, [r4, #0]
    19ec:	3601      	adds	r6, #1
    19ee:	06da      	lsls	r2, r3, #27
    19f0:	bf5f      	itttt	pl
    19f2:	682b      	ldrpl	r3, [r5, #0]
    19f4:	781b      	ldrbpl	r3, [r3, #0]
    19f6:	703b      	strbpl	r3, [r7, #0]
    19f8:	3701      	addpl	r7, #1
    19fa:	682a      	ldr	r2, [r5, #0]
    19fc:	686b      	ldr	r3, [r5, #4]
    19fe:	3201      	adds	r2, #1
    1a00:	602a      	str	r2, [r5, #0]
    1a02:	68a2      	ldr	r2, [r4, #8]
    1a04:	3b01      	subs	r3, #1
    1a06:	606b      	str	r3, [r5, #4]
    1a08:	3a01      	subs	r2, #1
    1a0a:	60a2      	str	r2, [r4, #8]
    1a0c:	b142      	cbz	r2, 1a20 <_scanf_chars+0x9c>
    1a0e:	2b00      	cmp	r3, #0
    1a10:	dcce      	bgt.n	19b0 <_scanf_chars+0x2c>
    1a12:	f8d4 3180 	ldr.w	r3, [r4, #384]	; 0x180
    1a16:	4629      	mov	r1, r5
    1a18:	4640      	mov	r0, r8
    1a1a:	4798      	blx	r3
    1a1c:	2800      	cmp	r0, #0
    1a1e:	d0c7      	beq.n	19b0 <_scanf_chars+0x2c>
    1a20:	6823      	ldr	r3, [r4, #0]
    1a22:	f013 0310 	ands.w	r3, r3, #16
    1a26:	d105      	bne.n	1a34 <_scanf_chars+0xb0>
    1a28:	68e2      	ldr	r2, [r4, #12]
    1a2a:	3201      	adds	r2, #1
    1a2c:	60e2      	str	r2, [r4, #12]
    1a2e:	69a2      	ldr	r2, [r4, #24]
    1a30:	b102      	cbz	r2, 1a34 <_scanf_chars+0xb0>
    1a32:	703b      	strb	r3, [r7, #0]
    1a34:	6923      	ldr	r3, [r4, #16]
    1a36:	2000      	movs	r0, #0
    1a38:	441e      	add	r6, r3
    1a3a:	6126      	str	r6, [r4, #16]
    1a3c:	e7cb      	b.n	19d6 <_scanf_chars+0x52>
	...

00001a40 <_scanf_i>:
    1a40:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1a44:	469a      	mov	sl, r3
    1a46:	4b75      	ldr	r3, [pc, #468]	; (1c1c <_scanf_i+0x1dc>)
    1a48:	460c      	mov	r4, r1
    1a4a:	4683      	mov	fp, r0
    1a4c:	4616      	mov	r6, r2
    1a4e:	b087      	sub	sp, #28
    1a50:	68a7      	ldr	r7, [r4, #8]
    1a52:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
    1a56:	ab03      	add	r3, sp, #12
    1a58:	f104 091c 	add.w	r9, r4, #28
    1a5c:	f04f 0800 	mov.w	r8, #0
    1a60:	e883 0007 	stmia.w	r3, {r0, r1, r2}
    1a64:	4b6e      	ldr	r3, [pc, #440]	; (1c20 <_scanf_i+0x1e0>)
    1a66:	69a1      	ldr	r1, [r4, #24]
    1a68:	4a6e      	ldr	r2, [pc, #440]	; (1c24 <_scanf_i+0x1e4>)
    1a6a:	2903      	cmp	r1, #3
    1a6c:	bf08      	it	eq
    1a6e:	461a      	moveq	r2, r3
    1a70:	1e7b      	subs	r3, r7, #1
    1a72:	f5b3 7fae 	cmp.w	r3, #348	; 0x15c
    1a76:	9200      	str	r2, [sp, #0]
    1a78:	bf84      	itt	hi
    1a7a:	f240 135d 	movwhi	r3, #349	; 0x15d
    1a7e:	60a3      	strhi	r3, [r4, #8]
    1a80:	6823      	ldr	r3, [r4, #0]
    1a82:	bf86      	itte	hi
    1a84:	f46f 75ae 	mvnhi.w	r5, #348	; 0x15c
    1a88:	197f      	addhi	r7, r7, r5
    1a8a:	2700      	movls	r7, #0
    1a8c:	f443 6350 	orr.w	r3, r3, #3328	; 0xd00
    1a90:	6023      	str	r3, [r4, #0]
    1a92:	464b      	mov	r3, r9
    1a94:	6831      	ldr	r1, [r6, #0]
    1a96:	2202      	movs	r2, #2
    1a98:	9301      	str	r3, [sp, #4]
    1a9a:	ab03      	add	r3, sp, #12
    1a9c:	7809      	ldrb	r1, [r1, #0]
    1a9e:	f853 0028 	ldr.w	r0, [r3, r8, lsl #2]
    1aa2:	f000 fe05 	bl	26b0 <memchr>
    1aa6:	9b01      	ldr	r3, [sp, #4]
    1aa8:	b330      	cbz	r0, 1af8 <_scanf_i+0xb8>
    1aaa:	f1b8 0f01 	cmp.w	r8, #1
    1aae:	d15a      	bne.n	1b66 <_scanf_i+0x126>
    1ab0:	6862      	ldr	r2, [r4, #4]
    1ab2:	b92a      	cbnz	r2, 1ac0 <_scanf_i+0x80>
    1ab4:	6822      	ldr	r2, [r4, #0]
    1ab6:	2108      	movs	r1, #8
    1ab8:	6061      	str	r1, [r4, #4]
    1aba:	f442 7200 	orr.w	r2, r2, #512	; 0x200
    1abe:	6022      	str	r2, [r4, #0]
    1ac0:	6822      	ldr	r2, [r4, #0]
    1ac2:	f422 62a0 	bic.w	r2, r2, #1280	; 0x500
    1ac6:	6022      	str	r2, [r4, #0]
    1ac8:	68a2      	ldr	r2, [r4, #8]
    1aca:	1e51      	subs	r1, r2, #1
    1acc:	60a1      	str	r1, [r4, #8]
    1ace:	b19a      	cbz	r2, 1af8 <_scanf_i+0xb8>
    1ad0:	6832      	ldr	r2, [r6, #0]
    1ad2:	1c5d      	adds	r5, r3, #1
    1ad4:	1c51      	adds	r1, r2, #1
    1ad6:	6031      	str	r1, [r6, #0]
    1ad8:	7812      	ldrb	r2, [r2, #0]
    1ada:	701a      	strb	r2, [r3, #0]
    1adc:	6873      	ldr	r3, [r6, #4]
    1ade:	3b01      	subs	r3, #1
    1ae0:	6073      	str	r3, [r6, #4]
    1ae2:	2b00      	cmp	r3, #0
    1ae4:	dc07      	bgt.n	1af6 <_scanf_i+0xb6>
    1ae6:	f8d4 3180 	ldr.w	r3, [r4, #384]	; 0x180
    1aea:	4631      	mov	r1, r6
    1aec:	4658      	mov	r0, fp
    1aee:	4798      	blx	r3
    1af0:	2800      	cmp	r0, #0
    1af2:	f040 8088 	bne.w	1c06 <_scanf_i+0x1c6>
    1af6:	462b      	mov	r3, r5
    1af8:	f108 0801 	add.w	r8, r8, #1
    1afc:	f1b8 0f03 	cmp.w	r8, #3
    1b00:	d1c8      	bne.n	1a94 <_scanf_i+0x54>
    1b02:	6862      	ldr	r2, [r4, #4]
    1b04:	b90a      	cbnz	r2, 1b0a <_scanf_i+0xca>
    1b06:	220a      	movs	r2, #10
    1b08:	6062      	str	r2, [r4, #4]
    1b0a:	6862      	ldr	r2, [r4, #4]
    1b0c:	f04f 0800 	mov.w	r8, #0
    1b10:	4945      	ldr	r1, [pc, #276]	; (1c28 <_scanf_i+0x1e8>)
    1b12:	6960      	ldr	r0, [r4, #20]
    1b14:	1a89      	subs	r1, r1, r2
    1b16:	9301      	str	r3, [sp, #4]
    1b18:	f000 f99a 	bl	1e50 <__sccl>
    1b1c:	9b01      	ldr	r3, [sp, #4]
    1b1e:	461d      	mov	r5, r3
    1b20:	68a3      	ldr	r3, [r4, #8]
    1b22:	6822      	ldr	r2, [r4, #0]
    1b24:	2b00      	cmp	r3, #0
    1b26:	d03b      	beq.n	1ba0 <_scanf_i+0x160>
    1b28:	6831      	ldr	r1, [r6, #0]
    1b2a:	6960      	ldr	r0, [r4, #20]
    1b2c:	f891 c000 	ldrb.w	ip, [r1]
    1b30:	f810 000c 	ldrb.w	r0, [r0, ip]
    1b34:	2800      	cmp	r0, #0
    1b36:	d033      	beq.n	1ba0 <_scanf_i+0x160>
    1b38:	f1bc 0f30 	cmp.w	ip, #48	; 0x30
    1b3c:	d121      	bne.n	1b82 <_scanf_i+0x142>
    1b3e:	0510      	lsls	r0, r2, #20
    1b40:	d51f      	bpl.n	1b82 <_scanf_i+0x142>
    1b42:	f108 0801 	add.w	r8, r8, #1
    1b46:	b117      	cbz	r7, 1b4e <_scanf_i+0x10e>
    1b48:	3f01      	subs	r7, #1
    1b4a:	3301      	adds	r3, #1
    1b4c:	60a3      	str	r3, [r4, #8]
    1b4e:	6873      	ldr	r3, [r6, #4]
    1b50:	3b01      	subs	r3, #1
    1b52:	6073      	str	r3, [r6, #4]
    1b54:	2b00      	cmp	r3, #0
    1b56:	dd1c      	ble.n	1b92 <_scanf_i+0x152>
    1b58:	6833      	ldr	r3, [r6, #0]
    1b5a:	3301      	adds	r3, #1
    1b5c:	6033      	str	r3, [r6, #0]
    1b5e:	68a3      	ldr	r3, [r4, #8]
    1b60:	3b01      	subs	r3, #1
    1b62:	60a3      	str	r3, [r4, #8]
    1b64:	e7dc      	b.n	1b20 <_scanf_i+0xe0>
    1b66:	f1b8 0f02 	cmp.w	r8, #2
    1b6a:	d1ad      	bne.n	1ac8 <_scanf_i+0x88>
    1b6c:	6822      	ldr	r2, [r4, #0]
    1b6e:	f402 61c0 	and.w	r1, r2, #1536	; 0x600
    1b72:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
    1b76:	d1bf      	bne.n	1af8 <_scanf_i+0xb8>
    1b78:	2110      	movs	r1, #16
    1b7a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    1b7e:	6061      	str	r1, [r4, #4]
    1b80:	e7a1      	b.n	1ac6 <_scanf_i+0x86>
    1b82:	f422 6210 	bic.w	r2, r2, #2304	; 0x900
    1b86:	6022      	str	r2, [r4, #0]
    1b88:	780b      	ldrb	r3, [r1, #0]
    1b8a:	3501      	adds	r5, #1
    1b8c:	f805 3c01 	strb.w	r3, [r5, #-1]
    1b90:	e7dd      	b.n	1b4e <_scanf_i+0x10e>
    1b92:	f8d4 3180 	ldr.w	r3, [r4, #384]	; 0x180
    1b96:	4631      	mov	r1, r6
    1b98:	4658      	mov	r0, fp
    1b9a:	4798      	blx	r3
    1b9c:	2800      	cmp	r0, #0
    1b9e:	d0de      	beq.n	1b5e <_scanf_i+0x11e>
    1ba0:	6823      	ldr	r3, [r4, #0]
    1ba2:	05d9      	lsls	r1, r3, #23
    1ba4:	d50c      	bpl.n	1bc0 <_scanf_i+0x180>
    1ba6:	454d      	cmp	r5, r9
    1ba8:	d908      	bls.n	1bbc <_scanf_i+0x17c>
    1baa:	f815 1c01 	ldrb.w	r1, [r5, #-1]
    1bae:	4632      	mov	r2, r6
    1bb0:	f8d4 317c 	ldr.w	r3, [r4, #380]	; 0x17c
    1bb4:	4658      	mov	r0, fp
    1bb6:	4798      	blx	r3
    1bb8:	1e6f      	subs	r7, r5, #1
    1bba:	463d      	mov	r5, r7
    1bbc:	454d      	cmp	r5, r9
    1bbe:	d02a      	beq.n	1c16 <_scanf_i+0x1d6>
    1bc0:	6822      	ldr	r2, [r4, #0]
    1bc2:	f012 0210 	ands.w	r2, r2, #16
    1bc6:	d114      	bne.n	1bf2 <_scanf_i+0x1b2>
    1bc8:	702a      	strb	r2, [r5, #0]
    1bca:	4649      	mov	r1, r9
    1bcc:	6863      	ldr	r3, [r4, #4]
    1bce:	4658      	mov	r0, fp
    1bd0:	9e00      	ldr	r6, [sp, #0]
    1bd2:	47b0      	blx	r6
    1bd4:	6821      	ldr	r1, [r4, #0]
    1bd6:	f8da 3000 	ldr.w	r3, [sl]
    1bda:	f011 0f20 	tst.w	r1, #32
    1bde:	f103 0204 	add.w	r2, r3, #4
    1be2:	f8ca 2000 	str.w	r2, [sl]
    1be6:	681b      	ldr	r3, [r3, #0]
    1be8:	d010      	beq.n	1c0c <_scanf_i+0x1cc>
    1bea:	6018      	str	r0, [r3, #0]
    1bec:	68e3      	ldr	r3, [r4, #12]
    1bee:	3301      	adds	r3, #1
    1bf0:	60e3      	str	r3, [r4, #12]
    1bf2:	eba5 0509 	sub.w	r5, r5, r9
    1bf6:	2000      	movs	r0, #0
    1bf8:	44a8      	add	r8, r5
    1bfa:	6925      	ldr	r5, [r4, #16]
    1bfc:	4445      	add	r5, r8
    1bfe:	6125      	str	r5, [r4, #16]
    1c00:	b007      	add	sp, #28
    1c02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1c06:	f04f 0800 	mov.w	r8, #0
    1c0a:	e7c9      	b.n	1ba0 <_scanf_i+0x160>
    1c0c:	07ca      	lsls	r2, r1, #31
    1c0e:	bf4c      	ite	mi
    1c10:	8018      	strhmi	r0, [r3, #0]
    1c12:	6018      	strpl	r0, [r3, #0]
    1c14:	e7ea      	b.n	1bec <_scanf_i+0x1ac>
    1c16:	2001      	movs	r0, #1
    1c18:	e7f2      	b.n	1c00 <_scanf_i+0x1c0>
    1c1a:	bf00      	nop
    1c1c:	000030d0 	ldrdeq	r3, [r0], -r0
    1c20:	00001fbd 			; <UNDEFINED> instruction: 0x00001fbd
    1c24:	00002129 	andeq	r2, r0, r9, lsr #2
    1c28:	000030ec 	andeq	r3, r0, ip, ror #1

00001c2c <_read_r>:
    1c2c:	b538      	push	{r3, r4, r5, lr}
    1c2e:	4605      	mov	r5, r0
    1c30:	4c06      	ldr	r4, [pc, #24]	; (1c4c <_read_r+0x20>)
    1c32:	4608      	mov	r0, r1
    1c34:	4611      	mov	r1, r2
    1c36:	2200      	movs	r2, #0
    1c38:	6022      	str	r2, [r4, #0]
    1c3a:	461a      	mov	r2, r3
    1c3c:	f7fe eb72 	blx	324 <_read>
    1c40:	1c43      	adds	r3, r0, #1
    1c42:	d102      	bne.n	1c4a <_read_r+0x1e>
    1c44:	6823      	ldr	r3, [r4, #0]
    1c46:	b103      	cbz	r3, 1c4a <_read_r+0x1e>
    1c48:	602b      	str	r3, [r5, #0]
    1c4a:	bd38      	pop	{r3, r4, r5, pc}
    1c4c:	000032e0 	andeq	r3, r0, r0, ror #5

00001c50 <cleanup_glue>:
    1c50:	b538      	push	{r3, r4, r5, lr}
    1c52:	460c      	mov	r4, r1
    1c54:	6809      	ldr	r1, [r1, #0]
    1c56:	4605      	mov	r5, r0
    1c58:	b109      	cbz	r1, 1c5e <cleanup_glue+0xe>
    1c5a:	f7ff fff9 	bl	1c50 <cleanup_glue>
    1c5e:	4621      	mov	r1, r4
    1c60:	4628      	mov	r0, r5
    1c62:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    1c66:	f7fe be15 	b.w	894 <_free_r>
	...

00001c6c <_reclaim_reent>:
    1c6c:	4b2c      	ldr	r3, [pc, #176]	; (1d20 <_reclaim_reent+0xb4>)
    1c6e:	b570      	push	{r4, r5, r6, lr}
    1c70:	4604      	mov	r4, r0
    1c72:	681b      	ldr	r3, [r3, #0]
    1c74:	4283      	cmp	r3, r0
    1c76:	d051      	beq.n	1d1c <_reclaim_reent+0xb0>
    1c78:	6a43      	ldr	r3, [r0, #36]	; 0x24
    1c7a:	b143      	cbz	r3, 1c8e <_reclaim_reent+0x22>
    1c7c:	68db      	ldr	r3, [r3, #12]
    1c7e:	2b00      	cmp	r3, #0
    1c80:	d14a      	bne.n	1d18 <_reclaim_reent+0xac>
    1c82:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1c84:	6819      	ldr	r1, [r3, #0]
    1c86:	b111      	cbz	r1, 1c8e <_reclaim_reent+0x22>
    1c88:	4620      	mov	r0, r4
    1c8a:	f7fe fe03 	bl	894 <_free_r>
    1c8e:	6961      	ldr	r1, [r4, #20]
    1c90:	b111      	cbz	r1, 1c98 <_reclaim_reent+0x2c>
    1c92:	4620      	mov	r0, r4
    1c94:	f7fe fdfe 	bl	894 <_free_r>
    1c98:	6a61      	ldr	r1, [r4, #36]	; 0x24
    1c9a:	b111      	cbz	r1, 1ca2 <_reclaim_reent+0x36>
    1c9c:	4620      	mov	r0, r4
    1c9e:	f7fe fdf9 	bl	894 <_free_r>
    1ca2:	6ba1      	ldr	r1, [r4, #56]	; 0x38
    1ca4:	b111      	cbz	r1, 1cac <_reclaim_reent+0x40>
    1ca6:	4620      	mov	r0, r4
    1ca8:	f7fe fdf4 	bl	894 <_free_r>
    1cac:	6be1      	ldr	r1, [r4, #60]	; 0x3c
    1cae:	b111      	cbz	r1, 1cb6 <_reclaim_reent+0x4a>
    1cb0:	4620      	mov	r0, r4
    1cb2:	f7fe fdef 	bl	894 <_free_r>
    1cb6:	6c21      	ldr	r1, [r4, #64]	; 0x40
    1cb8:	b111      	cbz	r1, 1cc0 <_reclaim_reent+0x54>
    1cba:	4620      	mov	r0, r4
    1cbc:	f7fe fdea 	bl	894 <_free_r>
    1cc0:	6de1      	ldr	r1, [r4, #92]	; 0x5c
    1cc2:	b111      	cbz	r1, 1cca <_reclaim_reent+0x5e>
    1cc4:	4620      	mov	r0, r4
    1cc6:	f7fe fde5 	bl	894 <_free_r>
    1cca:	6da1      	ldr	r1, [r4, #88]	; 0x58
    1ccc:	b111      	cbz	r1, 1cd4 <_reclaim_reent+0x68>
    1cce:	4620      	mov	r0, r4
    1cd0:	f7fe fde0 	bl	894 <_free_r>
    1cd4:	6b61      	ldr	r1, [r4, #52]	; 0x34
    1cd6:	b111      	cbz	r1, 1cde <_reclaim_reent+0x72>
    1cd8:	4620      	mov	r0, r4
    1cda:	f7fe fddb 	bl	894 <_free_r>
    1cde:	69a3      	ldr	r3, [r4, #24]
    1ce0:	b1e3      	cbz	r3, 1d1c <_reclaim_reent+0xb0>
    1ce2:	6aa3      	ldr	r3, [r4, #40]	; 0x28
    1ce4:	4620      	mov	r0, r4
    1ce6:	4798      	blx	r3
    1ce8:	6ca1      	ldr	r1, [r4, #72]	; 0x48
    1cea:	b1b9      	cbz	r1, 1d1c <_reclaim_reent+0xb0>
    1cec:	4620      	mov	r0, r4
    1cee:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    1cf2:	f7ff bfad 	b.w	1c50 <cleanup_glue>
    1cf6:	5949      	ldr	r1, [r1, r5]
    1cf8:	b941      	cbnz	r1, 1d0c <_reclaim_reent+0xa0>
    1cfa:	3504      	adds	r5, #4
    1cfc:	6a63      	ldr	r3, [r4, #36]	; 0x24
    1cfe:	2d80      	cmp	r5, #128	; 0x80
    1d00:	68d9      	ldr	r1, [r3, #12]
    1d02:	d1f8      	bne.n	1cf6 <_reclaim_reent+0x8a>
    1d04:	4620      	mov	r0, r4
    1d06:	f7fe fdc5 	bl	894 <_free_r>
    1d0a:	e7ba      	b.n	1c82 <_reclaim_reent+0x16>
    1d0c:	680e      	ldr	r6, [r1, #0]
    1d0e:	4620      	mov	r0, r4
    1d10:	f7fe fdc0 	bl	894 <_free_r>
    1d14:	4631      	mov	r1, r6
    1d16:	e7ef      	b.n	1cf8 <_reclaim_reent+0x8c>
    1d18:	2500      	movs	r5, #0
    1d1a:	e7ef      	b.n	1cfc <_reclaim_reent+0x90>
    1d1c:	bd70      	pop	{r4, r5, r6, pc}
    1d1e:	bf00      	nop
    1d20:	00002d80 	andeq	r2, r0, r0, lsl #27

00001d24 <lflush>:
    1d24:	8983      	ldrh	r3, [r0, #12]
    1d26:	f003 0309 	and.w	r3, r3, #9
    1d2a:	2b09      	cmp	r3, #9
    1d2c:	d101      	bne.n	1d32 <lflush+0xe>
    1d2e:	f7ff b905 	b.w	f3c <fflush>
    1d32:	2000      	movs	r0, #0
    1d34:	4770      	bx	lr
	...

00001d38 <__srefill_r>:
    1d38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1d3a:	460c      	mov	r4, r1
    1d3c:	4605      	mov	r5, r0
    1d3e:	b118      	cbz	r0, 1d48 <__srefill_r+0x10>
    1d40:	6983      	ldr	r3, [r0, #24]
    1d42:	b90b      	cbnz	r3, 1d48 <__srefill_r+0x10>
    1d44:	f7fe fcac 	bl	6a0 <__sinit>
    1d48:	4b3c      	ldr	r3, [pc, #240]	; (1e3c <__srefill_r+0x104>)
    1d4a:	429c      	cmp	r4, r3
    1d4c:	d10a      	bne.n	1d64 <__srefill_r+0x2c>
    1d4e:	686c      	ldr	r4, [r5, #4]
    1d50:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    1d54:	2300      	movs	r3, #0
    1d56:	6063      	str	r3, [r4, #4]
    1d58:	b293      	uxth	r3, r2
    1d5a:	069e      	lsls	r6, r3, #26
    1d5c:	d50c      	bpl.n	1d78 <__srefill_r+0x40>
    1d5e:	f04f 30ff 	mov.w	r0, #4294967295
    1d62:	e067      	b.n	1e34 <__srefill_r+0xfc>
    1d64:	4b36      	ldr	r3, [pc, #216]	; (1e40 <__srefill_r+0x108>)
    1d66:	429c      	cmp	r4, r3
    1d68:	d101      	bne.n	1d6e <__srefill_r+0x36>
    1d6a:	68ac      	ldr	r4, [r5, #8]
    1d6c:	e7f0      	b.n	1d50 <__srefill_r+0x18>
    1d6e:	4b35      	ldr	r3, [pc, #212]	; (1e44 <__srefill_r+0x10c>)
    1d70:	429c      	cmp	r4, r3
    1d72:	bf08      	it	eq
    1d74:	68ec      	ldreq	r4, [r5, #12]
    1d76:	e7eb      	b.n	1d50 <__srefill_r+0x18>
    1d78:	0758      	lsls	r0, r3, #29
    1d7a:	d449      	bmi.n	1e10 <__srefill_r+0xd8>
    1d7c:	06d9      	lsls	r1, r3, #27
    1d7e:	d405      	bmi.n	1d8c <__srefill_r+0x54>
    1d80:	2309      	movs	r3, #9
    1d82:	f042 0240 	orr.w	r2, r2, #64	; 0x40
    1d86:	602b      	str	r3, [r5, #0]
    1d88:	81a2      	strh	r2, [r4, #12]
    1d8a:	e7e8      	b.n	1d5e <__srefill_r+0x26>
    1d8c:	071a      	lsls	r2, r3, #28
    1d8e:	d50b      	bpl.n	1da8 <__srefill_r+0x70>
    1d90:	4621      	mov	r1, r4
    1d92:	4628      	mov	r0, r5
    1d94:	f7ff f8a8 	bl	ee8 <_fflush_r>
    1d98:	2800      	cmp	r0, #0
    1d9a:	d1e0      	bne.n	1d5e <__srefill_r+0x26>
    1d9c:	89a3      	ldrh	r3, [r4, #12]
    1d9e:	60a0      	str	r0, [r4, #8]
    1da0:	f023 0308 	bic.w	r3, r3, #8
    1da4:	61a0      	str	r0, [r4, #24]
    1da6:	81a3      	strh	r3, [r4, #12]
    1da8:	89a3      	ldrh	r3, [r4, #12]
    1daa:	f043 0304 	orr.w	r3, r3, #4
    1dae:	81a3      	strh	r3, [r4, #12]
    1db0:	6923      	ldr	r3, [r4, #16]
    1db2:	b91b      	cbnz	r3, 1dbc <__srefill_r+0x84>
    1db4:	4621      	mov	r1, r4
    1db6:	4628      	mov	r0, r5
    1db8:	f7ff f908 	bl	fcc <__smakebuf_r>
    1dbc:	f9b4 700c 	ldrsh.w	r7, [r4, #12]
    1dc0:	b2be      	uxth	r6, r7
    1dc2:	07b3      	lsls	r3, r6, #30
    1dc4:	d00f      	beq.n	1de6 <__srefill_r+0xae>
    1dc6:	2301      	movs	r3, #1
    1dc8:	81a3      	strh	r3, [r4, #12]
    1dca:	4b1f      	ldr	r3, [pc, #124]	; (1e48 <__srefill_r+0x110>)
    1dcc:	f006 0609 	and.w	r6, r6, #9
    1dd0:	491e      	ldr	r1, [pc, #120]	; (1e4c <__srefill_r+0x114>)
    1dd2:	6818      	ldr	r0, [r3, #0]
    1dd4:	f7fe fce8 	bl	7a8 <_fwalk>
    1dd8:	2e09      	cmp	r6, #9
    1dda:	81a7      	strh	r7, [r4, #12]
    1ddc:	d103      	bne.n	1de6 <__srefill_r+0xae>
    1dde:	4621      	mov	r1, r4
    1de0:	4628      	mov	r0, r5
    1de2:	f7fe fffb 	bl	ddc <__sflush_r>
    1de6:	6922      	ldr	r2, [r4, #16]
    1de8:	4628      	mov	r0, r5
    1dea:	6a66      	ldr	r6, [r4, #36]	; 0x24
    1dec:	6963      	ldr	r3, [r4, #20]
    1dee:	6022      	str	r2, [r4, #0]
    1df0:	6a21      	ldr	r1, [r4, #32]
    1df2:	47b0      	blx	r6
    1df4:	2800      	cmp	r0, #0
    1df6:	6060      	str	r0, [r4, #4]
    1df8:	dc1d      	bgt.n	1e36 <__srefill_r+0xfe>
    1dfa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    1dfe:	bf1b      	ittet	ne
    1e00:	2200      	movne	r2, #0
    1e02:	6062      	strne	r2, [r4, #4]
    1e04:	f043 0320 	orreq.w	r3, r3, #32
    1e08:	f043 0340 	orrne.w	r3, r3, #64	; 0x40
    1e0c:	81a3      	strh	r3, [r4, #12]
    1e0e:	e7a6      	b.n	1d5e <__srefill_r+0x26>
    1e10:	6b61      	ldr	r1, [r4, #52]	; 0x34
    1e12:	2900      	cmp	r1, #0
    1e14:	d0cc      	beq.n	1db0 <__srefill_r+0x78>
    1e16:	f104 0344 	add.w	r3, r4, #68	; 0x44
    1e1a:	4299      	cmp	r1, r3
    1e1c:	d002      	beq.n	1e24 <__srefill_r+0xec>
    1e1e:	4628      	mov	r0, r5
    1e20:	f7fe fd38 	bl	894 <_free_r>
    1e24:	6c23      	ldr	r3, [r4, #64]	; 0x40
    1e26:	2000      	movs	r0, #0
    1e28:	6360      	str	r0, [r4, #52]	; 0x34
    1e2a:	6063      	str	r3, [r4, #4]
    1e2c:	2b00      	cmp	r3, #0
    1e2e:	d0bf      	beq.n	1db0 <__srefill_r+0x78>
    1e30:	6be3      	ldr	r3, [r4, #60]	; 0x3c
    1e32:	6023      	str	r3, [r4, #0]
    1e34:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1e36:	2000      	movs	r0, #0
    1e38:	e7fc      	b.n	1e34 <__srefill_r+0xfc>
    1e3a:	bf00      	nop
    1e3c:	00003058 	andeq	r3, r0, r8, asr r0
    1e40:	00003078 	andeq	r3, r0, r8, ror r0
    1e44:	00003038 	andeq	r3, r0, r8, lsr r0
    1e48:	00003098 	muleq	r0, r8, r0
    1e4c:	00001d25 	andeq	r1, r0, r5, lsr #26

00001e50 <__sccl>:
    1e50:	b570      	push	{r4, r5, r6, lr}
    1e52:	1e44      	subs	r4, r0, #1
    1e54:	780b      	ldrb	r3, [r1, #0]
    1e56:	f100 05ff 	add.w	r5, r0, #255	; 0xff
    1e5a:	2b5e      	cmp	r3, #94	; 0x5e
    1e5c:	bf13      	iteet	ne
    1e5e:	1c4a      	addne	r2, r1, #1
    1e60:	1c8a      	addeq	r2, r1, #2
    1e62:	784b      	ldrbeq	r3, [r1, #1]
    1e64:	2100      	movne	r1, #0
    1e66:	bf08      	it	eq
    1e68:	2101      	moveq	r1, #1
    1e6a:	f804 1f01 	strb.w	r1, [r4, #1]!
    1e6e:	42ac      	cmp	r4, r5
    1e70:	d1fb      	bne.n	1e6a <__sccl+0x1a>
    1e72:	b913      	cbnz	r3, 1e7a <__sccl+0x2a>
    1e74:	3a01      	subs	r2, #1
    1e76:	4610      	mov	r0, r2
    1e78:	bd70      	pop	{r4, r5, r6, pc}
    1e7a:	f081 0401 	eor.w	r4, r1, #1
    1e7e:	1c51      	adds	r1, r2, #1
    1e80:	54c4      	strb	r4, [r0, r3]
    1e82:	f811 5c01 	ldrb.w	r5, [r1, #-1]
    1e86:	1e4e      	subs	r6, r1, #1
    1e88:	460a      	mov	r2, r1
    1e8a:	2d2d      	cmp	r5, #45	; 0x2d
    1e8c:	d006      	beq.n	1e9c <__sccl+0x4c>
    1e8e:	2d5d      	cmp	r5, #93	; 0x5d
    1e90:	d0f1      	beq.n	1e76 <__sccl+0x26>
    1e92:	b90d      	cbnz	r5, 1e98 <__sccl+0x48>
    1e94:	4632      	mov	r2, r6
    1e96:	e7ee      	b.n	1e76 <__sccl+0x26>
    1e98:	462b      	mov	r3, r5
    1e9a:	e7f0      	b.n	1e7e <__sccl+0x2e>
    1e9c:	780e      	ldrb	r6, [r1, #0]
    1e9e:	2e5d      	cmp	r6, #93	; 0x5d
    1ea0:	d0fa      	beq.n	1e98 <__sccl+0x48>
    1ea2:	42b3      	cmp	r3, r6
    1ea4:	dcf8      	bgt.n	1e98 <__sccl+0x48>
    1ea6:	3301      	adds	r3, #1
    1ea8:	429e      	cmp	r6, r3
    1eaa:	54c4      	strb	r4, [r0, r3]
    1eac:	dcfb      	bgt.n	1ea6 <__sccl+0x56>
    1eae:	3102      	adds	r1, #2
    1eb0:	e7e7      	b.n	1e82 <__sccl+0x32>

00001eb2 <_strtol_l.isra.0>:
    1eb2:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1eb6:	4681      	mov	r9, r0
    1eb8:	4688      	mov	r8, r1
    1eba:	4692      	mov	sl, r2
    1ebc:	461f      	mov	r7, r3
    1ebe:	468b      	mov	fp, r1
    1ec0:	465d      	mov	r5, fp
    1ec2:	980a      	ldr	r0, [sp, #40]	; 0x28
    1ec4:	f815 4b01 	ldrb.w	r4, [r5], #1
    1ec8:	f000 fbb4 	bl	2634 <__locale_ctype_ptr_l>
    1ecc:	4420      	add	r0, r4
    1ece:	7846      	ldrb	r6, [r0, #1]
    1ed0:	f016 0608 	ands.w	r6, r6, #8
    1ed4:	d137      	bne.n	1f46 <_strtol_l.isra.0+0x94>
    1ed6:	2c2d      	cmp	r4, #45	; 0x2d
    1ed8:	d137      	bne.n	1f4a <_strtol_l.isra.0+0x98>
    1eda:	f89b 4001 	ldrb.w	r4, [fp, #1]
    1ede:	f10b 0502 	add.w	r5, fp, #2
    1ee2:	2601      	movs	r6, #1
    1ee4:	2f00      	cmp	r7, #0
    1ee6:	d065      	beq.n	1fb4 <_strtol_l.isra.0+0x102>
    1ee8:	2f10      	cmp	r7, #16
    1eea:	d109      	bne.n	1f00 <_strtol_l.isra.0+0x4e>
    1eec:	2c30      	cmp	r4, #48	; 0x30
    1eee:	d107      	bne.n	1f00 <_strtol_l.isra.0+0x4e>
    1ef0:	782b      	ldrb	r3, [r5, #0]
    1ef2:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    1ef6:	2b58      	cmp	r3, #88	; 0x58
    1ef8:	d157      	bne.n	1faa <_strtol_l.isra.0+0xf8>
    1efa:	786c      	ldrb	r4, [r5, #1]
    1efc:	3502      	adds	r5, #2
    1efe:	2710      	movs	r7, #16
    1f00:	2e00      	cmp	r6, #0
    1f02:	4639      	mov	r1, r7
    1f04:	bf14      	ite	ne
    1f06:	f04f 4b00 	movne.w	fp, #2147483648	; 0x80000000
    1f0a:	f06f 4b00 	mvneq.w	fp, #2147483648	; 0x80000000
    1f0e:	4658      	mov	r0, fp
    1f10:	f000 fd88 	bl	2a24 <__aeabi_uidivmod>
    1f14:	f04f 0c00 	mov.w	ip, #0
    1f18:	4663      	mov	r3, ip
    1f1a:	f1a4 0230 	sub.w	r2, r4, #48	; 0x30
    1f1e:	2a09      	cmp	r2, #9
    1f20:	d81a      	bhi.n	1f58 <_strtol_l.isra.0+0xa6>
    1f22:	4614      	mov	r4, r2
    1f24:	42a7      	cmp	r7, r4
    1f26:	dd26      	ble.n	1f76 <_strtol_l.isra.0+0xc4>
    1f28:	f1bc 3fff 	cmp.w	ip, #4294967295
    1f2c:	d008      	beq.n	1f40 <_strtol_l.isra.0+0x8e>
    1f2e:	4298      	cmp	r0, r3
    1f30:	d31e      	bcc.n	1f70 <_strtol_l.isra.0+0xbe>
    1f32:	d101      	bne.n	1f38 <_strtol_l.isra.0+0x86>
    1f34:	42a1      	cmp	r1, r4
    1f36:	db1b      	blt.n	1f70 <_strtol_l.isra.0+0xbe>
    1f38:	fb03 4307 	mla	r3, r3, r7, r4
    1f3c:	f04f 0c01 	mov.w	ip, #1
    1f40:	f815 4b01 	ldrb.w	r4, [r5], #1
    1f44:	e7e9      	b.n	1f1a <_strtol_l.isra.0+0x68>
    1f46:	46ab      	mov	fp, r5
    1f48:	e7ba      	b.n	1ec0 <_strtol_l.isra.0+0xe>
    1f4a:	2c2b      	cmp	r4, #43	; 0x2b
    1f4c:	bf04      	itt	eq
    1f4e:	f10b 0502 	addeq.w	r5, fp, #2
    1f52:	f89b 4001 	ldrbeq.w	r4, [fp, #1]
    1f56:	e7c5      	b.n	1ee4 <_strtol_l.isra.0+0x32>
    1f58:	f1a4 0241 	sub.w	r2, r4, #65	; 0x41
    1f5c:	2a19      	cmp	r2, #25
    1f5e:	d801      	bhi.n	1f64 <_strtol_l.isra.0+0xb2>
    1f60:	3c37      	subs	r4, #55	; 0x37
    1f62:	e7df      	b.n	1f24 <_strtol_l.isra.0+0x72>
    1f64:	f1a4 0261 	sub.w	r2, r4, #97	; 0x61
    1f68:	2a19      	cmp	r2, #25
    1f6a:	d804      	bhi.n	1f76 <_strtol_l.isra.0+0xc4>
    1f6c:	3c57      	subs	r4, #87	; 0x57
    1f6e:	e7d9      	b.n	1f24 <_strtol_l.isra.0+0x72>
    1f70:	f04f 3cff 	mov.w	ip, #4294967295
    1f74:	e7e4      	b.n	1f40 <_strtol_l.isra.0+0x8e>
    1f76:	f1bc 3fff 	cmp.w	ip, #4294967295
    1f7a:	d109      	bne.n	1f90 <_strtol_l.isra.0+0xde>
    1f7c:	2322      	movs	r3, #34	; 0x22
    1f7e:	f8c9 3000 	str.w	r3, [r9]
    1f82:	465b      	mov	r3, fp
    1f84:	f1ba 0f00 	cmp.w	sl, #0
    1f88:	d10a      	bne.n	1fa0 <_strtol_l.isra.0+0xee>
    1f8a:	4618      	mov	r0, r3
    1f8c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1f90:	b106      	cbz	r6, 1f94 <_strtol_l.isra.0+0xe2>
    1f92:	425b      	negs	r3, r3
    1f94:	f1ba 0f00 	cmp.w	sl, #0
    1f98:	d0f7      	beq.n	1f8a <_strtol_l.isra.0+0xd8>
    1f9a:	f1bc 0f00 	cmp.w	ip, #0
    1f9e:	d001      	beq.n	1fa4 <_strtol_l.isra.0+0xf2>
    1fa0:	f105 38ff 	add.w	r8, r5, #4294967295
    1fa4:	f8ca 8000 	str.w	r8, [sl]
    1fa8:	e7ef      	b.n	1f8a <_strtol_l.isra.0+0xd8>
    1faa:	2430      	movs	r4, #48	; 0x30
    1fac:	2f00      	cmp	r7, #0
    1fae:	d1a7      	bne.n	1f00 <_strtol_l.isra.0+0x4e>
    1fb0:	2708      	movs	r7, #8
    1fb2:	e7a5      	b.n	1f00 <_strtol_l.isra.0+0x4e>
    1fb4:	2c30      	cmp	r4, #48	; 0x30
    1fb6:	d09b      	beq.n	1ef0 <_strtol_l.isra.0+0x3e>
    1fb8:	270a      	movs	r7, #10
    1fba:	e7a1      	b.n	1f00 <_strtol_l.isra.0+0x4e>

00001fbc <_strtol_r>:
    1fbc:	b537      	push	{r0, r1, r2, r4, r5, lr}
    1fbe:	4c06      	ldr	r4, [pc, #24]	; (1fd8 <_strtol_r+0x1c>)
    1fc0:	4d06      	ldr	r5, [pc, #24]	; (1fdc <_strtol_r+0x20>)
    1fc2:	6824      	ldr	r4, [r4, #0]
    1fc4:	6a24      	ldr	r4, [r4, #32]
    1fc6:	2c00      	cmp	r4, #0
    1fc8:	bf08      	it	eq
    1fca:	462c      	moveq	r4, r5
    1fcc:	9400      	str	r4, [sp, #0]
    1fce:	f7ff ff70 	bl	1eb2 <_strtol_l.isra.0>
    1fd2:	b003      	add	sp, #12
    1fd4:	bd30      	pop	{r4, r5, pc}
    1fd6:	bf00      	nop
    1fd8:	00002d80 	andeq	r2, r0, r0, lsl #27
    1fdc:	00002de4 	andeq	r2, r0, r4, ror #27

00001fe0 <strtol_l>:
    1fe0:	b507      	push	{r0, r1, r2, lr}
    1fe2:	9300      	str	r3, [sp, #0]
    1fe4:	4613      	mov	r3, r2
    1fe6:	460a      	mov	r2, r1
    1fe8:	4601      	mov	r1, r0
    1fea:	4803      	ldr	r0, [pc, #12]	; (1ff8 <strtol_l+0x18>)
    1fec:	6800      	ldr	r0, [r0, #0]
    1fee:	f7ff ff60 	bl	1eb2 <_strtol_l.isra.0>
    1ff2:	b003      	add	sp, #12
    1ff4:	f85d fb04 	ldr.w	pc, [sp], #4
    1ff8:	00002d80 	andeq	r2, r0, r0, lsl #27

00001ffc <strtol>:
    1ffc:	4b08      	ldr	r3, [pc, #32]	; (2020 <strtol+0x24>)
    1ffe:	b537      	push	{r0, r1, r2, r4, r5, lr}
    2000:	681c      	ldr	r4, [r3, #0]
    2002:	4d08      	ldr	r5, [pc, #32]	; (2024 <strtol+0x28>)
    2004:	6a23      	ldr	r3, [r4, #32]
    2006:	2b00      	cmp	r3, #0
    2008:	bf08      	it	eq
    200a:	462b      	moveq	r3, r5
    200c:	9300      	str	r3, [sp, #0]
    200e:	4613      	mov	r3, r2
    2010:	460a      	mov	r2, r1
    2012:	4601      	mov	r1, r0
    2014:	4620      	mov	r0, r4
    2016:	f7ff ff4c 	bl	1eb2 <_strtol_l.isra.0>
    201a:	b003      	add	sp, #12
    201c:	bd30      	pop	{r4, r5, pc}
    201e:	bf00      	nop
    2020:	00002d80 	andeq	r2, r0, r0, lsl #27
    2024:	00002de4 	andeq	r2, r0, r4, ror #27

00002028 <_strtoul_l.isra.0>:
    2028:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    202c:	4681      	mov	r9, r0
    202e:	4688      	mov	r8, r1
    2030:	4692      	mov	sl, r2
    2032:	461e      	mov	r6, r3
    2034:	468b      	mov	fp, r1
    2036:	465d      	mov	r5, fp
    2038:	980a      	ldr	r0, [sp, #40]	; 0x28
    203a:	f815 4b01 	ldrb.w	r4, [r5], #1
    203e:	f000 faf9 	bl	2634 <__locale_ctype_ptr_l>
    2042:	4420      	add	r0, r4
    2044:	7847      	ldrb	r7, [r0, #1]
    2046:	f017 0708 	ands.w	r7, r7, #8
    204a:	d135      	bne.n	20b8 <_strtoul_l.isra.0+0x90>
    204c:	2c2d      	cmp	r4, #45	; 0x2d
    204e:	d135      	bne.n	20bc <_strtoul_l.isra.0+0x94>
    2050:	f89b 4001 	ldrb.w	r4, [fp, #1]
    2054:	f10b 0502 	add.w	r5, fp, #2
    2058:	2701      	movs	r7, #1
    205a:	2e00      	cmp	r6, #0
    205c:	d060      	beq.n	2120 <_strtoul_l.isra.0+0xf8>
    205e:	2e10      	cmp	r6, #16
    2060:	d109      	bne.n	2076 <_strtoul_l.isra.0+0x4e>
    2062:	2c30      	cmp	r4, #48	; 0x30
    2064:	d107      	bne.n	2076 <_strtoul_l.isra.0+0x4e>
    2066:	782b      	ldrb	r3, [r5, #0]
    2068:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    206c:	2b58      	cmp	r3, #88	; 0x58
    206e:	d152      	bne.n	2116 <_strtoul_l.isra.0+0xee>
    2070:	786c      	ldrb	r4, [r5, #1]
    2072:	3502      	adds	r5, #2
    2074:	2610      	movs	r6, #16
    2076:	4631      	mov	r1, r6
    2078:	f04f 30ff 	mov.w	r0, #4294967295
    207c:	f000 fba4 	bl	27c8 <__udivsi3>
    2080:	4631      	mov	r1, r6
    2082:	4683      	mov	fp, r0
    2084:	f04f 30ff 	mov.w	r0, #4294967295
    2088:	f000 fccc 	bl	2a24 <__aeabi_uidivmod>
    208c:	2300      	movs	r3, #0
    208e:	4618      	mov	r0, r3
    2090:	f1a4 0230 	sub.w	r2, r4, #48	; 0x30
    2094:	2a09      	cmp	r2, #9
    2096:	d818      	bhi.n	20ca <_strtoul_l.isra.0+0xa2>
    2098:	4614      	mov	r4, r2
    209a:	42a6      	cmp	r6, r4
    209c:	dd24      	ble.n	20e8 <_strtoul_l.isra.0+0xc0>
    209e:	2b00      	cmp	r3, #0
    20a0:	db1f      	blt.n	20e2 <_strtoul_l.isra.0+0xba>
    20a2:	4583      	cmp	fp, r0
    20a4:	d31d      	bcc.n	20e2 <_strtoul_l.isra.0+0xba>
    20a6:	d101      	bne.n	20ac <_strtoul_l.isra.0+0x84>
    20a8:	42a1      	cmp	r1, r4
    20aa:	db1a      	blt.n	20e2 <_strtoul_l.isra.0+0xba>
    20ac:	fb00 4006 	mla	r0, r0, r6, r4
    20b0:	2301      	movs	r3, #1
    20b2:	f815 4b01 	ldrb.w	r4, [r5], #1
    20b6:	e7eb      	b.n	2090 <_strtoul_l.isra.0+0x68>
    20b8:	46ab      	mov	fp, r5
    20ba:	e7bc      	b.n	2036 <_strtoul_l.isra.0+0xe>
    20bc:	2c2b      	cmp	r4, #43	; 0x2b
    20be:	bf04      	itt	eq
    20c0:	f10b 0502 	addeq.w	r5, fp, #2
    20c4:	f89b 4001 	ldrbeq.w	r4, [fp, #1]
    20c8:	e7c7      	b.n	205a <_strtoul_l.isra.0+0x32>
    20ca:	f1a4 0241 	sub.w	r2, r4, #65	; 0x41
    20ce:	2a19      	cmp	r2, #25
    20d0:	d801      	bhi.n	20d6 <_strtoul_l.isra.0+0xae>
    20d2:	3c37      	subs	r4, #55	; 0x37
    20d4:	e7e1      	b.n	209a <_strtoul_l.isra.0+0x72>
    20d6:	f1a4 0261 	sub.w	r2, r4, #97	; 0x61
    20da:	2a19      	cmp	r2, #25
    20dc:	d804      	bhi.n	20e8 <_strtoul_l.isra.0+0xc0>
    20de:	3c57      	subs	r4, #87	; 0x57
    20e0:	e7db      	b.n	209a <_strtoul_l.isra.0+0x72>
    20e2:	f04f 33ff 	mov.w	r3, #4294967295
    20e6:	e7e4      	b.n	20b2 <_strtoul_l.isra.0+0x8a>
    20e8:	2b00      	cmp	r3, #0
    20ea:	da09      	bge.n	2100 <_strtoul_l.isra.0+0xd8>
    20ec:	2322      	movs	r3, #34	; 0x22
    20ee:	f04f 30ff 	mov.w	r0, #4294967295
    20f2:	f8c9 3000 	str.w	r3, [r9]
    20f6:	f1ba 0f00 	cmp.w	sl, #0
    20fa:	d107      	bne.n	210c <_strtoul_l.isra.0+0xe4>
    20fc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2100:	b107      	cbz	r7, 2104 <_strtoul_l.isra.0+0xdc>
    2102:	4240      	negs	r0, r0
    2104:	f1ba 0f00 	cmp.w	sl, #0
    2108:	d0f8      	beq.n	20fc <_strtoul_l.isra.0+0xd4>
    210a:	b10b      	cbz	r3, 2110 <_strtoul_l.isra.0+0xe8>
    210c:	f105 38ff 	add.w	r8, r5, #4294967295
    2110:	f8ca 8000 	str.w	r8, [sl]
    2114:	e7f2      	b.n	20fc <_strtoul_l.isra.0+0xd4>
    2116:	2430      	movs	r4, #48	; 0x30
    2118:	2e00      	cmp	r6, #0
    211a:	d1ac      	bne.n	2076 <_strtoul_l.isra.0+0x4e>
    211c:	2608      	movs	r6, #8
    211e:	e7aa      	b.n	2076 <_strtoul_l.isra.0+0x4e>
    2120:	2c30      	cmp	r4, #48	; 0x30
    2122:	d0a0      	beq.n	2066 <_strtoul_l.isra.0+0x3e>
    2124:	260a      	movs	r6, #10
    2126:	e7a6      	b.n	2076 <_strtoul_l.isra.0+0x4e>

00002128 <_strtoul_r>:
    2128:	b537      	push	{r0, r1, r2, r4, r5, lr}
    212a:	4c06      	ldr	r4, [pc, #24]	; (2144 <_strtoul_r+0x1c>)
    212c:	4d06      	ldr	r5, [pc, #24]	; (2148 <_strtoul_r+0x20>)
    212e:	6824      	ldr	r4, [r4, #0]
    2130:	6a24      	ldr	r4, [r4, #32]
    2132:	2c00      	cmp	r4, #0
    2134:	bf08      	it	eq
    2136:	462c      	moveq	r4, r5
    2138:	9400      	str	r4, [sp, #0]
    213a:	f7ff ff75 	bl	2028 <_strtoul_l.isra.0>
    213e:	b003      	add	sp, #12
    2140:	bd30      	pop	{r4, r5, pc}
    2142:	bf00      	nop
    2144:	00002d80 	andeq	r2, r0, r0, lsl #27
    2148:	00002de4 	andeq	r2, r0, r4, ror #27

0000214c <strtoul_l>:
    214c:	b507      	push	{r0, r1, r2, lr}
    214e:	9300      	str	r3, [sp, #0]
    2150:	4613      	mov	r3, r2
    2152:	460a      	mov	r2, r1
    2154:	4601      	mov	r1, r0
    2156:	4803      	ldr	r0, [pc, #12]	; (2164 <strtoul_l+0x18>)
    2158:	6800      	ldr	r0, [r0, #0]
    215a:	f7ff ff65 	bl	2028 <_strtoul_l.isra.0>
    215e:	b003      	add	sp, #12
    2160:	f85d fb04 	ldr.w	pc, [sp], #4
    2164:	00002d80 	andeq	r2, r0, r0, lsl #27

00002168 <strtoul>:
    2168:	4b08      	ldr	r3, [pc, #32]	; (218c <strtoul+0x24>)
    216a:	b537      	push	{r0, r1, r2, r4, r5, lr}
    216c:	681c      	ldr	r4, [r3, #0]
    216e:	4d08      	ldr	r5, [pc, #32]	; (2190 <strtoul+0x28>)
    2170:	6a23      	ldr	r3, [r4, #32]
    2172:	2b00      	cmp	r3, #0
    2174:	bf08      	it	eq
    2176:	462b      	moveq	r3, r5
    2178:	9300      	str	r3, [sp, #0]
    217a:	4613      	mov	r3, r2
    217c:	460a      	mov	r2, r1
    217e:	4601      	mov	r1, r0
    2180:	4620      	mov	r0, r4
    2182:	f7ff ff51 	bl	2028 <_strtoul_l.isra.0>
    2186:	b003      	add	sp, #12
    2188:	bd30      	pop	{r4, r5, pc}
    218a:	bf00      	nop
    218c:	00002d80 	andeq	r2, r0, r0, lsl #27
    2190:	00002de4 	andeq	r2, r0, r4, ror #27

00002194 <__submore>:
    2194:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    2198:	460c      	mov	r4, r1
    219a:	6b49      	ldr	r1, [r1, #52]	; 0x34
    219c:	f104 0344 	add.w	r3, r4, #68	; 0x44
    21a0:	4299      	cmp	r1, r3
    21a2:	d11a      	bne.n	21da <__submore+0x46>
    21a4:	f44f 6180 	mov.w	r1, #1024	; 0x400
    21a8:	f7fe fbc0 	bl	92c <_malloc_r>
    21ac:	b918      	cbnz	r0, 21b6 <__submore+0x22>
    21ae:	f04f 30ff 	mov.w	r0, #4294967295
    21b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    21b6:	f44f 6380 	mov.w	r3, #1024	; 0x400
    21ba:	63a3      	str	r3, [r4, #56]	; 0x38
    21bc:	f894 3046 	ldrb.w	r3, [r4, #70]	; 0x46
    21c0:	6360      	str	r0, [r4, #52]	; 0x34
    21c2:	f200 30fd 	addw	r0, r0, #1021	; 0x3fd
    21c6:	7083      	strb	r3, [r0, #2]
    21c8:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
    21cc:	7043      	strb	r3, [r0, #1]
    21ce:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
    21d2:	7003      	strb	r3, [r0, #0]
    21d4:	6020      	str	r0, [r4, #0]
    21d6:	2000      	movs	r0, #0
    21d8:	e7eb      	b.n	21b2 <__submore+0x1e>
    21da:	6ba6      	ldr	r6, [r4, #56]	; 0x38
    21dc:	0077      	lsls	r7, r6, #1
    21de:	463a      	mov	r2, r7
    21e0:	f000 fa98 	bl	2714 <_realloc_r>
    21e4:	4605      	mov	r5, r0
    21e6:	2800      	cmp	r0, #0
    21e8:	d0e1      	beq.n	21ae <__submore+0x1a>
    21ea:	eb00 0806 	add.w	r8, r0, r6
    21ee:	4601      	mov	r1, r0
    21f0:	4632      	mov	r2, r6
    21f2:	4640      	mov	r0, r8
    21f4:	f000 fa6a 	bl	26cc <memcpy>
    21f8:	f8c4 8000 	str.w	r8, [r4]
    21fc:	e9c4 570d 	strd	r5, r7, [r4, #52]	; 0x34
    2200:	e7e9      	b.n	21d6 <__submore+0x42>
	...

00002204 <_ungetc_r>:
    2204:	1c4b      	adds	r3, r1, #1
    2206:	b570      	push	{r4, r5, r6, lr}
    2208:	4606      	mov	r6, r0
    220a:	460d      	mov	r5, r1
    220c:	4614      	mov	r4, r2
    220e:	d103      	bne.n	2218 <_ungetc_r+0x14>
    2210:	f04f 35ff 	mov.w	r5, #4294967295
    2214:	4628      	mov	r0, r5
    2216:	bd70      	pop	{r4, r5, r6, pc}
    2218:	b118      	cbz	r0, 2222 <_ungetc_r+0x1e>
    221a:	6983      	ldr	r3, [r0, #24]
    221c:	b90b      	cbnz	r3, 2222 <_ungetc_r+0x1e>
    221e:	f7fe fa3f 	bl	6a0 <__sinit>
    2222:	4b2e      	ldr	r3, [pc, #184]	; (22dc <_ungetc_r+0xd8>)
    2224:	429c      	cmp	r4, r3
    2226:	d12c      	bne.n	2282 <_ungetc_r+0x7e>
    2228:	6874      	ldr	r4, [r6, #4]
    222a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    222e:	f023 0320 	bic.w	r3, r3, #32
    2232:	81a3      	strh	r3, [r4, #12]
    2234:	b29b      	uxth	r3, r3
    2236:	0759      	lsls	r1, r3, #29
    2238:	d413      	bmi.n	2262 <_ungetc_r+0x5e>
    223a:	06da      	lsls	r2, r3, #27
    223c:	d5e8      	bpl.n	2210 <_ungetc_r+0xc>
    223e:	071b      	lsls	r3, r3, #28
    2240:	d50b      	bpl.n	225a <_ungetc_r+0x56>
    2242:	4621      	mov	r1, r4
    2244:	4630      	mov	r0, r6
    2246:	f7fe fe4f 	bl	ee8 <_fflush_r>
    224a:	2800      	cmp	r0, #0
    224c:	d1e0      	bne.n	2210 <_ungetc_r+0xc>
    224e:	89a3      	ldrh	r3, [r4, #12]
    2250:	60a0      	str	r0, [r4, #8]
    2252:	f023 0308 	bic.w	r3, r3, #8
    2256:	61a0      	str	r0, [r4, #24]
    2258:	81a3      	strh	r3, [r4, #12]
    225a:	89a3      	ldrh	r3, [r4, #12]
    225c:	f043 0304 	orr.w	r3, r3, #4
    2260:	81a3      	strh	r3, [r4, #12]
    2262:	6b63      	ldr	r3, [r4, #52]	; 0x34
    2264:	b2ed      	uxtb	r5, r5
    2266:	6862      	ldr	r2, [r4, #4]
    2268:	b1e3      	cbz	r3, 22a4 <_ungetc_r+0xa0>
    226a:	6ba3      	ldr	r3, [r4, #56]	; 0x38
    226c:	4293      	cmp	r3, r2
    226e:	dd12      	ble.n	2296 <_ungetc_r+0x92>
    2270:	6823      	ldr	r3, [r4, #0]
    2272:	1e5a      	subs	r2, r3, #1
    2274:	6022      	str	r2, [r4, #0]
    2276:	f803 5c01 	strb.w	r5, [r3, #-1]
    227a:	6863      	ldr	r3, [r4, #4]
    227c:	3301      	adds	r3, #1
    227e:	6063      	str	r3, [r4, #4]
    2280:	e7c8      	b.n	2214 <_ungetc_r+0x10>
    2282:	4b17      	ldr	r3, [pc, #92]	; (22e0 <_ungetc_r+0xdc>)
    2284:	429c      	cmp	r4, r3
    2286:	d101      	bne.n	228c <_ungetc_r+0x88>
    2288:	68b4      	ldr	r4, [r6, #8]
    228a:	e7ce      	b.n	222a <_ungetc_r+0x26>
    228c:	4b15      	ldr	r3, [pc, #84]	; (22e4 <_ungetc_r+0xe0>)
    228e:	429c      	cmp	r4, r3
    2290:	bf08      	it	eq
    2292:	68f4      	ldreq	r4, [r6, #12]
    2294:	e7c9      	b.n	222a <_ungetc_r+0x26>
    2296:	4621      	mov	r1, r4
    2298:	4630      	mov	r0, r6
    229a:	f7ff ff7b 	bl	2194 <__submore>
    229e:	2800      	cmp	r0, #0
    22a0:	d0e6      	beq.n	2270 <_ungetc_r+0x6c>
    22a2:	e7b5      	b.n	2210 <_ungetc_r+0xc>
    22a4:	6921      	ldr	r1, [r4, #16]
    22a6:	6823      	ldr	r3, [r4, #0]
    22a8:	b151      	cbz	r1, 22c0 <_ungetc_r+0xbc>
    22aa:	4299      	cmp	r1, r3
    22ac:	d208      	bcs.n	22c0 <_ungetc_r+0xbc>
    22ae:	f813 1c01 	ldrb.w	r1, [r3, #-1]
    22b2:	42a9      	cmp	r1, r5
    22b4:	d104      	bne.n	22c0 <_ungetc_r+0xbc>
    22b6:	3b01      	subs	r3, #1
    22b8:	3201      	adds	r2, #1
    22ba:	6023      	str	r3, [r4, #0]
    22bc:	6062      	str	r2, [r4, #4]
    22be:	e7a9      	b.n	2214 <_ungetc_r+0x10>
    22c0:	e9c4 320f 	strd	r3, r2, [r4, #60]	; 0x3c
    22c4:	f104 0344 	add.w	r3, r4, #68	; 0x44
    22c8:	6363      	str	r3, [r4, #52]	; 0x34
    22ca:	2303      	movs	r3, #3
    22cc:	63a3      	str	r3, [r4, #56]	; 0x38
    22ce:	4623      	mov	r3, r4
    22d0:	f803 5f46 	strb.w	r5, [r3, #70]!
    22d4:	6023      	str	r3, [r4, #0]
    22d6:	2301      	movs	r3, #1
    22d8:	e7d1      	b.n	227e <_ungetc_r+0x7a>
    22da:	bf00      	nop
    22dc:	00003058 	andeq	r3, r0, r8, asr r0
    22e0:	00003078 	andeq	r3, r0, r8, ror r0
    22e4:	00003038 	andeq	r3, r0, r8, lsr r0

000022e8 <ungetc>:
    22e8:	4b02      	ldr	r3, [pc, #8]	; (22f4 <ungetc+0xc>)
    22ea:	460a      	mov	r2, r1
    22ec:	4601      	mov	r1, r0
    22ee:	6818      	ldr	r0, [r3, #0]
    22f0:	f7ff bf88 	b.w	2204 <_ungetc_r>
    22f4:	00002d80 	andeq	r2, r0, r0, lsl #27

000022f8 <_fstat_r>:
    22f8:	b538      	push	{r3, r4, r5, lr}
    22fa:	4605      	mov	r5, r0
    22fc:	4c06      	ldr	r4, [pc, #24]	; (2318 <_fstat_r+0x20>)
    22fe:	4608      	mov	r0, r1
    2300:	4611      	mov	r1, r2
    2302:	2300      	movs	r3, #0
    2304:	6023      	str	r3, [r4, #0]
    2306:	f000 fcff 	bl	2d08 <_fstat>
    230a:	1c43      	adds	r3, r0, #1
    230c:	d102      	bne.n	2314 <_fstat_r+0x1c>
    230e:	6823      	ldr	r3, [r4, #0]
    2310:	b103      	cbz	r3, 2314 <_fstat_r+0x1c>
    2312:	602b      	str	r3, [r5, #0]
    2314:	bd38      	pop	{r3, r4, r5, pc}
    2316:	bf00      	nop
    2318:	000032e0 	andeq	r3, r0, r0, ror #5

0000231c <__sfvwrite_r>:
    231c:	6893      	ldr	r3, [r2, #8]
    231e:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2322:	4607      	mov	r7, r0
    2324:	460c      	mov	r4, r1
    2326:	4690      	mov	r8, r2
    2328:	b91b      	cbnz	r3, 2332 <__sfvwrite_r+0x16>
    232a:	2000      	movs	r0, #0
    232c:	b003      	add	sp, #12
    232e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2332:	898b      	ldrh	r3, [r1, #12]
    2334:	0718      	lsls	r0, r3, #28
    2336:	d550      	bpl.n	23da <__sfvwrite_r+0xbe>
    2338:	690b      	ldr	r3, [r1, #16]
    233a:	2b00      	cmp	r3, #0
    233c:	d04d      	beq.n	23da <__sfvwrite_r+0xbe>
    233e:	89a3      	ldrh	r3, [r4, #12]
    2340:	f8d8 6000 	ldr.w	r6, [r8]
    2344:	f013 0902 	ands.w	r9, r3, #2
    2348:	d16c      	bne.n	2424 <__sfvwrite_r+0x108>
    234a:	f013 0301 	ands.w	r3, r3, #1
    234e:	f000 809c 	beq.w	248a <__sfvwrite_r+0x16e>
    2352:	4648      	mov	r0, r9
    2354:	46ca      	mov	sl, r9
    2356:	46cb      	mov	fp, r9
    2358:	f1bb 0f00 	cmp.w	fp, #0
    235c:	f000 8108 	beq.w	2570 <__sfvwrite_r+0x254>
    2360:	b950      	cbnz	r0, 2378 <__sfvwrite_r+0x5c>
    2362:	465a      	mov	r2, fp
    2364:	210a      	movs	r1, #10
    2366:	4650      	mov	r0, sl
    2368:	f000 f9a2 	bl	26b0 <memchr>
    236c:	2800      	cmp	r0, #0
    236e:	f000 8104 	beq.w	257a <__sfvwrite_r+0x25e>
    2372:	3001      	adds	r0, #1
    2374:	eba0 090a 	sub.w	r9, r0, sl
    2378:	45d9      	cmp	r9, fp
    237a:	6820      	ldr	r0, [r4, #0]
    237c:	6921      	ldr	r1, [r4, #16]
    237e:	464b      	mov	r3, r9
    2380:	bf28      	it	cs
    2382:	465b      	movcs	r3, fp
    2384:	6962      	ldr	r2, [r4, #20]
    2386:	4288      	cmp	r0, r1
    2388:	f240 80fa 	bls.w	2580 <__sfvwrite_r+0x264>
    238c:	68a5      	ldr	r5, [r4, #8]
    238e:	4415      	add	r5, r2
    2390:	42ab      	cmp	r3, r5
    2392:	f340 80f5 	ble.w	2580 <__sfvwrite_r+0x264>
    2396:	4651      	mov	r1, sl
    2398:	462a      	mov	r2, r5
    239a:	f000 f9a2 	bl	26e2 <memmove>
    239e:	6823      	ldr	r3, [r4, #0]
    23a0:	4621      	mov	r1, r4
    23a2:	4638      	mov	r0, r7
    23a4:	442b      	add	r3, r5
    23a6:	6023      	str	r3, [r4, #0]
    23a8:	f7fe fd9e 	bl	ee8 <_fflush_r>
    23ac:	2800      	cmp	r0, #0
    23ae:	d167      	bne.n	2480 <__sfvwrite_r+0x164>
    23b0:	ebb9 0905 	subs.w	r9, r9, r5
    23b4:	f040 80fe 	bne.w	25b4 <__sfvwrite_r+0x298>
    23b8:	4621      	mov	r1, r4
    23ba:	4638      	mov	r0, r7
    23bc:	f7fe fd94 	bl	ee8 <_fflush_r>
    23c0:	2800      	cmp	r0, #0
    23c2:	d15d      	bne.n	2480 <__sfvwrite_r+0x164>
    23c4:	f8d8 3008 	ldr.w	r3, [r8, #8]
    23c8:	44aa      	add	sl, r5
    23ca:	ebab 0b05 	sub.w	fp, fp, r5
    23ce:	1b5d      	subs	r5, r3, r5
    23d0:	f8c8 5008 	str.w	r5, [r8, #8]
    23d4:	2d00      	cmp	r5, #0
    23d6:	d1bf      	bne.n	2358 <__sfvwrite_r+0x3c>
    23d8:	e7a7      	b.n	232a <__sfvwrite_r+0xe>
    23da:	4621      	mov	r1, r4
    23dc:	4638      	mov	r0, r7
    23de:	f7fe fc7f 	bl	ce0 <__swsetup_r>
    23e2:	2800      	cmp	r0, #0
    23e4:	d0ab      	beq.n	233e <__sfvwrite_r+0x22>
    23e6:	f04f 30ff 	mov.w	r0, #4294967295
    23ea:	e79f      	b.n	232c <__sfvwrite_r+0x10>
    23ec:	e9d6 a900 	ldrd	sl, r9, [r6]
    23f0:	3608      	adds	r6, #8
    23f2:	f1b9 0f00 	cmp.w	r9, #0
    23f6:	d0f9      	beq.n	23ec <__sfvwrite_r+0xd0>
    23f8:	45d9      	cmp	r9, fp
    23fa:	464b      	mov	r3, r9
    23fc:	4652      	mov	r2, sl
    23fe:	6a21      	ldr	r1, [r4, #32]
    2400:	bf28      	it	cs
    2402:	465b      	movcs	r3, fp
    2404:	4638      	mov	r0, r7
    2406:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    2408:	47a8      	blx	r5
    240a:	2800      	cmp	r0, #0
    240c:	dd38      	ble.n	2480 <__sfvwrite_r+0x164>
    240e:	f8d8 3008 	ldr.w	r3, [r8, #8]
    2412:	4482      	add	sl, r0
    2414:	eba9 0900 	sub.w	r9, r9, r0
    2418:	1a18      	subs	r0, r3, r0
    241a:	f8c8 0008 	str.w	r0, [r8, #8]
    241e:	2800      	cmp	r0, #0
    2420:	d1e7      	bne.n	23f2 <__sfvwrite_r+0xd6>
    2422:	e782      	b.n	232a <__sfvwrite_r+0xe>
    2424:	f04f 0a00 	mov.w	sl, #0
    2428:	f8df b190 	ldr.w	fp, [pc, #400]	; 25bc <__sfvwrite_r+0x2a0>
    242c:	46d1      	mov	r9, sl
    242e:	e7e0      	b.n	23f2 <__sfvwrite_r+0xd6>
    2430:	e9d6 9a00 	ldrd	r9, sl, [r6]
    2434:	3608      	adds	r6, #8
    2436:	f1ba 0f00 	cmp.w	sl, #0
    243a:	d0f9      	beq.n	2430 <__sfvwrite_r+0x114>
    243c:	89a2      	ldrh	r2, [r4, #12]
    243e:	68a3      	ldr	r3, [r4, #8]
    2440:	0591      	lsls	r1, r2, #22
    2442:	6820      	ldr	r0, [r4, #0]
    2444:	d564      	bpl.n	2510 <__sfvwrite_r+0x1f4>
    2446:	4553      	cmp	r3, sl
    2448:	d836      	bhi.n	24b8 <__sfvwrite_r+0x19c>
    244a:	f412 6f90 	tst.w	r2, #1152	; 0x480
    244e:	d033      	beq.n	24b8 <__sfvwrite_r+0x19c>
    2450:	6965      	ldr	r5, [r4, #20]
    2452:	6921      	ldr	r1, [r4, #16]
    2454:	eb05 0545 	add.w	r5, r5, r5, lsl #1
    2458:	eba0 0b01 	sub.w	fp, r0, r1
    245c:	f10b 0301 	add.w	r3, fp, #1
    2460:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
    2464:	4453      	add	r3, sl
    2466:	106d      	asrs	r5, r5, #1
    2468:	429d      	cmp	r5, r3
    246a:	bf38      	it	cc
    246c:	461d      	movcc	r5, r3
    246e:	0553      	lsls	r3, r2, #21
    2470:	d53e      	bpl.n	24f0 <__sfvwrite_r+0x1d4>
    2472:	4629      	mov	r1, r5
    2474:	4638      	mov	r0, r7
    2476:	f7fe fa59 	bl	92c <_malloc_r>
    247a:	b948      	cbnz	r0, 2490 <__sfvwrite_r+0x174>
    247c:	230c      	movs	r3, #12
    247e:	603b      	str	r3, [r7, #0]
    2480:	89a3      	ldrh	r3, [r4, #12]
    2482:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    2486:	81a3      	strh	r3, [r4, #12]
    2488:	e7ad      	b.n	23e6 <__sfvwrite_r+0xca>
    248a:	4699      	mov	r9, r3
    248c:	469a      	mov	sl, r3
    248e:	e7d2      	b.n	2436 <__sfvwrite_r+0x11a>
    2490:	465a      	mov	r2, fp
    2492:	6921      	ldr	r1, [r4, #16]
    2494:	9001      	str	r0, [sp, #4]
    2496:	f000 f919 	bl	26cc <memcpy>
    249a:	89a2      	ldrh	r2, [r4, #12]
    249c:	9b01      	ldr	r3, [sp, #4]
    249e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
    24a2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
    24a6:	81a2      	strh	r2, [r4, #12]
    24a8:	6123      	str	r3, [r4, #16]
    24aa:	445b      	add	r3, fp
    24ac:	6023      	str	r3, [r4, #0]
    24ae:	4653      	mov	r3, sl
    24b0:	6165      	str	r5, [r4, #20]
    24b2:	eba5 050b 	sub.w	r5, r5, fp
    24b6:	60a5      	str	r5, [r4, #8]
    24b8:	4553      	cmp	r3, sl
    24ba:	4649      	mov	r1, r9
    24bc:	6820      	ldr	r0, [r4, #0]
    24be:	4655      	mov	r5, sl
    24c0:	bf28      	it	cs
    24c2:	4653      	movcs	r3, sl
    24c4:	9301      	str	r3, [sp, #4]
    24c6:	461a      	mov	r2, r3
    24c8:	f000 f90b 	bl	26e2 <memmove>
    24cc:	68a2      	ldr	r2, [r4, #8]
    24ce:	9b01      	ldr	r3, [sp, #4]
    24d0:	1ad2      	subs	r2, r2, r3
    24d2:	60a2      	str	r2, [r4, #8]
    24d4:	6822      	ldr	r2, [r4, #0]
    24d6:	4413      	add	r3, r2
    24d8:	6023      	str	r3, [r4, #0]
    24da:	f8d8 3008 	ldr.w	r3, [r8, #8]
    24de:	44a9      	add	r9, r5
    24e0:	ebaa 0a05 	sub.w	sl, sl, r5
    24e4:	1b5d      	subs	r5, r3, r5
    24e6:	f8c8 5008 	str.w	r5, [r8, #8]
    24ea:	2d00      	cmp	r5, #0
    24ec:	d1a3      	bne.n	2436 <__sfvwrite_r+0x11a>
    24ee:	e71c      	b.n	232a <__sfvwrite_r+0xe>
    24f0:	462a      	mov	r2, r5
    24f2:	4638      	mov	r0, r7
    24f4:	f000 f90e 	bl	2714 <_realloc_r>
    24f8:	4603      	mov	r3, r0
    24fa:	2800      	cmp	r0, #0
    24fc:	d1d4      	bne.n	24a8 <__sfvwrite_r+0x18c>
    24fe:	6921      	ldr	r1, [r4, #16]
    2500:	4638      	mov	r0, r7
    2502:	f7fe f9c7 	bl	894 <_free_r>
    2506:	89a3      	ldrh	r3, [r4, #12]
    2508:	f023 0380 	bic.w	r3, r3, #128	; 0x80
    250c:	81a3      	strh	r3, [r4, #12]
    250e:	e7b5      	b.n	247c <__sfvwrite_r+0x160>
    2510:	6922      	ldr	r2, [r4, #16]
    2512:	4282      	cmp	r2, r0
    2514:	d302      	bcc.n	251c <__sfvwrite_r+0x200>
    2516:	6965      	ldr	r5, [r4, #20]
    2518:	4555      	cmp	r5, sl
    251a:	d916      	bls.n	254a <__sfvwrite_r+0x22e>
    251c:	4553      	cmp	r3, sl
    251e:	4649      	mov	r1, r9
    2520:	bf28      	it	cs
    2522:	4653      	movcs	r3, sl
    2524:	461a      	mov	r2, r3
    2526:	461d      	mov	r5, r3
    2528:	f000 f8db 	bl	26e2 <memmove>
    252c:	68a3      	ldr	r3, [r4, #8]
    252e:	6822      	ldr	r2, [r4, #0]
    2530:	1b5b      	subs	r3, r3, r5
    2532:	60a3      	str	r3, [r4, #8]
    2534:	442a      	add	r2, r5
    2536:	6022      	str	r2, [r4, #0]
    2538:	2b00      	cmp	r3, #0
    253a:	d1ce      	bne.n	24da <__sfvwrite_r+0x1be>
    253c:	4621      	mov	r1, r4
    253e:	4638      	mov	r0, r7
    2540:	f7fe fcd2 	bl	ee8 <_fflush_r>
    2544:	2800      	cmp	r0, #0
    2546:	d0c8      	beq.n	24da <__sfvwrite_r+0x1be>
    2548:	e79a      	b.n	2480 <__sfvwrite_r+0x164>
    254a:	4b1b      	ldr	r3, [pc, #108]	; (25b8 <__sfvwrite_r+0x29c>)
    254c:	4629      	mov	r1, r5
    254e:	459a      	cmp	sl, r3
    2550:	bf94      	ite	ls
    2552:	4650      	movls	r0, sl
    2554:	f06f 4000 	mvnhi.w	r0, #2147483648	; 0x80000000
    2558:	f000 fa72 	bl	2a40 <__divsi3>
    255c:	464a      	mov	r2, r9
    255e:	6a21      	ldr	r1, [r4, #32]
    2560:	fb05 f300 	mul.w	r3, r5, r0
    2564:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    2566:	4638      	mov	r0, r7
    2568:	47a8      	blx	r5
    256a:	1e05      	subs	r5, r0, #0
    256c:	dcb5      	bgt.n	24da <__sfvwrite_r+0x1be>
    256e:	e787      	b.n	2480 <__sfvwrite_r+0x164>
    2570:	e9d6 ab00 	ldrd	sl, fp, [r6]
    2574:	2000      	movs	r0, #0
    2576:	3608      	adds	r6, #8
    2578:	e6ee      	b.n	2358 <__sfvwrite_r+0x3c>
    257a:	f10b 0901 	add.w	r9, fp, #1
    257e:	e6fb      	b.n	2378 <__sfvwrite_r+0x5c>
    2580:	429a      	cmp	r2, r3
    2582:	dc09      	bgt.n	2598 <__sfvwrite_r+0x27c>
    2584:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    2586:	4613      	mov	r3, r2
    2588:	6a21      	ldr	r1, [r4, #32]
    258a:	4652      	mov	r2, sl
    258c:	4638      	mov	r0, r7
    258e:	47a8      	blx	r5
    2590:	1e05      	subs	r5, r0, #0
    2592:	f73f af0d 	bgt.w	23b0 <__sfvwrite_r+0x94>
    2596:	e773      	b.n	2480 <__sfvwrite_r+0x164>
    2598:	461a      	mov	r2, r3
    259a:	4651      	mov	r1, sl
    259c:	9301      	str	r3, [sp, #4]
    259e:	f000 f8a0 	bl	26e2 <memmove>
    25a2:	9b01      	ldr	r3, [sp, #4]
    25a4:	68a2      	ldr	r2, [r4, #8]
    25a6:	1ad2      	subs	r2, r2, r3
    25a8:	60a2      	str	r2, [r4, #8]
    25aa:	6822      	ldr	r2, [r4, #0]
    25ac:	461d      	mov	r5, r3
    25ae:	441a      	add	r2, r3
    25b0:	6022      	str	r2, [r4, #0]
    25b2:	e6fd      	b.n	23b0 <__sfvwrite_r+0x94>
    25b4:	2001      	movs	r0, #1
    25b6:	e705      	b.n	23c4 <__sfvwrite_r+0xa8>
    25b8:	7ffffffe 	svcvc	0x00fffffe
    25bc:	7ffffc00 	svcvc	0x00fffc00

000025c0 <_isatty_r>:
    25c0:	b538      	push	{r3, r4, r5, lr}
    25c2:	4605      	mov	r5, r0
    25c4:	4c05      	ldr	r4, [pc, #20]	; (25dc <_isatty_r+0x1c>)
    25c6:	4608      	mov	r0, r1
    25c8:	2300      	movs	r3, #0
    25ca:	6023      	str	r3, [r4, #0]
    25cc:	f000 fba6 	bl	2d1c <_isatty>
    25d0:	1c43      	adds	r3, r0, #1
    25d2:	d102      	bne.n	25da <_isatty_r+0x1a>
    25d4:	6823      	ldr	r3, [r4, #0]
    25d6:	b103      	cbz	r3, 25da <_isatty_r+0x1a>
    25d8:	602b      	str	r3, [r5, #0]
    25da:	bd38      	pop	{r3, r4, r5, pc}
    25dc:	000032e0 	andeq	r3, r0, r0, ror #5

000025e0 <_setlocale_r>:
    25e0:	b510      	push	{r4, lr}
    25e2:	4614      	mov	r4, r2
    25e4:	b172      	cbz	r2, 2604 <_setlocale_r+0x24>
    25e6:	4909      	ldr	r1, [pc, #36]	; (260c <_setlocale_r+0x2c>)
    25e8:	4610      	mov	r0, r2
    25ea:	f000 f8b9 	bl	2760 <strcmp>
    25ee:	b148      	cbz	r0, 2604 <_setlocale_r+0x24>
    25f0:	4907      	ldr	r1, [pc, #28]	; (2610 <_setlocale_r+0x30>)
    25f2:	4620      	mov	r0, r4
    25f4:	f000 f8b4 	bl	2760 <strcmp>
    25f8:	b120      	cbz	r0, 2604 <_setlocale_r+0x24>
    25fa:	4906      	ldr	r1, [pc, #24]	; (2614 <_setlocale_r+0x34>)
    25fc:	4620      	mov	r0, r4
    25fe:	f000 f8af 	bl	2760 <strcmp>
    2602:	b908      	cbnz	r0, 2608 <_setlocale_r+0x28>
    2604:	4802      	ldr	r0, [pc, #8]	; (2610 <_setlocale_r+0x30>)
    2606:	bd10      	pop	{r4, pc}
    2608:	2000      	movs	r0, #0
    260a:	e7fc      	b.n	2606 <_setlocale_r+0x26>
    260c:	000030f9 	strdeq	r3, [r0], -r9
    2610:	000030f7 	strdeq	r3, [r0], -r7
    2614:	000030a1 	andeq	r3, r0, r1, lsr #1

00002618 <__locale_mb_cur_max>:
    2618:	4b04      	ldr	r3, [pc, #16]	; (262c <__locale_mb_cur_max+0x14>)
    261a:	4a05      	ldr	r2, [pc, #20]	; (2630 <__locale_mb_cur_max+0x18>)
    261c:	681b      	ldr	r3, [r3, #0]
    261e:	6a1b      	ldr	r3, [r3, #32]
    2620:	2b00      	cmp	r3, #0
    2622:	bf08      	it	eq
    2624:	4613      	moveq	r3, r2
    2626:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
    262a:	4770      	bx	lr
    262c:	00002d80 	andeq	r2, r0, r0, lsl #27
    2630:	00002de4 	andeq	r2, r0, r4, ror #27

00002634 <__locale_ctype_ptr_l>:
    2634:	f8d0 00ec 	ldr.w	r0, [r0, #236]	; 0xec
    2638:	4770      	bx	lr
	...

0000263c <__locale_ctype_ptr>:
    263c:	4b04      	ldr	r3, [pc, #16]	; (2650 <__locale_ctype_ptr+0x14>)
    263e:	4a05      	ldr	r2, [pc, #20]	; (2654 <__locale_ctype_ptr+0x18>)
    2640:	681b      	ldr	r3, [r3, #0]
    2642:	6a1b      	ldr	r3, [r3, #32]
    2644:	2b00      	cmp	r3, #0
    2646:	bf08      	it	eq
    2648:	4613      	moveq	r3, r2
    264a:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
    264e:	4770      	bx	lr
    2650:	00002d80 	andeq	r2, r0, r0, lsl #27
    2654:	00002de4 	andeq	r2, r0, r4, ror #27

00002658 <setlocale>:
    2658:	4b02      	ldr	r3, [pc, #8]	; (2664 <setlocale+0xc>)
    265a:	460a      	mov	r2, r1
    265c:	4601      	mov	r1, r0
    265e:	6818      	ldr	r0, [r3, #0]
    2660:	f7ff bfbe 	b.w	25e0 <_setlocale_r>
    2664:	00002d80 	andeq	r2, r0, r0, lsl #27

00002668 <_mbtowc_r>:
    2668:	b430      	push	{r4, r5}
    266a:	4c06      	ldr	r4, [pc, #24]	; (2684 <_mbtowc_r+0x1c>)
    266c:	4d06      	ldr	r5, [pc, #24]	; (2688 <_mbtowc_r+0x20>)
    266e:	6824      	ldr	r4, [r4, #0]
    2670:	6a24      	ldr	r4, [r4, #32]
    2672:	2c00      	cmp	r4, #0
    2674:	bf08      	it	eq
    2676:	462c      	moveq	r4, r5
    2678:	f8d4 40e4 	ldr.w	r4, [r4, #228]	; 0xe4
    267c:	46a4      	mov	ip, r4
    267e:	bc30      	pop	{r4, r5}
    2680:	4760      	bx	ip
    2682:	bf00      	nop
    2684:	00002d80 	andeq	r2, r0, r0, lsl #27
    2688:	00002de4 	andeq	r2, r0, r4, ror #27

0000268c <__ascii_mbtowc>:
    268c:	b082      	sub	sp, #8
    268e:	b901      	cbnz	r1, 2692 <__ascii_mbtowc+0x6>
    2690:	a901      	add	r1, sp, #4
    2692:	b142      	cbz	r2, 26a6 <__ascii_mbtowc+0x1a>
    2694:	b14b      	cbz	r3, 26aa <__ascii_mbtowc+0x1e>
    2696:	7813      	ldrb	r3, [r2, #0]
    2698:	600b      	str	r3, [r1, #0]
    269a:	7812      	ldrb	r2, [r2, #0]
    269c:	1c10      	adds	r0, r2, #0
    269e:	bf18      	it	ne
    26a0:	2001      	movne	r0, #1
    26a2:	b002      	add	sp, #8
    26a4:	4770      	bx	lr
    26a6:	4610      	mov	r0, r2
    26a8:	e7fb      	b.n	26a2 <__ascii_mbtowc+0x16>
    26aa:	f06f 0001 	mvn.w	r0, #1
    26ae:	e7f8      	b.n	26a2 <__ascii_mbtowc+0x16>

000026b0 <memchr>:
    26b0:	b2c9      	uxtb	r1, r1
    26b2:	4402      	add	r2, r0
    26b4:	b510      	push	{r4, lr}
    26b6:	4290      	cmp	r0, r2
    26b8:	4603      	mov	r3, r0
    26ba:	d101      	bne.n	26c0 <memchr+0x10>
    26bc:	2300      	movs	r3, #0
    26be:	e003      	b.n	26c8 <memchr+0x18>
    26c0:	781c      	ldrb	r4, [r3, #0]
    26c2:	3001      	adds	r0, #1
    26c4:	428c      	cmp	r4, r1
    26c6:	d1f6      	bne.n	26b6 <memchr+0x6>
    26c8:	4618      	mov	r0, r3
    26ca:	bd10      	pop	{r4, pc}

000026cc <memcpy>:
    26cc:	1e43      	subs	r3, r0, #1
    26ce:	440a      	add	r2, r1
    26d0:	b510      	push	{r4, lr}
    26d2:	4291      	cmp	r1, r2
    26d4:	d100      	bne.n	26d8 <memcpy+0xc>
    26d6:	bd10      	pop	{r4, pc}
    26d8:	f811 4b01 	ldrb.w	r4, [r1], #1
    26dc:	f803 4f01 	strb.w	r4, [r3, #1]!
    26e0:	e7f7      	b.n	26d2 <memcpy+0x6>

000026e2 <memmove>:
    26e2:	4288      	cmp	r0, r1
    26e4:	eb01 0302 	add.w	r3, r1, r2
    26e8:	b510      	push	{r4, lr}
    26ea:	d807      	bhi.n	26fc <memmove+0x1a>
    26ec:	1e42      	subs	r2, r0, #1
    26ee:	4299      	cmp	r1, r3
    26f0:	d00a      	beq.n	2708 <memmove+0x26>
    26f2:	f811 4b01 	ldrb.w	r4, [r1], #1
    26f6:	f802 4f01 	strb.w	r4, [r2, #1]!
    26fa:	e7f8      	b.n	26ee <memmove+0xc>
    26fc:	4283      	cmp	r3, r0
    26fe:	d9f5      	bls.n	26ec <memmove+0xa>
    2700:	1881      	adds	r1, r0, r2
    2702:	1ad2      	subs	r2, r2, r3
    2704:	42d3      	cmn	r3, r2
    2706:	d100      	bne.n	270a <memmove+0x28>
    2708:	bd10      	pop	{r4, pc}
    270a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
    270e:	f801 4d01 	strb.w	r4, [r1, #-1]!
    2712:	e7f7      	b.n	2704 <memmove+0x22>

00002714 <_realloc_r>:
    2714:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    2716:	4607      	mov	r7, r0
    2718:	4614      	mov	r4, r2
    271a:	460e      	mov	r6, r1
    271c:	b921      	cbnz	r1, 2728 <_realloc_r+0x14>
    271e:	4611      	mov	r1, r2
    2720:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    2724:	f7fe b902 	b.w	92c <_malloc_r>
    2728:	b922      	cbnz	r2, 2734 <_realloc_r+0x20>
    272a:	f7fe f8b3 	bl	894 <_free_r>
    272e:	4625      	mov	r5, r4
    2730:	4628      	mov	r0, r5
    2732:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    2734:	f000 f83d 	bl	27b2 <_malloc_usable_size_r>
    2738:	42a0      	cmp	r0, r4
    273a:	d20f      	bcs.n	275c <_realloc_r+0x48>
    273c:	4621      	mov	r1, r4
    273e:	4638      	mov	r0, r7
    2740:	f7fe f8f4 	bl	92c <_malloc_r>
    2744:	4605      	mov	r5, r0
    2746:	2800      	cmp	r0, #0
    2748:	d0f2      	beq.n	2730 <_realloc_r+0x1c>
    274a:	4631      	mov	r1, r6
    274c:	4622      	mov	r2, r4
    274e:	f7ff ffbd 	bl	26cc <memcpy>
    2752:	4631      	mov	r1, r6
    2754:	4638      	mov	r0, r7
    2756:	f7fe f89d 	bl	894 <_free_r>
    275a:	e7e9      	b.n	2730 <_realloc_r+0x1c>
    275c:	4635      	mov	r5, r6
    275e:	e7e7      	b.n	2730 <_realloc_r+0x1c>

00002760 <strcmp>:
    2760:	f810 2b01 	ldrb.w	r2, [r0], #1
    2764:	f811 3b01 	ldrb.w	r3, [r1], #1
    2768:	2a01      	cmp	r2, #1
    276a:	bf28      	it	cs
    276c:	429a      	cmpcs	r2, r3
    276e:	d0f7      	beq.n	2760 <strcmp>
    2770:	1ad0      	subs	r0, r2, r3
    2772:	4770      	bx	lr

00002774 <_wctomb_r>:
    2774:	b430      	push	{r4, r5}
    2776:	4c06      	ldr	r4, [pc, #24]	; (2790 <_wctomb_r+0x1c>)
    2778:	4d06      	ldr	r5, [pc, #24]	; (2794 <_wctomb_r+0x20>)
    277a:	6824      	ldr	r4, [r4, #0]
    277c:	6a24      	ldr	r4, [r4, #32]
    277e:	2c00      	cmp	r4, #0
    2780:	bf08      	it	eq
    2782:	462c      	moveq	r4, r5
    2784:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
    2788:	46a4      	mov	ip, r4
    278a:	bc30      	pop	{r4, r5}
    278c:	4760      	bx	ip
    278e:	bf00      	nop
    2790:	00002d80 	andeq	r2, r0, r0, lsl #27
    2794:	00002de4 	andeq	r2, r0, r4, ror #27

00002798 <__ascii_wctomb>:
    2798:	b149      	cbz	r1, 27ae <__ascii_wctomb+0x16>
    279a:	2aff      	cmp	r2, #255	; 0xff
    279c:	bf95      	itete	ls
    279e:	700a      	strbls	r2, [r1, #0]
    27a0:	238a      	movhi	r3, #138	; 0x8a
    27a2:	2001      	movls	r0, #1
    27a4:	6003      	strhi	r3, [r0, #0]
    27a6:	bf88      	it	hi
    27a8:	f04f 30ff 	movhi.w	r0, #4294967295
    27ac:	4770      	bx	lr
    27ae:	4608      	mov	r0, r1
    27b0:	4770      	bx	lr

000027b2 <_malloc_usable_size_r>:
    27b2:	f851 3c04 	ldr.w	r3, [r1, #-4]
    27b6:	1f18      	subs	r0, r3, #4
    27b8:	2b00      	cmp	r3, #0
    27ba:	bfbc      	itt	lt
    27bc:	580b      	ldrlt	r3, [r1, r0]
    27be:	18c0      	addlt	r0, r0, r3
    27c0:	4770      	bx	lr
    27c2:	0000      	movs	r0, r0
    27c4:	0000      	movs	r0, r0
	...

000027c8 <__udivsi3>:
    27c8:	1e4a      	subs	r2, r1, #1
    27ca:	bf08      	it	eq
    27cc:	4770      	bxeq	lr
    27ce:	f0c0 8124 	bcc.w	2a1a <__udivsi3+0x252>
    27d2:	4288      	cmp	r0, r1
    27d4:	f240 8116 	bls.w	2a04 <__udivsi3+0x23c>
    27d8:	4211      	tst	r1, r2
    27da:	f000 8117 	beq.w	2a0c <__udivsi3+0x244>
    27de:	fab0 f380 	clz	r3, r0
    27e2:	fab1 f281 	clz	r2, r1
    27e6:	eba2 0303 	sub.w	r3, r2, r3
    27ea:	f1c3 031f 	rsb	r3, r3, #31
    27ee:	a204      	add	r2, pc, #16	; (adr r2, 2800 <__udivsi3+0x38>)
    27f0:	eb02 1303 	add.w	r3, r2, r3, lsl #4
    27f4:	f04f 0200 	mov.w	r2, #0
    27f8:	469f      	mov	pc, r3
    27fa:	bf00      	nop
    27fc:	f3af 8000 	nop.w
    2800:	ebb0 7fc1 	cmp.w	r0, r1, lsl #31
    2804:	bf00      	nop
    2806:	eb42 0202 	adc.w	r2, r2, r2
    280a:	bf28      	it	cs
    280c:	eba0 70c1 	subcs.w	r0, r0, r1, lsl #31
    2810:	ebb0 7f81 	cmp.w	r0, r1, lsl #30
    2814:	bf00      	nop
    2816:	eb42 0202 	adc.w	r2, r2, r2
    281a:	bf28      	it	cs
    281c:	eba0 7081 	subcs.w	r0, r0, r1, lsl #30
    2820:	ebb0 7f41 	cmp.w	r0, r1, lsl #29
    2824:	bf00      	nop
    2826:	eb42 0202 	adc.w	r2, r2, r2
    282a:	bf28      	it	cs
    282c:	eba0 7041 	subcs.w	r0, r0, r1, lsl #29
    2830:	ebb0 7f01 	cmp.w	r0, r1, lsl #28
    2834:	bf00      	nop
    2836:	eb42 0202 	adc.w	r2, r2, r2
    283a:	bf28      	it	cs
    283c:	eba0 7001 	subcs.w	r0, r0, r1, lsl #28
    2840:	ebb0 6fc1 	cmp.w	r0, r1, lsl #27
    2844:	bf00      	nop
    2846:	eb42 0202 	adc.w	r2, r2, r2
    284a:	bf28      	it	cs
    284c:	eba0 60c1 	subcs.w	r0, r0, r1, lsl #27
    2850:	ebb0 6f81 	cmp.w	r0, r1, lsl #26
    2854:	bf00      	nop
    2856:	eb42 0202 	adc.w	r2, r2, r2
    285a:	bf28      	it	cs
    285c:	eba0 6081 	subcs.w	r0, r0, r1, lsl #26
    2860:	ebb0 6f41 	cmp.w	r0, r1, lsl #25
    2864:	bf00      	nop
    2866:	eb42 0202 	adc.w	r2, r2, r2
    286a:	bf28      	it	cs
    286c:	eba0 6041 	subcs.w	r0, r0, r1, lsl #25
    2870:	ebb0 6f01 	cmp.w	r0, r1, lsl #24
    2874:	bf00      	nop
    2876:	eb42 0202 	adc.w	r2, r2, r2
    287a:	bf28      	it	cs
    287c:	eba0 6001 	subcs.w	r0, r0, r1, lsl #24
    2880:	ebb0 5fc1 	cmp.w	r0, r1, lsl #23
    2884:	bf00      	nop
    2886:	eb42 0202 	adc.w	r2, r2, r2
    288a:	bf28      	it	cs
    288c:	eba0 50c1 	subcs.w	r0, r0, r1, lsl #23
    2890:	ebb0 5f81 	cmp.w	r0, r1, lsl #22
    2894:	bf00      	nop
    2896:	eb42 0202 	adc.w	r2, r2, r2
    289a:	bf28      	it	cs
    289c:	eba0 5081 	subcs.w	r0, r0, r1, lsl #22
    28a0:	ebb0 5f41 	cmp.w	r0, r1, lsl #21
    28a4:	bf00      	nop
    28a6:	eb42 0202 	adc.w	r2, r2, r2
    28aa:	bf28      	it	cs
    28ac:	eba0 5041 	subcs.w	r0, r0, r1, lsl #21
    28b0:	ebb0 5f01 	cmp.w	r0, r1, lsl #20
    28b4:	bf00      	nop
    28b6:	eb42 0202 	adc.w	r2, r2, r2
    28ba:	bf28      	it	cs
    28bc:	eba0 5001 	subcs.w	r0, r0, r1, lsl #20
    28c0:	ebb0 4fc1 	cmp.w	r0, r1, lsl #19
    28c4:	bf00      	nop
    28c6:	eb42 0202 	adc.w	r2, r2, r2
    28ca:	bf28      	it	cs
    28cc:	eba0 40c1 	subcs.w	r0, r0, r1, lsl #19
    28d0:	ebb0 4f81 	cmp.w	r0, r1, lsl #18
    28d4:	bf00      	nop
    28d6:	eb42 0202 	adc.w	r2, r2, r2
    28da:	bf28      	it	cs
    28dc:	eba0 4081 	subcs.w	r0, r0, r1, lsl #18
    28e0:	ebb0 4f41 	cmp.w	r0, r1, lsl #17
    28e4:	bf00      	nop
    28e6:	eb42 0202 	adc.w	r2, r2, r2
    28ea:	bf28      	it	cs
    28ec:	eba0 4041 	subcs.w	r0, r0, r1, lsl #17
    28f0:	ebb0 4f01 	cmp.w	r0, r1, lsl #16
    28f4:	bf00      	nop
    28f6:	eb42 0202 	adc.w	r2, r2, r2
    28fa:	bf28      	it	cs
    28fc:	eba0 4001 	subcs.w	r0, r0, r1, lsl #16
    2900:	ebb0 3fc1 	cmp.w	r0, r1, lsl #15
    2904:	bf00      	nop
    2906:	eb42 0202 	adc.w	r2, r2, r2
    290a:	bf28      	it	cs
    290c:	eba0 30c1 	subcs.w	r0, r0, r1, lsl #15
    2910:	ebb0 3f81 	cmp.w	r0, r1, lsl #14
    2914:	bf00      	nop
    2916:	eb42 0202 	adc.w	r2, r2, r2
    291a:	bf28      	it	cs
    291c:	eba0 3081 	subcs.w	r0, r0, r1, lsl #14
    2920:	ebb0 3f41 	cmp.w	r0, r1, lsl #13
    2924:	bf00      	nop
    2926:	eb42 0202 	adc.w	r2, r2, r2
    292a:	bf28      	it	cs
    292c:	eba0 3041 	subcs.w	r0, r0, r1, lsl #13
    2930:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
    2934:	bf00      	nop
    2936:	eb42 0202 	adc.w	r2, r2, r2
    293a:	bf28      	it	cs
    293c:	eba0 3001 	subcs.w	r0, r0, r1, lsl #12
    2940:	ebb0 2fc1 	cmp.w	r0, r1, lsl #11
    2944:	bf00      	nop
    2946:	eb42 0202 	adc.w	r2, r2, r2
    294a:	bf28      	it	cs
    294c:	eba0 20c1 	subcs.w	r0, r0, r1, lsl #11
    2950:	ebb0 2f81 	cmp.w	r0, r1, lsl #10
    2954:	bf00      	nop
    2956:	eb42 0202 	adc.w	r2, r2, r2
    295a:	bf28      	it	cs
    295c:	eba0 2081 	subcs.w	r0, r0, r1, lsl #10
    2960:	ebb0 2f41 	cmp.w	r0, r1, lsl #9
    2964:	bf00      	nop
    2966:	eb42 0202 	adc.w	r2, r2, r2
    296a:	bf28      	it	cs
    296c:	eba0 2041 	subcs.w	r0, r0, r1, lsl #9
    2970:	ebb0 2f01 	cmp.w	r0, r1, lsl #8
    2974:	bf00      	nop
    2976:	eb42 0202 	adc.w	r2, r2, r2
    297a:	bf28      	it	cs
    297c:	eba0 2001 	subcs.w	r0, r0, r1, lsl #8
    2980:	ebb0 1fc1 	cmp.w	r0, r1, lsl #7
    2984:	bf00      	nop
    2986:	eb42 0202 	adc.w	r2, r2, r2
    298a:	bf28      	it	cs
    298c:	eba0 10c1 	subcs.w	r0, r0, r1, lsl #7
    2990:	ebb0 1f81 	cmp.w	r0, r1, lsl #6
    2994:	bf00      	nop
    2996:	eb42 0202 	adc.w	r2, r2, r2
    299a:	bf28      	it	cs
    299c:	eba0 1081 	subcs.w	r0, r0, r1, lsl #6
    29a0:	ebb0 1f41 	cmp.w	r0, r1, lsl #5
    29a4:	bf00      	nop
    29a6:	eb42 0202 	adc.w	r2, r2, r2
    29aa:	bf28      	it	cs
    29ac:	eba0 1041 	subcs.w	r0, r0, r1, lsl #5
    29b0:	ebb0 1f01 	cmp.w	r0, r1, lsl #4
    29b4:	bf00      	nop
    29b6:	eb42 0202 	adc.w	r2, r2, r2
    29ba:	bf28      	it	cs
    29bc:	eba0 1001 	subcs.w	r0, r0, r1, lsl #4
    29c0:	ebb0 0fc1 	cmp.w	r0, r1, lsl #3
    29c4:	bf00      	nop
    29c6:	eb42 0202 	adc.w	r2, r2, r2
    29ca:	bf28      	it	cs
    29cc:	eba0 00c1 	subcs.w	r0, r0, r1, lsl #3
    29d0:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
    29d4:	bf00      	nop
    29d6:	eb42 0202 	adc.w	r2, r2, r2
    29da:	bf28      	it	cs
    29dc:	eba0 0081 	subcs.w	r0, r0, r1, lsl #2
    29e0:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
    29e4:	bf00      	nop
    29e6:	eb42 0202 	adc.w	r2, r2, r2
    29ea:	bf28      	it	cs
    29ec:	eba0 0041 	subcs.w	r0, r0, r1, lsl #1
    29f0:	ebb0 0f01 	cmp.w	r0, r1
    29f4:	bf00      	nop
    29f6:	eb42 0202 	adc.w	r2, r2, r2
    29fa:	bf28      	it	cs
    29fc:	eba0 0001 	subcs.w	r0, r0, r1
    2a00:	4610      	mov	r0, r2
    2a02:	4770      	bx	lr
    2a04:	bf0c      	ite	eq
    2a06:	2001      	moveq	r0, #1
    2a08:	2000      	movne	r0, #0
    2a0a:	4770      	bx	lr
    2a0c:	fab1 f281 	clz	r2, r1
    2a10:	f1c2 021f 	rsb	r2, r2, #31
    2a14:	fa20 f002 	lsr.w	r0, r0, r2
    2a18:	4770      	bx	lr
    2a1a:	b108      	cbz	r0, 2a20 <__udivsi3+0x258>
    2a1c:	f04f 30ff 	mov.w	r0, #4294967295
    2a20:	f000 b966 	b.w	2cf0 <__aeabi_idiv0>

00002a24 <__aeabi_uidivmod>:
    2a24:	2900      	cmp	r1, #0
    2a26:	d0f8      	beq.n	2a1a <__udivsi3+0x252>
    2a28:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
    2a2c:	f7ff fecc 	bl	27c8 <__udivsi3>
    2a30:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
    2a34:	fb02 f300 	mul.w	r3, r2, r0
    2a38:	eba1 0103 	sub.w	r1, r1, r3
    2a3c:	4770      	bx	lr
    2a3e:	bf00      	nop

00002a40 <__divsi3>:
    2a40:	2900      	cmp	r1, #0
    2a42:	f000 813e 	beq.w	2cc2 <.divsi3_skip_div0_test+0x27c>

00002a46 <.divsi3_skip_div0_test>:
    2a46:	ea80 0c01 	eor.w	ip, r0, r1
    2a4a:	bf48      	it	mi
    2a4c:	4249      	negmi	r1, r1
    2a4e:	1e4a      	subs	r2, r1, #1
    2a50:	f000 811f 	beq.w	2c92 <.divsi3_skip_div0_test+0x24c>
    2a54:	0003      	movs	r3, r0
    2a56:	bf48      	it	mi
    2a58:	4243      	negmi	r3, r0
    2a5a:	428b      	cmp	r3, r1
    2a5c:	f240 811e 	bls.w	2c9c <.divsi3_skip_div0_test+0x256>
    2a60:	4211      	tst	r1, r2
    2a62:	f000 8123 	beq.w	2cac <.divsi3_skip_div0_test+0x266>
    2a66:	fab3 f283 	clz	r2, r3
    2a6a:	fab1 f081 	clz	r0, r1
    2a6e:	eba0 0202 	sub.w	r2, r0, r2
    2a72:	f1c2 021f 	rsb	r2, r2, #31
    2a76:	a004      	add	r0, pc, #16	; (adr r0, 2a88 <.divsi3_skip_div0_test+0x42>)
    2a78:	eb00 1202 	add.w	r2, r0, r2, lsl #4
    2a7c:	f04f 0000 	mov.w	r0, #0
    2a80:	4697      	mov	pc, r2
    2a82:	bf00      	nop
    2a84:	f3af 8000 	nop.w
    2a88:	ebb3 7fc1 	cmp.w	r3, r1, lsl #31
    2a8c:	bf00      	nop
    2a8e:	eb40 0000 	adc.w	r0, r0, r0
    2a92:	bf28      	it	cs
    2a94:	eba3 73c1 	subcs.w	r3, r3, r1, lsl #31
    2a98:	ebb3 7f81 	cmp.w	r3, r1, lsl #30
    2a9c:	bf00      	nop
    2a9e:	eb40 0000 	adc.w	r0, r0, r0
    2aa2:	bf28      	it	cs
    2aa4:	eba3 7381 	subcs.w	r3, r3, r1, lsl #30
    2aa8:	ebb3 7f41 	cmp.w	r3, r1, lsl #29
    2aac:	bf00      	nop
    2aae:	eb40 0000 	adc.w	r0, r0, r0
    2ab2:	bf28      	it	cs
    2ab4:	eba3 7341 	subcs.w	r3, r3, r1, lsl #29
    2ab8:	ebb3 7f01 	cmp.w	r3, r1, lsl #28
    2abc:	bf00      	nop
    2abe:	eb40 0000 	adc.w	r0, r0, r0
    2ac2:	bf28      	it	cs
    2ac4:	eba3 7301 	subcs.w	r3, r3, r1, lsl #28
    2ac8:	ebb3 6fc1 	cmp.w	r3, r1, lsl #27
    2acc:	bf00      	nop
    2ace:	eb40 0000 	adc.w	r0, r0, r0
    2ad2:	bf28      	it	cs
    2ad4:	eba3 63c1 	subcs.w	r3, r3, r1, lsl #27
    2ad8:	ebb3 6f81 	cmp.w	r3, r1, lsl #26
    2adc:	bf00      	nop
    2ade:	eb40 0000 	adc.w	r0, r0, r0
    2ae2:	bf28      	it	cs
    2ae4:	eba3 6381 	subcs.w	r3, r3, r1, lsl #26
    2ae8:	ebb3 6f41 	cmp.w	r3, r1, lsl #25
    2aec:	bf00      	nop
    2aee:	eb40 0000 	adc.w	r0, r0, r0
    2af2:	bf28      	it	cs
    2af4:	eba3 6341 	subcs.w	r3, r3, r1, lsl #25
    2af8:	ebb3 6f01 	cmp.w	r3, r1, lsl #24
    2afc:	bf00      	nop
    2afe:	eb40 0000 	adc.w	r0, r0, r0
    2b02:	bf28      	it	cs
    2b04:	eba3 6301 	subcs.w	r3, r3, r1, lsl #24
    2b08:	ebb3 5fc1 	cmp.w	r3, r1, lsl #23
    2b0c:	bf00      	nop
    2b0e:	eb40 0000 	adc.w	r0, r0, r0
    2b12:	bf28      	it	cs
    2b14:	eba3 53c1 	subcs.w	r3, r3, r1, lsl #23
    2b18:	ebb3 5f81 	cmp.w	r3, r1, lsl #22
    2b1c:	bf00      	nop
    2b1e:	eb40 0000 	adc.w	r0, r0, r0
    2b22:	bf28      	it	cs
    2b24:	eba3 5381 	subcs.w	r3, r3, r1, lsl #22
    2b28:	ebb3 5f41 	cmp.w	r3, r1, lsl #21
    2b2c:	bf00      	nop
    2b2e:	eb40 0000 	adc.w	r0, r0, r0
    2b32:	bf28      	it	cs
    2b34:	eba3 5341 	subcs.w	r3, r3, r1, lsl #21
    2b38:	ebb3 5f01 	cmp.w	r3, r1, lsl #20
    2b3c:	bf00      	nop
    2b3e:	eb40 0000 	adc.w	r0, r0, r0
    2b42:	bf28      	it	cs
    2b44:	eba3 5301 	subcs.w	r3, r3, r1, lsl #20
    2b48:	ebb3 4fc1 	cmp.w	r3, r1, lsl #19
    2b4c:	bf00      	nop
    2b4e:	eb40 0000 	adc.w	r0, r0, r0
    2b52:	bf28      	it	cs
    2b54:	eba3 43c1 	subcs.w	r3, r3, r1, lsl #19
    2b58:	ebb3 4f81 	cmp.w	r3, r1, lsl #18
    2b5c:	bf00      	nop
    2b5e:	eb40 0000 	adc.w	r0, r0, r0
    2b62:	bf28      	it	cs
    2b64:	eba3 4381 	subcs.w	r3, r3, r1, lsl #18
    2b68:	ebb3 4f41 	cmp.w	r3, r1, lsl #17
    2b6c:	bf00      	nop
    2b6e:	eb40 0000 	adc.w	r0, r0, r0
    2b72:	bf28      	it	cs
    2b74:	eba3 4341 	subcs.w	r3, r3, r1, lsl #17
    2b78:	ebb3 4f01 	cmp.w	r3, r1, lsl #16
    2b7c:	bf00      	nop
    2b7e:	eb40 0000 	adc.w	r0, r0, r0
    2b82:	bf28      	it	cs
    2b84:	eba3 4301 	subcs.w	r3, r3, r1, lsl #16
    2b88:	ebb3 3fc1 	cmp.w	r3, r1, lsl #15
    2b8c:	bf00      	nop
    2b8e:	eb40 0000 	adc.w	r0, r0, r0
    2b92:	bf28      	it	cs
    2b94:	eba3 33c1 	subcs.w	r3, r3, r1, lsl #15
    2b98:	ebb3 3f81 	cmp.w	r3, r1, lsl #14
    2b9c:	bf00      	nop
    2b9e:	eb40 0000 	adc.w	r0, r0, r0
    2ba2:	bf28      	it	cs
    2ba4:	eba3 3381 	subcs.w	r3, r3, r1, lsl #14
    2ba8:	ebb3 3f41 	cmp.w	r3, r1, lsl #13
    2bac:	bf00      	nop
    2bae:	eb40 0000 	adc.w	r0, r0, r0
    2bb2:	bf28      	it	cs
    2bb4:	eba3 3341 	subcs.w	r3, r3, r1, lsl #13
    2bb8:	ebb3 3f01 	cmp.w	r3, r1, lsl #12
    2bbc:	bf00      	nop
    2bbe:	eb40 0000 	adc.w	r0, r0, r0
    2bc2:	bf28      	it	cs
    2bc4:	eba3 3301 	subcs.w	r3, r3, r1, lsl #12
    2bc8:	ebb3 2fc1 	cmp.w	r3, r1, lsl #11
    2bcc:	bf00      	nop
    2bce:	eb40 0000 	adc.w	r0, r0, r0
    2bd2:	bf28      	it	cs
    2bd4:	eba3 23c1 	subcs.w	r3, r3, r1, lsl #11
    2bd8:	ebb3 2f81 	cmp.w	r3, r1, lsl #10
    2bdc:	bf00      	nop
    2bde:	eb40 0000 	adc.w	r0, r0, r0
    2be2:	bf28      	it	cs
    2be4:	eba3 2381 	subcs.w	r3, r3, r1, lsl #10
    2be8:	ebb3 2f41 	cmp.w	r3, r1, lsl #9
    2bec:	bf00      	nop
    2bee:	eb40 0000 	adc.w	r0, r0, r0
    2bf2:	bf28      	it	cs
    2bf4:	eba3 2341 	subcs.w	r3, r3, r1, lsl #9
    2bf8:	ebb3 2f01 	cmp.w	r3, r1, lsl #8
    2bfc:	bf00      	nop
    2bfe:	eb40 0000 	adc.w	r0, r0, r0
    2c02:	bf28      	it	cs
    2c04:	eba3 2301 	subcs.w	r3, r3, r1, lsl #8
    2c08:	ebb3 1fc1 	cmp.w	r3, r1, lsl #7
    2c0c:	bf00      	nop
    2c0e:	eb40 0000 	adc.w	r0, r0, r0
    2c12:	bf28      	it	cs
    2c14:	eba3 13c1 	subcs.w	r3, r3, r1, lsl #7
    2c18:	ebb3 1f81 	cmp.w	r3, r1, lsl #6
    2c1c:	bf00      	nop
    2c1e:	eb40 0000 	adc.w	r0, r0, r0
    2c22:	bf28      	it	cs
    2c24:	eba3 1381 	subcs.w	r3, r3, r1, lsl #6
    2c28:	ebb3 1f41 	cmp.w	r3, r1, lsl #5
    2c2c:	bf00      	nop
    2c2e:	eb40 0000 	adc.w	r0, r0, r0
    2c32:	bf28      	it	cs
    2c34:	eba3 1341 	subcs.w	r3, r3, r1, lsl #5
    2c38:	ebb3 1f01 	cmp.w	r3, r1, lsl #4
    2c3c:	bf00      	nop
    2c3e:	eb40 0000 	adc.w	r0, r0, r0
    2c42:	bf28      	it	cs
    2c44:	eba3 1301 	subcs.w	r3, r3, r1, lsl #4
    2c48:	ebb3 0fc1 	cmp.w	r3, r1, lsl #3
    2c4c:	bf00      	nop
    2c4e:	eb40 0000 	adc.w	r0, r0, r0
    2c52:	bf28      	it	cs
    2c54:	eba3 03c1 	subcs.w	r3, r3, r1, lsl #3
    2c58:	ebb3 0f81 	cmp.w	r3, r1, lsl #2
    2c5c:	bf00      	nop
    2c5e:	eb40 0000 	adc.w	r0, r0, r0
    2c62:	bf28      	it	cs
    2c64:	eba3 0381 	subcs.w	r3, r3, r1, lsl #2
    2c68:	ebb3 0f41 	cmp.w	r3, r1, lsl #1
    2c6c:	bf00      	nop
    2c6e:	eb40 0000 	adc.w	r0, r0, r0
    2c72:	bf28      	it	cs
    2c74:	eba3 0341 	subcs.w	r3, r3, r1, lsl #1
    2c78:	ebb3 0f01 	cmp.w	r3, r1
    2c7c:	bf00      	nop
    2c7e:	eb40 0000 	adc.w	r0, r0, r0
    2c82:	bf28      	it	cs
    2c84:	eba3 0301 	subcs.w	r3, r3, r1
    2c88:	f1bc 0f00 	cmp.w	ip, #0
    2c8c:	bf48      	it	mi
    2c8e:	4240      	negmi	r0, r0
    2c90:	4770      	bx	lr
    2c92:	ea9c 0f00 	teq	ip, r0
    2c96:	bf48      	it	mi
    2c98:	4240      	negmi	r0, r0
    2c9a:	4770      	bx	lr
    2c9c:	bf38      	it	cc
    2c9e:	2000      	movcc	r0, #0
    2ca0:	bf04      	itt	eq
    2ca2:	ea4f 70ec 	moveq.w	r0, ip, asr #31
    2ca6:	f040 0001 	orreq.w	r0, r0, #1
    2caa:	4770      	bx	lr
    2cac:	fab1 f281 	clz	r2, r1
    2cb0:	f1c2 021f 	rsb	r2, r2, #31
    2cb4:	f1bc 0f00 	cmp.w	ip, #0
    2cb8:	fa23 f002 	lsr.w	r0, r3, r2
    2cbc:	bf48      	it	mi
    2cbe:	4240      	negmi	r0, r0
    2cc0:	4770      	bx	lr
    2cc2:	2800      	cmp	r0, #0
    2cc4:	bfc8      	it	gt
    2cc6:	f06f 4000 	mvngt.w	r0, #2147483648	; 0x80000000
    2cca:	bfb8      	it	lt
    2ccc:	f04f 4000 	movlt.w	r0, #2147483648	; 0x80000000
    2cd0:	f000 b80e 	b.w	2cf0 <__aeabi_idiv0>

00002cd4 <__aeabi_idivmod>:
    2cd4:	2900      	cmp	r1, #0
    2cd6:	d0f4      	beq.n	2cc2 <.divsi3_skip_div0_test+0x27c>
    2cd8:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
    2cdc:	f7ff feb3 	bl	2a46 <.divsi3_skip_div0_test>
    2ce0:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
    2ce4:	fb02 f300 	mul.w	r3, r2, r0
    2ce8:	eba1 0103 	sub.w	r1, r1, r3
    2cec:	4770      	bx	lr
    2cee:	bf00      	nop

00002cf0 <__aeabi_idiv0>:
    2cf0:	4770      	bx	lr
    2cf2:	bf00      	nop

00002cf4 <_close>:
    2cf4:	f243 23e0 	movw	r3, #13024	; 0x32e0
    2cf8:	f2c0 0300 	movt	r3, #0
    2cfc:	2258      	movs	r2, #88	; 0x58
    2cfe:	f04f 30ff 	mov.w	r0, #4294967295
    2d02:	601a      	str	r2, [r3, #0]
    2d04:	4770      	bx	lr
    2d06:	bf00      	nop

00002d08 <_fstat>:
    2d08:	f243 23e0 	movw	r3, #13024	; 0x32e0
    2d0c:	f2c0 0300 	movt	r3, #0
    2d10:	2258      	movs	r2, #88	; 0x58
    2d12:	f04f 30ff 	mov.w	r0, #4294967295
    2d16:	601a      	str	r2, [r3, #0]
    2d18:	4770      	bx	lr
    2d1a:	bf00      	nop

00002d1c <_isatty>:
    2d1c:	f243 23e0 	movw	r3, #13024	; 0x32e0
    2d20:	f2c0 0300 	movt	r3, #0
    2d24:	2258      	movs	r2, #88	; 0x58
    2d26:	2000      	movs	r0, #0
    2d28:	601a      	str	r2, [r3, #0]
    2d2a:	4770      	bx	lr

00002d2c <_lseek>:
    2d2c:	f243 23e0 	movw	r3, #13024	; 0x32e0
    2d30:	f2c0 0300 	movt	r3, #0
    2d34:	2258      	movs	r2, #88	; 0x58
    2d36:	f04f 30ff 	mov.w	r0, #4294967295
    2d3a:	601a      	str	r2, [r3, #0]
    2d3c:	4770      	bx	lr
    2d3e:	bf00      	nop

00002d40 <_sbrk>:
    2d40:	f243 2238 	movw	r2, #12856	; 0x3238
    2d44:	f2c0 0200 	movt	r2, #0
    2d48:	f240 0100 	movw	r1, #0
    2d4c:	f2c0 1100 	movt	r1, #256	; 0x100
    2d50:	6813      	ldr	r3, [r2, #0]
    2d52:	2b00      	cmp	r3, #0
    2d54:	bf08      	it	eq
    2d56:	460b      	moveq	r3, r1
    2d58:	4418      	add	r0, r3
    2d5a:	6010      	str	r0, [r2, #0]
    2d5c:	4618      	mov	r0, r3
    2d5e:	4770      	bx	lr

00002d60 <_exit>:
    2d60:	e7fe      	b.n	2d60 <_exit>
    2d62:	bf00      	nop

Disassembly of section .init:

00002d64 <_init>:
    2d64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    2d66:	bf00      	nop
    2d68:	bcf8      	pop	{r3, r4, r5, r6, r7}
    2d6a:	bc08      	pop	{r3}
    2d6c:	469e      	mov	lr, r3
    2d6e:	4770      	bx	lr

Disassembly of section .fini:

00002d70 <_fini>:
    2d70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    2d72:	bf00      	nop
    2d74:	bcf8      	pop	{r3, r4, r5, r6, r7}
    2d76:	bc08      	pop	{r3}
    2d78:	469e      	mov	lr, r3
    2d7a:	4770      	bx	lr

Disassembly of section .data:

00002d7c <__dso_handle>:
    2d7c:	00000000 	andeq	r0, r0, r0

00002d80 <_impure_ptr>:
    2d80:	00002d84 	andeq	r2, r0, r4, lsl #27

00002d84 <impure_data>:
    2d84:	00000000 	andeq	r0, r0, r0
    2d88:	00003058 	andeq	r3, r0, r8, asr r0
    2d8c:	00003078 	andeq	r3, r0, r8, ror r0
    2d90:	00003038 	andeq	r3, r0, r8, lsr r0
	...

00002de4 <__global_locale>:
    2de4:	00000043 	andeq	r0, r0, r3, asr #32
	...
    2e04:	00000043 	andeq	r0, r0, r3, asr #32
	...
    2e24:	00000043 	andeq	r0, r0, r3, asr #32
	...
    2e44:	00000043 	andeq	r0, r0, r3, asr #32
	...
    2e64:	00000043 	andeq	r0, r0, r3, asr #32
	...
    2e84:	00000043 	andeq	r0, r0, r3, asr #32
	...
    2ea4:	00000043 	andeq	r0, r0, r3, asr #32
	...
    2ec4:	00002799 	muleq	r0, r9, r7
    2ec8:	0000268d 	andeq	r2, r0, sp, lsl #13
    2ecc:	00000000 	andeq	r0, r0, r0
    2ed0:	00003101 	andeq	r3, r0, r1, lsl #2
    2ed4:	000030ff 	strdeq	r3, [r0], -pc	; <UNPREDICTABLE>
    2ed8:	000030a1 	andeq	r3, r0, r1, lsr #1
    2edc:	000030a1 	andeq	r3, r0, r1, lsr #1
    2ee0:	000030a1 	andeq	r3, r0, r1, lsr #1
    2ee4:	000030a1 	andeq	r3, r0, r1, lsr #1
    2ee8:	000030a1 	andeq	r3, r0, r1, lsr #1
    2eec:	000030a1 	andeq	r3, r0, r1, lsr #1
    2ef0:	000030a1 	andeq	r3, r0, r1, lsr #1
    2ef4:	000030a1 	andeq	r3, r0, r1, lsr #1
    2ef8:	000030a1 	andeq	r3, r0, r1, lsr #1
    2efc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    2f00:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    2f04:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    2f08:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
    2f0c:	53410001 	movtpl	r0, #4097	; 0x1001
    2f10:	00494943 	subeq	r4, r9, r3, asr #18
	...
    2f2c:	53410000 	movtpl	r0, #4096	; 0x1000
    2f30:	00494943 	subeq	r4, r9, r3, asr #18
	...

Disassembly of section .init_array:

00002f50 <__frame_dummy_init_array_entry>:
    2f50:	000000ad 	andeq	r0, r0, sp, lsr #1

Disassembly of section .fini_array:

00002f54 <__do_global_dtors_aux_fini_array_entry>:
    2f54:	00000081 	andeq	r0, r0, r1, lsl #1

Disassembly of section .rodata:

00002f58 <__sf_fake_stderr-0xe0>:
    2f58:	4f464e49 	svcmi	0x00464e49
    2f5c:	55203a20 	strpl	r3, [r0, #-2592]!	; 0xfffff5e0
    2f60:	30545241 	subscc	r5, r4, r1, asr #4
    2f64:	41455220 	cmpmi	r5, r0, lsr #4
    2f68:	6f205944 	svcvs	0x00205944
    2f6c:	7473206e 	ldrbtvc	r2, [r3], #-110	; 0xffffff92
    2f70:	74756f64 	ldrbtvc	r6, [r5], #-3940	; 0xfffff09c
    2f74:	0000000a 	andeq	r0, r0, sl
    2f78:	4f464e49 	svcmi	0x00464e49
    2f7c:	55203a20 	strpl	r3, [r0, #-2592]!	; 0xfffff5e0
    2f80:	31545241 	cmpcc	r4, r1, asr #4
    2f84:	41455220 	cmpmi	r5, r0, lsr #4
    2f88:	6f205944 	svcvs	0x00205944
    2f8c:	7473206e 	ldrbtvc	r2, [r3], #-110	; 0xffffff92
    2f90:	72726564 	rsbsvc	r6, r2, #100, 10	; 0x19000000
    2f94:	0000000a 	andeq	r0, r0, sl
    2f98:	4f464e49 	svcmi	0x00464e49
    2f9c:	48203a20 	stmdami	r0!, {r5, r9, fp, ip, sp}
    2fa0:	6c204c41 	stcvs	12, cr4, [r0], #-260	; 0xfffffefc
    2fa4:	6c657665 	stclvs	6, cr7, [r5], #-404	; 0xfffffe6c
    2fa8:	61747320 	cmnvs	r4, r0, lsr #6
    2fac:	20737574 	rsbscs	r7, r3, r4, ror r5
    2fb0:	203e2d2d 	eorscs	r2, lr, sp, lsr #26
    2fb4:	61205055 	qsubvs	r5, r5, r0
    2fb8:	5220646e 	eorpl	r6, r0, #1845493760	; 0x6e000000
    2fbc:	696e6e75 	stmdbvs	lr!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    2fc0:	000a676e 	andeq	r6, sl, lr, ror #14
    2fc4:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    2fc8:	7369206e 	cmnvc	r9, #110	; 0x6e
    2fcc:	74206120 	strtvc	r6, [r0], #-288	; 0xfffffee0
    2fd0:	696d7265 	stmdbvs	sp!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    2fd4:	0a6c616e 	beq	1b1b594 <_end+0xb1b594>
    2fd8:	00000000 	andeq	r0, r0, r0
    2fdc:	65746e45 	ldrbvs	r6, [r4, #-3653]!	; 0xfffff1bb
    2fe0:	20612072 	rsbcs	r2, r1, r2, ror r0
    2fe4:	72657375 	rsbvc	r7, r5, #-738197503	; 0xd4000001
    2fe8:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
    2fec:	00000a3a 	andeq	r0, r0, sl, lsr sl
    2ff0:	00007325 	andeq	r7, r0, r5, lsr #6
    2ff4:	65746e45 	ldrbvs	r6, [r4, #-3653]!	; 0xfffff1bb
    2ff8:	6f792072 	svcvs	0x00792072
    2ffc:	4e207275 	mcrmi	2, 1, r7, cr0, cr5, {3}
    3000:	6e6b6369 	cdpvs	3, 6, cr6, cr11, cr9, {3}
    3004:	3a656d61 	bcc	195e590 <_end+0x95e590>
    3008:	0000000a 	andeq	r0, r0, sl
    300c:	6c6c6548 	cfstr64vs	mvdx6, [ip], #-288	; 0xfffffee0
    3010:	6f77206f 	svcvs	0x0077206f
    3014:	21646c72 	smccs	18114	; 0x46c2
    3018:	646e6120 	strbtvs	r6, [lr], #-288	; 0xfffffee0
    301c:	65796220 	ldrbvs	r6, [r9, #-544]!	; 0xfffffde0
    3020:	000a2121 	andeq	r2, sl, r1, lsr #2
    3024:	20646e61 	rsbcs	r6, r4, r1, ror #28
    3028:	21657962 	cmncs	r5, r2, ror #18
    302c:	00000a21 	andeq	r0, r0, r1, lsr #20
    3030:	21657962 	cmncs	r5, r2, ror #18
    3034:	00000a21 	andeq	r0, r0, r1, lsr #20

00003038 <__sf_fake_stderr>:
	...

00003058 <__sf_fake_stdin>:
	...

00003078 <__sf_fake_stdout>:
	...

00003098 <_global_impure_ptr>:
    3098:	00002d84 	andeq	r2, r0, r4, lsl #27
    309c:	2b302d23 	blcs	c0e530 <heap_size+0xbee530>
    30a0:	6c680020 	stclvs	0, cr0, [r8], #-128	; 0xffffff80
    30a4:	6665004c 	strbtvs	r0, [r5], -ip, asr #32
    30a8:	47464567 	strbmi	r4, [r6, -r7, ror #10]
    30ac:	32313000 	eorscc	r3, r1, #0
    30b0:	36353433 			; <UNDEFINED> instruction: 0x36353433
    30b4:	41393837 	teqmi	r9, r7, lsr r8
    30b8:	45444342 	strbmi	r4, [r4, #-834]	; 0xfffffcbe
    30bc:	31300046 	teqcc	r0, r6, asr #32
    30c0:	35343332 	ldrcc	r3, [r4, #-818]!	; 0xfffffcce
    30c4:	39383736 	ldmdbcc	r8!, {r1, r2, r4, r5, r8, r9, sl, ip, sp}
    30c8:	64636261 	strbtvs	r6, [r3], #-609	; 0xfffffd9f
    30cc:	00006665 	andeq	r6, r0, r5, ror #12
    30d0:	000030ee 	andeq	r3, r0, lr, ror #1
    30d4:	000030f1 	strdeq	r3, [r0], -r1
    30d8:	000030f4 	strdeq	r3, [r0], -r4
    30dc:	61462d41 	cmpvs	r6, r1, asr #26
    30e0:	3938662d 	ldmdbcc	r8!, {r0, r2, r3, r5, r9, sl, sp, lr}
    30e4:	33323130 	teqcc	r2, #48, 2
    30e8:	37363534 			; <UNDEFINED> instruction: 0x37363534
    30ec:	2d2b005d 	stccs	0, cr0, [fp, #-372]!	; 0xfffffe8c
    30f0:	00303000 	eorseq	r3, r0, r0
    30f4:	43005878 	movwmi	r5, #2168	; 0x878
    30f8:	534f5000 	movtpl	r5, #61440	; 0xf000
    30fc:	2e005849 	cdpcs	8, 0, cr5, cr0, cr9, {2}
	...

00003101 <_ctype_>:
    3101:	20202000 	eorcs	r2, r0, r0
    3105:	20202020 	eorcs	r2, r0, r0, lsr #32
    3109:	28282020 	stmdacs	r8!, {r5, sp}
    310d:	20282828 	eorcs	r2, r8, r8, lsr #16
    3111:	20202020 	eorcs	r2, r0, r0, lsr #32
    3115:	20202020 	eorcs	r2, r0, r0, lsr #32
    3119:	20202020 	eorcs	r2, r0, r0, lsr #32
    311d:	20202020 	eorcs	r2, r0, r0, lsr #32
    3121:	10108820 	andsne	r8, r0, r0, lsr #16
    3125:	10101010 	andsne	r1, r0, r0, lsl r0
    3129:	10101010 	andsne	r1, r0, r0, lsl r0
    312d:	10101010 	andsne	r1, r0, r0, lsl r0
    3131:	04040410 	streq	r0, [r4], #-1040	; 0xfffffbf0
    3135:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
    3139:	10040404 	andne	r0, r4, r4, lsl #8
    313d:	10101010 	andsne	r1, r0, r0, lsl r0
    3141:	41411010 	cmpmi	r1, r0, lsl r0
    3145:	41414141 	cmpmi	r1, r1, asr #2
    3149:	01010101 	tsteq	r1, r1, lsl #2
    314d:	01010101 	tsteq	r1, r1, lsl #2
    3151:	01010101 	tsteq	r1, r1, lsl #2
    3155:	01010101 	tsteq	r1, r1, lsl #2
    3159:	01010101 	tsteq	r1, r1, lsl #2
    315d:	10101010 	andsne	r1, r0, r0, lsl r0
    3161:	42421010 	submi	r1, r2, #16
    3165:	42424242 	submi	r4, r2, #536870916	; 0x20000004
    3169:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    316d:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    3171:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    3175:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    3179:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    317d:	10101010 	andsne	r1, r0, r0, lsl r0
    3181:	00000020 	andeq	r0, r0, r0, lsr #32
	...

Disassembly of section .eh_frame:

00003204 <__FRAME_END__>:
    3204:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.exidx:

00003208 <.ARM.exidx>:
    3208:	7fffcec8 	svcvc	0x00ffcec8
    320c:	00000001 	andeq	r0, r0, r1

Disassembly of section .bss:

00003210 <completed.9930>:
    3210:	00000000 	andeq	r0, r0, r0

00003214 <object.9935>:
	...

0000322c <__malloc_free_list>:
    322c:	00000000 	andeq	r0, r0, r0

00003230 <__malloc_sbrk_start>:
    3230:	00000000 	andeq	r0, r0, r0

00003234 <_PathLocale>:
    3234:	00000000 	andeq	r0, r0, r0

00003238 <heap_end.5377>:
    3238:	00000000 	andeq	r0, r0, r0

0000323c <buffer>:
    323c:	00000000 	andeq	r0, r0, r0

00003240 <sNickname>:
	...

00003290 <sUsername>:
	...

000032e0 <errno>:
    32e0:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003041 	andeq	r3, r0, r1, asr #32
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000026 	andeq	r0, r0, r6, lsr #32
  10:	06003705 	streq	r3, [r0], -r5, lsl #14
  14:	0841070a 	stmdaeq	r1, {r1, r3, r8, r9, sl}^
  18:	0a020901 	beq	82424 <heap_size+0x62424>
  1c:	14041203 	strne	r1, [r4], #-515	; 0xfffffdfd
  20:	17011501 	strne	r1, [r1, -r1, lsl #10]
  24:	1a011803 	bne	46038 <heap_size+0x26038>
  28:	22011c01 	andcs	r1, r1, #256	; 0x100
  2c:	44012a01 	strmi	r2, [r1], #-2561	; 0xfffff5ff
  30:	Address 0x00000030 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_end+0xd0d24>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	206d7241 	rsbcs	r7, sp, r1, asr #4
  18:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  1c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  20:	6f725020 	svcvs	0x00725020
  24:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
  28:	2073726f 	rsbscs	r7, r3, pc, ror #4
  2c:	30322d37 	eorscc	r2, r2, r7, lsr sp
  30:	712d3831 			; <UNDEFINED> instruction: 0x712d3831
  34:	70752d32 	rsbsvc	r2, r5, r2, lsr sp
  38:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0xfffffe9c
  3c:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  40:	20312e33 	eorscs	r2, r1, r3, lsr lr
  44:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  48:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  4c:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  50:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  54:	5b202965 	blpl	80a5f0 <heap_size+0x7ea5f0>
  58:	2f4d5241 	svccs	0x004d5241
  5c:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  60:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  64:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  68:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  6c:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  70:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  74:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  78:	30393136 	eorscc	r3, r9, r6, lsr r1
  7c:	Address 0x0000007c is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	00000b78 	andeq	r0, r0, r8, ror fp
       4:	00000004 	andeq	r0, r0, r4
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	0000405f 	andeq	r4, r0, pc, asr r0
      10:	00877b0c 	addeq	r7, r7, ip, lsl #22
      14:	001d3d00 	andseq	r3, sp, r0, lsl #26
      18:	00014400 	andeq	r4, r1, r0, lsl #8
      1c:	00032000 	andeq	r2, r3, r0
	...
      28:	06010200 	streq	r0, [r1], -r0, lsl #4
      2c:	000007cd 	andeq	r0, r0, sp, asr #15
      30:	f2080102 	vrhadd.s8	d0, d8, d2
      34:	02000057 	andeq	r0, r0, #87	; 0x57
      38:	0a3c0502 	beq	f01448 <heap_size+0xee1448>
      3c:	02020000 	andeq	r0, r2, #0
      40:	0065ca07 	rsbeq	ip, r5, r7, lsl #20
      44:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
      48:	000068e8 	andeq	r6, r0, r8, ror #17
      4c:	003fa203 	eorseq	sl, pc, r3, lsl #4
      50:	574f0200 	strbpl	r0, [pc, -r0, lsl #4]
      54:	02000000 	andeq	r0, r0, #0
      58:	1d890704 	stcne	7, cr0, [r9, #16]
      5c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
      60:	004e4d05 	subeq	r4, lr, r5, lsl #26
      64:	07080200 	streq	r0, [r8, -r0, lsl #4]
      68:	00008d9e 	muleq	r0, lr, sp
      6c:	69050404 	stmdbvs	r5, {r2, sl}
      70:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
      74:	5e9a0704 	cdppl	7, 9, cr0, cr10, cr4, {0}
      78:	a6030000 	strge	r0, [r3], -r0
      7c:	03000042 	movweq	r0, #66	; 0x42
      80:	00006c0c 	andeq	r6, r0, ip, lsl #24
      84:	843a0300 	ldrthi	r0, [sl], #-768	; 0xfffffd00
      88:	2c040000 	stccs	0, cr0, [r4], {-0}
      8c:	00000045 	andeq	r0, r0, r5, asr #32
      90:	0060ef03 	rsbeq	lr, r0, r3, lsl #30
      94:	45720400 	ldrbmi	r0, [r2, #-1024]!	; 0xfffffc00
      98:	05000000 	streq	r0, [r0, #-0]
      9c:	0000272e 	andeq	r2, r0, lr, lsr #14
      a0:	73016505 	movwvc	r6, #5381	; 0x1505
      a4:	06000000 	streq	r0, [r0], -r0
      a8:	c6a60404 	strtgt	r0, [r6], r4, lsl #8
      ac:	07000000 	streq	r0, [r0, -r0]
      b0:	000012ab 	andeq	r1, r0, fp, lsr #5
      b4:	009ba804 	addseq	sl, fp, r4, lsl #16
      b8:	0d070000 	stceq	0, cr0, [r7, #-0]
      bc:	04000061 	streq	r0, [r0], #-97	; 0xffffff9f
      c0:	0000c6a9 	andeq	ip, r0, r9, lsr #13
      c4:	30080000 	andcc	r0, r8, r0
      c8:	d6000000 	strle	r0, [r0], -r0
      cc:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
      d0:	00000073 	andeq	r0, r0, r3, ror r0
      d4:	080a0003 	stmdaeq	sl, {r0, r1}
      d8:	00f7a304 	rscseq	sl, r7, r4, lsl #6
      dc:	f70b0000 			; <UNDEFINED> instruction: 0xf70b0000
      e0:	0400005b 	streq	r0, [r0], #-91	; 0xffffffa5
      e4:	00006ca5 	andeq	r6, r0, r5, lsr #25
      e8:	3e0b0000 	cdpcc	0, 0, cr0, cr11, cr0, {0}
      ec:	04000002 	streq	r0, [r0], #-2
      f0:	0000a7aa 	andeq	sl, r0, sl, lsr #15
      f4:	03000400 	movweq	r0, #1024	; 0x400
      f8:	0000503d 	andeq	r5, r0, sp, lsr r0
      fc:	00d6ab04 	sbcseq	sl, r6, r4, lsl #22
     100:	4e030000 	cdpmi	0, 0, cr0, cr3, cr0, {0}
     104:	0400006a 	streq	r0, [r0], #-106	; 0xffffff96
     108:	00007aaf 	andeq	r7, r0, pc, lsr #21
     10c:	03040c00 	movweq	r0, #19456	; 0x4c00
     110:	00003fa4 	andeq	r3, r0, r4, lsr #31
     114:	004c3006 	subeq	r3, ip, r6
     118:	0f0d0000 	svceq	0x000d0000
     11c:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     120:	00012504 	andeq	r2, r1, r4, lsl #10
     124:	08010200 	stmdaeq	r1, {r9}
     128:	000007d4 	ldrdeq	r0, [r0], -r4
     12c:	0001250f 	andeq	r2, r1, pc, lsl #10
     130:	25251000 	strcs	r1, [r5, #-0]!
     134:	10070000 	andne	r0, r7, r0
     138:	0000013c 	andeq	r0, r0, ip, lsr r1
     13c:	011f040e 	tsteq	pc, lr, lsl #8
     140:	fd100000 	ldc2	0, cr0, [r0, #-0]
     144:	07000083 	streq	r0, [r0, -r3, lsl #1]
     148:	00011ffc 	strdeq	r1, [r1], -ip
     14c:	3c6e1000 	stclcc	0, cr1, [lr], #-0
     150:	fd070000 	stc2	0, cr0, [r7, #-0]
     154:	0000006c 	andeq	r0, r0, ip, rrx
     158:	0068b710 	rsbeq	fp, r8, r0, lsl r7
     15c:	6cfd0700 	ldclvs	7, cr0, [sp]
     160:	10000000 	andne	r0, r0, r0
     164:	00006231 	andeq	r6, r0, r1, lsr r2
     168:	006cfd07 	rsbeq	pc, ip, r7, lsl #26
     16c:	1d100000 	ldcne	0, cr0, [r0, #-0]
     170:	07000032 	smladxeq	r0, r2, r0, r0
     174:	00006cff 	strdeq	r6, [r0], -pc	; <UNPREDICTABLE>
     178:	815c0300 	cmphi	ip, r0, lsl #6
     17c:	16080000 	strne	r0, [r8], -r0
     180:	00000057 	andeq	r0, r0, r7, asr r0
     184:	00473e11 	subeq	r3, r7, r1, lsl lr
     188:	2f081800 	svccs	0x00081800
     18c:	000001d7 	ldrdeq	r0, [r0], -r7
     190:	00595e0b 	subseq	r5, r9, fp, lsl #28
     194:	d7310800 	ldrle	r0, [r1, -r0, lsl #16]!
     198:	00000001 	andeq	r0, r0, r1
     19c:	006b5f12 	rsbeq	r5, fp, r2, lsl pc
     1a0:	006c3208 	rsbeq	r3, ip, r8, lsl #4
     1a4:	0b040000 	bleq	1001ac <heap_size+0xe01ac>
     1a8:	000079b4 			; <UNDEFINED> instruction: 0x000079b4
     1ac:	006c3208 	rsbeq	r3, ip, r8, lsl #4
     1b0:	0b080000 	bleq	2001b8 <heap_size+0x1e01b8>
     1b4:	00005048 	andeq	r5, r0, r8, asr #32
     1b8:	006c3208 	rsbeq	r3, ip, r8, lsl #4
     1bc:	0b0c0000 	bleq	3001c4 <heap_size+0x2e01c4>
     1c0:	000037ca 	andeq	r3, r0, sl, asr #15
     1c4:	006c3208 	rsbeq	r3, ip, r8, lsl #4
     1c8:	12100000 	andsne	r0, r0, #0
     1cc:	0800785f 	stmdaeq	r0, {r0, r1, r2, r3, r4, r6, fp, ip, sp, lr}
     1d0:	0001dd33 	andeq	sp, r1, r3, lsr sp
     1d4:	0e001400 	cfcpyseq	mvf1, mvf0
     1d8:	00018404 	andeq	r8, r1, r4, lsl #8
     1dc:	01790800 	cmneq	r9, r0, lsl #16
     1e0:	01ed0000 	mvneq	r0, r0
     1e4:	73090000 	movwvc	r0, #36864	; 0x9000
     1e8:	00000000 	andeq	r0, r0, r0
     1ec:	09e21100 	stmibeq	r2!, {r8, ip}^
     1f0:	08240000 	stmdaeq	r4!, {}	; <UNPREDICTABLE>
     1f4:	00026637 	andeq	r6, r2, r7, lsr r6
     1f8:	09f80b00 	ldmibeq	r8!, {r8, r9, fp}^
     1fc:	39080000 	stmdbcc	r8, {}	; <UNPREDICTABLE>
     200:	0000006c 	andeq	r0, r0, ip, rrx
     204:	8c450b00 	mcrrhi	11, 0, r0, r5, cr0
     208:	3a080000 	bcc	200210 <heap_size+0x1e0210>
     20c:	0000006c 	andeq	r0, r0, ip, rrx
     210:	76740b04 	ldrbtvc	r0, [r4], -r4, lsl #22
     214:	3b080000 	blcc	20021c <heap_size+0x1e021c>
     218:	0000006c 	andeq	r0, r0, ip, rrx
     21c:	56b80b08 	ldrtpl	r0, [r8], r8, lsl #22
     220:	3c080000 	stccc	0, cr0, [r8], {-0}
     224:	0000006c 	andeq	r0, r0, ip, rrx
     228:	1e2c0b0c 	vmulne.f64	d0, d12, d12
     22c:	3d080000 	stccc	0, cr0, [r8, #-0]
     230:	0000006c 	andeq	r0, r0, ip, rrx
     234:	7a3e0b10 	bvc	f82e7c <heap_size+0xf62e7c>
     238:	3e080000 	cdpcc	0, 0, cr0, cr8, cr0, {0}
     23c:	0000006c 	andeq	r0, r0, ip, rrx
     240:	5d910b14 	vldrpl	d0, [r1, #80]	; 0x50
     244:	3f080000 	svccc	0x00080000
     248:	0000006c 	andeq	r0, r0, ip, rrx
     24c:	280b0b18 	stmdacs	fp, {r3, r4, r8, r9, fp}
     250:	40080000 	andmi	r0, r8, r0
     254:	0000006c 	andeq	r0, r0, ip, rrx
     258:	8a810b1c 	bhi	fe042ed0 <__stack+0xf6042ed8>
     25c:	41080000 	mrsmi	r0, (UNDEF: 8)
     260:	0000006c 	andeq	r0, r0, ip, rrx
     264:	96130020 	ldrls	r0, [r3], -r0, lsr #32
     268:	08000013 	stmdaeq	r0, {r0, r1, r4}
     26c:	a64a0801 	strbge	r0, [sl], -r1, lsl #16
     270:	0b000002 	bleq	280 <_write+0x44>
     274:	00000c5e 	andeq	r0, r0, lr, asr ip
     278:	02a64b08 	adceq	r4, r6, #8, 22	; 0x2000
     27c:	0b000000 	bleq	284 <_write+0x48>
     280:	000064d9 	ldrdeq	r6, [r0], -r9
     284:	02a64c08 	adceq	r4, r6, #8, 24	; 0x800
     288:	14800000 	strne	r0, [r0], #0
     28c:	00001cfb 	strdeq	r1, [r0], -fp
     290:	01794e08 	cmneq	r9, r8, lsl #28
     294:	01000000 	mrseq	r0, (UNDEF: 0)
     298:	007fff14 	rsbseq	pc, pc, r4, lsl pc	; <UNPREDICTABLE>
     29c:	79510800 	ldmdbvc	r1, {fp}^
     2a0:	04000001 	streq	r0, [r0], #-1
     2a4:	0d080001 	stceq	0, cr0, [r8, #-4]
     2a8:	b6000001 	strlt	r0, [r0], -r1
     2ac:	09000002 	stmdbeq	r0, {r1}
     2b0:	00000073 	andeq	r0, r0, r3, ror r0
     2b4:	8a11001f 	bhi	440338 <heap_size+0x420338>
     2b8:	8c000046 	stchi	0, cr0, [r0], {70}	; 0x46
     2bc:	02f35508 	rscseq	r5, r3, #8, 10	; 0x2000000
     2c0:	5e0b0000 	cdppl	0, 0, cr0, cr11, cr0, {0}
     2c4:	08000059 	stmdaeq	r0, {r0, r3, r4, r6}
     2c8:	0002f356 	andeq	pc, r2, r6, asr r3	; <UNPREDICTABLE>
     2cc:	160b0000 	strne	r0, [fp], -r0
     2d0:	0800007e 	stmdaeq	r0, {r1, r2, r3, r4, r5, r6}
     2d4:	00006c57 	andeq	r6, r0, r7, asr ip
     2d8:	f00b0400 			; <UNDEFINED> instruction: 0xf00b0400
     2dc:	0800002b 	stmdaeq	r0, {r0, r1, r3, r5}
     2e0:	0002f958 	andeq	pc, r2, r8, asr r9	; <UNPREDICTABLE>
     2e4:	910b0800 	tstls	fp, r0, lsl #16
     2e8:	0800004b 	stmdaeq	r0, {r0, r1, r3, r6}
     2ec:	00031059 	andeq	r1, r3, r9, asr r0
     2f0:	0e008800 	cdpeq	8, 0, cr8, cr0, cr0, {0}
     2f4:	0002b604 	andeq	fp, r2, r4, lsl #12
     2f8:	03090800 	movweq	r0, #38912	; 0x9800
     2fc:	03090000 	movweq	r0, #36864	; 0x9000
     300:	73090000 	movwvc	r0, #36864	; 0x9000
     304:	1f000000 	svcne	0x00000000
     308:	0f040e00 	svceq	0x00040e00
     30c:	15000003 	strne	r0, [r0, #-3]
     310:	0266040e 	rsbeq	r0, r6, #234881024	; 0xe000000
     314:	9e110000 	cdpls	0, 1, cr0, cr1, cr0, {0}
     318:	08000003 	stmdaeq	r0, {r0, r1}
     31c:	033b7508 	teqeq	fp, #8, 10	; 0x2000000
     320:	ba0b0000 	blt	2c0328 <heap_size+0x2a0328>
     324:	08000067 	stmdaeq	r0, {r0, r1, r2, r5, r6}
     328:	00033b76 	andeq	r3, r3, r6, ror fp
     32c:	e90b0000 	stmdb	fp, {}	; <UNPREDICTABLE>
     330:	0800000b 	stmdaeq	r0, {r0, r1, r3}
     334:	00006c77 	andeq	r6, r0, r7, ror ip
     338:	0e000400 	cfcpyseq	mvf0, mvf0
     33c:	00003004 	andeq	r3, r0, r4
     340:	37951100 	ldrcc	r1, [r5, r0, lsl #2]
     344:	08200000 	stmdaeq	r0!, {}	; <UNPREDICTABLE>
     348:	0003ab99 	muleq	r3, r9, fp
     34c:	705f1200 	subsvc	r1, pc, r0, lsl #4
     350:	3b9a0800 	blcc	fe682358 <__stack+0xf6682360>
     354:	00000003 	andeq	r0, r0, r3
     358:	00725f12 	rsbseq	r5, r2, r2, lsl pc
     35c:	006c9b08 	rsbeq	r9, ip, r8, lsl #22
     360:	12040000 	andne	r0, r4, #0
     364:	0800775f 	stmdaeq	r0, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}
     368:	00006c9c 	muleq	r0, ip, ip
     36c:	8c0b0800 	stchi	8, cr0, [fp], {-0}
     370:	08000059 	stmdaeq	r0, {r0, r3, r4, r6}
     374:	0000379d 	muleq	r0, sp, r7
     378:	5b0b0c00 	blpl	2c3380 <heap_size+0x2a3380>
     37c:	08000013 	stmdaeq	r0, {r0, r1, r4}
     380:	0000379e 	muleq	r0, lr, r7
     384:	5f120e00 	svcpl	0x00120e00
     388:	08006662 	stmdaeq	r0, {r1, r5, r6, r9, sl, sp, lr}
     38c:	0003169f 	muleq	r3, pc, r6	; <UNPREDICTABLE>
     390:	c20b1000 	andgt	r1, fp, #0
     394:	0800007d 	stmdaeq	r0, {r0, r2, r3, r4, r5, r6}
     398:	00006ca0 	andeq	r6, r0, r0, lsr #25
     39c:	ee0b1800 	cdp	8, 0, cr1, cr11, cr0, {0}
     3a0:	0800006d 	stmdaeq	r0, {r0, r2, r3, r5, r6}
     3a4:	0004dca2 	andeq	sp, r4, r2, lsr #25
     3a8:	0f001c00 	svceq	0x00001c00
     3ac:	00000341 	andeq	r0, r0, r1, asr #6
     3b0:	001fb916 	andseq	fp, pc, r6, lsl r9	; <UNPREDICTABLE>
     3b4:	74086000 	strvc	r6, [r8], #-0
     3b8:	0004dc01 	andeq	sp, r4, r1, lsl #24
     3bc:	43671700 	cmnmi	r7, #0, 14
     3c0:	78080000 	stmdavc	r8, {}	; <UNPREDICTABLE>
     3c4:	00006c01 	andeq	r6, r0, r1, lsl #24
     3c8:	b1170000 	tstlt	r7, r0
     3cc:	08000022 	stmdaeq	r0, {r1, r5}
     3d0:	0709017d 	smlsdxeq	r9, sp, r1, r0
     3d4:	17040000 	strne	r0, [r4, -r0]
     3d8:	00005307 	andeq	r5, r0, r7, lsl #6
     3dc:	09017d08 	stmdbeq	r1, {r3, r8, sl, fp, ip, sp, lr}
     3e0:	08000007 	stmdaeq	r0, {r0, r1, r2}
     3e4:	00431817 	subeq	r1, r3, r7, lsl r8
     3e8:	017d0800 	cmneq	sp, r0, lsl #16
     3ec:	00000709 	andeq	r0, r0, r9, lsl #14
     3f0:	2a2c170c 	bcs	b06028 <heap_size+0xae6028>
     3f4:	7f080000 	svcvc	0x00080000
     3f8:	00006c01 	andeq	r6, r0, r1, lsl #24
     3fc:	be171000 	cdplt	0, 1, cr1, cr7, cr0, {0}
     400:	0800004a 	stmdaeq	r0, {r1, r3, r6}
     404:	011f0181 	tsteq	pc, r1, lsl #3
     408:	17140000 	ldrne	r0, [r4, -r0]
     40c:	00004024 	andeq	r4, r0, r4, lsr #32
     410:	6c018308 	stcvs	3, cr8, [r1], {8}
     414:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     418:	00270e17 	eoreq	r0, r7, r7, lsl lr
     41c:	01850800 	orreq	r0, r5, r0, lsl #16
     420:	0000006c 	andeq	r0, r0, ip, rrx
     424:	3340171c 	movtcc	r1, #1820	; 0x71c
     428:	86080000 	strhi	r0, [r8], -r0
     42c:	00085b01 	andeq	r5, r8, r1, lsl #22
     430:	5f182000 	svcpl	0x00182000
     434:	0800706d 	stmdaeq	r0, {r0, r2, r3, r5, r6, ip, sp, lr}
     438:	08610188 	stmdaeq	r1!, {r3, r7, r8}^
     43c:	17240000 	strne	r0, [r4, -r0]!
     440:	00004852 	andeq	r4, r0, r2, asr r8
     444:	72018a08 	andvc	r8, r1, #8, 20	; 0x8000
     448:	28000008 	stmdacs	r0, {r3}
     44c:	004dbf17 	subeq	fp, sp, r7, lsl pc
     450:	018c0800 	orreq	r0, ip, r0, lsl #16
     454:	0000006c 	andeq	r0, r0, ip, rrx
     458:	0632172c 	ldrteq	r1, [r2], -ip, lsr #14
     45c:	8f080000 	svchi	0x00080000
     460:	00006c01 	andeq	r6, r0, r1, lsl #24
     464:	37173000 	ldrcc	r3, [r7, -r0]
     468:	0800003a 	stmdaeq	r0, {r1, r3, r4, r5}
     46c:	011f0190 			; <UNDEFINED> instruction: 0x011f0190
     470:	17340000 	ldrne	r0, [r4, -r0]!
     474:	00006c67 	andeq	r6, r0, r7, ror #24
     478:	78019208 	stmdavc	r1, {r3, r9, ip, pc}
     47c:	38000008 	stmdacc	r0, {r3}
     480:	0018ad17 	andseq	sl, r8, r7, lsl sp
     484:	01930800 	orrseq	r0, r3, r0, lsl #16
     488:	0000087e 	andeq	r0, r0, lr, ror r8
     48c:	060e173c 			; <UNDEFINED> instruction: 0x060e173c
     490:	94080000 	strls	r0, [r8], #-0
     494:	00011f01 	andeq	r1, r1, r1, lsl #30
     498:	7f174000 	svcvc	0x00174000
     49c:	08000038 	stmdaeq	r0, {r3, r4, r5}
     4a0:	088f0197 	stmeq	pc, {r0, r1, r2, r4, r7, r8}	; <UNPREDICTABLE>
     4a4:	17440000 	strbne	r0, [r4, -r0]
     4a8:	00004cab 	andeq	r4, r0, fp, lsr #25
     4ac:	ce019f08 	cdpgt	15, 0, cr9, cr1, cr8, {0}
     4b0:	48000006 	stmdami	r0, {r1, r2}
     4b4:	00030f17 	andeq	r0, r3, r7, lsl pc
     4b8:	01a00800 	lsleq	r0, r0, #16
     4bc:	00000709 	andeq	r0, r0, r9, lsl #14
     4c0:	811a1754 	tsthi	sl, r4, asr r7
     4c4:	a1080000 	mrsge	r0, (UNDEF: 8)
     4c8:	00089b01 	andeq	r9, r8, r1, lsl #22
     4cc:	b1175800 	tstlt	r7, r0, lsl #16
     4d0:	08000045 	stmdaeq	r0, {r0, r2, r6}
     4d4:	011f01a2 	tsteq	pc, r2, lsr #3
     4d8:	005c0000 	subseq	r0, ip, r0
     4dc:	03b0040e 	movseq	r0, #234881024	; 0xe000000
     4e0:	dc0f0000 	stcle	0, cr0, [pc], {-0}
     4e4:	11000004 	tstne	r0, r4
     4e8:	000085ec 	andeq	r8, r0, ip, ror #11
     4ec:	11b50868 			; <UNDEFINED> instruction: 0x11b50868
     4f0:	12000006 	andne	r0, r0, #6
     4f4:	0800705f 	stmdaeq	r0, {r0, r1, r2, r3, r4, r6, ip, sp, lr}
     4f8:	00033bb6 			; <UNDEFINED> instruction: 0x00033bb6
     4fc:	5f120000 	svcpl	0x00120000
     500:	b7080072 	smlsdxlt	r8, r2, r0, r0
     504:	0000006c 	andeq	r0, r0, ip, rrx
     508:	775f1204 	ldrbvc	r1, [pc, -r4, lsl #4]
     50c:	6cb80800 	ldcvs	8, cr0, [r8]
     510:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     514:	00598c0b 	subseq	r8, r9, fp, lsl #24
     518:	37b90800 	ldrcc	r0, [r9, r0, lsl #16]!
     51c:	0c000000 	stceq	0, cr0, [r0], {-0}
     520:	00135b0b 	andseq	r5, r3, fp, lsl #22
     524:	37ba0800 	ldrcc	r0, [sl, r0, lsl #16]!
     528:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     52c:	66625f12 	uqadd16vs	r5, r2, r2
     530:	16bb0800 	ldrtne	r0, [fp], r0, lsl #16
     534:	10000003 	andne	r0, r0, r3
     538:	007dc20b 	rsbseq	ip, sp, fp, lsl #4
     53c:	6cbc0800 	ldcvs	8, cr0, [ip]
     540:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     544:	006dee0b 	rsbeq	lr, sp, fp, lsl #28
     548:	dcbf0800 	ldcle	8, cr0, [pc]	; 550 <main+0x90>
     54c:	1c000004 	stcne	0, cr0, [r0], {4}
     550:	0037170b 	eorseq	r1, r7, fp, lsl #14
     554:	0dc30800 	stcleq	8, cr0, [r3]
     558:	20000001 	andcs	r0, r0, r1
     55c:	0003a50b 	andeq	sl, r3, fp, lsl #10
     560:	2fc50800 	svccs	0x00c50800
     564:	24000006 	strcs	r0, [r0], #-6
     568:	0005900b 	andeq	r9, r5, fp
     56c:	5ec70800 	cdppl	8, 12, cr0, cr7, cr0, {0}
     570:	28000006 	stmdacs	r0, {r1, r2}
     574:	00603d0b 	rsbeq	r3, r0, fp, lsl #26
     578:	82ca0800 	sbchi	r0, sl, #0, 16
     57c:	2c000006 	stccs	0, cr0, [r0], {6}
     580:	005e4f0b 	subseq	r4, lr, fp, lsl #30
     584:	9ccb0800 	stclls	8, cr0, [fp], {0}
     588:	30000006 	andcc	r0, r0, r6
     58c:	62755f12 	rsbsvs	r5, r5, #18, 30	; 0x48
     590:	16ce0800 	strbne	r0, [lr], r0, lsl #16
     594:	34000003 	strcc	r0, [r0], #-3
     598:	70755f12 	rsbsvc	r5, r5, r2, lsl pc
     59c:	3bcf0800 	blcc	ff3c25a4 <__stack+0xf73c25ac>
     5a0:	3c000003 	stccc	0, cr0, [r0], {3}
     5a4:	72755f12 	rsbsvc	r5, r5, #18, 30	; 0x48
     5a8:	6cd00800 	ldclvs	8, cr0, [r0], {0}
     5ac:	40000000 	andmi	r0, r0, r0
     5b0:	0057930b 	subseq	r9, r7, fp, lsl #6
     5b4:	a2d30800 	sbcsge	r0, r3, #0, 16
     5b8:	44000006 	strmi	r0, [r0], #-6
     5bc:	0023140b 	eoreq	r1, r3, fp, lsl #8
     5c0:	b2d40800 	sbcslt	r0, r4, #0, 16
     5c4:	47000006 	strmi	r0, [r0, -r6]
     5c8:	626c5f12 	rsbvs	r5, ip, #18, 30	; 0x48
     5cc:	16d70800 	ldrbne	r0, [r7], r0, lsl #16
     5d0:	48000003 	stmdami	r0, {r0, r1}
     5d4:	0067480b 	rsbeq	r4, r7, fp, lsl #16
     5d8:	6cda0800 	ldclvs	8, cr0, [sl], {0}
     5dc:	50000000 	andpl	r0, r0, r0
     5e0:	0039f10b 	eorseq	pc, r9, fp, lsl #2
     5e4:	85db0800 	ldrbhi	r0, [fp, #2048]	; 0x800
     5e8:	54000000 	strpl	r0, [r0], #-0
     5ec:	000c660b 	andeq	r6, ip, fp, lsl #12
     5f0:	02e20800 	rsceq	r0, r2, #0, 16
     5f4:	58000001 	stmdapl	r0, {r0}
     5f8:	0058e50b 	subseq	lr, r8, fp, lsl #10
     5fc:	f7e40800 			; <UNDEFINED> instruction: 0xf7e40800
     600:	5c000000 	stcpl	0, cr0, [r0], {-0}
     604:	0053450b 	subseq	r4, r3, fp, lsl #10
     608:	6ce50800 	stclvs	8, cr0, [r5]
     60c:	64000000 	strvs	r0, [r0], #-0
     610:	006c1900 	rsbeq	r1, ip, r0, lsl #18
     614:	062f0000 	strteq	r0, [pc], -r0
     618:	dc1a0000 	ldcle	0, cr0, [sl], {-0}
     61c:	1a000004 	bne	634 <std+0x24>
     620:	0000010d 	andeq	r0, r0, sp, lsl #2
     624:	00011f1a 	andeq	r1, r1, sl, lsl pc
     628:	006c1a00 	rsbeq	r1, ip, r0, lsl #20
     62c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     630:	00061104 	andeq	r1, r6, r4, lsl #2
     634:	006c1900 	rsbeq	r1, ip, r0, lsl #18
     638:	06530000 	ldrbeq	r0, [r3], -r0
     63c:	dc1a0000 	ldcle	0, cr0, [sl], {-0}
     640:	1a000004 	bne	658 <_cleanup_r>
     644:	0000010d 	andeq	r0, r0, sp, lsl #2
     648:	0006531a 	andeq	r5, r6, sl, lsl r3
     64c:	006c1a00 	rsbeq	r1, ip, r0, lsl #20
     650:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     654:	00012c04 	andeq	r2, r1, r4, lsl #24
     658:	06530f00 	ldrbeq	r0, [r3], -r0, lsl #30
     65c:	040e0000 	streq	r0, [lr], #-0
     660:	00000635 	andeq	r0, r0, r5, lsr r6
     664:	00009019 	andeq	r9, r0, r9, lsl r0
     668:	00068200 	andeq	r8, r6, r0, lsl #4
     66c:	04dc1a00 	ldrbeq	r1, [ip], #2560	; 0xa00
     670:	0d1a0000 	ldceq	0, cr0, [sl, #-0]
     674:	1a000001 	bne	680 <__sfmoreglue+0x18>
     678:	00000090 	muleq	r0, r0, r0
     67c:	00006c1a 	andeq	r6, r0, sl, lsl ip
     680:	040e0000 	streq	r0, [lr], #-0
     684:	00000664 	andeq	r0, r0, r4, ror #12
     688:	00006c19 	andeq	r6, r0, r9, lsl ip
     68c:	00069c00 	andeq	r9, r6, r0, lsl #24
     690:	04dc1a00 	ldrbeq	r1, [ip], #2560	; 0xa00
     694:	0d1a0000 	ldceq	0, cr0, [sl, #-0]
     698:	00000001 	andeq	r0, r0, r1
     69c:	0688040e 	streq	r0, [r8], lr, lsl #8
     6a0:	30080000 	andcc	r0, r8, r0
     6a4:	b2000000 	andlt	r0, r0, #0
     6a8:	09000006 	stmdbeq	r0, {r1, r2}
     6ac:	00000073 	andeq	r0, r0, r3, ror r0
     6b0:	30080002 	andcc	r0, r8, r2
     6b4:	c2000000 	andgt	r0, r0, #0
     6b8:	09000006 	stmdbeq	r0, {r1, r2}
     6bc:	00000073 	andeq	r0, r0, r3, ror r0
     6c0:	1b050000 	blne	1406c8 <heap_size+0x1206c8>
     6c4:	0800006b 	stmdaeq	r0, {r0, r1, r3, r5, r6}
     6c8:	04e7011f 	strbteq	r0, [r7], #287	; 0x11f
     6cc:	37160000 	ldrcc	r0, [r6, -r0]
     6d0:	0c000050 	stceq	0, cr0, [r0], {80}	; 0x50
     6d4:	03012308 	movweq	r2, #4872	; 0x1308
     6d8:	17000007 	strne	r0, [r0, -r7]
     6dc:	0000595e 	andeq	r5, r0, lr, asr r9
     6e0:	03012508 	movweq	r2, #5384	; 0x1508
     6e4:	00000007 	andeq	r0, r0, r7
     6e8:	002f8517 	eoreq	r8, pc, r7, lsl r5	; <UNPREDICTABLE>
     6ec:	01260800 			; <UNDEFINED> instruction: 0x01260800
     6f0:	0000006c 	andeq	r0, r0, ip, rrx
     6f4:	3b031704 	blcc	c630c <heap_size+0xa630c>
     6f8:	27080000 	strcs	r0, [r8, -r0]
     6fc:	00070901 	andeq	r0, r7, r1, lsl #18
     700:	0e000800 	cdpeq	8, 0, cr0, cr0, cr0, {0}
     704:	0006ce04 	andeq	ip, r6, r4, lsl #28
     708:	c2040e00 	andgt	r0, r4, #0, 28
     70c:	16000006 	strne	r0, [r0], -r6
     710:	0000653f 	andeq	r6, r0, pc, lsr r5
     714:	013f0818 	teqeq	pc, r8, lsl r8	; <UNPREDICTABLE>
     718:	00000751 	andeq	r0, r0, r1, asr r7
     71c:	005fe717 	subseq	lr, pc, r7, lsl r7	; <UNPREDICTABLE>
     720:	01400800 	cmpeq	r0, r0, lsl #16
     724:	00000751 	andeq	r0, r0, r1, asr r7
     728:	0e751700 	cdpeq	7, 7, cr1, cr5, cr0, {0}
     72c:	41080000 	mrsmi	r0, (UNDEF: 8)
     730:	00075101 	andeq	r5, r7, r1, lsl #2
     734:	28170600 	ldmdacs	r7, {r9, sl}
     738:	08000085 	stmdaeq	r0, {r0, r2, r7}
     73c:	003e0142 	eorseq	r0, lr, r2, asr #2
     740:	170c0000 	strne	r0, [ip, -r0]
     744:	00005959 	andeq	r5, r0, r9, asr r9
     748:	65014508 	strvs	r4, [r1, #-1288]	; 0xfffffaf8
     74c:	10000000 	andne	r0, r0, r0
     750:	003e0800 	eorseq	r0, lr, r0, lsl #16
     754:	07610000 	strbeq	r0, [r1, -r0]!
     758:	73090000 	movwvc	r0, #36864	; 0x9000
     75c:	02000000 	andeq	r0, r0, #0
     760:	80b91600 	adcshi	r1, r9, r0, lsl #12
     764:	08100000 	ldmdaeq	r0, {}	; <UNPREDICTABLE>
     768:	07a30158 	sbfxeq	r0, r8, #2, #4
     76c:	9d170000 	ldcls	0, cr0, [r7, #-0]
     770:	08000082 	stmdaeq	r0, {r1, r7}
     774:	01d7015b 	bicseq	r0, r7, fp, asr r1
     778:	17000000 	strne	r0, [r0, -r0]
     77c:	00001763 	andeq	r1, r0, r3, ror #14
     780:	6c015c08 	stcvs	12, cr5, [r1], {8}
     784:	04000000 	streq	r0, [r0], #-0
     788:	00374017 	eorseq	r4, r7, r7, lsl r0
     78c:	015d0800 	cmpeq	sp, r0, lsl #16
     790:	000001d7 	ldrdeq	r0, [r0], -r7
     794:	4f6f1708 	svcmi	0x006f1708
     798:	5e080000 	cdppl	0, 0, cr0, cr8, cr0, {0}
     79c:	0007a301 	andeq	sl, r7, r1, lsl #6
     7a0:	0e000c00 	cdpeq	12, 0, cr0, cr0, cr0, {0}
     7a4:	0001d704 	andeq	sp, r1, r4, lsl #14
     7a8:	1fb41600 	svcne	0x00b41600
     7ac:	08500000 	ldmdaeq	r0, {}^	; <UNPREDICTABLE>
     7b0:	08460162 	stmdaeq	r6, {r1, r5, r6, r8}^
     7b4:	be170000 	cdplt	0, 1, cr0, cr7, cr0, {0}
     7b8:	08000068 	stmdaeq	r0, {r3, r5, r6}
     7bc:	011f0165 	tsteq	pc, r5, ror #2
     7c0:	17000000 	strne	r0, [r0, -r0]
     7c4:	0000751f 	andeq	r7, r0, pc, lsl r5
     7c8:	f7016608 			; <UNDEFINED> instruction: 0xf7016608
     7cc:	04000000 	streq	r0, [r0], #-0
     7d0:	00648117 	rsbeq	r8, r4, r7, lsl r1
     7d4:	01670800 	cmneq	r7, r0, lsl #16
     7d8:	000000f7 	strdeq	r0, [r0], -r7
     7dc:	6212170c 	andsvs	r1, r2, #12, 14	; 0x300000
     7e0:	68080000 	stmdavs	r8, {}	; <UNPREDICTABLE>
     7e4:	0000f701 	andeq	pc, r0, r1, lsl #14
     7e8:	87171400 	ldrhi	r1, [r7, -r0, lsl #8]
     7ec:	0800000a 	stmdaeq	r0, {r1, r3}
     7f0:	08460169 	stmdaeq	r6, {r0, r3, r5, r6, r8}^
     7f4:	171c0000 	ldrne	r0, [ip, -r0]
     7f8:	00008c87 	andeq	r8, r0, r7, lsl #25
     7fc:	6c016a08 			; <UNDEFINED> instruction: 0x6c016a08
     800:	24000000 	strcs	r0, [r0], #-0
     804:	0016d417 	andseq	sp, r6, r7, lsl r4
     808:	016b0800 	cmneq	fp, r0, lsl #16
     80c:	000000f7 	strdeq	r0, [r0], -r7
     810:	692f1728 	stmdbvs	pc!, {r3, r5, r8, r9, sl, ip}	; <UNPREDICTABLE>
     814:	6c080000 	stcvs	0, cr0, [r8], {-0}
     818:	0000f701 	andeq	pc, r0, r1, lsl #14
     81c:	6a173000 	bvs	5cc824 <heap_size+0x5ac824>
     820:	08000087 	stmdaeq	r0, {r0, r1, r2, r7}
     824:	00f7016d 	rscseq	r0, r7, sp, ror #2
     828:	17380000 	ldrne	r0, [r8, -r0]!
     82c:	0000562c 	andeq	r5, r0, ip, lsr #12
     830:	f7016e08 			; <UNDEFINED> instruction: 0xf7016e08
     834:	40000000 	andmi	r0, r0, r0
     838:	0009e717 	andeq	lr, r9, r7, lsl r7
     83c:	016f0800 	cmneq	pc, r0, lsl #16
     840:	000000f7 	strdeq	r0, [r0], -r7
     844:	25080048 	strcs	r0, [r8, #-72]	; 0xffffffb8
     848:	56000001 	strpl	r0, [r0], -r1
     84c:	09000008 	stmdbeq	r0, {r3}
     850:	00000073 	andeq	r0, r0, r3, ror r0
     854:	1a1b0007 	bne	6c0878 <heap_size+0x6a0878>
     858:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
     85c:	00085604 	andeq	r5, r8, r4, lsl #12
     860:	61040e00 	tstvs	r4, r0, lsl #28
     864:	1c000007 	stcne	0, cr0, [r0], {7}
     868:	00000872 	andeq	r0, r0, r2, ror r8
     86c:	0004dc1a 	andeq	sp, r4, sl, lsl ip
     870:	040e0000 	streq	r0, [lr], #-0
     874:	00000867 	andeq	r0, r0, r7, ror #16
     878:	070f040e 	streq	r0, [pc, -lr, lsl #8]
     87c:	040e0000 	streq	r0, [lr], #-0
     880:	000001ed 	andeq	r0, r0, sp, ror #3
     884:	00088f1c 	andeq	r8, r8, ip, lsl pc
     888:	006c1a00 	rsbeq	r1, ip, r0, lsl #20
     88c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     890:	00089504 	andeq	r9, r8, r4, lsl #10
     894:	84040e00 	strhi	r0, [r4], #-3584	; 0xfffff200
     898:	0e000008 	cdpeq	0, 0, cr0, cr0, cr8, {0}
     89c:	0007a904 	andeq	sl, r7, r4, lsl #18
     8a0:	22a81d00 	adccs	r1, r8, #0, 26
     8a4:	ca080000 	bgt	2008ac <heap_size+0x1e08ac>
     8a8:	0003ab01 	andeq	sl, r3, r1, lsl #22
     8ac:	52fe1d00 	rscspl	r1, lr, #0, 26
     8b0:	cb080000 	blgt	2008b8 <heap_size+0x1e08b8>
     8b4:	0003ab01 	andeq	sl, r3, r1, lsl #22
     8b8:	430f1d00 	movwmi	r1, #64768	; 0xfd00
     8bc:	cc080000 	stcgt	0, cr0, [r8], {-0}
     8c0:	0003ab01 	andeq	sl, r3, r1, lsl #22
     8c4:	2ec81d00 	cdpcs	13, 12, cr1, cr8, cr0, {0}
     8c8:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
     8cc:	0004dc03 	andeq	sp, r4, r3, lsl #24
     8d0:	87b61d00 	ldrhi	r1, [r6, r0, lsl #26]!
     8d4:	2f080000 	svccs	0x00080000
     8d8:	0004e203 	andeq	lr, r4, r3, lsl #4
     8dc:	46831d00 	strmi	r1, [r3], r0, lsl #26
     8e0:	41080000 	mrsmi	r0, (UNDEF: 8)
     8e4:	0002f303 	andeq	pc, r2, r3, lsl #6
     8e8:	06590800 	ldrbeq	r0, [r9], -r0, lsl #16
     8ec:	08f40000 	ldmeq	r4!, {}^	; <UNPREDICTABLE>
     8f0:	001e0000 	andseq	r0, lr, r0
     8f4:	0008e90f 	andeq	lr, r8, pc, lsl #18
     8f8:	79db1000 	ldmibvc	fp, {ip}^
     8fc:	14090000 	strne	r0, [r9], #-0
     900:	000008f4 	strdeq	r0, [r0], -r4
     904:	0014b110 	andseq	fp, r4, r0, lsl r1
     908:	6c150900 			; <UNDEFINED> instruction: 0x6c150900
     90c:	0a000000 	beq	914 <_free_r+0x80>
     910:	ed0b0a48 	vstr	s0, [fp, #-288]	; 0xfffffee0
     914:	12000009 	andne	r0, r0, #9
     918:	0a005243 	beq	1522c <__bss_end__+0x11f44>
     91c:	00011a0d 	andeq	r1, r1, sp, lsl #20
     920:	4d120000 	ldcmi	0, cr0, [r2, #-0]
     924:	0e0a0052 	mcreq	0, 0, r0, cr10, cr2, {2}
     928:	0000011a 	andeq	r0, r0, sl, lsl r1
     92c:	45491204 	strbmi	r1, [r9, #-516]	; 0xfffffdfc
     930:	0f0a0052 	svceq	0x000a0052
     934:	0000011a 	andeq	r0, r0, sl, lsl r1
     938:	44491208 	strbmi	r1, [r9], #-520	; 0xfffffdf8
     93c:	100a0052 	andne	r0, sl, r2, asr r0
     940:	0000011a 	andeq	r0, r0, sl, lsl r1
     944:	4d49120c 	sfmmi	f1, 2, [r9, #-48]	; 0xffffffd0
     948:	110a0052 	qaddne	r0, r2, sl
     94c:	0000011a 	andeq	r0, r0, sl, lsl r1
     950:	53491210 	movtpl	r1, #37392	; 0x9210
     954:	120a0052 	andne	r0, sl, #82	; 0x52
     958:	0000011a 	andeq	r0, r0, sl, lsl r1
     95c:	5d460b14 	vstrpl	d16, [r6, #-80]	; 0xffffffb0
     960:	130a0000 	movwne	r0, #40960	; 0xa000
     964:	0000011a 	andeq	r0, r0, sl, lsl r1
     968:	04e20b18 	strbteq	r0, [r2], #2840	; 0xb18
     96c:	140a0000 	strne	r0, [sl], #-0
     970:	0000011a 	andeq	r0, r0, sl, lsl r1
     974:	10c40b1c 	sbcne	r0, r4, ip, lsl fp
     978:	150a0000 	strne	r0, [sl, #-0]
     97c:	0000011a 	andeq	r0, r0, sl, lsl r1
     980:	65370b20 	ldrvs	r0, [r7, #-2848]!	; 0xfffff4e0
     984:	160a0000 	strne	r0, [sl], -r0
     988:	0000011a 	andeq	r0, r0, sl, lsl r1
     98c:	263a0b24 	ldrtcs	r0, [sl], -r4, lsr #22
     990:	170a0000 	strne	r0, [sl, -r0]
     994:	0000011a 	andeq	r0, r0, sl, lsl r1
     998:	52531228 	subspl	r1, r3, #40, 4	; 0x80000002
     99c:	1a180a00 	bne	6031a4 <heap_size+0x5e31a4>
     9a0:	2c000001 	stccs	0, cr0, [r0], {1}
     9a4:	0047460b 	subeq	r4, r7, fp, lsl #12
     9a8:	1a190a00 	bne	6431b0 <heap_size+0x6231b0>
     9ac:	30000001 	andcc	r0, r0, r1
     9b0:	0018e00b 	andseq	lr, r8, fp
     9b4:	1a1a0a00 	bne	6831bc <heap_size+0x6631bc>
     9b8:	34000001 	strcc	r0, [r0], #-1
     9bc:	00702c0b 	rsbseq	r2, r0, fp, lsl #24
     9c0:	1a1b0a00 	bne	6c31c8 <heap_size+0x6a31c8>
     9c4:	38000001 	stmdacc	r0, {r0}
     9c8:	00252d0b 	eoreq	r2, r5, fp, lsl #26
     9cc:	1a1c0a00 	bne	7031d4 <heap_size+0x6e31d4>
     9d0:	3c000001 	stccc	0, cr0, [r0], {1}
     9d4:	002a310b 	eoreq	r3, sl, fp, lsl #2
     9d8:	1a1d0a00 	bne	7431e0 <heap_size+0x7231e0>
     9dc:	40000001 	andmi	r0, r0, r1
     9e0:	0013610b 	andseq	r6, r3, fp, lsl #2
     9e4:	1a1e0a00 	bne	7831ec <heap_size+0x7631ec>
     9e8:	44000001 	strmi	r0, [r0], #-1
     9ec:	79e80300 	stmibvc	r8!, {r8, r9}^
     9f0:	1f0a0000 	svcne	0x000a0000
     9f4:	0000090f 	andeq	r0, r0, pc, lsl #18
     9f8:	0003a51f 	andeq	sl, r3, pc, lsl r5
     9fc:	6c430100 	stfvse	f0, [r3], {-0}
     a00:	24000000 	strcs	r0, [r0], #-0
     a04:	40000003 	andmi	r0, r0, r3
     a08:	01000001 	tsteq	r0, r1
     a0c:	000a689c 	muleq	sl, ip, r8
     a10:	135c2000 	cmpne	ip, #0
     a14:	43010000 	movwmi	r0, #4096	; 0x1000
     a18:	0000006c 	andeq	r0, r0, ip, rrx
     a1c:	21649102 	cmncs	r4, r2, lsl #2
     a20:	00727470 	rsbseq	r7, r2, r0, ror r4
     a24:	011f4301 	tsteq	pc, r1, lsl #6
     a28:	91020000 	mrsls	r0, (UNDEF: 2)
     a2c:	656c2160 	strbvs	r2, [ip, #-352]!	; 0xfffffea0
     a30:	4301006e 	movwmi	r0, #4206	; 0x106e
     a34:	0000006c 	andeq	r0, r0, ip, rrx
     a38:	225c9102 	subscs	r9, ip, #-2147483648	; 0x80000000
     a3c:	4501006e 	strmi	r0, [r1, #-110]	; 0xffffff92
     a40:	0000006c 	andeq	r0, r0, ip, rrx
     a44:	22749102 	rsbscs	r9, r4, #-2147483648	; 0x80000000
     a48:	006d756e 	rsbeq	r7, sp, lr, ror #10
     a4c:	006c4601 	rsbeq	r4, ip, r1, lsl #12
     a50:	91020000 	mrsls	r0, (UNDEF: 2)
     a54:	00002370 	andeq	r2, r0, r0, ror r3
     a58:	63220000 			; <UNDEFINED> instruction: 0x63220000
     a5c:	254c0100 	strbcs	r0, [ip, #-256]	; 0xffffff00
     a60:	02000001 	andeq	r0, r0, #1
     a64:	00006f91 	muleq	r0, r1, pc	; <UNPREDICTABLE>
     a68:	0005901f 	andeq	r9, r5, pc, lsl r0
     a6c:	6c2b0100 	stfvss	f0, [fp], #-0
     a70:	3c000000 	stccc	0, cr0, [r0], {-0}
     a74:	e8000002 	stmda	r0, {r1}
     a78:	01000000 	mrseq	r0, (UNDEF: 0)
     a7c:	000ab89c 	muleq	sl, ip, r8
     a80:	135c2000 	cmpne	ip, #0
     a84:	2b010000 	blcs	40a8c <heap_size+0x20a8c>
     a88:	0000006c 	andeq	r0, r0, ip, rrx
     a8c:	216c9102 	cmncs	ip, r2, lsl #2
     a90:	00727470 	rsbseq	r7, r2, r0, ror r4
     a94:	011f2b01 	tsteq	pc, r1, lsl #22
     a98:	91020000 	mrsls	r0, (UNDEF: 2)
     a9c:	656c2168 	strbvs	r2, [ip, #-360]!	; 0xfffffe98
     aa0:	2b01006e 	blcs	40c60 <heap_size+0x20c60>
     aa4:	0000006c 	andeq	r0, r0, ip, rrx
     aa8:	22649102 	rsbcs	r9, r4, #-2147483648	; 0x80000000
     aac:	2d01006e 	stccs	0, cr0, [r1, #-440]	; 0xfffffe48
     ab0:	0000006c 	andeq	r0, r0, ip, rrx
     ab4:	00749102 	rsbseq	r9, r4, r2, lsl #2
     ab8:	00558924 	subseq	r8, r5, r4, lsr #18
     abc:	25180100 	ldrcs	r0, [r8, #-256]	; 0xffffff00
     ac0:	cc000001 	stcgt	0, cr0, [r0], {1}
     ac4:	70000001 	andvc	r0, r0, r1
     ac8:	01000000 	mrseq	r0, (UNDEF: 0)
     acc:	000b129c 	muleq	fp, ip, r2
     ad0:	8c142000 	ldchi	0, cr2, [r4], {-0}
     ad4:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
     ad8:	00000b12 	andeq	r0, r0, r2, lsl fp
     adc:	25749102 	ldrbcs	r9, [r4, #-258]!	; 0xfffffefe
     ae0:	000001e8 	andeq	r0, r0, r8, ror #3
     ae4:	00000020 	andeq	r0, r0, r0, lsr #32
     ae8:	00000afa 	strdeq	r0, [r0], -sl
     aec:	00686322 	rsbeq	r6, r8, r2, lsr #6
     af0:	01251d01 			; <UNDEFINED> instruction: 0x01251d01
     af4:	91020000 	mrsls	r0, (UNDEF: 2)
     af8:	0826007e 	stmdaeq	r6!, {r1, r2, r3, r4, r5, r6}
     afc:	28000002 	stmdacs	r0, {r1}
     b00:	22000000 	andcs	r0, r0, #0
     b04:	01006863 	tsteq	r0, r3, ror #16
     b08:	00012525 	andeq	r2, r1, r5, lsr #10
     b0c:	7f910200 	svcvc	0x00910200
     b10:	040e0000 	streq	r0, [lr], #-0
     b14:	000009ed 	andeq	r0, r0, sp, ror #19
     b18:	001f8f24 	andseq	r8, pc, r4, lsr #30
     b1c:	250e0100 	strcs	r0, [lr, #-256]	; 0xffffff00
     b20:	88000001 	stmdahi	r0, {r0}
     b24:	44000001 	strmi	r0, [r0], #-1
     b28:	01000000 	mrseq	r0, (UNDEF: 0)
     b2c:	000b4d9c 	muleq	fp, ip, sp
     b30:	8c142000 	ldchi	0, cr2, [r4], {-0}
     b34:	0e010000 	cdpeq	0, 0, cr0, cr1, cr0, {0}
     b38:	00000b12 	andeq	r0, r0, r2, lsl fp
     b3c:	217c9102 	cmncs	ip, r2, lsl #2
     b40:	01006863 	tsteq	r0, r3, ror #16
     b44:	0001250e 	andeq	r2, r1, lr, lsl #10
     b48:	7b910200 	blvc	fe441350 <__stack+0xf6441358>
     b4c:	6c4d2700 	mcrrvs	7, 0, r2, sp, cr0
     b50:	06010000 	streq	r0, [r1], -r0
     b54:	00000144 	andeq	r0, r0, r4, asr #2
     b58:	00000044 	andeq	r0, r0, r4, asr #32
     b5c:	c8209c01 	stmdagt	r0!, {r0, sl, fp, ip, pc}
     b60:	01000077 	tsteq	r0, r7, ror r0
     b64:	000b1206 	andeq	r1, fp, r6, lsl #4
     b68:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     b6c:	706d7422 	rsbvc	r7, sp, r2, lsr #8
     b70:	0f080100 	svceq	0x00080100
     b74:	02000001 	andeq	r0, r0, #1
     b78:	00007c91 	muleq	r0, r1, ip
     b7c:	00000a6d 	andeq	r0, r0, sp, ror #20
     b80:	02000004 	andeq	r0, r0, #4
     b84:	01040000 	mrseq	r0, (UNDEF: 4)
     b88:	0000405f 	andeq	r4, r0, pc, asr r0
     b8c:	0092be0c 	addseq	fp, r2, ip, lsl #28
     b90:	001d3d00 	andseq	r3, sp, r0, lsl #26
     b94:	00046400 	andeq	r6, r4, r0, lsl #8
     b98:	00011c00 	andeq	r1, r1, r0, lsl #24
     b9c:	00038300 	andeq	r8, r3, r0, lsl #6
     ba0:	0022a000 	eoreq	sl, r2, r0
     ba4:	06010200 	streq	r0, [r1], -r0, lsl #4
     ba8:	000007cd 	andeq	r0, r0, sp, asr #15
     bac:	f2080102 	vrhadd.s8	d0, d8, d2
     bb0:	02000057 	andeq	r0, r0, #87	; 0x57
     bb4:	0a3c0502 	beq	f01fc4 <heap_size+0xee1fc4>
     bb8:	02020000 	andeq	r0, r2, #0
     bbc:	0065ca07 	rsbeq	ip, r5, r7, lsl #20
     bc0:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
     bc4:	000068e8 	andeq	r6, r0, r8, ror #17
     bc8:	003fa203 	eorseq	sl, pc, r3, lsl #4
     bcc:	574f0200 	strbpl	r0, [pc, -r0, lsl #4]
     bd0:	02000000 	andeq	r0, r0, #0
     bd4:	1d890704 	stcne	7, cr0, [r9, #16]
     bd8:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     bdc:	004e4d05 	subeq	r4, lr, r5, lsl #26
     be0:	07080200 	streq	r0, [r8, -r0, lsl #4]
     be4:	00008d9e 	muleq	r0, lr, sp
     be8:	69050404 	stmdbvs	r5, {r2, sl}
     bec:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
     bf0:	5e9a0704 	cdppl	7, 9, cr0, cr10, cr4, {0}
     bf4:	04050000 	streq	r0, [r5], #-0
     bf8:	0042a603 	subeq	sl, r2, r3, lsl #12
     bfc:	6c0c0300 	stcvs	3, cr0, [ip], {-0}
     c00:	03000000 	movweq	r0, #0
     c04:	0000843a 	andeq	r8, r0, sl, lsr r4
     c08:	00452c04 	subeq	r2, r5, r4, lsl #24
     c0c:	ef030000 	svc	0x00030000
     c10:	04000060 	streq	r0, [r0], #-96	; 0xffffffa0
     c14:	00004572 	andeq	r4, r0, r2, ror r5
     c18:	272e0600 	strcs	r0, [lr, -r0, lsl #12]!
     c1c:	65050000 	strvs	r0, [r5, #-0]
     c20:	00007301 	andeq	r7, r0, r1, lsl #6
     c24:	04040700 	streq	r0, [r4], #-1792	; 0xfffff900
     c28:	0000c8a6 	andeq	ip, r0, r6, lsr #17
     c2c:	12ab0800 	adcne	r0, fp, #0, 16
     c30:	a8040000 	stmdage	r4, {}	; <UNPREDICTABLE>
     c34:	0000009d 	muleq	r0, sp, r0
     c38:	00610d08 	rsbeq	r0, r1, r8, lsl #26
     c3c:	c8a90400 	stmiagt	r9!, {sl}
     c40:	00000000 	andeq	r0, r0, r0
     c44:	00003009 	andeq	r3, r0, r9
     c48:	0000d800 	andeq	sp, r0, r0, lsl #16
     c4c:	00730a00 	rsbseq	r0, r3, r0, lsl #20
     c50:	00030000 	andeq	r0, r3, r0
     c54:	a304080b 	movwge	r0, #18443	; 0x480b
     c58:	000000f9 	strdeq	r0, [r0], -r9
     c5c:	005bf70c 	subseq	pc, fp, ip, lsl #14
     c60:	6ca50400 	cfstrsvs	mvf0, [r5]
     c64:	00000000 	andeq	r0, r0, r0
     c68:	00023e0c 	andeq	r3, r2, ip, lsl #28
     c6c:	a9aa0400 	stmibge	sl!, {sl}
     c70:	04000000 	streq	r0, [r0], #-0
     c74:	503d0300 	eorspl	r0, sp, r0, lsl #6
     c78:	ab040000 	blge	100c80 <heap_size+0xe0c80>
     c7c:	000000d8 	ldrdeq	r0, [r0], -r8
     c80:	006a4e03 	rsbeq	r4, sl, r3, lsl #28
     c84:	7caf0400 	cfstrsvc	mvf0, [pc]	; c8c <__swbuf_r+0x84>
     c88:	03000000 	movweq	r0, #0
     c8c:	0000815c 	andeq	r8, r0, ip, asr r1
     c90:	00571606 	subseq	r1, r7, r6, lsl #12
     c94:	3e0d0000 	cdpcc	0, 0, cr0, cr13, cr0, {0}
     c98:	18000047 	stmdane	r0, {r0, r1, r2, r6}
     c9c:	016d2f06 	cmneq	sp, r6, lsl #30
     ca0:	5e0c0000 	cdppl	0, 0, cr0, cr12, cr0, {0}
     ca4:	06000059 			; <UNDEFINED> instruction: 0x06000059
     ca8:	00016d31 	andeq	r6, r1, r1, lsr sp
     cac:	5f0e0000 	svcpl	0x000e0000
     cb0:	3206006b 	andcc	r0, r6, #107	; 0x6b
     cb4:	0000006c 	andeq	r0, r0, ip, rrx
     cb8:	79b40c04 	ldmibvc	r4!, {r2, sl, fp}
     cbc:	32060000 	andcc	r0, r6, #0
     cc0:	0000006c 	andeq	r0, r0, ip, rrx
     cc4:	50480c08 	subpl	r0, r8, r8, lsl #24
     cc8:	32060000 	andcc	r0, r6, #0
     ccc:	0000006c 	andeq	r0, r0, ip, rrx
     cd0:	37ca0c0c 	strbcc	r0, [sl, ip, lsl #24]
     cd4:	32060000 	andcc	r0, r6, #0
     cd8:	0000006c 	andeq	r0, r0, ip, rrx
     cdc:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
     ce0:	73330600 	teqvc	r3, #0, 12
     ce4:	14000001 	strne	r0, [r0], #-1
     ce8:	1a040f00 	bne	1048f0 <heap_size+0xe48f0>
     cec:	09000001 	stmdbeq	r0, {r0}
     cf0:	0000010f 	andeq	r0, r0, pc, lsl #2
     cf4:	00000183 	andeq	r0, r0, r3, lsl #3
     cf8:	0000730a 	andeq	r7, r0, sl, lsl #6
     cfc:	0d000000 	stceq	0, cr0, [r0, #-0]
     d00:	000009e2 	andeq	r0, r0, r2, ror #19
     d04:	fc370624 	ldc2	6, cr0, [r7], #-144	; 0xffffff70
     d08:	0c000001 	stceq	0, cr0, [r0], {1}
     d0c:	000009f8 	strdeq	r0, [r0], -r8
     d10:	006c3906 	rsbeq	r3, ip, r6, lsl #18
     d14:	0c000000 	stceq	0, cr0, [r0], {-0}
     d18:	00008c45 	andeq	r8, r0, r5, asr #24
     d1c:	006c3a06 	rsbeq	r3, ip, r6, lsl #20
     d20:	0c040000 	stceq	0, cr0, [r4], {-0}
     d24:	00007674 	andeq	r7, r0, r4, ror r6
     d28:	006c3b06 	rsbeq	r3, ip, r6, lsl #22
     d2c:	0c080000 	stceq	0, cr0, [r8], {-0}
     d30:	000056b8 			; <UNDEFINED> instruction: 0x000056b8
     d34:	006c3c06 	rsbeq	r3, ip, r6, lsl #24
     d38:	0c0c0000 	stceq	0, cr0, [ip], {-0}
     d3c:	00001e2c 	andeq	r1, r0, ip, lsr #28
     d40:	006c3d06 	rsbeq	r3, ip, r6, lsl #26
     d44:	0c100000 	ldceq	0, cr0, [r0], {-0}
     d48:	00007a3e 	andeq	r7, r0, lr, lsr sl
     d4c:	006c3e06 	rsbeq	r3, ip, r6, lsl #28
     d50:	0c140000 	ldceq	0, cr0, [r4], {-0}
     d54:	00005d91 	muleq	r0, r1, sp
     d58:	006c3f06 	rsbeq	r3, ip, r6, lsl #30
     d5c:	0c180000 	ldceq	0, cr0, [r8], {-0}
     d60:	0000280b 	andeq	r2, r0, fp, lsl #16
     d64:	006c4006 	rsbeq	r4, ip, r6
     d68:	0c1c0000 	ldceq	0, cr0, [ip], {-0}
     d6c:	00008a81 	andeq	r8, r0, r1, lsl #21
     d70:	006c4106 	rsbeq	r4, ip, r6, lsl #2
     d74:	00200000 	eoreq	r0, r0, r0
     d78:	00139610 	andseq	r9, r3, r0, lsl r6
     d7c:	06010800 	streq	r0, [r1], -r0, lsl #16
     d80:	00023c4a 	andeq	r3, r2, sl, asr #24
     d84:	0c5e0c00 	mrrceq	12, 0, r0, lr, cr0
     d88:	4b060000 	blmi	180d90 <heap_size+0x160d90>
     d8c:	0000023c 	andeq	r0, r0, ip, lsr r2
     d90:	64d90c00 	ldrbvs	r0, [r9], #3072	; 0xc00
     d94:	4c060000 	stcmi	0, cr0, [r6], {-0}
     d98:	0000023c 	andeq	r0, r0, ip, lsr r2
     d9c:	1cfb1180 	ldfnee	f1, [fp], #512	; 0x200
     da0:	4e060000 	cdpmi	0, 0, cr0, cr6, cr0, {0}
     da4:	0000010f 	andeq	r0, r0, pc, lsl #2
     da8:	ff110100 			; <UNDEFINED> instruction: 0xff110100
     dac:	0600007f 			; <UNDEFINED> instruction: 0x0600007f
     db0:	00010f51 	andeq	r0, r1, r1, asr pc
     db4:	00010400 	andeq	r0, r1, r0, lsl #8
     db8:	00007a09 	andeq	r7, r0, r9, lsl #20
     dbc:	00024c00 	andeq	r4, r2, r0, lsl #24
     dc0:	00730a00 	rsbseq	r0, r3, r0, lsl #20
     dc4:	001f0000 	andseq	r0, pc, r0
     dc8:	00468a0d 	subeq	r8, r6, sp, lsl #20
     dcc:	55068c00 	strpl	r8, [r6, #-3072]	; 0xfffff400
     dd0:	00000289 	andeq	r0, r0, r9, lsl #5
     dd4:	00595e0c 	subseq	r5, r9, ip, lsl #28
     dd8:	89560600 	ldmdbhi	r6, {r9, sl}^
     ddc:	00000002 	andeq	r0, r0, r2
     de0:	007e160c 	rsbseq	r1, lr, ip, lsl #12
     de4:	6c570600 	mrrcvs	6, 0, r0, r7, cr0
     de8:	04000000 	streq	r0, [r0], #-0
     dec:	002bf00c 	eoreq	pc, fp, ip
     df0:	8f580600 	svchi	0x00580600
     df4:	08000002 	stmdaeq	r0, {r1}
     df8:	004b910c 	subeq	r9, fp, ip, lsl #2
     dfc:	a6590600 	ldrbge	r0, [r9], -r0, lsl #12
     e00:	88000002 	stmdahi	r0, {r1}
     e04:	4c040f00 	stcmi	15, cr0, [r4], {-0}
     e08:	09000002 	stmdbeq	r0, {r1}
     e0c:	0000029f 	muleq	r0, pc, r2	; <UNPREDICTABLE>
     e10:	0000029f 	muleq	r0, pc, r2	; <UNPREDICTABLE>
     e14:	0000730a 	andeq	r7, r0, sl, lsl #6
     e18:	0f001f00 	svceq	0x00001f00
     e1c:	0002a504 	andeq	sl, r2, r4, lsl #10
     e20:	040f1200 	streq	r1, [pc], #-512	; e28 <__sflush_r+0x4c>
     e24:	000001fc 	strdeq	r0, [r0], -ip
     e28:	00039e0d 	andeq	r9, r3, sp, lsl #28
     e2c:	75060800 	strvc	r0, [r6, #-2048]	; 0xfffff800
     e30:	000002d1 	ldrdeq	r0, [r0], -r1
     e34:	0067ba0c 	rsbeq	fp, r7, ip, lsl #20
     e38:	d1760600 	cmnle	r6, r0, lsl #12
     e3c:	00000002 	andeq	r0, r0, r2
     e40:	000be90c 	andeq	lr, fp, ip, lsl #18
     e44:	6c770600 	ldclvs	6, cr0, [r7], #-0
     e48:	04000000 	streq	r0, [r0], #-0
     e4c:	30040f00 	andcc	r0, r4, r0, lsl #30
     e50:	0d000000 	stceq	0, cr0, [r0, #-0]
     e54:	00003795 	muleq	r0, r5, r7
     e58:	41990620 	orrsmi	r0, r9, r0, lsr #12
     e5c:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
     e60:	0600705f 			; <UNDEFINED> instruction: 0x0600705f
     e64:	0002d19a 	muleq	r2, sl, r1
     e68:	5f0e0000 	svcpl	0x000e0000
     e6c:	9b060072 	blls	18103c <heap_size+0x16103c>
     e70:	0000006c 	andeq	r0, r0, ip, rrx
     e74:	775f0e04 	ldrbvc	r0, [pc, -r4, lsl #28]
     e78:	6c9c0600 	ldcvs	6, cr0, [ip], {0}
     e7c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     e80:	00598c0c 	subseq	r8, r9, ip, lsl #24
     e84:	379d0600 	ldrcc	r0, [sp, r0, lsl #12]
     e88:	0c000000 	stceq	0, cr0, [r0], {-0}
     e8c:	00135b0c 	andseq	r5, r3, ip, lsl #22
     e90:	379e0600 	ldrcc	r0, [lr, r0, lsl #12]
     e94:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     e98:	66625f0e 	strbtvs	r5, [r2], -lr, lsl #30
     e9c:	ac9f0600 	ldcge	6, cr0, [pc], {0}
     ea0:	10000002 	andne	r0, r0, r2
     ea4:	007dc20c 	rsbseq	ip, sp, ip, lsl #4
     ea8:	6ca00600 	stcvs	6, cr0, [r0]
     eac:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     eb0:	006dee0c 	rsbeq	lr, sp, ip, lsl #28
     eb4:	72a20600 	adcvc	r0, r2, #0, 12
     eb8:	1c000004 	stcne	0, cr0, [r0], {4}
     ebc:	02d71300 	sbcseq	r1, r7, #0, 6
     ec0:	b9140000 	ldmdblt	r4, {}	; <UNPREDICTABLE>
     ec4:	6000001f 	andvs	r0, r0, pc, lsl r0
     ec8:	72017406 	andvc	r7, r1, #100663296	; 0x6000000
     ecc:	15000004 	strne	r0, [r0, #-4]
     ed0:	00004367 	andeq	r4, r0, r7, ror #6
     ed4:	6c017806 	stcvs	8, cr7, [r1], {6}
     ed8:	00000000 	andeq	r0, r0, r0
     edc:	0022b115 	eoreq	fp, r2, r5, lsl r1
     ee0:	017d0600 	cmneq	sp, r0, lsl #12
     ee4:	000006ac 	andeq	r0, r0, ip, lsr #13
     ee8:	53071504 	movwpl	r1, #29956	; 0x7504
     eec:	7d060000 	stcvc	0, cr0, [r6, #-0]
     ef0:	0006ac01 	andeq	sl, r6, r1, lsl #24
     ef4:	18150800 	ldmdane	r5, {fp}
     ef8:	06000043 	streq	r0, [r0], -r3, asr #32
     efc:	06ac017d 			; <UNDEFINED> instruction: 0x06ac017d
     f00:	150c0000 	strne	r0, [ip, #-0]
     f04:	00002a2c 	andeq	r2, r0, ip, lsr #20
     f08:	6c017f06 	stcvs	15, cr7, [r1], {6}
     f0c:	10000000 	andne	r0, r0, r0
     f10:	004abe15 	subeq	fp, sl, r5, lsl lr
     f14:	01810600 	orreq	r0, r1, r0, lsl #12
     f18:	000005c5 	andeq	r0, r0, r5, asr #11
     f1c:	40241514 	eormi	r1, r4, r4, lsl r5
     f20:	83060000 	movwhi	r0, #24576	; 0x6000
     f24:	00006c01 	andeq	r6, r0, r1, lsl #24
     f28:	0e151800 	cdpeq	8, 1, cr1, cr5, cr0, {0}
     f2c:	06000027 	streq	r0, [r0], -r7, lsr #32
     f30:	006c0185 	rsbeq	r0, ip, r5, lsl #3
     f34:	151c0000 	ldrne	r0, [ip, #-0]
     f38:	00003340 	andeq	r3, r0, r0, asr #6
     f3c:	fe018606 	cdp2	6, 0, cr8, cr1, cr6, {0}
     f40:	20000007 	andcs	r0, r0, r7
     f44:	706d5f16 	rsbvc	r5, sp, r6, lsl pc
     f48:	01880600 	orreq	r0, r8, r0, lsl #12
     f4c:	00000804 	andeq	r0, r0, r4, lsl #16
     f50:	48521524 	ldmdami	r2, {r2, r5, r8, sl, ip}^
     f54:	8a060000 	bhi	180f5c <heap_size+0x160f5c>
     f58:	00081501 	andeq	r1, r8, r1, lsl #10
     f5c:	bf152800 	svclt	0x00152800
     f60:	0600004d 	streq	r0, [r0], -sp, asr #32
     f64:	006c018c 	rsbeq	r0, ip, ip, lsl #3
     f68:	152c0000 	strne	r0, [ip, #-0]!
     f6c:	00000632 	andeq	r0, r0, r2, lsr r6
     f70:	6c018f06 	stcvs	15, cr8, [r1], {6}
     f74:	30000000 	andcc	r0, r0, r0
     f78:	003a3715 	eorseq	r3, sl, r5, lsl r7
     f7c:	01900600 	orrseq	r0, r0, r0, lsl #12
     f80:	000005c5 	andeq	r0, r0, r5, asr #11
     f84:	6c671534 	cfstr64vs	mvdx1, [r7], #-208	; 0xffffff30
     f88:	92060000 	andls	r0, r6, #0
     f8c:	00081b01 	andeq	r1, r8, r1, lsl #22
     f90:	ad153800 	ldcge	8, cr3, [r5, #-0]
     f94:	06000018 			; <UNDEFINED> instruction: 0x06000018
     f98:	08210193 	stmdaeq	r1!, {r0, r1, r4, r7, r8}
     f9c:	153c0000 	ldrne	r0, [ip, #-0]!
     fa0:	0000060e 	andeq	r0, r0, lr, lsl #12
     fa4:	c5019406 	strgt	r9, [r1, #-1030]	; 0xfffffbfa
     fa8:	40000005 	andmi	r0, r0, r5
     fac:	00387f15 	eorseq	r7, r8, r5, lsl pc
     fb0:	01970600 	orrseq	r0, r7, r0, lsl #12
     fb4:	00000832 	andeq	r0, r0, r2, lsr r8
     fb8:	4cab1544 	cfstr32mi	mvfx1, [fp], #272	; 0x110
     fbc:	9f060000 	svcls	0x00060000
     fc0:	00067101 	andeq	r7, r6, r1, lsl #2
     fc4:	0f154800 	svceq	0x00154800
     fc8:	06000003 	streq	r0, [r0], -r3
     fcc:	06ac01a0 	strteq	r0, [ip], r0, lsr #3
     fd0:	15540000 	ldrbne	r0, [r4, #-0]
     fd4:	0000811a 	andeq	r8, r0, sl, lsl r1
     fd8:	3e01a106 	mvfccs	f2, f6
     fdc:	58000008 	stmdapl	r0, {r3}
     fe0:	0045b115 	subeq	fp, r5, r5, lsl r1
     fe4:	01a20600 			; <UNDEFINED> instruction: 0x01a20600
     fe8:	000005c5 	andeq	r0, r0, r5, asr #11
     fec:	040f005c 	streq	r0, [pc], #-92	; ff4 <__smakebuf_r+0x28>
     ff0:	00000346 	andeq	r0, r0, r6, asr #6
     ff4:	00047213 	andeq	r7, r4, r3, lsl r2
     ff8:	85ec0d00 	strbhi	r0, [ip, #3328]!	; 0xd00
     ffc:	06680000 	strbteq	r0, [r8], -r0
    1000:	0005a7b5 			; <UNDEFINED> instruction: 0x0005a7b5
    1004:	705f0e00 	subsvc	r0, pc, r0, lsl #28
    1008:	d1b60600 			; <UNDEFINED> instruction: 0xd1b60600
    100c:	00000002 	andeq	r0, r0, r2
    1010:	00725f0e 	rsbseq	r5, r2, lr, lsl #30
    1014:	006cb706 	rsbeq	fp, ip, r6, lsl #14
    1018:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    101c:	0600775f 			; <UNDEFINED> instruction: 0x0600775f
    1020:	00006cb8 			; <UNDEFINED> instruction: 0x00006cb8
    1024:	8c0c0800 	stchi	8, cr0, [ip], {-0}
    1028:	06000059 			; <UNDEFINED> instruction: 0x06000059
    102c:	000037b9 			; <UNDEFINED> instruction: 0x000037b9
    1030:	5b0c0c00 	blpl	304038 <heap_size+0x2e4038>
    1034:	06000013 			; <UNDEFINED> instruction: 0x06000013
    1038:	000037ba 			; <UNDEFINED> instruction: 0x000037ba
    103c:	5f0e0e00 	svcpl	0x000e0e00
    1040:	06006662 	streq	r6, [r0], -r2, ror #12
    1044:	0002acbb 			; <UNDEFINED> instruction: 0x0002acbb
    1048:	c20c1000 	andgt	r1, ip, #0
    104c:	0600007d 			; <UNDEFINED> instruction: 0x0600007d
    1050:	00006cbc 			; <UNDEFINED> instruction: 0x00006cbc
    1054:	ee0c1800 	cdp	8, 0, cr1, cr12, cr0, {0}
    1058:	0600006d 	streq	r0, [r0], -sp, rrx
    105c:	000472bf 			; <UNDEFINED> instruction: 0x000472bf
    1060:	170c1c00 	strne	r1, [ip, -r0, lsl #24]
    1064:	06000037 			; <UNDEFINED> instruction: 0x06000037
    1068:	00007ac3 	andeq	r7, r0, r3, asr #21
    106c:	a50c2000 	strge	r2, [ip, #-0]
    1070:	06000003 	streq	r0, [r0], -r3
    1074:	0005d7c5 	andeq	sp, r5, r5, asr #15
    1078:	900c2400 	andls	r2, ip, r0, lsl #8
    107c:	06000005 	streq	r0, [r0], -r5
    1080:	000601c7 	andeq	r0, r6, r7, asr #3
    1084:	3d0c2800 	stccc	8, cr2, [ip, #-0]
    1088:	06000060 	streq	r0, [r0], -r0, rrx
    108c:	000625ca 	andeq	r2, r6, sl, asr #11
    1090:	4f0c2c00 	svcmi	0x000c2c00
    1094:	0600005e 			; <UNDEFINED> instruction: 0x0600005e
    1098:	00063fcb 	andeq	r3, r6, fp, asr #31
    109c:	5f0e3000 	svcpl	0x000e3000
    10a0:	06006275 			; <UNDEFINED> instruction: 0x06006275
    10a4:	0002acce 	andeq	sl, r2, lr, asr #25
    10a8:	5f0e3400 	svcpl	0x000e3400
    10ac:	06007075 			; <UNDEFINED> instruction: 0x06007075
    10b0:	0002d1cf 	andeq	sp, r2, pc, asr #3
    10b4:	5f0e3c00 	svcpl	0x000e3c00
    10b8:	06007275 			; <UNDEFINED> instruction: 0x06007275
    10bc:	00006cd0 	ldrdeq	r6, [r0], -r0
    10c0:	930c4000 	movwls	r4, #49152	; 0xc000
    10c4:	06000057 			; <UNDEFINED> instruction: 0x06000057
    10c8:	000645d3 	ldrdeq	r4, [r6], -r3
    10cc:	140c4400 	strne	r4, [ip], #-1024	; 0xfffffc00
    10d0:	06000023 	streq	r0, [r0], -r3, lsr #32
    10d4:	000655d4 	ldrdeq	r5, [r6], -r4
    10d8:	5f0e4700 	svcpl	0x000e4700
    10dc:	0600626c 	streq	r6, [r0], -ip, ror #4
    10e0:	0002acd7 	ldrdeq	sl, [r2], -r7
    10e4:	480c4800 	stmdami	ip, {fp, lr}
    10e8:	06000067 	streq	r0, [r0], -r7, rrx
    10ec:	00006cda 	ldrdeq	r6, [r0], -sl
    10f0:	f10c5000 			; <UNDEFINED> instruction: 0xf10c5000
    10f4:	06000039 			; <UNDEFINED> instruction: 0x06000039
    10f8:	000087db 	ldrdeq	r8, [r0], -fp
    10fc:	660c5400 	strvs	r5, [ip], -r0, lsl #8
    1100:	0600000c 	streq	r0, [r0], -ip
    1104:	000104e2 	andeq	r0, r1, r2, ror #9
    1108:	e50c5800 	str	r5, [ip, #-2048]	; 0xfffff800
    110c:	06000058 			; <UNDEFINED> instruction: 0x06000058
    1110:	0000f9e4 	andeq	pc, r0, r4, ror #19
    1114:	450c5c00 	strmi	r5, [ip, #-3072]	; 0xfffff400
    1118:	06000053 			; <UNDEFINED> instruction: 0x06000053
    111c:	00006ce5 	andeq	r6, r0, r5, ror #25
    1120:	17006400 	strne	r6, [r0, -r0, lsl #8]
    1124:	0000006c 	andeq	r0, r0, ip, rrx
    1128:	000005c5 	andeq	r0, r0, r5, asr #11
    112c:	00047218 	andeq	r7, r4, r8, lsl r2
    1130:	007a1800 	rsbseq	r1, sl, r0, lsl #16
    1134:	c5180000 	ldrgt	r0, [r8, #-0]
    1138:	18000005 	stmdane	r0, {r0, r2}
    113c:	0000006c 	andeq	r0, r0, ip, rrx
    1140:	cb040f00 	blgt	104d48 <heap_size+0xe4d48>
    1144:	02000005 	andeq	r0, r0, #5
    1148:	07d40801 	ldrbeq	r0, [r4, r1, lsl #16]
    114c:	cb130000 	blgt	4c1154 <heap_size+0x4a1154>
    1150:	0f000005 	svceq	0x00000005
    1154:	0005a704 	andeq	sl, r5, r4, lsl #14
    1158:	006c1700 	rsbeq	r1, ip, r0, lsl #14
    115c:	05fb0000 	ldrbeq	r0, [fp, #0]!
    1160:	72180000 	andsvc	r0, r8, #0
    1164:	18000004 	stmdane	r0, {r2}
    1168:	0000007a 	andeq	r0, r0, sl, ror r0
    116c:	0005fb18 	andeq	pc, r5, r8, lsl fp	; <UNPREDICTABLE>
    1170:	006c1800 	rsbeq	r1, ip, r0, lsl #16
    1174:	0f000000 	svceq	0x00000000
    1178:	0005d204 	andeq	sp, r5, r4, lsl #4
    117c:	dd040f00 	stcle	15, cr0, [r4, #-0]
    1180:	17000005 	strne	r0, [r0, -r5]
    1184:	00000092 	muleq	r0, r2, r0
    1188:	00000625 	andeq	r0, r0, r5, lsr #12
    118c:	00047218 	andeq	r7, r4, r8, lsl r2
    1190:	007a1800 	rsbseq	r1, sl, r0, lsl #16
    1194:	92180000 	andsls	r0, r8, #0
    1198:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    119c:	0000006c 	andeq	r0, r0, ip, rrx
    11a0:	07040f00 	streq	r0, [r4, -r0, lsl #30]
    11a4:	17000006 	strne	r0, [r0, -r6]
    11a8:	0000006c 	andeq	r0, r0, ip, rrx
    11ac:	0000063f 	andeq	r0, r0, pc, lsr r6
    11b0:	00047218 	andeq	r7, r4, r8, lsl r2
    11b4:	007a1800 	rsbseq	r1, sl, r0, lsl #16
    11b8:	0f000000 	svceq	0x00000000
    11bc:	00062b04 	andeq	r2, r6, r4, lsl #22
    11c0:	00300900 	eorseq	r0, r0, r0, lsl #18
    11c4:	06550000 	ldrbeq	r0, [r5], -r0
    11c8:	730a0000 	movwvc	r0, #40960	; 0xa000
    11cc:	02000000 	andeq	r0, r0, #0
    11d0:	00300900 	eorseq	r0, r0, r0, lsl #18
    11d4:	06650000 	strbteq	r0, [r5], -r0
    11d8:	730a0000 	movwvc	r0, #40960	; 0xa000
    11dc:	00000000 	andeq	r0, r0, r0
    11e0:	6b1b0600 	blvs	6c29e8 <heap_size+0x6a29e8>
    11e4:	1f060000 	svcne	0x00060000
    11e8:	00047d01 	andeq	r7, r4, r1, lsl #26
    11ec:	50371400 	eorspl	r1, r7, r0, lsl #8
    11f0:	060c0000 	streq	r0, [ip], -r0
    11f4:	06a60123 	strteq	r0, [r6], r3, lsr #2
    11f8:	5e150000 	cdppl	0, 1, cr0, cr5, cr0, {0}
    11fc:	06000059 			; <UNDEFINED> instruction: 0x06000059
    1200:	06a60125 	strteq	r0, [r6], r5, lsr #2
    1204:	15000000 	strne	r0, [r0, #-0]
    1208:	00002f85 	andeq	r2, r0, r5, lsl #31
    120c:	6c012606 	stcvs	6, cr2, [r1], {6}
    1210:	04000000 	streq	r0, [r0], #-0
    1214:	003b0315 	eorseq	r0, fp, r5, lsl r3
    1218:	01270600 			; <UNDEFINED> instruction: 0x01270600
    121c:	000006ac 	andeq	r0, r0, ip, lsr #13
    1220:	040f0008 	streq	r0, [pc], #-8	; 1228 <_vfiprintf_r+0x16c>
    1224:	00000671 	andeq	r0, r0, r1, ror r6
    1228:	0665040f 	strbteq	r0, [r5], -pc, lsl #8
    122c:	3f140000 	svccc	0x00140000
    1230:	18000065 	stmdane	r0, {r0, r2, r5, r6}
    1234:	f4013f06 			; <UNDEFINED> instruction: 0xf4013f06
    1238:	15000006 	strne	r0, [r0, #-6]
    123c:	00005fe7 	andeq	r5, r0, r7, ror #31
    1240:	f4014006 	vst4.8	{d4-d7}, [r1], r6
    1244:	00000006 	andeq	r0, r0, r6
    1248:	000e7515 	andeq	r7, lr, r5, lsl r5
    124c:	01410600 	cmpeq	r1, r0, lsl #12
    1250:	000006f4 	strdeq	r0, [r0], -r4
    1254:	85281506 	strhi	r1, [r8, #-1286]!	; 0xfffffafa
    1258:	42060000 	andmi	r0, r6, #0
    125c:	00003e01 	andeq	r3, r0, r1, lsl #28
    1260:	59150c00 	ldmdbpl	r5, {sl, fp}
    1264:	06000059 			; <UNDEFINED> instruction: 0x06000059
    1268:	00650145 	rsbeq	r0, r5, r5, asr #2
    126c:	00100000 	andseq	r0, r0, r0
    1270:	00003e09 	andeq	r3, r0, r9, lsl #28
    1274:	00070400 	andeq	r0, r7, r0, lsl #8
    1278:	00730a00 	rsbseq	r0, r3, r0, lsl #20
    127c:	00020000 	andeq	r0, r2, r0
    1280:	0080b914 	addeq	fp, r0, r4, lsl r9
    1284:	58061000 	stmdapl	r6, {ip}
    1288:	00074601 	andeq	r4, r7, r1, lsl #12
    128c:	829d1500 	addshi	r1, sp, #0, 10
    1290:	5b060000 	blpl	181298 <heap_size+0x161298>
    1294:	00016d01 	andeq	r6, r1, r1, lsl #26
    1298:	63150000 	tstvs	r5, #0
    129c:	06000017 			; <UNDEFINED> instruction: 0x06000017
    12a0:	006c015c 	rsbeq	r0, ip, ip, asr r1
    12a4:	15040000 	strne	r0, [r4, #-0]
    12a8:	00003740 	andeq	r3, r0, r0, asr #14
    12ac:	6d015d06 	stcvs	13, cr5, [r1, #-24]	; 0xffffffe8
    12b0:	08000001 	stmdaeq	r0, {r0}
    12b4:	004f6f15 	subeq	r6, pc, r5, lsl pc	; <UNPREDICTABLE>
    12b8:	015e0600 	cmpeq	lr, r0, lsl #12
    12bc:	00000746 	andeq	r0, r0, r6, asr #14
    12c0:	040f000c 	streq	r0, [pc], #-12	; 12c8 <_vfiprintf_r+0x20c>
    12c4:	0000016d 	andeq	r0, r0, sp, ror #2
    12c8:	001fb414 	andseq	fp, pc, r4, lsl r4	; <UNPREDICTABLE>
    12cc:	62065000 	andvs	r5, r6, #0
    12d0:	0007e901 	andeq	lr, r7, r1, lsl #18
    12d4:	68be1500 	ldmvs	lr!, {r8, sl, ip}
    12d8:	65060000 	strvs	r0, [r6, #-0]
    12dc:	0005c501 	andeq	ip, r5, r1, lsl #10
    12e0:	1f150000 	svcne	0x00150000
    12e4:	06000075 			; <UNDEFINED> instruction: 0x06000075
    12e8:	00f90166 	rscseq	r0, r9, r6, ror #2
    12ec:	15040000 	strne	r0, [r4, #-0]
    12f0:	00006481 	andeq	r6, r0, r1, lsl #9
    12f4:	f9016706 			; <UNDEFINED> instruction: 0xf9016706
    12f8:	0c000000 	stceq	0, cr0, [r0], {-0}
    12fc:	00621215 	rsbeq	r1, r2, r5, lsl r2
    1300:	01680600 	cmneq	r8, r0, lsl #12
    1304:	000000f9 	strdeq	r0, [r0], -r9
    1308:	0a871514 	beq	fe1c6760 <__stack+0xf61c6768>
    130c:	69060000 	stmdbvs	r6, {}	; <UNPREDICTABLE>
    1310:	0007e901 	andeq	lr, r7, r1, lsl #18
    1314:	87151c00 	ldrhi	r1, [r5, -r0, lsl #24]
    1318:	0600008c 	streq	r0, [r0], -ip, lsl #1
    131c:	006c016a 	rsbeq	r0, ip, sl, ror #2
    1320:	15240000 	strne	r0, [r4, #-0]!
    1324:	000016d4 	ldrdeq	r1, [r0], -r4
    1328:	f9016b06 			; <UNDEFINED> instruction: 0xf9016b06
    132c:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    1330:	00692f15 	rsbeq	r2, r9, r5, lsl pc
    1334:	016c0600 	cmneq	ip, r0, lsl #12
    1338:	000000f9 	strdeq	r0, [r0], -r9
    133c:	876a1530 			; <UNDEFINED> instruction: 0x876a1530
    1340:	6d060000 	stcvs	0, cr0, [r6, #-0]
    1344:	0000f901 	andeq	pc, r0, r1, lsl #18
    1348:	2c153800 	ldccs	8, cr3, [r5], {-0}
    134c:	06000056 			; <UNDEFINED> instruction: 0x06000056
    1350:	00f9016e 	rscseq	r0, r9, lr, ror #2
    1354:	15400000 	strbne	r0, [r0, #-0]
    1358:	000009e7 	andeq	r0, r0, r7, ror #19
    135c:	f9016f06 			; <UNDEFINED> instruction: 0xf9016f06
    1360:	48000000 	stmdami	r0, {}	; <UNPREDICTABLE>
    1364:	05cb0900 	strbeq	r0, [fp, #2304]	; 0x900
    1368:	07f90000 	ldrbeq	r0, [r9, r0]!
    136c:	730a0000 	movwvc	r0, #40960	; 0xa000
    1370:	07000000 	streq	r0, [r0, -r0]
    1374:	021a1900 	andseq	r1, sl, #0, 18
    1378:	040f0000 	streq	r0, [pc], #-0	; 1380 <_printf_common+0x84>
    137c:	000007f9 	strdeq	r0, [r0], -r9
    1380:	0704040f 	streq	r0, [r4, -pc, lsl #8]
    1384:	151a0000 	ldrne	r0, [sl, #-0]
    1388:	18000008 	stmdane	r0, {r3}
    138c:	00000472 	andeq	r0, r0, r2, ror r4
    1390:	0a040f00 	beq	104f98 <heap_size+0xe4f98>
    1394:	0f000008 	svceq	0x00000008
    1398:	0006b204 	andeq	fp, r6, r4, lsl #4
    139c:	83040f00 	movwhi	r0, #20224	; 0x4f00
    13a0:	1a000001 	bne	13ac <_printf_common+0xb0>
    13a4:	00000832 	andeq	r0, r0, r2, lsr r8
    13a8:	00006c18 	andeq	r6, r0, r8, lsl ip
    13ac:	040f0000 	streq	r0, [pc], #-0	; 13b4 <_printf_common+0xb8>
    13b0:	00000838 	andeq	r0, r0, r8, lsr r8
    13b4:	0827040f 	stmdaeq	r7!, {r0, r1, r2, r3, sl}
    13b8:	040f0000 	streq	r0, [pc], #-0	; 13c0 <_printf_common+0xc4>
    13bc:	0000074c 	andeq	r0, r0, ip, asr #14
    13c0:	0022a81b 	eoreq	sl, r2, fp, lsl r8
    13c4:	01ca0600 	biceq	r0, sl, r0, lsl #12
    13c8:	00000341 	andeq	r0, r0, r1, asr #6
    13cc:	0052fe1b 	subseq	pc, r2, fp, lsl lr	; <UNPREDICTABLE>
    13d0:	01cb0600 	biceq	r0, fp, r0, lsl #12
    13d4:	00000341 	andeq	r0, r0, r1, asr #6
    13d8:	00430f1b 	subeq	r0, r3, fp, lsl pc
    13dc:	01cc0600 	biceq	r0, ip, r0, lsl #12
    13e0:	00000341 	andeq	r0, r0, r1, asr #6
    13e4:	002ec81b 	eoreq	ip, lr, fp, lsl r8
    13e8:	032e0600 			; <UNDEFINED> instruction: 0x032e0600
    13ec:	00000472 	andeq	r0, r0, r2, ror r4
    13f0:	0087b61b 	addeq	fp, r7, fp, lsl r6
    13f4:	032f0600 			; <UNDEFINED> instruction: 0x032f0600
    13f8:	00000478 	andeq	r0, r0, r8, ror r4
    13fc:	0046831b 	subeq	r8, r6, fp, lsl r3
    1400:	03410600 	movteq	r0, #5632	; 0x1600
    1404:	00000289 	andeq	r0, r0, r9, lsl #5
    1408:	003fa403 	eorseq	sl, pc, r3, lsl #8
    140c:	4c300700 	ldcmi	7, cr0, [r0], #-0
    1410:	1c000000 	stcne	0, cr0, [r0], {-0}
    1414:	0000088c 	andeq	r0, r0, ip, lsl #17
    1418:	0025251d 	eoreq	r2, r5, sp, lsl r5
    141c:	a7100800 	ldrge	r0, [r0, -r0, lsl #16]
    1420:	0f000008 	svceq	0x00000008
    1424:	0005c504 	andeq	ip, r5, r4, lsl #10
    1428:	83fd1d00 	mvnshi	r1, #0, 26
    142c:	fc080000 	stc2	0, cr0, [r8], {-0}
    1430:	000005c5 	andeq	r0, r0, r5, asr #11
    1434:	003c6e1d 	eorseq	r6, ip, sp, lsl lr
    1438:	6cfd0800 	ldclvs	8, cr0, [sp]
    143c:	1d000000 	stcne	0, cr0, [r0, #-0]
    1440:	000068b7 			; <UNDEFINED> instruction: 0x000068b7
    1444:	006cfd08 	rsbeq	pc, ip, r8, lsl #26
    1448:	311d0000 	tstcc	sp, r0
    144c:	08000062 	stmdaeq	r0, {r1, r5, r6}
    1450:	00006cfd 	strdeq	r6, [r0], -sp
    1454:	321d1d00 	andscc	r1, sp, #0, 26
    1458:	ff080000 			; <UNDEFINED> instruction: 0xff080000
    145c:	0000006c 	andeq	r0, r0, ip, rrx
    1460:	0b09480b 	bleq	253494 <heap_size+0x233494>
    1464:	000009c2 	andeq	r0, r0, r2, asr #19
    1468:	0052430e 	subseq	r4, r2, lr, lsl #6
    146c:	08970d09 	ldmeq	r7, {r0, r3, r8, sl, fp}
    1470:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    1474:	0900524d 	stmdbeq	r0, {r0, r2, r3, r6, r9, ip, lr}
    1478:	0008970e 	andeq	r9, r8, lr, lsl #14
    147c:	490e0400 	stmdbmi	lr, {sl}
    1480:	09005245 	stmdbeq	r0, {r0, r2, r6, r9, ip, lr}
    1484:	0008970f 	andeq	r9, r8, pc, lsl #14
    1488:	490e0800 	stmdbmi	lr, {fp}
    148c:	09005244 	stmdbeq	r0, {r2, r6, r9, ip, lr}
    1490:	00089710 	andeq	r9, r8, r0, lsl r7
    1494:	490e0c00 	stmdbmi	lr, {sl, fp}
    1498:	0900524d 	stmdbeq	r0, {r0, r2, r3, r6, r9, ip, lr}
    149c:	00089711 	andeq	r9, r8, r1, lsl r7
    14a0:	490e1000 	stmdbmi	lr, {ip}
    14a4:	09005253 	stmdbeq	r0, {r0, r1, r4, r6, r9, ip, lr}
    14a8:	00089712 	andeq	r9, r8, r2, lsl r7
    14ac:	460c1400 	strmi	r1, [ip], -r0, lsl #8
    14b0:	0900005d 	stmdbeq	r0, {r0, r2, r3, r4, r6}
    14b4:	00089713 	andeq	r9, r8, r3, lsl r7
    14b8:	e20c1800 	and	r1, ip, #0, 16
    14bc:	09000004 	stmdbeq	r0, {r2}
    14c0:	00089714 	andeq	r9, r8, r4, lsl r7
    14c4:	c40c1c00 	strgt	r1, [ip], #-3072	; 0xfffff400
    14c8:	09000010 	stmdbeq	r0, {r4}
    14cc:	00089715 	andeq	r9, r8, r5, lsl r7
    14d0:	370c2000 	strcc	r2, [ip, -r0]
    14d4:	09000065 	stmdbeq	r0, {r0, r2, r5, r6}
    14d8:	00089716 	andeq	r9, r8, r6, lsl r7
    14dc:	3a0c2400 	bcc	30a4e4 <heap_size+0x2ea4e4>
    14e0:	09000026 	stmdbeq	r0, {r1, r2, r5}
    14e4:	00089717 	andeq	r9, r8, r7, lsl r7
    14e8:	530e2800 	movwpl	r2, #59392	; 0xe800
    14ec:	18090052 	stmdane	r9, {r1, r4, r6}
    14f0:	00000897 	muleq	r0, r7, r8
    14f4:	47460c2c 	strbmi	r0, [r6, -ip, lsr #24]
    14f8:	19090000 	stmdbne	r9, {}	; <UNPREDICTABLE>
    14fc:	00000897 	muleq	r0, r7, r8
    1500:	18e00c30 	stmiane	r0!, {r4, r5, sl, fp}^
    1504:	1a090000 	bne	24150c <heap_size+0x22150c>
    1508:	00000897 	muleq	r0, r7, r8
    150c:	702c0c34 	eorvc	r0, ip, r4, lsr ip
    1510:	1b090000 	blne	241518 <heap_size+0x221518>
    1514:	00000897 	muleq	r0, r7, r8
    1518:	252d0c38 	strcs	r0, [sp, #-3128]!	; 0xfffff3c8
    151c:	1c090000 	stcne	0, cr0, [r9], {-0}
    1520:	00000897 	muleq	r0, r7, r8
    1524:	2a310c3c 	bcs	c4461c <heap_size+0xc2461c>
    1528:	1d090000 	stcne	0, cr0, [r9, #-0]
    152c:	00000897 	muleq	r0, r7, r8
    1530:	13610c40 	cmnne	r1, #64, 24	; 0x4000
    1534:	1e090000 	cdpne	0, 0, cr0, cr9, cr0, {0}
    1538:	00000897 	muleq	r0, r7, r8
    153c:	e8030044 	stmda	r3, {r2, r6}
    1540:	09000079 	stmdbeq	r0, {r0, r3, r4, r5, r6}
    1544:	0008e41f 	andeq	lr, r8, pc, lsl r4
    1548:	05cb0900 	strbeq	r0, [fp, #2304]	; 0x900
    154c:	09dd0000 	ldmibeq	sp, {}^	; <UNPREDICTABLE>
    1550:	730a0000 	movwvc	r0, #40960	; 0xa000
    1554:	4f000000 	svcmi	0x00000000
    1558:	8e1a1e00 	cdphi	14, 1, cr1, cr10, cr0, {0}
    155c:	20010000 	andcs	r0, r1, r0
    1560:	000009cd 	andeq	r0, r0, sp, asr #19
    1564:	32900305 	addscc	r0, r0, #335544320	; 0x14000000
    1568:	3b1e0000 	blcc	781570 <heap_size+0x761570>
    156c:	01000093 	swpeq	r0, r3, [r0]	; <UNPREDICTABLE>
    1570:	0009cd21 	andeq	ip, r9, r1, lsr #26
    1574:	40030500 	andmi	r0, r3, r0, lsl #10
    1578:	1e000032 	mcrne	0, 0, r0, cr0, cr2, {1}
    157c:	000090ba 	strheq	r9, [r0], -sl
    1580:	05c52301 	strbeq	r2, [r5, #769]	; 0x301
    1584:	03050000 	movweq	r0, #20480	; 0x5000
    1588:	0000323c 	andeq	r3, r0, ip, lsr r2
    158c:	0092b91f 	addseq	fp, r2, pc, lsl r9
    1590:	c0250100 	eorgt	r0, r5, r0, lsl #2
    1594:	c0000004 	andgt	r0, r0, r4
    1598:	01000000 	mrseq	r0, (UNDEF: 0)
    159c:	000a3d9c 	muleq	sl, ip, sp
    15a0:	04dc2000 	ldrbeq	r2, [ip], #0
    15a4:	003c0000 	eorseq	r0, ip, r0
    15a8:	98210000 	stmdals	r1!, {}	; <UNPREDICTABLE>
    15ac:	0100008e 	smlabbeq	r0, lr, r0, r0
    15b0:	00006c2a 	andeq	r6, r0, sl, lsr #24
    15b4:	00002200 	andeq	r2, r0, r0, lsl #4
    15b8:	8e542300 	cdphi	3, 5, cr2, cr4, cr0, {0}
    15bc:	1b010000 	blne	415c4 <heap_size+0x215c4>
    15c0:	000004b8 			; <UNDEFINED> instruction: 0x000004b8
    15c4:	00000008 	andeq	r0, r0, r8
    15c8:	b6249c01 	strtlt	r9, [r4], -r1, lsl #24
    15cc:	0100008e 	smlabbeq	r0, lr, r0, r0
    15d0:	0004a816 	andeq	sl, r4, r6, lsl r8
    15d4:	00001000 	andeq	r1, r0, r0
    15d8:	259c0100 	ldrcs	r0, [ip, #256]	; 0x100
    15dc:	00008e9f 	muleq	r0, pc, lr	; <UNPREDICTABLE>
    15e0:	04640601 	strbteq	r0, [r4], #-1537	; 0xfffff9ff
    15e4:	00440000 	subeq	r0, r4, r0
    15e8:	9c010000 	stcls	0, cr0, [r1], {-0}
    15ec:	00002200 	andeq	r2, r0, r0, lsl #4
    15f0:	f3000200 	vhsub.u8	d0, d0, d0
    15f4:	04000003 	streq	r0, [r0], #-3
    15f8:	0006cf01 	andeq	ip, r6, r1, lsl #30
    15fc:	00000000 	andeq	r0, r0, r0
    1600:	00008000 	andeq	r8, r0, r0
    1604:	00934500 	addseq	r4, r3, r0, lsl #10
    1608:	001d3d00 	andseq	r3, sp, r0, lsl #26
    160c:	00935100 	addseq	r5, r3, r0, lsl #2
    1610:	Address 0x00001610 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	17429917 	smlaldne	r9, r2, r7, r9
  14:	24020000 	strcs	r0, [r2], #-0
  18:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  1c:	000e030b 	andeq	r0, lr, fp, lsl #6
  20:	00160300 	andseq	r0, r6, r0, lsl #6
  24:	0b3a0e03 	bleq	e83838 <heap_size+0xe63838>
  28:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  2c:	24040000 	strcs	r0, [r4], #-0
  30:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  34:	0008030b 	andeq	r0, r8, fp, lsl #6
  38:	00160500 	andseq	r0, r6, r0, lsl #10
  3c:	0b3a0e03 	bleq	e83850 <heap_size+0xe63850>
  40:	1349053b 	movtne	r0, #38203	; 0x953b
  44:	17060000 	strne	r0, [r6, -r0]
  48:	3a0b0b01 	bcc	2c2c54 <heap_size+0x2a2c54>
  4c:	010b3b0b 	tsteq	fp, fp, lsl #22
  50:	07000013 	smladeq	r0, r3, r0, r0
  54:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  58:	0b3b0b3a 	bleq	ec2d48 <heap_size+0xea2d48>
  5c:	00001349 	andeq	r1, r0, r9, asr #6
  60:	49010108 	stmdbmi	r1, {r3, r8}
  64:	00130113 	andseq	r0, r3, r3, lsl r1
  68:	00210900 	eoreq	r0, r1, r0, lsl #18
  6c:	0b2f1349 	bleq	bc4d98 <heap_size+0xba4d98>
  70:	130a0000 	movwne	r0, #40960	; 0xa000
  74:	3a0b0b01 	bcc	2c2c80 <heap_size+0x2a2c80>
  78:	010b3b0b 	tsteq	fp, fp, lsl #22
  7c:	0b000013 	bleq	d0 <_mainCRTStartup>
  80:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  84:	0b3b0b3a 	bleq	ec2d74 <heap_size+0xea2d74>
  88:	0b381349 	bleq	e04db4 <heap_size+0xde4db4>
  8c:	0f0c0000 	svceq	0x000c0000
  90:	000b0b00 	andeq	r0, fp, r0, lsl #22
  94:	00350d00 	eorseq	r0, r5, r0, lsl #26
  98:	00001349 	andeq	r1, r0, r9, asr #6
  9c:	0b000f0e 	bleq	3cdc <__bss_end__+0x9f4>
  a0:	0013490b 	andseq	r4, r3, fp, lsl #18
  a4:	00260f00 	eoreq	r0, r6, r0, lsl #30
  a8:	00001349 	andeq	r1, r0, r9, asr #6
  ac:	03003410 	movweq	r3, #1040	; 0x410
  b0:	3b0b3a0e 	blcc	2ce8f0 <heap_size+0x2ae8f0>
  b4:	3f13490b 	svccc	0x0013490b
  b8:	00193c19 	andseq	r3, r9, r9, lsl ip
  bc:	01131100 	tsteq	r3, r0, lsl #2
  c0:	0b0b0e03 	bleq	2c38d4 <heap_size+0x2a38d4>
  c4:	0b3b0b3a 	bleq	ec2db4 <heap_size+0xea2db4>
  c8:	00001301 	andeq	r1, r0, r1, lsl #6
  cc:	03000d12 	movweq	r0, #3346	; 0xd12
  d0:	3b0b3a08 	blcc	2ce8f8 <heap_size+0x2ae8f8>
  d4:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
  d8:	1300000b 	movwne	r0, #11
  dc:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
  e0:	0b3a050b 	bleq	e81514 <heap_size+0xe61514>
  e4:	13010b3b 	movwne	r0, #6971	; 0x1b3b
  e8:	0d140000 	ldceq	0, cr0, [r4, #-0]
  ec:	3a0e0300 	bcc	380cf4 <heap_size+0x360cf4>
  f0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  f4:	00053813 	andeq	r3, r5, r3, lsl r8
  f8:	00151500 	andseq	r1, r5, r0, lsl #10
  fc:	00001927 	andeq	r1, r0, r7, lsr #18
 100:	03011316 	movweq	r1, #4886	; 0x1316
 104:	3a0b0b0e 	bcc	2c2d44 <heap_size+0x2a2d44>
 108:	01053b0b 	tsteq	r5, fp, lsl #22
 10c:	17000013 	smladne	r0, r3, r0, r0
 110:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 114:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 118:	0b381349 	bleq	e04e44 <heap_size+0xde4e44>
 11c:	0d180000 	ldceq	0, cr0, [r8, #-0]
 120:	3a080300 	bcc	200d28 <heap_size+0x1e0d28>
 124:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 128:	000b3813 	andeq	r3, fp, r3, lsl r8
 12c:	01151900 	tsteq	r5, r0, lsl #18
 130:	13491927 	movtne	r1, #39207	; 0x9927
 134:	00001301 	andeq	r1, r0, r1, lsl #6
 138:	4900051a 	stmdbmi	r0, {r1, r3, r4, r8, sl}
 13c:	1b000013 	blne	190 <Zynq7000_UART_SENDCHAR+0x8>
 140:	0e030013 	mcreq	0, 0, r0, cr3, cr3, {0}
 144:	0000193c 	andeq	r1, r0, ip, lsr r9
 148:	2701151c 	smladcs	r1, ip, r5, r1
 14c:	00130119 	andseq	r0, r3, r9, lsl r1
 150:	00341d00 	eorseq	r1, r4, r0, lsl #26
 154:	0b3a0e03 	bleq	e83968 <heap_size+0xe63968>
 158:	1349053b 	movtne	r0, #38203	; 0x953b
 15c:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
 160:	211e0000 	tstcs	lr, r0
 164:	1f000000 	svcne	0x00000000
 168:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 16c:	0b3a0e03 	bleq	e83980 <heap_size+0xe63980>
 170:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 174:	01111349 	tsteq	r1, r9, asr #6
 178:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 17c:	01194296 			; <UNDEFINED> instruction: 0x01194296
 180:	20000013 	andcs	r0, r0, r3, lsl r0
 184:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 188:	0b3b0b3a 	bleq	ec2e78 <heap_size+0xea2e78>
 18c:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 190:	05210000 	streq	r0, [r1, #-0]!
 194:	3a080300 	bcc	200d9c <heap_size+0x1e0d9c>
 198:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 19c:	00180213 	andseq	r0, r8, r3, lsl r2
 1a0:	00342200 	eorseq	r2, r4, r0, lsl #4
 1a4:	0b3a0803 	bleq	e821b8 <heap_size+0xe621b8>
 1a8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 1ac:	00001802 	andeq	r1, r0, r2, lsl #16
 1b0:	55010b23 	strpl	r0, [r1, #-2851]	; 0xfffff4dd
 1b4:	24000017 	strcs	r0, [r0], #-23	; 0xffffffe9
 1b8:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 1bc:	0b3a0e03 	bleq	e839d0 <heap_size+0xe639d0>
 1c0:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 1c4:	01111349 	tsteq	r1, r9, asr #6
 1c8:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 1cc:	01194297 			; <UNDEFINED> instruction: 0x01194297
 1d0:	25000013 	strcs	r0, [r0, #-19]	; 0xffffffed
 1d4:	0111010b 	tsteq	r1, fp, lsl #2
 1d8:	13010612 	movwne	r0, #5650	; 0x1612
 1dc:	0b260000 	bleq	9801e4 <heap_size+0x9601e4>
 1e0:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 1e4:	27000006 	strcs	r0, [r0, -r6]
 1e8:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 1ec:	0b3a0e03 	bleq	e83a00 <heap_size+0xe63a00>
 1f0:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 1f4:	06120111 			; <UNDEFINED> instruction: 0x06120111
 1f8:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 1fc:	00000019 	andeq	r0, r0, r9, lsl r0
 200:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 204:	030b130e 	movweq	r1, #45838	; 0xb30e
 208:	110e1b0e 	tstne	lr, lr, lsl #22
 20c:	10061201 	andne	r1, r6, r1, lsl #4
 210:	17429917 	smlaldne	r9, r2, r7, r9
 214:	24020000 	strcs	r0, [r2], #-0
 218:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 21c:	000e030b 	andeq	r0, lr, fp, lsl #6
 220:	00160300 	andseq	r0, r6, r0, lsl #6
 224:	0b3a0e03 	bleq	e83a38 <heap_size+0xe63a38>
 228:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 22c:	24040000 	strcs	r0, [r4], #-0
 230:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 234:	0008030b 	andeq	r0, r8, fp, lsl #6
 238:	000f0500 	andeq	r0, pc, r0, lsl #10
 23c:	00000b0b 	andeq	r0, r0, fp, lsl #22
 240:	03001606 	movweq	r1, #1542	; 0x606
 244:	3b0b3a0e 	blcc	2cea84 <heap_size+0x2aea84>
 248:	00134905 	andseq	r4, r3, r5, lsl #18
 24c:	01170700 	tsteq	r7, r0, lsl #14
 250:	0b3a0b0b 	bleq	e82e84 <heap_size+0xe62e84>
 254:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 258:	0d080000 	stceq	0, cr0, [r8, #-0]
 25c:	3a0e0300 	bcc	380e64 <heap_size+0x360e64>
 260:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 264:	09000013 	stmdbeq	r0, {r0, r1, r4}
 268:	13490101 	movtne	r0, #37121	; 0x9101
 26c:	00001301 	andeq	r1, r0, r1, lsl #6
 270:	4900210a 	stmdbmi	r0, {r1, r3, r8, sp}
 274:	000b2f13 	andeq	r2, fp, r3, lsl pc
 278:	01130b00 	tsteq	r3, r0, lsl #22
 27c:	0b3a0b0b 	bleq	e82eb0 <heap_size+0xe62eb0>
 280:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 284:	0d0c0000 	stceq	0, cr0, [ip, #-0]
 288:	3a0e0300 	bcc	380e90 <heap_size+0x360e90>
 28c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 290:	000b3813 	andeq	r3, fp, r3, lsl r8
 294:	01130d00 	tsteq	r3, r0, lsl #26
 298:	0b0b0e03 	bleq	2c3aac <heap_size+0x2a3aac>
 29c:	0b3b0b3a 	bleq	ec2f8c <heap_size+0xea2f8c>
 2a0:	00001301 	andeq	r1, r0, r1, lsl #6
 2a4:	03000d0e 	movweq	r0, #3342	; 0xd0e
 2a8:	3b0b3a08 	blcc	2cead0 <heap_size+0x2aead0>
 2ac:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
 2b0:	0f00000b 	svceq	0x0000000b
 2b4:	0b0b000f 	bleq	2c02f8 <heap_size+0x2a02f8>
 2b8:	00001349 	andeq	r1, r0, r9, asr #6
 2bc:	03011310 	movweq	r1, #4880	; 0x1310
 2c0:	3a050b0e 	bcc	142f00 <heap_size+0x122f00>
 2c4:	010b3b0b 	tsteq	fp, fp, lsl #22
 2c8:	11000013 	tstne	r0, r3, lsl r0
 2cc:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 2d0:	0b3b0b3a 	bleq	ec2fc0 <heap_size+0xea2fc0>
 2d4:	05381349 	ldreq	r1, [r8, #-841]!	; 0xfffffcb7
 2d8:	15120000 	ldrne	r0, [r2, #-0]
 2dc:	00192700 	andseq	r2, r9, r0, lsl #14
 2e0:	00261300 	eoreq	r1, r6, r0, lsl #6
 2e4:	00001349 	andeq	r1, r0, r9, asr #6
 2e8:	03011314 	movweq	r1, #4884	; 0x1314
 2ec:	3a0b0b0e 	bcc	2c2f2c <heap_size+0x2a2f2c>
 2f0:	01053b0b 	tsteq	r5, fp, lsl #22
 2f4:	15000013 	strne	r0, [r0, #-19]	; 0xffffffed
 2f8:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 2fc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 300:	0b381349 	bleq	e0502c <heap_size+0xde502c>
 304:	0d160000 	ldceq	0, cr0, [r6, #-0]
 308:	3a080300 	bcc	200f10 <heap_size+0x1e0f10>
 30c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 310:	000b3813 	andeq	r3, fp, r3, lsl r8
 314:	01151700 	tsteq	r5, r0, lsl #14
 318:	13491927 	movtne	r1, #39207	; 0x9927
 31c:	00001301 	andeq	r1, r0, r1, lsl #6
 320:	49000518 	stmdbmi	r0, {r3, r4, r8, sl}
 324:	19000013 	stmdbne	r0, {r0, r1, r4}
 328:	0e030013 	mcreq	0, 0, r0, cr3, cr3, {0}
 32c:	0000193c 	andeq	r1, r0, ip, lsr r9
 330:	2701151a 	smladcs	r1, sl, r5, r1
 334:	00130119 	andseq	r0, r3, r9, lsl r1
 338:	00341b00 	eorseq	r1, r4, r0, lsl #22
 33c:	0b3a0e03 	bleq	e83b50 <heap_size+0xe63b50>
 340:	1349053b 	movtne	r0, #38203	; 0x953b
 344:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
 348:	351c0000 	ldrcc	r0, [ip, #-0]
 34c:	00134900 	andseq	r4, r3, r0, lsl #18
 350:	00341d00 	eorseq	r1, r4, r0, lsl #26
 354:	0b3a0e03 	bleq	e83b68 <heap_size+0xe63b68>
 358:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 35c:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
 360:	341e0000 	ldrcc	r0, [lr], #-0
 364:	3a0e0300 	bcc	380f6c <heap_size+0x360f6c>
 368:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 36c:	02193f13 	andseq	r3, r9, #19, 30	; 0x4c
 370:	1f000018 	svcne	0x00000018
 374:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 378:	0b3a0e03 	bleq	e83b8c <heap_size+0xe63b8c>
 37c:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 380:	06120111 			; <UNDEFINED> instruction: 0x06120111
 384:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 388:	00130119 	andseq	r0, r3, r9, lsl r1
 38c:	010b2000 	mrseq	r2, (UNDEF: 11)
 390:	06120111 			; <UNDEFINED> instruction: 0x06120111
 394:	2e210000 	cdpcs	0, 2, cr0, cr1, cr0, {0}
 398:	03193f01 	tsteq	r9, #1, 30
 39c:	3b0b3a0e 	blcc	2cebdc <heap_size+0x2aebdc>
 3a0:	3c13490b 			; <UNDEFINED> instruction: 0x3c13490b
 3a4:	22000019 	andcs	r0, r0, #25
 3a8:	00000018 	andeq	r0, r0, r8, lsl r0
 3ac:	3f002e23 	svccc	0x00002e23
 3b0:	3a0e0319 	bcc	38101c <heap_size+0x36101c>
 3b4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3b8:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 3bc:	97184006 	ldrls	r4, [r8, -r6]
 3c0:	00001942 	andeq	r1, r0, r2, asr #18
 3c4:	3f002e24 	svccc	0x00002e24
 3c8:	3a0e0319 	bcc	381034 <heap_size+0x361034>
 3cc:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 3d0:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 3d4:	96184006 	ldrls	r4, [r8], -r6
 3d8:	00001942 	andeq	r1, r0, r2, asr #18
 3dc:	3f002e25 	svccc	0x00002e25
 3e0:	3a0e0319 	bcc	38104c <heap_size+0x36104c>
 3e4:	110b3b0b 	tstne	fp, fp, lsl #22
 3e8:	40061201 	andmi	r1, r6, r1, lsl #4
 3ec:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 3f0:	01000000 	mrseq	r0, (UNDEF: 0)
 3f4:	06100011 			; <UNDEFINED> instruction: 0x06100011
 3f8:	01120111 	tsteq	r2, r1, lsl r1
 3fc:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 400:	05130e25 	ldreq	r0, [r3, #-3621]	; 0xfffff1db
 404:	Address 0x00000404 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00000144 	andeq	r0, r0, r4, asr #2
  14:	00000320 	andeq	r0, r0, r0, lsr #6
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	0b7c0002 	bleq	1f00034 <_end+0xf00034>
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00000464 	andeq	r0, r0, r4, ror #8
  34:	0000011c 	andeq	r0, r0, ip, lsl r1
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	15ed0002 	strbne	r0, [sp, #2]!
  48:	00040000 	andeq	r0, r4, r0
	...
  54:	00000080 	andeq	r0, r0, r0, lsl #1
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	00000214 	andeq	r0, r0, r4, lsl r2
   4:	000002c8 	andeq	r0, r0, r8, asr #5
   8:	000002e8 	andeq	r0, r0, r8, ror #5
   c:	000002f4 	strdeq	r0, [r0], -r4
	...

Disassembly of section .debug_macro:

00000000 <.debug_macro>:
       0:	00020004 	andeq	r0, r2, r4
       4:	07000000 	streq	r0, [r0, -r0]
       8:	00000151 	andeq	r0, r0, r1, asr r1
       c:	03010003 	movweq	r0, #4099	; 0x1003
      10:	02050b01 	andeq	r0, r5, #1024	; 0x400
      14:	00003a2b 	andeq	r3, r0, fp, lsr #20
      18:	05070403 	streq	r0, [r7, #-1027]	; 0xfffffbfd
      1c:	0013be02 	andseq	fp, r3, r2, lsl #28
      20:	0c080300 	stceq	3, cr0, [r8], {-0}
      24:	51f20805 	mvnspl	r0, r5, lsl #16
      28:	0a030000 	beq	c0030 <heap_size+0xa0030>
      2c:	c408050d 	strgt	r0, [r8], #-1293	; 0xfffffaf3
      30:	03000012 	movweq	r0, #18
      34:	99070e0e 	stmdbls	r7, {r1, r2, r3, r9, sl, fp}
      38:	0400000b 	streq	r0, [r0], #-11
      3c:	000bbb07 	andeq	fp, fp, r7, lsl #22
      40:	0b030400 	bleq	c1048 <heap_size+0xa1048>
      44:	7c02050f 	cfstr32vc	mvfx0, [r2], {15}
      48:	0300007a 	movweq	r0, #122	; 0x7a
      4c:	fb071004 	blx	1c4066 <heap_size+0x1a4066>
      50:	0400000b 	streq	r0, [r0], #-11
      54:	07110503 	ldreq	r0, [r1, -r3, lsl #10]
      58:	00000c12 	andeq	r0, r0, r2, lsl ip
      5c:	0c6e0704 	stcleq	7, cr0, [lr], #-16
      60:	07040000 	streq	r0, [r4, -r0]
      64:	00000caa 	andeq	r0, r0, sl, lsr #25
      68:	0cde0704 	ldcleq	7, cr0, [lr], {4}
      6c:	0b030000 	bleq	c0074 <heap_size+0xa0074>
      70:	e1290512 			; <UNDEFINED> instruction: 0xe1290512
      74:	0300007f 	movweq	r0, #127	; 0x7f
      78:	ee07022b 	cdp	2, 0, cr0, cr7, cr11, {1}
      7c:	0400000c 	streq	r0, [r0], #-12
      80:	07052d03 	streq	r2, [r5, -r3, lsl #26]
      84:	00000d45 	andeq	r0, r0, r5, asr #26
      88:	0e140704 	cdpeq	7, 1, cr0, cr4, cr4, {0}
      8c:	03040000 	movweq	r0, #16384	; 0x4000
      90:	1603130c 	strne	r1, [r3], -ip, lsl #6
      94:	e7060514 	smlad	r6, r4, r5, r0
      98:	04000059 	streq	r0, [r0], #-89	; 0xffffffa7
      9c:	00116707 	andseq	r6, r1, r7, lsl #14
      a0:	053e0300 	ldreq	r0, [lr, #-768]!	; 0xfffffd00
      a4:	00117707 	andseq	r7, r1, r7, lsl #14
      a8:	3f030400 	svccc	0x00030400
      ac:	ba140504 	blt	5014c4 <heap_size+0x4e14c4>
      b0:	0300007f 	movweq	r0, #127	; 0x7f
      b4:	2e070319 	mcrcs	3, 0, r0, cr7, cr9, {0}
      b8:	04000012 	streq	r0, [r0], #-18	; 0xffffffee
      bc:	00128007 	andseq	r8, r2, r7
      c0:	019f0300 	orrseq	r0, pc, r0, lsl #6
      c4:	129f0705 	addsne	r0, pc, #1310720	; 0x140000
      c8:	07040000 	streq	r0, [r4, -r0]
      cc:	000012e2 	andeq	r1, r0, r2, ror #5
      d0:	06400304 	strbeq	r0, [r0], -r4, lsl #6
      d4:	00130207 	andseq	r0, r3, r7, lsl #4
      d8:	6c070400 	cfstrsvs	mvf0, [r7], {-0}
      dc:	03000013 	movweq	r0, #19
      e0:	051501ef 	ldreq	r0, [r5, #-495]	; 0xfffffe11
      e4:	0089d213 	addeq	sp, r9, r3, lsl r2
      e8:	f0030400 			; <UNDEFINED> instruction: 0xf0030400
      ec:	06041601 	streq	r1, [r4], -r1, lsl #12
      f0:	4d3f01f4 	ldfmis	f0, [pc, #-976]!	; fffffd28 <__stack+0xf7fffd30>
      f4:	03040000 	movweq	r0, #16384	; 0x4000
      f8:	0704050e 	streq	r0, [r4, -lr, lsl #10]
      fc:	00001422 	andeq	r1, r0, r2, lsr #8
     100:	02030404 	andeq	r0, r3, #4, 8	; 0x4000000
     104:	19200717 	stmdbne	r0!, {r0, r1, r2, r4, r8, r9, sl}
     108:	09030000 	stmdbeq	r3, {}	; <UNPREDICTABLE>
     10c:	87090509 	strhi	r0, [r9, -r9, lsl #10]
     110:	0300005b 	movweq	r0, #91	; 0x5b
     114:	0b05080b 	bleq	142148 <heap_size+0x122148>
     118:	000036e2 	andeq	r3, r0, r2, ror #13
     11c:	04050e03 	streq	r0, [r5], #-3587	; 0xfffff1fd
     120:	00193007 	andseq	r3, r9, r7
     124:	d3070400 	movwle	r0, #29696	; 0x7400
     128:	0400001a 	streq	r0, [r0], #-26	; 0xffffffe6
     12c:	0a040304 	beq	100d44 <heap_size+0xe0d44>
     130:	80ac0205 	adchi	r0, ip, r5, lsl #4
     134:	04030000 	streq	r0, [r3], #-0
     138:	190b0318 	stmdbne	fp, {r3, r4, r8, r9}
     13c:	001d0e07 	andseq	r0, sp, r7, lsl #28
     140:	0d050400 	cfstrseq	mvf0, [r5, #-0]
     144:	00000796 	muleq	r0, r6, r7
     148:	205c0704 	subscs	r0, ip, r4, lsl #14
     14c:	04040000 	streq	r0, [r4], #-0
     150:	00000400 	andeq	r0, r0, r0, lsl #8
     154:	7e3e0005 	cdpvc	0, 3, cr0, cr14, cr5, {0}
     158:	00050000 	andeq	r0, r5, r0
     15c:	00000f22 	andeq	r0, r0, r2, lsr #30
     160:	0bb30005 	bleq	fecc017c <__stack+0xf6cc0184>
     164:	00050000 	andeq	r0, r5, r0
     168:	00003f53 	andeq	r3, r0, r3, asr pc
     16c:	6e350005 	cdpvs	0, 3, cr0, cr5, cr5, {0}
     170:	00050000 	andeq	r0, r5, r0
     174:	0000237d 	andeq	r2, r0, sp, ror r3
     178:	436e0005 	cmnmi	lr, #5
     17c:	00050000 	andeq	r0, r5, r0
     180:	00007773 	andeq	r7, r0, r3, ror r7
     184:	26a10005 	strtcs	r0, [r1], r5
     188:	00050000 	andeq	r0, r5, r0
     18c:	00003bf3 	strdeq	r3, [r0], -r3	; <UNPREDICTABLE>
     190:	45d20005 	ldrbmi	r0, [r2, #5]
     194:	00050000 	andeq	r0, r5, r0
     198:	00008b05 	andeq	r8, r0, r5, lsl #22
     19c:	05320005 	ldreq	r0, [r2, #-5]!
     1a0:	00050000 	andeq	r0, r5, r0
     1a4:	0000667b 	andeq	r6, r0, fp, ror r6
     1a8:	81c50005 	bichi	r0, r5, r5
     1ac:	00050000 	andeq	r0, r5, r0
     1b0:	000024c3 	andeq	r2, r0, r3, asr #9
     1b4:	05f70005 	ldrbeq	r0, [r7, #5]!
     1b8:	00050000 	andeq	r0, r5, r0
     1bc:	00002929 	andeq	r2, r0, r9, lsr #18
     1c0:	255a0005 	ldrbcs	r0, [sl, #-5]
     1c4:	00050000 	andeq	r0, r5, r0
     1c8:	00001ef2 	strdeq	r1, [r0], -r2
     1cc:	2a6e0005 	bcs	1b801e8 <_end+0xb801e8>
     1d0:	00050000 	andeq	r0, r5, r0
     1d4:	000072b8 			; <UNDEFINED> instruction: 0x000072b8
     1d8:	4e6e0005 	cdpmi	0, 6, cr0, cr14, cr5, {0}
     1dc:	00050000 	andeq	r0, r5, r0
     1e0:	00005ccd 	andeq	r5, r0, sp, asr #25
     1e4:	62d80005 	sbcsvs	r0, r8, #5
     1e8:	00050000 	andeq	r0, r5, r0
     1ec:	00001053 	andeq	r1, r0, r3, asr r0
     1f0:	593f0005 	ldmdbpl	pc!, {r0, r2}	; <UNPREDICTABLE>
     1f4:	00050000 	andeq	r0, r5, r0
     1f8:	00005147 	andeq	r5, r0, r7, asr #2
     1fc:	57990005 	ldrpl	r0, [r9, r5]
     200:	00050000 	andeq	r0, r5, r0
     204:	00001878 	andeq	r1, r0, r8, ror r8
     208:	07650005 	strbeq	r0, [r5, -r5]!
     20c:	00050000 	andeq	r0, r5, r0
     210:	000032de 	ldrdeq	r3, [r0], -lr
     214:	2ae60005 	bcs	ff980230 <__stack+0xf7980238>
     218:	00050000 	andeq	r0, r5, r0
     21c:	0000563b 	andeq	r5, r0, fp, lsr r6
     220:	6ee00005 	cdpvs	0, 14, cr0, cr0, cr5, {0}
     224:	00050000 	andeq	r0, r5, r0
     228:	000054aa 	andeq	r5, r0, sl, lsr #9
     22c:	65ba0005 	ldrvs	r0, [sl, #5]!
     230:	00050000 	andeq	r0, r5, r0
     234:	00001d79 	andeq	r1, r0, r9, ror sp
     238:	52270005 	eorpl	r0, r7, #5
     23c:	00050000 	andeq	r0, r5, r0
     240:	000007bf 			; <UNDEFINED> instruction: 0x000007bf
     244:	0a2d0005 	beq	b40260 <heap_size+0xb20260>
     248:	00050000 	andeq	r0, r5, r0
     24c:	000068d9 	ldrdeq	r6, [r0], -r9
     250:	4e3e0005 	cdpmi	0, 3, cr0, cr14, cr5, {0}
     254:	00050000 	andeq	r0, r5, r0
     258:	000057e3 	andeq	r5, r0, r3, ror #15
     25c:	3f750005 	svccc	0x00750005
     260:	00050000 	andeq	r0, r5, r0
     264:	0000803b 	andeq	r8, r0, fp, lsr r0
     268:	8d8e0005 	stchi	0, cr0, [lr, #20]
     26c:	00050000 	andeq	r0, r5, r0
     270:	0000188d 	andeq	r1, r0, sp, lsl #17
     274:	85090005 	strhi	r0, [r9, #-5]
     278:	00050000 	andeq	r0, r5, r0
     27c:	00004692 	muleq	r0, r2, r6
     280:	8d520005 	ldclhi	0, cr0, [r2, #-20]	; 0xffffffec
     284:	00050000 	andeq	r0, r5, r0
     288:	00001627 	andeq	r1, r0, r7, lsr #12
     28c:	65470005 	strbvs	r0, [r7, #-5]
     290:	00050000 	andeq	r0, r5, r0
     294:	00006e70 	andeq	r6, r0, r0, ror lr
     298:	44680005 	strbtmi	r0, [r8], #-5
     29c:	00050000 	andeq	r0, r5, r0
     2a0:	000017fe 	strdeq	r1, [r0], -lr
     2a4:	650a0005 	strvs	r0, [sl, #-5]
     2a8:	00050000 	andeq	r0, r5, r0
     2ac:	0000534d 	andeq	r5, r0, sp, asr #6
     2b0:	0c0c0005 	stceq	0, cr0, [ip], {5}
     2b4:	00050000 	andeq	r0, r5, r0
     2b8:	0000419d 	muleq	r0, sp, r1
     2bc:	82fc0005 	rscshi	r0, ip, #5
     2c0:	00050000 	andeq	r0, r5, r0
     2c4:	00005e85 	andeq	r5, r0, r5, lsl #29
     2c8:	2c030005 	stccs	0, cr0, [r3], {5}
     2cc:	00050000 	andeq	r0, r5, r0
     2d0:	00007167 	andeq	r7, r0, r7, ror #2
     2d4:	71830005 	orrvc	r0, r3, r5
     2d8:	00050000 	andeq	r0, r5, r0
     2dc:	00003ca4 	andeq	r3, r0, r4, lsr #25
     2e0:	31400005 	cmpcc	r0, r5
     2e4:	00050000 	andeq	r0, r5, r0
     2e8:	00002f8c 	andeq	r2, r0, ip, lsl #31
     2ec:	55660005 	strbpl	r0, [r6, #-5]!
     2f0:	00050000 	andeq	r0, r5, r0
     2f4:	000063d6 	ldrdeq	r6, [r0], -r6	; <UNPREDICTABLE>
     2f8:	8d3b0005 	ldchi	0, cr0, [fp, #-20]!	; 0xffffffec
     2fc:	00050000 	andeq	r0, r5, r0
     300:	000087d3 	ldrdeq	r8, [r0], -r3
     304:	5e150005 	cdppl	0, 1, cr0, cr5, cr5, {0}
     308:	00050000 	andeq	r0, r5, r0
     30c:	00000559 	andeq	r0, r0, r9, asr r5
     310:	4a080005 	bmi	20032c <heap_size+0x1e032c>
     314:	00050000 	andeq	r0, r5, r0
     318:	00008481 	andeq	r8, r0, r1, lsl #9
     31c:	841a0005 	ldrhi	r0, [sl], #-5
     320:	00050000 	andeq	r0, r5, r0
     324:	00000323 	andeq	r0, r0, r3, lsr #6
     328:	873b0005 	ldrhi	r0, [fp, -r5]!
     32c:	00050000 	andeq	r0, r5, r0
     330:	0000413d 	andeq	r4, r0, sp, lsr r1
     334:	592d0005 	pushpl	{r0, r2}
     338:	00050000 	andeq	r0, r5, r0
     33c:	00006285 	andeq	r6, r0, r5, lsl #5
     340:	49210005 	stmdbmi	r1!, {r0, r2}
     344:	00050000 	andeq	r0, r5, r0
     348:	00004be2 	andeq	r4, r0, r2, ror #23
     34c:	0e980005 	cdpeq	0, 9, cr0, cr8, cr5, {0}
     350:	00050000 	andeq	r0, r5, r0
     354:	00004e2c 	andeq	r4, r0, ip, lsr #28
     358:	11a60005 			; <UNDEFINED> instruction: 0x11a60005
     35c:	00050000 	andeq	r0, r5, r0
     360:	000083eb 	andeq	r8, r0, fp, ror #7
     364:	03ab0005 			; <UNDEFINED> instruction: 0x03ab0005
     368:	00050000 	andeq	r0, r5, r0
     36c:	000000bb 	strheq	r0, [r0], -fp
     370:	8cb30005 	ldchi	0, cr0, [r3], #20
     374:	00050000 	andeq	r0, r5, r0
     378:	0000184a 	andeq	r1, r0, sl, asr #16
     37c:	07060005 	streq	r0, [r6, -r5]
     380:	00050000 	andeq	r0, r5, r0
     384:	000077f3 	strdeq	r7, [r0], -r3
     388:	35cf0005 	strbcc	r0, [pc, #5]	; 395 <_read+0x71>
     38c:	00050000 	andeq	r0, r5, r0
     390:	00007c2f 	andeq	r7, r0, pc, lsr #24
     394:	3e5a0005 	cdpcc	0, 5, cr0, cr10, cr5, {0}
     398:	00050000 	andeq	r0, r5, r0
     39c:	00007a67 	andeq	r7, r0, r7, ror #20
     3a0:	42490005 	submi	r0, r9, #5
     3a4:	00050000 	andeq	r0, r5, r0
     3a8:	000047c1 	andeq	r4, r0, r1, asr #15
     3ac:	2e7d0005 	cdpcs	0, 7, cr0, cr13, cr5, {0}
     3b0:	00050000 	andeq	r0, r5, r0
     3b4:	000027b0 			; <UNDEFINED> instruction: 0x000027b0
     3b8:	40080005 	andmi	r0, r8, r5
     3bc:	00050000 	andeq	r0, r5, r0
     3c0:	00003a6f 	andeq	r3, r0, pc, ror #20
     3c4:	3b7e0005 	blcc	1f803e0 <_end+0xf803e0>
     3c8:	00050000 	andeq	r0, r5, r0
     3cc:	00005f26 	andeq	r5, r0, r6, lsr #30
     3d0:	849a0005 	ldrhi	r0, [sl], #5
     3d4:	00050000 	andeq	r0, r5, r0
     3d8:	00002ff6 	strdeq	r2, [r0], -r6
     3dc:	89e90005 	stmibhi	r9!, {r0, r2}^
     3e0:	00050000 	andeq	r0, r5, r0
     3e4:	000037cf 	andeq	r3, r0, pc, asr #15
     3e8:	22330005 	eorscs	r0, r3, #5
     3ec:	00050000 	andeq	r0, r5, r0
     3f0:	0000102f 	andeq	r1, r0, pc, lsr #32
     3f4:	1f060005 	svcne	0x00060005
     3f8:	00050000 	andeq	r0, r5, r0
     3fc:	000042b8 			; <UNDEFINED> instruction: 0x000042b8
     400:	73380005 	teqvc	r8, #5
     404:	00050000 	andeq	r0, r5, r0
     408:	00003dcd 	andeq	r3, r0, sp, asr #27
     40c:	367b0005 	ldrbtcc	r0, [fp], -r5
     410:	00050000 	andeq	r0, r5, r0
     414:	00000a01 	andeq	r0, r0, r1, lsl #20
     418:	23ea0005 	mvncs	r0, #5
     41c:	00050000 	andeq	r0, r5, r0
     420:	000075f3 	strdeq	r7, [r0], -r3
     424:	3cdb0005 	ldclcc	0, cr0, [fp], {5}
     428:	00050000 	andeq	r0, r5, r0
     42c:	00003191 	muleq	r0, r1, r1
     430:	62380005 	eorsvs	r0, r8, #5
     434:	00050000 	andeq	r0, r5, r0
     438:	00004451 	andeq	r4, r0, r1, asr r4
     43c:	7ed00005 	cdpvc	0, 13, cr0, cr0, cr5, {0}
     440:	00050000 	andeq	r0, r5, r0
     444:	000070ad 	andeq	r7, r0, sp, lsr #1
     448:	66ec0005 	strbtvs	r0, [ip], r5
     44c:	00050000 	andeq	r0, r5, r0
     450:	000012d3 	ldrdeq	r1, [r0], -r3
     454:	26830005 	strcs	r0, [r3], r5
     458:	00050000 	andeq	r0, r5, r0
     45c:	00007fc9 	andeq	r7, r0, r9, asr #31
     460:	17210005 	strne	r0, [r1, -r5]!
     464:	00050000 	andeq	r0, r5, r0
     468:	00000f0a 	andeq	r0, r0, sl, lsl #30
     46c:	12230005 	eorne	r0, r3, #5
     470:	00050000 	andeq	r0, r5, r0
     474:	00001366 	andeq	r1, r0, r6, ror #6
     478:	1e0c0005 	cdpne	0, 0, cr0, cr12, cr5, {0}
     47c:	00050000 	andeq	r0, r5, r0
     480:	00004c33 	andeq	r4, r0, r3, lsr ip
     484:	13a40005 			; <UNDEFINED> instruction: 0x13a40005
     488:	00050000 	andeq	r0, r5, r0
     48c:	00004c97 	muleq	r0, r7, ip
     490:	015e0005 	cmpeq	lr, r5
     494:	00050000 	andeq	r0, r5, r0
     498:	000056a8 	andeq	r5, r0, r8, lsr #13
     49c:	3f3b0005 	svccc	0x003b0005
     4a0:	00050000 	andeq	r0, r5, r0
     4a4:	00005540 	andeq	r5, r0, r0, asr #10
     4a8:	4df10005 	ldclmi	0, cr0, [r1, #20]!
     4ac:	00050000 	andeq	r0, r5, r0
     4b0:	0000380d 	andeq	r3, r0, sp, lsl #16
     4b4:	4b000005 	blmi	4d0 <main+0x10>
     4b8:	00050000 	andeq	r0, r5, r0
     4bc:	00004622 	andeq	r4, r0, r2, lsr #12
     4c0:	549c0005 	ldrpl	r0, [ip], #5
     4c4:	00050000 	andeq	r0, r5, r0
     4c8:	00005403 	andeq	r5, r0, r3, lsl #8
     4cc:	63880005 	orrvs	r0, r8, #5
     4d0:	00050000 	andeq	r0, r5, r0
     4d4:	00001e35 	andeq	r1, r0, r5, lsr lr
     4d8:	25bf0005 	ldrcs	r0, [pc, #5]!	; 4e5 <main+0x25>
     4dc:	00050000 	andeq	r0, r5, r0
     4e0:	000021fc 	strdeq	r2, [r0], -ip
     4e4:	49330005 	ldmdbmi	r3!, {r0, r2}
     4e8:	00050000 	andeq	r0, r5, r0
     4ec:	00002c68 	andeq	r2, r0, r8, ror #24
     4f0:	32260005 	eorcc	r0, r6, #5
     4f4:	00050000 	andeq	r0, r5, r0
     4f8:	0000302c 	andeq	r3, r0, ip, lsr #32
     4fc:	07aa0005 	streq	r0, [sl, r5]!
     500:	00050000 	andeq	r0, r5, r0
     504:	00003de6 	andeq	r3, r0, r6, ror #27
     508:	5a520005 	bpl	1480524 <_end+0x480524>
     50c:	00050000 	andeq	r0, r5, r0
     510:	00008cd9 	ldrdeq	r8, [r0], -r9
     514:	71f70005 	mvnsvc	r0, r5
     518:	00050000 	andeq	r0, r5, r0
     51c:	00005f9e 	muleq	r0, lr, pc	; <UNPREDICTABLE>
     520:	8b5a0005 	blhi	168053c <_end+0x68053c>
     524:	00050000 	andeq	r0, r5, r0
     528:	000045bd 			; <UNDEFINED> instruction: 0x000045bd
     52c:	061b0005 	ldreq	r0, [fp], -r5
     530:	00050000 	andeq	r0, r5, r0
     534:	0000799d 	muleq	r0, sp, r9
     538:	856a0005 	strbhi	r0, [sl, #-5]!
     53c:	00050000 	andeq	r0, r5, r0
     540:	00008394 	muleq	r0, r4, r3
     544:	3d0c0005 	stccc	0, cr0, [ip, #-20]	; 0xffffffec
     548:	00050000 	andeq	r0, r5, r0
     54c:	0000530f 	andeq	r5, r0, pc, lsl #6
     550:	2f2e0005 	svccs	0x002e0005
     554:	00050000 	andeq	r0, r5, r0
     558:	000087f9 	strdeq	r8, [r0], -r9
     55c:	70030005 	andvc	r0, r3, r5
     560:	00050000 	andeq	r0, r5, r0
     564:	000009cd 	andeq	r0, r0, sp, asr #19
     568:	83760005 	cmnhi	r6, #5
     56c:	00050000 	andeq	r0, r5, r0
     570:	0000085a 	andeq	r0, r0, sl, asr r8
     574:	5a100005 	bpl	400590 <heap_size+0x3e0590>
     578:	00050000 	andeq	r0, r5, r0
     57c:	00002815 	andeq	r2, r0, r5, lsl r8
     580:	52d00005 	sbcspl	r0, r0, #5
     584:	00050000 	andeq	r0, r5, r0
     588:	00000068 	andeq	r0, r0, r8, rrx
     58c:	7e490005 	cdpvc	0, 4, cr0, cr9, cr5, {0}
     590:	00050000 	andeq	r0, r5, r0
     594:	00003057 	andeq	r3, r0, r7, asr r0
     598:	745a0005 	ldrbvc	r0, [sl], #-5
     59c:	00050000 	andeq	r0, r5, r0
     5a0:	000044d2 	ldrdeq	r4, [r0], -r2
     5a4:	47940005 	ldrmi	r0, [r4, r5]
     5a8:	00050000 	andeq	r0, r5, r0
     5ac:	000060f7 	strdeq	r6, [r0], -r7
     5b0:	34ee0005 	strbtcc	r0, [lr], #5
     5b4:	00050000 	andeq	r0, r5, r0
     5b8:	00004bb3 			; <UNDEFINED> instruction: 0x00004bb3
     5bc:	43510005 	cmpmi	r1, #5
     5c0:	00050000 	andeq	r0, r5, r0
     5c4:	0000602d 	andeq	r6, r0, sp, lsr #32
     5c8:	0e310005 	cdpeq	0, 3, cr0, cr1, cr5, {0}
     5cc:	00050000 	andeq	r0, r5, r0
     5d0:	00005bc5 	andeq	r5, r0, r5, asr #23
     5d4:	1c700005 	ldclne	0, cr0, [r0], #-20	; 0xffffffec
     5d8:	00050000 	andeq	r0, r5, r0
     5dc:	00000cae 	andeq	r0, r0, lr, lsr #25
     5e0:	08260005 	stmdaeq	r6!, {r0, r2}
     5e4:	00050000 	andeq	r0, r5, r0
     5e8:	000071cf 	andeq	r7, r0, pc, asr #3
     5ec:	07d90005 	ldrbeq	r0, [r9, r5]
     5f0:	00050000 	andeq	r0, r5, r0
     5f4:	0000516e 	andeq	r5, r0, lr, ror #2
     5f8:	43bd0005 			; <UNDEFINED> instruction: 0x43bd0005
     5fc:	00050000 	andeq	r0, r5, r0
     600:	00007eed 	andeq	r7, r0, sp, ror #29
     604:	85c90005 	strbhi	r0, [r9, #5]
     608:	00050000 	andeq	r0, r5, r0
     60c:	00003473 	andeq	r3, r0, r3, ror r4
     610:	78370005 	ldmdavc	r7!, {r0, r2}
     614:	00050000 	andeq	r0, r5, r0
     618:	00008441 	andeq	r8, r0, r1, asr #8
     61c:	11710005 	cmnne	r1, r5
     620:	00050000 	andeq	r0, r5, r0
     624:	00000ed9 	ldrdeq	r0, [r0], -r9
     628:	4d4f0005 	stclmi	0, cr0, [pc, #-20]	; 61c <std+0xc>
     62c:	00050000 	andeq	r0, r5, r0
     630:	00002495 	muleq	r0, r5, r4
     634:	04c90005 	strbeq	r0, [r9], #5
     638:	00050000 	andeq	r0, r5, r0
     63c:	00000a91 	muleq	r0, r1, sl
     640:	4d810005 	stcmi	0, cr0, [r1, #20]
     644:	00050000 	andeq	r0, r5, r0
     648:	00007c69 	andeq	r7, r0, r9, ror #24
     64c:	00d10005 	sbcseq	r0, r1, r5
     650:	00050000 	andeq	r0, r5, r0
     654:	00005485 	andeq	r5, r0, r5, lsl #9
     658:	02250005 	eoreq	r0, r5, #5
     65c:	00050000 	andeq	r0, r5, r0
     660:	0000541a 	andeq	r5, r0, sl, lsl r4
     664:	89680005 	stmdbhi	r8!, {r0, r2}^
     668:	00050000 	andeq	r0, r5, r0
     66c:	000065ff 	strdeq	r6, [r0], -pc	; <UNPREDICTABLE>
     670:	1f370005 	svcne	0x00370005
     674:	00050000 	andeq	r0, r5, r0
     678:	00006e09 	andeq	r6, r0, r9, lsl #28
     67c:	3c8c0005 	stccc	0, cr0, [ip], {5}
     680:	00050000 	andeq	r0, r5, r0
     684:	00003550 	andeq	r3, r0, r0, asr r5
     688:	17490005 	strbne	r0, [r9, -r5]
     68c:	00050000 	andeq	r0, r5, r0
     690:	00006c0d 	andeq	r6, r0, sp, lsl #24
     694:	4cf10005 	ldclmi	0, cr0, [r1], #20
     698:	00050000 	andeq	r0, r5, r0
     69c:	00001788 	andeq	r1, r0, r8, lsl #15
     6a0:	256d0005 	strbcs	r0, [sp, #-5]!
     6a4:	00050000 	andeq	r0, r5, r0
     6a8:	0000460a 	andeq	r4, r0, sl, lsl #12
     6ac:	156e0005 	strbne	r0, [lr, #-5]!
     6b0:	00050000 	andeq	r0, r5, r0
     6b4:	0000176d 	andeq	r1, r0, sp, ror #14
     6b8:	5c570005 	mrrcpl	0, 0, r0, r7, cr5
     6bc:	00050000 	andeq	r0, r5, r0
     6c0:	00002d94 	muleq	r0, r4, sp
     6c4:	402f0005 	eormi	r0, pc, r5
     6c8:	00050000 	andeq	r0, r5, r0
     6cc:	000006f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     6d0:	351a0005 	ldrcc	r0, [sl, #-5]
     6d4:	00050000 	andeq	r0, r5, r0
     6d8:	00001274 	andeq	r1, r0, r4, ror r2
     6dc:	046d0005 	strbteq	r0, [sp], #-5
     6e0:	00050000 	andeq	r0, r5, r0
     6e4:	00006338 	andeq	r6, r0, r8, lsr r3
     6e8:	56560005 	ldrbpl	r0, [r6], -r5
     6ec:	00050000 	andeq	r0, r5, r0
     6f0:	00000780 	andeq	r0, r0, r0, lsl #15
     6f4:	79530005 	ldmdbvc	r3, {r0, r2}^
     6f8:	00050000 	andeq	r0, r5, r0
     6fc:	00001fd6 	ldrdeq	r1, [r0], -r6
     700:	84520005 	ldrbhi	r0, [r2], #-5
     704:	00050000 	andeq	r0, r5, r0
     708:	00003889 	andeq	r3, r0, r9, lsl #17
     70c:	59750005 	ldmdbpl	r5!, {r0, r2}^
     710:	00050000 	andeq	r0, r5, r0
     714:	000017cc 	andeq	r1, r0, ip, asr #15
     718:	3f110005 	svccc	0x00110005
     71c:	00050000 	andeq	r0, r5, r0
     720:	0000731f 	andeq	r7, r0, pc, lsl r3
     724:	25e60005 	strbcs	r0, [r6, #5]!
     728:	00050000 	andeq	r0, r5, r0
     72c:	000000a0 	andeq	r0, r0, r0, lsr #1
     730:	282b0005 	stmdacs	fp!, {r0, r2}
     734:	00050000 	andeq	r0, r5, r0
     738:	000001aa 	andeq	r0, r0, sl, lsr #3
     73c:	50730005 	rsbspl	r0, r3, r5
     740:	00050000 	andeq	r0, r5, r0
     744:	00003e9c 	muleq	r0, ip, lr
     748:	894f0005 	stmdbhi	pc, {r0, r2}^	; <UNPREDICTABLE>
     74c:	00050000 	andeq	r0, r5, r0
     750:	00000fdb 	ldrdeq	r0, [r0], -fp
     754:	44bf0005 	ldrtmi	r0, [pc], #5	; 75c <__sfp+0x5c>
     758:	00050000 	andeq	r0, r5, r0
     75c:	00002dc4 	andeq	r2, r0, r4, asr #27
     760:	2e300005 	cdpcs	0, 3, cr0, cr0, cr5, {0}
     764:	00050000 	andeq	r0, r5, r0
     768:	00000d91 	muleq	r0, r1, sp
     76c:	38ba0005 	ldmcc	sl!, {r0, r2}
     770:	00050000 	andeq	r0, r5, r0
     774:	00002339 	andeq	r2, r0, r9, lsr r3
     778:	62630005 	rsbvs	r0, r3, #5
     77c:	00050000 	andeq	r0, r5, r0
     780:	0000065a 	andeq	r0, r0, sl, asr r6
     784:	26200005 	strtcs	r0, [r0], -r5
     788:	00050000 	andeq	r0, r5, r0
     78c:	000041d2 	ldrdeq	r4, [r0], -r2
     790:	52760005 	rsbspl	r0, r6, #5
     794:	00050000 	andeq	r0, r5, r0
     798:	00005ef1 	strdeq	r5, [r0], -r1
     79c:	151e0005 	ldrne	r0, [lr, #-5]
     7a0:	00050000 	andeq	r0, r5, r0
     7a4:	00004fad 	andeq	r4, r0, sp, lsr #31
     7a8:	49eb0005 	stmibmi	fp!, {r0, r2}^
     7ac:	00050000 	andeq	r0, r5, r0
     7b0:	00004e5b 	andeq	r4, r0, fp, asr lr
     7b4:	5f340005 	svcpl	0x00340005
     7b8:	00050000 	andeq	r0, r5, r0
     7bc:	00003d5e 	andeq	r3, r0, lr, asr sp
     7c0:	56e60005 	strbtpl	r0, [r6], r5
     7c4:	00050000 	andeq	r0, r5, r0
     7c8:	00005ac7 	andeq	r5, r0, r7, asr #21
     7cc:	0eab0005 	cdpeq	0, 10, cr0, cr11, cr5, {0}
     7d0:	00050000 	andeq	r0, r5, r0
     7d4:	00008ced 	andeq	r8, r0, sp, ror #25
     7d8:	68a00005 	stmiavs	r0!, {r0, r2}
     7dc:	00050000 	andeq	r0, r5, r0
     7e0:	0000797b 	andeq	r7, r0, fp, ror r9
     7e4:	72060005 	andvc	r0, r6, #5
     7e8:	00050000 	andeq	r0, r5, r0
     7ec:	000085b5 			; <UNDEFINED> instruction: 0x000085b5
     7f0:	81ef0005 	mvnhi	r0, r5
     7f4:	00050000 	andeq	r0, r5, r0
     7f8:	00001328 	andeq	r1, r0, r8, lsr #6
     7fc:	70830005 	addvc	r0, r3, r5
     800:	00050000 	andeq	r0, r5, r0
     804:	00008919 	andeq	r8, r0, r9, lsl r9
     808:	0bc50005 	bleq	ff140824 <__stack+0xf714082c>
     80c:	00050000 	andeq	r0, r5, r0
     810:	00004815 	andeq	r4, r0, r5, lsl r8
     814:	81380005 	teqhi	r8, r5
     818:	00050000 	andeq	r0, r5, r0
     81c:	00001ccf 	andeq	r1, r0, pc, asr #25
     820:	7da10005 	stcvc	0, cr0, [r1, #20]!
     824:	00050000 	andeq	r0, r5, r0
     828:	00008db5 			; <UNDEFINED> instruction: 0x00008db5
     82c:	64600005 	strbtvs	r0, [r0], #-5
     830:	00050000 	andeq	r0, r5, r0
     834:	0000037c 	andeq	r0, r0, ip, ror r3
     838:	714c0005 	cmpvc	ip, r5
     83c:	00050000 	andeq	r0, r5, r0
     840:	0000825e 	andeq	r8, r0, lr, asr r2
     844:	33bd0005 			; <UNDEFINED> instruction: 0x33bd0005
     848:	00050000 	andeq	r0, r5, r0
     84c:	0000544a 	andeq	r5, r0, sl, asr #8
     850:	080f0005 	stmdaeq	pc, {r0, r2}	; <UNPREDICTABLE>
     854:	00050000 	andeq	r0, r5, r0
     858:	000006d3 	ldrdeq	r0, [r0], -r3
     85c:	6fe50005 	svcvs	0x00e50005
     860:	00050000 	andeq	r0, r5, r0
     864:	000016a8 	andeq	r1, r0, r8, lsr #13
     868:	748f0005 	strvc	r0, [pc], #5	; 870 <malloc+0xc>
     86c:	00050000 	andeq	r0, r5, r0
     870:	00006174 	andeq	r6, r0, r4, ror r1
     874:	3e3c0005 	cdpcc	0, 3, cr0, cr12, cr5, {0}
     878:	00050000 	andeq	r0, r5, r0
     87c:	0000833c 	andeq	r8, r0, ip, lsr r3
     880:	49610005 	stmdbmi	r1!, {r0, r2}^
     884:	00050000 	andeq	r0, r5, r0
     888:	00006c6c 	andeq	r6, r0, ip, ror #24
     88c:	31d10005 	bicscc	r0, r1, r5
     890:	00050000 	andeq	r0, r5, r0
     894:	0000566f 	andeq	r5, r0, pc, ror #12
     898:	33190005 	tstcc	r9, #5
     89c:	00050000 	andeq	r0, r5, r0
     8a0:	00003436 	andeq	r3, r0, r6, lsr r4
     8a4:	12b10005 	adcsne	r0, r1, #5
     8a8:	00050000 	andeq	r0, r5, r0
     8ac:	00007eac 	andeq	r7, r0, ip, lsr #29
     8b0:	65920005 	ldrvs	r0, [r2, #5]
     8b4:	00050000 	andeq	r0, r5, r0
     8b8:	00004b3b 	andeq	r4, r0, fp, lsr fp
     8bc:	05450005 	strbeq	r0, [r5, #-5]
     8c0:	00050000 	andeq	r0, r5, r0
     8c4:	000063af 	andeq	r6, r0, pc, lsr #7
     8c8:	4a810005 	bmi	fe0408e4 <__stack+0xf60408ec>
     8cc:	00050000 	andeq	r0, r5, r0
     8d0:	000067c0 	andeq	r6, r0, r0, asr #15
     8d4:	83570005 	cmphi	r7, #5
     8d8:	00050000 	andeq	r0, r5, r0
     8dc:	00006dda 	ldrdeq	r6, [r0], -sl
     8e0:	41be0005 			; <UNDEFINED> instruction: 0x41be0005
     8e4:	00050000 	andeq	r0, r5, r0
     8e8:	000002c2 	andeq	r0, r0, r2, asr #5
     8ec:	39b30005 	ldmibcc	r3!, {r0, r2}
     8f0:	00050000 	andeq	r0, r5, r0
     8f4:	0000235e 	andeq	r2, r0, lr, asr r3
     8f8:	293c0005 	ldmdbcs	ip!, {r0, r2}
     8fc:	00050000 	andeq	r0, r5, r0
     900:	00007d16 	andeq	r7, r0, r6, lsl sp
     904:	7fa10005 	svcvc	0x00a10005
     908:	00050000 	andeq	r0, r5, r0
     90c:	00000688 	andeq	r0, r0, r8, lsl #13
     910:	64070005 	strvs	r0, [r7], #-5
     914:	00050000 	andeq	r0, r5, r0
     918:	00007c11 	andeq	r7, r0, r1, lsl ip
     91c:	6d2f0005 	stcvs	0, cr0, [pc, #-20]!	; 910 <_free_r+0x7c>
     920:	00050000 	andeq	r0, r5, r0
     924:	000086c6 	andeq	r8, r0, r6, asr #13
     928:	8b270005 	blhi	9c0944 <heap_size+0x9a0944>
     92c:	00050000 	andeq	r0, r5, r0
     930:	000010a6 	andeq	r1, r0, r6, lsr #1
     934:	07570005 	ldrbeq	r0, [r7, -r5]
     938:	00050000 	andeq	r0, r5, r0
     93c:	00006472 	andeq	r6, r0, r2, ror r4
     940:	68cb0005 	stmiavs	fp, {r0, r2}^
     944:	00050000 	andeq	r0, r5, r0
     948:	000027dc 	ldrdeq	r2, [r0], -ip
     94c:	04940005 	ldreq	r0, [r4], #5
     950:	00050000 	andeq	r0, r5, r0
     954:	0000561d 	andeq	r5, r0, sp, lsl r6
     958:	4a3e0005 	bmi	f80974 <heap_size+0xf60974>
     95c:	00050000 	andeq	r0, r5, r0
     960:	00001135 	andeq	r1, r0, r5, lsr r1
     964:	649c0005 	ldrvs	r0, [ip], #5
     968:	00050000 	andeq	r0, r5, r0
     96c:	00001043 	andeq	r1, r0, r3, asr #32
     970:	6e260005 	cdpvs	0, 2, cr0, cr6, cr5, {0}
     974:	00050000 	andeq	r0, r5, r0
     978:	00005289 	andeq	r5, r0, r9, lsl #5
     97c:	46650005 	strbtmi	r0, [r5], -r5
     980:	00050000 	andeq	r0, r5, r0
     984:	00006621 	andeq	r6, r0, r1, lsr #12
     988:	6bbc0005 	blvs	fef009a4 <__stack+0xf6f009ac>
     98c:	00050000 	andeq	r0, r5, r0
     990:	00002c9b 	muleq	r0, fp, ip
     994:	4c890005 	stcmi	0, cr0, [r9], {5}
     998:	00050000 	andeq	r0, r5, r0
     99c:	00006bed 	andeq	r6, r0, sp, ror #23
     9a0:	3eba0005 	cdpcc	0, 11, cr0, cr10, cr5, {0}
     9a4:	00050000 	andeq	r0, r5, r0
     9a8:	00005ca3 	andeq	r5, r0, r3, lsr #25
     9ac:	8a0f0005 	bhi	3c09c8 <heap_size+0x3a09c8>
     9b0:	00050000 	andeq	r0, r5, r0
     9b4:	00001caa 	andeq	r1, r0, sl, lsr #25
     9b8:	29bd0005 	ldmibcs	sp!, {r0, r2}
     9bc:	00050000 	andeq	r0, r5, r0
     9c0:	00000091 	muleq	r0, r1, r0
     9c4:	831e0005 	tsthi	lr, #5
     9c8:	00050000 	andeq	r0, r5, r0
     9cc:	000059c3 	andeq	r5, r0, r3, asr #19
     9d0:	2b430005 	blcs	10c09ec <_end+0xc09ec>
     9d4:	00050000 	andeq	r0, r5, r0
     9d8:	00005475 	andeq	r5, r0, r5, ror r4
     9dc:	767e0005 	ldrbtvc	r0, [lr], -r5
     9e0:	00050000 	andeq	r0, r5, r0
     9e4:	000021c1 	andeq	r2, r0, r1, asr #3
     9e8:	7d060005 	stcvc	0, cr0, [r6, #-20]	; 0xffffffec
     9ec:	00050000 	andeq	r0, r5, r0
     9f0:	000071ba 			; <UNDEFINED> instruction: 0x000071ba
     9f4:	3a580005 	bcc	1600a10 <_end+0x600a10>
     9f8:	00050000 	andeq	r0, r5, r0
     9fc:	000022fd 	strdeq	r2, [r0], -sp
     a00:	76ed0005 	strbtvc	r0, [sp], r5
     a04:	00050000 	andeq	r0, r5, r0
     a08:	00002a09 	andeq	r2, r0, r9, lsl #20
     a0c:	014a0005 	cmpeq	sl, r5
     a10:	00050000 	andeq	r0, r5, r0
     a14:	00004a19 	andeq	r4, r0, r9, lsl sl
     a18:	2b530005 	blcs	14c0a34 <_end+0x4c0a34>
     a1c:	00050000 	andeq	r0, r5, r0
     a20:	000064e5 	andeq	r6, r0, r5, ror #9
     a24:	489b0005 	ldmmi	fp, {r0, r2}
     a28:	00050000 	andeq	r0, r5, r0
     a2c:	00004b73 	andeq	r4, r0, r3, ror fp
     a30:	5a7d0005 	bpl	1f40a4c <_end+0xf40a4c>
     a34:	00050000 	andeq	r0, r5, r0
     a38:	0000455a 	andeq	r4, r0, sl, asr r5
     a3c:	23930005 	orrscs	r0, r3, #5
     a40:	00050000 	andeq	r0, r5, r0
     a44:	00000129 	andeq	r0, r0, r9, lsr #2
     a48:	33480005 	movtcc	r0, #32773	; 0x8005
     a4c:	00050000 	andeq	r0, r5, r0
     a50:	00006f1c 	andeq	r6, r0, ip, lsl pc
     a54:	4a630005 	bmi	18c0a70 <_end+0x8c0a70>
     a58:	00050000 	andeq	r0, r5, r0
     a5c:	00004cb3 			; <UNDEFINED> instruction: 0x00004cb3
     a60:	33d00005 	bicscc	r0, r0, #5
     a64:	00050000 	andeq	r0, r5, r0
     a68:	00003b96 	muleq	r0, r6, fp
     a6c:	3e6c0005 	cdpcc	0, 6, cr0, cr12, cr5, {0}
     a70:	00050000 	andeq	r0, r5, r0
     a74:	00002aca 	andeq	r2, r0, sl, asr #21
     a78:	4e870005 	cdpmi	0, 8, cr0, cr7, cr5, {0}
     a7c:	00050000 	andeq	r0, r5, r0
     a80:	00007e02 	andeq	r7, r0, r2, lsl #28
     a84:	57060005 	strpl	r0, [r6, -r5]
     a88:	00050000 	andeq	r0, r5, r0
     a8c:	00006cd1 	ldrdeq	r6, [r0], -r1
     a90:	3bb70005 	blcc	fedc0aac <__stack+0xf6dc0ab4>
     a94:	00050000 	andeq	r0, r5, r0
     a98:	000047e4 	andeq	r4, r0, r4, ror #15
     a9c:	61d20006 	bicsvs	r0, r2, r6
     aa0:	00050000 	andeq	r0, r5, r0
     aa4:	00007e24 	andeq	r7, r0, r4, lsr #28
     aa8:	5db30006 	ldcpl	0, cr0, [r3, #24]!
     aac:	00050000 	andeq	r0, r5, r0
     ab0:	00005f03 	andeq	r5, r0, r3, lsl #30
     ab4:	64390005 	ldrtvs	r0, [r9], #-5
     ab8:	00050000 	andeq	r0, r5, r0
     abc:	00003bcc 	andeq	r3, r0, ip, asr #23
     ac0:	6eab0006 	cdpvs	0, 10, cr0, cr11, cr6, {0}
     ac4:	00050000 	andeq	r0, r5, r0
     ac8:	00007afc 	strdeq	r7, [r0], -ip
     acc:	6f390005 	svcvs	0x00390005
     ad0:	00050000 	andeq	r0, r5, r0
     ad4:	00003c75 	andeq	r3, r0, r5, ror ip
     ad8:	54340005 	ldrtpl	r0, [r4], #-5
     adc:	00050000 	andeq	r0, r5, r0
     ae0:	00005b7d 	andeq	r5, r0, sp, ror fp
     ae4:	4ac90005 	bmi	ff240b00 <__stack+0xf7240b08>
     ae8:	00050000 	andeq	r0, r5, r0
     aec:	000024ae 	andeq	r2, r0, lr, lsr #9
     af0:	0b8e0005 	bleq	fe380b0c <__stack+0xf6380b14>
     af4:	00060000 	andeq	r0, r6, r0
     af8:	00002e73 	andeq	r2, r0, r3, ror lr
     afc:	55ba0006 	ldrpl	r0, [sl, #6]!
     b00:	00060000 	andeq	r0, r6, r0
     b04:	00000e69 	andeq	r0, r0, r9, ror #28
     b08:	5de30005 	stclpl	0, cr0, [r3, #20]!
     b0c:	00050000 	andeq	r0, r5, r0
     b10:	00008616 	andeq	r8, r0, r6, lsl r6
     b14:	13090005 	movwne	r0, #36869	; 0x9005
     b18:	00050000 	andeq	r0, r5, r0
     b1c:	00006b51 	andeq	r6, r0, r1, asr fp
     b20:	3f5e0006 	svccc	0x005e0006
     b24:	00060000 	andeq	r0, r6, r0
     b28:	00005c39 	andeq	r5, r0, r9, lsr ip
     b2c:	81950006 	orrshi	r0, r5, r6
     b30:	00060000 	andeq	r0, r6, r0
     b34:	00007603 	andeq	r7, r0, r3, lsl #12
     b38:	1daa0006 	stcne	0, cr0, [sl, #24]!
     b3c:	00060000 	andeq	r0, r6, r0
     b40:	00006580 	andeq	r6, r0, r0, lsl #11
     b44:	1c4b0006 	mcrrne	0, 0, r0, fp, cr6
     b48:	00060000 	andeq	r0, r6, r0
     b4c:	00002e68 	andeq	r2, r0, r8, ror #28
     b50:	51990006 	orrspl	r0, r9, r6
     b54:	00050000 	andeq	r0, r5, r0
     b58:	00001cb9 			; <UNDEFINED> instruction: 0x00001cb9
     b5c:	42940005 	addsmi	r0, r4, #5
     b60:	00050000 	andeq	r0, r5, r0
     b64:	000080e1 	andeq	r8, r0, r1, ror #1
     b68:	6c580005 	mrrcvs	0, 0, r0, r8, cr5
     b6c:	00060000 	andeq	r0, r6, r0
     b70:	000026e7 	andeq	r2, r0, r7, ror #13
     b74:	3be00006 	blcc	ff800b94 <__stack+0xf7800b9c>
     b78:	00060000 	andeq	r0, r6, r0
     b7c:	0000897f 	andeq	r8, r0, pc, ror r9
     b80:	0c2e0005 	stceq	0, cr0, [lr], #-20	; 0xffffffec
     b84:	00050000 	andeq	r0, r5, r0
     b88:	00002fb2 			; <UNDEFINED> instruction: 0x00002fb2
     b8c:	6c890005 	stcvs	0, cr0, [r9], {5}
     b90:	00050000 	andeq	r0, r5, r0
     b94:	00007922 	andeq	r7, r0, r2, lsr #18
     b98:	00000400 	andeq	r0, r0, r0, lsl #8
     b9c:	4a4d0405 	bmi	1341bb8 <_end+0x341bb8>
     ba0:	06050000 	streq	r0, [r5], -r0
     ba4:	00003867 	andeq	r3, r0, r7, ror #16
     ba8:	20a40705 	adccs	r0, r4, r5, lsl #14
     bac:	08050000 	stmdaeq	r5, {}	; <UNPREDICTABLE>
     bb0:	000053df 	ldrdeq	r5, [r0], -pc	; <UNPREDICTABLE>
     bb4:	62960905 	addsvs	r0, r6, #81920	; 0x14000
     bb8:	04000000 	streq	r0, [r0], #-0
     bbc:	22050000 	andcs	r0, r5, #0
     bc0:	0000356a 	andeq	r3, r0, sl, ror #10
     bc4:	2f772805 	svccs	0x00772805
     bc8:	32050000 	andcc	r0, r5, #0
     bcc:	00001862 	andeq	r1, r0, r2, ror #16
     bd0:	4a983605 	bmi	fe60e3ec <__stack+0xf660e3f4>
     bd4:	39050000 	stmdbcc	r5, {}	; <UNPREDICTABLE>
     bd8:	00002882 	andeq	r2, r0, r2, lsl #17
     bdc:	4dce3c05 	stclmi	12, cr3, [lr, #20]
     be0:	3f050000 	svccc	0x00050000
     be4:	00000bda 	ldrdeq	r0, [r0], -sl
     be8:	77664e05 	strbvc	r4, [r6, -r5, lsl #28]!
     bec:	51050000 	mrspl	r0, (UNDEF: 5)
     bf0:	00003dfd 	strdeq	r3, [r0], -sp
     bf4:	8c305905 			; <UNDEFINED> instruction: 0x8c305905
     bf8:	04000000 	streq	r0, [r0], #-0
     bfc:	4d050000 	stcmi	0, cr0, [r5, #-0]
     c00:	000059fa 	strdeq	r5, [r0], -sl
     c04:	58cb5205 	stmiapl	fp, {r0, r2, r9, ip, lr}^
     c08:	c8050000 	stmdagt	r5, {}	; <UNPREDICTABLE>
     c0c:	00349d03 	eorseq	r9, r4, r3, lsl #26
     c10:	00040000 	andeq	r0, r4, r0
     c14:	1b160500 	blne	58201c <heap_size+0x56201c>
     c18:	0500002a 	streq	r0, [r0, #-42]	; 0xffffffd6
     c1c:	0014ca21 	andseq	ip, r4, r1, lsr #20
     c20:	a9280500 	stmdbge	r8!, {r8, sl}
     c24:	0500007c 	streq	r0, [r0, #-124]	; 0xffffff84
     c28:	5a6a01f9 	bpl	1a81414 <_end+0xa81414>
     c2c:	ff050000 			; <UNDEFINED> instruction: 0xff050000
     c30:	004eb301 	subeq	fp, lr, r1, lsl #6
     c34:	02850500 	addeq	r0, r5, #0, 10
     c38:	00006450 	andeq	r6, r0, r0, asr r4
     c3c:	d1028d05 	tstle	r2, r5, lsl #26
     c40:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
     c44:	1fc00295 	svcne	0x00c00295
     c48:	9b050000 	blls	140c50 <heap_size+0x120c50>
     c4c:	00342502 	eorseq	r2, r4, r2, lsl #10
     c50:	02ab0500 	adceq	r0, fp, #0, 10
     c54:	00002870 	andeq	r2, r0, r0, ror r8
     c58:	e702b105 	str	fp, [r2, -r5, lsl #2]
     c5c:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
     c60:	7b4e02bf 	blvc	1381764 <_end+0x381764>
     c64:	ca050000 	bgt	140c6c <heap_size+0x120c6c>
     c68:	007ae602 	rsbseq	lr, sl, r2, lsl #12
     c6c:	00040000 	andeq	r0, r4, r0
     c70:	01dc0500 	bicseq	r0, ip, r0, lsl #10
     c74:	00000fc9 	andeq	r0, r0, r9, asr #31
     c78:	ca01e206 	bgt	79498 <heap_size+0x59498>
     c7c:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
     c80:	5d4e01e6 	stfple	f0, [lr, #-920]	; 0xfffffc68
     c84:	f6050000 			; <UNDEFINED> instruction: 0xf6050000
     c88:	0058c101 	subseq	ip, r8, r1, lsl #2
     c8c:	01fa0500 	mvnseq	r0, r0, lsl #10
     c90:	00005993 	muleq	r0, r3, r9
     c94:	b4028105 	strlt	r8, [r2], #-261	; 0xfffffefb
     c98:	05000026 	streq	r0, [r0, #-38]	; 0xffffffda
     c9c:	1ec80287 	cdpne	2, 12, cr0, cr8, cr7, {4}
     ca0:	94050000 	strls	r0, [r5], #-0
     ca4:	007f7a02 	rsbseq	r7, pc, r2, lsl #20
     ca8:	00040000 	andeq	r0, r4, r0
     cac:	e41f0500 	ldr	r0, [pc], #-1280	; cb4 <__swbuf+0x8>
     cb0:	0500005a 	streq	r0, [r0, #-90]	; 0xffffffa6
     cb4:	00311320 	eorseq	r1, r1, r0, lsr #6
     cb8:	e8210500 	stmda	r1!, {r8, sl}
     cbc:	05000051 	streq	r0, [r0, #-81]	; 0xffffffaf
     cc0:	00033e25 	andeq	r3, r3, r5, lsr #28
     cc4:	862b0500 	strthi	r0, [fp], -r0, lsl #10
     cc8:	05000077 	streq	r0, [r0, #-119]	; 0xffffff89
     ccc:	0010da45 	andseq	sp, r0, r5, asr #20
     cd0:	15490500 	strbne	r0, [r9, #-1280]	; 0xfffffb00
     cd4:	05000018 	streq	r0, [r0, #-24]	; 0xffffffe8
     cd8:	0070404a 	rsbseq	r4, r0, sl, asr #32
     cdc:	00040000 	andeq	r0, r4, r0
     ce0:	8c090500 	cfstr32hi	mvfx0, [r9], {-0}
     ce4:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
     ce8:	0013490a 	andseq	r4, r3, sl, lsl #18
     cec:	00040000 	andeq	r0, r4, r0
     cf0:	b2060500 	andlt	r0, r6, #0, 10
     cf4:	0500005c 	streq	r0, [r0, #-92]	; 0xffffffa4
     cf8:	0051280f 	subseq	r2, r1, pc, lsl #16
     cfc:	0a1a0500 	beq	682104 <heap_size+0x662104>
     d00:	05000067 	streq	r0, [r0, #-103]	; 0xffffff99
     d04:	0079cb21 	rsbseq	ip, r9, r1, lsr #22
     d08:	882f0500 	stmdahi	pc!, {r8, sl}	; <UNPREDICTABLE>
     d0c:	0500003e 	streq	r0, [r0, #-62]	; 0xffffffc2
     d10:	002e903d 	eoreq	r9, lr, sp, lsr r0
     d14:	aa530500 	bge	14c211c <_end+0x4c211c>
     d18:	0500004d 	streq	r0, [r0, #-77]	; 0xffffffb3
     d1c:	001c266d 	andseq	r2, ip, sp, ror #12
     d20:	018c0500 	orreq	r0, ip, r0, lsl #10
     d24:	00005779 	andeq	r5, r0, r9, ror r7
     d28:	1101a605 	tstne	r1, r5, lsl #12
     d2c:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
     d30:	399801bc 	ldmibcc	r8, {r2, r3, r4, r5, r7, r8}
     d34:	ce050000 	cdpgt	0, 0, cr0, cr5, cr0, {0}
     d38:	004fe801 	subeq	lr, pc, r1, lsl #16
     d3c:	01f40600 	mvnseq	r0, r0, lsl #12
     d40:	000060e9 	andeq	r6, r0, r9, ror #1
     d44:	00000400 	andeq	r0, r0, r0, lsl #8
     d48:	ff018905 			; <UNDEFINED> instruction: 0xff018905
     d4c:	0500005c 	streq	r0, [r0, #-92]	; 0xffffffa4
     d50:	475a018a 	ldrbmi	r0, [sl, -sl, lsl #3]
     d54:	8b050000 	blhi	140d5c <heap_size+0x120d5c>
     d58:	00561101 	subseq	r1, r6, r1, lsl #2
     d5c:	018c0500 	orreq	r0, ip, r0, lsl #10
     d60:	0000648f 	andeq	r6, r0, pc, lsl #9
     d64:	1e018d05 	cdpne	13, 0, cr8, cr1, cr5, {0}
     d68:	0500003a 	streq	r0, [r0, #-58]	; 0xffffffc6
     d6c:	3a1a018e 	bcc	6813ac <heap_size+0x6613ac>
     d70:	8f050000 	svchi	0x00050000
     d74:	0046b001 	subeq	fp, r6, r1
     d78:	01900500 	orrseq	r0, r0, r0, lsl #10
     d7c:	00005cfb 	strdeq	r5, [r0], -fp
     d80:	3e019105 	mvfccs	f1, f5
     d84:	06000057 			; <UNDEFINED> instruction: 0x06000057
     d88:	796a01a1 	stmdbvc	sl!, {r0, r5, r7, r8}^
     d8c:	bb050000 	bllt	140d94 <heap_size+0x120d94>
     d90:	00183e01 	andseq	r3, r8, r1, lsl #28
     d94:	01bc0500 			; <UNDEFINED> instruction: 0x01bc0500
     d98:	00000c6c 	andeq	r0, r0, ip, ror #24
     d9c:	1101bd05 	tstne	r1, r5, lsl #26
     da0:	05000081 	streq	r0, [r0, #-129]	; 0xffffff7f
     da4:	159901be 	ldrne	r0, [r9, #446]	; 0x1be
     da8:	bf050000 	svclt	0x00050000
     dac:	00405501 	subeq	r5, r0, r1, lsl #10
     db0:	01c00500 	biceq	r0, r0, r0, lsl #10
     db4:	00001026 	andeq	r1, r0, r6, lsr #32
     db8:	b601c105 	strlt	ip, [r1], -r5, lsl #2
     dbc:	0500005f 	streq	r0, [r0, #-95]	; 0xffffffa1
     dc0:	69e201c2 	stmibvs	r2!, {r1, r6, r7, r8}^
     dc4:	c3050000 	movwgt	r0, #20480	; 0x5000
     dc8:	0069de01 	rsbeq	sp, r9, r1, lsl #28
     dcc:	01c40500 	biceq	r0, r4, r0, lsl #10
     dd0:	00002513 	andeq	r2, r0, r3, lsl r5
     dd4:	2801c505 	stmdacs	r1, {r0, r2, r8, sl, lr, pc}
     dd8:	05000064 	streq	r0, [r0, #-100]	; 0xffffff9c
     ddc:	250f01c6 	strcs	r0, [pc, #-454]	; c1e <__swbuf_r+0x16>
     de0:	c7050000 	strgt	r0, [r5, -r0]
     de4:	001d2b01 	andseq	r2, sp, r1, lsl #22
     de8:	01c80500 	biceq	r0, r8, r0, lsl #10
     dec:	00002537 	andeq	r2, r0, r7, lsr r5
     df0:	0d01c905 	vstreq.16	s24, [r1, #-10]	; <UNPREDICTABLE>
     df4:	05000081 	streq	r0, [r0, #-129]	; 0xffffff7f
     df8:	6fdc01ca 	svcvs	0x00dc01ca
     dfc:	d2050000 	andle	r0, r5, #0
     e00:	000ef501 	andeq	pc, lr, r1, lsl #10
     e04:	01ee0600 	mvneq	r0, r0, lsl #12
     e08:	00004ab0 			; <UNDEFINED> instruction: 0x00004ab0
     e0c:	cc039c06 	stcgt	12, cr9, [r3], {6}
     e10:	0000004b 	andeq	r0, r0, fp, asr #32
     e14:	05000004 	streq	r0, [r0, #-4]
     e18:	0025d52f 	eoreq	sp, r5, pc, lsr #10
     e1c:	2b300500 	blcs	c02224 <heap_size+0xbe2224>
     e20:	05000063 	streq	r0, [r0, #-99]	; 0xffffff9d
     e24:	00502e31 	subseq	r2, r0, r1, lsr lr
     e28:	e9340500 	ldmdb	r4!, {r8, sl}
     e2c:	0500000d 	streq	r0, [r0, #-13]
     e30:	0022ee37 	eoreq	lr, r2, r7, lsr lr
     e34:	e1380500 	teq	r8, r0, lsl #10
     e38:	05000084 	streq	r0, [r0, #-132]	; 0xffffff7c
     e3c:	00410d3a 	subeq	r0, r1, sl, lsr sp
     e40:	a33b0500 	teqge	fp, #0, 10
     e44:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
     e48:	0024ec3c 	eoreq	lr, r4, ip, lsr ip
     e4c:	f73d0500 			; <UNDEFINED> instruction: 0xf73d0500
     e50:	05000079 	streq	r0, [r0, #-121]	; 0xffffff87
     e54:	000eff40 	andeq	pc, lr, r0, asr #30
     e58:	4f410500 	svcmi	0x00410500
     e5c:	0500000b 	streq	r0, [r0, #-11]
     e60:	00703442 	rsbseq	r3, r0, r2, asr #8
     e64:	8d4c0500 	cfstr64hi	mvdx0, [ip, #-0]
     e68:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
     e6c:	002ed44f 	eoreq	sp, lr, pc, asr #8
     e70:	2c550500 	cfldr64cs	mvdx0, [r5], {-0}
     e74:	05000075 	streq	r0, [r0, #-117]	; 0xffffff8b
     e78:	0061655c 	rsbeq	r6, r1, ip, asr r5
     e7c:	bf5d0500 	svclt	0x005d0500
     e80:	05000073 	streq	r0, [r0, #-115]	; 0xffffff8d
     e84:	0035be69 	eorseq	fp, r5, r9, ror #28
     e88:	776a0500 	strbvc	r0, [sl, -r0, lsl #10]!
     e8c:	05000080 	streq	r0, [r0, #-128]	; 0xffffff80
     e90:	0005a66e 	andeq	sl, r5, lr, ror #12
     e94:	076f0500 	strbeq	r0, [pc, -r0, lsl #10]!
     e98:	05000073 	streq	r0, [r0, #-115]	; 0xffffff8d
     e9c:	00000070 	andeq	r0, r0, r0, ror r0
     ea0:	4d730500 	cfldr64mi	mvdx0, [r3, #-0]
     ea4:	05000073 	streq	r0, [r0, #-115]	; 0xffffff8d
     ea8:	0013e676 	andseq	lr, r3, r6, ror r6
     eac:	fc7d0500 	ldc2l	5, cr0, [sp], #-0
     eb0:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
     eb4:	000dac7e 	andeq	sl, sp, lr, ror ip
     eb8:	077f0500 	ldrbeq	r0, [pc, -r0, lsl #10]!
     ebc:	05000080 	streq	r0, [r0, #-128]	; 0xffffff80
     ec0:	61b30183 			; <UNDEFINED> instruction: 0x61b30183
     ec4:	8a050000 	bhi	140ecc <heap_size+0x120ecc>
     ec8:	00868d01 	addeq	r8, r6, r1, lsl #26
     ecc:	018e0500 	orreq	r0, lr, r0, lsl #10
     ed0:	00005d0b 	andeq	r5, r0, fp, lsl #26
     ed4:	9f018f05 	svcls	0x00018f05
     ed8:	05000025 	streq	r0, [r0, #-37]	; 0xffffffdb
     edc:	52b40192 	adcspl	r0, r4, #-2147483612	; 0x80000024
     ee0:	95050000 	strls	r0, [r5, #-0]
     ee4:	00631401 	rsbeq	r1, r3, r1, lsl #8
     ee8:	01960500 	orrseq	r0, r6, r0, lsl #10
     eec:	00002f5e 	andeq	r2, r0, lr, asr pc
     ef0:	f9019705 			; <UNDEFINED> instruction: 0xf9019705
     ef4:	0500008b 	streq	r0, [r0, #-139]	; 0xffffff75
     ef8:	46ec0199 	usatmi	r0, #12, r9, lsl #3
     efc:	9a050000 	bls	140f04 <heap_size+0x120f04>
     f00:	00812001 	addeq	r2, r1, r1
     f04:	019c0500 	orrseq	r0, ip, r0, lsl #10
     f08:	00008202 	andeq	r8, r0, r2, lsl #4
     f0c:	e9019e05 	stmdb	r1, {r0, r2, r9, sl, fp, ip, pc}
     f10:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
     f14:	1e4901af 	dvfne<illegal precision>p	f0, f1, #10.0
     f18:	b0050000 	andlt	r0, r5, r0
     f1c:	000ff701 	andeq	pc, pc, r1, lsl #14
     f20:	01b10500 			; <UNDEFINED> instruction: 0x01b10500
     f24:	00000573 	andeq	r0, r0, r3, ror r5
     f28:	3001b205 	andcc	fp, r1, r5, lsl #4
     f2c:	0500005b 	streq	r0, [r0, #-91]	; 0xffffffa5
     f30:	328a01b3 	addcc	r0, sl, #-1073741780	; 0xc000002c
     f34:	b5050000 	strlt	r0, [r5, #-0]
     f38:	001d1d01 	andseq	r1, sp, r1, lsl #26
     f3c:	01b60500 			; <UNDEFINED> instruction: 0x01b60500
     f40:	00006611 	andeq	r6, r0, r1, lsl r6
     f44:	d301b705 	movwle	fp, #5893	; 0x1705
     f48:	05000059 	streq	r0, [r0, #-89]	; 0xffffffa7
     f4c:	2e0801ef 	adfcs<illegal precision>z	f0, f0, #10.0
     f50:	fc050000 	stc2	0, cr0, [r5], {-0}
     f54:	00605801 	rsbeq	r5, r0, r1, lsl #16
     f58:	01fd0500 	mvnseq	r0, r0, lsl #10
     f5c:	00004537 	andeq	r4, r0, r7, lsr r5
     f60:	8701fe05 	strhi	pc, [r1, -r5, lsl #28]
     f64:	0500007e 	streq	r0, [r0, #-126]	; 0xffffff82
     f68:	2e4701ff 	mcrcs	1, 2, r0, cr7, cr15, {7}
     f6c:	80050000 	andhi	r0, r5, r0
     f70:	008b3502 	addeq	r3, fp, r2, lsl #10
     f74:	02810500 	addeq	r0, r1, #0, 10
     f78:	00000a46 	andeq	r0, r0, r6, asr #20
     f7c:	ec028205 	sfm	f0, 1, [r2], {5}
     f80:	05000043 	streq	r0, [r0, #-67]	; 0xffffffbd
     f84:	48d40285 	ldmmi	r4, {r0, r2, r7, r9}^
     f88:	8a050000 	bhi	140f90 <heap_size+0x120f90>
     f8c:	0023b502 	eoreq	fp, r3, r2, lsl #10
     f90:	02a00500 	adceq	r0, r0, #0, 10
     f94:	000028af 	andeq	r2, r0, pc, lsr #17
     f98:	1502a705 	strne	sl, [r2, #-1797]	; 0xfffff8fb
     f9c:	05000050 	streq	r0, [r0, #-80]	; 0xffffffb0
     fa0:	83c302b0 	bichi	r0, r3, #176, 4
     fa4:	b6050000 	strlt	r0, [r5], -r0
     fa8:	0058ee02 	subseq	lr, r8, r2, lsl #28
     fac:	02d30500 	sbcseq	r0, r3, #0, 10
     fb0:	00003951 	andeq	r3, r0, r1, asr r9
     fb4:	f002e705 			; <UNDEFINED> instruction: 0xf002e705
     fb8:	05000073 	streq	r0, [r0, #-115]	; 0xffffff8d
     fbc:	426302f6 	rsbmi	r0, r3, #1610612751	; 0x6000000f
     fc0:	fc050000 	stc2	0, cr0, [r5], {-0}
     fc4:	005b0602 	subseq	r0, fp, r2, lsl #12
     fc8:	02fd0500 	rscseq	r0, sp, #0, 10
     fcc:	000080c0 	andeq	r8, r0, r0, asr #1
     fd0:	f1038405 			; <UNDEFINED> instruction: 0xf1038405
     fd4:	05000068 	streq	r0, [r0, #-104]	; 0xffffff98
     fd8:	2d1d038a 	ldccs	3, cr0, [sp, #-552]	; 0xfffffdd8
     fdc:	90050000 	andls	r0, r5, r0
     fe0:	00883a03 	addeq	r3, r8, r3, lsl #20
     fe4:	03910500 	orrseq	r0, r1, #0, 10
     fe8:	00004f12 	andeq	r4, r0, r2, lsl pc
     fec:	fd039805 	stc2	8, cr9, [r3, #-20]	; 0xffffffec
     ff0:	05000076 	streq	r0, [r0, #-118]	; 0xffffff8a
     ff4:	7b130399 	blvc	4c1e60 <heap_size+0x4a1e60>
     ff8:	a0050000 	andge	r0, r5, r0
     ffc:	00307d03 	eorseq	r7, r0, r3, lsl #26
    1000:	03a60500 			; <UNDEFINED> instruction: 0x03a60500
    1004:	00000101 	andeq	r0, r0, r1, lsl #2
    1008:	8903ba05 	stmdbhi	r3, {r0, r2, r9, fp, ip, sp, pc}
    100c:	05000041 	streq	r0, [r0, #-65]	; 0xffffffbf
    1010:	245503db 	ldrbcs	r0, [r5], #-987	; 0xfffffc25
    1014:	dc050000 	stcle	0, cr0, [r5], {-0}
    1018:	004ec303 	subeq	ip, lr, r3, lsl #6
    101c:	03e30500 	mvneq	r0, #0, 10
    1020:	000042e1 	andeq	r4, r0, r1, ror #5
    1024:	f803e405 			; <UNDEFINED> instruction: 0xf803e405
    1028:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
    102c:	2ba003e7 	blcs	fe801fd0 <__stack+0xf6801fd8>
    1030:	f1050000 			; <UNDEFINED> instruction: 0xf1050000
    1034:	003ee403 	eorseq	lr, lr, r3, lsl #8
    1038:	03f20500 	mvnseq	r0, #0, 10
    103c:	000078ac 	andeq	r7, r0, ip, lsr #17
    1040:	3e03fc05 	cdpcc	12, 0, cr15, cr3, cr5, {0}
    1044:	05000069 	streq	r0, [r0, #-105]	; 0xffffff97
    1048:	768e0492 	pkhbtvc	r0, lr, r2, lsl #9
    104c:	94050000 	strls	r0, [r5], #-0
    1050:	007f0404 	rsbseq	r0, pc, r4, lsl #8
    1054:	04960500 	ldreq	r0, [r6], #1280	; 0x500
    1058:	0000864f 	andeq	r8, r0, pc, asr #12
    105c:	5c049705 	stcpl	7, cr9, [r4], {5}
    1060:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
    1064:	8a1e0499 	bhi	7822d0 <heap_size+0x7622d0>
    1068:	a3050000 	movwge	r0, #20480	; 0x5000
    106c:	005fed04 	subseq	lr, pc, r4, lsl #26
    1070:	04a80500 	strteq	r0, [r8], #1280	; 0x500
    1074:	00007d3e 	andeq	r7, r0, lr, lsr sp
    1078:	cb04ad05 	blgt	12c494 <heap_size+0x10c494>
    107c:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
    1080:	497404b0 	ldmdbmi	r4!, {r4, r5, r7, sl}^
    1084:	b4050000 	strlt	r0, [r5], #-0
    1088:	00762804 	rsbseq	r2, r6, r4, lsl #16
    108c:	04b60500 	ldrteq	r0, [r6], #1280	; 0x500
    1090:	00002735 	andeq	r2, r0, r5, lsr r7
    1094:	3b04d905 	blcc	1374b0 <heap_size+0x1174b0>
    1098:	0500000f 	streq	r0, [r0, #-15]
    109c:	722504dd 	eorvc	r0, r5, #-587202560	; 0xdd000000
    10a0:	e1050000 	mrs	r0, (UNDEF: 5)
    10a4:	00063a04 	andeq	r3, r6, r4, lsl #20
    10a8:	04e50500 	strbteq	r0, [r5], #1280	; 0x500
    10ac:	000021a7 	andeq	r2, r0, r7, lsr #3
    10b0:	d404e905 	strle	lr, [r4], #-2309	; 0xfffff6fb
    10b4:	0500005e 	streq	r0, [r0, #-94]	; 0xffffffa2
    10b8:	29cc04ed 	stmibcs	ip, {r0, r2, r3, r5, r6, r7, sl}^
    10bc:	f1050000 			; <UNDEFINED> instruction: 0xf1050000
    10c0:	007a9604 	rsbseq	r9, sl, r4, lsl #12
    10c4:	04f50500 	ldrbteq	r0, [r5], #1280	; 0x500
    10c8:	00008aa3 	andeq	r8, r0, r3, lsr #21
    10cc:	c004fc05 	andgt	pc, r4, r5, lsl #24
    10d0:	05000048 	streq	r0, [r0, #-72]	; 0xffffffb8
    10d4:	0cc604fd 	cfstrdeq	mvd0, [r6], {253}	; 0xfd
    10d8:	fe050000 	cdp2	0, 0, cr0, cr5, cr0, {0}
    10dc:	0063c304 	rsbeq	ip, r3, r4, lsl #6
    10e0:	04ff0500 	ldrbteq	r0, [pc], #1280	; 10e8 <_vfiprintf_r+0x2c>
    10e4:	00004596 	muleq	r0, r6, r5
    10e8:	12058005 	andne	r8, r5, #5
    10ec:	0500004e 	streq	r0, [r0, #-78]	; 0xffffffb2
    10f0:	5e560595 	mrcpl	5, 2, r0, cr6, cr5, {4}
    10f4:	96050000 	strls	r0, [r5], -r0
    10f8:	0086ed05 	addeq	lr, r6, r5, lsl #26
    10fc:	05a80500 	streq	r0, [r8, #1280]!	; 0x500
    1100:	00007752 	andeq	r7, r0, r2, asr r7
    1104:	7005ae05 	andvc	sl, r5, r5, lsl #28
    1108:	05000073 	streq	r0, [r0, #-115]	; 0xffffff8d
    110c:	165b05b1 			; <UNDEFINED> instruction: 0x165b05b1
    1110:	b3050000 	movwlt	r0, #20480	; 0x5000
    1114:	003c0605 	eorseq	r0, ip, r5, lsl #12
    1118:	05b70500 	ldreq	r0, [r7, #1280]!	; 0x500
    111c:	000067ea 	andeq	r6, r0, sl, ror #15
    1120:	3105b905 	tstcc	r5, r5, lsl #18
    1124:	0500003b 	streq	r0, [r0, #-59]	; 0xffffffc5
    1128:	588405bd 	stmpl	r4, {r0, r2, r3, r4, r5, r7, r8, sl}
    112c:	c0050000 	andgt	r0, r5, r0
    1130:	00225b05 	eoreq	r5, r2, r5, lsl #22
    1134:	05c20500 	strbeq	r0, [r2, #1280]	; 0x500
    1138:	00008bb2 			; <UNDEFINED> instruction: 0x00008bb2
    113c:	4605c605 	strmi	ip, [r5], -r5, lsl #12
    1140:	05000002 	streq	r0, [r0, #-2]
    1144:	30c805c8 	sbccc	r0, r8, r8, asr #11
    1148:	ca050000 	bgt	141150 <heap_size+0x121150>
    114c:	0041ed05 	subeq	lr, r1, r5, lsl #26
    1150:	05ce0500 	strbeq	r0, [lr, #1280]	; 0x500
    1154:	00006a10 	andeq	r6, r0, r0, lsl sl
    1158:	aa05d105 	bge	175574 <heap_size+0x155574>
    115c:	05000075 	streq	r0, [r0, #-117]	; 0xffffff8b
    1160:	757505d2 	ldrbvc	r0, [r5, #-1490]!	; 0xfffffa2e
    1164:	04000000 	streq	r0, [r0], #-0
    1168:	28050000 	stmdacs	r5, {}	; <UNPREDICTABLE>
    116c:	00000c46 	andeq	r0, r0, r6, asr #24
    1170:	31723c05 	cmncc	r2, r5, lsl #24
    1174:	04000000 	streq	r0, [r0], #-0
    1178:	27050000 	strcs	r0, [r5, -r0]
    117c:	00005205 	andeq	r5, r0, r5, lsl #4
    1180:	5f6b2805 	svcpl	0x006b2805
    1184:	2a050000 	bcs	14118c <heap_size+0x12118c>
    1188:	00005200 	andeq	r5, r0, r0, lsl #4
    118c:	6a01a106 	bvs	695ac <heap_size+0x495ac>
    1190:	06000079 			; <UNDEFINED> instruction: 0x06000079
    1194:	4ab001ee 	bmi	fec01954 <__stack+0xf6c0195c>
    1198:	8b050000 	blhi	1411a0 <heap_size+0x1211a0>
    119c:	000ba602 	andeq	sl, fp, r2, lsl #12
    11a0:	028c0500 	addeq	r0, ip, #0, 10
    11a4:	00007ad9 	ldrdeq	r7, [r0], -r9
    11a8:	ac028d05 	stcge	13, cr8, [r2], {5}
    11ac:	0500006c 	streq	r0, [r0, #-108]	; 0xffffff94
    11b0:	8151028e 	cmphi	r1, lr, lsl #5
    11b4:	8f050000 	svchi	0x00050000
    11b8:	00359e02 	eorseq	r9, r5, r2, lsl #28
    11bc:	02900500 	addseq	r0, r0, #0, 10
    11c0:	00004d66 	andeq	r4, r0, r6, ror #26
    11c4:	ab029105 	blge	a55e0 <heap_size+0x855e0>
    11c8:	05000036 	streq	r0, [r0, #-54]	; 0xffffffca
    11cc:	36a70292 	ssatcc	r0, #8, r2, lsl #5
    11d0:	93050000 	movwls	r0, #20480	; 0x5000
    11d4:	0060d602 	rsbeq	sp, r0, r2, lsl #12
    11d8:	02940500 	addseq	r0, r4, #0, 10
    11dc:	000067a8 	andeq	r6, r0, r8, lsr #15
    11e0:	01029505 	tsteq	r2, r5, lsl #10
    11e4:	0500006c 	streq	r0, [r0, #-108]	; 0xffffff94
    11e8:	31bf0296 			; <UNDEFINED> instruction: 0x31bf0296
    11ec:	97050000 	strls	r0, [r5, -r0]
    11f0:	006bfc02 	rsbeq	pc, fp, r2, lsl #24
    11f4:	02980500 	addseq	r0, r8, #0, 10
    11f8:	00006ca8 	andeq	r6, r0, r8, lsr #25
    11fc:	d2029905 	andle	r9, r2, #81920	; 0x14000
    1200:	06000054 			; <UNDEFINED> instruction: 0x06000054
    1204:	81d602a6 	bicshi	r0, r6, r6, lsr #5
    1208:	db060000 	blle	181210 <heap_size+0x161210>
    120c:	000e2202 	andeq	r2, lr, r2, lsl #4
    1210:	03910600 	orrseq	r0, r1, #0, 12
    1214:	00004bd3 	ldrdeq	r4, [r0], -r3
    1218:	d8039605 	stmdale	r3, {r0, r2, r9, sl, ip, pc}
    121c:	06000038 			; <UNDEFINED> instruction: 0x06000038
    1220:	4bcc039c 	blmi	ff302098 <__stack+0xf73020a0>
    1224:	a1050000 	mrsge	r0, (UNDEF: 5)
    1228:	00441903 	subeq	r1, r4, r3, lsl #18
    122c:	00040000 	andeq	r0, r4, r0
    1230:	18020500 	stmdane	r2, {r8, sl}
    1234:	0500008d 	streq	r0, [r0, #-141]	; 0xffffff73
    1238:	005d640e 	subseq	r6, sp, lr, lsl #8
    123c:	cb0f0500 	blgt	3c2644 <heap_size+0x3a2644>
    1240:	0500007d 	streq	r0, [r0, #-125]	; 0xffffff83
    1244:	00793610 	rsbseq	r3, r9, r0, lsl r6
    1248:	a2110500 	andsge	r0, r1, #0, 10
    124c:	05000004 	streq	r0, [r0, #-4]
    1250:	002c4a12 	eoreq	r4, ip, r2, lsl sl
    1254:	cc130500 	cfldr32gt	mvfx0, [r3], {-0}
    1258:	05000072 	streq	r0, [r0, #-114]	; 0xffffff8e
    125c:	003d3e14 	eorseq	r3, sp, r4, lsl lr
    1260:	5f150500 	svcpl	0x00150500
    1264:	05000041 	streq	r0, [r0, #-65]	; 0xffffffbf
    1268:	005bff16 	subseq	pc, fp, r6, lsl pc	; <UNPREDICTABLE>
    126c:	0d170500 	cfldr32eq	mvfx0, [r7, #-0]
    1270:	05000087 	streq	r0, [r0, #-135]	; 0xffffff79
    1274:	0081a518 	addeq	sl, r1, r8, lsl r5
    1278:	46190500 	ldrmi	r0, [r9], -r0, lsl #10
    127c:	0000006e 	andeq	r0, r0, lr, rrx
    1280:	06000004 	streq	r0, [r0], -r4
    1284:	0062f57d 	rsbeq	pc, r2, sp, ror r5	; <UNPREDICTABLE>
    1288:	01900500 	orrseq	r0, r0, r0, lsl #10
    128c:	00003c4d 	andeq	r3, r0, sp, asr #24
    1290:	a1019206 	tstge	r1, r6, lsl #4
    1294:	05000074 	streq	r0, [r0, #-116]	; 0xffffff8c
    1298:	832d019e 			; <UNDEFINED> instruction: 0x832d019e
    129c:	04000000 	streq	r0, [r0], #-0
    12a0:	a1060000 	mrsge	r0, (UNDEF: 6)
    12a4:	00796a01 	rsbseq	r6, r9, r1, lsl #20
    12a8:	01ee0600 	mvneq	r0, r0, lsl #12
    12ac:	00004ab0 			; <UNDEFINED> instruction: 0x00004ab0
    12b0:	2202db06 	andcs	sp, r2, #6144	; 0x1800
    12b4:	0500000e 	streq	r0, [r0, #-14]
    12b8:	2c4102e0 	sfmcs	f0, 2, [r1], {224}	; 0xe0
    12bc:	e7060000 	str	r0, [r6, -r0]
    12c0:	00272702 	eoreq	r2, r7, r2, lsl #14
    12c4:	03910600 	orrseq	r0, r1, #0, 12
    12c8:	00004bd3 	ldrdeq	r4, [r0], -r3
    12cc:	d8039605 	stmdale	r3, {r0, r2, r9, sl, ip, pc}
    12d0:	06000038 			; <UNDEFINED> instruction: 0x06000038
    12d4:	4bcc039c 	blmi	ff30214c <__stack+0xf7302154>
    12d8:	a1050000 	mrsge	r0, (UNDEF: 5)
    12dc:	00441903 	subeq	r1, r4, r3, lsl #18
    12e0:	00040000 	andeq	r0, r4, r0
    12e4:	01b80500 			; <UNDEFINED> instruction: 0x01b80500
    12e8:	00001f1f 	andeq	r1, r0, pc, lsl pc
    12ec:	7801c005 	stmdavc	r1, {r0, r2, lr, pc}
    12f0:	0500006b 	streq	r0, [r0, #-107]	; 0xffffff95
    12f4:	6b9101c5 	blvs	fe441a10 <__stack+0xf6441a18>
    12f8:	ca050000 	bgt	141300 <heap_size+0x121300>
    12fc:	00427c01 	subeq	r7, r2, r1, lsl #24
    1300:	00040000 	andeq	r0, r4, r0
    1304:	200a0500 	andcs	r0, sl, r0, lsl #10
    1308:	05000043 	streq	r0, [r0, #-67]	; 0xffffffbd
    130c:	006fbe15 	rsbeq	fp, pc, r5, lsl lr	; <UNPREDICTABLE>
    1310:	5c190500 	cfldr32pl	mvfx0, [r9], {-0}
    1314:	05000067 	streq	r0, [r0, #-103]	; 0xffffff99
    1318:	003e891b 	eorseq	r8, lr, fp, lsl r9
    131c:	2d210500 	cfstr32cs	mvfx0, [r1, #-0]
    1320:	05000037 	streq	r0, [r0, #-55]	; 0xffffffc9
    1324:	0010fd25 	andseq	pc, r0, r5, lsr #26
    1328:	91270500 			; <UNDEFINED> instruction: 0x91270500
    132c:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
    1330:	006e982d 	rsbeq	r9, lr, sp, lsr #16
    1334:	ca310500 	bgt	c4273c <heap_size+0xc2273c>
    1338:	05000069 	streq	r0, [r0, #-105]	; 0xffffff97
    133c:	004dab33 	subeq	sl, sp, r3, lsr fp
    1340:	9a390500 	bls	e42748 <heap_size+0xe22748>
    1344:	05000089 	streq	r0, [r0, #-137]	; 0xffffff77
    1348:	0053653d 	subseq	r6, r3, sp, lsr r5
    134c:	273f0500 	ldrcs	r0, [pc, -r0, lsl #10]!
    1350:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
    1354:	00863b44 	addeq	r3, r6, r4, asr #22
    1358:	22490500 	subcs	r0, r9, #0, 10
    135c:	05000065 	streq	r0, [r0, #-101]	; 0xffffff9b
    1360:	0015424e 	andseq	r4, r5, lr, asr #4
    1364:	8b530500 	blhi	14c276c <_end+0x4c276c>
    1368:	00000067 	andeq	r0, r0, r7, rrx
    136c:	05000004 	streq	r0, [r0, #-4]
    1370:	00666772 	rsbeq	r6, r6, r2, ror r7
    1374:	b6770500 	ldrbtlt	r0, [r7], -r0, lsl #10
    1378:	05000036 	streq	r0, [r0, #-54]	; 0xffffffca
    137c:	00676f7c 	rsbeq	r6, r7, ip, ror pc
    1380:	c77d0500 	ldrbgt	r0, [sp, -r0, lsl #10]!
    1384:	0500006d 	streq	r0, [r0, #-109]	; 0xffffff93
    1388:	5dd10182 	ldfple	f0, [r1, #520]	; 0x208
    138c:	83050000 	movwhi	r0, #20480	; 0x5000
    1390:	00500301 	subseq	r0, r0, r1, lsl #6
    1394:	01880500 	orreq	r0, r8, r0, lsl #10
    1398:	00000d7e 	andeq	r0, r0, lr, ror sp
    139c:	51018c05 	tstpl	r1, r5, lsl #24
    13a0:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
    13a4:	377f0192 			; <UNDEFINED> instruction: 0x377f0192
    13a8:	97050000 	strls	r0, [r5, -r0]
    13ac:	00657001 	rsbeq	r7, r5, r1
    13b0:	019c0500 	orrseq	r0, ip, r0, lsl #10
    13b4:	00005379 	andeq	r5, r0, r9, ror r3
    13b8:	8701ae05 	strhi	sl, [r1, -r5, lsl #28]
    13bc:	05000039 	streq	r0, [r0, #-57]	; 0xffffffc7
    13c0:	26fd01b2 			; <UNDEFINED> instruction: 0x26fd01b2
    13c4:	b6050000 	strlt	r0, [r5], -r0
    13c8:	0053f201 	subseq	pc, r3, r1, lsl #4
    13cc:	01ba0500 			; <UNDEFINED> instruction: 0x01ba0500
    13d0:	00006bab 	andeq	r6, r0, fp, lsr #23
    13d4:	1d01bf05 	stcne	15, cr11, [r1, #-20]	; 0xffffffec
    13d8:	0500000b 	streq	r0, [r0, #-11]
    13dc:	111101c4 	tstne	r1, r4, asr #3
    13e0:	c9050000 	stmdbgt	r5, {}	; <UNPREDICTABLE>
    13e4:	006f7e01 	rsbeq	r7, pc, r1, lsl #28
    13e8:	01ce0500 	biceq	r0, lr, r0, lsl #10
    13ec:	00002989 	andeq	r2, r0, r9, lsl #19
    13f0:	ec01d305 	stc	3, cr13, [r1], {5}
    13f4:	0500000c 	streq	r0, [r0, #-12]
    13f8:	65dd01d8 	ldrbvs	r0, [sp, #472]	; 0x1d8
    13fc:	d9050000 	stmdble	r5, {}	; <UNPREDICTABLE>
    1400:	00846c01 	addeq	r6, r4, r1, lsl #24
    1404:	01de0500 	bicseq	r0, lr, r0, lsl #10
    1408:	00005bb2 			; <UNDEFINED> instruction: 0x00005bb2
    140c:	8301df05 	movwhi	sp, #7941	; 0x1f05
    1410:	05000027 	streq	r0, [r0, #-39]	; 0xffffffd9
    1414:	02f901e4 	rscseq	r0, r9, #228, 2	; 0x39
    1418:	e9050000 	stmdb	r5, {}	; <UNPREDICTABLE>
    141c:	0070e401 	rsbseq	lr, r0, r1, lsl #8
    1420:	00040000 	andeq	r0, r4, r0
    1424:	02c40500 	sbceq	r0, r4, #0, 10
    1428:	0000299b 	muleq	r0, fp, r9
    142c:	e602c505 	str	ip, [r2], -r5, lsl #10
    1430:	05000086 	streq	r0, [r0, #-134]	; 0xffffff7a
    1434:	86df02c6 	ldrbhi	r0, [pc], r6, asr #5
    1438:	c7050000 	strgt	r0, [r5, -r0]
    143c:	002d1602 	eoreq	r1, sp, r2, lsl #12
    1440:	02c90500 	sbceq	r0, r9, #0, 10
    1444:	00003135 	andeq	r3, r0, r5, lsr r1
    1448:	bd02ca05 	vstrlt	s24, [r2, #-20]	; 0xffffffec
    144c:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
    1450:	675102cb 	ldrbvs	r0, [r1, -fp, asr #5]
    1454:	cf050000 	svcgt	0x00050000
    1458:	0010b502 	andseq	fp, r0, r2, lsl #10
    145c:	02d00500 	sbcseq	r0, r0, #0, 10
    1460:	000011bb 			; <UNDEFINED> instruction: 0x000011bb
    1464:	fa02d105 	blx	b5880 <heap_size+0x95880>
    1468:	0500006c 	streq	r0, [r0, #-108]	; 0xffffff94
    146c:	63a102d7 			; <UNDEFINED> instruction: 0x63a102d7
    1470:	d8050000 	stmdale	r5, {}	; <UNPREDICTABLE>
    1474:	00348d02 	eorseq	r8, r4, r2, lsl #26
    1478:	02d90500 	sbcseq	r0, r9, #0, 10
    147c:	00008250 	andeq	r8, r0, r0, asr r2
    1480:	9a02da05 	bls	b7c9c <heap_size+0x97c9c>
    1484:	05000080 	streq	r0, [r0, #-128]	; 0xffffff80
    1488:	8b1802db 	blhi	601ffc <heap_size+0x5e1ffc>
    148c:	dc050000 	stcle	0, cr0, [r5], {-0}
    1490:	00254802 	eoreq	r4, r5, r2, lsl #16
    1494:	02dd0500 	sbcseq	r0, sp, #0, 10
    1498:	000012eb 	andeq	r1, r0, fp, ror #5
    149c:	0802de05 	stmdaeq	r2, {r0, r2, r9, sl, fp, ip, lr, pc}
    14a0:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
    14a4:	756602df 	strbvc	r0, [r6, #-735]!	; 0xfffffd21
    14a8:	e0050000 	and	r0, r5, r0
    14ac:	006b5d02 	rsbeq	r5, fp, r2, lsl #26
    14b0:	02e30500 	rsceq	r0, r3, #0, 10
    14b4:	000026d0 	ldrdeq	r2, [r0], -r0
    14b8:	ae02e405 	cdpge	4, 0, cr14, cr2, cr5, {0}
    14bc:	05000062 	streq	r0, [r0, #-98]	; 0xffffff9e
    14c0:	673602e5 	ldrvs	r0, [r6, -r5, ror #5]!
    14c4:	e6050000 	str	r0, [r5], -r0
    14c8:	0018bc02 	andseq	fp, r8, r2, lsl #24
    14cc:	02e80500 	rsceq	r0, r8, #0, 10
    14d0:	00007d2b 	andeq	r7, r0, fp, lsr #26
    14d4:	c902e905 	stmdbgt	r2, {r0, r2, r8, fp, sp, lr, pc}
    14d8:	0500000a 	streq	r0, [r0, #-10]
    14dc:	0e5802ea 	cdpeq	2, 5, cr0, cr8, cr10, {7}
    14e0:	eb050000 	bl	1414e8 <heap_size+0x1214e8>
    14e4:	006ce502 	rsbeq	lr, ip, r2, lsl #10
    14e8:	02ec0500 	rsceq	r0, ip, #0, 10
    14ec:	00006043 	andeq	r6, r0, r3, asr #32
    14f0:	0602ed05 	streq	lr, [r2], -r5, lsl #26
    14f4:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
    14f8:	164a02ee 	strbne	r0, [sl], -lr, ror #5
    14fc:	ef050000 	svc	0x00050000
    1500:	0062c602 	rsbeq	ip, r2, r2, lsl #12
    1504:	02f00500 	rscseq	r0, r0, #0, 10
    1508:	00008024 	andeq	r8, r0, r4, lsr #32
    150c:	f202f105 	vrhadd.s8	d15, d2, d5
    1510:	05000065 	streq	r0, [r0, #-101]	; 0xffffff9b
    1514:	587002f2 	ldmdapl	r0!, {r1, r4, r5, r6, r7, r9}^
    1518:	f3050000 	vhadd.u8	d0, d5, d0
    151c:	00748002 	rsbseq	r8, r4, r2
    1520:	02f40500 	rscseq	r0, r4, #0, 10
    1524:	00006c38 	andeq	r6, r0, r8, lsr ip
    1528:	cd02f505 	cfstr32gt	mvfx15, [r2, #-20]	; 0xffffffec
    152c:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
    1530:	4ae102f6 	bmi	ff842110 <__stack+0xf7842118>
    1534:	f7050000 			; <UNDEFINED> instruction: 0xf7050000
    1538:	0061e702 	rsbeq	lr, r1, r2, lsl #14
    153c:	02f80500 	rscseq	r0, r8, #0, 10
    1540:	000030b0 	strheq	r3, [r0], -r0
    1544:	2f02f905 	svccs	0x0002f905
    1548:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
    154c:	2bd302fa 	blcs	ff4c213c <__stack+0xf74c2144>
    1550:	fb050000 	blx	14155a <heap_size+0x12155a>
    1554:	008b8202 	addeq	r8, fp, r2, lsl #4
    1558:	02fc0500 	rscseq	r0, ip, #0, 10
    155c:	00001fa6 	andeq	r1, r0, r6, lsr #31
    1560:	b602fd05 	strlt	pc, [r2], -r5, lsl #26
    1564:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
    1568:	3cfd02fe 	lfmcc	f0, 2, [sp], #1016	; 0x3f8
    156c:	ff050000 			; <UNDEFINED> instruction: 0xff050000
    1570:	0069f602 	rsbeq	pc, r9, r2, lsl #12
    1574:	03800500 	orreq	r0, r0, #0, 10
    1578:	00008404 	andeq	r8, r0, r4, lsl #8
    157c:	cb038105 	blgt	e1998 <heap_size+0xc1998>
    1580:	05000036 	streq	r0, [r0, #-54]	; 0xffffffca
    1584:	34530382 	ldrbcc	r0, [r3], #-898	; 0xfffffc7e
    1588:	83050000 	movwhi	r0, #20480	; 0x5000
    158c:	000ebf03 	andeq	fp, lr, r3, lsl #30
    1590:	03840500 	orreq	r0, r4, #0, 10
    1594:	00005af2 	strdeq	r5, [r0], -r2
    1598:	80038505 	andhi	r8, r3, r5, lsl #10
    159c:	0500001f 	streq	r0, [r0, #-31]	; 0xffffffe1
    15a0:	55230386 	strpl	r0, [r3, #-902]!	; 0xfffffc7a
    15a4:	87050000 	strhi	r0, [r5, -r0]
    15a8:	0047f803 	subeq	pc, r7, r3, lsl #16
    15ac:	03880500 	orreq	r0, r8, #0, 10
    15b0:	00007c47 	andeq	r7, r0, r7, asr #24
    15b4:	43038905 	movwmi	r8, #14597	; 0x3905
    15b8:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
    15bc:	0cd1038b 	ldcleq	3, cr0, [r1], {139}	; 0x8b
    15c0:	8c050000 	stchi	0, cr0, [r5], {-0}
    15c4:	007cd603 	rsbseq	sp, ip, r3, lsl #12
    15c8:	038d0500 	orreq	r0, sp, #0, 10
    15cc:	0000827a 	andeq	r8, r0, sl, ror r2
    15d0:	10038e05 	andne	r8, r3, r5, lsl #28
    15d4:	05000088 	streq	r0, [r0, #-136]	; 0xffffff78
    15d8:	5fcf038f 	svcpl	0x00cf038f
    15dc:	90050000 	andls	r0, r5, r0
    15e0:	005aaf03 	subseq	sl, sl, r3, lsl #30
    15e4:	03910500 	orrseq	r0, r1, #0, 10
    15e8:	000052e8 	andeq	r5, r0, r8, ror #5
    15ec:	5c039205 	sfmpl	f1, 1, [r3], {5}
    15f0:	0500001f 	streq	r0, [r0, #-31]	; 0xffffffe1
    15f4:	43300393 	teqmi	r0, #1275068418	; 0x4c000002
    15f8:	94050000 	strls	r0, [r5], #-0
    15fc:	00599d03 	subseq	r9, r9, r3, lsl #26
    1600:	03950500 	orrseq	r0, r5, #0, 10
    1604:	00001386 	andeq	r1, r0, r6, lsl #7
    1608:	94039605 	strls	r9, [r3], #-1541	; 0xfffff9fb
    160c:	05000036 	streq	r0, [r0, #-54]	; 0xffffffca
    1610:	45e50397 	strbmi	r0, [r5, #919]!	; 0x397
    1614:	98050000 	stmdals	r5, {}	; <UNPREDICTABLE>
    1618:	005ea703 	subseq	sl, lr, r3, lsl #14
    161c:	03990500 	orrseq	r0, r9, #0, 10
    1620:	000055c5 	andeq	r5, r0, r5, asr #11
    1624:	10039a05 	andne	r9, r3, r5, lsl #20
    1628:	05000052 	streq	r0, [r0, #-82]	; 0xffffffae
    162c:	545d039b 	ldrbpl	r0, [sp], #-923	; 0xfffffc65
    1630:	9c050000 	stcls	0, cr0, [r5], {-0}
    1634:	006b4203 	rsbeq	r4, fp, r3, lsl #4
    1638:	039d0500 	orrseq	r0, sp, #0, 10
    163c:	000061fd 	strdeq	r6, [r0], -sp
    1640:	93039e05 	movwls	r9, #15877	; 0x3e05
    1644:	0500006c 	streq	r0, [r0, #-108]	; 0xffffff94
    1648:	79bc039f 	ldmibvc	ip!, {r0, r1, r2, r3, r4, r7, r8, r9}
    164c:	a0050000 	andge	r0, r5, r0
    1650:	004b1003 	subeq	r1, fp, r3
    1654:	03a10500 			; <UNDEFINED> instruction: 0x03a10500
    1658:	000018d0 	ldrdeq	r1, [r0], -r0
    165c:	8c03a205 	sfmhi	f2, 1, [r3], {5}
    1660:	0500008a 	streq	r0, [r0, #-138]	; 0xffffff76
    1664:	234b03a3 	movtcs	r0, #45987	; 0xb3a3
    1668:	a4050000 	strge	r0, [r5], #-0
    166c:	002a3b03 	eoreq	r3, sl, r3, lsl #22
    1670:	03a50500 			; <UNDEFINED> instruction: 0x03a50500
    1674:	00002b78 	andeq	r2, r0, r8, ror fp
    1678:	0a03a605 	beq	eae94 <heap_size+0xcae94>
    167c:	0500006f 	streq	r0, [r0, #-111]	; 0xffffff91
    1680:	560403a7 	strpl	r0, [r4], -r7, lsr #7
    1684:	a8050000 	stmdage	r5, {}	; <UNPREDICTABLE>
    1688:	00784d03 	rsbseq	r4, r8, r3, lsl #26
    168c:	03a90500 			; <UNDEFINED> instruction: 0x03a90500
    1690:	000044ad 	andeq	r4, r0, sp, lsr #9
    1694:	5803aa05 	stmdapl	r3, {r0, r2, r9, fp, sp, pc}
    1698:	0500004f 	streq	r0, [r0, #-79]	; 0xffffffb1
    169c:	8d2803ab 	stchi	3, cr0, [r8, #-684]!	; 0xfffffd54
    16a0:	ac050000 	stcge	0, cr0, [r5], {-0}
    16a4:	00601003 	rsbeq	r1, r0, r3
    16a8:	03ad0500 			; <UNDEFINED> instruction: 0x03ad0500
    16ac:	00002901 	andeq	r2, r0, r1, lsl #18
    16b0:	b803ae05 	stmdalt	r3, {r0, r2, r9, sl, fp, sp, pc}
    16b4:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
    16b8:	71a103af 			; <UNDEFINED> instruction: 0x71a103af
    16bc:	b0050000 	andlt	r0, r5, r0
    16c0:	0032b703 	eorseq	fp, r2, r3, lsl #14
    16c4:	03b10500 			; <UNDEFINED> instruction: 0x03b10500
    16c8:	0000017a 	andeq	r0, r0, sl, ror r1
    16cc:	6e03b205 	cdpvs	2, 0, cr11, cr3, cr5, {0}
    16d0:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
    16d4:	6d7c03b3 	ldclvs	3, cr0, [ip, #-716]!	; 0xfffffd34
    16d8:	b4050000 	strlt	r0, [r5], #-0
    16dc:	006f5503 	rsbeq	r5, pc, r3, lsl #10
    16e0:	03b50500 			; <UNDEFINED> instruction: 0x03b50500
    16e4:	0000311f 	andeq	r3, r0, pc, lsl r1
    16e8:	f403b605 	vst1.8	{d11-d13}, [r3], r5
    16ec:	0500006d 	streq	r0, [r0, #-109]	; 0xffffff93
    16f0:	0b0103b7 	bleq	425d4 <heap_size+0x225d4>
    16f4:	b8050000 	stmdalt	r5, {}	; <UNPREDICTABLE>
    16f8:	005b9603 	subseq	r9, fp, r3, lsl #12
    16fc:	03b90500 			; <UNDEFINED> instruction: 0x03b90500
    1700:	000005c7 	andeq	r0, r0, r7, asr #11
    1704:	4e03ba05 	vmlami.f32	s22, s6, s10
    1708:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
    170c:	485c03bb 	ldmdami	ip, {r0, r1, r3, r4, r5, r7, r8, r9}^
    1710:	bc050000 	stclt	0, cr0, [r5], {-0}
    1714:	00463603 	subeq	r3, r6, r3, lsl #12
    1718:	03bd0500 			; <UNDEFINED> instruction: 0x03bd0500
    171c:	00003e14 	andeq	r3, r0, r4, lsl lr
    1720:	f803be05 			; <UNDEFINED> instruction: 0xf803be05
    1724:	05000078 	streq	r0, [r0, #-120]	; 0xffffff88
    1728:	2b2e03bf 	blcs	b8262c <heap_size+0xb6262c>
    172c:	c0050000 	andgt	r0, r5, r0
    1730:	0073cc03 	rsbseq	ip, r3, r3, lsl #24
    1734:	03c10500 	biceq	r0, r1, #0, 10
    1738:	0000607e 	andeq	r6, r0, lr, ror r0
    173c:	f803c205 			; <UNDEFINED> instruction: 0xf803c205
    1740:	05000089 	streq	r0, [r0, #-137]	; 0xffffff77
    1744:	383f03c3 	ldmdacc	pc!, {r0, r1, r6, r7, r8, r9}	; <UNPREDICTABLE>
    1748:	c4050000 	strgt	r0, [r5], #-0
    174c:	00739503 	rsbseq	r9, r3, r3, lsl #10
    1750:	03c50500 	biceq	r0, r5, #0, 10
    1754:	00006b22 	andeq	r6, r0, r2, lsr #22
    1758:	ff03c605 			; <UNDEFINED> instruction: 0xff03c605
    175c:	05000004 	streq	r0, [r0, #-4]
    1760:	60c203c7 	sbcvs	r0, r2, r7, asr #7
    1764:	c8050000 	stmdagt	r5, {}	; <UNPREDICTABLE>
    1768:	00785a03 	rsbseq	r5, r8, r3, lsl #20
    176c:	03c90500 	biceq	r0, r9, #0, 10
    1770:	00002df5 	strdeq	r2, [r0], -r5
    1774:	e003ca05 	and	ip, r3, r5, lsl #20
    1778:	05000082 	streq	r0, [r0, #-130]	; 0xffffff7e
    177c:	4b1c03cb 	blmi	7026b0 <heap_size+0x6e26b0>
    1780:	cc050000 	stcgt	0, cr0, [r5], {-0}
    1784:	004ef303 	subeq	pc, lr, r3, lsl #6
    1788:	03cd0500 	biceq	r0, sp, #0, 10
    178c:	00007127 	andeq	r7, r0, r7, lsr #2
    1790:	5803ce05 	stmdapl	r3, {r0, r2, r9, sl, fp, lr, pc}
    1794:	05000072 	streq	r0, [r0, #-114]	; 0xffffff8e
    1798:	376903cf 	strbcc	r0, [r9, -pc, asr #7]!
    179c:	d0050000 	andle	r0, r5, r0
    17a0:	003d7c03 	eorseq	r7, sp, r3, lsl #24
    17a4:	03d10500 	bicseq	r0, r1, #0, 10
    17a8:	00002d61 	andeq	r2, r0, r1, ror #26
    17ac:	0903d205 	stmdbeq	r3, {r0, r2, r9, ip, lr, pc}
    17b0:	0500003b 	streq	r0, [r0, #-59]	; 0xffffffc5
    17b4:	067503d3 			; <UNDEFINED> instruction: 0x067503d3
    17b8:	d4050000 	strle	r0, [r5], #-0
    17bc:	006d6903 	rsbeq	r6, sp, r3, lsl #18
    17c0:	03d50500 	bicseq	r0, r5, #0, 10
    17c4:	00005a9b 	muleq	r0, fp, sl
    17c8:	0d03d605 	stceq	6, cr13, [r3, #-20]	; 0xffffffec
    17cc:	0500006b 	streq	r0, [r0, #-107]	; 0xffffff95
    17d0:	472503d7 			; <UNDEFINED> instruction: 0x472503d7
    17d4:	d8050000 	stmdale	r5, {}	; <UNPREDICTABLE>
    17d8:	00568f03 	subseq	r8, r6, r3, lsl #30
    17dc:	03d90500 	bicseq	r0, r9, #0, 10
    17e0:	000060a4 	andeq	r6, r0, r4, lsr #1
    17e4:	3303da05 	movwcc	sp, #14853	; 0x3a05
    17e8:	05000042 	streq	r0, [r0, #-66]	; 0xffffffbe
    17ec:	59af03db 	stmibpl	pc!, {r0, r1, r3, r4, r6, r7, r8, r9}	; <UNPREDICTABLE>
    17f0:	dc050000 	stcle	0, cr0, [r5], {-0}
    17f4:	00248403 	eoreq	r8, r4, r3, lsl #8
    17f8:	03dd0500 	bicseq	r0, sp, #0, 10
    17fc:	00000801 	andeq	r0, r0, r1, lsl #16
    1800:	1703de05 	strne	sp, [r3, -r5, lsl #28]
    1804:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
    1808:	16e203df 	usatne	r0, #2, pc, asr #7	; <UNPREDICTABLE>
    180c:	e0050000 	and	r0, r5, r0
    1810:	004c5d03 	subeq	r5, ip, r3, lsl #26
    1814:	03e10500 	mvneq	r0, #0, 10
    1818:	00001122 	andeq	r1, r0, r2, lsr #2
    181c:	f403e205 	vst1.8	{d14-d17}, [r3], r5
    1820:	05000033 	streq	r0, [r0, #-51]	; 0xffffffcd
    1824:	859903e3 	ldrhi	r0, [r9, #995]	; 0x3e3
    1828:	e4050000 	str	r0, [r5], #-0
    182c:	004cd203 	subeq	sp, ip, r3, lsl #4
    1830:	03e50500 	mvneq	r0, #0, 10
    1834:	00003ec9 	andeq	r3, r0, r9, asr #29
    1838:	ad03e605 	stcge	6, cr14, [r3, #-20]	; 0xffffffec
    183c:	05000089 	streq	r0, [r0, #-137]	; 0xffffff77
    1840:	64ba03e7 	ldrtvs	r0, [sl], #999	; 0x3e7
    1844:	e8050000 	stmda	r5, {}	; <UNPREDICTABLE>
    1848:	0088e203 	addeq	lr, r8, r3, lsl #4
    184c:	03e90500 	mvneq	r0, #0, 10
    1850:	00002fd3 	ldrdeq	r2, [r0], -r3
    1854:	6b03ea05 	blvs	fc070 <heap_size+0xdc070>
    1858:	05000072 	streq	r0, [r0, #-114]	; 0xffffff8e
    185c:	8aeb03eb 	bhi	ffac2810 <__stack+0xf7ac2818>
    1860:	ec050000 	stc	0, cr0, [r5], {-0}
    1864:	00118b03 	andseq	r8, r1, r3, lsl #22
    1868:	03ed0500 	mvneq	r0, #0, 10
    186c:	00004bf9 	strdeq	r4, [r0], -r9
    1870:	0703ee05 	streq	lr, [r3, -r5, lsl #28]
    1874:	05000049 	streq	r0, [r0, #-73]	; 0xffffffb7
    1878:	0c9303ef 	ldceq	3, cr0, [r3], {239}	; 0xef
    187c:	f0050000 			; <UNDEFINED> instruction: 0xf0050000
    1880:	00619503 	rsbeq	r9, r1, r3, lsl #10
    1884:	03f10500 	mvnseq	r0, #0, 10
    1888:	00007f61 	andeq	r7, r0, r1, ror #30
    188c:	3d03f705 	stccc	7, cr15, [r3, #-20]	; 0xffffffec
    1890:	05000071 	streq	r0, [r0, #-113]	; 0xffffff8f
    1894:	821e03f8 	andshi	r0, lr, #248, 6	; 0xe0000003
    1898:	f9050000 			; <UNDEFINED> instruction: 0xf9050000
    189c:	004ba303 	subeq	sl, fp, r3, lsl #6
    18a0:	03fa0500 	mvnseq	r0, #0, 10
    18a4:	00000aba 			; <UNDEFINED> instruction: 0x00000aba
    18a8:	cc03fb05 			; <UNDEFINED> instruction: 0xcc03fb05
    18ac:	0500003c 	streq	r0, [r0, #-60]	; 0xffffffc4
    18b0:	7ff003fc 	svcvc	0x00f003fc
    18b4:	fd050000 	stc2	0, cr0, [r5, #-0]
    18b8:	00893803 	addeq	r3, r9, r3, lsl #16
    18bc:	03fe0500 	mvnseq	r0, #0, 10
    18c0:	00000597 	muleq	r0, r7, r5
    18c4:	dd03ff05 	stcle	15, cr15, [r3, #-20]	; 0xffffffec
    18c8:	05000005 	streq	r0, [r0, #-5]
    18cc:	31b00480 	lslscc	r0, r0, #9
    18d0:	81050000 	mrshi	r0, (UNDEF: 5)
    18d4:	00482904 	subeq	r2, r8, r4, lsl #18
    18d8:	04820500 	streq	r0, [r2], #1280	; 0x500
    18dc:	00000314 	andeq	r0, r0, r4, lsl r3
    18e0:	76048305 	strvc	r8, [r4], -r5, lsl #6
    18e4:	05000010 	streq	r0, [r0, #-16]
    18e8:	3f290484 	svccc	0x00290484
    18ec:	85050000 	strhi	r0, [r5, #-0]
    18f0:	0072f404 	rsbseq	pc, r2, r4, lsl #8
    18f4:	04860500 	streq	r0, [r6], #1280	; 0x500
    18f8:	000027c6 	andeq	r2, r0, r6, asr #15
    18fc:	d9048705 	stmdble	r4, {r0, r2, r8, r9, sl, pc}
    1900:	05000075 	streq	r0, [r0, #-117]	; 0xffffff8b
    1904:	8b990488 	blhi	fe642b2c <__stack+0xf6642b34>
    1908:	89050000 	stmdbhi	r5, {}	; <UNPREDICTABLE>
    190c:	00663204 	rsbeq	r3, r6, r4, lsl #4
    1910:	048a0500 	streq	r0, [sl], #1280	; 0x500
    1914:	00000cff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    1918:	23048b05 	movwcs	r8, #19205	; 0x4b05
    191c:	00000038 	andeq	r0, r0, r8, lsr r0
    1920:	05000004 	streq	r0, [r0, #-4]
    1924:	0024d502 	eoreq	sp, r4, r2, lsl #10
    1928:	13060500 	movwne	r0, #25856	; 0x6500
    192c:	00000016 	andeq	r0, r0, r6, lsl r0
    1930:	05000004 	streq	r0, [r0, #-4]
    1934:	00346b11 	eorseq	r6, r4, r1, lsl fp
    1938:	d0150500 	andsle	r0, r5, r0, lsl #10
    193c:	0500006f 	streq	r0, [r0, #-111]	; 0xffffff91
    1940:	008dd248 	addeq	sp, sp, r8, asr #4
    1944:	a25b0500 	subsge	r0, fp, #0, 10
    1948:	05000037 	streq	r0, [r0, #-55]	; 0xffffffc9
    194c:	007c9568 	rsbseq	r9, ip, r8, ror #10
    1950:	01aa0500 			; <UNDEFINED> instruction: 0x01aa0500
    1954:	000050ca 	andeq	r5, r0, sl, asr #1
    1958:	6602b805 	strvs	fp, [r2], -r5, lsl #16
    195c:	0500006f 	streq	r0, [r0, #-111]	; 0xffffff91
    1960:	464d02b9 			; <UNDEFINED> instruction: 0x464d02b9
    1964:	ba050000 	blt	14196c <heap_size+0x12196c>
    1968:	008d0002 	addeq	r0, sp, r2
    196c:	02bb0500 	adcseq	r0, fp, #0, 10
    1970:	0000852d 	andeq	r8, r0, sp, lsr #10
    1974:	c802bc05 	stmdagt	r2, {r0, r2, sl, fp, ip, sp, pc}
    1978:	0500006e 	streq	r0, [r0, #-110]	; 0xffffff92
    197c:	5d9b02bd 	lfmpl	f0, 4, [fp, #756]	; 0x2f4
    1980:	be050000 	cdplt	0, 0, cr0, cr5, cr0, {0}
    1984:	00886602 	addeq	r6, r8, r2, lsl #12
    1988:	02ca0500 	sbceq	r0, sl, #0, 10
    198c:	00002896 	muleq	r0, r6, r8
    1990:	4e02cb05 	vmlami.f64	d12, d2, d5
    1994:	0500008c 	streq	r0, [r0, #-140]	; 0xffffff74
    1998:	04e902cc 	strbteq	r0, [r9], #716	; 0x2cc
    199c:	ce050000 	cdpgt	0, 0, cr0, cr5, cr0, {0}
    19a0:	0020b103 	eoreq	fp, r0, r3, lsl #2
    19a4:	03e80500 	mvneq	r0, #0, 10
    19a8:	00001ffc 	strdeq	r1, [r0], -ip
    19ac:	ab03f505 	blge	fedc8 <heap_size+0xdedc8>
    19b0:	0500006d 	streq	r0, [r0, #-109]	; 0xffffff93
    19b4:	140603fd 	strne	r0, [r6], #-1021	; 0xfffffc03
    19b8:	86050000 	strhi	r0, [r5], -r0
    19bc:	000d1504 	andeq	r1, sp, r4, lsl #10
    19c0:	048a0500 	streq	r0, [sl], #1280	; 0x500
    19c4:	00006a7d 	andeq	r6, r0, sp, ror sl
    19c8:	73048f05 	movwvc	r8, #20229	; 0x4f05
    19cc:	05000008 	streq	r0, [r0, #-8]
    19d0:	7b77049a 	blvc	1dc2c40 <_end+0xdc2c40>
    19d4:	9d050000 	stcls	0, cr0, [r5, #-0]
    19d8:	0003cf04 	andeq	ip, r3, r4, lsl #30
    19dc:	04a30500 	strteq	r0, [r3], #1280	; 0x500
    19e0:	000038e9 	andeq	r3, r0, r9, ror #17
    19e4:	fc04a605 	stc2	6, cr10, [r4], {5}
    19e8:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
    19ec:	18e804a9 	stmiane	r8!, {r0, r3, r5, r7, sl}^
    19f0:	bf050000 	svclt	0x00050000
    19f4:	0074aa04 	rsbseq	sl, r4, r4, lsl #20
    19f8:	04c20500 	strbeq	r0, [r2], #1280	; 0x500
    19fc:	00006692 	muleq	r0, r2, r6
    1a00:	0204c505 	andeq	ip, r4, #20971520	; 0x1400000
    1a04:	0500002b 	streq	r0, [r0, #-43]	; 0xffffffd5
    1a08:	684c04c6 	stmdavs	ip, {r1, r2, r6, r7, sl}^
    1a0c:	c7050000 	strgt	r0, [r5, -r0]
    1a10:	006f9104 	rsbeq	r9, pc, r4, lsl #2
    1a14:	04c80500 	strbeq	r0, [r8], #1280	; 0x500
    1a18:	00004767 	andeq	r4, r0, r7, ror #14
    1a1c:	9704c905 	strls	ip, [r4, -r5, lsl #18]
    1a20:	05000002 	streq	r0, [r0, #-2]
    1a24:	6d3d04ca 	cfldrsvs	mvf0, [sp, #-808]!	; 0xfffffcd8
    1a28:	cb050000 	blgt	141a30 <heap_size+0x121a30>
    1a2c:	0084b104 	addeq	fp, r4, r4, lsl #2
    1a30:	04cc0500 	strbeq	r0, [ip], #1280	; 0x500
    1a34:	000036f1 	strdeq	r3, [r0], -r1
    1a38:	b004cd05 	andlt	ip, r4, r5, lsl #26
    1a3c:	05000082 	streq	r0, [r0, #-130]	; 0xffffff7e
    1a40:	538a04ce 	orrpl	r0, sl, #-838860800	; 0xce000000
    1a44:	cf050000 	svcgt	0x00050000
    1a48:	003fe104 	eorseq	lr, pc, r4, lsl #2
    1a4c:	04d00500 	ldrbeq	r0, [r0], #1280	; 0x500
    1a50:	000055da 	ldrdeq	r5, [r0], -sl
    1a54:	9404d105 	strls	sp, [r4], #-261	; 0xfffffefb
    1a58:	0500003a 	streq	r0, [r0, #-58]	; 0xffffffc6
    1a5c:	2cd304d2 	cfldrdcs	mvd0, [r3], {210}	; 0xd2
    1a60:	d3050000 	movwle	r0, #20480	; 0x5000
    1a64:	0031e604 	eorseq	lr, r1, r4, lsl #12
    1a68:	04d40500 	ldrbeq	r0, [r4], #1280	; 0x500
    1a6c:	0000523f 	andeq	r5, r0, pc, lsr r2
    1a70:	6c04d505 	cfstr32vs	mvfx13, [r4], {5}
    1a74:	0500005c 	streq	r0, [r0, #-92]	; 0xffffffa4
    1a78:	28c804d6 	stmiacs	r8, {r1, r2, r4, r6, r7, sl}^
    1a7c:	d7050000 	strle	r0, [r5, -r0]
    1a80:	00071a04 	andeq	r1, r7, r4, lsl #20
    1a84:	04d80500 	ldrbeq	r0, [r8], #1280	; 0x500
    1a88:	00000017 	andeq	r0, r0, r7, lsl r0
    1a8c:	9004d905 	andls	sp, r4, r5, lsl #18
    1a90:	0500003d 	streq	r0, [r0, #-61]	; 0xffffffc3
    1a94:	728904da 	addvc	r0, r9, #-637534208	; 0xda000000
    1a98:	db050000 	blle	141aa0 <heap_size+0x121aa0>
    1a9c:	00634e04 	rsbeq	r4, r3, r4, lsl #28
    1aa0:	04dc0500 	ldrbeq	r0, [ip], #1280	; 0x500
    1aa4:	00001145 	andeq	r1, r0, r5, asr #2
    1aa8:	55069b05 	strpl	r9, [r6, #-2821]	; 0xfffff4fb
    1aac:	0500000f 	streq	r0, [r0, #-15]
    1ab0:	051506a3 	ldreq	r0, [r5, #-1699]	; 0xfffff95d
    1ab4:	ab050000 	blge	141abc <heap_size+0x121abc>
    1ab8:	0077ae06 	rsbseq	sl, r7, r6, lsl #28
    1abc:	06bb0500 	ldrteq	r0, [fp], r0, lsl #10
    1ac0:	00002ec1 	andeq	r2, r0, r1, asr #29
    1ac4:	a806be05 	stmdage	r6, {r0, r2, r9, sl, fp, ip, sp, pc}
    1ac8:	05000087 	streq	r0, [r0, #-135]	; 0xffffff79
    1acc:	467406c2 	ldrbtmi	r0, [r4], -r2, asr #13
    1ad0:	04000000 	streq	r0, [r0], #-0
    1ad4:	0e050000 	cdpeq	0, 0, cr0, cr5, cr0, {0}
    1ad8:	000045f7 	strdeq	r4, [r0], -r7
    1adc:	77261d05 	strvc	r1, [r6, -r5, lsl #26]!
    1ae0:	1f050000 	svcne	0x00050000
    1ae4:	00002253 	andeq	r2, r0, r3, asr r2
    1ae8:	78a32005 	stmiavc	r3!, {r0, r2, sp}
    1aec:	21050000 	mrscs	r0, (UNDEF: 5)
    1af0:	00002fee 	andeq	r2, r0, lr, ror #31
    1af4:	32d62205 	sbcscc	r2, r6, #1342177280	; 0x50000000
    1af8:	23050000 	movwcs	r0, #20480	; 0x5000
    1afc:	00008297 	muleq	r0, r7, r2
    1b00:	7a8e2405 	bvc	fe38ab1c <__stack+0xf638ab24>
    1b04:	25050000 	strcs	r0, [r5, #-0]
    1b08:	00004af8 	strdeq	r4, [r0], -r8
    1b0c:	57532605 	ldrbpl	r2, [r3, -r5, lsl #12]
    1b10:	27050000 	strcs	r0, [r5, -r0]
    1b14:	0000397f 	andeq	r3, r0, pc, ror r9
    1b18:	4bd82805 	blmi	ff60bb34 <__stack+0xf760bb3c>
    1b1c:	29050000 	stmdbcs	r5, {}	; <UNPREDICTABLE>
    1b20:	000035b4 			; <UNDEFINED> instruction: 0x000035b4
    1b24:	49572a05 	ldmdbmi	r7, {r0, r2, r9, fp, sp}^
    1b28:	2b050000 	blcs	141b30 <heap_size+0x121b30>
    1b2c:	00005dc7 	andeq	r5, r0, r7, asr #27
    1b30:	0b9c2c05 	bleq	fe70cb4c <__stack+0xf670cb54>
    1b34:	30050000 	andcc	r0, r5, r0
    1b38:	00005e46 	andeq	r5, r0, r6, asr #28
    1b3c:	44fb3105 	ldrbtmi	r3, [fp], #261	; 0x105
    1b40:	32050000 	andcc	r0, r5, #0
    1b44:	000046c4 	andeq	r4, r0, r4, asr #13
    1b48:	86d53305 	ldrbhi	r3, [r5], r5, lsl #6
    1b4c:	34050000 	strcc	r0, [r5], #-0
    1b50:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
    1b54:	3f983505 	svccc	0x00983505
    1b58:	36050000 	strcc	r0, [r5], -r0
    1b5c:	00005e3c 	andeq	r5, r0, ip, lsr lr
    1b60:	33363705 	teqcc	r6, #1310720	; 0x140000
    1b64:	38050000 	stmdacc	r5, {}	; <UNPREDICTABLE>
    1b68:	00008246 	andeq	r8, r0, r6, asr #4
    1b6c:	513d3905 	teqpl	sp, r5, lsl #18
    1b70:	3a050000 	bcc	141b78 <heap_size+0x121b78>
    1b74:	000016ba 			; <UNDEFINED> instruction: 0x000016ba
    1b78:	4c803b05 	fstmiaxmi	r0, {d3-d4}	;@ Deprecated
    1b7c:	3c050000 	stccc	0, cr0, [r5], {-0}
    1b80:	000021f2 	strdeq	r2, [r0], -r2	; <UNPREDICTABLE>
    1b84:	39e73d05 	stmibcc	r7!, {r0, r2, r8, sl, fp, ip, sp}^
    1b88:	3e050000 	cdpcc	0, 0, cr0, cr5, cr0, {0}
    1b8c:	00002212 	andeq	r2, r0, r2, lsl r2
    1b90:	24e23f05 	strbtcs	r3, [r2], #3845	; 0xf05
    1b94:	40050000 	andmi	r0, r5, r0
    1b98:	00000357 	andeq	r0, r0, r7, asr r3
    1b9c:	67a04105 	strvs	r4, [r0, r5, lsl #2]!
    1ba0:	42050000 	andmi	r0, r5, #0
    1ba4:	00006023 	andeq	r6, r0, r3, lsr #32
    1ba8:	4e7d4305 	cdpmi	3, 7, cr4, cr13, cr5, {0}
    1bac:	44050000 	strmi	r0, [r5], #-0
    1bb0:	00000de0 	andeq	r0, r0, r0, ror #27
    1bb4:	82a54f05 	adchi	r4, r5, #5, 30
    1bb8:	50050000 	andpl	r0, r5, r0
    1bbc:	000087c9 	andeq	r8, r0, r9, asr #15
    1bc0:	1f525b05 	svcne	0x00525b05
    1bc4:	5c050000 	stcpl	0, cr0, [r5], {-0}
    1bc8:	000053d4 	ldrdeq	r5, [r0], -r4
    1bcc:	24065d05 	strcs	r5, [r6], #-3333	; 0xfffff2fb
    1bd0:	5e050000 	cdppl	0, 0, cr0, cr5, cr0, {0}
    1bd4:	00007e1b 	andeq	r7, r0, fp, lsl lr
    1bd8:	0af66405 	beq	ffd9abf4 <__stack+0xf7d9abfc>
    1bdc:	6a050000 	bvs	141be4 <heap_size+0x121be4>
    1be0:	000034c5 	andeq	r3, r0, r5, asr #9
    1be4:	81886b05 	orrhi	r6, r8, r5, lsl #22
    1be8:	70050000 	andvc	r0, r5, r0
    1bec:	000050a0 	andeq	r5, r0, r0, lsr #1
    1bf0:	34497105 	strbcc	r7, [r9], #-261	; 0xfffffefb
    1bf4:	7c050000 	stcvc	0, cr0, [r5], {-0}
    1bf8:	00007e7d 	andeq	r7, r0, sp, ror lr
    1bfc:	e5018005 	str	r8, [r1, #-5]
    1c00:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
    1c04:	02e90181 	rsceq	r0, r9, #1073741856	; 0x40000020
    1c08:	82050000 	andhi	r0, r5, #0
    1c0c:	00488401 	subeq	r8, r8, r1, lsl #8
    1c10:	01830500 	orreq	r0, r3, r0, lsl #10
    1c14:	00002bf5 	strdeq	r2, [r0], -r5
    1c18:	71018405 	tstvc	r1, r5, lsl #8
    1c1c:	0500004d 	streq	r0, [r0, #-77]	; 0xffffffb3
    1c20:	15330185 	ldrne	r0, [r3, #-389]!	; 0xfffffe7b
    1c24:	86050000 	strhi	r0, [r5], -r0
    1c28:	00242701 	eoreq	r2, r4, r1, lsl #14
    1c2c:	01870500 	orreq	r0, r7, r0, lsl #10
    1c30:	00003180 	andeq	r3, r0, r0, lsl #3
    1c34:	a3018805 	movwge	r8, #6149	; 0x1805
    1c38:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
    1c3c:	6b350189 	blvs	d42268 <heap_size+0xd22268>
    1c40:	8a050000 	bhi	141c48 <heap_size+0x121c48>
    1c44:	00452701 	subeq	r2, r5, r1, lsl #14
    1c48:	018e0500 	orreq	r0, lr, r0, lsl #10
    1c4c:	000010c9 	andeq	r1, r0, r9, asr #1
    1c50:	4b018f05 	blmi	6586c <heap_size+0x4586c>
    1c54:	05000047 	streq	r0, [r0, #-71]	; 0xffffffb9
    1c58:	40440190 	umaalmi	r0, r4, r0, r1
    1c5c:	91050000 	mrsls	r0, (UNDEF: 5)
    1c60:	002aa101 	eoreq	sl, sl, r1, lsl #2
    1c64:	01920500 	orrseq	r0, r2, r0, lsl #10
    1c68:	00007745 	andeq	r7, r0, r5, asr #14
    1c6c:	74019305 	strvc	r9, [r1], #-773	; 0xfffffcfb
    1c70:	0500008b 	streq	r0, [r0, #-139]	; 0xffffff75
    1c74:	371f0194 			; <UNDEFINED> instruction: 0x371f0194
    1c78:	95050000 	strls	r0, [r5, #-0]
    1c7c:	003c5d01 	eorseq	r5, ip, r1, lsl #26
    1c80:	01960500 	orrseq	r0, r6, r0, lsl #10
    1c84:	00000b5c 	andeq	r0, r0, ip, asr fp
    1c88:	ec019705 	stc	7, cr9, [r1], {5}
    1c8c:	05000087 	streq	r0, [r0, #-135]	; 0xffffff79
    1c90:	15880198 	strne	r0, [r8, #408]	; 0x198
    1c94:	99050000 	stmdbls	r5, {}	; <UNPREDICTABLE>
    1c98:	004f0501 	subeq	r0, pc, r1, lsl #10
    1c9c:	019a0500 	orrseq	r0, sl, r0, lsl #10
    1ca0:	00000a73 	andeq	r0, r0, r3, ror sl
    1ca4:	c4019e05 	strgt	r9, [r1], #-3589	; 0xfffff1fb
    1ca8:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
    1cac:	488d019f 	stmmi	sp, {r0, r1, r2, r3, r4, r7, r8}
    1cb0:	a0050000 	andge	r0, r5, r0
    1cb4:	00124201 	andseq	r4, r2, r1, lsl #4
    1cb8:	01a10500 			; <UNDEFINED> instruction: 0x01a10500
    1cbc:	0000882d 	andeq	r8, r0, sp, lsr #16
    1cc0:	6401a205 	strvs	sl, [r1], #-517	; 0xfffffdfb
    1cc4:	05000059 	streq	r0, [r0, #-89]	; 0xffffffa7
    1cc8:	05bc01a7 	ldreq	r0, [ip, #423]!	; 0x1a7
    1ccc:	a8050000 	stmdage	r5, {}	; <UNPREDICTABLE>
    1cd0:	0070fb01 	rsbseq	pc, r0, r1, lsl #22
    1cd4:	01a90500 			; <UNDEFINED> instruction: 0x01a90500
    1cd8:	00004345 	andeq	r4, r0, r5, asr #6
    1cdc:	d601b105 	strle	fp, [r1], -r5, lsl #2
    1ce0:	0500004a 	streq	r0, [r0, #-74]	; 0xffffffb6
    1ce4:	838601b2 	orrhi	r0, r6, #-2147483604	; 0x8000002c
    1ce8:	b3050000 	movwlt	r0, #20480	; 0x5000
    1cec:	000e4a01 	andeq	r4, lr, r1, lsl #20
    1cf0:	01b40500 			; <UNDEFINED> instruction: 0x01b40500
    1cf4:	00007a53 	andeq	r7, r0, r3, asr sl
    1cf8:	c401b505 	strgt	fp, [r1], #-1285	; 0xfffffafb
    1cfc:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
    1d00:	591a01b9 	ldmdbpl	sl, {r0, r3, r4, r5, r7, r8}
    1d04:	bb050000 	bllt	141d0c <heap_size+0x121d0c>
    1d08:	00131601 	andseq	r1, r3, r1, lsl #12
    1d0c:	00040000 	andeq	r0, r4, r0
    1d10:	171d0500 	ldrne	r0, [sp, -r0, lsl #10]
    1d14:	0600005f 			; <UNDEFINED> instruction: 0x0600005f
    1d18:	002d8b64 	eoreq	r8, sp, r4, ror #22
    1d1c:	23650500 	cmncs	r5, #0, 10
    1d20:	0600005c 			; <UNDEFINED> instruction: 0x0600005c
    1d24:	00678266 	rsbeq	r8, r7, r6, ror #4
    1d28:	79670500 	stmdbvc	r7!, {r8, sl}^
    1d2c:	0600004f 	streq	r0, [r0], -pc, asr #32
    1d30:	002d8a6a 	eoreq	r8, sp, sl, ror #20
    1d34:	ac6b0500 	cfstr64ge	mvdx0, [fp], #-0
    1d38:	0600002d 	streq	r0, [r0], -sp, lsr #32
    1d3c:	0081e56e 	addeq	lr, r1, lr, ror #10
    1d40:	586f0500 	stmdapl	pc!, {r8, sl}^	; <UNPREDICTABLE>
    1d44:	0600001c 			; <UNDEFINED> instruction: 0x0600001c
    1d48:	006c7f70 	rsbeq	r7, ip, r0, ror pc
    1d4c:	99710500 	ldmdbls	r1!, {r8, sl}^
    1d50:	06000052 			; <UNDEFINED> instruction: 0x06000052
    1d54:	0081e474 	addeq	lr, r1, r4, ror r4
    1d58:	36750500 	ldrbtcc	r0, [r5], -r0, lsl #10
    1d5c:	06000035 			; <UNDEFINED> instruction: 0x06000035
    1d60:	007a4978 	rsbseq	r4, sl, r8, ror r9
    1d64:	1b790500 	blne	1e4316c <_end+0xe4316c>
    1d68:	06000022 	streq	r0, [r0], -r2, lsr #32
    1d6c:	0088bc7a 	addeq	fp, r8, sl, ror ip
    1d70:	787b0500 	ldmdavc	fp!, {r8, sl}^
    1d74:	0600000c 	streq	r0, [r0], -ip
    1d78:	007a487e 	rsbseq	r4, sl, lr, ror r8
    1d7c:	867f0500 	ldrbthi	r0, [pc], -r0, lsl #10
    1d80:	0600002b 	streq	r0, [r0], -fp, lsr #32
    1d84:	8dc80182 	stfhie	f0, [r8, #520]	; 0x208
    1d88:	83050000 	movwhi	r0, #20480	; 0x5000
    1d8c:	00005001 	andeq	r5, r0, r1
    1d90:	01840600 	orreq	r0, r4, r0, lsl #12
    1d94:	000039dd 	ldrdeq	r3, [r0], -sp
    1d98:	9f018505 	svcls	0x00018505
    1d9c:	06000055 			; <UNDEFINED> instruction: 0x06000055
    1da0:	8dc70188 	stfhie	f0, [r7, #544]	; 0x220
    1da4:	89050000 	stmdbhi	r5, {}	; <UNPREDICTABLE>
    1da8:	00590001 	subseq	r0, r9, r1
    1dac:	018c0600 	orreq	r0, ip, r0, lsl #12
    1db0:	00007c20 	andeq	r7, r0, r0, lsr #24
    1db4:	01018d05 	tsteq	r1, r5, lsl #26
    1db8:	06000055 			; <UNDEFINED> instruction: 0x06000055
    1dbc:	64ab018e 	strtvs	r0, [fp], #398	; 0x18e
    1dc0:	8f050000 	svchi	0x00050000
    1dc4:	005f4601 	subseq	r4, pc, r1, lsl #12
    1dc8:	01900600 	orrseq	r0, r0, r0, lsl #12
    1dcc:	00007c1f 	andeq	r7, r0, pc, lsl ip
    1dd0:	86019105 	strhi	r9, [r1], -r5, lsl #2
    1dd4:	0600001c 			; <UNDEFINED> instruction: 0x0600001c
    1dd8:	62210192 	eorvs	r0, r1, #-2147483612	; 0x80000024
    1ddc:	93050000 	movwls	r0, #20480	; 0x5000
    1de0:	0056c201 	subseq	ip, r6, r1, lsl #4
    1de4:	01940600 	orrseq	r0, r4, r0, lsl #12
    1de8:	0000842a 	andeq	r8, r0, sl, lsr #8
    1dec:	2b019505 	blcs	67208 <heap_size+0x47208>
    1df0:	0600005a 			; <UNDEFINED> instruction: 0x0600005a
    1df4:	62200196 	eorvs	r0, r0, #-2147483611	; 0x80000025
    1df8:	97050000 	strls	r0, [r5, -r0]
    1dfc:	006a5701 	rsbeq	r5, sl, r1, lsl #14
    1e00:	01980600 	orrseq	r0, r8, r0, lsl #12
    1e04:	0000701c 	andeq	r7, r0, ip, lsl r0
    1e08:	42019905 	andmi	r9, r1, #81920	; 0x14000
    1e0c:	06000026 	streq	r0, [r0], -r6, lsr #32
    1e10:	5579019a 	ldrbpl	r0, [r9, #-410]!	; 0xfffffe66
    1e14:	9b050000 	blls	141e1c <heap_size+0x121e1c>
    1e18:	00753f01 	rsbseq	r3, r5, r1, lsl #30
    1e1c:	019c0600 	orrseq	r0, ip, r0, lsl #12
    1e20:	0000701b 	andeq	r7, r0, fp, lsl r0
    1e24:	11019d05 	tstne	r1, r5, lsl #26
    1e28:	06000078 			; <UNDEFINED> instruction: 0x06000078
    1e2c:	6275019e 	rsbsvs	r0, r5, #-2147483609	; 0x80000027
    1e30:	9f050000 	svcls	0x00050000
    1e34:	00374501 	eorseq	r4, r7, r1, lsl #10
    1e38:	01a00600 	lsleq	r0, r0, #12
    1e3c:	000088ac 	andeq	r8, r0, ip, lsr #17
    1e40:	7701a105 	strvc	sl, [r1, -r5, lsl #2]
    1e44:	0600005f 			; <UNDEFINED> instruction: 0x0600005f
    1e48:	627401a2 	rsbsvs	r0, r4, #-2147483608	; 0x80000028
    1e4c:	a3050000 	movwge	r0, #20480	; 0x5000
    1e50:	0077cd01 	rsbseq	ip, r7, r1, lsl #26
    1e54:	01a50600 			; <UNDEFINED> instruction: 0x01a50600
    1e58:	00005fc1 	andeq	r5, r0, r1, asr #31
    1e5c:	c901a605 	stmdbgt	r1, {r0, r2, r9, sl, sp, pc}
    1e60:	0600003a 			; <UNDEFINED> instruction: 0x0600003a
    1e64:	12fb01a7 	rscsne	r0, fp, #-1073741783	; 0xc0000029
    1e68:	a8050000 	stmdage	r5, {}	; <UNPREDICTABLE>
    1e6c:	004d1c01 	subeq	r1, sp, r1, lsl #24
    1e70:	01a90600 			; <UNDEFINED> instruction: 0x01a90600
    1e74:	00005fc0 	andeq	r5, r0, r0, asr #31
    1e78:	3f01aa05 	svccc	0x0001aa05
    1e7c:	0600005b 			; <UNDEFINED> instruction: 0x0600005b
    1e80:	415001ab 	cmpmi	r0, fp, lsr #3
    1e84:	ac050000 	stcge	0, cr0, [r5], {-0}
    1e88:	0085f401 	addeq	pc, r5, r1, lsl #8
    1e8c:	01ad0600 			; <UNDEFINED> instruction: 0x01ad0600
    1e90:	0000887b 	andeq	r8, r0, fp, ror r8
    1e94:	4501ae05 	strmi	sl, [r1, #-3589]	; 0xfffff1fb
    1e98:	06000085 	streq	r0, [r0], -r5, lsl #1
    1e9c:	414f01af 	smlaltbmi	r0, pc, pc, r1	; <UNPREDICTABLE>
    1ea0:	b0050000 	andlt	r0, r5, r0
    1ea4:	00365701 	eorseq	r5, r6, r1, lsl #14
    1ea8:	01b10600 			; <UNDEFINED> instruction: 0x01b10600
    1eac:	00005557 	andeq	r5, r0, r7, asr r5
    1eb0:	cb01b205 	blgt	6e6cc <heap_size+0x4e6cc>
    1eb4:	0600006b 	streq	r0, [r0], -fp, rrx
    1eb8:	16c501b3 			; <UNDEFINED> instruction: 0x16c501b3
    1ebc:	b4050000 	strlt	r0, [r5], #-0
    1ec0:	007bec01 	rsbseq	lr, fp, r1, lsl #24
    1ec4:	01b50600 			; <UNDEFINED> instruction: 0x01b50600
    1ec8:	00005556 	andeq	r5, r0, r6, asr r5
    1ecc:	7c01b605 	stcvc	6, cr11, [r1], {5}
    1ed0:	06000068 	streq	r0, [r0], -r8, rrx
    1ed4:	1c3c01b7 	ldfnes	f0, [ip], #-732	; 0xfffffd24
    1ed8:	b8050000 	stmdalt	r5, {}	; <UNPREDICTABLE>
    1edc:	000b6c01 	andeq	r6, fp, r1, lsl #24
    1ee0:	01b90600 			; <UNDEFINED> instruction: 0x01b90600
    1ee4:	000014bb 			; <UNDEFINED> instruction: 0x000014bb
    1ee8:	4e01ba05 	vmlami.f32	s22, s2, s10
    1eec:	06000050 			; <UNDEFINED> instruction: 0x06000050
    1ef0:	1c3b01bb 	ldfnes	f0, [fp], #-748	; 0xfffffd14
    1ef4:	bc050000 	stclt	0, cr0, [r5], {-0}
    1ef8:	0051c401 	subseq	ip, r1, r1, lsl #8
    1efc:	01bf0600 			; <UNDEFINED> instruction: 0x01bf0600
    1f00:	00006eff 	strdeq	r6, [r0], -pc	; <UNPREDICTABLE>
    1f04:	5d01c005 	stcpl	0, cr12, [r1, #-20]	; 0xffffffec
    1f08:	06000080 	streq	r0, [r0], -r0, lsl #1
    1f0c:	380201c1 	stmdacc	r2, {r0, r6, r7, r8}
    1f10:	c2050000 	andgt	r0, r5, #0
    1f14:	0051a701 	subseq	sl, r1, r1, lsl #14
    1f18:	01c50600 	biceq	r0, r5, r0, lsl #12
    1f1c:	00006efe 	strdeq	r6, [r0], -lr
    1f20:	b801c605 	stmdalt	r1, {r0, r2, r9, sl, lr, pc}
    1f24:	06000053 			; <UNDEFINED> instruction: 0x06000053
    1f28:	21e701c9 	mvncs	r0, r9, asr #3
    1f2c:	ca050000 	bgt	141f34 <heap_size+0x121f34>
    1f30:	00483801 	subeq	r3, r8, r1, lsl #16
    1f34:	01cb0600 	biceq	r0, fp, r0, lsl #12
    1f38:	000005ec 	andeq	r0, r0, ip, ror #11
    1f3c:	c601cc05 	strgt	ip, [r1], -r5, lsl #24
    1f40:	06000057 			; <UNDEFINED> instruction: 0x06000057
    1f44:	21e601cd 	mvncs	r0, sp, asr #3
    1f48:	ce050000 	cdpgt	0, 0, cr0, cr5, cr0, {0}
    1f4c:	0088c601 	addeq	ip, r8, r1, lsl #12
    1f50:	01d20600 	bicseq	r0, r2, r0, lsl #12
    1f54:	000035a8 	andeq	r3, r0, r8, lsr #11
    1f58:	f101d305 			; <UNDEFINED> instruction: 0xf101d305
    1f5c:	06000080 	streq	r0, [r0], -r0, lsl #1
    1f60:	84fd01d4 	ldrbthi	r0, [sp], #468	; 0x1d4
    1f64:	d5050000 	strle	r0, [r5, #-0]
    1f68:	008c9401 	addeq	r9, ip, r1, lsl #8
    1f6c:	01d70600 	bicseq	r0, r7, r0, lsl #12
    1f70:	0000683d 	andeq	r6, r0, sp, lsr r8
    1f74:	6501d805 	strvs	sp, [r1, #-2053]	; 0xfffff7fb
    1f78:	0600008c 	streq	r0, [r0], -ip, lsl #1
    1f7c:	1d9b01d9 	ldfnes	f0, [fp, #868]	; 0x364
    1f80:	da050000 	ble	141f88 <heap_size+0x121f88>
    1f84:	00888a01 	addeq	r8, r8, r1, lsl #20
    1f88:	01dc0600 	bicseq	r0, ip, r0, lsl #12
    1f8c:	0000106d 	andeq	r1, r0, sp, rrx
    1f90:	fe01dd05 	vsdot.s8	d13, d1, d5[0]
    1f94:	06000062 	streq	r0, [r0], -r2, rrx
    1f98:	48ca01df 	stmiami	sl, {r0, r1, r2, r3, r4, r6, r7, r8}^
    1f9c:	e0050000 	and	r0, r5, r0
    1fa0:	00155601 	andseq	r5, r5, r1, lsl #12
    1fa4:	01e10600 	mvneq	r0, r0, lsl #12
    1fa8:	000069ec 	andeq	r6, r0, ip, ror #19
    1fac:	9501e205 	strls	lr, [r1, #-517]	; 0xfffffdfb
    1fb0:	06000044 	streq	r0, [r0], -r4, asr #32
    1fb4:	89c901e4 	stmibhi	r9, {r2, r5, r6, r7, r8}^
    1fb8:	e5050000 	str	r0, [r5, #-0]
    1fbc:	00007b01 	andeq	r7, r0, r1, lsl #22
    1fc0:	01e60600 	mvneq	r0, r0, lsl #12
    1fc4:	000071b1 			; <UNDEFINED> instruction: 0x000071b1
    1fc8:	0f01e705 	svceq	0x0001e705
    1fcc:	06000034 			; <UNDEFINED> instruction: 0x06000034
    1fd0:	717c01ef 	cmnvc	ip, pc, ror #3
    1fd4:	f0050000 			; <UNDEFINED> instruction: 0xf0050000
    1fd8:	005ce501 	subseq	lr, ip, r1, lsl #10
    1fdc:	01f10600 	mvnseq	r0, r0, lsl #12
    1fe0:	000060ba 	strheq	r6, [r0], -sl
    1fe4:	0501f205 	streq	pc, [r1, #-517]	; 0xfffffdfb
    1fe8:	0600007a 			; <UNDEFINED> instruction: 0x0600007a
    1fec:	32f401f3 	rscscc	r0, r4, #-1073741764	; 0xc000003c
    1ff0:	f4050000 	vst4.8	{d0-d3}, [r5], r0
    1ff4:	0022d601 	eoreq	sp, r2, r1, lsl #12
    1ff8:	01f50600 	mvnseq	r0, r0, lsl #12
    1ffc:	000031a8 	andeq	r3, r0, r8, lsr #3
    2000:	1901f605 	stmdbne	r1, {r0, r2, r9, sl, ip, sp, lr, pc}
    2004:	0600003b 			; <UNDEFINED> instruction: 0x0600003b
    2008:	717b01f7 	ldrshvc	r0, [fp, #-23]!	; 0xffffffe9
    200c:	f8050000 			; <UNDEFINED> instruction: 0xf8050000
    2010:	002a5601 	eoreq	r5, sl, r1, lsl #12
    2014:	01f90600 	mvnseq	r0, r0, lsl #12
    2018:	000060b9 	strheq	r6, [r0], -r9
    201c:	3e01fa05 	vmlacc.f32	s30, s2, s10
    2020:	06000072 			; <UNDEFINED> instruction: 0x06000072
    2024:	32f301fb 	rscscc	r0, r3, #-1073741762	; 0xc000003e
    2028:	fc050000 	stc2	0, cr0, [r5], {-0}
    202c:	001dcf01 	andseq	ip, sp, r1, lsl #30
    2030:	01fd0600 	mvnseq	r0, r0, lsl #12
    2034:	000031a7 	andeq	r3, r0, r7, lsr #3
    2038:	4701fe05 	strmi	pc, [r1, -r5, lsl #28]
    203c:	0600002d 	streq	r0, [r0], -sp, lsr #32
    2040:	85e301ff 	strbhi	r0, [r3, #511]!	; 0x1ff
    2044:	80050000 	andhi	r0, r5, r0
    2048:	00457c02 	subeq	r7, r5, r2, lsl #24
    204c:	02810600 	addeq	r0, r1, #0, 12
    2050:	000085e2 	andeq	r8, r0, r2, ror #11
    2054:	a5028205 	strge	r8, [r2, #-517]	; 0xfffffdfb
    2058:	0000002e 	andeq	r0, r0, lr, lsr #32
    205c:	05000004 	streq	r0, [r0, #-4]
    2060:	006cb628 	rsbeq	fp, ip, r8, lsr #12
    2064:	4b290500 	blmi	a4346c <heap_size+0xa2346c>
    2068:	05000066 	streq	r0, [r0, #-102]	; 0xffffff9a
    206c:	007b5e2a 	rsbseq	r5, fp, sl, lsr #28
    2070:	962b0500 	strtls	r0, [fp], -r0, lsl #10
    2074:	05000027 	streq	r0, [r0, #-39]	; 0xffffffd9
    2078:	005ebb2c 	subseq	fp, lr, ip, lsr #22
    207c:	892d0500 	pushhi	{r8, sl}
    2080:	05000078 	streq	r0, [r0, #-120]	; 0xffffff88
    2084:	002ab12e 	eoreq	fp, sl, lr, lsr #2
    2088:	c92f0500 	stmdbgt	pc!, {r8, sl}	; <UNPREDICTABLE>
    208c:	0500004f 	streq	r0, [r0, #-79]	; 0xffffffb1
    2090:	00100d30 	andseq	r0, r0, r0, lsr sp
    2094:	22310500 	eorscs	r0, r1, #0, 10
    2098:	05000086 	streq	r0, [r0, #-134]	; 0xffffff7a
    209c:	000dc83e 	andeq	ip, sp, lr, lsr r8
    20a0:	1d3f0500 	cfldr32ne	mvfx0, [pc, #-0]	; 20a8 <_strtoul_l.isra.0+0x80>
    20a4:	0500007a 	streq	r0, [r0, #-122]	; 0xffffff86
    20a8:	00571d40 	subseq	r1, r7, r0, asr #26
    20ac:	ab410500 	blge	10434b4 <_end+0x434b4>
    20b0:	05000050 	streq	r0, [r0, #-80]	; 0xffffffb0
    20b4:	0027ec42 	eoreq	lr, r7, r2, asr #24
    20b8:	e0430500 	sub	r0, r3, r0, lsl #10
    20bc:	0500005b 	streq	r0, [r0, #-91]	; 0xffffffa5
    20c0:	0034cf44 	eorseq	ip, r4, r4, asr #30
    20c4:	33450500 	movtcc	r0, #21760	; 0x5500
    20c8:	05000024 	streq	r0, [r0, #-36]	; 0xffffffdc
    20cc:	00816446 	addeq	r6, r1, r6, asr #8
    20d0:	05470500 	strbeq	r0, [r7, #-1280]	; 0xfffffb00
    20d4:	05000045 	streq	r0, [r0, #-69]	; 0xffffffbb
    20d8:	003a3f48 	eorseq	r3, sl, r8, asr #30
    20dc:	62490500 	subvs	r0, r9, #0, 10
    20e0:	05000070 	streq	r0, [r0, #-112]	; 0xffffff90
    20e4:	0046cd4a 	subeq	ip, r6, sl, asr #26
    20e8:	9e4b0500 	cdpls	5, 4, cr0, cr11, cr0, {0}
    20ec:	05000033 	streq	r0, [r0, #-51]	; 0xffffffcd
    20f0:	0070c44c 	rsbseq	ip, r0, ip, asr #8
    20f4:	d74d0500 	strble	r0, [sp, -r0, lsl #10]
    20f8:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
    20fc:	0006b44e 	andeq	fp, r6, lr, asr #8
    2100:	684f0500 	stmdavs	pc, {r8, sl}^	; <UNPREDICTABLE>
    2104:	05000039 	streq	r0, [r0, #-57]	; 0xffffffc7
    2108:	00231a50 	eoreq	r1, r3, r0, asr sl
    210c:	4d510500 	cfldr64mi	mvdx0, [r1, #-0]
    2110:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
    2114:	0039f952 	eorseq	pc, r9, r2, asr r9	; <UNPREDICTABLE>
    2118:	2e530500 	cdpcs	5, 5, cr0, cr3, cr0, {0}
    211c:	0500000b 	streq	r0, [r0, #-11]
    2120:	00822e54 	addeq	r2, r2, r4, asr lr
    2124:	7e550500 	cdpvc	5, 5, cr0, cr5, cr0, {0}
    2128:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
    212c:	003ae956 	eorseq	lr, sl, r6, asr r9
    2130:	0f680500 	svceq	0x00680500
    2134:	05000024 	streq	r0, [r0, #-36]	; 0xffffffdc
    2138:	003fc869 	eorseq	ip, pc, r9, ror #16
    213c:	fa6a0500 	blx	1a83544 <_end+0xa83544>
    2140:	0500005d 	streq	r0, [r0, #-93]	; 0xffffffa3
    2144:	000fad6b 	andeq	sl, pc, fp, ror #26
    2148:	706c0500 	rsbvc	r0, ip, r0, lsl #10
    214c:	05000078 	streq	r0, [r0, #-120]	; 0xffffff88
    2150:	0033836d 	eorseq	r8, r3, sp, ror #6
    2154:	5d6e0500 	cfstr64pl	mvdx0, [lr, #-0]
    2158:	05000057 	streq	r0, [r0, #-87]	; 0xffffffa9
    215c:	004f3d6f 	subeq	r3, pc, pc, ror #26
    2160:	60700500 	rsbsvs	r0, r0, r0, lsl #10
    2164:	05000003 	streq	r0, [r0, #-3]
    2168:	002a8771 	eoreq	r8, sl, r1, ror r7
    216c:	88720500 	ldmdahi	r2!, {r8, sl}^
    2170:	0500007f 	streq	r0, [r0, #-127]	; 0xffffff81
    2174:	0047057f 	subeq	r0, r7, pc, ror r5
    2178:	01800500 	orreq	r0, r0, r0, lsl #10
    217c:	000063ea 	andeq	r6, r0, sl, ror #7
    2180:	29019605 	stmdbcs	r1, {r0, r2, r9, sl, ip, pc}
    2184:	0500005d 	streq	r0, [r0, #-93]	; 0xffffffa3
    2188:	4e9c01b4 	mrcmi	1, 4, r0, cr12, cr4, {5}
    218c:	b8050000 	stmdalt	r5, {}	; <UNPREDICTABLE>
    2190:	008c1a01 	addeq	r1, ip, r1, lsl #20
    2194:	01c80500 	biceq	r0, r8, r0, lsl #10
    2198:	00008789 	andeq	r8, r0, r9, lsl #15
    219c:	8a01ca05 	bhi	749b8 <heap_size+0x549b8>
    21a0:	05000010 	streq	r0, [r0, #-16]
    21a4:	0a1001da 	beq	402914 <heap_size+0x3e2914>
    21a8:	dc050000 	stcle	0, cr0, [r5], {-0}
    21ac:	0037e801 	eorseq	lr, r7, r1, lsl #16
    21b0:	01ee0500 	mvneq	r0, r0, lsl #10
    21b4:	000054e5 	andeq	r5, r0, r5, ror #9
    21b8:	0501f005 	streq	pc, [r1, #-5]
    21bc:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
    21c0:	7e6101f2 	mcrvc	1, 3, r0, cr1, cr2, {7}
    21c4:	90050000 	andls	r0, r5, r0
    21c8:	000e7b02 	andeq	r7, lr, r2, lsl #22
    21cc:	02920500 	addseq	r0, r2, #0, 10
    21d0:	00005b61 	andeq	r5, r0, r1, ror #22
    21d4:	58029405 	stmdapl	r2, {r0, r2, sl, ip, pc}
    21d8:	0500004b 	streq	r0, [r0, #-75]	; 0xffffffb5
    21dc:	083e0296 	ldmdaeq	lr!, {r1, r2, r4, r7, r9}
    21e0:	98050000 	stmdals	r5, {}	; <UNPREDICTABLE>
    21e4:	00336702 	eorseq	r6, r3, r2, lsl #14
    21e8:	029a0500 	addseq	r0, sl, #0, 10
    21ec:	00000bef 	andeq	r0, r0, pc, ror #23
    21f0:	17029c05 	strne	r9, [r2, -r5, lsl #24]
    21f4:	0500004c 	streq	r0, [r0, #-76]	; 0xffffffb4
    21f8:	88fc029e 	ldmhi	ip!, {r1, r2, r3, r4, r7, r9}^
    21fc:	a0050000 	andge	r0, r5, r0
    2200:	00266602 	eoreq	r6, r6, r2, lsl #12
    2204:	02b40500 	adcseq	r0, r4, #0, 10
    2208:	00003fad 	andeq	r3, r0, sp, lsr #31
    220c:	8502b605 	strhi	fp, [r2, #-1541]	; 0xfffff9fb
    2210:	05000050 	streq	r0, [r0, #-80]	; 0xffffffb0
    2214:	4f9202b8 	svcmi	0x009202b8
    2218:	ba050000 	blt	142220 <heap_size+0x122220>
    221c:	0017e702 	andseq	lr, r7, r2, lsl #14
    2220:	02bc0500 	adcseq	r0, ip, #0, 10
    2224:	0000671e 	andeq	r6, r0, lr, lsl r7
    2228:	2302be05 	movwcs	fp, #11781	; 0x2e05
    222c:	05000041 	streq	r0, [r0, #-65]	; 0xffffffbf
    2230:	1d0402c0 	sfmne	f0, 4, [r4, #-768]	; 0xfffffd00
    2234:	c2050000 	andgt	r0, r5, #0
    2238:	002d7202 	eoreq	r7, sp, r2, lsl #4
    223c:	02c40500 	sbceq	r0, r4, #0, 10
    2240:	00000adc 	ldrdeq	r0, [r0], -ip
    2244:	a902c605 	stmdbge	r2, {r0, r2, r9, sl, lr, pc}
    2248:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
    224c:	6d9102c8 	lfmvs	f0, 4, [r1, #800]	; 0x320
    2250:	ca050000 	bgt	142258 <heap_size+0x122258>
    2254:	0029a202 	eoreq	sl, r9, r2, lsl #4
    2258:	02cc0500 	sbceq	r0, ip, #0, 10
    225c:	00008d75 	andeq	r8, r0, r5, ror sp
    2260:	0602e705 	streq	lr, [r2], -r5, lsl #14
    2264:	05000071 	streq	r0, [r0, #-113]	; 0xffffff8f
    2268:	875402ee 	ldrbhi	r0, [r4, -lr, ror #5]
    226c:	f3050000 	vhadd.u8	d0, d5, d0
    2270:	00019402 	andeq	r9, r1, r2, lsl #8
    2274:	02f40500 	rscseq	r0, r4, #0, 10
    2278:	00006d0a 	andeq	r6, r0, sl, lsl #26
    227c:	6402f505 	strvs	pc, [r2], #-1285	; 0xfffffafb
    2280:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
    2284:	5800038e 	stmdapl	r0, {r1, r2, r3, r7, r8, r9}
    2288:	a0050000 	andge	r0, r5, r0
    228c:	0015a803 	andseq	sl, r5, r3, lsl #16
    2290:	03a40500 			; <UNDEFINED> instruction: 0x03a40500
    2294:	000001c7 	andeq	r0, r0, r7, asr #3
    2298:	1403a605 	strne	sl, [r3], #-1541	; 0xfffff9fb
    229c:	00000061 	andeq	r0, r0, r1, rrx
    22a0:	83020004 	movwhi	r0, #8196	; 0x2004
    22a4:	07000003 	streq	r0, [r0, -r3]
    22a8:	00000151 	andeq	r0, r0, r1, asr r1
    22ac:	03010003 	movweq	r0, #4099	; 0x1003
    22b0:	1b050a01 	blne	144abc <heap_size+0x124abc>
    22b4:	00009224 	andeq	r9, r0, r4, lsr #4
    22b8:	050b1d03 	streq	r1, [fp, #-3331]	; 0xfffff2fd
    22bc:	0051f208 	subseq	pc, r1, r8, lsl #4
    22c0:	0c0a0300 	stceq	3, cr0, [sl], {-0}
    22c4:	12c40805 	sbcne	r0, r4, #327680	; 0x50000
    22c8:	0e030000 	cdpeq	0, 0, cr0, cr3, cr0, {0}
    22cc:	0b99070d 	bleq	fe643f08 <__stack+0xf6643f10>
    22d0:	07040000 	streq	r0, [r4, -r0]
    22d4:	00000bbb 			; <UNDEFINED> instruction: 0x00000bbb
    22d8:	0e0b0304 	cdpeq	3, 0, cr0, cr11, cr4, {0}
    22dc:	7a7c0205 	bvc	1f02af8 <_end+0xf02af8>
    22e0:	04030000 	streq	r0, [r3], #-0
    22e4:	0bfb070f 	bleq	ffec3f28 <__stack+0xf7ec3f30>
    22e8:	03040000 	movweq	r0, #16384	; 0x4000
    22ec:	12071005 	andne	r1, r7, #5
    22f0:	0400000c 	streq	r0, [r0], #-12
    22f4:	000c6e07 	andeq	r6, ip, r7, lsl #28
    22f8:	aa070400 	bge	1c3300 <heap_size+0x1a3300>
    22fc:	0400000c 	streq	r0, [r0], #-12
    2300:	00243d07 	eoreq	r3, r4, r7, lsl #26
    2304:	11230300 			; <UNDEFINED> instruction: 0x11230300
    2308:	7fe12905 	svcvc	0x00e12905
    230c:	2b030000 	blcs	c2314 <heap_size+0xa2314>
    2310:	0cee0702 	stcleq	7, cr0, [lr], #8
    2314:	03040000 	movweq	r0, #16384	; 0x4000
    2318:	5307052d 	movwpl	r0, #29997	; 0x752d
    231c:	04000024 	streq	r0, [r0], #-36	; 0xffffffdc
    2320:	000e1407 	andeq	r1, lr, r7, lsl #8
    2324:	24030400 	strcs	r0, [r3], #-1024	; 0xfffffc00
    2328:	24ea0705 	strbtcs	r0, [sl], #1797	; 0x705
    232c:	05040000 	streq	r0, [r4, #-0]
    2330:	008f5727 	addeq	r5, pc, r7, lsr #14
    2334:	12280300 	eorne	r0, r8, #0, 6
    2338:	0025e007 	eoreq	lr, r5, r7
    233c:	3c030400 	cfstrscc	mvf0, [r3], {-0}
    2340:	e20b0506 	and	r0, fp, #25165824	; 0x1800000
    2344:	03000036 	movweq	r0, #54	; 0x36
    2348:	03040b0d 	movweq	r0, #19213	; 0x4b0d
    234c:	0304050e 	movweq	r0, #17678	; 0x450e
    2350:	1405040f 	strne	r0, [r5], #-1039	; 0xfffffbf1
    2354:	00007fba 			; <UNDEFINED> instruction: 0x00007fba
    2358:	05131803 	ldreq	r1, [r3, #-2051]	; 0xfffff7fd
    235c:	0059e706 	subseq	lr, r9, r6, lsl #14
    2360:	19030400 	stmdbne	r3, {sl}
    2364:	122e0703 	eorne	r0, lr, #786432	; 0xc0000
    2368:	07040000 	streq	r0, [r4, -r0]
    236c:	00001280 	andeq	r1, r0, r0, lsl #5
    2370:	05019f03 	streq	r9, [r1, #-3843]	; 0xfffff0fd
    2374:	00129f07 	andseq	r9, r2, r7, lsl #30
    2378:	e2070400 	and	r0, r7, #0, 8
    237c:	04000012 	streq	r0, [r0], #-18	; 0xffffffee
    2380:	00193007 	andseq	r3, r9, r7
    2384:	3d030400 	cfstrscc	mvf0, [r3, #-0]
    2388:	11670714 	cmnne	r7, r4, lsl r7
    238c:	3e030000 	cdpcc	0, 0, cr0, cr3, cr0, {0}
    2390:	40030405 	andmi	r0, r3, r5, lsl #8
    2394:	13020707 	movwne	r0, #9991	; 0x2707
    2398:	07040000 	streq	r0, [r4, -r0]
    239c:	0000136c 	andeq	r1, r0, ip, ror #6
    23a0:	1501ef03 	strne	lr, [r1, #-3843]	; 0xfffff0fd
    23a4:	89d21305 	ldmibhi	r2, {r0, r2, r8, r9, ip}^
    23a8:	03040000 	movweq	r0, #16384	; 0x4000
    23ac:	041601f0 	ldreq	r0, [r6], #-496	; 0xfffffe10
    23b0:	3f01f406 	svccc	0x0001f406
    23b4:	0400004d 	streq	r0, [r0], #-77	; 0xffffffb3
    23b8:	90194305 	andsls	r4, r9, r5, lsl #6
    23bc:	4f030000 	svcmi	0x00030000
    23c0:	25f00717 	ldrbcs	r0, [r0, #1815]!	; 0x717
    23c4:	07040000 	streq	r0, [r4, -r0]
    23c8:	00002606 	andeq	r2, r0, r6, lsl #12
    23cc:	18020304 	stmdane	r2, {r2, r8, r9}
    23d0:	92980805 	addsls	r0, r8, #327680	; 0x50000
    23d4:	0a030000 	beq	c23dc <heap_size+0xa23dc>
    23d8:	1a07040f 	bne	1c341c <heap_size+0x1a341c>
    23dc:	03000027 	movweq	r0, #39	; 0x27
    23e0:	30070510 	andcc	r0, r7, r0, lsl r5
    23e4:	04000027 	streq	r0, [r0], #-39	; 0xffffffd9
    23e8:	05191403 	ldreq	r1, [r9, #-1027]	; 0xfffffbfd
    23ec:	00902902 	addseq	r2, r0, r2, lsl #18
    23f0:	65070400 	strvs	r0, [r7, #-1024]	; 0xfffffc00
    23f4:	04000027 	streq	r0, [r0], #-39	; 0xffffffd9
    23f8:	051a0303 	ldreq	r0, [sl, #-771]	; 0xfffffcfd
    23fc:	003a2b02 	eorseq	r2, sl, r2, lsl #22
    2400:	08040300 	stmdaeq	r4, {r8, r9}
    2404:	00278707 	eoreq	r8, r7, r7, lsl #14
    2408:	050e0300 	streq	r0, [lr, #-768]	; 0xfffffd00
    240c:	00273007 	eoreq	r3, r7, r7
    2410:	22070400 	andcs	r0, r7, #0, 8
    2414:	04000014 	streq	r0, [r0], #-20	; 0xffffffec
    2418:	09040304 	stmdbeq	r4, {r2, r8, r9}
    241c:	80ac0205 	adchi	r0, ip, r5, lsl #4
    2420:	04030000 	streq	r0, [r3], #-0
    2424:	1c0b031b 	stcne	3, cr0, [fp], {27}
    2428:	001d0e07 	andseq	r0, sp, r7, lsl #28
    242c:	0d050400 	cfstrseq	mvf0, [r5, #-0]
    2430:	00000796 	muleq	r0, r6, r7
    2434:	205c0704 	subscs	r0, ip, r4, lsl #14
    2438:	04040000 	streq	r0, [r4], #-0
    243c:	00000400 	andeq	r0, r0, r0, lsl #8
    2440:	918d1f05 	orrls	r1, sp, r5, lsl #30
    2444:	21050000 	mrscs	r0, (UNDEF: 5)
    2448:	00002c8c 	andeq	r2, r0, ip, lsl #25
    244c:	90d52205 	sbcsls	r2, r5, r5, lsl #4
    2450:	04000000 	streq	r0, [r0], #-0
    2454:	bb050000 	bllt	14245c <heap_size+0x12245c>
    2458:	00183e01 	andseq	r3, r8, r1, lsl #28
    245c:	01bc0500 			; <UNDEFINED> instruction: 0x01bc0500
    2460:	00000c6c 	andeq	r0, r0, ip, ror #24
    2464:	1101bd05 	tstne	r1, r5, lsl #26
    2468:	05000081 	streq	r0, [r0, #-129]	; 0xffffff7f
    246c:	159901be 	ldrne	r0, [r9, #446]	; 0x1be
    2470:	bf050000 	svclt	0x00050000
    2474:	00405501 	subeq	r5, r0, r1, lsl #10
    2478:	01c00500 	biceq	r0, r0, r0, lsl #10
    247c:	00001026 	andeq	r1, r0, r6, lsr #32
    2480:	b601c105 	strlt	ip, [r1], -r5, lsl #2
    2484:	0500005f 	streq	r0, [r0, #-95]	; 0xffffffa1
    2488:	69e201c2 	stmibvs	r2!, {r1, r6, r7, r8}^
    248c:	c3050000 	movwgt	r0, #20480	; 0x5000
    2490:	0069de01 	rsbeq	sp, r9, r1, lsl #28
    2494:	01c40500 	biceq	r0, r4, r0, lsl #10
    2498:	00002513 	andeq	r2, r0, r3, lsl r5
    249c:	2801c505 	stmdacs	r1, {r0, r2, r8, sl, lr, pc}
    24a0:	05000064 	streq	r0, [r0, #-100]	; 0xffffff9c
    24a4:	250f01c6 	strcs	r0, [pc, #-454]	; 22e6 <_ungetc_r+0xe2>
    24a8:	c7050000 	strgt	r0, [r5, -r0]
    24ac:	001d2b01 	andseq	r2, sp, r1, lsl #22
    24b0:	01c80500 	biceq	r0, r8, r0, lsl #10
    24b4:	00002537 	andeq	r2, r0, r7, lsr r5
    24b8:	0d01c905 	vstreq.16	s24, [r1, #-10]	; <UNPREDICTABLE>
    24bc:	05000081 	streq	r0, [r0, #-129]	; 0xffffff7f
    24c0:	6fdc01ca 	svcvs	0x00dc01ca
    24c4:	d2050000 	andle	r0, r5, #0
    24c8:	000ef501 	andeq	pc, lr, r1, lsl #10
    24cc:	01ee0600 	mvneq	r0, r0, lsl #12
    24d0:	00004ab0 			; <UNDEFINED> instruction: 0x00004ab0
    24d4:	d3039106 	movwle	r9, #12550	; 0x3106
    24d8:	0500004b 	streq	r0, [r0, #-75]	; 0xffffffb5
    24dc:	38d80396 	ldmcc	r8, {r1, r2, r4, r7, r8, r9}^
    24e0:	9c060000 	stcls	0, cr0, [r6], {-0}
    24e4:	004bcc03 	subeq	ip, fp, r3, lsl #24
    24e8:	00040000 	andeq	r0, r4, r0
    24ec:	05270500 	streq	r0, [r7, #-1280]!	; 0xfffffb00
    24f0:	05000052 	streq	r0, [r0, #-82]	; 0xffffffae
    24f4:	005f6b28 	subseq	r6, pc, r8, lsr #22
    24f8:	002a0500 	eoreq	r0, sl, r0, lsl #10
    24fc:	05000052 	streq	r0, [r0, #-82]	; 0xffffffae
    2500:	5cff0189 	ldfple	f0, [pc], #548	; 272c <_realloc_r+0x18>
    2504:	8a050000 	bhi	14250c <heap_size+0x12250c>
    2508:	00475a01 	subeq	r5, r7, r1, lsl #20
    250c:	018b0500 	orreq	r0, fp, r0, lsl #10
    2510:	00005611 	andeq	r5, r0, r1, lsl r6
    2514:	8f018c05 	svchi	0x00018c05
    2518:	05000064 	streq	r0, [r0, #-100]	; 0xffffff9c
    251c:	3a1e018d 	bcc	782b58 <heap_size+0x762b58>
    2520:	8e050000 	cdphi	0, 0, cr0, cr5, cr0, {0}
    2524:	003a1a01 	eorseq	r1, sl, r1, lsl #20
    2528:	018f0500 	orreq	r0, pc, r0, lsl #10
    252c:	000046b0 			; <UNDEFINED> instruction: 0x000046b0
    2530:	fb019005 	blx	6654e <heap_size+0x4654e>
    2534:	0500005c 	streq	r0, [r0, #-92]	; 0xffffffa4
    2538:	573e0191 			; <UNDEFINED> instruction: 0x573e0191
    253c:	a1060000 	mrsge	r0, (UNDEF: 6)
    2540:	00796a01 	rsbseq	r6, r9, r1, lsl #20
    2544:	01ee0600 	mvneq	r0, r0, lsl #12
    2548:	00004ab0 			; <UNDEFINED> instruction: 0x00004ab0
    254c:	a6028b05 	strge	r8, [r2], -r5, lsl #22
    2550:	0500000b 	streq	r0, [r0, #-11]
    2554:	7ad9028c 	bvc	ff642f8c <__stack+0xf7642f94>
    2558:	8d050000 	stchi	0, cr0, [r5, #-0]
    255c:	006cac02 	rsbeq	sl, ip, r2, lsl #24
    2560:	028e0500 	addeq	r0, lr, #0, 10
    2564:	00008151 	andeq	r8, r0, r1, asr r1
    2568:	9e028f05 	cdpls	15, 0, cr8, cr2, cr5, {0}
    256c:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
    2570:	4d660290 	sfmmi	f0, 2, [r6, #-576]!	; 0xfffffdc0
    2574:	91050000 	mrsls	r0, (UNDEF: 5)
    2578:	0036ab02 	eorseq	sl, r6, r2, lsl #22
    257c:	02920500 	addseq	r0, r2, #0, 10
    2580:	000036a7 	andeq	r3, r0, r7, lsr #13
    2584:	d6029305 	strle	r9, [r2], -r5, lsl #6
    2588:	05000060 	streq	r0, [r0, #-96]	; 0xffffffa0
    258c:	67a80294 			; <UNDEFINED> instruction: 0x67a80294
    2590:	95050000 	strls	r0, [r5, #-0]
    2594:	006c0102 	rsbeq	r0, ip, r2, lsl #2
    2598:	02960500 	addseq	r0, r6, #0, 10
    259c:	000031bf 			; <UNDEFINED> instruction: 0x000031bf
    25a0:	fc029705 	stc2	7, cr9, [r2], {5}
    25a4:	0500006b 	streq	r0, [r0, #-107]	; 0xffffff95
    25a8:	6ca80298 	sfmvs	f0, 4, [r8], #608	; 0x260
    25ac:	99050000 	stmdbls	r5, {}	; <UNPREDICTABLE>
    25b0:	0054d202 	subseq	sp, r4, r2, lsl #4
    25b4:	02a60600 	adceq	r0, r6, #0, 12
    25b8:	000081d6 	ldrdeq	r8, [r0], -r6
    25bc:	2202db06 	andcs	sp, r2, #6144	; 0x1800
    25c0:	0600000e 	streq	r0, [r0], -lr
    25c4:	4bd30391 	blmi	ff4c3410 <__stack+0xf74c3418>
    25c8:	96050000 	strls	r0, [r5], -r0
    25cc:	0038d803 	eorseq	sp, r8, r3, lsl #16
    25d0:	039c0600 	orrseq	r0, ip, #0, 12
    25d4:	00004bcc 	andeq	r4, r0, ip, asr #23
    25d8:	1903a105 	stmdbne	r3, {r0, r2, r8, sp, pc}
    25dc:	00000044 	andeq	r0, r0, r4, asr #32
    25e0:	06000004 	streq	r0, [r0], -r4
    25e4:	00931b22 	addseq	r1, r3, r2, lsr #22
    25e8:	9c270500 	cfstr32ls	mvfx0, [r7], #-0
    25ec:	00000090 	muleq	r0, r0, r0
    25f0:	05000004 	streq	r0, [r0, #-4]
    25f4:	00924802 	addseq	r4, r2, r2, lsl #16
    25f8:	020d0500 	andeq	r0, sp, #0, 10
    25fc:	0500008f 	streq	r0, [r0, #-143]	; 0xffffff71
    2600:	008fc215 	addeq	ip, pc, r5, lsl r2	; <UNPREDICTABLE>
    2604:	00040000 	andeq	r0, r4, r0
    2608:	57510500 	ldrbpl	r0, [r1, -r0, lsl #10]
    260c:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
    2610:	0091d252 	addseq	sp, r1, r2, asr r2
    2614:	75530500 	ldrbvc	r0, [r3, #-1280]	; 0xfffffb00
    2618:	0500008e 	streq	r0, [r0, #-142]	; 0xffffff72
    261c:	0092c954 	addseq	ip, r2, r4, asr r9
    2620:	73560500 	cmpvc	r6, #0, 10
    2624:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
    2628:	00915457 	addseq	r5, r1, r7, asr r4
    262c:	ac580500 	cfldr64ge	mvdx0, [r8], {-0}
    2630:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
    2634:	008ea859 	addeq	sl, lr, r9, asr r8
    2638:	7f5a0500 	svcvc	0x005a0500
    263c:	05000091 	streq	r0, [r0, #-145]	; 0xffffff6f
    2640:	008e675b 	addeq	r6, lr, fp, asr r7
    2644:	165c0500 	ldrbne	r0, [ip], -r0, lsl #10
    2648:	05000092 	streq	r0, [r0, #-146]	; 0xffffff6e
    264c:	0090805d 	addseq	r8, r0, sp, asr r0
    2650:	495e0500 	ldmdbmi	lr, {r8, sl}^
    2654:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
    2658:	0091e05f 	addseq	lr, r1, pc, asr r0
    265c:	65630500 	strbvs	r0, [r3, #-1280]!	; 0xfffffb00
    2660:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
    2664:	00920866 	addseq	r0, r2, r6, ror #16
    2668:	8e670500 	cdphi	5, 6, cr0, cr7, cr0, {0}
    266c:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
    2670:	008de272 	addeq	lr, sp, r2, ror r2
    2674:	a4730500 	ldrbtge	r0, [r3], #-1280	; 0xfffffb00
    2678:	05000092 	streq	r0, [r0, #-146]	; 0xffffff6e
    267c:	0091b274 	addseq	fp, r1, r4, ror r2
    2680:	4b760500 	blmi	1d83a88 <_end+0xd83a88>
    2684:	05000091 	streq	r0, [r0, #-145]	; 0xffffff6f
    2688:	0092ad7b 	addseq	sl, r2, fp, ror sp
    268c:	01810500 	orreq	r0, r1, r0, lsl #10
    2690:	00009259 	andeq	r9, r0, r9, asr r2
    2694:	6d018705 	stcvs	7, cr8, [r1, #-20]	; 0xffffffec
    2698:	05000091 	streq	r0, [r0, #-145]	; 0xffffff6f
    269c:	8e82018d 	rmfhid	f0, f2, #5.0
    26a0:	95050000 	strls	r0, [r5, #-0]
    26a4:	00313501 	eorseq	r3, r1, r1, lsl #10
    26a8:	01980500 	orrseq	r0, r8, r0, lsl #10
    26ac:	00001ebd 			; <UNDEFINED> instruction: 0x00001ebd
    26b0:	51019b05 	tstpl	r1, r5, lsl #22
    26b4:	05000067 	streq	r0, [r0, #-103]	; 0xffffff99
    26b8:	9162019e 			; <UNDEFINED> instruction: 0x9162019e
    26bc:	a0050000 	andge	r0, r5, r0
    26c0:	008e2401 	addeq	r2, lr, r1, lsl #8
    26c4:	01a10500 			; <UNDEFINED> instruction: 0x01a10500
    26c8:	0000922f 	andeq	r9, r0, pc, lsr #4
    26cc:	3b01a205 	blcc	6aee8 <heap_size+0x4aee8>
    26d0:	0500008e 	streq	r0, [r0, #-142]	; 0xffffff72
    26d4:	92e501a4 	rscls	r0, r5, #164, 2	; 0x29
    26d8:	a5050000 	strge	r0, [r5, #-0]
    26dc:	00919601 	addseq	r9, r1, r1, lsl #12
    26e0:	01a60500 			; <UNDEFINED> instruction: 0x01a60500
    26e4:	000092ff 	strdeq	r9, [r0], -pc	; <UNPREDICTABLE>
    26e8:	e201ae05 	and	sl, r1, #5, 28	; 0x50
    26ec:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
    26f0:	8f69058e 	svchi	0x0069058e
    26f4:	ab050000 	blge	1426fc <heap_size+0x1226fc>
    26f8:	008deb05 	addeq	lr, sp, r5, lsl #22
    26fc:	05cf0500 	strbeq	r0, [pc, #1280]	; 2c04 <.divsi3_skip_div0_test+0x1be>
    2700:	0000911b 	andeq	r9, r0, fp, lsl r1
    2704:	6605d005 	strvs	sp, [r5], -r5
    2708:	05000092 	streq	r0, [r0, #-146]	; 0xffffff6e
    270c:	8ec905d1 	mcrhi	5, 6, r0, cr9, cr1, {6}
    2710:	d2050000 	andle	r0, r5, #0
    2714:	0091ee05 	addseq	lr, r1, r5, lsl #28
    2718:	00040000 	andeq	r0, r4, r0
    271c:	8c0d0500 	cfstr32hi	mvfx0, [sp], {-0}
    2720:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
    2724:	0090390e 	addseq	r3, r0, lr, lsl #18
    2728:	d50f0500 	strle	r0, [pc, #-1280]	; 2230 <_ungetc_r+0x2c>
    272c:	00000090 	muleq	r0, r0, r0
    2730:	06000004 	streq	r0, [r0], -r4
    2734:	796a01a1 	stmdbvc	sl!, {r0, r5, r7, r8}^
    2738:	ee060000 	cdp	0, 0, cr0, cr6, cr0, {0}
    273c:	004ab001 	subeq	fp, sl, r1
    2740:	02db0600 	sbcseq	r0, fp, #0, 12
    2744:	00000e22 	andeq	r0, r0, r2, lsr #28
    2748:	d3039106 	movwle	r9, #12550	; 0x3106
    274c:	0500004b 	streq	r0, [r0, #-75]	; 0xffffffb5
    2750:	38d80396 	ldmcc	r8, {r1, r2, r4, r7, r8, r9}^
    2754:	9c060000 	stcls	0, cr0, [r6], {-0}
    2758:	004bcc03 	subeq	ip, fp, r3, lsl #24
    275c:	03a10500 			; <UNDEFINED> instruction: 0x03a10500
    2760:	00004419 	andeq	r4, r0, r9, lsl r4
    2764:	00000400 	andeq	r0, r0, r0, lsl #8
    2768:	91bb3805 			; <UNDEFINED> instruction: 0x91bb3805
    276c:	3c050000 	stccc	0, cr0, [r5], {-0}
    2770:	0000932c 	andeq	r9, r0, ip, lsr #6
    2774:	92d63d05 	sbcsls	r3, r6, #320	; 0x140
    2778:	3f050000 	svccc	0x00050000
    277c:	000090c1 	andeq	r9, r0, r1, asr #1
    2780:	90fa4305 	rscsls	r4, sl, r5, lsl #6
    2784:	04000000 	streq	r0, [r0], #-0
    2788:	02050000 	andeq	r0, r5, #0
    278c:	000013be 			; <UNDEFINED> instruction: 0x000013be
    2790:	2c8c0905 			; <UNDEFINED> instruction: 0x2c8c0905
    2794:	0a050000 	beq	14279c <heap_size+0x12279c>
    2798:	00001349 	andeq	r1, r0, r9, asr #6
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0000037f 	andeq	r0, r0, pc, ror r3
   4:	02f80002 	rscseq	r0, r8, #2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	73010000 	movwvc	r0, #4096	; 0x1000
  1c:	63006372 	movwvs	r6, #882	; 0x372
  20:	72705c3a 	rsbsvc	r5, r0, #14848	; 0x3a00
  24:	6172676f 	cmnvs	r2, pc, ror #14
  28:	7461646d 	strbtvc	r6, [r1], #-1133	; 0xfffffb93
  2c:	68635c61 	stmdavs	r3!, {r0, r5, r6, sl, fp, ip, lr}^
  30:	6c6f636f 	stclvs	3, cr6, [pc], #-444	; fffffe7c <__stack+0xf7fffe84>
  34:	79657461 	stmdbvc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
  38:	62696c5c 	rsbvs	r6, r9, #92, 24	; 0x5c00
  3c:	6363675c 	cmnvs	r3, #92, 14	; 0x1700000
  40:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
  44:	626d652d 	rsbvs	r6, sp, #188743680	; 0xb400000
  48:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  4c:	6f745c64 	svcvs	0x00745c64
  50:	5c736c6f 	ldclpl	12, cr6, [r3], #-444	; 0xfffffe44
  54:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
  58:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
  5c:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
  60:	6e695c69 	cdpvs	12, 6, cr5, cr9, cr9, {3}
  64:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
  68:	616d5c65 	cmnvs	sp, r5, ror #24
  6c:	6e696863 	cdpvs	8, 6, cr6, cr9, cr3, {3}
  70:	3a630065 	bcc	18c020c <_end+0x8c020c>
  74:	6f72705c 	svcvs	0x0072705c
  78:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
  7c:	61746164 	cmnvs	r4, r4, ror #2
  80:	6f68635c 	svcvs	0x0068635c
  84:	616c6f63 	cmnvs	ip, r3, ror #30
  88:	5c796574 	cfldr64pl	mvdx6, [r9], #-464	; 0xfffffe30
  8c:	5c62696c 			; <UNDEFINED> instruction: 0x5c62696c
  90:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
  94:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
  98:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  9c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  a0:	6f6f745c 	svcvs	0x006f745c
  a4:	615c736c 	cmpvs	ip, ip, ror #6
  a8:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
  ac:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
  b0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
  b4:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
  b8:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  bc:	7379735c 	cmnvc	r9, #92, 6	; 0x70000001
  c0:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
  c4:	676f7270 			; <UNDEFINED> instruction: 0x676f7270
  c8:	646d6172 	strbtvs	r6, [sp], #-370	; 0xfffffe8e
  cc:	5c617461 	cfstrdpl	mvd7, [r1], #-388	; 0xfffffe7c
  d0:	636f6863 	cmnvs	pc, #6488064	; 0x630000
  d4:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
  d8:	6c5c7965 	mrrcvs	9, 6, r7, ip, cr5	; <UNPREDICTABLE>
  dc:	675c6269 	ldrbvs	r6, [ip, -r9, ror #4]
  e0:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
  e4:	652d6d72 	strvs	r6, [sp, #-3442]!	; 0xfffff28e
  e8:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  ec:	5c646564 	cfstr64pl	mvdx6, [r4], #-400	; 0xfffffe70
  f0:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	; ffffff28 <__stack+0xf7ffff30>
  f4:	696c5c73 	stmdbvs	ip!, {r0, r1, r4, r5, r6, sl, fp, ip, lr}^
  f8:	63675c62 	cmnvs	r7, #25088	; 0x6200
  fc:	72615c63 	rsbvc	r5, r1, #25344	; 0x6300
 100:	6f6e2d6d 	svcvs	0x006e2d6d
 104:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 108:	5c696261 	sfmpl	f6, 2, [r9], #-388	; 0xfffffe7c
 10c:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
 110:	6e695c31 	mcrvs	12, 3, r5, cr9, cr1, {1}
 114:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 118:	3a630065 	bcc	18c02b4 <_end+0x8c02b4>
 11c:	6f72705c 	svcvs	0x0072705c
 120:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
 124:	61746164 	cmnvs	r4, r4, ror #2
 128:	6f68635c 	svcvs	0x0068635c
 12c:	616c6f63 	cmnvs	ip, r3, ror #30
 130:	5c796574 	cfldr64pl	mvdx6, [r9], #-464	; 0xfffffe30
 134:	5c62696c 			; <UNDEFINED> instruction: 0x5c62696c
 138:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 13c:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 140:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
 144:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
 148:	6f6f745c 	svcvs	0x006f745c
 14c:	615c736c 	cmpvs	ip, ip, ror #6
 150:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 154:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 158:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 15c:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
 160:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 164:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
 168:	676f7270 			; <UNDEFINED> instruction: 0x676f7270
 16c:	646d6172 	strbtvs	r6, [sp], #-370	; 0xfffffe8e
 170:	5c617461 	cfstrdpl	mvd7, [r1], #-388	; 0xfffffe7c
 174:	636f6863 	cmnvs	pc, #6488064	; 0x630000
 178:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
 17c:	6c5c7965 	mrrcvs	9, 6, r7, ip, cr5	; <UNPREDICTABLE>
 180:	675c6269 	ldrbvs	r6, [ip, -r9, ror #4]
 184:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
 188:	652d6d72 	strvs	r6, [sp, #-3442]!	; 0xfffff28e
 18c:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
 190:	5c646564 	cfstr64pl	mvdx6, [r4], #-400	; 0xfffffe70
 194:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	; ffffffcc <__stack+0xf7ffffd4>
 198:	72615c73 	rsbvc	r5, r1, #29440	; 0x7300
 19c:	6f6e2d6d 	svcvs	0x006e2d6d
 1a0:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 1a4:	5c696261 	sfmpl	f6, 2, [r9], #-388	; 0xfffffe7c
 1a8:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 1ac:	5c656475 	cfstrdpl	mvd6, [r5], #-468	; 0xfffffe2c
 1b0:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 1b4:	6e2d6269 	cdpvs	2, 2, cr6, cr13, cr9, {3}
 1b8:	006f6e61 	rsbeq	r6, pc, r1, ror #28
 1bc:	52415500 	subpl	r5, r1, #0, 10
 1c0:	57485f54 	smlsldpl	r5, r8, r4, pc	; <UNPREDICTABLE>
 1c4:	0100632e 	tsteq	r0, lr, lsr #6
 1c8:	645f0000 	ldrbvs	r0, [pc], #-0	; 1d0 <Zynq7000_UART_GETCHAR+0x4>
 1cc:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
 1d0:	745f746c 	ldrbvc	r7, [pc], #-1132	; 1d8 <Zynq7000_UART_GETCHAR+0xc>
 1d4:	73657079 	cmnvc	r5, #121	; 0x79
 1d8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 1dc:	6f6c0000 	svcvs	0x006c0000
 1e0:	682e6b63 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}
 1e4:	00000300 	andeq	r0, r0, r0, lsl #6
 1e8:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 1ec:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 1f0:	00000300 	andeq	r0, r0, r0, lsl #6
 1f4:	64647473 	strbtvs	r7, [r4], #-1139	; 0xfffffb8d
 1f8:	682e6665 	stmdavs	lr!, {r0, r2, r5, r6, r9, sl, sp, lr}
 1fc:	00000400 	andeq	r0, r0, r0, lsl #8
 200:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
 204:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 208:	00030068 	andeq	r0, r3, r8, rrx
 20c:	696e7500 	stmdbvs	lr!, {r8, sl, ip, sp, lr}^
 210:	2e647473 	mcrcs	4, 3, r7, cr4, cr3, {3}
 214:	00030068 	andeq	r0, r3, r8, rrx
 218:	65657200 	strbvs	r7, [r5, #-512]!	; 0xfffffe00
 21c:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 220:	00000300 	andeq	r0, r0, r0, lsl #6
 224:	6e727265 	cdpvs	2, 7, cr7, cr2, cr5, {3}
 228:	00682e6f 	rsbeq	r2, r8, pc, ror #28
 22c:	55000003 	strpl	r0, [r0, #-3]
 230:	5f545241 	svcpl	0x00545241
 234:	682e5748 	stmdavs	lr!, {r3, r6, r8, r9, sl, ip, lr}
 238:	00000100 	andeq	r0, r0, r0, lsl #2
 23c:	73696e75 	cmnvc	r9, #1872	; 0x750
 240:	682e6474 	stmdavs	lr!, {r2, r4, r5, r6, sl, sp, lr}
 244:	00000500 	andeq	r0, r0, r0, lsl #10
 248:	736e615f 	cmnvc	lr, #-1073741801	; 0xc0000017
 24c:	00682e69 	rsbeq	r2, r8, r9, ror #28
 250:	6e000005 	cdpvs	0, 0, cr0, cr0, cr5, {0}
 254:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 258:	00682e62 	rsbeq	r2, r8, r2, ror #28
 25c:	5f000006 	svcpl	0x00000006
 260:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 264:	765f6269 	ldrbvc	r6, [pc], -r9, ror #4
 268:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
 26c:	682e6e6f 	stmdavs	lr!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}
 270:	00000500 	andeq	r0, r0, r0, lsl #10
 274:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 278:	682e6769 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, sp, lr}
 27c:	00000300 	andeq	r0, r0, r0, lsl #6
 280:	65656569 	strbvs	r6, [r5, #-1385]!	; 0xfffffa97
 284:	682e7066 	stmdavs	lr!, {r1, r2, r5, r6, ip, sp, lr}
 288:	00000200 	andeq	r0, r0, r0, lsl #4
 28c:	74616566 	strbtvc	r6, [r1], #-1382	; 0xfffffa9a
 290:	73657275 	cmnvc	r5, #1342177287	; 0x50000007
 294:	0300682e 	movweq	r6, #2094	; 0x82e
 298:	64630000 	strbtvs	r0, [r3], #-0
 29c:	2e736665 	cdpcs	6, 7, cr6, cr3, cr5, {3}
 2a0:	00030068 	andeq	r0, r3, r8, rrx
 2a4:	70797400 	rsbsvc	r7, r9, r0, lsl #8
 2a8:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 2ac:	00000300 	andeq	r0, r0, r0, lsl #6
 2b0:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 2b4:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 2b8:	00000200 	andeq	r0, r0, r0, lsl #4
 2bc:	6874705f 	ldmdavs	r4!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^
 2c0:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
 2c4:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 2c8:	00682e73 	rsbeq	r2, r8, r3, ror lr
 2cc:	74000003 	strvc	r0, [r0], #-3
 2d0:	73657079 	cmnvc	r5, #121	; 0x79
 2d4:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 2d8:	72650000 	rsbvc	r0, r5, #0
 2dc:	2e6f6e72 	mcrcs	14, 3, r6, cr15, cr2, {3}
 2e0:	00050068 	andeq	r0, r5, r8, rrx
 2e4:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 2e8:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 2ec:	00040068 	andeq	r0, r4, r8, rrx
 2f0:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 2f4:	2d746e69 	ldclcs	14, cr6, [r4, #-420]!	; 0xfffffe5c
 2f8:	2e636367 	cdpcs	3, 6, cr6, cr3, cr7, {3}
 2fc:	00040068 	andeq	r0, r4, r8, rrx
 300:	05000000 	streq	r0, [r0, #-0]
 304:	00014402 	andeq	r4, r1, r2, lsl #8
 308:	674b1800 	strbvs	r1, [fp, -r0, lsl #16]
 30c:	69676767 	stmdbvs	r7!, {r0, r1, r2, r5, r6, r8, r9, sl, sp, lr}^
 310:	04020083 	streq	r0, [r2], #-131	; 0xffffff7d
 314:	062e0601 	strteq	r0, [lr], -r1, lsl #12
 318:	692f69a0 	stmdbvs	pc!, {r5, r7, r8, fp, sp, lr}	; <UNPREDICTABLE>
 31c:	6767a04c 	strbvs	sl, [r7, -ip, asr #32]!
 320:	0402004e 	streq	r0, [r2], #-78	; 0xffffffb2
 324:	062e0601 	strteq	r0, [lr], -r1, lsl #12
 328:	693167a0 	ldmdbvs	r1!, {r5, r7, r8, r9, sl, sp, lr}
 32c:	0200bda0 	andeq	fp, r0, #160, 26	; 0x2800
 330:	00680304 	rsbeq	r0, r8, r4, lsl #6
 334:	d4030402 	strle	r0, [r3], #-1026	; 0xfffffbfe
 338:	01040200 	mrseq	r0, R12_usr
 33c:	86066606 	strhi	r6, [r6], -r6, lsl #12
 340:	04020030 	streq	r0, [r2], #-48	; 0xffffffd0
 344:	02006803 	andeq	r6, r0, #196608	; 0x30000
 348:	00f00304 	rscseq	r0, r0, r4, lsl #6
 34c:	06010402 	streq	r0, [r1], -r2, lsl #8
 350:	30860666 	addcc	r0, r6, r6, ror #12
 354:	692f4c83 	stmdbvs	pc!, {r0, r1, r7, sl, fp, lr}	; <UNPREDICTABLE>
 358:	69694ba0 	stmdbvs	r9!, {r5, r7, r8, r9, fp, lr}^
 35c:	689f8384 	ldmvs	pc, {r2, r7, r8, r9, pc}	; <UNPREDICTABLE>
 360:	834bd767 	movthi	sp, #46951	; 0xb767
 364:	0330689f 	teqeq	r0, #10420224	; 0x9f0000
 368:	002d666f 	eoreq	r6, sp, pc, ror #12
 36c:	06010402 	streq	r0, [r1], -r2, lsl #8
 370:	17030666 	strne	r0, [r3, -r6, ror #12]
 374:	2e790382 	cdpcs	3, 7, cr0, cr9, cr2, {4}
 378:	8330314e 	teqhi	r0, #-2147483629	; 0x80000013
 37c:	06022f4c 	streq	r2, [r2], -ip, asr #30
 380:	48010100 	stmdami	r1, {r8}
 384:	02000003 	andeq	r0, r0, #3
 388:	00031900 	andeq	r1, r3, r0, lsl #18
 38c:	fb010200 	blx	40b96 <heap_size+0x20b96>
 390:	01000d0e 	tsteq	r0, lr, lsl #26
 394:	00010101 	andeq	r0, r1, r1, lsl #2
 398:	00010000 	andeq	r0, r1, r0
 39c:	72730100 	rsbsvc	r0, r3, #0, 2
 3a0:	3a630063 	bcc	18c0534 <_end+0x8c0534>
 3a4:	6f72705c 	svcvs	0x0072705c
 3a8:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
 3ac:	61746164 	cmnvs	r4, r4, ror #2
 3b0:	6f68635c 	svcvs	0x0068635c
 3b4:	616c6f63 	cmnvs	ip, r3, ror #30
 3b8:	5c796574 	cfldr64pl	mvdx6, [r9], #-464	; 0xfffffe30
 3bc:	5c62696c 			; <UNDEFINED> instruction: 0x5c62696c
 3c0:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 3c4:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 3c8:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
 3cc:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
 3d0:	6f6f745c 	svcvs	0x006f745c
 3d4:	615c736c 	cmpvs	ip, ip, ror #6
 3d8:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 3dc:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 3e0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 3e4:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
 3e8:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 3ec:	63616d5c 	cmnvs	r1, #92, 26	; 0x1700
 3f0:	656e6968 	strbvs	r6, [lr, #-2408]!	; 0xfffff698
 3f4:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
 3f8:	676f7270 			; <UNDEFINED> instruction: 0x676f7270
 3fc:	646d6172 	strbtvs	r6, [sp], #-370	; 0xfffffe8e
 400:	5c617461 	cfstrdpl	mvd7, [r1], #-388	; 0xfffffe7c
 404:	636f6863 	cmnvs	pc, #6488064	; 0x630000
 408:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
 40c:	6c5c7965 	mrrcvs	9, 6, r7, ip, cr5	; <UNPREDICTABLE>
 410:	675c6269 	ldrbvs	r6, [ip, -r9, ror #4]
 414:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
 418:	652d6d72 	strvs	r6, [sp, #-3442]!	; 0xfffff28e
 41c:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
 420:	5c646564 	cfstr64pl	mvdx6, [r4], #-400	; 0xfffffe70
 424:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	; 25c <_write+0x20>
 428:	72615c73 	rsbvc	r5, r1, #29440	; 0x7300
 42c:	6f6e2d6d 	svcvs	0x006e2d6d
 430:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 434:	5c696261 	sfmpl	f6, 2, [r9], #-388	; 0xfffffe7c
 438:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 43c:	5c656475 	cfstrdpl	mvd6, [r5], #-468	; 0xfffffe2c
 440:	00737973 	rsbseq	r7, r3, r3, ror r9
 444:	705c3a63 	subsvc	r3, ip, r3, ror #20
 448:	72676f72 	rsbvc	r6, r7, #456	; 0x1c8
 44c:	61646d61 	cmnvs	r4, r1, ror #26
 450:	635c6174 	cmpvs	ip, #116, 2
 454:	6f636f68 	svcvs	0x00636f68
 458:	6574616c 	ldrbvs	r6, [r4, #-364]!	; 0xfffffe94
 45c:	696c5c79 	stmdbvs	ip!, {r0, r3, r4, r5, r6, sl, fp, ip, lr}^
 460:	63675c62 	cmnvs	r7, #25088	; 0x6200
 464:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
 468:	6d652d6d 	stclvs	13, cr2, [r5, #-436]!	; 0xfffffe4c
 46c:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
 470:	745c6465 	ldrbvc	r6, [ip], #-1125	; 0xfffffb9b
 474:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
 478:	62696c5c 	rsbvs	r6, r9, #92, 24	; 0x5c00
 47c:	6363675c 	cmnvs	r3, #92, 14	; 0x1700000
 480:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
 484:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 488:	61652d65 	cmnvs	r5, r5, ror #26
 48c:	375c6962 	ldrbcc	r6, [ip, -r2, ror #18]
 490:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
 494:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
 498:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 49c:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
 4a0:	676f7270 			; <UNDEFINED> instruction: 0x676f7270
 4a4:	646d6172 	strbtvs	r6, [sp], #-370	; 0xfffffe8e
 4a8:	5c617461 	cfstrdpl	mvd7, [r1], #-388	; 0xfffffe7c
 4ac:	636f6863 	cmnvs	pc, #6488064	; 0x630000
 4b0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
 4b4:	6c5c7965 	mrrcvs	9, 6, r7, ip, cr5	; <UNPREDICTABLE>
 4b8:	675c6269 	ldrbvs	r6, [ip, -r9, ror #4]
 4bc:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
 4c0:	652d6d72 	strvs	r6, [sp, #-3442]!	; 0xfffff28e
 4c4:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
 4c8:	5c646564 	cfstr64pl	mvdx6, [r4], #-400	; 0xfffffe70
 4cc:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	; 304 <_write+0xc8>
 4d0:	72615c73 	rsbvc	r5, r1, #29440	; 0x7300
 4d4:	6f6e2d6d 	svcvs	0x006e2d6d
 4d8:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 4dc:	5c696261 	sfmpl	f6, 2, [r9], #-388	; 0xfffffe7c
 4e0:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 4e4:	00656475 	rsbeq	r6, r5, r5, ror r4
 4e8:	705c3a63 	subsvc	r3, ip, r3, ror #20
 4ec:	72676f72 	rsbvc	r6, r7, #456	; 0x1c8
 4f0:	61646d61 	cmnvs	r4, r1, ror #26
 4f4:	635c6174 	cmpvs	ip, #116, 2
 4f8:	6f636f68 	svcvs	0x00636f68
 4fc:	6574616c 	ldrbvs	r6, [r4, #-364]!	; 0xfffffe94
 500:	696c5c79 	stmdbvs	ip!, {r0, r3, r4, r5, r6, sl, fp, ip, lr}^
 504:	63675c62 	cmnvs	r7, #25088	; 0x6200
 508:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
 50c:	6d652d6d 	stclvs	13, cr2, [r5, #-436]!	; 0xfffffe4c
 510:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
 514:	745c6465 	ldrbvc	r6, [ip], #-1125	; 0xfffffb9b
 518:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
 51c:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
 520:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 524:	61652d65 	cmnvs	r5, r5, ror #26
 528:	695c6962 	ldmdbvs	ip, {r1, r5, r6, r8, fp, sp, lr}^
 52c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 530:	6e5c6564 	cdpvs	5, 5, cr6, cr12, cr4, {3}
 534:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 538:	616e2d62 	cmnvs	lr, r2, ror #26
 53c:	00006f6e 	andeq	r6, r0, lr, ror #30
 540:	6e69616d 	powvsez	f6, f1, #5.0
 544:	0100632e 	tsteq	r0, lr, lsr #6
 548:	645f0000 	ldrbvs	r0, [pc], #-0	; 550 <main+0x90>
 54c:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
 550:	745f746c 	ldrbvc	r7, [pc], #-1132	; 558 <main+0x98>
 554:	73657079 	cmnvc	r5, #121	; 0x79
 558:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 55c:	6f6c0000 	svcvs	0x006c0000
 560:	682e6b63 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}
 564:	00000300 	andeq	r0, r0, r0, lsl #6
 568:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 56c:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 570:	00000300 	andeq	r0, r0, r0, lsl #6
 574:	64647473 	strbtvs	r7, [r4], #-1139	; 0xfffffb8d
 578:	682e6665 	stmdavs	lr!, {r0, r2, r5, r6, r9, sl, sp, lr}
 57c:	00000400 	andeq	r0, r0, r0, lsl #8
 580:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
 584:	00682e74 	rsbeq	r2, r8, r4, ror lr
 588:	5f000003 	svcpl	0x00000003
 58c:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 590:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 594:	00000300 	andeq	r0, r0, r0, lsl #6
 598:	73696e75 	cmnvc	r9, #1872	; 0x750
 59c:	682e6474 	stmdavs	lr!, {r2, r4, r5, r6, sl, sp, lr}
 5a0:	00000300 	andeq	r0, r0, r0, lsl #6
 5a4:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
 5a8:	2e57485f 	mrccs	8, 2, r4, cr7, cr15, {2}
 5ac:	00010068 	andeq	r0, r1, r8, rrx
 5b0:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 5b4:	682e6f69 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}
 5b8:	00000500 	andeq	r0, r0, r0, lsl #10
 5bc:	736e615f 	cmnvc	lr, #-1073741801	; 0xc0000017
 5c0:	00682e69 	rsbeq	r2, r8, r9, ror #28
 5c4:	6e000005 	cdpvs	0, 0, cr0, cr0, cr5, {0}
 5c8:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 5cc:	00682e62 	rsbeq	r2, r8, r2, ror #28
 5d0:	5f000006 	svcpl	0x00000006
 5d4:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 5d8:	765f6269 	ldrbvc	r6, [pc], -r9, ror #4
 5dc:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
 5e0:	682e6e6f 	stmdavs	lr!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}
 5e4:	00000500 	andeq	r0, r0, r0, lsl #10
 5e8:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 5ec:	682e6769 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, sp, lr}
 5f0:	00000300 	andeq	r0, r0, r0, lsl #6
 5f4:	65656569 	strbvs	r6, [r5, #-1385]!	; 0xfffffa97
 5f8:	682e7066 	stmdavs	lr!, {r1, r2, r5, r6, ip, sp, lr}
 5fc:	00000200 	andeq	r0, r0, r0, lsl #4
 600:	74616566 	strbtvc	r6, [r1], #-1382	; 0xfffffa9a
 604:	73657275 	cmnvc	r5, #1342177287	; 0x50000007
 608:	0300682e 	movweq	r6, #2094	; 0x82e
 60c:	64630000 	strbtvs	r0, [r3], #-0
 610:	2e736665 	cdpcs	6, 7, cr6, cr3, cr5, {3}
 614:	00030068 	andeq	r0, r3, r8, rrx
 618:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 61c:	2e677261 	cdpcs	2, 6, cr7, cr7, cr1, {3}
 620:	00040068 	andeq	r0, r4, r8, rrx
 624:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
 628:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
 62c:	00020068 	andeq	r0, r2, r8, rrx
 630:	70797400 	rsbsvc	r7, r9, r0, lsl #8
 634:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 638:	00000300 	andeq	r0, r0, r0, lsl #6
 63c:	6874705f 	ldmdavs	r4!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^
 640:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
 644:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 648:	00682e73 	rsbeq	r2, r8, r3, ror lr
 64c:	74000003 	strvc	r0, [r0], #-3
 650:	73657079 	cmnvc	r5, #121	; 0x79
 654:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 658:	74730000 	ldrbtvc	r0, [r3], #-0
 65c:	2e6f6964 	vnmulcs.f16	s13, s30, s9	; <UNPREDICTABLE>
 660:	00030068 	andeq	r0, r3, r8, rrx
 664:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 668:	2e62696c 	vnmulcs.f16	s13, s4, s25	; <UNPREDICTABLE>
 66c:	00050068 	andeq	r0, r5, r8, rrx
 670:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 674:	2e62696c 	vnmulcs.f16	s13, s4, s25	; <UNPREDICTABLE>
 678:	00020068 	andeq	r0, r2, r8, rrx
 67c:	696e7500 	stmdbvs	lr!, {r8, sl, ip, sp, lr}^
 680:	2e647473 	mcrcs	4, 3, r7, cr4, cr3, {3}
 684:	00050068 	andeq	r0, r5, r8, rrx
 688:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 68c:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 690:	00040068 	andeq	r0, r4, r8, rrx
 694:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 698:	2d746e69 	ldclcs	14, cr6, [r4, #-420]!	; 0xfffffe5c
 69c:	2e636367 	cdpcs	3, 6, cr6, cr3, cr7, {3}
 6a0:	00040068 	andeq	r0, r4, r8, rrx
 6a4:	05000000 	streq	r0, [r0, #-0]
 6a8:	00046402 	andeq	r6, r4, r2, lsl #8
 6ac:	4b2f1800 	blmi	bc66b4 <heap_size+0xba66b4>
 6b0:	676d6768 	strbvs	r6, [sp, -r8, ror #14]!
 6b4:	4d2f2f4d 	stcmi	15, cr2, [pc, #-308]!	; 588 <__errno+0x8>
 6b8:	bb315214 	bllt	c54f10 <heap_size+0xc34f10>
 6bc:	67687508 	strbvs	r7, [r8, -r8, lsl #10]!
 6c0:	679f679f 			; <UNDEFINED> instruction: 0x679f679f
 6c4:	04020067 	streq	r0, [r2], #-103	; 0xffffff99
 6c8:	02026701 	andeq	r6, r2, #262144	; 0x40000
 6cc:	51010100 	mrspl	r0, (UNDEF: 17)
 6d0:	02000000 	andeq	r0, r0, #0
 6d4:	00002200 	andeq	r2, r0, r0, lsl #4
 6d8:	fb010200 	blx	40ee2 <heap_size+0x20ee2>
 6dc:	01000d0e 	tsteq	r0, lr, lsl #26
 6e0:	00010101 	andeq	r0, r1, r1, lsl #2
 6e4:	00010000 	andeq	r0, r1, r0
 6e8:	72730100 	rsbsvc	r0, r3, #0, 2
 6ec:	73000063 	movwvc	r0, #99	; 0x63
 6f0:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 6f4:	0100732e 	tsteq	r0, lr, lsr #6
 6f8:	00000000 	andeq	r0, r0, r0
 6fc:	00000205 	andeq	r0, r0, r5, lsl #4
 700:	21030000 	mrscs	r0, (UNDEF: 3)
 704:	2f2f2f01 	svccs	0x002f2f01
 708:	2f2f2f2f 	svccs	0x002f2f2f
 70c:	2ff22303 	svccs	0x00f22303
 710:	2f2f2f35 	svccs	0x002f2f35
 714:	2f2f302f 	svccs	0x002f302f
 718:	2f2f2f2f 	svccs	0x002f2f2f
 71c:	02333030 	eorseq	r3, r3, #48	; 0x30
 720:	01010002 	tsteq	r1, r2

Disassembly of section .debug_str:

00000000 <.debug_str>:
       0:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
       4:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
       8:	5f5f454b 	svcpl	0x005f454b
       c:	4345535f 	movtmi	r5, #21343	; 0x535f
      10:	4e4f4954 			; <UNDEFINED> instruction: 0x4e4f4954
      14:	5f003120 	svcpl	0x00003120
      18:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
      1c:	43575f54 	cmpmi	r7, #84, 30	; 0x150
      20:	4d4f5452 	cfstrdmi	mvd5, [pc, #-328]	; fffffee0 <__stack+0xf7fffee8>
      24:	54535f42 	ldrbpl	r5, [r3], #-3906	; 0xfffff0be
      28:	28455441 	stmdacs	r5, {r0, r6, sl, ip, lr}^
      2c:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
      30:	70282820 	eorvc	r2, r8, r0, lsr #16
      34:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
      38:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
      3c:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
      40:	7263775f 	rsbvc	r7, r3, #24903680	; 0x17c0000
      44:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
      48:	6174735f 	cmnvs	r4, pc, asr r3
      4c:	00296574 	eoreq	r6, r9, r4, ror r5
      50:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
      54:	414d5f34 	cmpmi	sp, r4, lsr pc
      58:	5f5f2058 	svcpl	0x005f2058
      5c:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
      60:	414d5f34 	cmpmi	sp, r4, lsr pc
      64:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
      68:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
      6c:	414d4943 	cmpmi	sp, r3, asr #18
      70:	49445f4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
      74:	205f5f47 	subscs	r5, pc, r7, asr #30
      78:	57003731 	smladxpl	r0, r1, r7, r3
      7c:	5f544e49 	svcpl	0x00544e49
      80:	2058414d 	subscs	r4, r8, sp, asr #2
      84:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
      88:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; ffffff58 <__stack+0xf7ffff60>
      8c:	5f5f5841 	svcpl	0x005f5841
      90:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff198 <__stack+0xf7fff1a0>
      94:	465f4148 	ldrbmi	r4, [pc], -r8, asr #2
      98:	5f544942 	svcpl	0x00544942
      9c:	0038205f 	eorseq	r2, r8, pc, asr r0
      a0:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
      a4:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
      a8:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
      ac:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
      b0:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
      b4:	33332d45 	teqcc	r3, #4416	; 0x1140
      b8:	5f004c44 	svcpl	0x00004c44
      bc:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
      c0:	5f58414d 	svcpl	0x0058414d
      c4:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
      c8:	23206320 			; <UNDEFINED> instruction: 0x23206320
      cc:	4c4c2023 	mcrrmi	0, 2, r2, ip, cr3
      d0:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
      d4:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
      d8:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
      dc:	5f4d524f 	svcpl	0x004d524f
      e0:	5f4e494d 	svcpl	0x004e494d
      e4:	2e34205f 	mrccs	0, 1, r2, cr4, cr15, {2}
      e8:	36303439 			; <UNDEFINED> instruction: 0x36303439
      ec:	35343635 	ldrcc	r3, [r4, #-1589]!	; 0xfffff9cb
      f0:	32313438 	eorscc	r3, r1, #56, 8	; 0x38000000
      f4:	34353634 	ldrtcc	r3, [r5], #-1588	; 0xfffff9cc
      f8:	32332d65 	eorscc	r2, r3, #6464	; 0x1940
      fc:	34364634 	ldrtcc	r4, [r6], #-1588	; 0xfffff9cc
     100:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; fffff208 <__stack+0xf7fff210>
     104:	6165726e 	cmnvs	r5, lr, ror #4
     108:	62616863 	rsbvs	r6, r1, #6488064	; 0x630000
     10c:	2928656c 	stmdbcs	r8!, {r2, r3, r5, r6, r8, sl, sp, lr}
     110:	625f5f20 	subsvs	r5, pc, #32, 30	; 0x80
     114:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
     118:	755f6e69 	ldrbvc	r6, [pc, #-3689]	; fffff2b7 <__stack+0xf7fff2bf>
     11c:	6165726e 	cmnvs	r5, lr, ror #4
     120:	62616863 	rsbvs	r6, r1, #6488064	; 0x630000
     124:	2928656c 	stmdbcs	r8!, {r2, r3, r5, r6, r8, sl, sp, lr}
     128:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
     12c:	415f4343 	cmpmi	pc, r3, asr #6
     130:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
     134:	43575f43 	cmpmi	r7, #268	; 0x10c
     138:	5f524148 	svcpl	0x00524148
     13c:	4f4c5f54 	svcmi	0x004c5f54
     140:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
     144:	20454552 	subcs	r4, r5, r2, asr r5
     148:	5f5f0032 	svcpl	0x005f0032
     14c:	52414843 	subpl	r4, r1, #4390912	; 0x430000
     150:	534e555f 	movtpl	r5, #58719	; 0xe55f
     154:	454e4749 	strbmi	r4, [lr, #-1865]	; 0xfffff8b7
     158:	205f5f44 	subscs	r5, pc, r4, asr #30
     15c:	5f5f0031 	svcpl	0x005f0031
     160:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     164:	5f525450 	svcpl	0x00525450
     168:	5f58414d 	svcpl	0x0058414d
     16c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     170:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     174:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     178:	535f0055 	cmppl	pc, #85	; 0x55
     17c:	52545f43 	subspl	r5, r4, #268	; 0x10c
     180:	5f454341 	svcpl	0x00454341
     184:	4e455645 	cdpmi	6, 4, cr5, cr5, cr5, {2}
     188:	49465f54 	stmdbmi	r6, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
     18c:	5245544c 	subpl	r5, r5, #76, 8	; 0x4c000000
     190:	00343820 	eorseq	r3, r4, r0, lsr #16
     194:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     198:	41425f31 	cmpmi	r2, r1, lsr pc
     19c:	30204553 	eorcc	r4, r0, r3, asr r5
     1a0:	30304578 	eorscc	r4, r0, r8, ror r5
     1a4:	30303130 	eorscc	r3, r0, r0, lsr r1
     1a8:	5f5f0030 	svcpl	0x005f0030
     1ac:	41524653 	cmpmi	r2, r3, asr r6
     1b0:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
     1b4:	5f544942 	svcpl	0x00544942
     1b8:	0037205f 	eorseq	r2, r7, pc, asr r0
     1bc:	544f4e45 	strbpl	r4, [pc], #-3653	; 1c4 <Zynq7000_UART_SENDCHAR+0x3c>
     1c0:	20524944 	subscs	r4, r2, r4, asr #18
     1c4:	5a003032 	bpl	c294 <__bss_end__+0x8fac>
     1c8:	37716e79 			; <UNDEFINED> instruction: 0x37716e79
     1cc:	5f303030 	svcpl	0x00303030
     1d0:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     1d4:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     1d8:	5349445f 	movtpl	r4, #37983	; 0x945f
     1dc:	454c4241 	strbmi	r4, [ip, #-577]	; 0xfffffdbf
     1e0:	52415528 	subpl	r5, r1, #40, 10	; 0xa000000
     1e4:	28202954 	stmdacs	r0!, {r2, r4, r6, r8, fp, sp}
     1e8:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     1ec:	45493e2d 	strbmi	r3, [r9, #-3629]	; 0xfffff1d3
     1f0:	3d262052 	stccc	0, cr2, [r6, #-328]!	; 0xfffffeb8
     1f4:	55287e20 	strpl	r7, [r8, #-3616]!	; 0xfffff1e0
     1f8:	5f545241 	svcpl	0x00545241
     1fc:	5f525849 	svcpl	0x00525849
     200:	564f5852 			; <UNDEFINED> instruction: 0x564f5852
     204:	207c2052 	rsbscs	r2, ip, r2, asr r0
     208:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     20c:	5258495f 	subspl	r4, r8, #1556480	; 0x17c000
     210:	4658525f 			; <UNDEFINED> instruction: 0x4658525f
     214:	294c4c55 	stmdbcs	ip, {r0, r2, r4, r6, sl, fp, lr}^
     218:	5f5f0029 	svcpl	0x005f0029
     21c:	61636f6c 	cmnvs	r3, ip, ror #30
     220:	745f656c 	ldrbvc	r6, [pc], #-1388	; 228 <Zynq7000_UART_GETCHAR+0x5c>
     224:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     228:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
     22c:	5341485f 	movtpl	r4, #6239	; 0x185f
     230:	464e495f 			; <UNDEFINED> instruction: 0x464e495f
     234:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
     238:	205f5f59 	subscs	r5, pc, r9, asr pc	; <UNPREDICTABLE>
     23c:	5f5f0031 	svcpl	0x005f0031
     240:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
     244:	5f5f0065 	svcpl	0x005f0065
     248:	75716572 	ldrbvc	r6, [r1, #-1394]!	; 0xfffffa8e
     24c:	73657269 	cmnvc	r5, #-1879048186	; 0x90000006
     250:	6378655f 	cmnvs	r8, #398458880	; 0x17c00000
     254:	6973756c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
     258:	2e286576 	mcrcs	5, 1, r6, cr8, cr6, {3}
     25c:	20292e2e 	eorcs	r2, r9, lr, lsr #28
     260:	6f6c5f5f 	svcvs	0x006c5f5f
     264:	615f6b63 	cmpvs	pc, r3, ror #22
     268:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 270 <_write+0x34>
     26c:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
     270:	6c637865 	stclvs	8, cr7, [r3], #-404	; 0xfffffe6c
     274:	76697375 			; <UNDEFINED> instruction: 0x76697375
     278:	6f6c5f65 	svcvs	0x006c5f65
     27c:	5f736b63 	svcpl	0x00736b63
     280:	75716572 	ldrbvc	r6, [r1, #-1394]!	; 0xfffffa8e
     284:	64657269 	strbtvs	r7, [r5], #-617	; 0xfffffd97
     288:	565f5f28 	ldrbpl	r5, [pc], -r8, lsr #30
     28c:	52415f41 	subpl	r5, r1, #260	; 0x104
     290:	5f5f5347 	svcpl	0x005f5347
     294:	5f002929 	svcpl	0x00002929
     298:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
     29c:	41525f54 	cmpmi	r2, r4, asr pc
     2a0:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
     2a4:	4444415f 	strbmi	r4, [r4], #-351	; 0xfffffea1
     2a8:	72747028 	rsbsvc	r7, r4, #40	; 0x28
     2ac:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
     2b0:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
     2b4:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
     2b8:	3e2d3834 	mcrcc	8, 1, r3, cr13, cr4, {1}
     2bc:	6464615f 	strbtvs	r6, [r4], #-351	; 0xfffffea1
     2c0:	5f5f0029 	svcpl	0x005f0029
     2c4:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
     2c8:	5f4d5543 	svcpl	0x004d5543
     2cc:	5f4e494d 	svcpl	0x004e494d
     2d0:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
     2d4:	50315830 	eorspl	r5, r1, r0, lsr r8
     2d8:	4c4c3133 	stfmie	f3, [ip], {51}	; 0x33
     2dc:	58302d4b 	ldmdapl	r0!, {r0, r1, r3, r6, r8, sl, fp, sp}
     2e0:	31335031 	teqcc	r3, r1, lsr r0
     2e4:	294b4c4c 	stmdbcs	fp, {r2, r3, r6, sl, fp, lr}^
     2e8:	414e4500 	cmpmi	lr, r0, lsl #10
     2ec:	4f54454d 	svcmi	0x0054454d
     2f0:	4e4f4c4f 	cdpmi	12, 4, cr4, cr15, cr15, {2}
     2f4:	31392047 	teqcc	r9, r7, asr #32
     2f8:	53555f00 	cmppl	r5, #0, 30
     2fc:	4e4f4345 	cdpmi	3, 4, cr4, cr15, cr5, {2}
     300:	545f5344 	ldrbpl	r5, [pc], #-836	; 308 <_write+0xcc>
     304:	4345445f 	movtmi	r4, #21599	; 0x545f
     308:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
     30c:	5f002044 	svcpl	0x00002044
     310:	0066735f 	rsbeq	r7, r6, pc, asr r3
     314:	5f43505f 	svcpl	0x0043505f
     318:	434e5953 	movtmi	r5, #59731	; 0xe953
     31c:	204f495f 	subcs	r4, pc, pc, asr r9	; <UNPREDICTABLE>
     320:	5f003131 	svcpl	0x00003131
     324:	5254505f 	subspl	r5, r4, #95	; 0x5f
     328:	46464944 	strbmi	r4, [r6], -r4, asr #18
     32c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     330:	30205f5f 	eorcc	r5, r0, pc, asr pc
     334:	66663778 			; <UNDEFINED> instruction: 0x66663778
     338:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     33c:	4c5f0066 	mrrcmi	0, 6, r0, pc, cr6	; <UNPREDICTABLE>
     340:	5f474e4f 	svcpl	0x00474e4f
     344:	42554f44 	subsmi	r4, r5, #68, 30	; 0x110
     348:	6c20454c 	cfstr32vs	mvfx4, [r0], #-304	; 0xfffffed0
     34c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     350:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
     354:	4500656c 	strmi	r6, [r0, #-1388]	; 0xfffffa94
     358:	45504950 	ldrbmi	r4, [r0, #-2384]	; 0xfffff6b0
     35c:	00323320 	eorseq	r3, r2, r0, lsr #6
     360:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     364:	5258495f 	subspl	r4, r8, #1556480	; 0x17c000
     368:	4558525f 	ldrbmi	r5, [r8, #-607]	; 0xfffffda1
     36c:	5954504d 	ldmdbpl	r4, {r0, r2, r3, r6, ip, lr}^
     370:	30783020 	rsbscc	r3, r8, r0, lsr #32
     374:	30303030 	eorscc	r3, r0, r0, lsr r0
     378:	00323030 	eorseq	r3, r2, r0, lsr r0
     37c:	41535f5f 	cmpmi	r3, pc, asr pc
     380:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
     384:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     388:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     38c:	3158302d 	cmpcc	r8, sp, lsr #32
     390:	4b483750 	blmi	120e0d8 <_end+0x20e0d8>
     394:	3158302d 	cmpcc	r8, sp, lsr #32
     398:	4b483750 	blmi	120e0e0 <_end+0x20e0e0>
     39c:	5f5f0029 	svcpl	0x005f0029
     3a0:	66756273 			; <UNDEFINED> instruction: 0x66756273
     3a4:	65725f00 	ldrbvs	r5, [r2, #-3840]!	; 0xfffff100
     3a8:	5f006461 	svcpl	0x00006461
     3ac:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     3b0:	5f58414d 	svcpl	0x0058414d
     3b4:	5f58414d 	svcpl	0x0058414d
     3b8:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     3bc:	66666637 			; <UNDEFINED> instruction: 0x66666637
     3c0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     3c4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     3c8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     3cc:	5f004c4c 	svcpl	0x00004c4c
     3d0:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
     3d4:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
     3d8:	4d5f5449 	cfldrdmi	mvd5, [pc, #-292]	; 2bc <_write+0x80>
     3dc:	61762850 	cmnvs	r6, r0, asr r8
     3e0:	64202972 	strtvs	r2, [r0], #-2418	; 0xfffff68e
     3e4:	207b206f 	rsbscs	r2, fp, pc, rrx
     3e8:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
     3ec:	5f207463 	svcpl	0x00207463
     3f0:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
     3f4:	5f2a2074 	svcpl	0x002a2074
     3f8:	203d2072 	eorscs	r2, sp, r2, ror r0
     3fc:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
     400:	5f203b29 	svcpl	0x00203b29
     404:	5f3e2d72 	svcpl	0x003e2d72
     408:	3e2d706d 	cdpcc	0, 2, cr7, cr13, cr13, {3}
     40c:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
     410:	5f746c75 	svcpl	0x00746c75
     414:	203d206b 	eorscs	r2, sp, fp, rrx
     418:	5f203b30 	svcpl	0x00203b30
     41c:	5f3e2d72 	svcpl	0x003e2d72
     420:	3e2d706d 	cdpcc	0, 2, cr7, cr13, cr13, {3}
     424:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
     428:	20746c75 	rsbscs	r6, r4, r5, ror ip
     42c:	725f203d 	subsvc	r2, pc, #61	; 0x3d
     430:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 384 <_read+0x60>
     434:	5f3e2d70 	svcpl	0x003e2d70
     438:	20733570 	rsbscs	r3, r3, r0, ror r5
     43c:	4e5f203d 	mrcmi	0, 2, r2, cr15, cr13, {1}
     440:	3b4c4c55 	blcc	131359c <_end+0x31359c>
     444:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
     448:	706d5f3e 	rsbvc	r5, sp, lr, lsr pc
     44c:	665f3e2d 	ldrbvs	r3, [pc], -sp, lsr #28
     450:	6c656572 	cfstr64vs	mvdx6, [r5], #-456	; 0xfffffe38
     454:	20747369 	rsbscs	r7, r4, r9, ror #6
     458:	4e5f203d 	mrcmi	0, 2, r2, cr15, cr13, {1}
     45c:	3b4c4c55 	blcc	13135b8 <_end+0x3135b8>
     460:	77207d20 	strvc	r7, [r0, -r0, lsr #26]!
     464:	656c6968 	strbvs	r6, [ip, #-2408]!	; 0xfffff698
     468:	29302820 	ldmdbcs	r0!, {r5, fp, sp}
     46c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 474 <HAL_init+0x10>
     470:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
     474:	4255535f 	subsmi	r5, r5, #2080374785	; 0x7c000001
     478:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
     47c:	4d5f4c41 	ldclmi	12, cr4, [pc, #-260]	; 380 <_read+0x5c>
     480:	5f5f4e49 	svcpl	0x005f4e49
     484:	302e3020 	eorcc	r3, lr, r0, lsr #32
     488:	30303030 	eorscc	r3, r0, r0, lsr r0
     48c:	392d4531 	pushcc	{r0, r4, r5, r8, sl, lr}
     490:	00464435 	subeq	r4, r6, r5, lsr r4
     494:	51545f5f 	cmppl	r4, pc, asr pc
     498:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
     49c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     4a0:	5f5f0030 	svcpl	0x005f0030
     4a4:	6b636f6c 	blvs	18dc25c <_end+0x8dc25c>
     4a8:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
     4ac:	65725f74 	ldrbvs	r5, [r2, #-3956]!	; 0xfffff08c
     4b0:	73727563 	cmnvc	r2, #415236096	; 0x18c00000
     4b4:	28657669 	stmdacs	r5!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
     4b8:	6b636f6c 	blvs	18dc270 <_end+0x8dc270>
     4bc:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
     4c0:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
     4c4:	29302029 	ldmdbcs	r0!, {r0, r3, r5, sp}
     4c8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     4cc:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
     4d0:	4345445f 	movtmi	r4, #21599	; 0x545f
     4d4:	4c414d49 	mcrrmi	13, 4, r4, r1, cr9
     4d8:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
     4dc:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     4e0:	58520037 	ldmdapl	r2, {r0, r1, r2, r4, r5}^
     4e4:	54554f54 	ldrbpl	r4, [r5], #-3924	; 0xfffff0ac
     4e8:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
     4ec:	5f544e45 	svcpl	0x00544e45
     4f0:	4e474953 			; <UNDEFINED> instruction: 0x4e474953
     4f4:	535f4c41 	cmppl	pc, #16640	; 0x4100
     4f8:	20455a49 	subcs	r5, r5, r9, asr #20
     4fc:	5f003432 	svcpl	0x00003432
     500:	585f4353 	ldmdapl	pc, {r0, r1, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
     504:	4e45504f 	cdpmi	0, 4, cr5, cr5, cr15, {2}
     508:	484e455f 	stmdami	lr, {r0, r1, r2, r3, r4, r6, r8, sl, lr}^
     50c:	3831495f 	ldmdacc	r1!, {r0, r1, r2, r3, r4, r6, r8, fp, lr}
     510:	3739204e 	ldrcc	r2, [r9, -lr, asr #32]!
     514:	6d4b5f00 	stclvs	15, cr5, [fp, #-0]
     518:	28207861 	stmdacs	r0!, {r0, r5, r6, fp, ip, sp, lr}
     51c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
     520:	2820666f 	stmdacs	r0!, {r0, r1, r2, r3, r5, r6, r9, sl, sp, lr}
     524:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
     528:	2029745f 	eorcs	r7, r9, pc, asr r4
     52c:	33203c3c 			; <UNDEFINED> instruction: 0x33203c3c
     530:	5f5f0029 	svcpl	0x005f0029
     534:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 438 <_read+0x114>
     538:	435f4349 	cmpmi	pc, #603979777	; 0x24000001
     53c:	55534e4f 	ldrbpl	r4, [r3, #-3663]	; 0xfffff1b1
     540:	3120454d 			; <UNDEFINED> instruction: 0x3120454d
     544:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff64c <__stack+0xf7fff654>
     548:	4343414c 	movtmi	r4, #12620	; 0x314c
     54c:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
     550:	5f544942 	svcpl	0x00544942
     554:	3233205f 	eorscc	r2, r3, #95	; 0x5f
     558:	575f5f00 	ldrbpl	r5, [pc, -r0, lsl #30]
     55c:	52414843 	subpl	r4, r1, #4390912	; 0x430000
     560:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     564:	30205f5f 	eorcc	r5, r0, pc, asr pc
     568:	66666678 			; <UNDEFINED> instruction: 0x66666678
     56c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     570:	5f005566 	svcpl	0x00005566
     574:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
     578:	28544143 	ldmdacs	r4, {r0, r1, r6, r8, lr}^
     57c:	29792c78 	ldmdbcs	r9!, {r3, r4, r5, r6, sl, fp, sp}^
     580:	435f5f20 	cmpmi	pc, #32, 30	; 0x80
     584:	41434e4f 	cmpmi	r3, pc, asr #28
     588:	78283154 	stmdavc	r8!, {r2, r4, r6, r8, ip, sp}
     58c:	0029792c 	eoreq	r7, r9, ip, lsr #18
     590:	6972775f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
     594:	5f006574 	svcpl	0x00006574
     598:	4e5f4350 	mrcmi	3, 2, r4, cr15, cr0, {2}
     59c:	52545f4f 	subspl	r5, r4, #316	; 0x13c
     5a0:	20434e55 	subcs	r4, r3, r5, asr lr
     5a4:	5f5f0037 	svcpl	0x005f0037
     5a8:	43554e47 	cmpmi	r5, #1136	; 0x470
     5ac:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
     5b0:	545f5f5f 	ldrbpl	r5, [pc], #-3935	; 5b8 <fileno+0x4>
     5b4:	4f455059 	svcmi	0x00455059
     5b8:	00312046 	eorseq	r2, r1, r6, asr #32
     5bc:	55514445 	ldrbpl	r4, [r1, #-1093]	; 0xfffffbbb
     5c0:	3120544f 			; <UNDEFINED> instruction: 0x3120544f
     5c4:	5f003233 	svcpl	0x00003233
     5c8:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
     5cc:	4c495f37 	mcrrmi	15, 3, r5, r9, cr7
     5d0:	5f323350 	svcpl	0x00323350
     5d4:	3346464f 	movtcc	r4, #26191	; 0x664f
     5d8:	32392032 	eorscc	r2, r9, #50	; 0x32
     5dc:	43505f00 	cmpmi	r0, #0, 30
     5e0:	4944565f 	stmdbmi	r4, {r0, r1, r2, r3, r4, r6, r9, sl, ip, lr}^
     5e4:	4c424153 	stfmie	f4, [r2], {83}	; 0x53
     5e8:	00382045 	eorseq	r2, r8, r5, asr #32
     5ec:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
     5f0:	4d5f5841 	ldclmi	8, cr5, [pc, #-260]	; 4f4 <main+0x34>
     5f4:	5f004e49 	svcpl	0x00004e49
     5f8:	5a49535f 	bpl	125537c <_end+0x25537c>
     5fc:	5f464f45 	svcpl	0x00464f45
     600:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
     604:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
     608:	205f5f47 	subscs	r5, pc, r7, asr #30
     60c:	615f0038 	cmpvs	pc, r8, lsr r0	; <UNPREDICTABLE>
     610:	69746373 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, r9, sp, lr}^
     614:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
     618:	5f006675 	svcpl	0x00006675
     61c:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
     620:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     624:	5f30315f 	svcpl	0x0030315f
     628:	5f505845 	svcpl	0x00505845
     62c:	3033205f 	eorscc	r2, r3, pc, asr r0
     630:	635f0038 	cmpvs	pc, #56	; 0x38
     634:	656c7476 	strbvs	r7, [ip, #-1142]!	; 0xfffffb8a
     638:	5f5f006e 	svcpl	0x005f006e
     63c:	49534352 	ldmdbmi	r3, {r1, r4, r6, r8, r9, lr}^
     640:	4f535f44 	svcmi	0x00535f44
     644:	45435255 	strbmi	r5, [r3, #-597]	; 0xfffffdab
     648:	20297328 	eorcs	r7, r9, r8, lsr #6
     64c:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
     650:	5f207463 	svcpl	0x00207463
     654:	6361685f 	cmnvs	r1, #6225920	; 0x5f0000
     658:	5f5f006b 	svcpl	0x005f006b
     65c:	43415246 	movtmi	r5, #4678	; 0x1246
     660:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
     664:	205f5f4e 	subscs	r5, pc, lr, asr #30
     668:	2e302d28 	cdpcs	13, 3, cr2, cr0, cr8, {1}
     66c:	302d5235 	eorcc	r5, sp, r5, lsr r2
     670:	2952352e 	ldmdbcs	r2, {r1, r2, r3, r5, r8, sl, ip, sp}^
     674:	43535f00 	cmpmi	r3, #0, 30
     678:	465f325f 			; <UNDEFINED> instruction: 0x465f325f
     67c:	5f54524f 	svcpl	0x0054524f
     680:	20564544 	subscs	r4, r6, r4, asr #10
     684:	00303131 	eorseq	r3, r0, r1, lsr r1
     688:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
     68c:	4343414c 	movtmi	r4, #12620	; 0x314c
     690:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 544 <main+0x84>
     694:	5f5f5841 	svcpl	0x005f5841
     698:	46583020 	ldrbmi	r3, [r8], -r0, lsr #32
     69c:	46464646 	strbmi	r4, [r6], -r6, asr #12
     6a0:	46464646 	strbmi	r4, [r6], -r6, asr #12
     6a4:	46464646 	strbmi	r4, [r6], -r6, asr #12
     6a8:	50464646 	subpl	r4, r6, r6, asr #12
     6ac:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
     6b0:	004b4c4c 	subeq	r4, fp, ip, asr #24
     6b4:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     6b8:	5f524d5f 	svcpl	0x00524d5f
     6bc:	49524150 	ldmdbmi	r2, {r4, r6, r8, lr}^
     6c0:	455f5954 	ldrbmi	r5, [pc, #-2388]	; fffffd74 <__stack+0xf7fffd7c>
     6c4:	204e4556 	subcs	r4, lr, r6, asr r5
     6c8:	30307830 	eorscc	r7, r0, r0, lsr r8
     6cc:	30303030 	eorscc	r3, r0, r0, lsr r0
     6d0:	5f003030 	svcpl	0x00003030
     6d4:	4153555f 	cmpmi	r3, pc, asr r5
     6d8:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
     6dc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     6e0:	30205f5f 	eorcc	r5, r0, pc, asr pc
     6e4:	46464658 			; <UNDEFINED> instruction: 0x46464658
     6e8:	382d5046 	stmdacc	sp!, {r1, r2, r6, ip, lr}
     6ec:	004b4855 	subeq	r4, fp, r5, asr r8
     6f0:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
     6f4:	5f323343 	svcpl	0x00323343
     6f8:	5f4e494d 	svcpl	0x004e494d
     6fc:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
     700:	4435392d 	ldrtmi	r3, [r5], #-2349	; 0xfffff6d3
     704:	5f5f0046 	svcpl	0x005f0046
     708:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
     70c:	575f5841 	ldrbpl	r5, [pc, -r1, asr #16]
     710:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
     714:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
     718:	525f0034 	subspl	r0, pc, #52	; 0x34
     71c:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
     720:	53424d5f 	movtpl	r4, #11615	; 0x2d5f
     724:	574f5452 	smlsldpl	r5, pc, r2, r4	; <UNPREDICTABLE>
     728:	535f5343 	cmppl	pc, #201326593	; 0xc000001
     72c:	45544154 	ldrbmi	r4, [r4, #-340]	; 0xfffffeac
     730:	72747028 	rsbsvc	r7, r4, #40	; 0x28
     734:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
     738:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
     73c:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 690 <__sfmoreglue+0x28>
     740:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
     744:	626d5f3e 	rsbvs	r5, sp, #62, 30	; 0xf8
     748:	6f747273 	svcvs	0x00747273
     74c:	5f736377 	svcpl	0x00736377
     750:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
     754:	5f002965 	svcpl	0x00002965
     758:	5f51535f 	svcpl	0x0051535f
     75c:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
     760:	30205f5f 	eorcc	r5, r0, pc, asr pc
     764:	535f5f00 	cmppl	pc, #0, 30
     768:	5f455a49 	svcpl	0x00455a49
     76c:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     770:	75205f5f 	strvc	r5, [r0, #-3935]!	; 0xfffff0a1
     774:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
     778:	2064656e 	rsbcs	r6, r4, lr, ror #10
     77c:	00746e69 	rsbseq	r6, r4, r9, ror #28
     780:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
     784:	5f343643 	svcpl	0x00343643
     788:	5f58414d 	svcpl	0x0058414d
     78c:	5f505845 	svcpl	0x00505845
     790:	3833205f 	ldmdacc	r3!, {r0, r1, r2, r3, r4, r6, sp}
     794:	475f0035 	smmlarmi	pc, r5, r0, r0	; <UNPREDICTABLE>
     798:	575f4343 	ldrbpl	r4, [pc, -r3, asr #6]
     79c:	5f504152 	svcpl	0x00504152
     7a0:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
     7a4:	485f544e 	ldmdami	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
     7a8:	5f5f0020 	svcpl	0x005f0020
     7ac:	5f544c46 	svcpl	0x00544c46
     7b0:	5f534148 	svcpl	0x00534148
     7b4:	4f4e4544 	svcmi	0x004e4544
     7b8:	5f5f4d52 	svcpl	0x005f4d52
     7bc:	5f003120 	svcpl	0x00003120
     7c0:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     7c4:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
     7c8:	5f5f4550 	svcpl	0x005f4550
     7cc:	67697320 	strbvs	r7, [r9, -r0, lsr #6]!
     7d0:	2064656e 	rsbcs	r6, r4, lr, ror #10
     7d4:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
     7d8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     7dc:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
     7e0:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     7e4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     7e8:	3537312e 	ldrcc	r3, [r7, #-302]!	; 0xfffffed2
     7ec:	33343934 	teqcc	r4, #52, 18	; 0xd0000
     7f0:	32383035 	eorscc	r3, r8, #53	; 0x35
     7f4:	37383232 			; <UNDEFINED> instruction: 0x37383232
     7f8:	332d6535 			; <UNDEFINED> instruction: 0x332d6535
     7fc:	32334638 	eorscc	r4, r3, #56, 12	; 0x3800000
     800:	43535f00 	cmpmi	r3, #0, 30
     804:	555f325f 	ldrbpl	r3, [pc, #-607]	; 5ad <exit+0x21>
     808:	31204550 			; <UNDEFINED> instruction: 0x31204550
     80c:	5f003032 	svcpl	0x00003032
     810:	4153555f 	cmpmi	r3, pc, asr r5
     814:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
     818:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     81c:	30205f5f 	eorcc	r5, r0, pc, asr pc
     820:	4855302e 	ldmdami	r5, {r1, r2, r3, r5, ip, sp}^
     824:	5f5f004b 	svcpl	0x005f004b
     828:	33544c46 	cmpcc	r4, #17920	; 0x4600
     82c:	45445f32 	strbmi	r5, [r4, #-3890]	; 0xfffff0ce
     830:	414d4943 	cmpmi	sp, r3, asr #18
     834:	49445f4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     838:	205f5f47 	subscs	r5, pc, r7, asr #30
     83c:	41550039 	cmpmi	r5, r9, lsr r0
     840:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 700 <__sfp>
     844:	4d45444f 	cfstrdmi	mvd4, [r5, #-316]	; 0xfffffec4
     848:	445f5253 	ldrbmi	r5, [pc], #-595	; 850 <__libc_init_array+0x34>
     84c:	30205253 	eorcc	r5, r0, r3, asr r2
     850:	30303078 	eorscc	r3, r0, r8, ror r0
     854:	32303030 	eorscc	r3, r0, #48	; 0x30
     858:	5f5f0030 	svcpl	0x005f0030
     85c:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
     860:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     864:	5058455f 	subspl	r4, r8, pc, asr r5
     868:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     86c:	3230312d 	eorscc	r3, r0, #1073741835	; 0x4000000b
     870:	5f002931 	svcpl	0x00002931
     874:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
     878:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
     87c:	525f5449 	subspl	r5, pc, #1224736768	; 0x49000000
     880:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
     884:	61762838 	cmnvs	r6, r8, lsr r8
     888:	64202972 	strtvs	r2, [r0], #-2418	; 0xfffff68e
     88c:	207b206f 	rsbscs	r2, fp, pc, rrx
     890:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
     894:	5f207463 	svcpl	0x00207463
     898:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
     89c:	5f2a2074 	svcpl	0x002a2074
     8a0:	203d2072 	eorscs	r2, sp, r2, ror r0
     8a4:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
     8a8:	5f203b29 	svcpl	0x00203b29
     8ac:	5f3e2d72 	svcpl	0x003e2d72
     8b0:	2d383472 	cfldrscs	mvf3, [r8, #-456]!	; 0xfffffe38
     8b4:	65735f3e 	ldrbvs	r5, [r3, #-3902]!	; 0xfffff0c2
     8b8:	305b6465 	subscc	r6, fp, r5, ror #8
     8bc:	203d205d 	eorscs	r2, sp, sp, asr r0
     8c0:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
     8c4:	5f383444 	svcpl	0x00383444
     8c8:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
     8cc:	203b305f 	eorscs	r3, fp, pc, asr r0
     8d0:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
     8d4:	3834725f 	ldmdacc	r4!, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
     8d8:	735f3e2d 	cmpvc	pc, #720	; 0x2d0
     8dc:	5b646565 	blpl	1919e78 <_end+0x919e78>
     8e0:	3d205d31 	stccc	13, cr5, [r0, #-196]!	; 0xffffff3c
     8e4:	41525f20 	cmpmi	r2, r0, lsr #30
     8e8:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
     8ec:	4545535f 	strbmi	r5, [r5, #-863]	; 0xfffffca1
     8f0:	3b315f44 	blcc	c58608 <heap_size+0xc38608>
     8f4:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
     8f8:	34725f3e 	ldrbtcc	r5, [r2], #-3902	; 0xfffff0c2
     8fc:	5f3e2d38 	svcpl	0x003e2d38
     900:	64656573 	strbtvs	r6, [r5], #-1395	; 0xfffffa8d
     904:	205d325b 	subscs	r3, sp, fp, asr r2
     908:	525f203d 	subspl	r2, pc, #61	; 0x3d
     90c:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
     910:	45535f38 	ldrbmi	r5, [r3, #-3896]	; 0xfffff0c8
     914:	325f4445 	subscc	r4, pc, #1157627904	; 0x45000000
     918:	725f203b 	subsvc	r2, pc, #59	; 0x3b
     91c:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
     920:	3e2d3834 	mcrcc	8, 1, r3, cr13, cr4, {1}
     924:	6c756d5f 	ldclvs	13, cr6, [r5], #-380	; 0xfffffe84
     928:	5d305b74 	vldmdbpl	r0!, {d5-<overflow reg d62>}
     92c:	5f203d20 	svcpl	0x00203d20
     930:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
     934:	4d5f3834 	ldclmi	8, cr3, [pc, #-208]	; 86c <malloc+0x8>
     938:	5f544c55 	svcpl	0x00544c55
     93c:	5f203b30 	svcpl	0x00203b30
     940:	5f3e2d72 	svcpl	0x003e2d72
     944:	2d383472 	cfldrscs	mvf3, [r8, #-456]!	; 0xfffffe38
     948:	756d5f3e 	strbvc	r5, [sp, #-3902]!	; 0xfffff0c2
     94c:	315b746c 	cmpcc	fp, ip, ror #8
     950:	203d205d 	eorscs	r2, sp, sp, asr r0
     954:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
     958:	5f383444 	svcpl	0x00383444
     95c:	544c554d 	strbpl	r5, [ip], #-1357	; 0xfffffab3
     960:	203b315f 	eorscs	r3, fp, pc, asr r1
     964:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
     968:	3834725f 	ldmdacc	r4!, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
     96c:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 8c0 <_free_r+0x2c>
     970:	5b746c75 	blpl	1d1bb4c <_end+0xd1bb4c>
     974:	3d205d32 	stccc	13, cr5, [r0, #-200]!	; 0xffffff38
     978:	41525f20 	cmpmi	r2, r0, lsr #30
     97c:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
     980:	4c554d5f 	mrrcmi	13, 5, r4, r5, cr15
     984:	3b325f54 	blcc	c986dc <heap_size+0xc786dc>
     988:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
     98c:	34725f3e 	ldrbtcc	r5, [r2], #-3902	; 0xfffff0c2
     990:	5f3e2d38 	svcpl	0x003e2d38
     994:	20646461 	rsbcs	r6, r4, r1, ror #8
     998:	525f203d 	subspl	r2, pc, #61	; 0x3d
     99c:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
     9a0:	44415f38 	strbmi	r5, [r1], #-3896	; 0xfffff0c8
     9a4:	5f203b44 	svcpl	0x00203b44
     9a8:	5f3e2d72 	svcpl	0x003e2d72
     9ac:	2d383472 	cfldrscs	mvf3, [r8, #-456]!	; 0xfffffe38
     9b0:	61725f3e 	cmnvs	r2, lr, lsr pc
     9b4:	6e5f646e 	cdpvs	4, 5, cr6, cr15, cr14, {3}
     9b8:	20747865 	rsbscs	r7, r4, r5, ror #16
     9bc:	3b31203d 	blcc	c48ab8 <heap_size+0xc28ab8>
     9c0:	77207d20 	strvc	r7, [r0, -r0, lsr #26]!
     9c4:	656c6968 	strbvs	r6, [ip, #-2408]!	; 0xfffff698
     9c8:	29302820 	ldmdbcs	r0!, {r5, fp, sp}
     9cc:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     9d0:	5f4c4244 	svcpl	0x004c4244
     9d4:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
     9d8:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
     9dc:	35205f5f 	strcc	r5, [r0, #-3935]!	; 0xfffff0a1
     9e0:	5f5f0033 	svcpl	0x005f0033
     9e4:	5f006d74 	svcpl	0x00006d74
     9e8:	72736377 	rsbsvc	r6, r3, #-603979775	; 0xdc000001
     9ec:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
     9f0:	74735f73 	ldrbtvc	r5, [r3], #-3955	; 0xfffff08d
     9f4:	00657461 	rsbeq	r7, r5, r1, ror #8
     9f8:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
     9fc:	6365735f 	cmnvs	r5, #2080374785	; 0x7c000001
     a00:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffb08 <__stack+0xf7fffb10>
     a04:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
     a08:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
     a0c:	00632029 	rsbeq	r2, r3, r9, lsr #32
     a10:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     a14:	5758525f 			; <UNDEFINED> instruction: 0x5758525f
     a18:	49445f4d 	stmdbmi	r4, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     a1c:	4c424153 	stfmie	f4, [r2], {83}	; 0x53
     a20:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
     a24:	30303030 	eorscc	r3, r0, r0, lsr r0
     a28:	30303030 	eorscc	r3, r0, r0, lsr r0
     a2c:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     a30:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
     a34:	5059545f 	subspl	r5, r9, pc, asr r4
     a38:	205f5f45 	subscs	r5, pc, r5, asr #30
     a3c:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
     a40:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
     a44:	5f5f0074 	svcpl	0x005f0074
     a48:	67696c61 	strbvs	r6, [r9, -r1, ror #24]!
     a4c:	2864656e 	stmdacs	r4!, {r1, r2, r3, r5, r6, r8, sl, sp, lr}^
     a50:	5f202978 	svcpl	0x00202978
     a54:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
     a58:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
     a5c:	5f5f6574 	svcpl	0x005f6574
     a60:	5f5f2828 	svcpl	0x005f2828
     a64:	67696c61 	strbvs	r6, [r9, -r1, ror #24]!
     a68:	5f64656e 	svcpl	0x0064656e
     a6c:	2978285f 	ldmdbcs	r8!, {r0, r1, r2, r3, r4, r6, fp, sp}^
     a70:	45002929 	strmi	r2, [r0, #-2345]	; 0xfffff6d7
     a74:	544f5250 	strbpl	r5, [pc], #-592	; a7c <_puts_r+0x44>
     a78:	534f4e4f 	movtpl	r4, #65103	; 0xfe4f
     a7c:	4f505055 	svcmi	0x00505055
     a80:	31205452 			; <UNDEFINED> instruction: 0x31205452
     a84:	5f003332 	svcpl	0x00003332
     a88:	6134366c 	teqvs	r4, ip, ror #12
     a8c:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
     a90:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     a94:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
     a98:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     a9c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     aa0:	3739372e 	ldrcc	r3, [r9, -lr, lsr #14]!
     aa4:	31333936 	teqcc	r3, r6, lsr r9
     aa8:	36383433 			; <UNDEFINED> instruction: 0x36383433
     aac:	35313332 	ldrcc	r3, [r1, #-818]!	; 0xfffffcce
     ab0:	332b6537 			; <UNDEFINED> instruction: 0x332b6537
     ab4:	36463830 			; <UNDEFINED> instruction: 0x36463830
     ab8:	505f0034 	subspl	r0, pc, r4, lsr r0	; <UNPREDICTABLE>
     abc:	414e5f43 	cmpmi	lr, r3, asr #30
     ac0:	4d5f454d 	cfldr64mi	mvdx4, [pc, #-308]	; 994 <_malloc_r+0x68>
     ac4:	33205841 			; <UNDEFINED> instruction: 0x33205841
     ac8:	43535f00 	cmpmi	r3, #0, 30
     acc:	5f514d5f 	svcpl	0x00514d5f
     ad0:	4f495250 	svcmi	0x00495250
     ad4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     ad8:	00343120 	eorseq	r3, r4, r0, lsr #2
     adc:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     ae0:	5f52535f 	svcpl	0x0052535f
     ae4:	55465854 	strbpl	r5, [r6, #-2132]	; 0xfffff7ac
     ae8:	30204c4c 	eorcc	r4, r0, ip, asr #24
     aec:	30303078 	eorscc	r3, r0, r8, ror r0
     af0:	31303030 	teqcc	r0, r0, lsr r0
     af4:	4e450030 	mcrmi	0, 2, r0, cr5, cr0, {1}
     af8:	4e494c4f 	cdpmi	12, 4, cr4, cr9, cr15, {2}
     afc:	3736204b 	ldrcc	r2, [r6, -fp, asr #32]!
     b00:	43535f00 	cmpmi	r3, #0, 30
     b04:	4152545f 	cmpmi	r2, pc, asr r4
     b08:	555f4543 	ldrbpl	r4, [pc, #-1347]	; 5cd <fileno+0x19>
     b0c:	5f524553 	svcpl	0x00524553
     b10:	4e455645 	cdpmi	6, 4, cr5, cr5, cr5, {2}
     b14:	414d5f54 	cmpmi	sp, r4, asr pc
     b18:	30392058 	eorscc	r2, r9, r8, asr r0
     b1c:	49505f00 	ldmdbmi	r0, {r8, r9, sl, fp, ip, lr}^
     b20:	5f545f44 	svcpl	0x00545f44
     b24:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
     b28:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
     b2c:	41550020 	cmpmi	r5, r0, lsr #32
     b30:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 9f0 <_iprintf_r+0x10>
     b34:	48435f52 	stmdami	r3, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
     b38:	454c5241 	strbmi	r5, [ip, #-577]	; 0xfffffdbf
     b3c:	5f385f4e 	svcpl	0x00385f4e
     b40:	20544942 	subscs	r4, r4, r2, asr #18
     b44:	30307830 	eorscc	r7, r0, r0, lsr r8
     b48:	30303030 	eorscc	r3, r0, r0, lsr r0
     b4c:	5f003030 	svcpl	0x00003030
     b50:	626e755f 	rsbvs	r7, lr, #398458880	; 0x17c00000
     b54:	646e756f 	strbtvs	r7, [lr], #-1391	; 0xfffffa91
     b58:	00206465 	eoreq	r6, r0, r5, ror #8
     b5c:	504e4945 	subpl	r4, lr, r5, asr #18
     b60:	52474f52 	subpl	r4, r7, #328	; 0x148
     b64:	20535345 	subscs	r5, r3, r5, asr #6
     b68:	00393131 	eorseq	r3, r9, r1, lsr r1
     b6c:	5f544e49 	svcpl	0x00544e49
     b70:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     b74:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; aa4 <_puts_r+0x6c>
     b78:	5f205841 	svcpl	0x00205841
     b7c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     b80:	5341465f 	movtpl	r4, #5727	; 0x165f
     b84:	5f343654 	svcpl	0x00343654
     b88:	5f58414d 	svcpl	0x0058414d
     b8c:	5f5f005f 	svcpl	0x005f005f
     b90:	53435041 	movtpl	r5, #12353	; 0x3041
     b94:	5f32335f 	svcpl	0x0032335f
     b98:	0031205f 	eorseq	r2, r1, pc, asr r0
     b9c:	55414645 	strbpl	r4, [r1, #-1605]	; 0xfffff9bb
     ba0:	3120544c 			; <UNDEFINED> instruction: 0x3120544c
     ba4:	5f5f0034 	svcpl	0x005f0034
     ba8:	61686377 	smcvs	34359	; 0x8637
     bac:	5f745f72 	svcpl	0x00745f72
     bb0:	5f00205f 	svcpl	0x0000205f
     bb4:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
     bb8:	4f485f43 	svcmi	0x00485f43
     bbc:	44455453 	strbmi	r5, [r5], #-1107	; 0xfffffbad
     bc0:	30205f5f 	eorcc	r5, r0, pc, asr pc
     bc4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffccc <__stack+0xf7fffcd4>
     bc8:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
     bcc:	5f544341 	svcpl	0x00544341
     bd0:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
     bd4:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
     bd8:	4c5f0034 	mrrcmi	0, 3, r0, pc, cr4	; <UNPREDICTABLE>
     bdc:	5f4c4244 	svcpl	0x004c4244
     be0:	445f5145 	ldrbmi	r5, [pc], #-325	; be8 <__sseek+0x12>
     be4:	31204c42 			; <UNDEFINED> instruction: 0x31204c42
     be8:	69735f00 	ldmdbvs	r3!, {r8, r9, sl, fp, ip, lr}^
     bec:	5500657a 	strpl	r6, [r0, #-1402]	; 0xfffffa86
     bf0:	5f545241 	svcpl	0x00545241
     bf4:	4544454d 	strbmi	r4, [r4, #-1357]	; 0xfffffab3
     bf8:	5f52534d 	svcpl	0x0052534d
     bfc:	58444344 	stmdapl	r4, {r2, r6, r8, r9, lr}^
     c00:	30783020 	rsbscc	r3, r8, r0, lsr #32
     c04:	30303030 	eorscc	r3, r0, r0, lsr r0
     c08:	00383030 	eorseq	r3, r8, r0, lsr r0
     c0c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     c10:	41465f54 	cmpmi	r6, r4, asr pc
     c14:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     c18:	5059545f 	subspl	r5, r9, pc, asr r4
     c1c:	205f5f45 	subscs	r5, pc, r5, asr #30
     c20:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
     c24:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     c28:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
     c2c:	5f5f0074 	svcpl	0x005f0074
     c30:	5f4d5241 	svcpl	0x004d5241
     c34:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
     c38:	5f455255 	svcpl	0x00455255
     c3c:	52504f43 	subspl	r4, r0, #268	; 0x10c
     c40:	3120434f 			; <UNDEFINED> instruction: 0x3120434f
     c44:	5f5f0035 	svcpl	0x005f0035
     c48:	5f544942 	svcpl	0x00544942
     c4c:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     c50:	45445f53 	strbmi	r5, [r4, #-3923]	; 0xfffff0ad
     c54:	454e4946 	strbmi	r4, [lr, #-2374]	; 0xfffff6ba
     c58:	205f5f44 	subscs	r5, pc, r4, asr #30
     c5c:	665f0031 			; <UNDEFINED> instruction: 0x665f0031
     c60:	6772616e 	ldrbvs	r6, [r2, -lr, ror #2]!
     c64:	6c5f0073 	mrrcvs	0, 7, r0, pc, cr3	; <UNPREDICTABLE>
     c68:	006b636f 	rsbeq	r6, fp, pc, ror #6
     c6c:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     c70:	545f455a 	ldrbpl	r4, [pc], #-1370	; c78 <__swbuf_r+0x70>
     c74:	00205f5f 	eoreq	r5, r0, pc, asr pc
     c78:	33544e49 	cmpcc	r4, #1168	; 0x490
     c7c:	494d5f32 	stmdbmi	sp, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
     c80:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
     c84:	33544e49 	cmpcc	r4, #1168	; 0x490
     c88:	414d5f32 	cmpmi	sp, r2, lsr pc
     c8c:	202d2058 	eorcs	r2, sp, r8, asr r0
     c90:	5f002931 	svcpl	0x00002931
     c94:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
     c98:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
     c9c:	41435f34 	cmpmi	r3, r4, lsr pc
     ca0:	5f454843 	svcpl	0x00454843
     ca4:	4f535341 	svcmi	0x00535341
     ca8:	33312043 	teqcc	r1, #67	; 0x43
     cac:	5f5f0038 	svcpl	0x005f0038
     cb0:	33544c46 	cmpcc	r4, #17920	; 0x4600
     cb4:	414d5f32 	cmpmi	sp, r2, lsr pc
     cb8:	30315f58 	eorscc	r5, r1, r8, asr pc
     cbc:	5058455f 	subspl	r4, r8, pc, asr r5
     cc0:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
     cc4:	4e5f0038 	mrcmi	0, 2, r0, cr15, cr8, {1}
     cc8:	616c6c75 	smcvs	50885	; 0xc6c5
     ccc:	20656c62 	rsbcs	r6, r5, r2, ror #24
     cd0:	43535f00 	cmpmi	r3, #0, 30
     cd4:	5248545f 	subpl	r5, r8, #1593835520	; 0x5f000000
     cd8:	5f444145 	svcpl	0x00444145
     cdc:	4f495250 	svcmi	0x00495250
     ce0:	4f52505f 	svcmi	0x0052505f
     ce4:	54434554 	strbpl	r4, [r3], #-1364	; 0xfffffaac
     ce8:	00373420 	eorseq	r3, r7, r0, lsr #8
     cec:	494c4e5f 	stmdbmi	ip, {r0, r1, r2, r3, r4, r6, r9, sl, fp, lr}^
     cf0:	545f4b4e 	ldrbpl	r4, [pc], #-2894	; cf8 <__swsetup_r+0x18>
     cf4:	4345445f 	movtmi	r4, #21599	; 0x545f
     cf8:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
     cfc:	5f002044 	svcpl	0x00002044
     d00:	525f4350 	subspl	r4, pc, #80, 6	; 0x40000001
     d04:	585f4345 	ldmdapl	pc, {r0, r2, r6, r8, r9, lr}^	; <UNPREDICTABLE>
     d08:	5f524546 	svcpl	0x00524546
     d0c:	47494c41 	strbmi	r4, [r9, -r1, asr #24]
     d10:	3931204e 	ldmdbcc	r1!, {r1, r2, r3, r6, sp}
     d14:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
     d18:	5f544e45 	svcpl	0x00544e45
     d1c:	43454843 	movtmi	r4, #22595	; 0x5843
     d20:	4d545f4b 	ldclmi	15, cr5, [r4, #-300]	; 0xfffffed4
     d24:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
     d28:	525f2029 	subspl	r2, pc, #41	; 0x29
     d2c:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
     d30:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
     d34:	76284b43 	strtvc	r4, [r8], -r3, asr #22
     d38:	202c7261 	eorcs	r7, ip, r1, ror #4
     d3c:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
     d40:	69746c61 	ldmdbvs	r4!, {r0, r5, r6, sl, fp, sp, lr}^
     d44:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
     d48:	202c6675 	eorcs	r6, ip, r5, ror r6
     d4c:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
     d50:	5f207463 	svcpl	0x00207463
     d54:	206d745f 	rsbcs	r7, sp, pc, asr r4
     d58:	73202c2a 			; <UNDEFINED> instruction: 0x73202c2a
     d5c:	6f657a69 	svcvs	0x00657a69
     d60:	282a2066 	stmdacs	sl!, {r1, r2, r5, r6, sp}
     d64:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
     d68:	5f3e2d29 	svcpl	0x003e2d29
     d6c:	61636f6c 	cmnvs	r3, ip, ror #30
     d70:	6d69746c 	cfstrdvs	mvd7, [r9, #-432]!	; 0xfffffe50
     d74:	75625f65 	strbvc	r5, [r2, #-3941]!	; 0xfffff09b
     d78:	202c2966 	eorcs	r2, ip, r6, ror #18
     d7c:	5f5f0029 	svcpl	0x005f0029
     d80:	64646164 	strbtvs	r6, [r4], #-356	; 0xfffffe9c
     d84:	5f745f72 	svcpl	0x00745f72
     d88:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
     d8c:	2064656e 	rsbcs	r6, r4, lr, ror #10
     d90:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffe98 <__stack+0xf7fffea0>
     d94:	41524653 	cmpmi	r2, r3, asr r6
     d98:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; c94 <__swbuf_r+0x8c>
     d9c:	5f5f5841 	svcpl	0x005f5841
     da0:	46583020 	ldrbmi	r3, [r8], -r0, lsr #32
     da4:	382d5046 	stmdacc	sp!, {r1, r2, r6, ip, lr}
     da8:	00524855 	subseq	r4, r2, r5, asr r8
     dac:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
     db0:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
     db4:	425f454b 	subsmi	r4, pc, #314572800	; 0x12c00000
     db8:	544c4955 	strbpl	r4, [ip], #-2389	; 0xfffff6ab
     dbc:	535f4e49 	cmppl	pc, #1168	; 0x490
     dc0:	52414454 	subpl	r4, r1, #84, 8	; 0x54000000
     dc4:	00312047 	eorseq	r2, r1, r7, asr #32
     dc8:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     dcc:	5f524d5f 	svcpl	0x00524d5f
     dd0:	4b4c4343 	blmi	1311ae4 <_end+0x311ae4>
     dd4:	30783020 	rsbscc	r3, r8, r0, lsr #32
     dd8:	30303030 	eorscc	r3, r0, r0, lsr r0
     ddc:	00303034 	eorseq	r3, r0, r4, lsr r0
     de0:	52444945 	subpl	r4, r4, #1130496	; 0x114000
     de4:	3633204d 	ldrtcc	r2, [r3], -sp, asr #32
     de8:	415f5f00 	cmpmi	pc, r0, lsl #30
     dec:	414e4d53 	cmpmi	lr, r3, asr sp
     df0:	6328454d 			; <UNDEFINED> instruction: 0x6328454d
     df4:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
     df8:	5f5f2029 	svcpl	0x005f2029
     dfc:	52545358 	subspl	r5, r4, #88, 6	; 0x60000001
     e00:	20474e49 	subcs	r4, r7, r9, asr #28
     e04:	555f5f28 	ldrbpl	r5, [pc, #-3880]	; fffffee4 <__stack+0xf7fffeec>
     e08:	5f524553 	svcpl	0x00524553
     e0c:	4542414c 	strbmi	r4, [r2, #-332]	; 0xfffffeb4
     e10:	52505f4c 	subspl	r5, r0, #76, 30	; 0x130
     e14:	58494645 	stmdapl	r9, {r0, r2, r6, r9, sl, lr}^
     e18:	20295f5f 	eorcs	r5, r9, pc, asr pc
     e1c:	6d616e63 	stclvs	14, cr6, [r1, #-396]!	; 0xfffffe74
     e20:	5f5f0065 	svcpl	0x005f0065
     e24:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
     e28:	6863775f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
     e2c:	745f7261 	ldrbvc	r7, [pc], #-609	; e34 <__sflush_r+0x58>
     e30:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     e34:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
     e38:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     e3c:	5058455f 	subspl	r4, r8, pc, asr r5
     e40:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     e44:	3532312d 	ldrcc	r3, [r2, #-301]!	; 0xfffffed3
     e48:	43450029 	movtmi	r0, #20521	; 0x5029
     e4c:	45434e41 	strbmi	r4, [r3, #-3649]	; 0xfffff1bf
     e50:	2044454c 	subcs	r4, r4, ip, asr #10
     e54:	00303431 	eorseq	r3, r0, r1, lsr r4
     e58:	5f43535f 	svcpl	0x0043535f
     e5c:	49535452 	ldmdbmi	r3, {r1, r4, r6, sl, ip, lr}^
     e60:	414d5f47 	cmpmi	sp, r7, asr #30
     e64:	35312058 	ldrcc	r2, [r1, #-88]!	; 0xffffffa8
     e68:	545f5f00 	ldrbpl	r5, [pc], #-3840	; e70 <__sflush_r+0x94>
     e6c:	424d5548 	submi	r5, sp, #72, 10	; 0x12000000
     e70:	5f5f4c45 	svcpl	0x005f4c45
     e74:	756d5f00 	strbvc	r5, [sp, #-3840]!	; 0xfffff100
     e78:	5500746c 	strpl	r7, [r0, #-1132]	; 0xfffffb94
     e7c:	5f545241 	svcpl	0x00545241
     e80:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
     e84:	5f52534d 	svcpl	0x0052534d
     e88:	534d4346 	movtpl	r4, #54086	; 0xd346
     e8c:	30783020 	rsbscc	r3, r8, r0, lsr #32
     e90:	30303030 	eorscc	r3, r0, r0, lsr r0
     e94:	00303031 	eorseq	r3, r0, r1, lsr r0
     e98:	43575f5f 	cmpmi	r7, #380	; 0x17c
     e9c:	5f524148 	svcpl	0x00524148
     ea0:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
     ea4:	205f5f48 	subscs	r5, pc, r8, asr #30
     ea8:	5f003233 	svcpl	0x00003233
     eac:	464c555f 			; <UNDEFINED> instruction: 0x464c555f
     eb0:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
     eb4:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
     eb8:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     ebc:	5f003233 	svcpl	0x00003233
     ec0:	545f4353 	ldrbpl	r4, [pc], #-851	; ec8 <__sflush_r+0xec>
     ec4:	41455248 	cmpmi	r5, r8, asr #4
     ec8:	48545f44 	ldmdami	r4, {r2, r6, r8, r9, sl, fp, ip, lr}^
     ecc:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
     ed0:	414d5f53 	cmpmi	sp, r3, asr pc
     ed4:	30342058 	eorscc	r2, r4, r8, asr r0
     ed8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     edc:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
     ee0:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     ee4:	5f30315f 	svcpl	0x0030315f
     ee8:	5f505845 	svcpl	0x00505845
     eec:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
     ef0:	29373033 	ldmdbcs	r7!, {r0, r1, r4, r5, ip, sp}
     ef4:	735f5f00 	cmpvc	pc, #0, 30
     ef8:	5f657a69 	svcpl	0x00657a69
     efc:	5f002074 	svcpl	0x00002074
     f00:	756f625f 	strbvc	r6, [pc, #-607]!	; ca9 <__swbuf_r+0xa1>
     f04:	6465646e 	strbtvs	r6, [r5], #-1134	; 0xfffffb92
     f08:	5f5f0020 	svcpl	0x005f0020
     f0c:	5f544e49 	svcpl	0x00544e49
     f10:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     f14:	575f3436 	smmlarpl	pc, r6, r4, r3	; <UNPREDICTABLE>
     f18:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
     f1c:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
     f20:	5f5f0034 	svcpl	0x005f0034
     f24:	43445453 	movtmi	r5, #17491	; 0x4453
     f28:	5245565f 	subpl	r5, r5, #99614720	; 0x5f00000
     f2c:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
     f30:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     f34:	30393939 	eorscc	r3, r9, r9, lsr r9
     f38:	5f004c31 	svcpl	0x00004c31
     f3c:	5342465f 	movtpl	r4, #9823	; 0x265f
     f40:	28444944 	stmdacs	r4, {r2, r6, r8, fp, lr}^
     f44:	73202973 			; <UNDEFINED> instruction: 0x73202973
     f48:	63757274 	cmnvs	r5, #116, 4	; 0x40000007
     f4c:	5f5f2074 	svcpl	0x005f2074
     f50:	6b636168 	blvs	18d94f8 <_end+0x8d94f8>
     f54:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
     f58:	5f544e45 	svcpl	0x00544e45
     f5c:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
     f60:	5254505f 	subspl	r5, r4, #95	; 0x5f
     f64:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
     f68:	207b2029 	rsbscs	r2, fp, r9, lsr #32
     f6c:	736d656d 	cmnvc	sp, #457179136	; 0x1b400000
     f70:	28287465 	stmdacs	r8!, {r0, r2, r5, r6, sl, ip, sp, lr}
     f74:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
     f78:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
     f7c:	7a697320 	bvc	1a5dc04 <_end+0xa5dc04>
     f80:	28666f65 	stmdacs	r6!, {r0, r2, r5, r6, r8, r9, sl, fp, sp, lr}^
     f84:	6176282a 	cmnvs	r6, sl, lsr #16
     f88:	29292972 	stmdbcs	r9!, {r1, r4, r5, r6, r8, fp, sp}
     f8c:	525f203b 	subspl	r2, pc, #59	; 0x3b
     f90:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
     f94:	494e495f 	stmdbmi	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
     f98:	54505f54 	ldrbpl	r5, [r0], #-3924	; 0xfffff0ac
     f9c:	455a5f52 	ldrbmi	r5, [sl, #-3922]	; 0xfffff0ae
     fa0:	44454f52 	strbmi	r4, [r5], #-3922	; 0xfffff0ae
     fa4:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
     fa8:	7d203b29 	fstmdbxvc	r0!, {d3-d22}	;@ Deprecated
     fac:	52415500 	subpl	r5, r1, #0, 10
     fb0:	58495f54 	stmdapl	r9, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
     fb4:	52465f52 	subpl	r5, r6, #328	; 0x148
     fb8:	4e494d41 	cdpmi	13, 4, cr4, cr9, cr1, {2}
     fbc:	78302047 	ldmdavc	r0!, {r0, r1, r2, r6, sp}
     fc0:	30303030 	eorscc	r3, r0, r0, lsr r0
     fc4:	30343030 	eorscc	r3, r4, r0, lsr r0
     fc8:	4f505f00 	svcmi	0x00505f00
     fcc:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
     fd0:	4e495f52 	mcrmi	15, 2, r5, cr9, cr2, {2}
     fd4:	6f6c2054 	svcvs	0x006c2054
     fd8:	5f00676e 	svcpl	0x0000676e
     fdc:	5246535f 	subpl	r5, r6, #2080374785	; 0x7c000001
     fe0:	5f544341 	svcpl	0x00544341
     fe4:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
     fe8:	5f4e4f4c 	svcpl	0x004e4f4c
     fec:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     ff0:	372d5031 			; <UNDEFINED> instruction: 0x372d5031
     ff4:	5f005248 	svcpl	0x00005248
     ff8:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
     ffc:	31544143 	cmpcc	r4, r3, asr #2
    1000:	792c7828 	stmdbvc	ip!, {r3, r5, fp, ip, sp, lr}
    1004:	20782029 	rsbscs	r2, r8, r9, lsr #32
    1008:	79202323 	stmdbvc	r0!, {r0, r1, r5, r8, r9, sp}
    100c:	52415500 	subpl	r5, r1, #0, 10
    1010:	52435f54 	subpl	r5, r3, #84, 30	; 0x150
    1014:	5258545f 	subspl	r5, r8, #1593835520	; 0x5f000000
    1018:	30205453 	eorcc	r5, r0, r3, asr r4
    101c:	30303078 	eorscc	r3, r0, r8, ror r0
    1020:	30303030 	eorscc	r3, r0, r0, lsr r0
    1024:	545f0032 	ldrbpl	r0, [pc], #-50	; 102c <__STACK_SIZE+0x2c>
    1028:	5a49535f 	bpl	1255dac <_end+0x255dac>
    102c:	5f002045 	svcpl	0x00002045
    1030:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1034:	435f3233 	cmpmi	pc, #805306371	; 0x30000003
    1038:	20296328 	eorcs	r6, r9, r8, lsr #6
    103c:	23232063 			; <UNDEFINED> instruction: 0x23232063
    1040:	5f004c20 	svcpl	0x00004c20
    1044:	5153555f 	cmppl	r3, pc, asr r5
    1048:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    104c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1050:	5f003233 	svcpl	0x00003233
    1054:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
    1058:	425f5245 	subsmi	r5, pc, #1342177284	; 0x50000004
    105c:	455f4749 	ldrbmi	r4, [pc, #-1865]	; 91b <_free_r+0x87>
    1060:	4149444e 	cmpmi	r9, lr, asr #8
    1064:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1068:	31323334 	teqcc	r2, r4, lsr r3
    106c:	5a495300 	bpl	1255c74 <_end+0x255c74>
    1070:	414d5f45 	cmpmi	sp, r5, asr #30
    1074:	505f0058 	subspl	r0, pc, r8, asr r0	; <UNPREDICTABLE>
    1078:	49465f43 	stmdbmi	r6, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    107c:	4953454c 	ldmdbmi	r3, {r2, r3, r6, r8, sl, lr}^
    1080:	4942455a 	stmdbmi	r2, {r1, r3, r4, r6, r8, sl, lr}^
    1084:	31205354 			; <UNDEFINED> instruction: 0x31205354
    1088:	41550032 	cmpmi	r5, r2, lsr r0
    108c:	525f5452 	subspl	r5, pc, #1375731712	; 0x52000000
    1090:	554f5458 	strbpl	r5, [pc, #-1112]	; c40 <__swbuf_r+0x38>
    1094:	414d5f54 	cmpmi	sp, r4, asr pc
    1098:	30204b53 	eorcc	r4, r0, r3, asr fp
    109c:	30303078 	eorscc	r3, r0, r8, ror r0
    10a0:	46303030 			; <UNDEFINED> instruction: 0x46303030
    10a4:	5f5f0046 	svcpl	0x005f0046
    10a8:	465f5153 			; <UNDEFINED> instruction: 0x465f5153
    10ac:	5f544942 	svcpl	0x00544942
    10b0:	3133205f 	teqcc	r3, pc, asr r0
    10b4:	44545300 	ldrbmi	r5, [r4], #-768	; 0xfffffd00
    10b8:	465f4e49 	ldrbmi	r4, [pc], -r9, asr #28
    10bc:	4e454c49 	cdpmi	12, 4, cr4, cr5, cr9, {2}
    10c0:	0030204f 	eorseq	r2, r0, pc, asr #32
    10c4:	4d575852 	ldclmi	8, cr5, [r7, #-328]	; 0xfffffeb8
    10c8:	4f434500 	svcmi	0x00434500
    10cc:	45524e4e 	ldrbmi	r4, [r2, #-3662]	; 0xfffff1b2
    10d0:	45535546 	ldrbmi	r5, [r3, #-1350]	; 0xfffffaba
    10d4:	31312044 	teqcc	r1, r4, asr #32
    10d8:	455f0031 	ldrbmi	r0, [pc, #-49]	; 10af <__sprint_r+0xd>
    10dc:	4144494c 	cmpmi	r4, ip, asr #18
    10e0:	5f454c42 	svcpl	0x00454c42
    10e4:	494c4e49 	stmdbmi	ip, {r0, r3, r6, r9, sl, fp, lr}^
    10e8:	7320454e 			; <UNDEFINED> instruction: 0x7320454e
    10ec:	69746174 	ldmdbvs	r4!, {r2, r4, r5, r6, r8, sp, lr}^
    10f0:	5f5f2063 	svcpl	0x005f2063
    10f4:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    10f8:	5f5f656e 	svcpl	0x005f656e
    10fc:	49555f00 	ldmdbmi	r5, {r8, r9, sl, fp, ip, lr}^
    1100:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    1104:	445f545f 	ldrbmi	r5, [pc], #-1119	; 110c <_vfiprintf_r+0x50>
    1108:	414c4345 	cmpmi	ip, r5, asr #6
    110c:	20444552 	subcs	r4, r4, r2, asr r5
    1110:	454b5f00 	strbmi	r5, [fp, #-3840]	; 0xfffff100
    1114:	5f545f59 	svcpl	0x00545f59
    1118:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    111c:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    1120:	535f0020 	cmppl	pc, #32
    1124:	4f585f43 	svcmi	0x00585f43
    1128:	5f4e4550 	svcpl	0x004e4550
    112c:	50435555 	subpl	r5, r3, r5, asr r5
    1130:	34323120 	ldrtcc	r3, [r2], #-288	; 0xfffffee0
    1134:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 23c <_write>
    1138:	465f5148 	ldrbmi	r5, [pc], -r8, asr #2
    113c:	5f544942 	svcpl	0x00544942
    1140:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    1144:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    1148:	5f544e45 	svcpl	0x00544e45
    114c:	4e474953 			; <UNDEFINED> instruction: 0x4e474953
    1150:	425f4c41 	subsmi	r4, pc, #16640	; 0x4100
    1154:	70284655 	eorvc	r4, r8, r5, asr r6
    1158:	20297274 	eorcs	r7, r9, r4, ror r2
    115c:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    1160:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    1164:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
    1168:	5f6c616e 	svcpl	0x006c616e
    116c:	29667562 	stmdbcs	r6!, {r1, r5, r6, r8, sl, ip, sp, lr}^
    1170:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1174:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    1178:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    117c:	5058455f 	subspl	r4, r8, pc, asr r5
    1180:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    1184:	3230312d 	eorscc	r3, r0, #1073741835	; 0x4000000b
    1188:	5f002931 	svcpl	0x00002931
    118c:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
    1190:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    1194:	41435f33 	cmpmi	r3, r3, lsr pc
    1198:	5f454843 	svcpl	0x00454843
    119c:	4f535341 	svcmi	0x00535341
    11a0:	33312043 	teqcc	r1, #67	; 0x43
    11a4:	5f5f0035 	svcpl	0x005f0035
    11a8:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    11ac:	5f464649 	svcpl	0x00464649
    11b0:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    11b4:	205f5f48 	subscs	r5, pc, r8, asr #30
    11b8:	53003233 	movwpl	r3, #563	; 0x233
    11bc:	554f4454 	strbpl	r4, [pc, #-1108]	; d70 <__swsetup_r+0x90>
    11c0:	49465f54 	stmdbmi	r6, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    11c4:	4f4e454c 	svcmi	0x004e454c
    11c8:	5f003120 	svcpl	0x00003120
    11cc:	6165775f 	cmnvs	r5, pc, asr r7
    11d0:	65725f6b 	ldrbvs	r5, [r2, #-3947]!	; 0xfffff095
    11d4:	65726566 	ldrbvs	r6, [r2, #-1382]!	; 0xfffffa9a
    11d8:	2865636e 	stmdacs	r5!, {r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    11dc:	2c6d7973 			; <UNDEFINED> instruction: 0x2c6d7973
    11e0:	61696c61 	cmnvs	r9, r1, ror #24
    11e4:	5f202973 	svcpl	0x00202973
    11e8:	6d73615f 	ldfvse	f6, [r3, #-380]!	; 0xfffffe84
    11ec:	22285f5f 	eorcs	r5, r8, #380	; 0x17c
    11f0:	6165772e 	cmnvs	r5, lr, lsr #14
    11f4:	2022206b 	eorcs	r2, r2, fp, rrx
    11f8:	696c6123 	stmdbvs	ip!, {r0, r1, r5, r8, sp, lr}^
    11fc:	3b297361 	blcc	a5df88 <heap_size+0xa3df88>
    1200:	615f5f20 	cmpvs	pc, r0, lsr #30
    1204:	5f5f6d73 	svcpl	0x005f6d73
    1208:	652e2228 	strvs	r2, [lr, #-552]!	; 0xfffffdd8
    120c:	22207571 	eorcs	r7, r0, #473956352	; 0x1c400000
    1210:	6c612320 	stclvs	3, cr2, [r1], #-128	; 0xffffff80
    1214:	20736169 	rsbscs	r6, r3, r9, ror #2
    1218:	22202c22 	eorcs	r2, r0, #8704	; 0x2200
    121c:	79732320 	ldmdbvc	r3!, {r5, r8, r9, sp}^
    1220:	5f00296d 	svcpl	0x0000296d
    1224:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    1228:	41465f54 	cmpmi	r6, r4, asr pc
    122c:	5f385453 	svcpl	0x00385453
    1230:	5f58414d 	svcpl	0x0058414d
    1234:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1238:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    123c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1240:	49450055 	stmdbmi	r5, {r0, r2, r4, r6}^
    1244:	4e4f4353 	mcrmi	3, 2, r4, cr15, cr3, {2}
    1248:	3231204e 	eorscc	r2, r1, #78	; 0x4e
    124c:	535f0037 	cmppl	pc, #55	; 0x37
    1250:	36565f43 	ldrbcc	r5, [r6], -r3, asr #30
    1254:	504c495f 	subpl	r4, ip, pc, asr r9
    1258:	4f5f3233 	svcmi	0x005f3233
    125c:	32334646 	eorscc	r4, r3, #73400320	; 0x4600000
    1260:	43535f20 	cmpmi	r3, #32, 30	; 0x80
    1264:	5f37565f 	svcpl	0x0037565f
    1268:	33504c49 	cmpcc	r0, #18688	; 0x4900
    126c:	464f5f32 			; <UNDEFINED> instruction: 0x464f5f32
    1270:	00323346 	eorseq	r3, r2, r6, asr #6
    1274:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    1278:	5f323343 	svcpl	0x00323343
    127c:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    1280:	5f4e4f4c 	svcpl	0x004e4f4c
    1284:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
    1288:	4644362d 	strbmi	r3, [r4], -sp, lsr #12
    128c:	685f5f00 	ldmdavs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1290:	655f7361 	ldrbvs	r7, [pc, #-865]	; f37 <_fflush_r+0x4f>
    1294:	6e657478 	mcrvs	4, 3, r7, cr5, cr8, {3}
    1298:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
    129c:	685f5f20 	ldmdavs	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    12a0:	665f7361 	ldrbvs	r7, [pc], -r1, ror #6
    12a4:	75746165 	ldrbvc	r6, [r4, #-357]!	; 0xfffffe9b
    12a8:	5f006572 	svcpl	0x00006572
    12ac:	6863775f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
    12b0:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    12b4:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    12b8:	42495f4d 	submi	r5, r9, #308	; 0x134
    12bc:	5f5f5449 	svcpl	0x005f5449
    12c0:	00323320 	eorseq	r3, r2, r0, lsr #6
    12c4:	454e5f5f 	strbmi	r5, [lr, #-3935]	; 0xfffff0a1
    12c8:	42494c57 	submi	r4, r9, #22272	; 0x5700
    12cc:	5f5f485f 	svcpl	0x005f485f
    12d0:	5f003120 	svcpl	0x00003120
    12d4:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    12d8:	5341465f 	movtpl	r4, #5727	; 0x165f
    12dc:	5f363154 	svcpl	0x00363154
    12e0:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    12e4:	205f5f48 	subscs	r5, pc, r8, asr #30
    12e8:	5f003233 	svcpl	0x00003233
    12ec:	535f4353 	cmppl	pc, #1275068417	; 0x4c000001
    12f0:	44455641 	strbmi	r5, [r5], #-1601	; 0xfffff9bf
    12f4:	5344495f 	movtpl	r4, #18783	; 0x495f
    12f8:	49003620 	stmdbmi	r0, {r5, r9, sl, ip, sp}
    12fc:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    1300:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    1304:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1308:	565f5f00 	ldrbpl	r5, [pc], -r0, lsl #30
    130c:	465f5046 	ldrbmi	r5, [pc], -r6, asr #32
    1310:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    1314:	5f5f0031 	svcpl	0x005f0031
    1318:	53414c45 	movtpl	r4, #7237	; 0x1c45
    131c:	52524554 	subspl	r4, r2, #84, 10	; 0x15000000
    1320:	3220524f 	eorcc	r5, r0, #-268435452	; 0xf0000004
    1324:	00303030 	eorseq	r3, r0, r0, lsr r0
    1328:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
    132c:	43415246 	movtmi	r5, #4678	; 0x1246
    1330:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    1334:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1338:	2e302d28 	cdpcs	13, 3, cr2, cr0, cr8, {1}
    133c:	524c4c35 	subpl	r4, ip, #13568	; 0x3500
    1340:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    1344:	29524c4c 	ldmdbcs	r2, {r2, r3, r6, sl, fp, lr}^
    1348:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
    134c:	5f646565 	svcpl	0x00646565
    1350:	64727470 	ldrbtvs	r7, [r2], #-1136	; 0xfffffb90
    1354:	5f666669 	svcpl	0x00666669
    1358:	5f002074 	svcpl	0x00002074
    135c:	656c6966 	strbvs	r6, [ip, #-2406]!	; 0xfffff69a
    1360:	57585400 	ldrbpl	r5, [r8, -r0, lsl #8]
    1364:	5f5f004d 	svcpl	0x005f004d
    1368:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    136c:	5341465f 	movtpl	r4, #5727	; 0x165f
    1370:	5f363154 	svcpl	0x00363154
    1374:	5f58414d 	svcpl	0x0058414d
    1378:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    137c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1380:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1384:	535f0055 	cmppl	pc, #85	; 0x55
    1388:	41425f43 	cmpmi	r2, r3, asr #30
    138c:	45495252 	strbmi	r5, [r9, #-594]	; 0xfffffdae
    1390:	35205352 	strcc	r5, [r0, #-850]!	; 0xfffffcae
    1394:	6f5f0036 	svcvs	0x005f0036
    1398:	78655f6e 	stmdavc	r5!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    139c:	615f7469 	cmpvs	pc, r9, ror #8
    13a0:	00736772 	rsbseq	r6, r3, r2, ror r7
    13a4:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    13a8:	52545054 	subspl	r5, r4, #84	; 0x54
    13ac:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    13b0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    13b4:	66663778 			; <UNDEFINED> instruction: 0x66663778
    13b8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    13bc:	535f0066 	cmppl	pc, #102	; 0x66
    13c0:	555f5359 	ldrbpl	r5, [pc, #-857]	; 106f <__sfputc_r+0x1f>
    13c4:	5453494e 	ldrbpl	r4, [r3], #-2382	; 0xfffff6b2
    13c8:	20485f44 	subcs	r5, r8, r4, asr #30
    13cc:	43535f00 	cmpmi	r3, #0, 30
    13d0:	4d454d5f 	stclmi	13, cr4, [r5, #-380]	; 0xfffffe84
    13d4:	5f59524f 	svcpl	0x0059524f
    13d8:	544f5250 	strbpl	r5, [pc], #-592	; 13e0 <_printf_common+0xe4>
    13dc:	49544345 	ldmdbmi	r4, {r0, r2, r6, r8, r9, lr}^
    13e0:	32204e4f 	eorcc	r4, r0, #1264	; 0x4f0
    13e4:	5f5f0036 	svcpl	0x005f0036
    13e8:	43554e47 	cmpmi	r5, #1136	; 0x470
    13ec:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
    13f0:	4955425f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r9, lr}^
    13f4:	4e49544c 	cdpmi	4, 4, cr5, cr9, cr12, {2}
    13f8:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    13fc:	4e415453 	mcrmi	4, 2, r5, cr1, cr3, {2}
    1400:	20505f54 	subscs	r5, r0, r4, asr pc
    1404:	525f0031 	subspl	r0, pc, #49	; 0x31
    1408:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    140c:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    1410:	76284b43 	strtvc	r4, [r8], -r3, asr #22
    1414:	772c7261 	strvc	r7, [ip, -r1, ror #4]!
    1418:	2c746168 	ldfcse	f6, [r4], #-416	; 0xfffffe60
    141c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    1420:	7a69732c 	bvc	1a5e0d8 <_end+0xa5e0d8>
    1424:	6e692c65 	cdpvs	12, 6, cr2, cr9, cr5, {3}
    1428:	20297469 	eorcs	r7, r9, r9, ror #8
    142c:	7b206f64 	blvc	81d1c4 <heap_size+0x7fd1c4>
    1430:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    1434:	20746375 	rsbscs	r6, r4, r5, ror r3
    1438:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    143c:	2a20746e 	bcs	81e5fc <heap_size+0x7fe5fc>
    1440:	3d20725f 	sfmcc	f7, 4, [r0, #-380]!	; 0xfffffe84
    1444:	61762820 	cmnvs	r6, r0, lsr #16
    1448:	203b2972 	eorscs	r2, fp, r2, ror r9
    144c:	28206669 	stmdacs	r0!, {r0, r3, r5, r6, r9, sl, sp, lr}
    1450:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1454:	74616877 	strbtvc	r6, [r1], #-2167	; 0xfffff789
    1458:	203d3d20 	eorscs	r3, sp, r0, lsr #26
    145c:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    1460:	207b2029 	rsbscs	r2, fp, r9, lsr #32
    1464:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1468:	74616877 	strbtvc	r6, [r1], #-2167	; 0xfffff789
    146c:	28203d20 	stmdacs	r0!, {r5, r8, sl, fp, ip, sp}
    1470:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    1474:	6c616d29 	stclvs	13, cr6, [r1], #-164	; 0xffffff5c
    1478:	28636f6c 	stmdacs	r3!, {r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    147c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    1480:	5f203b29 	svcpl	0x00203b29
    1484:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    1488:	615f746e 	cmpvs	pc, lr, ror #8
    148c:	72657373 	rsbvc	r7, r5, #-872415231	; 0xcc000001
    1490:	725f2874 	subsvc	r2, pc, #116, 16	; 0x740000
    1494:	68773e2d 	ldmdavs	r7!, {r0, r2, r3, r5, r9, sl, fp, ip, sp}^
    1498:	3b297461 	blcc	a5e624 <heap_size+0xa3e624>
    149c:	696e6920 	stmdbvs	lr!, {r5, r8, fp, sp, lr}^
    14a0:	7d203b74 	vstmdbvc	r0!, {d3-<overflow reg d60>}
    14a4:	77207d20 	strvc	r7, [r0, -r0, lsr #26]!
    14a8:	656c6968 	strbvs	r6, [ip, #-2408]!	; 0xfffff698
    14ac:	29302820 	ldmdbcs	r0!, {r5, fp, sp}
    14b0:	79735f00 	ldmdbvc	r3!, {r8, r9, sl, fp, ip, lr}^
    14b4:	656e5f73 	strbvs	r5, [lr, #-3955]!	; 0xfffff08d
    14b8:	49007272 	stmdbmi	r0, {r1, r4, r5, r6, r9, ip, sp, lr}
    14bc:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    14c0:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    14c4:	494d5f34 	stmdbmi	sp, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    14c8:	5f5f004e 	svcpl	0x005f004e
    14cc:	43554e47 	cmpmi	r5, #1136	; 0x470
    14d0:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    14d4:	28514552 	ldmdacs	r1, {r1, r4, r6, r8, sl, lr}^
    14d8:	2c6a616d 	stfcse	f6, [sl], #-436	; 0xfffffe4c
    14dc:	296e696d 	stmdbcs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
    14e0:	5f282820 	svcpl	0x00282820
    14e4:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    14e8:	205f5f43 	subscs	r5, pc, r3, asr #30
    14ec:	31203c3c 			; <UNDEFINED> instruction: 0x31203c3c
    14f0:	2b202936 	blcs	80b9d0 <heap_size+0x7eb9d0>
    14f4:	475f5f20 	ldrbmi	r5, [pc, -r0, lsr #30]
    14f8:	5f43554e 	svcpl	0x0043554e
    14fc:	4f4e494d 	svcmi	0x004e494d
    1500:	205f5f52 	subscs	r5, pc, r2, asr pc	; <UNPREDICTABLE>
    1504:	28203d3e 	stmdacs	r0!, {r1, r2, r3, r4, r5, r8, sl, fp, ip, sp}
    1508:	6a616d28 	bvs	185c9b0 <_end+0x85c9b0>
    150c:	3c3c2029 	ldccc	0, cr2, [ip], #-164	; 0xffffff5c
    1510:	29363120 	ldmdbcs	r6!, {r5, r8, ip, sp}
    1514:	28202b20 	stmdacs	r0!, {r5, r8, r9, fp, sp}
    1518:	296e696d 	stmdbcs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
    151c:	5f5f0029 	svcpl	0x005f0029
    1520:	41524655 	cmpmi	r2, r5, asr r6
    1524:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 1420 <_printf_i+0x30>
    1528:	5f5f4e49 	svcpl	0x005f4e49
    152c:	302e3020 	eorcc	r3, lr, r0, lsr #32
    1530:	45005255 	strmi	r5, [r0, #-597]	; 0xfffffdab
    1534:	4e4e4f43 	cdpmi	15, 4, cr4, cr14, cr3, {2}
    1538:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
    153c:	30312054 	eorscc	r2, r1, r4, asr r0
    1540:	495f0034 	ldmdbmi	pc, {r2, r4, r5}^	; <UNPREDICTABLE>
    1544:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    1548:	5f545f52 	svcpl	0x00545f52
    154c:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    1550:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    1554:	43570020 	cmpmi	r7, #32
    1558:	5f524148 	svcpl	0x00524148
    155c:	2058414d 	subscs	r4, r8, sp, asr #2
    1560:	43575f5f 	cmpmi	r7, #380	; 0x17c
    1564:	5f524148 	svcpl	0x00524148
    1568:	5f58414d 	svcpl	0x0058414d
    156c:	5f5f005f 	svcpl	0x005f005f
    1570:	33544c46 	cmpcc	r4, #17920	; 0x4600
    1574:	485f5832 	ldmdami	pc, {r1, r4, r5, fp, ip, lr}^	; <UNPREDICTABLE>
    1578:	495f5341 	ldmdbmi	pc, {r0, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    157c:	4e49464e 	cdpmi	6, 4, cr4, cr9, cr14, {2}
    1580:	5f595449 	svcpl	0x00595449
    1584:	0031205f 	eorseq	r2, r1, pc, asr r0
    1588:	53454445 	movtpl	r4, #21573	; 0x5445
    158c:	44444154 	strbmi	r4, [r4], #-340	; 0xfffffeac
    1590:	51455252 	cmppl	r5, r2, asr r2
    1594:	31323120 	teqcc	r2, r0, lsr #2
    1598:	59535f00 	ldmdbpl	r3, {r8, r9, sl, fp, ip, lr}^
    159c:	49535f53 	ldmdbmi	r3, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    15a0:	545f455a 	ldrbpl	r4, [pc], #-1370	; 15a8 <_printf_i+0x1b8>
    15a4:	0020485f 	eoreq	r4, r0, pc, asr r8
    15a8:	74726155 	ldrbtvc	r6, [r2], #-341	; 0xfffffeab
    15ac:	49465854 	stmdbmi	r6, {r2, r4, r6, fp, ip, lr}^
    15b0:	75464f46 	strbvc	r4, [r6, #-3910]	; 0xfffff0ba
    15b4:	42286c6c 	eormi	r6, r8, #108, 24	; 0x6c00
    15b8:	41657361 	cmnmi	r5, r1, ror #6
    15bc:	65726464 	ldrbvs	r6, [r2, #-1124]!	; 0xfffffb9c
    15c0:	20297373 	eorcs	r7, r9, r3, ror r3
    15c4:	6f692828 	svcvs	0x00692828
    15c8:	336e695f 	cmncc	lr, #1556480	; 0x17c000
    15cc:	42282832 	eormi	r2, r8, #3276800	; 0x320000
    15d0:	41657361 	cmnmi	r5, r1, ror #6
    15d4:	65726464 	ldrbvs	r6, [r2, #-1124]!	; 0xfffffb9c
    15d8:	20297373 	eorcs	r7, r9, r3, ror r3
    15dc:	4155202b 	cmpmi	r5, fp, lsr #32
    15e0:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    15e4:	464f5f52 			; <UNDEFINED> instruction: 0x464f5f52
    15e8:	54455346 	strbpl	r5, [r5], #-838	; 0xfffffcba
    15ec:	20262029 	eorcs	r2, r6, r9, lsr #32
    15f0:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    15f4:	5f52535f 	svcpl	0x0052535f
    15f8:	55465854 	strbpl	r5, [r6, #-2132]	; 0xfffff7ac
    15fc:	20294c4c 	eorcs	r4, r9, ip, asr #24
    1600:	55203d3d 	strpl	r3, [r0, #-3389]!	; 0xfffff2c3
    1604:	5f545241 	svcpl	0x00545241
    1608:	545f5253 	ldrbpl	r5, [pc], #-595	; 1610 <_printf_i+0x220>
    160c:	4c554658 	mrrcmi	6, 5, r4, r5, cr8
    1610:	5f00294c 	svcpl	0x0000294c
    1614:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
    1618:	745f726f 	ldrbvc	r7, [pc], #-623	; 1620 <_printf_i+0x230>
    161c:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    1620:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    1624:	5f003120 	svcpl	0x00003120
    1628:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    162c:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    1630:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    1634:	5059545f 	subspl	r5, r9, pc, asr r4
    1638:	205f5f45 	subscs	r5, pc, r5, asr #30
    163c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    1640:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    1644:	61686320 	cmnvs	r8, r0, lsr #6
    1648:	535f0072 	cmppl	pc, #114	; 0x72
    164c:	49545f43 	ldmdbmi	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    1650:	5f52454d 	svcpl	0x0052454d
    1654:	2058414d 	subscs	r4, r8, sp, asr #2
    1658:	5f003931 	svcpl	0x00003931
    165c:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    1660:	655f736b 	ldrbvs	r7, [pc, #-875]	; 12fd <_printf_common+0x1>
    1664:	756c6378 	strbvc	r6, [ip, #-888]!	; 0xfffffc88
    1668:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    166c:	2e2e2e28 	cdpcs	14, 2, cr2, cr14, cr8, {1}
    1670:	5f5f2029 	svcpl	0x005f2029
    1674:	6b636f6c 	blvs	18dd42c <_end+0x8dd42c>
    1678:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    167c:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    1680:	78652865 	stmdavc	r5!, {r0, r2, r5, r6, fp, sp}^
    1684:	73756c63 	cmnvc	r5, #25344	; 0x6300
    1688:	5f657669 	svcpl	0x00657669
    168c:	6b636f6c 	blvs	18dd444 <_end+0x8dd444>
    1690:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
    1694:	6f697463 	svcvs	0x00697463
    1698:	5f5f286e 	svcpl	0x005f286e
    169c:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    16a0:	5f534752 	svcpl	0x00534752
    16a4:	0029295f 	eoreq	r2, r9, pc, asr r9
    16a8:	43415f5f 	movtmi	r5, #8031	; 0x1f5f
    16ac:	5f4d5543 	svcpl	0x004d5543
    16b0:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    16b4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    16b8:	54450035 	strbpl	r0, [r5], #-53	; 0xffffffcb
    16bc:	53425458 	movtpl	r5, #9304	; 0x2458
    16c0:	36322059 			; <UNDEFINED> instruction: 0x36322059
    16c4:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    16c8:	5341465f 	movtpl	r4, #5727	; 0x165f
    16cc:	5f323354 	svcpl	0x00323354
    16d0:	004e494d 	subeq	r4, lr, sp, asr #18
    16d4:	72626d5f 	rsbvc	r6, r2, #6080	; 0x17c0
    16d8:	5f6e656c 	svcpl	0x006e656c
    16dc:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    16e0:	535f0065 	cmppl	pc, #101	; 0x65
    16e4:	48545f43 	ldmdami	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    16e8:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
    16ec:	424f525f 	submi	r5, pc, #-268435451	; 0xf0000005
    16f0:	5f545355 	svcpl	0x00545355
    16f4:	4f495250 	svcmi	0x00495250
    16f8:	484e495f 	stmdami	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    16fc:	54495245 	strbpl	r5, [r9], #-581	; 0xfffffdbb
    1700:	32323120 	eorscc	r3, r2, #32, 2
    1704:	52415500 	subpl	r5, r1, #0, 10
    1708:	4f4d5f54 	svcmi	0x004d5f54
    170c:	434d4544 	movtmi	r4, #54596	; 0xd544
    1710:	54525f52 	ldrbpl	r5, [r2], #-3922	; 0xfffff0ae
    1714:	78302053 	ldmdavc	r0!, {r0, r1, r4, r6, sp}
    1718:	30303030 	eorscc	r3, r0, r0, lsr r0
    171c:	32303030 	eorscc	r3, r0, #48	; 0x30
    1720:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1724:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    1728:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    172c:	414d5f34 	cmpmi	sp, r4, lsr pc
    1730:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1734:	66377830 			; <UNDEFINED> instruction: 0x66377830
    1738:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    173c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1740:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1744:	4c4c6666 	mcrrmi	6, 6, r6, ip, cr6
    1748:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    174c:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    1750:	45445f58 	strbmi	r5, [r4, #-3928]	; 0xfffff0a8
    1754:	414d4943 	cmpmi	sp, r3, asr #18
    1758:	49445f4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    175c:	205f5f47 	subscs	r5, pc, r7, asr #30
    1760:	5f003731 	svcpl	0x00003731
    1764:	75736572 	ldrbvc	r6, [r3, #-1394]!	; 0xfffffa8e
    1768:	6b5f746c 	blvs	17de920 <_end+0x7de920>
    176c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1770:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    1774:	41485f58 	cmpmi	r8, r8, asr pc
    1778:	55515f53 	ldrbpl	r5, [r1, #-3923]	; 0xfffff0ad
    177c:	5f544549 	svcpl	0x00544549
    1780:	5f4e414e 	svcpl	0x004e414e
    1784:	0031205f 	eorseq	r2, r1, pc, asr r0
    1788:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    178c:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    1790:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    1794:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    1798:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    179c:	3032322e 	eorscc	r3, r2, lr, lsr #4
    17a0:	30363434 	eorscc	r3, r6, r4, lsr r4
    17a4:	35323934 	ldrcc	r3, [r2, #-2356]!	; 0xfffff6cc
    17a8:	33313330 	teqcc	r1, #48, 6	; 0xc0000000
    17ac:	312d6531 			; <UNDEFINED> instruction: 0x312d6531
    17b0:	32334636 	eorscc	r4, r3, #56623104	; 0x3600000
    17b4:	535f0078 	cmppl	pc, #120	; 0x78
    17b8:	49415f43 	stmdbmi	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    17bc:	494c5f4f 	stmdbmi	ip, {r0, r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    17c0:	4f495453 	svcmi	0x00495453
    17c4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    17c8:	00343320 	eorseq	r3, r4, r0, lsr #6
    17cc:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    17d0:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    17d4:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    17d8:	5058455f 	subspl	r4, r8, pc, asr r5
    17dc:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    17e0:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    17e4:	55002932 	strpl	r2, [r0, #-2354]	; 0xfffff6ce
    17e8:	5f545241 	svcpl	0x00545241
    17ec:	445f5253 	ldrbmi	r5, [pc], #-595	; 17f4 <__svfiscanf_r+0x1cc>
    17f0:	3020534d 	eorcc	r5, r0, sp, asr #6
    17f4:	30303078 	eorscc	r3, r0, r8, ror r0
    17f8:	30323030 	eorscc	r3, r2, r0, lsr r0
    17fc:	5f5f0030 	svcpl	0x005f0030
    1800:	5f544e49 	svcpl	0x00544e49
    1804:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    1808:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    180c:	5f5f4550 	svcpl	0x005f4550
    1810:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    1814:	4f4e5f00 	svcmi	0x004e5f00
    1818:	494c4e49 	stmdbmi	ip, {r0, r3, r6, r9, sl, fp, lr}^
    181c:	5f20454e 	svcpl	0x0020454e
    1820:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    1824:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    1828:	5f5f6574 	svcpl	0x005f6574
    182c:	5f282820 	svcpl	0x00282820
    1830:	696f6e5f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    1834:	6e696c6e 	cdpvs	12, 6, cr6, cr9, cr14, {3}
    1838:	295f5f65 	ldmdbcs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    183c:	5f5f0029 	svcpl	0x005f0029
    1840:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    1844:	5f5f745f 	svcpl	0x005f745f
    1848:	5f5f0020 	svcpl	0x005f0020
    184c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    1850:	5f58414d 	svcpl	0x0058414d
    1854:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    1858:	23206320 			; <UNDEFINED> instruction: 0x23206320
    185c:	4c552023 	mrrcmi	0, 2, r2, r5, cr3
    1860:	4148004c 	cmpmi	r8, ip, asr #32
    1864:	495f4556 	ldmdbmi	pc, {r1, r2, r4, r6, r8, sl, lr}^	; <UNPREDICTABLE>
    1868:	4654494e 	ldrbmi	r4, [r4], -lr, asr #18
    186c:	5f494e49 	svcpl	0x00494e49
    1870:	41525241 	cmpmi	r2, r1, asr #4
    1874:	00312059 	eorseq	r2, r1, r9, asr r0
    1878:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    187c:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
    1880:	494f505f 	stmdbmi	pc, {r0, r1, r2, r3, r4, r6, ip, lr}^	; <UNPREDICTABLE>
    1884:	5245544e 	subpl	r5, r5, #1308622848	; 0x4e000000
    1888:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    188c:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1890:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    1894:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    1898:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    189c:	5f5f4550 	svcpl	0x005f4550
    18a0:	67697320 	strbvs	r7, [r9, -r0, lsr #6]!
    18a4:	2064656e 	rsbcs	r6, r4, lr, ror #10
    18a8:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    18ac:	6f6c5f00 	svcvs	0x006c5f00
    18b0:	746c6163 	strbtvc	r6, [ip], #-355	; 0xfffffe9d
    18b4:	5f656d69 	svcpl	0x00656d69
    18b8:	00667562 	rsbeq	r7, r6, r2, ror #10
    18bc:	5f43535f 	svcpl	0x0043535f
    18c0:	48505641 	ldmdami	r0, {r0, r6, r9, sl, ip, lr}^
    18c4:	505f5359 	subspl	r5, pc, r9, asr r3	; <UNPREDICTABLE>
    18c8:	53454741 	movtpl	r4, #22337	; 0x5741
    18cc:	00323120 	eorseq	r3, r2, r0, lsr #2
    18d0:	5f43535f 	svcpl	0x0043535f
    18d4:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    18d8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    18dc:	00383620 	eorseq	r3, r8, r0, lsr #12
    18e0:	44554142 	ldrbmi	r4, [r5], #-322	; 0xfffffebe
    18e4:	00564944 	subseq	r4, r6, r4, asr #18
    18e8:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    18ec:	495f544e 	ldmdbmi	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    18f0:	5f54494e 	svcpl	0x0054494e
    18f4:	4353494d 	cmpmi	r3, #1261568	; 0x134000
    18f8:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    18fc:	6f642029 	svcvs	0x00642029
    1900:	73207b20 			; <UNDEFINED> instruction: 0x73207b20
    1904:	63757274 	cmnvs	r5, #116, 4	; 0x40000007
    1908:	725f2074 	subsvc	r2, pc, #116	; 0x74
    190c:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    1910:	725f2a20 	subsvc	r2, pc, #32, 20	; 0x20000
    1914:	28203d20 	stmdacs	r0!, {r5, r8, sl, fp, ip, sp}
    1918:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    191c:	725f203b 	subsvc	r2, pc, #59	; 0x3b
    1920:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 1874 <__svfiscanf_r+0x24c>
    1924:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    1928:	74735f3e 	ldrbtvc	r5, [r3], #-3902	; 0xfffff0c2
    192c:	6b6f7472 	blvs	1bdeafc <_end+0xbdeafc>
    1930:	73616c5f 	cmnvc	r1, #24320	; 0x5f00
    1934:	203d2074 	eorscs	r2, sp, r4, ror r0
    1938:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    193c:	5f203b4c 	svcpl	0x00203b4c
    1940:	5f3e2d72 	svcpl	0x003e2d72
    1944:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    1948:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 189c <__svfiscanf_r+0x274>
    194c:	6e656c62 	cdpvs	12, 6, cr6, cr5, cr2, {3}
    1950:	6174735f 	cmnvs	r4, pc, asr r3
    1954:	5f2e6574 	svcpl	0x002e6574
    1958:	756f635f 	strbvc	r6, [pc, #-863]!	; 1601 <_printf_i+0x211>
    195c:	3d20746e 	cfstrscc	mvf7, [r0, #-440]!	; 0xfffffe48
    1960:	203b3020 	eorscs	r3, fp, r0, lsr #32
    1964:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1968:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    196c:	5f3e2d63 	svcpl	0x003e2d63
    1970:	656c626d 	strbvs	r6, [ip, #-621]!	; 0xfffffd93
    1974:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xfffff092
    1978:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
    197c:	61765f5f 	cmnvs	r6, pc, asr pc
    1980:	2e65756c 	cdpcs	5, 6, cr7, cr5, cr12, {3}
    1984:	63775f5f 	cmnvs	r7, #380	; 0x17c
    1988:	203d2068 	eorscs	r2, sp, r8, rrx
    198c:	5f203b30 	svcpl	0x00203b30
    1990:	5f3e2d72 	svcpl	0x003e2d72
    1994:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    1998:	775f3e2d 	ldrbvc	r3, [pc, -sp, lsr #28]
    199c:	6d6f7463 	cfstrdvs	mvd7, [pc, #-396]!	; 1818 <__svfiscanf_r+0x1f0>
    19a0:	74735f62 	ldrbtvc	r5, [r3], #-3938	; 0xfffff09e
    19a4:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
    19a8:	6f635f5f 	svcvs	0x00635f5f
    19ac:	20746e75 	rsbscs	r6, r4, r5, ror lr
    19b0:	3b30203d 	blcc	c09aac <heap_size+0xbe9aac>
    19b4:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    19b8:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    19bc:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    19c0:	7463775f 	strbtvc	r7, [r3], #-1887	; 0xfffff8a1
    19c4:	5f626d6f 	svcpl	0x00626d6f
    19c8:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    19cc:	5f5f2e65 	svcpl	0x005f2e65
    19d0:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    19d4:	5f5f2e65 	svcpl	0x005f2e65
    19d8:	20686377 	rsbcs	r6, r8, r7, ror r3
    19dc:	3b30203d 	blcc	c09ad8 <heap_size+0xbe9ad8>
    19e0:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    19e4:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    19e8:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    19ec:	74626d5f 	strbtvc	r6, [r2], #-3423	; 0xfffff2a1
    19f0:	5f63776f 	svcpl	0x0063776f
    19f4:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    19f8:	5f5f2e65 	svcpl	0x005f2e65
    19fc:	6e756f63 	cdpvs	15, 7, cr6, cr5, cr3, {3}
    1a00:	203d2074 	eorscs	r2, sp, r4, ror r0
    1a04:	5f203b30 	svcpl	0x00203b30
    1a08:	5f3e2d72 	svcpl	0x003e2d72
    1a0c:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    1a10:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 1964 <_vfiscanf_r+0x30>
    1a14:	776f7462 	strbvc	r7, [pc, -r2, ror #8]!
    1a18:	74735f63 	ldrbtvc	r5, [r3], #-3939	; 0xfffff09d
    1a1c:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
    1a20:	61765f5f 	cmnvs	r6, pc, asr pc
    1a24:	2e65756c 	cdpcs	5, 6, cr7, cr5, cr12, {3}
    1a28:	63775f5f 	cmnvs	r7, #380	; 0x17c
    1a2c:	203d2068 	eorscs	r2, sp, r8, rrx
    1a30:	5f203b30 	svcpl	0x00203b30
    1a34:	5f3e2d72 	svcpl	0x003e2d72
    1a38:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    1a3c:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 1990 <_scanf_chars+0xc>
    1a40:	656c7262 	strbvs	r7, [ip, #-610]!	; 0xfffffd9e
    1a44:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xfffff092
    1a48:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
    1a4c:	6f635f5f 	svcvs	0x00635f5f
    1a50:	20746e75 	rsbscs	r6, r4, r5, ror lr
    1a54:	3b30203d 	blcc	c09b50 <heap_size+0xbe9b50>
    1a58:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    1a5c:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1a60:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    1a64:	72626d5f 	rsbvc	r6, r2, #6080	; 0x17c0
    1a68:	5f6e656c 	svcpl	0x006e656c
    1a6c:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    1a70:	5f5f2e65 	svcpl	0x005f2e65
    1a74:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    1a78:	5f5f2e65 	svcpl	0x005f2e65
    1a7c:	20686377 	rsbcs	r6, r8, r7, ror r3
    1a80:	3b30203d 	blcc	c09b7c <heap_size+0xbe9b7c>
    1a84:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    1a88:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1a8c:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    1a90:	72626d5f 	rsbvc	r6, r2, #6080	; 0x17c0
    1a94:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
    1a98:	6174735f 	cmnvs	r4, pc, asr r3
    1a9c:	5f2e6574 	svcpl	0x002e6574
    1aa0:	756f635f 	strbvc	r6, [pc, #-863]!	; 1749 <__svfiscanf_r+0x121>
    1aa4:	3d20746e 	cfstrscc	mvf7, [r0, #-440]!	; 0xfffffe48
    1aa8:	203b3020 	eorscs	r3, fp, r0, lsr #32
    1aac:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1ab0:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    1ab4:	5f3e2d63 	svcpl	0x003e2d63
    1ab8:	7472626d 	ldrbtvc	r6, [r2], #-621	; 0xfffffd93
    1abc:	5f63776f 	svcpl	0x0063776f
    1ac0:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    1ac4:	5f5f2e65 	svcpl	0x005f2e65
    1ac8:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    1acc:	5f5f2e65 	svcpl	0x005f2e65
    1ad0:	20686377 	rsbcs	r6, r8, r7, ror r3
    1ad4:	3b30203d 	blcc	c09bd0 <heap_size+0xbe9bd0>
    1ad8:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    1adc:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1ae0:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    1ae4:	73626d5f 	cmnvc	r2, #6080	; 0x17c0
    1ae8:	776f7472 			; <UNDEFINED> instruction: 0x776f7472
    1aec:	735f7363 	cmpvc	pc, #-1946157055	; 0x8c000001
    1af0:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    1af4:	635f5f2e 	cmpvs	pc, #46, 30	; 0xb8
    1af8:	746e756f 	strbtvc	r7, [lr], #-1391	; 0xfffffa91
    1afc:	30203d20 	eorcc	r3, r0, r0, lsr #26
    1b00:	725f203b 	subsvc	r2, pc, #59	; 0x3b
    1b04:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 1a58 <_scanf_i+0x18>
    1b08:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    1b0c:	626d5f3e 	rsbvs	r5, sp, #62, 30	; 0xf8
    1b10:	6f747273 	svcvs	0x00747273
    1b14:	5f736377 	svcpl	0x00736377
    1b18:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    1b1c:	5f5f2e65 	svcpl	0x005f2e65
    1b20:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    1b24:	5f5f2e65 	svcpl	0x005f2e65
    1b28:	20686377 	rsbcs	r6, r8, r7, ror r3
    1b2c:	3b30203d 	blcc	c09c28 <heap_size+0xbe9c28>
    1b30:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    1b34:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1b38:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    1b3c:	7263775f 	rsbvc	r7, r3, #24903680	; 0x17c0000
    1b40:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
    1b44:	6174735f 	cmnvs	r4, pc, asr r3
    1b48:	5f2e6574 	svcpl	0x002e6574
    1b4c:	756f635f 	strbvc	r6, [pc, #-863]!	; 17f5 <__svfiscanf_r+0x1cd>
    1b50:	3d20746e 	cfstrscc	mvf7, [r0, #-440]!	; 0xfffffe48
    1b54:	203b3020 	eorscs	r3, fp, r0, lsr #32
    1b58:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1b5c:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    1b60:	5f3e2d63 	svcpl	0x003e2d63
    1b64:	74726377 	ldrbtvc	r6, [r2], #-887	; 0xfffffc89
    1b68:	5f626d6f 	svcpl	0x00626d6f
    1b6c:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    1b70:	5f5f2e65 	svcpl	0x005f2e65
    1b74:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    1b78:	5f5f2e65 	svcpl	0x005f2e65
    1b7c:	20686377 	rsbcs	r6, r8, r7, ror r3
    1b80:	3b30203d 	blcc	c09c7c <heap_size+0xbe9c7c>
    1b84:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    1b88:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1b8c:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    1b90:	7363775f 	cmnvc	r3, #24903680	; 0x17c0000
    1b94:	6d6f7472 	cfstrdvs	mvd7, [pc, #-456]!	; 19d4 <_scanf_chars+0x50>
    1b98:	735f7362 	cmpvc	pc, #-2013265919	; 0x88000001
    1b9c:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    1ba0:	635f5f2e 	cmpvs	pc, #46, 30	; 0xb8
    1ba4:	746e756f 	strbtvc	r7, [lr], #-1391	; 0xfffffa91
    1ba8:	30203d20 	eorcc	r3, r0, r0, lsr #26
    1bac:	725f203b 	subsvc	r2, pc, #59	; 0x3b
    1bb0:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 1b04 <_scanf_i+0xc4>
    1bb4:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    1bb8:	63775f3e 	cmnvs	r7, #62, 30	; 0xf8
    1bbc:	6f747273 	svcvs	0x00747273
    1bc0:	5f73626d 	svcpl	0x0073626d
    1bc4:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    1bc8:	5f5f2e65 	svcpl	0x005f2e65
    1bcc:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    1bd0:	5f5f2e65 	svcpl	0x005f2e65
    1bd4:	20686377 	rsbcs	r6, r8, r7, ror r3
    1bd8:	3b30203d 	blcc	c09cd4 <heap_size+0xbe9cd4>
    1bdc:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    1be0:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1be4:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    1be8:	34366c5f 	ldrtcc	r6, [r6], #-3167	; 0xfffff3a1
    1bec:	75625f61 	strbvc	r5, [r2, #-3937]!	; 0xfffff09f
    1bf0:	5d305b66 	vldmdbpl	r0!, {d5-<overflow reg d55>}
    1bf4:	27203d20 	strcs	r3, [r0, -r0, lsr #26]!
    1bf8:	3b27305c 	blcc	9cdd70 <heap_size+0x9add70>
    1bfc:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    1c00:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1c04:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    1c08:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
    1c0c:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0xfffffe9c
    1c10:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
    1c14:	30203d20 	eorcc	r3, r0, r0, lsr #26
    1c18:	207d203b 	rsbscs	r2, sp, fp, lsr r0
    1c1c:	6c696877 	stclvs	8, cr6, [r9], #-476	; 0xfffffe24
    1c20:	30282065 	eorcc	r2, r8, r5, rrx
    1c24:	5f5f0029 	svcpl	0x005f0029
    1c28:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    1c2c:	745f3436 	ldrbvc	r3, [pc], #-1078	; 1c34 <_read_r+0x8>
    1c30:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    1c34:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    1c38:	55003120 	strpl	r3, [r0, #-288]	; 0xfffffee0
    1c3c:	5f544e49 	svcpl	0x00544e49
    1c40:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    1c44:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 1b74 <_scanf_i+0x134>
    1c48:	5f005841 	svcpl	0x00005841
    1c4c:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    1c50:	4f454e5f 	svcmi	0x00454e5f
    1c54:	005f5f4e 	subseq	r5, pc, lr, asr #30
    1c58:	31544e49 	cmpcc	r4, r9, asr #28
    1c5c:	414d5f36 	cmpmi	sp, r6, lsr pc
    1c60:	5f5f2058 	svcpl	0x005f2058
    1c64:	31544e49 	cmpcc	r4, r9, asr #28
    1c68:	414d5f36 	cmpmi	sp, r6, lsr pc
    1c6c:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1c70:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1c74:	5f323354 	svcpl	0x00323354
    1c78:	5f58414d 	svcpl	0x0058414d
    1c7c:	5f505845 	svcpl	0x00505845
    1c80:	3231205f 	eorscc	r2, r1, #95	; 0x5f
    1c84:	49550038 	ldmdbmi	r5, {r3, r4, r5}^
    1c88:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    1c8c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    1c90:	414d5f38 	cmpmi	sp, r8, lsr pc
    1c94:	5f5f2058 	svcpl	0x005f2058
    1c98:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    1c9c:	41454c5f 	cmpmi	r5, pc, asr ip
    1ca0:	5f385453 	svcpl	0x00385453
    1ca4:	5f58414d 	svcpl	0x0058414d
    1ca8:	5f5f005f 	svcpl	0x005f005f
    1cac:	465f4154 			; <UNDEFINED> instruction: 0x465f4154
    1cb0:	5f544942 	svcpl	0x00544942
    1cb4:	3336205f 	teqcc	r6, #95	; 0x5f
    1cb8:	545f5f00 	ldrbpl	r5, [pc], #-3840	; 1cc0 <_reclaim_reent+0x54>
    1cbc:	424d5548 	submi	r5, sp, #72, 10	; 0x12000000
    1cc0:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1cc4:	4f575245 	svcmi	0x00575245
    1cc8:	5f5f4b52 	svcpl	0x005f4b52
    1ccc:	5f003120 	svcpl	0x00003120
    1cd0:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    1cd4:	43415246 	movtmi	r5, #4678	; 0x1246
    1cd8:	414d5f54 	cmpmi	sp, r4, asr pc
    1cdc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1ce0:	46465830 			; <UNDEFINED> instruction: 0x46465830
    1ce4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1ce8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1cec:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1cf0:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    1cf4:	4c553436 	cfldrdmi	mvd3, [r5], {54}	; 0x36
    1cf8:	5f00524c 	svcpl	0x0000524c
    1cfc:	79746e66 	ldmdbvc	r4!, {r1, r2, r5, r6, r9, sl, fp, sp, lr}^
    1d00:	00736570 	rsbseq	r6, r3, r0, ror r5
    1d04:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    1d08:	5f52535f 	svcpl	0x0052535f
    1d0c:	4d415246 	sfmmi	f5, 2, [r1, #-280]	; 0xfffffee8
    1d10:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
    1d14:	30303030 	eorscc	r3, r0, r0, lsr r0
    1d18:	30343030 	eorscc	r3, r4, r0, lsr r0
    1d1c:	635f5f00 	cmpvs	pc, #0, 30
    1d20:	74736e6f 	ldrbtvc	r6, [r3], #-3695	; 0xfffff191
    1d24:	6e6f6320 	cdpvs	3, 6, cr6, cr15, cr0, {1}
    1d28:	5f007473 	svcpl	0x00007473
    1d2c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    1d30:	445f545f 	ldrbmi	r5, [pc], #-1119	; 1d38 <__srefill_r>
    1d34:	414c4345 	cmpmi	ip, r5, asr #6
    1d38:	20444552 	subcs	r4, r4, r2, asr r5
    1d3c:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
    1d40:	72657355 	rsbvc	r7, r5, #1409286145	; 0x54000001
    1d44:	614d5c73 	hvcvs	54723	; 0xd5c3
    1d48:	445c6372 	ldrbmi	r6, [ip], #-882	; 0xfffffc8e
    1d4c:	6c6e776f 	stclvs	7, cr7, [lr], #-444	; 0xfffffe44
    1d50:	7364616f 	cmnvc	r4, #-1073741797	; 0xc000001b
    1d54:	2d31305c 	ldccs	0, cr3, [r1, #-368]!	; 0xfffffe90
    1d58:	6d617865 	stclvs	8, cr7, [r1, #-404]!	; 0xfffffe6c
    1d5c:	73656c70 	cmnvc	r5, #112, 24	; 0x7000
    1d60:	2d31305c 	ldccs	0, cr3, [r1, #-368]!	; 0xfffffe90
    1d64:	6d617865 	stclvs	8, cr7, [r1, #-404]!	; 0xfffffe6c
    1d68:	73656c70 	cmnvc	r5, #112, 24	; 0x7000
    1d6c:	6972705c 	ldmdbvs	r2!, {r2, r3, r4, r6, ip, sp, lr}^
    1d70:	5f66746e 	svcpl	0x0066746e
    1d74:	554d4551 	strbpl	r4, [sp, #-1361]	; 0xfffffaaf
    1d78:	435f5f00 	cmpmi	pc, #0, 30
    1d7c:	33524148 	cmpcc	r2, #72, 2
    1d80:	59545f32 	ldmdbpl	r4, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    1d84:	5f5f4550 	svcpl	0x005f4550
    1d88:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    1d8c:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
    1d90:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    1d94:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    1d98:	5300746e 	movwpl	r7, #1134	; 0x46e
    1d9c:	415f4749 	cmpmi	pc, r9, asr #14
    1da0:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    1da4:	494d5f43 	stmdbmi	sp, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    1da8:	5f5f004e 	svcpl	0x005f004e
    1dac:	5f4d5241 	svcpl	0x004d5241
    1db0:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    1db4:	5f455255 	svcpl	0x00455255
    1db8:	36315046 	ldrtcc	r5, [r1], -r6, asr #32
    1dbc:	4345565f 	movtmi	r5, #22111	; 0x565f
    1dc0:	5f524f54 	svcpl	0x00524f54
    1dc4:	54495241 	strbpl	r5, [r9], #-577	; 0xfffffdbf
    1dc8:	54454d48 	strbpl	r4, [r5], #-3400	; 0xfffff2b8
    1dcc:	55004349 	strpl	r4, [r0, #-841]	; 0xfffffcb7
    1dd0:	33544e49 	cmpcc	r4, #1168	; 0x490
    1dd4:	28435f32 	stmdacs	r3, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    1dd8:	5f202963 	svcpl	0x00202963
    1ddc:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    1de0:	5f323354 	svcpl	0x00323354
    1de4:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    1de8:	435f5f00 	cmpmi	pc, #0, 30
    1dec:	55535f43 	ldrbpl	r5, [r3, #-3907]	; 0xfffff0bd
    1df0:	524f5050 	subpl	r5, pc, #80	; 0x50
    1df4:	445f5354 	ldrbmi	r5, [pc], #-852	; 1dfc <__srefill_r+0xc4>
    1df8:	4d414e59 	stclmi	14, cr4, [r1, #-356]	; 0xfffffe9c
    1dfc:	415f4349 	cmpmi	pc, r9, asr #6
    1e00:	59415252 	stmdbpl	r1, {r1, r4, r6, r9, ip, lr}^
    1e04:	494e495f 	stmdbmi	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1e08:	00312054 	eorseq	r2, r1, r4, asr r0
    1e0c:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1e10:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    1e14:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    1e18:	414d5f32 	cmpmi	sp, r2, lsr pc
    1e1c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1e20:	66667830 			; <UNDEFINED> instruction: 0x66667830
    1e24:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1e28:	00556666 	subseq	r6, r5, r6, ror #12
    1e2c:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
    1e30:	6e6f6d5f 	mcrvs	13, 3, r6, cr15, cr15, {2}
    1e34:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1e38:	4d5f544c 	cfldrdmi	mvd5, [pc, #-304]	; 1d10 <_reclaim_reent+0xa4>
    1e3c:	455f5841 	ldrbmi	r5, [pc, #-2113]	; 1603 <_printf_i+0x213>
    1e40:	5f5f5058 	svcpl	0x005f5058
    1e44:	38323120 	ldmdacc	r2!, {r5, r8, ip, sp}
    1e48:	505f5f00 	subspl	r5, pc, r0, lsl #30
    1e4c:	6f727028 	svcvs	0x00727028
    1e50:	29736f74 	ldmdbcs	r3!, {r2, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
    1e54:	6f727020 	svcvs	0x00727020
    1e58:	00736f74 	rsbseq	r6, r3, r4, ror pc
    1e5c:	74735f5f 	ldrbtvc	r5, [r3], #-3935	; 0xfffff0a1
    1e60:	6f6d6672 	svcvs	0x006d6672
    1e64:	6b696c6e 	blvs	1a5d024 <_end+0xa5d024>
    1e68:	6d662865 	stclvs	8, cr2, [r6, #-404]!	; 0xfffffe6c
    1e6c:	67726174 			; <UNDEFINED> instruction: 0x67726174
    1e70:	7269662c 	rsbvc	r6, r9, #44, 12	; 0x2c00000
    1e74:	61767473 	cmnvs	r6, r3, ror r4
    1e78:	67726172 			; <UNDEFINED> instruction: 0x67726172
    1e7c:	5f5f2029 	svcpl	0x005f2029
    1e80:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    1e84:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    1e88:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1e8c:	665f5f28 	ldrbvs	r5, [pc], -r8, lsr #30
    1e90:	616d726f 	cmnvs	sp, pc, ror #4
    1e94:	205f5f74 	subscs	r5, pc, r4, ror pc	; <UNPREDICTABLE>
    1e98:	735f5f28 	cmpvc	pc, #40, 30	; 0xa0
    1e9c:	6d667274 	sfmvs	f7, 2, [r6, #-464]!	; 0xfffffe30
    1ea0:	5f5f6e6f 	svcpl	0x005f6e6f
    1ea4:	6d66202c 	stclvs	0, cr2, [r6, #-176]!	; 0xffffff50
    1ea8:	67726174 			; <UNDEFINED> instruction: 0x67726174
    1eac:	6966202c 	stmdbvs	r6!, {r2, r3, r5, sp}^
    1eb0:	76747372 			; <UNDEFINED> instruction: 0x76747372
    1eb4:	72617261 	rsbvc	r7, r1, #268435462	; 0x10000006
    1eb8:	29292967 	stmdbcs	r9!, {r0, r1, r2, r5, r6, r8, fp, sp}
    1ebc:	45455300 	strbmi	r5, [r5, #-768]	; 0xfffffd00
    1ec0:	55435f4b 	strbpl	r5, [r3, #-3915]	; 0xfffff0b5
    1ec4:	00312052 	eorseq	r2, r1, r2, asr r0
    1ec8:	4145525f 	cmpmi	r5, pc, asr r2
    1ecc:	52575f44 	subspl	r5, r7, #68, 30	; 0x110
    1ed0:	5f455449 	svcpl	0x00455449
    1ed4:	53465542 	movtpl	r5, #25922	; 0x6542
    1ed8:	5f455a49 	svcpl	0x00455a49
    1edc:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    1ee0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    1ee4:	4f4e4500 	svcmi	0x004e4500
    1ee8:	504d4554 	subpl	r4, sp, r4, asr r5
    1eec:	39205954 	stmdbcc	r0!, {r2, r4, r6, r8, fp, ip, lr}
    1ef0:	5f5f0030 	svcpl	0x005f0030
    1ef4:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    1ef8:	445f464f 	ldrbmi	r4, [pc], #-1615	; 1f00 <_strtol_l.isra.0+0x4e>
    1efc:	4c42554f 	cfstr64mi	mvdx5, [r2], {79}	; 0x4f
    1f00:	205f5f45 	subscs	r5, pc, r5, asr #30
    1f04:	5f5f0038 	svcpl	0x005f0038
    1f08:	5f544e49 	svcpl	0x00544e49
    1f0c:	5341454c 	movtpl	r4, #5452	; 0x154c
    1f10:	5f323354 	svcpl	0x00323354
    1f14:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    1f18:	205f5f48 	subscs	r5, pc, r8, asr #30
    1f1c:	5f003233 	svcpl	0x00003233
    1f20:	434f4c43 	movtmi	r4, #64579	; 0xfc43
    1f24:	5f545f4b 	svcpl	0x00545f4b
    1f28:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    1f2c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    1f30:	6f6c2064 	svcvs	0x006c2064
    1f34:	5f00676e 	svcpl	0x0000676e
    1f38:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    1f3c:	5f583233 	svcpl	0x00583233
    1f40:	5f4e494d 	svcpl	0x004e494d
    1f44:	5f505845 	svcpl	0x00505845
    1f48:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    1f4c:	31323031 	teqcc	r2, r1, lsr r0
    1f50:	4e450029 	cdpmi	0, 4, cr0, cr5, cr9, {1}
    1f54:	5254534f 	subspl	r5, r4, #1006632961	; 0x3c000001
    1f58:	00303620 	eorseq	r3, r0, r0, lsr #12
    1f5c:	5f43535f 	svcpl	0x0043535f
    1f60:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    1f64:	445f4441 	ldrbmi	r4, [pc], #-1089	; 1f6c <_strtol_l.isra.0+0xba>
    1f68:	52545345 	subspl	r5, r4, #335544321	; 0x14000001
    1f6c:	4f544355 	svcmi	0x00544355
    1f70:	54495f52 	strbpl	r5, [r9], #-3922	; 0xfffff0ae
    1f74:	54415245 	strbpl	r5, [r1], #-581	; 0xfffffdbb
    1f78:	534e4f49 	movtpl	r4, #61257	; 0xef49
    1f7c:	00333520 	eorseq	r3, r3, r0, lsr #10
    1f80:	5f43535f 	svcpl	0x0043535f
    1f84:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    1f88:	20534441 	subscs	r4, r3, r1, asr #8
    1f8c:	5a003234 	bpl	e864 <__bss_end__+0xb57c>
    1f90:	37716e79 			; <UNDEFINED> instruction: 0x37716e79
    1f94:	5f303030 	svcpl	0x00303030
    1f98:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    1f9c:	4e45535f 	mcrmi	3, 2, r5, cr5, cr15, {2}
    1fa0:	41484344 	cmpmi	r8, r4, asr #6
    1fa4:	535f0052 	cmppl	pc, #82	; 0x52
    1fa8:	49545f43 	ldmdbmi	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    1fac:	5352454d 	cmppl	r2, #322961408	; 0x13400000
    1fb0:	00333320 	eorseq	r3, r3, r0, lsr #6
    1fb4:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    1fb8:	65725f63 	ldrbvs	r5, [r2, #-3939]!	; 0xfffff09d
    1fbc:	00746e65 	rsbseq	r6, r4, r5, ror #28
    1fc0:	414c5f5f 	cmpmi	ip, pc, asr pc
    1fc4:	46454752 			; <UNDEFINED> instruction: 0x46454752
    1fc8:	5f454c49 	svcpl	0x00454c49
    1fcc:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    1fd0:	20454c42 	subcs	r4, r5, r2, asr #24
    1fd4:	5f5f0030 	svcpl	0x005f0030
    1fd8:	36434544 	strbcc	r4, [r3], -r4, asr #10
    1fdc:	414d5f34 	cmpmi	sp, r4, lsr pc
    1fe0:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1fe4:	39392e39 	ldmdbcc	r9!, {r0, r3, r4, r5, r9, sl, fp, sp}
    1fe8:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1fec:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1ff0:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    1ff4:	38334539 	ldmdacc	r3!, {r0, r3, r4, r5, r8, sl, lr}
    1ff8:	00444434 	subeq	r4, r4, r4, lsr r4
    1ffc:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    2000:	495f544e 	ldmdbmi	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    2004:	5f54494e 	svcpl	0x0054494e
    2008:	5f525450 	svcpl	0x00525450
    200c:	4f52455a 	svcmi	0x0052455a
    2010:	76284445 	strtvc	r4, [r8], -r5, asr #8
    2014:	20297261 	eorcs	r7, r9, r1, ror #4
    2018:	7628207b 			; <UNDEFINED> instruction: 0x7628207b
    201c:	2d297261 	sfmcs	f7, 4, [r9, #-388]!	; 0xfffffe7c
    2020:	74735f3e 	ldrbtvc	r5, [r3], #-3902	; 0xfffff0c2
    2024:	206e6964 	rsbcs	r6, lr, r4, ror #18
    2028:	5f28203d 	svcpl	0x0028203d
    202c:	4c49465f 	mcrrmi	6, 5, r4, r9, cr15
    2030:	292a2045 	stmdbcs	sl!, {r0, r2, r6, sp}
    2034:	735f5f26 	cmpvc	pc, #38, 30	; 0x98
    2038:	61665f66 	cmnvs	r6, r6, ror #30
    203c:	735f656b 	cmpvc	pc, #448790528	; 0x1ac00000
    2040:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
    2044:	7628203b 			; <UNDEFINED> instruction: 0x7628203b
    2048:	2d297261 	sfmcs	f7, 4, [r9, #-388]!	; 0xfffffe7c
    204c:	74735f3e 	ldrbtvc	r5, [r3], #-3902	; 0xfffff0c2
    2050:	74756f64 	ldrbtvc	r6, [r5], #-3940	; 0xfffff09c
    2054:	28203d20 	stmdacs	r0!, {r5, r8, sl, fp, ip, sp}
    2058:	49465f5f 	stmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    205c:	2a20454c 	bcs	813594 <heap_size+0x7f3594>
    2060:	5f5f2629 	svcpl	0x005f2629
    2064:	665f6673 			; <UNDEFINED> instruction: 0x665f6673
    2068:	5f656b61 	svcpl	0x00656b61
    206c:	6f647473 	svcvs	0x00647473
    2070:	203b7475 	eorscs	r7, fp, r5, ror r4
    2074:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    2078:	5f3e2d29 	svcpl	0x003e2d29
    207c:	65647473 	strbvs	r7, [r4, #-1139]!	; 0xfffffb8d
    2080:	3d207272 	sfmcc	f7, 4, [r0, #-456]!	; 0xfffffe38
    2084:	5f5f2820 	svcpl	0x005f2820
    2088:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    208c:	26292a20 	strtcs	r2, [r9], -r0, lsr #20
    2090:	66735f5f 	uhsaxvs	r5, r3, pc	; <UNPREDICTABLE>
    2094:	6b61665f 	blvs	185ba18 <_end+0x85ba18>
    2098:	74735f65 	ldrbtvc	r5, [r3], #-3941	; 0xfffff09b
    209c:	72726564 	rsbsvc	r6, r2, #100, 10	; 0x19000000
    20a0:	007d203b 	rsbseq	r2, sp, fp, lsr r0
    20a4:	454e5f5f 	strbmi	r5, [lr, #-3935]	; 0xfffff0a1
    20a8:	42494c57 	submi	r4, r9, #22272	; 0x5700
    20ac:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    20b0:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    20b4:	5f544e45 	svcpl	0x00544e45
    20b8:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    20bc:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    20c0:	207b2029 	rsbscs	r2, fp, r9, lsr #32
    20c4:	28202c30 	stmdacs	r0!, {r4, r5, sl, fp, sp}
    20c8:	49465f5f 	stmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    20cc:	2a20454c 	bcs	813604 <heap_size+0x7f3604>
    20d0:	5f5f2629 	svcpl	0x005f2629
    20d4:	665f6673 			; <UNDEFINED> instruction: 0x665f6673
    20d8:	5f656b61 	svcpl	0x00656b61
    20dc:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    20e0:	28202c6e 	stmdacs	r0!, {r1, r2, r3, r5, r6, sl, fp, sp}
    20e4:	49465f5f 	stmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    20e8:	2a20454c 	bcs	813620 <heap_size+0x7f3620>
    20ec:	5f5f2629 	svcpl	0x005f2629
    20f0:	665f6673 			; <UNDEFINED> instruction: 0x665f6673
    20f4:	5f656b61 	svcpl	0x00656b61
    20f8:	6f647473 	svcvs	0x00647473
    20fc:	202c7475 	eorcs	r7, ip, r5, ror r4
    2100:	465f5f28 	ldrbmi	r5, [pc], -r8, lsr #30
    2104:	20454c49 	subcs	r4, r5, r9, asr #24
    2108:	5f26292a 	svcpl	0x0026292a
    210c:	5f66735f 	svcpl	0x0066735f
    2110:	656b6166 	strbvs	r6, [fp, #-358]!	; 0xfffffe9a
    2114:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    2118:	2c727265 	lfmcs	f7, 2, [r2], #-404	; 0xfffffe6c
    211c:	202c3020 	eorcs	r3, ip, r0, lsr #32
    2120:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    2124:	30202c4c 	eorcc	r2, r0, ip, asr #24
    2128:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    212c:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    2130:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    2134:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    2138:	5f202c4c 	svcpl	0x00202c4c
    213c:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    2140:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    2144:	202c3020 	eorcs	r3, ip, r0, lsr #32
    2148:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    214c:	5f202c4c 	svcpl	0x00202c4c
    2150:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    2154:	4e5f202c 	cdpmi	0, 5, cr2, cr15, cr12, {1}
    2158:	2c4c4c55 	mcrrcs	12, 5, r4, ip, cr5
    215c:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    2160:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    2164:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    2168:	5f202c4c 	svcpl	0x00202c4c
    216c:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    2170:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
    2174:	415f5449 	cmpmi	pc, r9, asr #8
    2178:	49584554 	ldmdbmi	r8, {r2, r4, r6, r8, sl, lr}^
    217c:	5f7b2054 	svcpl	0x007b2054
    2180:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    2184:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    2188:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    218c:	2c7d4c4c 	ldclcs	12, cr4, [sp], #-304	; 0xfffffed0
    2190:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    2194:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    2198:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    219c:	5f202c4c 	svcpl	0x00202c4c
    21a0:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    21a4:	5f007d20 	svcpl	0x00007d20
    21a8:	4343535f 	movtmi	r5, #13151	; 0x335f
    21ac:	28444953 	stmdacs	r4, {r0, r1, r4, r6, r8, fp, lr}^
    21b0:	73202973 			; <UNDEFINED> instruction: 0x73202973
    21b4:	63757274 	cmnvs	r5, #116, 4	; 0x40000007
    21b8:	5f5f2074 	svcpl	0x005f2074
    21bc:	6b636168 	blvs	18da764 <_end+0x8da764>
    21c0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 12c8 <_vfiprintf_r+0x20c>
    21c4:	465f4154 			; <UNDEFINED> instruction: 0x465f4154
    21c8:	5f544942 	svcpl	0x00544942
    21cc:	3436205f 	ldrtcc	r2, [r6], #-95	; 0xffffffa1
    21d0:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    21d4:	435f4f53 	cmpmi	pc, #332	; 0x14c
    21d8:	5349565f 	movtpl	r5, #38495	; 0x965f
    21dc:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    21e0:	39393120 	ldmdbcc	r9!, {r5, r8, ip, sp}
    21e4:	49550039 	ldmdbmi	r5, {r0, r3, r4, r5}^
    21e8:	414d544e 	cmpmi	sp, lr, asr #8
    21ec:	414d5f58 	cmpmi	sp, r8, asr pc
    21f0:	4e450058 	mcrmi	0, 2, r0, cr5, cr8, {2}
    21f4:	4350534f 	cmpmi	r0, #1006632961	; 0x3c000001
    21f8:	00383220 	eorseq	r3, r8, r0, lsr #4
    21fc:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2200:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    2204:	414d4943 	cmpmi	sp, r3, asr #18
    2208:	49445f4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    220c:	205f5f47 	subscs	r5, pc, r7, asr #30
    2210:	52450039 	subpl	r0, r5, #57	; 0x39
    2214:	2053464f 	subscs	r4, r3, pc, asr #12
    2218:	49003033 	stmdbmi	r0, {r0, r1, r4, r5, ip, sp}
    221c:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    2220:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2224:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2228:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    222c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2230:	5f005f5f 	svcpl	0x00005f5f
    2234:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2238:	41454c5f 	cmpmi	r5, pc, asr ip
    223c:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    2240:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2244:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2248:	66663778 			; <UNDEFINED> instruction: 0x66663778
    224c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2250:	45004c66 	strmi	r4, [r0, #-3174]	; 0xfffff39a
    2254:	4d524550 	cfldr64mi	mvdx4, [r2, #-320]	; 0xfffffec0
    2258:	5f003120 	svcpl	0x00003120
    225c:	7373615f 	cmnvc	r3, #-1073741801	; 0xc0000017
    2260:	73747265 	cmnvc	r4, #1342177286	; 0x50000006
    2264:	6378655f 	cmnvs	r8, #398458880	; 0x17c00000
    2268:	6973756c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
    226c:	2e286576 	mcrcs	5, 1, r6, cr8, cr6, {3}
    2270:	20292e2e 	eorcs	r2, r9, lr, lsr #28
    2274:	6f6c5f5f 	svcvs	0x006c5f5f
    2278:	615f6b63 	cmpvs	pc, r3, ror #22
    227c:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 2284 <_ungetc_r+0x80>
    2280:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    2284:	65737361 	ldrbvs	r7, [r3, #-865]!	; 0xfffffc9f
    2288:	655f7472 	ldrbvs	r7, [pc, #-1138]	; 1e1e <__srefill_r+0xe6>
    228c:	756c6378 	strbvc	r6, [ip, #-888]!	; 0xfffffc88
    2290:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    2294:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    2298:	5f5f286b 	svcpl	0x005f286b
    229c:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    22a0:	5f534752 	svcpl	0x00534752
    22a4:	0029295f 	eoreq	r2, r9, pc, asr r9
    22a8:	66735f5f 	uhsaxvs	r5, r3, pc	; <UNPREDICTABLE>
    22ac:	6b61665f 	blvs	185bc30 <_end+0x85bc30>
    22b0:	74735f65 	ldrbtvc	r5, [r3], #-3941	; 0xfffff09b
    22b4:	006e6964 	rsbeq	r6, lr, r4, ror #18
    22b8:	5f43535f 	svcpl	0x0043535f
    22bc:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    22c0:	535f4441 	cmppl	pc, #1090519040	; 0x41000000
    22c4:	41524f50 	cmpmi	r2, r0, asr pc
    22c8:	5f434944 	svcpl	0x00434944
    22cc:	56524553 			; <UNDEFINED> instruction: 0x56524553
    22d0:	38205245 	stmdacc	r0!, {r0, r2, r6, r9, ip, lr}
    22d4:	4e490031 	mcrmi	0, 2, r0, cr9, cr1, {1}
    22d8:	5f323354 	svcpl	0x00323354
    22dc:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    22e0:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    22e4:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    22e8:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    22ec:	5f5f0029 	svcpl	0x005f0029
    22f0:	5f727470 	svcpl	0x00727470
    22f4:	6f762074 	svcvs	0x00762074
    22f8:	2a206469 	bcs	81b4a4 <heap_size+0x7fb4a4>
    22fc:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    2300:	5f43554e 	svcpl	0x0043554e
    2304:	43445453 	movtmi	r5, #17491	; 0x4453
    2308:	4c4e495f 	mcrrmi	9, 5, r4, lr, cr15	; <UNPREDICTABLE>
    230c:	5f454e49 	svcpl	0x00454e49
    2310:	0031205f 	eorseq	r2, r1, pc, asr r0
    2314:	75626e5f 	strbvc	r6, [r2, #-3679]!	; 0xfffff1a1
    2318:	41550066 	cmpmi	r5, r6, rrx
    231c:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 21dc <__submore+0x48>
    2320:	41505f52 	cmpmi	r0, r2, asr pc
    2324:	59544952 	ldmdbpl	r4, {r1, r4, r6, r8, fp, lr}^
    2328:	53414d5f 	movtpl	r4, #7519	; 0x1d5f
    232c:	7830204b 	ldmdavc	r0!, {r0, r1, r3, r6, sp}
    2330:	30303030 	eorscc	r3, r0, r0, lsr r0
    2334:	38333030 	ldmdacc	r3!, {r4, r5, ip, sp}
    2338:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    233c:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    2340:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    2344:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2348:	5f003531 	svcpl	0x00003531
    234c:	525f4353 	subspl	r4, pc, #1275068417	; 0x4c000001
    2350:	535f5741 	cmppl	pc, #17039360	; 0x1040000
    2354:	454b434f 	strbmi	r4, [fp, #-847]	; 0xfffffcb1
    2358:	37205354 			; <UNDEFINED> instruction: 0x37205354
    235c:	5f5f0030 	svcpl	0x005f0030
    2360:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    2364:	5f4d5543 	svcpl	0x004d5543
    2368:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    236c:	5f4e4f4c 	svcpl	0x004e4f4c
    2370:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    2374:	332d5031 			; <UNDEFINED> instruction: 0x332d5031
    2378:	4b4c4c31 	blmi	1315444 <_end+0x315444>
    237c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    2380:	5f43554e 	svcpl	0x0043554e
    2384:	43544150 	cmpmi	r4, #80, 2
    2388:	56454c48 	strbpl	r4, [r5], -r8, asr #24
    238c:	5f5f4c45 	svcpl	0x005f4c45
    2390:	5f003120 	svcpl	0x00003120
    2394:	4343475f 	movtmi	r4, #14175	; 0x375f
    2398:	4f54415f 	svcmi	0x0054415f
    239c:	5f43494d 	svcpl	0x0043494d
    23a0:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    23a4:	545f3233 	ldrbpl	r3, [pc], #-563	; 23ac <__sfvwrite_r+0x90>
    23a8:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    23ac:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    23b0:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    23b4:	615f5f00 	cmpvs	pc, r0, lsl #30
    23b8:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
    23bc:	696c615f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r8, sp, lr}^
    23c0:	78286e67 	stmdavc	r8!, {r0, r1, r2, r5, r6, r9, sl, fp, sp, lr}
    23c4:	5f5f2029 	svcpl	0x005f2029
    23c8:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    23cc:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    23d0:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    23d4:	615f5f28 	cmpvs	pc, r8, lsr #30
    23d8:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
    23dc:	696c615f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r8, sp, lr}^
    23e0:	5f5f6e67 	svcpl	0x005f6e67
    23e4:	29297828 	stmdbcs	r9!, {r3, r5, fp, ip, sp, lr}
    23e8:	5f5f0029 	svcpl	0x005f0029
    23ec:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    23f0:	41454c5f 	cmpmi	r5, pc, asr ip
    23f4:	36315453 			; <UNDEFINED> instruction: 0x36315453
    23f8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    23fc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2400:	66666678 			; <UNDEFINED> instruction: 0x66666678
    2404:	54450066 	strbpl	r0, [r5], #-102	; 0xffffff9a
    2408:	20454d49 	subcs	r4, r5, r9, asr #26
    240c:	55003236 	strpl	r3, [r0, #-566]	; 0xfffffdca
    2410:	5f545241 	svcpl	0x00545241
    2414:	5f525849 	svcpl	0x00525849
    2418:	20534d44 	subscs	r4, r3, r4, asr #26
    241c:	30307830 	eorscc	r7, r0, r0, lsr r8
    2420:	32303030 	eorscc	r3, r0, #48	; 0x30
    2424:	45003030 	strmi	r3, [r0, #-48]	; 0xffffffd0
    2428:	55424f4e 	strbpl	r4, [r2, #-3918]	; 0xfffff0b2
    242c:	31205346 			; <UNDEFINED> instruction: 0x31205346
    2430:	55003530 	strpl	r3, [r0, #-1328]	; 0xfffffad0
    2434:	5f545241 	svcpl	0x00545241
    2438:	535f524d 	cmppl	pc, #-805306364	; 0xd0000004
    243c:	4d504f54 	ldclmi	15, cr4, [r0, #-336]	; 0xfffffeb0
    2440:	5f45444f 	svcpl	0x0045444f
    2444:	49425f32 	stmdbmi	r2, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    2448:	78302054 	ldmdavc	r0!, {r2, r4, r6, sp}
    244c:	30303030 	eorscc	r3, r0, r0, lsr r0
    2450:	30383030 	eorscc	r3, r8, r0, lsr r0
    2454:	705f5f00 	subsvc	r5, pc, r0, lsl #30
    2458:	69646572 	stmdbvs	r4!, {r1, r4, r5, r6, r8, sl, sp, lr}^
    245c:	745f7463 	ldrbvc	r7, [pc], #-1123	; 2464 <__sfvwrite_r+0x148>
    2460:	28657572 	stmdacs	r5!, {r1, r4, r5, r6, r8, sl, ip, sp, lr}^
    2464:	29707865 	ldmdbcs	r0!, {r0, r2, r5, r6, fp, ip, sp, lr}^
    2468:	625f5f20 	subsvs	r5, pc, #32, 30	; 0x80
    246c:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
    2470:	655f6e69 	ldrbvs	r6, [pc, #-3689]	; 160f <_printf_i+0x21f>
    2474:	63657078 	cmnvs	r5, #120	; 0x78
    2478:	65282874 	strvs	r2, [r8, #-2164]!	; 0xfffff78c
    247c:	2c297078 	stccs	0, cr7, [r9], #-480	; 0xfffffe20
    2480:	00293120 	eoreq	r3, r9, r0, lsr #2
    2484:	5f43535f 	svcpl	0x0043535f
    2488:	57535f32 	smmlarpl	r3, r2, pc, r5	; <UNPREDICTABLE>
    248c:	5645445f 			; <UNDEFINED> instruction: 0x5645445f
    2490:	39313120 	ldmdbcc	r1!, {r5, r8, ip, sp}
    2494:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2498:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    249c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    24a0:	5f30315f 	svcpl	0x0030315f
    24a4:	5f505845 	svcpl	0x00505845
    24a8:	3033205f 	eorscc	r2, r3, pc, asr r0
    24ac:	5f5f0038 	svcpl	0x005f0038
    24b0:	5f4d5241 	svcpl	0x004d5241
    24b4:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
    24b8:	4153495f 	cmpmi	r3, pc, asr r9
    24bc:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    24c0:	5f003120 	svcpl	0x00003120
    24c4:	5a49535f 	bpl	1257248 <_end+0x257248>
    24c8:	5f464f45 	svcpl	0x00464f45
    24cc:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    24d0:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    24d4:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; 15dc <_printf_i+0x1ec>
    24d8:	4f4e5252 	svcmi	0x004e5252
    24dc:	5f5f485f 	svcpl	0x005f485f
    24e0:	4d450020 	stclmi	0, cr0, [r5, #-128]	; 0xffffff80
    24e4:	4b4e494c 	blmi	1394a1c <_end+0x394a1c>
    24e8:	00313320 	eorseq	r3, r1, r0, lsr #6
    24ec:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    24f0:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    24f4:	5f657475 	svcpl	0x00657475
    24f8:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
    24fc:	735f7461 	cmpvc	pc, #1627389952	; 0x61000000
    2500:	6d667274 	sfmvs	f7, 2, [r6, #-464]!	; 0xfffffe30
    2504:	5f5f6e6f 	svcpl	0x005f6e6f
    2508:	622c6128 	eorvs	r6, ip, #40, 2
    250c:	5f002029 	svcpl	0x00002029
    2510:	5f445342 	svcpl	0x00445342
    2514:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2518:	445f545f 	ldrbmi	r5, [pc], #-1119	; 2520 <__sfvwrite_r+0x204>
    251c:	4e494645 	cdpmi	6, 4, cr4, cr9, cr5, {2}
    2520:	205f4445 	subscs	r4, pc, r5, asr #8
    2524:	766e6500 	strbtvc	r6, [lr], -r0, lsl #10
    2528:	6e6f7269 	cdpvs	2, 6, cr7, cr15, cr9, {3}
    252c:	53455200 	movtpl	r5, #20992	; 0x5200
    2530:	45565245 	ldrbmi	r5, [r6, #-581]	; 0xfffffdbb
    2534:	5f003144 	svcpl	0x00003144
    2538:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    253c:	69735f74 	ldmdbvs	r3!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    2540:	745f657a 	ldrbvc	r6, [pc], #-1402	; 2548 <__sfvwrite_r+0x22c>
    2544:	0020685f 	eoreq	r6, r0, pc, asr r8
    2548:	5f43535f 	svcpl	0x0043535f
    254c:	5f424f4a 	svcpl	0x00424f4a
    2550:	544e4f43 	strbpl	r4, [lr], #-3907	; 0xfffff0bd
    2554:	204c4f52 	subcs	r4, ip, r2, asr pc
    2558:	5f5f0035 	svcpl	0x005f0035
    255c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2560:	465f464f 	ldrbmi	r4, [pc], -pc, asr #12
    2564:	54414f4c 	strbpl	r4, [r1], #-3916	; 0xfffff0b4
    2568:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    256c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2570:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    2574:	45445f58 	strbmi	r5, [r4, #-3928]	; 0xfffff0a8
    2578:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    257c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2580:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    2584:	3034392e 	eorscc	r3, r4, lr, lsr #18
    2588:	34363536 	ldrtcc	r3, [r6], #-1334	; 0xfffffaca
    258c:	31343835 	teqcc	r4, r5, lsr r8
    2590:	35363432 	ldrcc	r3, [r6, #-1074]!	; 0xfffffbce
    2594:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    2598:	33463432 	movtcc	r3, #25650	; 0x6432
    259c:	5f007832 	svcpl	0x00007832
    25a0:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    25a4:	4b494c43 	blmi	12556b8 <_end+0x2556b8>
    25a8:	414d5f45 	cmpmi	sp, r5, asr #30
    25ac:	425f4854 	subsmi	r4, pc, #84, 16	; 0x540000
    25b0:	544c4955 	strbpl	r4, [ip], #-2389	; 0xfffff6ab
    25b4:	525f4e49 	subspl	r4, pc, #1168	; 0x490
    25b8:	504f4c45 	subpl	r4, pc, r5, asr #24
    25bc:	5f002053 	svcpl	0x00002053
    25c0:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    25c4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    25c8:	5f30315f 	svcpl	0x0030315f
    25cc:	5f505845 	svcpl	0x00505845
    25d0:	3833205f 	ldmdacc	r3!, {r0, r1, r2, r3, r4, r6, sp}
    25d4:	505f5f00 	subspl	r5, pc, r0, lsl #30
    25d8:	6128544d 			; <UNDEFINED> instruction: 0x6128544d
    25dc:	29736772 	ldmdbcs	r3!, {r1, r4, r5, r6, r8, r9, sl, sp, lr}^
    25e0:	67726120 	ldrbvs	r6, [r2, -r0, lsr #2]!
    25e4:	5f5f0073 	svcpl	0x005f0073
    25e8:	31434544 	cmpcc	r3, r4, asr #10
    25ec:	4d5f3832 	ldclmi	8, cr3, [pc, #-200]	; 252c <__sfvwrite_r+0x210>
    25f0:	5f5f5841 	svcpl	0x005f5841
    25f4:	392e3920 	stmdbcc	lr!, {r5, r8, fp, ip, sp}
    25f8:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    25fc:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2600:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2604:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2608:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    260c:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2610:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2614:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2618:	34313645 	ldrtcc	r3, [r1], #-1605	; 0xfffff9bb
    261c:	004c4434 	subeq	r4, ip, r4, lsr r4
    2620:	52465f5f 	subpl	r5, r6, #380	; 0x17c
    2624:	5f544341 	svcpl	0x00544341
    2628:	5f58414d 	svcpl	0x0058414d
    262c:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    2630:	46464637 			; <UNDEFINED> instruction: 0x46464637
    2634:	35312d50 	ldrcc	r2, [r1, #-3408]!	; 0xfffff2b0
    2638:	4f4d0052 	svcmi	0x004d0052
    263c:	534d4544 	movtpl	r4, #54596	; 0xd544
    2640:	4e490052 	mcrmi	0, 2, r0, cr9, cr2, {2}
    2644:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    2648:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    264c:	414d5f32 	cmpmi	sp, r2, lsr pc
    2650:	5f5f2058 	svcpl	0x005f2058
    2654:	5f544e49 	svcpl	0x00544e49
    2658:	5341454c 	movtpl	r4, #5452	; 0x154c
    265c:	5f323354 	svcpl	0x00323354
    2660:	5f58414d 	svcpl	0x0058414d
    2664:	4155005f 	cmpmi	r5, pc, asr r0
    2668:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 2528 <__sfvwrite_r+0x20c>
    266c:	4d454445 	cfstrdmi	mvd4, [r5, #-276]	; 0xfffffeec
    2670:	435f5253 	cmpmi	pc, #805306373	; 0x30000005
    2674:	20585354 	subscs	r5, r8, r4, asr r3
    2678:	30307830 	eorscc	r7, r0, r0, lsr r8
    267c:	30303030 	eorscc	r3, r0, r0, lsr r0
    2680:	5f003130 	svcpl	0x00003130
    2684:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2688:	5341465f 	movtpl	r4, #5727	; 0x165f
    268c:	5f323354 	svcpl	0x00323354
    2690:	5f58414d 	svcpl	0x0058414d
    2694:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    2698:	66666637 			; <UNDEFINED> instruction: 0x66666637
    269c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    26a0:	415f5f00 	cmpmi	pc, r0, lsl #30
    26a4:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    26a8:	45535f43 	ldrbmi	r5, [r3, #-3907]	; 0xfffff0bd
    26ac:	53435f51 	movtpl	r5, #16209	; 0x3f51
    26b0:	00352054 	eorseq	r2, r5, r4, asr r0
    26b4:	4145525f 	cmpmi	r5, pc, asr r2
    26b8:	52575f44 	subspl	r5, r7, #68, 30	; 0x110
    26bc:	5f455449 	svcpl	0x00455449
    26c0:	55544552 	ldrbpl	r4, [r4, #-1362]	; 0xfffffaae
    26c4:	545f4e52 	ldrbpl	r4, [pc], #-3666	; 26cc <memcpy>
    26c8:	20455059 	subcs	r5, r5, r9, asr r0
    26cc:	00746e69 	rsbseq	r6, r4, r9, ror #28
    26d0:	5f43535f 	svcpl	0x0043535f
    26d4:	4f52504e 	svcmi	0x0052504e
    26d8:	53534543 	cmppl	r3, #281018368	; 0x10c00000
    26dc:	5f53524f 	svcpl	0x0053524f
    26e0:	464e4f43 	strbmi	r4, [lr], -r3, asr #30
    26e4:	5f003920 	svcpl	0x00003920
    26e8:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    26ec:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    26f0:	58455f48 	stmdapl	r5, {r3, r6, r8, r9, sl, fp, ip, lr}^
    26f4:	44495f54 	strbmi	r5, [r9], #-3924	; 0xfffff0ac
    26f8:	5f5f5649 	svcpl	0x005f5649
    26fc:	45445f00 	strbmi	r5, [r4, #-3840]	; 0xfffff100
    2700:	5f545f56 	svcpl	0x00545f56
    2704:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    2708:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    270c:	755f0020 	ldrbvc	r0, [pc, #-32]	; 26f4 <memmove+0x12>
    2710:	6570736e 	ldrbvs	r7, [r0, #-878]!	; 0xfffffc92
    2714:	69666963 	stmdbvs	r6!, {r0, r1, r5, r6, r8, fp, sp, lr}^
    2718:	6c5f6465 	cfldrdvs	mvd6, [pc], {101}	; 0x65
    271c:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
    2720:	6e695f65 	cdpvs	15, 6, cr5, cr9, cr5, {3}
    2724:	5f006f66 	svcpl	0x00006f66
    2728:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    272c:	69775f64 	ldmdbvs	r7!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    2730:	745f746e 	ldrbvc	r7, [pc], #-1134	; 2738 <_realloc_r+0x24>
    2734:	735f5f00 	cmpvc	pc, #0, 30
    2738:	645f6d79 	ldrbvs	r6, [pc], #-3449	; 2740 <_realloc_r+0x2c>
    273c:	75616665 	strbvc	r6, [r1, #-1637]!	; 0xfffff99b
    2740:	7328746c 			; <UNDEFINED> instruction: 0x7328746c
    2744:	692c6d79 	stmdbvs	ip!, {r0, r3, r4, r5, r6, r8, sl, fp, sp, lr}
    2748:	2c6c706d 	stclcs	0, cr7, [ip], #-436	; 0xfffffe4c
    274c:	69726576 	ldmdbvs	r2!, {r1, r2, r4, r5, r6, r8, sl, sp, lr}^
    2750:	5f202964 	svcpl	0x00202964
    2754:	6d73615f 	ldfvse	f6, [r3, #-380]!	; 0xfffffe84
    2758:	22285f5f 	eorcs	r5, r8, #380	; 0x17c
    275c:	6d79732e 	ldclvs	3, cr7, [r9, #-184]!	; 0xffffff48
    2760:	20726576 	rsbscs	r6, r2, r6, ror r5
    2764:	69232022 	stmdbvs	r3!, {r1, r5, sp}
    2768:	206c706d 	rsbcs	r7, ip, sp, rrx
    276c:	22202c22 	eorcs	r2, r0, #8704	; 0x2200
    2770:	79732320 	ldmdbvc	r3!, {r5, r8, r9, sp}^
    2774:	4022206d 	eormi	r2, r2, sp, rrx
    2778:	23202240 			; <UNDEFINED> instruction: 0x23202240
    277c:	69726576 	ldmdbvs	r2!, {r1, r2, r4, r5, r6, r8, sl, sp, lr}^
    2780:	5f002964 	svcpl	0x00002964
    2784:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    2788:	5f545f52 	svcpl	0x00545f52
    278c:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    2790:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    2794:	41550020 	cmpmi	r5, r0, lsr #32
    2798:	435f5452 	cmpmi	pc, #1375731712	; 0x52000000
    279c:	58545f52 	ldmdapl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    27a0:	5349445f 	movtpl	r4, #37983	; 0x945f
    27a4:	30783020 	rsbscc	r3, r8, r0, lsr #32
    27a8:	30303030 	eorscc	r3, r0, r0, lsr r0
    27ac:	00303230 	eorseq	r3, r0, r0, lsr r2
    27b0:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    27b4:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    27b8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    27bc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    27c0:	66666678 			; <UNDEFINED> instruction: 0x66666678
    27c4:	505f0066 	subspl	r0, pc, r6, rrx
    27c8:	4c415f43 	mcrrmi	15, 4, r5, r1, cr3
    27cc:	5f434f4c 	svcpl	0x00434f4c
    27d0:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    27d4:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    27d8:	00353120 	eorseq	r3, r5, r0, lsr #2
    27dc:	51545f5f 	cmppl	r4, pc, asr pc
    27e0:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    27e4:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    27e8:	00373231 	eorseq	r3, r7, r1, lsr r2
    27ec:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    27f0:	5f524d5f 	svcpl	0x00524d5f
    27f4:	4f4d4843 	svcmi	0x004d4843
    27f8:	4e5f4544 	cdpmi	5, 5, cr4, cr15, cr4, {2}
    27fc:	204d524f 	subcs	r5, sp, pc, asr #4
    2800:	30307830 	eorscc	r7, r0, r0, lsr r8
    2804:	30303030 	eorscc	r3, r0, r0, lsr r0
    2808:	5f003030 	svcpl	0x00003030
    280c:	5f6d745f 	svcpl	0x006d745f
    2810:	79616479 	stmdbvc	r1!, {r0, r3, r4, r5, r6, sl, sp, lr}^
    2814:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    2818:	5f4c4244 	svcpl	0x004c4244
    281c:	5f58414d 	svcpl	0x0058414d
    2820:	5f505845 	svcpl	0x00505845
    2824:	3031205f 	eorscc	r2, r1, pc, asr r0
    2828:	5f003432 	svcpl	0x00003432
    282c:	4345445f 	movtmi	r4, #21599	; 0x545f
    2830:	5f383231 	svcpl	0x00383231
    2834:	4e425553 	mcrmi	5, 2, r5, cr2, cr3, {2}
    2838:	414d524f 	cmpmi	sp, pc, asr #4
    283c:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    2840:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2844:	30302e30 	eorscc	r2, r0, r0, lsr lr
    2848:	30303030 	eorscc	r3, r0, r0, lsr r0
    284c:	30303030 	eorscc	r3, r0, r0, lsr r0
    2850:	30303030 	eorscc	r3, r0, r0, lsr r0
    2854:	30303030 	eorscc	r3, r0, r0, lsr r0
    2858:	30303030 	eorscc	r3, r0, r0, lsr r0
    285c:	30303030 	eorscc	r3, r0, r0, lsr r0
    2860:	30303030 	eorscc	r3, r0, r0, lsr r0
    2864:	45313030 	ldrmi	r3, [r1, #-48]!	; 0xffffffd0
    2868:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    286c:	004c4433 	subeq	r4, ip, r3, lsr r4
    2870:	4f505f5f 	svcmi	0x00505f5f
    2874:	5f584953 	svcpl	0x00584953
    2878:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    287c:	20454c42 	subcs	r4, r5, r2, asr #24
    2880:	485f0030 	ldmdami	pc, {r4, r5}^	; <UNPREDICTABLE>
    2884:	5f455641 	svcpl	0x00455641
    2888:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    288c:	554f445f 	strbpl	r4, [pc, #-1119]	; 2435 <__sfvwrite_r+0x119>
    2890:	20454c42 	subcs	r4, r5, r2, asr #24
    2894:	525f0031 	subspl	r0, pc, #49	; 0x31
    2898:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    289c:	454d455f 	strbmi	r4, [sp, #-1375]	; 0xfffffaa1
    28a0:	4e454752 	mcrmi	7, 2, r4, cr5, cr2, {2}
    28a4:	535f5943 	cmppl	pc, #1097728	; 0x10c000
    28a8:	20455a49 	subcs	r5, r5, r9, asr #20
    28ac:	5f003532 	svcpl	0x00003532
    28b0:	67696c41 	strbvs	r6, [r9, -r1, asr #24]!
    28b4:	2873616e 	ldmdacs	r3!, {r1, r2, r3, r5, r6, r8, sp, lr}^
    28b8:	5f202978 	svcpl	0x00202978
    28bc:	696c615f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r8, sp, lr}^
    28c0:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    28c4:	00297828 	eoreq	r7, r9, r8, lsr #16
    28c8:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    28cc:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 279c <__ascii_wctomb+0x4>
    28d0:	4f545242 	svcmi	0x00545242
    28d4:	535f4357 	cmppl	pc, #1543503873	; 0x5c000001
    28d8:	45544154 	ldrbmi	r4, [r4, #-340]	; 0xfffffeac
    28dc:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    28e0:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    28e4:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    28e8:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 283c <__udivsi3+0x74>
    28ec:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    28f0:	626d5f3e 	rsbvs	r5, sp, #62, 30	; 0xf8
    28f4:	776f7472 			; <UNDEFINED> instruction: 0x776f7472
    28f8:	74735f63 	ldrbtvc	r5, [r3], #-3939	; 0xfffff09d
    28fc:	29657461 	stmdbcs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    2900:	43535f00 	cmpmi	r3, #0, 30
    2904:	5248545f 	subpl	r5, r8, #1593835520	; 0x5f000000
    2908:	5f444145 	svcpl	0x00444145
    290c:	54555043 	ldrbpl	r5, [r5], #-67	; 0xffffffbd
    2910:	20454d49 	subcs	r4, r5, r9, asr #26
    2914:	5f003038 	svcpl	0x00003038
    2918:	325f4353 	subscc	r4, pc, #1275068417	; 0x4c000001
    291c:	5245565f 	subpl	r5, r5, #99614720	; 0x5f00000
    2920:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
    2924:	31323120 	teqcc	r2, r0, lsr #2
    2928:	535f5f00 	cmppl	pc, #0, 30
    292c:	4f455a49 	svcmi	0x00455a49
    2930:	48535f46 	ldmdami	r3, {r1, r2, r6, r8, r9, sl, fp, ip, lr}^
    2934:	5f54524f 	svcpl	0x0054524f
    2938:	0032205f 	eorseq	r2, r2, pc, asr r0
    293c:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    2940:	4343414c 	movtmi	r4, #12620	; 0x314c
    2944:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
    2948:	5f544942 	svcpl	0x00544942
    294c:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    2950:	635f5f00 	cmpvs	pc, #0, 30
    2954:	72646461 	rsbvc	r6, r4, #1627389952	; 0x61000000
    2958:	645f745f 	ldrbvs	r7, [pc], #-1119	; 2960 <__udivsi3+0x198>
    295c:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    2960:	00206465 	eoreq	r6, r0, r5, ror #8
    2964:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    2968:	28282031 	stmdacs	r8!, {r0, r4, r5, sp}
    296c:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    2970:	6765525f 			; <UNDEFINED> instruction: 0x6765525f
    2974:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    2978:	2a207372 	bcs	81f748 <heap_size+0x7ff748>
    297c:	52415529 	subpl	r5, r1, #171966464	; 0xa400000
    2980:	425f3154 	subsmi	r3, pc, #84, 2
    2984:	29455341 	stmdbcs	r5, {r0, r6, r8, r9, ip, lr}^
    2988:	4f4d5f00 	svcmi	0x004d5f00
    298c:	545f4544 	ldrbpl	r4, [pc], #-1348	; 2994 <__udivsi3+0x1cc>
    2990:	4345445f 	movtmi	r4, #21599	; 0x545f
    2994:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    2998:	46002044 	strmi	r2, [r0], -r4, asr #32
    299c:	204b4f5f 	subcs	r4, fp, pc, asr pc
    29a0:	41550030 	cmpmi	r5, r0, lsr r0
    29a4:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    29a8:	58525f52 	ldmdapl	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    29ac:	54504d45 	ldrbpl	r4, [r0], #-3397	; 0xfffff2bb
    29b0:	78302059 	ldmdavc	r0!, {r0, r3, r4, r6, sp}
    29b4:	30303030 	eorscc	r3, r0, r0, lsr r0
    29b8:	32303030 	eorscc	r3, r0, #48	; 0x30
    29bc:	545f5f00 	ldrbpl	r5, [pc], #-3840	; 29c4 <__udivsi3+0x1fc>
    29c0:	42495f41 	submi	r5, r9, #260	; 0x104
    29c4:	5f5f5449 	svcpl	0x005f5449
    29c8:	00343620 	eorseq	r3, r4, r0, lsr #12
    29cc:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    29d0:	534e4f43 	movtpl	r4, #61251	; 0xef43
    29d4:	79742854 	ldmdbvc	r4!, {r2, r4, r6, fp, sp}^
    29d8:	762c6570 			; <UNDEFINED> instruction: 0x762c6570
    29dc:	20297261 	eorcs	r7, r9, r1, ror #4
    29e0:	79742828 	ldmdbvc	r4!, {r3, r5, fp, sp}^
    29e4:	28296570 	stmdacs	r9!, {r4, r5, r6, r8, sl, sp, lr}
    29e8:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    29ec:	7470746e 	ldrbtvc	r7, [r0], #-1134	; 0xfffffb92
    29f0:	29745f72 	ldmdbcs	r4!, {r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    29f4:	6e6f6328 	cdpvs	3, 6, cr6, cr15, cr8, {1}
    29f8:	76207473 			; <UNDEFINED> instruction: 0x76207473
    29fc:	2064696f 	rsbcs	r6, r4, pc, ror #18
    2a00:	7628292a 	strtvc	r2, [r8], -sl, lsr #18
    2a04:	29297261 	stmdbcs	r9!, {r0, r5, r6, r9, ip, sp, lr}
    2a08:	535f5f00 	cmppl	pc, #0, 30
    2a0c:	43495254 	movtmi	r5, #37460	; 0x9254
    2a10:	4e415f54 	mcrmi	15, 2, r5, cr1, cr4, {2}
    2a14:	5f5f4953 	svcpl	0x005f4953
    2a18:	5f003120 	svcpl	0x00003120
    2a1c:	5f535953 	svcpl	0x00535953
    2a20:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    2a24:	53455255 	movtpl	r5, #21077	; 0x5255
    2a28:	0020485f 	eoreq	r4, r0, pc, asr r8
    2a2c:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
    2a30:	53455200 	movtpl	r5, #20992	; 0x5200
    2a34:	45565245 	ldrbmi	r5, [r6, #-581]	; 0xfffffdbb
    2a38:	5f003244 	svcpl	0x00003244
    2a3c:	525f4353 	subspl	r4, pc, #1275068417	; 0x4c000001
    2a40:	45444145 	strbmi	r4, [r4, #-325]	; 0xfffffebb
    2a44:	52575f52 	subspl	r5, r7, #328	; 0x148
    2a48:	52455449 	subpl	r5, r5, #1224736768	; 0x49000000
    2a4c:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    2a50:	3720534b 	strcc	r5, [r0, -fp, asr #6]!
    2a54:	49550031 	ldmdbmi	r5, {r0, r4, r5}^
    2a58:	5f38544e 	svcpl	0x0038544e
    2a5c:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    2a60:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 1b48 <_scanf_i+0x108>
    2a64:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    2a68:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    2a6c:	5f5f0029 	svcpl	0x005f0029
    2a70:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2a74:	4c5f464f 	mrrcmi	6, 4, r4, pc, cr15	; <UNPREDICTABLE>
    2a78:	5f474e4f 	svcpl	0x00474e4f
    2a7c:	42554f44 	subsmi	r4, r5, #68, 30	; 0x110
    2a80:	5f5f454c 	svcpl	0x005f454c
    2a84:	55003820 	strpl	r3, [r0, #-2080]	; 0xfffff7e0
    2a88:	5f545241 	svcpl	0x00545241
    2a8c:	5f525849 	svcpl	0x00525849
    2a90:	564f5852 			; <UNDEFINED> instruction: 0x564f5852
    2a94:	78302052 	ldmdavc	r0!, {r1, r4, r6, sp}
    2a98:	30303030 	eorscc	r3, r0, r0, lsr r0
    2a9c:	31303030 	teqcc	r0, r0, lsr r0
    2aa0:	454e4500 	strbmi	r4, [lr, #-1280]	; 0xfffffb00
    2aa4:	524e5554 	subpl	r5, lr, #84, 10	; 0x15000000
    2aa8:	48434145 	stmdami	r3, {r0, r2, r6, r8, lr}^
    2aac:	34313120 	ldrtcc	r3, [r1], #-288	; 0xfffffee0
    2ab0:	52415500 	subpl	r5, r1, #0, 10
    2ab4:	52435f54 	subpl	r5, r3, #84, 30	; 0x150
    2ab8:	5f58525f 	svcpl	0x0058525f
    2abc:	30204e45 	eorcc	r4, r0, r5, asr #28
    2ac0:	30303078 	eorscc	r3, r0, r8, ror r0
    2ac4:	30303030 	eorscc	r3, r0, r0, lsr r0
    2ac8:	5f5f0034 	svcpl	0x005f0034
    2acc:	47415250 	smlsldmi	r5, r1, r0, r2
    2ad0:	525f414d 	subspl	r4, pc, #1073741843	; 0x40000013
    2ad4:	46454445 	strbmi	r4, [r5], -r5, asr #8
    2ad8:	5f454e49 	svcpl	0x00454e49
    2adc:	4e545845 	cdpmi	8, 5, cr5, cr4, cr5, {2}
    2ae0:	20454d41 	subcs	r4, r5, r1, asr #26
    2ae4:	5f5f0031 	svcpl	0x005f0031
    2ae8:	41484357 	cmpmi	r8, r7, asr r3
    2aec:	59545f52 	ldmdbpl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    2af0:	5f5f4550 	svcpl	0x005f4550
    2af4:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    2af8:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2afc:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    2b00:	525f0074 	subspl	r0, pc, #116	; 0x74
    2b04:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    2b08:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    2b0c:	4d41474e 	stclmi	7, cr4, [r1, #-312]	; 0xfffffec8
    2b10:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    2b14:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    2b18:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    2b1c:	675f3e2d 	ldrbvs	r3, [pc, -sp, lsr #28]
    2b20:	616d6d61 	cmnvs	sp, r1, ror #26
    2b24:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
    2b28:	6d61676e 	stclvs	7, cr6, [r1, #-440]!	; 0xfffffe48
    2b2c:	535f0029 	cmppl	pc, #41	; 0x29
    2b30:	37565f43 	ldrbcc	r5, [r6, -r3, asr #30]
    2b34:	36504c5f 			; <UNDEFINED> instruction: 0x36504c5f
    2b38:	464f5f34 			; <UNDEFINED> instruction: 0x464f5f34
    2b3c:	20343646 	eorscs	r3, r4, r6, asr #12
    2b40:	5f003439 	svcpl	0x00003439
    2b44:	4153555f 	cmpmi	r3, pc, asr r5
    2b48:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    2b4c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2b50:	5f003631 	svcpl	0x00003631
    2b54:	4343475f 	movtmi	r4, #14175	; 0x375f
    2b58:	5641485f 			; <UNDEFINED> instruction: 0x5641485f
    2b5c:	59535f45 	ldmdbpl	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    2b60:	435f434e 	cmpmi	pc, #939524097	; 0x38000001
    2b64:	41504d4f 	cmpmi	r0, pc, asr #26
    2b68:	415f4552 	cmpmi	pc, r2, asr r5	; <UNPREDICTABLE>
    2b6c:	535f444e 	cmppl	pc, #1308622848	; 0x4e000000
    2b70:	5f504157 	svcpl	0x00504157
    2b74:	00312032 	eorseq	r2, r1, r2, lsr r0
    2b78:	5f43535f 	svcpl	0x0043535f
    2b7c:	45474552 	strbmi	r4, [r7, #-1362]	; 0xfffffaae
    2b80:	37205058 			; <UNDEFINED> instruction: 0x37205058
    2b84:	49550032 	ldmdbmi	r5, {r1, r4, r5}^
    2b88:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    2b8c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2b90:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 1c78 <_reclaim_reent+0xc>
    2b94:	33544e49 	cmpcc	r4, #1168	; 0x490
    2b98:	414d5f32 	cmpmi	sp, r2, lsr pc
    2b9c:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2ba0:	69685f5f 	stmdbvs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2ba4:	6e656464 	cdpvs	4, 6, cr6, cr5, cr4, {3}
    2ba8:	615f5f20 	cmpvs	pc, r0, lsr #30
    2bac:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    2bb0:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    2bb4:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2bb8:	69765f5f 	ldmdbvs	r6!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2bbc:	69626973 	stmdbvs	r2!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
    2bc0:	7974696c 	ldmdbvc	r4!, {r2, r3, r5, r6, r8, fp, sp, lr}^
    2bc4:	22285f5f 	eorcs	r5, r8, #380	; 0x17c
    2bc8:	64646968 	strbtvs	r6, [r4], #-2408	; 0xfffff698
    2bcc:	29226e65 	stmdbcs	r2!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}
    2bd0:	5f002929 	svcpl	0x00002929
    2bd4:	535f4353 	cmppl	pc, #1275068417	; 0x4c000001
    2bd8:	45524148 	ldrbmi	r4, [r2, #-328]	; 0xfffffeb8
    2bdc:	454d5f44 	strbmi	r5, [sp, #-3908]	; 0xfffff0bc
    2be0:	59524f4d 	ldmdbpl	r2, {r0, r2, r3, r6, r8, r9, sl, fp, lr}^
    2be4:	4a424f5f 	bmi	1096968 <_end+0x96968>
    2be8:	53544345 	cmppl	r4, #335544321	; 0x14000001
    2bec:	00313320 	eorseq	r3, r1, r0, lsr #6
    2bf0:	736e665f 	cmnvc	lr, #99614720	; 0x5f00000
    2bf4:	504f4500 	subpl	r4, pc, r0, lsl #10
    2bf8:	53544f4e 	cmppl	r4, #312	; 0x138
    2bfc:	20505055 	subscs	r5, r0, r5, asr r0
    2c00:	5f003539 	svcpl	0x00003539
    2c04:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    2c08:	41465f54 	cmpmi	r6, r4, asr pc
    2c0c:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    2c10:	5059545f 	subspl	r5, r9, pc, asr r4
    2c14:	205f5f45 	subscs	r5, pc, r5, asr #30
    2c18:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    2c1c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    2c20:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
    2c24:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    2c28:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    2c2c:	5f00746e 	svcpl	0x0000746e
    2c30:	535f4353 	cmppl	pc, #1275068417	; 0x4c000001
    2c34:	50414d45 	subpl	r4, r1, r5, asr #26
    2c38:	45524f48 	ldrbmi	r4, [r2, #-3912]	; 0xfffff0b8
    2c3c:	30332053 	eorscc	r2, r3, r3, asr r0
    2c40:	49575f00 	ldmdbmi	r7, {r8, r9, sl, fp, ip, lr}^
    2c44:	545f544e 	ldrbpl	r5, [pc], #-1102	; 2c4c <.divsi3_skip_div0_test+0x206>
    2c48:	5f5f0020 	svcpl	0x005f0020
    2c4c:	6b636f6c 	blvs	18dea04 <_end+0x8dea04>
    2c50:	6f6c635f 	svcvs	0x006c635f
    2c54:	6c286573 	cfstr32vs	mvfx6, [r8], #-460	; 0xfffffe34
    2c58:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    2c5c:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    2c60:	2964696f 	stmdbcs	r4!, {r0, r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    2c64:	00293020 	eoreq	r3, r9, r0, lsr #32
    2c68:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2c6c:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2c70:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2c74:	37312e31 			; <UNDEFINED> instruction: 0x37312e31
    2c78:	34393435 	ldrtcc	r3, [r9], #-1077	; 0xfffffbcb
    2c7c:	38303533 	ldmdacc	r0!, {r0, r1, r4, r5, r8, sl, ip, sp}
    2c80:	38323232 	ldmdacc	r2!, {r1, r4, r5, r9, ip, sp}
    2c84:	2d653537 	cfstr64cs	mvdx3, [r5, #-220]!	; 0xffffff24
    2c88:	00463833 	subeq	r3, r6, r3, lsr r8
    2c8c:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    2c90:	735f6465 	cmpvc	pc, #1694498816	; 0x65000000
    2c94:	5f657a69 	svcpl	0x00657a69
    2c98:	5f002074 	svcpl	0x00002074
    2c9c:	5f41485f 	svcpl	0x0041485f
    2ca0:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    2ca4:	37205f5f 			; <UNDEFINED> instruction: 0x37205f5f
    2ca8:	52415500 	subpl	r5, r1, #0, 10
    2cac:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    2cb0:	4558545f 	ldrbmi	r5, [r8, #-1119]	; 0xfffffba1
    2cb4:	5954504d 	ldmdbpl	r4, {r0, r2, r3, r6, ip, lr}^
    2cb8:	30783020 	rsbscc	r3, r8, r0, lsr #32
    2cbc:	30303030 	eorscc	r3, r0, r0, lsr r0
    2cc0:	00383030 	eorseq	r3, r8, r0, lsr r0
    2cc4:	4e574f45 	cdpmi	15, 5, cr4, cr7, cr5, {2}
    2cc8:	45445245 	strbmi	r5, [r4, #-581]	; 0xfffffdbb
    2ccc:	31204441 			; <UNDEFINED> instruction: 0x31204441
    2cd0:	5f003234 	svcpl	0x00003234
    2cd4:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    2cd8:	424d5f54 	submi	r5, sp, #84, 30	; 0x150
    2cdc:	5f4e454c 	svcpl	0x004e454c
    2ce0:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    2ce4:	74702845 	ldrbtvc	r2, [r0], #-2117	; 0xfffff7bb
    2ce8:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    2cec:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    2cf0:	5f3e2d29 	svcpl	0x003e2d29
    2cf4:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    2cf8:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 2c4c <.divsi3_skip_div0_test+0x206>
    2cfc:	6e656c62 	cdpvs	12, 6, cr6, cr5, cr2, {3}
    2d00:	6174735f 	cmnvs	r4, pc, asr r3
    2d04:	00296574 	eoreq	r6, r9, r4, ror r5
    2d08:	5f43535f 	svcpl	0x0043535f
    2d0c:	53524556 	cmppl	r2, #360710144	; 0x15800000
    2d10:	204e4f49 	subcs	r4, lr, r9, asr #30
    2d14:	5f580037 	svcpl	0x00580037
    2d18:	31204b4f 			; <UNDEFINED> instruction: 0x31204b4f
    2d1c:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
    2d20:	6c6e696f 			; <UNDEFINED> instruction: 0x6c6e696f
    2d24:	20656e69 	rsbcs	r6, r5, r9, ror #28
    2d28:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    2d2c:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    2d30:	5f657475 	svcpl	0x00657475
    2d34:	2828205f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, sp}
    2d38:	6f6e5f5f 	svcvs	0x006e5f5f
    2d3c:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    2d40:	5f5f656e 	svcpl	0x005f656e
    2d44:	55002929 	strpl	r2, [r0, #-2345]	; 0xfffff6d7
    2d48:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    2d4c:	28435f34 	stmdacs	r3, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    2d50:	5f202963 	svcpl	0x00202963
    2d54:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    2d58:	5f343654 	svcpl	0x00343654
    2d5c:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    2d60:	43535f00 	cmpmi	r3, #0, 30
    2d64:	435f325f 	cmpmi	pc, #-268435451	; 0xf0000005
    2d68:	4e49425f 	mcrmi	2, 2, r4, cr9, cr15, {2}
    2d6c:	30312044 	eorscc	r2, r1, r4, asr #32
    2d70:	41550038 	cmpmi	r5, r8, lsr r0
    2d74:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    2d78:	564f5f52 			; <UNDEFINED> instruction: 0x564f5f52
    2d7c:	30205245 	eorcc	r5, r0, r5, asr #4
    2d80:	30303078 	eorscc	r3, r0, r8, ror r0
    2d84:	32303030 	eorscc	r3, r0, #48	; 0x30
    2d88:	49550030 	ldmdbmi	r5, {r4, r5}^
    2d8c:	5f38544e 	svcpl	0x0038544e
    2d90:	0058414d 	subseq	r4, r8, sp, asr #2
    2d94:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    2d98:	5f323343 	svcpl	0x00323343
    2d9c:	5f4e494d 	svcpl	0x004e494d
    2da0:	5f505845 	svcpl	0x00505845
    2da4:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    2da8:	00293439 	eoreq	r3, r9, r9, lsr r4
    2dac:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2db0:	414d5f38 	cmpmi	sp, r8, lsr pc
    2db4:	5f5f2058 	svcpl	0x005f2058
    2db8:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2dbc:	414d5f38 	cmpmi	sp, r8, lsr pc
    2dc0:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2dc4:	53555f5f 	cmppl	r5, #380	; 0x17c
    2dc8:	43415246 	movtmi	r5, #4678	; 0x1246
    2dcc:	42495f54 	submi	r5, r9, #84, 30	; 0x150
    2dd0:	5f5f5449 	svcpl	0x005f5449
    2dd4:	55003020 	strpl	r3, [r0, #-32]	; 0xffffffe0
    2dd8:	5f545241 	svcpl	0x00545241
    2ddc:	505f524d 	subspl	r5, pc, sp, asr #4
    2de0:	54495241 	strbpl	r5, [r9], #-577	; 0xfffffdbf
    2de4:	444f5f59 	strbmi	r5, [pc], #-3929	; 2dec <__global_locale+0x8>
    2de8:	78302044 	ldmdavc	r0!, {r2, r6, sp}
    2dec:	30303030 	eorscc	r3, r0, r0, lsr r0
    2df0:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    2df4:	43535f00 	cmpmi	r3, #0, 30
    2df8:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
    2dfc:	5f4d4145 	svcpl	0x004d4145
    2e00:	2058414d 	subscs	r4, r8, sp, asr #2
    2e04:	00303031 	eorseq	r3, r0, r1, lsr r0
    2e08:	65775f5f 	ldrbvs	r5, [r7, #-3935]!	; 0xfffff0a1
    2e0c:	735f6b61 	cmpvc	pc, #99328	; 0x18400
    2e10:	6f626d79 	svcvs	0x00626d79
    2e14:	5f5f206c 	svcpl	0x005f206c
    2e18:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    2e1c:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    2e20:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2e24:	775f5f28 	ldrbvc	r5, [pc, -r8, lsr #30]
    2e28:	5f6b6165 	svcpl	0x006b6165
    2e2c:	0029295f 	eoreq	r2, r9, pc, asr r9
    2e30:	53555f5f 	cmppl	r5, #380	; 0x17c
    2e34:	43415246 	movtmi	r5, #4678	; 0x1246
    2e38:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2e3c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2e40:	55302e30 	ldrpl	r2, [r0, #-3632]!	; 0xfffff1d0
    2e44:	5f005248 	svcpl	0x00005248
    2e48:	6573755f 	ldrbvs	r7, [r3, #-1375]!	; 0xfffffaa1
    2e4c:	5f5f2064 	svcpl	0x005f2064
    2e50:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    2e54:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    2e58:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2e5c:	755f5f28 	ldrbvc	r5, [pc, #-3880]	; 1f3c <_strtol_l.isra.0+0x8a>
    2e60:	5f646573 	svcpl	0x00646573
    2e64:	0029295f 	eoreq	r2, r9, pc, asr r9
    2e68:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    2e6c:	454e5f4d 	strbmi	r5, [lr, #-3917]	; 0xfffff0b3
    2e70:	5f004e4f 	svcpl	0x00004e4f
    2e74:	7568745f 	strbvc	r7, [r8, #-1119]!	; 0xfffffba1
    2e78:	5f5f626d 	svcpl	0x005f626d
    2e7c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1f84 <_strtol_l.isra.0+0xd2>
    2e80:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    2e84:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2e88:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2e8c:	00666678 	rsbeq	r6, r6, r8, ror r6
    2e90:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2e94:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
    2e98:	645f745f 	ldrbvs	r7, [pc], #-1119	; 2ea0 <__global_locale+0xbc>
    2e9c:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    2ea0:	31206465 			; <UNDEFINED> instruction: 0x31206465
    2ea4:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    2ea8:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    2eac:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    2eb0:	5f5f2029 	svcpl	0x005f2029
    2eb4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2eb8:	5f58414d 	svcpl	0x0058414d
    2ebc:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    2ec0:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    2ec4:	20544e45 	subscs	r4, r4, r5, asr #28
    2ec8:	706d695f 	rsbvc	r6, sp, pc, asr r9
    2ecc:	5f657275 	svcpl	0x00657275
    2ed0:	00727470 	rsbseq	r7, r2, r0, ror r4
    2ed4:	61685f5f 	cmnvs	r8, pc, asr pc
    2ed8:	65665f73 	strbvs	r5, [r6, #-3955]!	; 0xfffff08d
    2edc:	72757461 	rsbsvc	r7, r5, #1627389952	; 0x61000000
    2ee0:	29782865 	ldmdbcs	r8!, {r0, r2, r5, r6, fp, sp}^
    2ee4:	5f003020 	svcpl	0x00003020
    2ee8:	4956535f 	ldmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, ip, lr}^
    2eec:	49565f44 	ldmdbmi	r6, {r2, r6, r8, r9, sl, fp, ip, lr}^
    2ef0:	4c424953 	mcrrmi	9, 5, r4, r2, cr3	; <UNPREDICTABLE>
    2ef4:	00302045 	eorseq	r2, r0, r5, asr #32
    2ef8:	78655f5f 	stmdavc	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2efc:	74726f70 	ldrbtvc	r6, [r2], #-3952	; 0xfffff090
    2f00:	5f206465 	svcpl	0x00206465
    2f04:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    2f08:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    2f0c:	5f5f6574 	svcpl	0x005f6574
    2f10:	5f5f2828 	svcpl	0x005f2828
    2f14:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
    2f18:	696c6962 	stmdbvs	ip!, {r1, r5, r6, r8, fp, sp, lr}^
    2f1c:	5f5f7974 	svcpl	0x005f7974
    2f20:	65642228 	strbvs	r2, [r4, #-552]!	; 0xfffffdd8
    2f24:	6c756166 	ldfvse	f6, [r5], #-408	; 0xfffffe68
    2f28:	29292274 	stmdbcs	r9!, {r2, r4, r5, r6, r9, sp}
    2f2c:	5f5f0029 	svcpl	0x005f0029
    2f30:	5f4c4244 	svcpl	0x004c4244
    2f34:	5f534148 	svcpl	0x00534148
    2f38:	4f4e4544 	svcmi	0x004e4544
    2f3c:	5f5f4d52 	svcpl	0x005f4d52
    2f40:	5f003120 	svcpl	0x00003120
    2f44:	545f4353 	ldrbpl	r4, [pc], #-851	; 2f4c <__global_locale+0x168>
    2f48:	41455248 	cmpmi	r5, r8, asr #4
    2f4c:	52505f44 	subspl	r5, r0, #68, 30	; 0x110
    2f50:	495f4f49 	ldmdbmi	pc, {r0, r3, r6, r8, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    2f54:	5245484e 	subpl	r4, r5, #5111808	; 0x4e0000
    2f58:	34205449 	strtcc	r5, [r0], #-1097	; 0xfffffbb7
    2f5c:	5f5f0036 	svcpl	0x005f0036
    2f60:	535f4343 	cmppl	pc, #201326593	; 0xc000001
    2f64:	4f505055 	svcmi	0x00505055
    2f68:	5f535452 	svcpl	0x00535452
    2f6c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2f70:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    2f74:	5f003120 	svcpl	0x00003120
    2f78:	4c5f424d 	lfmmi	f4, 2, [pc], {77}	; 0x4d
    2f7c:	4d5f4e45 	ldclmi	14, cr4, [pc, #-276]	; 2e70 <__global_locale+0x8c>
    2f80:	31205841 			; <UNDEFINED> instruction: 0x31205841
    2f84:	696e5f00 	stmdbvs	lr!, {r8, r9, sl, fp, ip, lr}^
    2f88:	0073626f 	rsbseq	r6, r3, pc, ror #4
    2f8c:	58475f5f 	stmdapl	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2f90:	42415f58 	submi	r5, r1, #88, 30	; 0x160
    2f94:	45565f49 	ldrbmi	r5, [r6, #-3913]	; 0xfffff0b7
    2f98:	4f495352 	svcmi	0x00495352
    2f9c:	3031204e 	eorscc	r2, r1, lr, asr #32
    2fa0:	45003131 	strmi	r3, [r0, #-305]	; 0xfffffecf
    2fa4:	544f5250 	strbpl	r5, [pc], #-592	; 2fac <__do_global_dtors_aux_fini_array_entry+0x58>
    2fa8:	5059544f 	subspl	r5, r9, pc, asr #8
    2fac:	30312045 	eorscc	r2, r1, r5, asr #32
    2fb0:	5f5f0037 	svcpl	0x005f0037
    2fb4:	5f585847 	svcpl	0x00585847
    2fb8:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    2fbc:	4f464e49 	svcmi	0x00464e49
    2fc0:	5551455f 	ldrbpl	r4, [r1, #-1375]	; 0xfffffaa1
    2fc4:	54494c41 	strbpl	r4, [r9], #-3137	; 0xfffff3bf
    2fc8:	4e495f59 	mcrmi	15, 2, r5, cr9, cr9, {2}
    2fcc:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    2fd0:	5f003020 	svcpl	0x00003020
    2fd4:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
    2fd8:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    2fdc:	41435f32 	cmpmi	r3, r2, lsr pc
    2fe0:	5f454843 	svcpl	0x00454843
    2fe4:	4f535341 	svcmi	0x00535341
    2fe8:	33312043 	teqcc	r1, #67	; 0x43
    2fec:	53450032 	movtpl	r0, #20530	; 0x5032
    2ff0:	20484352 	subcs	r4, r8, r2, asr r3
    2ff4:	5f5f0033 	svcpl	0x005f0033
    2ff8:	5f544e49 	svcpl	0x00544e49
    2ffc:	5341454c 	movtpl	r4, #5452	; 0x154c
    3000:	5f363154 	svcpl	0x00363154
    3004:	5f58414d 	svcpl	0x0058414d
    3008:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    300c:	66666637 			; <UNDEFINED> instruction: 0x66666637
    3010:	5f5f5f00 	svcpl	0x005f5f00
    3014:	5f746e69 	svcpl	0x00746e69
    3018:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    301c:	5f363174 	svcpl	0x00363174
    3020:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    3024:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    3028:	00312064 	eorseq	r2, r1, r4, rrx
    302c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    3030:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    3034:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    3038:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    303c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    3040:	3130342e 	teqcc	r0, lr, lsr #8
    3044:	34383932 	ldrtcc	r3, [r8], #-2354	; 0xfffff6ce
    3048:	32333436 	eorscc	r3, r3, #905969664	; 0x36000000
    304c:	37313834 			; <UNDEFINED> instruction: 0x37313834
    3050:	342d6531 	strtcc	r6, [sp], #-1329	; 0xfffffacf
    3054:	5f004635 	svcpl	0x00004635
    3058:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    305c:	414d5f4c 	cmpmi	sp, ip, asr #30
    3060:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3064:	39372e31 	ldmdbcc	r7!, {r0, r4, r5, r9, sl, fp, sp}
    3068:	33393637 	teqcc	r9, #57671680	; 0x3700000
    306c:	38343331 	ldmdacc	r4!, {r0, r4, r5, r8, r9, ip, sp}
    3070:	31333236 	teqcc	r3, r6, lsr r2
    3074:	2b653735 	blcs	1950d50 <_end+0x950d50>
    3078:	4c383033 	ldcmi	0, cr3, [r8], #-204	; 0xffffff34
    307c:	725f5f00 	subsvc	r5, pc, #0, 30
    3080:	72757465 	rsbsvc	r7, r5, #1694498816	; 0x65000000
    3084:	745f736e 	ldrbvc	r7, [pc], #-878	; 308c <__sf_fake_stdout+0x14>
    3088:	65636977 	strbvs	r6, [r3, #-2423]!	; 0xfffff689
    308c:	615f5f20 	cmpvs	pc, r0, lsr #30
    3090:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    3094:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    3098:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    309c:	65725f5f 	ldrbvs	r5, [r2, #-3935]!	; 0xfffff0a1
    30a0:	6e727574 	mrcvs	5, 3, r7, cr2, cr4, {3}
    30a4:	77745f73 			; <UNDEFINED> instruction: 0x77745f73
    30a8:	5f656369 	svcpl	0x00656369
    30ac:	0029295f 	eoreq	r2, r9, pc, asr r9
    30b0:	5f43535f 	svcpl	0x0043535f
    30b4:	4c414552 	cfstr64mi	mvdx4, [r1], {82}	; 0x52
    30b8:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    30bc:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    30c0:	534c414e 	movtpl	r4, #49486	; 0xc14e
    30c4:	00393220 	eorseq	r3, r9, r0, lsr #4
    30c8:	65725f5f 	ldrbvs	r5, [r2, #-3935]!	; 0xfffff0a1
    30cc:	72697571 	rsbvc	r7, r9, #473956352	; 0x1c400000
    30d0:	735f7365 	cmpvc	pc, #-1811939327	; 0x94000001
    30d4:	65726168 	ldrbvs	r6, [r2, #-360]!	; 0xfffffe98
    30d8:	2e2e2864 	cdpcs	8, 2, cr2, cr14, cr4, {3}
    30dc:	5f20292e 	svcpl	0x0020292e
    30e0:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    30e4:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    30e8:	61746f6e 	cmnvs	r4, lr, ror #30
    30ec:	73286574 			; <UNDEFINED> instruction: 0x73286574
    30f0:	65726168 	ldrbvs	r6, [r2, #-360]!	; 0xfffffe98
    30f4:	6f6c5f64 	svcvs	0x006c5f64
    30f8:	5f736b63 	svcpl	0x00736b63
    30fc:	75716572 	ldrbvc	r6, [r1, #-1394]!	; 0xfffffa8e
    3100:	64657269 	strbtvs	r7, [r5], #-617	; 0xfffffd97
    3104:	565f5f28 	ldrbpl	r5, [pc], -r8, lsr #30
    3108:	52415f41 	subpl	r5, r1, #260	; 0x104
    310c:	5f5f5347 	svcpl	0x005f5347
    3110:	5f002929 	svcpl	0x00002929
    3114:	5f444e45 	svcpl	0x00444e45
    3118:	5f445453 	svcpl	0x00445453
    311c:	5f002043 	svcpl	0x00002043
    3120:	545f4353 	ldrbpl	r4, [pc], #-851	; 3128 <_ctype_+0x27>
    3124:	45434152 	strbmi	r4, [r3, #-338]	; 0xfffffeae
    3128:	4d414e5f 	stclmi	14, cr4, [r1, #-380]	; 0xfffffe84
    312c:	414d5f45 	cmpmi	sp, r5, asr #30
    3130:	38382058 	ldmdacc	r8!, {r3, r4, r6, sp}
    3134:	45455300 	strbmi	r5, [r5, #-768]	; 0xfffffd00
    3138:	45535f4b 	ldrbmi	r5, [r3, #-3915]	; 0xfffff0b5
    313c:	00302054 	eorseq	r2, r0, r4, asr r0
    3140:	61685f5f 	cmnvs	r8, pc, asr pc
    3144:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
    3148:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    314c:	656e5f65 	strbvs	r5, [lr, #-3941]!	; 0xfffff09b
    3150:	53287478 			; <UNDEFINED> instruction: 0x53287478
    3154:	20295254 	eorcs	r5, r9, r4, asr r2
    3158:	61685f5f 	cmnvs	r8, pc, asr pc
    315c:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
    3160:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    3164:	656e5f65 	strbvs	r5, [lr, #-3941]!	; 0xfffff09b
    3168:	5f5f7478 	svcpl	0x005f7478
    316c:	52545328 	subspl	r5, r4, #40, 6	; 0xa0000000
    3170:	535f0029 	cmppl	pc, #41	; 0x29
    3174:	545f5359 	ldrbpl	r5, [pc], #-857	; 317c <_ctype_+0x7b>
    3178:	53455059 	movtpl	r5, #20569	; 0x5059
    317c:	0020485f 	eoreq	r4, r0, pc, asr r8
    3180:	4e464145 	dvfmism	f4, f6, f5
    3184:	5055534f 	subspl	r5, r5, pc, asr #6
    3188:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    318c:	36303120 	ldrtcc	r3, [r0], -r0, lsr #2
    3190:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 2298 <_ungetc_r+0x94>
    3194:	33544e49 	cmpcc	r4, #1168	; 0x490
    3198:	28435f32 	stmdacs	r3, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    319c:	63202963 			; <UNDEFINED> instruction: 0x63202963
    31a0:	20232320 	eorcs	r2, r3, r0, lsr #6
    31a4:	55004c55 	strpl	r4, [r0, #-3157]	; 0xfffff3ab
    31a8:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    31ac:	00435f34 	subeq	r5, r3, r4, lsr pc
    31b0:	5f43505f 	svcpl	0x0043505f
    31b4:	4e595341 	cdpmi	3, 5, cr5, cr9, cr1, {2}
    31b8:	4f495f43 	svcmi	0x00495f43
    31bc:	5f003920 	svcpl	0x00003920
    31c0:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    31c4:	63775f74 	cmnvs	r7, #116, 30	; 0x1d0
    31c8:	5f726168 	svcpl	0x00726168
    31cc:	20685f74 	rsbcs	r5, r8, r4, ror pc
    31d0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 22d8 <_ungetc_r+0xd4>
    31d4:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    31d8:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    31dc:	205f5f4e 	subscs	r5, pc, lr, asr #30
    31e0:	55302e30 	ldrpl	r2, [r0, #-3632]!	; 0xfffff1d0
    31e4:	525f004b 	subspl	r0, pc, #75	; 0x4b
    31e8:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    31ec:	54424d5f 	strbpl	r4, [r2], #-3423	; 0xfffff2a1
    31f0:	5f43574f 	svcpl	0x0043574f
    31f4:	54415453 	strbpl	r5, [r1], #-1107	; 0xfffffbad
    31f8:	74702845 	ldrbtvc	r2, [r0], #-2117	; 0xfffff7bb
    31fc:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    3200:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    3204:	5f3e2d29 	svcpl	0x003e2d29
    3208:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    320c:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 3160 <_ctype_+0x5f>
    3210:	776f7462 	strbvc	r7, [pc, -r2, ror #8]!
    3214:	74735f63 	ldrbtvc	r5, [r3], #-3939	; 0xfffff09d
    3218:	29657461 	stmdbcs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    321c:	74706f00 	ldrbtvc	r6, [r0], #-3840	; 0xfffff100
    3220:	65736572 	ldrbvs	r6, [r3, #-1394]!	; 0xfffffa8e
    3224:	5f5f0074 	svcpl	0x005f0074
    3228:	5f544c46 	svcpl	0x00544c46
    322c:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    3230:	5f4e4f4c 	svcpl	0x004e4f4c
    3234:	2e31205f 	mrccs	0, 1, r2, cr1, cr15, {2}
    3238:	30323931 	eorscc	r3, r2, r1, lsr r9
    323c:	39383239 	ldmdbcc	r8!, {r0, r3, r4, r5, r9, ip, sp}
    3240:	37303535 			; <UNDEFINED> instruction: 0x37303535
    3244:	35323138 	ldrcc	r3, [r2, #-312]!	; 0xfffffec8
    3248:	46372d65 	ldrtmi	r2, [r7], -r5, ror #26
    324c:	52415500 	subpl	r5, r1, #0, 10
    3250:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
    3254:	4148435f 	cmpmi	r8, pc, asr r3
    3258:	4e454c52 	mcrmi	12, 2, r4, cr5, cr2, {2}
    325c:	425f365f 	subsmi	r3, pc, #99614720	; 0x5f00000
    3260:	30205449 	eorcc	r5, r0, r9, asr #8
    3264:	30303078 	eorscc	r3, r0, r8, ror r0
    3268:	30303030 	eorscc	r3, r0, r0, lsr r0
    326c:	535f0036 	cmppl	pc, #54	; 0x36
    3270:	52545f43 	subspl	r5, r4, #268	; 0x10c
    3274:	5f454341 	svcpl	0x00454341
    3278:	4e455645 	cdpmi	6, 4, cr5, cr5, cr5, {2}
    327c:	414e5f54 	cmpmi	lr, r4, asr pc
    3280:	4d5f454d 	cfldr64mi	mvdx4, [pc, #-308]	; 3154 <_ctype_+0x53>
    3284:	38205841 	stmdacc	r0!, {r0, r6, fp, ip, lr}
    3288:	5f5f0035 	svcpl	0x005f0035
    328c:	52545358 	subspl	r5, r4, #88, 6	; 0x60000001
    3290:	28474e49 	stmdacs	r7, {r0, r3, r6, r9, sl, fp, lr}^
    3294:	5f202978 	svcpl	0x00202978
    3298:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
    329c:	28474e49 	stmdacs	r7, {r0, r3, r6, r9, sl, fp, lr}^
    32a0:	5f002978 	svcpl	0x00002978
    32a4:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    32a8:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    32ac:	705f6574 	subsvc	r6, pc, r4, ror r5	; <UNPREDICTABLE>
    32b0:	5f657275 	svcpl	0x00657275
    32b4:	5f00205f 	svcpl	0x0000205f
    32b8:	545f4353 	ldrbpl	r4, [pc], #-851	; 32c0 <sUsername+0x30>
    32bc:	45434152 	strbmi	r4, [r3, #-338]	; 0xfffffeae
    32c0:	00333820 	eorseq	r3, r3, r0, lsr #16
    32c4:	44444145 	strbmi	r4, [r4], #-325	; 0xfffffebb
    32c8:	544f4e52 	strbpl	r4, [pc], #-3666	; 32d0 <sUsername+0x40>
    32cc:	49415641 	stmdbmi	r1, {r0, r6, r9, sl, ip, lr}^
    32d0:	3231204c 	eorscc	r2, r1, #76	; 0x4c
    32d4:	49450035 	stmdbmi	r5, {r0, r2, r4, r5}^
    32d8:	2052544e 	subscs	r5, r2, lr, asr #8
    32dc:	5f5f0034 	svcpl	0x005f0034
    32e0:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    32e4:	5f464649 	svcpl	0x00464649
    32e8:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    32ec:	69205f5f 	stmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    32f0:	5500746e 	strpl	r7, [r0, #-1134]	; 0xfffffb92
    32f4:	33544e49 	cmpcc	r4, #1168	; 0x490
    32f8:	00435f32 	subeq	r5, r3, r2, lsr pc
    32fc:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    3300:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
    3304:	425f454b 	subsmi	r4, pc, #314572800	; 0x12c00000
    3308:	544c4955 	strbpl	r4, [ip], #-2389	; 0xfffff6ab
    330c:	565f4e49 	ldrbpl	r4, [pc], -r9, asr #28
    3310:	52415241 	subpl	r5, r1, #268435460	; 0x10000004
    3314:	31205347 			; <UNDEFINED> instruction: 0x31205347
    3318:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 2420 <__sfvwrite_r+0x104>
    331c:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    3320:	50455f4d 	subpl	r5, r5, sp, asr #30
    3324:	4f4c4953 	svcmi	0x004c4953
    3328:	205f5f4e 	subscs	r5, pc, lr, asr #30
    332c:	50317830 	eorspl	r7, r1, r0, lsr r8
    3330:	5536312d 	ldrpl	r3, [r6, #-301]!	; 0xfffffed3
    3334:	4e45004b 	cdpmi	0, 4, cr0, cr5, cr11, {2}
    3338:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    333c:	00333220 	eorseq	r3, r3, r0, lsr #4
    3340:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    3344:	00656c61 	rsbeq	r6, r5, r1, ror #24
    3348:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    334c:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    3350:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    3354:	4f48535f 	svcmi	0x0048535f
    3358:	4c5f5452 	cfldrdmi	mvd5, [pc], {82}	; 0x52
    335c:	5f4b434f 	svcpl	0x004b434f
    3360:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    3364:	55003220 	strpl	r3, [r0, #-544]	; 0xfffffde0
    3368:	5f545241 	svcpl	0x00545241
    336c:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    3370:	5f52534d 	svcpl	0x0052534d
    3374:	20535443 	subscs	r5, r3, r3, asr #8
    3378:	30307830 	eorscc	r7, r0, r0, lsr r8
    337c:	30303030 	eorscc	r3, r0, r0, lsr r0
    3380:	55003031 	strpl	r3, [r0, #-49]	; 0xffffffcf
    3384:	5f545241 	svcpl	0x00545241
    3388:	5f525849 	svcpl	0x00525849
    338c:	55465854 	strbpl	r5, [r6, #-2132]	; 0xfffff7ac
    3390:	30204c4c 	eorcc	r4, r0, ip, asr #24
    3394:	30303078 	eorscc	r3, r0, r8, ror r0
    3398:	31303030 	teqcc	r0, r0, lsr r0
    339c:	41550030 	cmpmi	r5, r0, lsr r0
    33a0:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 3260 <sNickname+0x20>
    33a4:	41505f52 	cmpmi	r0, r2, asr pc
    33a8:	59544952 	ldmdbpl	r4, {r1, r4, r6, r8, fp, lr}^
    33ac:	52414d5f 	subpl	r4, r1, #6080	; 0x17c0
    33b0:	7830204b 	ldmdavc	r0!, {r0, r1, r3, r6, sp}
    33b4:	30303030 	eorscc	r3, r0, r0, lsr r0
    33b8:	38313030 	ldmdacc	r1!, {r4, r5, ip, sp}
    33bc:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 24c4 <__sfvwrite_r+0x1a8>
    33c0:	43434153 	movtmi	r4, #12627	; 0x3153
    33c4:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
    33c8:	5f544942 	svcpl	0x00544942
    33cc:	0038205f 	eorseq	r2, r8, pc, asr r0
    33d0:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    33d4:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    33d8:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    33dc:	5345545f 	movtpl	r5, #21599	; 0x545f
    33e0:	4e415f54 	mcrmi	15, 2, r5, cr1, cr4, {2}
    33e4:	45535f44 	ldrbmi	r5, [r3, #-3908]	; 0xfffff0bc
    33e8:	52545f54 	subspl	r5, r4, #84, 30	; 0x150
    33ec:	41564555 	cmpmi	r6, r5, asr r5
    33f0:	0031204c 	eorseq	r2, r1, ip, asr #32
    33f4:	5f43535f 	svcpl	0x0043535f
    33f8:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
    33fc:	495f314c 	ldmdbmi	pc, {r2, r3, r6, r8, ip, sp}^	; <UNPREDICTABLE>
    3400:	48434143 	stmdami	r3, {r0, r1, r6, r8, lr}^
    3404:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    3408:	3120455a 			; <UNDEFINED> instruction: 0x3120455a
    340c:	57003532 	smladxpl	r0, r2, r5, r3
    3410:	5f544e49 	svcpl	0x00544e49
    3414:	204e494d 	subcs	r4, lr, sp, asr #18
    3418:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    341c:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 32ec <__bss_end__+0x4>
    3420:	5f5f4e49 	svcpl	0x005f4e49
    3424:	4d5f5f00 	ldclmi	15, cr5, [pc, #-0]	; 342c <__bss_end__+0x144>
    3428:	5f435349 	svcpl	0x00435349
    342c:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    3430:	20454c42 	subcs	r4, r5, r2, asr #24
    3434:	5f5f0030 	svcpl	0x005f0030
    3438:	4343414c 	movtmi	r4, #12620	; 0x314c
    343c:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
    3440:	5f544942 	svcpl	0x00544942
    3444:	3133205f 	teqcc	r3, pc, asr r0
    3448:	54464500 	strbpl	r4, [r6], #-1280	; 0xfffffb00
    344c:	20455059 	subcs	r5, r5, r9, asr r0
    3450:	5f003937 	svcpl	0x00003937
    3454:	545f4353 	ldrbpl	r4, [pc], #-851	; 345c <__bss_end__+0x174>
    3458:	41455248 	cmpmi	r5, r8, asr #4
    345c:	54535f44 	ldrbpl	r5, [r3], #-3908	; 0xfffff0bc
    3460:	5f4b4341 	svcpl	0x004b4341
    3464:	204e494d 	subcs	r4, lr, sp, asr #18
    3468:	5f003933 	svcpl	0x00003933
    346c:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    3470:	5f003020 	svcpl	0x00003020
    3474:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    3478:	485f3233 	ldmdami	pc, {r0, r1, r4, r5, r9, ip, sp}^	; <UNPREDICTABLE>
    347c:	515f5341 	cmppl	pc, r1, asr #6
    3480:	54454955 	strbpl	r4, [r5], #-2389	; 0xfffff6ab
    3484:	4e414e5f 	mcrmi	14, 2, r4, cr1, cr15, {2}
    3488:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    348c:	43535f00 	cmpmi	r3, #0, 30
    3490:	4948435f 	stmdbmi	r8, {r0, r1, r2, r3, r4, r6, r8, r9, lr}^
    3494:	4d5f444c 	cfldrdmi	mvd4, [pc, #-304]	; 336c <__bss_end__+0x84>
    3498:	31205841 			; <UNDEFINED> instruction: 0x31205841
    349c:	4f5f5f00 	svcmi	0x005f5f00
    34a0:	4c4f5342 	mcrrmi	3, 4, r5, pc, cr2
    34a4:	5f455445 	svcpl	0x00455445
    34a8:	4854414d 	ldmdami	r4, {r0, r2, r3, r6, r8, lr}^
    34ac:	4f5f5f20 	svcmi	0x005f5f20
    34b0:	4c4f5342 	mcrrmi	3, 4, r5, pc, cr2
    34b4:	5f455445 	svcpl	0x00455445
    34b8:	4854414d 	ldmdami	r4, {r0, r2, r3, r6, r8, lr}^
    34bc:	4645445f 			; <UNDEFINED> instruction: 0x4645445f
    34c0:	544c5541 	strbpl	r5, [ip], #-1345	; 0xfffffabf
    34c4:	52504500 	subspl	r4, r0, #0, 10
    34c8:	204f544f 	subcs	r5, pc, pc, asr #8
    34cc:	55003137 	strpl	r3, [r0, #-311]	; 0xfffffec9
    34d0:	5f545241 	svcpl	0x00545241
    34d4:	435f524d 	cmpmi	pc, #-805306364	; 0xd0000004
    34d8:	444f4d48 	strbmi	r4, [pc], #-3400	; 34e0 <__bss_end__+0x1f8>
    34dc:	414d5f45 	cmpmi	sp, r5, asr #30
    34e0:	30204b53 	eorcc	r4, r0, r3, asr fp
    34e4:	30303078 	eorscc	r3, r0, r8, ror r0
    34e8:	30333030 	eorscc	r3, r3, r0, lsr r0
    34ec:	5f5f0030 	svcpl	0x005f0030
    34f0:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    34f4:	5341485f 	movtpl	r4, #6239	; 0x185f
    34f8:	464e495f 			; <UNDEFINED> instruction: 0x464e495f
    34fc:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    3500:	205f5f59 	subscs	r5, pc, r9, asr pc	; <UNPREDICTABLE>
    3504:	535f0031 	cmppl	pc, #49	; 0x31
    3508:	49535f43 	ldmdbmi	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    350c:	45555147 	ldrbmi	r5, [r5, #-327]	; 0xfffffeb9
    3510:	4d5f4555 	cfldr64mi	mvdx4, [pc, #-340]	; 33c4 <__bss_end__+0xdc>
    3514:	31205841 			; <UNDEFINED> instruction: 0x31205841
    3518:	5f5f0038 	svcpl	0x005f0038
    351c:	33434544 	movtcc	r4, #13636	; 0x3544
    3520:	414d5f32 	cmpmi	sp, r2, lsr pc
    3524:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3528:	39392e39 	ldmdbcc	r9!, {r0, r3, r4, r5, r9, sl, fp, sp}
    352c:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    3530:	44363945 	ldrtmi	r3, [r6], #-2373	; 0xfffff6bb
    3534:	49550046 	ldmdbmi	r5, {r1, r2, r6}^
    3538:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    353c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3540:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 2628 <__locale_mb_cur_max+0x10>
    3544:	31544e49 	cmpcc	r4, r9, asr #28
    3548:	414d5f36 	cmpmi	sp, r6, lsr pc
    354c:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3550:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    3554:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    3558:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    355c:	5f30315f 	svcpl	0x0030315f
    3560:	5f505845 	svcpl	0x00505845
    3564:	3033205f 	eorscc	r2, r3, pc, asr r0
    3568:	575f0038 	smmlarpl	pc, r8, r0, r0	; <UNPREDICTABLE>
    356c:	5f544e41 	svcpl	0x00544e41
    3570:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    3574:	4d535f54 	ldclmi	15, cr5, [r3, #-336]	; 0xfffffeb0
    3578:	204c4c41 	subcs	r4, ip, r1, asr #24
    357c:	41550031 	cmpmi	r5, r1, lsr r0
    3580:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 3440 <__bss_end__+0x158>
    3584:	48435f52 	stmdami	r3, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    3588:	454c5241 	strbmi	r5, [ip, #-577]	; 0xfffffdbf
    358c:	414d5f4e 	cmpmi	sp, lr, asr #30
    3590:	30204b53 	eorcc	r4, r0, r3, asr fp
    3594:	30303078 	eorscc	r3, r0, r8, ror r0
    3598:	30303030 	eorscc	r3, r0, r0, lsr r0
    359c:	545f0036 	ldrbpl	r0, [pc], #-54	; 35a4 <__bss_end__+0x2bc>
    35a0:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    35a4:	00205241 	eoreq	r5, r0, r1, asr #4
    35a8:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    35ac:	5f464649 	svcpl	0x00464649
    35b0:	0058414d 	subseq	r4, r8, sp, asr #2
    35b4:	41474145 	cmpmi	r7, r5, asr #2
    35b8:	31204e49 			; <UNDEFINED> instruction: 0x31204e49
    35bc:	5f5f0031 	svcpl	0x005f0031
    35c0:	43554e47 	cmpmi	r5, #1136	; 0x470
    35c4:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
    35c8:	4d53415f 	ldfmie	f4, [r3, #-380]	; 0xfffffe84
    35cc:	5f003320 	svcpl	0x00003320
    35d0:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    35d4:	4f54415f 	svcmi	0x0054415f
    35d8:	5f43494d 	svcpl	0x0043494d
    35dc:	5f4e494d 	svcpl	0x004e494d
    35e0:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    35e4:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    35e8:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    35ec:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    35f0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    35f4:	2d205f5f 	stccs	15, cr5, [r0, #-380]!	; 0xfffffe84
    35f8:	00293120 	eoreq	r3, r9, r0, lsr #2
    35fc:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    3600:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    3604:	4b434548 	blmi	10d4b2c <_end+0xd4b2c>
    3608:	454d455f 	strbmi	r4, [sp, #-1375]	; 0xfffffaa1
    360c:	4e454752 	mcrmi	7, 2, r4, cr5, cr2, {2}
    3610:	76285943 	strtvc	r5, [r8], -r3, asr #18
    3614:	20297261 	eorcs	r7, r9, r1, ror #4
    3618:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    361c:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    3620:	4b434548 	blmi	10d4b48 <_end+0xd4b48>
    3624:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    3628:	655f202c 	ldrbvs	r2, [pc, #-44]	; 3604 <__bss_end__+0x31c>
    362c:	6772656d 	ldrbvs	r6, [r2, -sp, ror #10]!
    3630:	79636e65 	stmdbvc	r3!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
    3634:	6863202c 	stmdavs	r3!, {r2, r3, r5, sp}^
    3638:	2a207261 	bcs	81ffc4 <heap_size+0x7fffc4>
    363c:	525f202c 	subspl	r2, pc, #44	; 0x2c
    3640:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    3644:	454d455f 	strbmi	r4, [sp, #-1375]	; 0xfffffaa1
    3648:	4e454752 	mcrmi	7, 2, r4, cr5, cr2, {2}
    364c:	535f5943 	cmppl	pc, #1097728	; 0x10c000
    3650:	2c455a49 	mcrrcs	10, 4, r5, r5, cr9
    3654:	55002920 	strpl	r2, [r0, #-2336]	; 0xfffff6e0
    3658:	5f544e49 	svcpl	0x00544e49
    365c:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    3660:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 35a4 <__bss_end__+0x2bc>
    3664:	5f205841 	svcpl	0x00205841
    3668:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    366c:	41465f54 	cmpmi	r6, r4, asr pc
    3670:	36315453 			; <UNDEFINED> instruction: 0x36315453
    3674:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3678:	5f005f5f 	svcpl	0x00005f5f
    367c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    3680:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    3684:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    3688:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    368c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    3690:	00666678 	rsbeq	r6, r6, r8, ror r6
    3694:	5f43535f 	svcpl	0x0043535f
    3698:	425f4342 	subsmi	r4, pc, #134217729	; 0x8000001
    369c:	5f455341 	svcpl	0x00455341
    36a0:	2058414d 	subscs	r4, r8, sp, asr #2
    36a4:	5f003735 	svcpl	0x00003735
    36a8:	5f445342 	svcpl	0x00445342
    36ac:	41484357 	cmpmi	r8, r7, asr r3
    36b0:	5f545f52 	svcpl	0x00545f52
    36b4:	425f0020 	subsmi	r0, pc, #32
    36b8:	49534b4c 	ldmdbmi	r3, {r2, r3, r6, r8, r9, fp, lr}^
    36bc:	545f455a 	ldrbpl	r4, [pc], #-1370	; 36c4 <__bss_end__+0x3dc>
    36c0:	4345445f 	movtmi	r4, #21599	; 0x545f
    36c4:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    36c8:	5f002044 	svcpl	0x00002044
    36cc:	545f4353 	ldrbpl	r4, [pc], #-851	; 36d4 <__bss_end__+0x3ec>
    36d0:	41455248 	cmpmi	r5, r8, asr #4
    36d4:	454b5f44 	strbmi	r5, [fp, #-3908]	; 0xfffff0bc
    36d8:	4d5f5359 	ldclmi	3, cr5, [pc, #-356]	; 357c <__bss_end__+0x294>
    36dc:	33205841 			; <UNDEFINED> instruction: 0x33205841
    36e0:	535f0038 	cmppl	pc, #56	; 0x38
    36e4:	525f5359 	subspl	r5, pc, #1677721601	; 0x64000001
    36e8:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    36ec:	205f485f 	subscs	r4, pc, pc, asr r8	; <UNPREDICTABLE>
    36f0:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    36f4:	5f544e45 	svcpl	0x00544e45
    36f8:	505f504d 	subspl	r5, pc, sp, asr #32
    36fc:	70285335 	eorvc	r5, r8, r5, lsr r3
    3700:	20297274 	eorcs	r7, r9, r4, ror r2
    3704:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    3708:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    370c:	2d706d5f 	ldclcs	13, cr6, [r0, #-380]!	; 0xfffffe84
    3710:	35705f3e 	ldrbcc	r5, [r0, #-3902]!	; 0xfffff0c2
    3714:	5f002973 	svcpl	0x00002973
    3718:	6b6f6f63 	blvs	1bdf4ac <_end+0xbdf4ac>
    371c:	45006569 	strmi	r6, [r0, #-1385]	; 0xfffffa97
    3720:	54534f48 	ldrbpl	r4, [r3], #-3912	; 0xfffff0b8
    3724:	4e574f44 	cdpmi	15, 5, cr4, cr7, cr4, {2}
    3728:	37313120 	ldrcc	r3, [r1, -r0, lsr #2]!
    372c:	4e495f00 	cdpmi	15, 4, cr5, cr9, cr0, {0}
    3730:	5f363154 	svcpl	0x00363154
    3734:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    3738:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    373c:	00204445 	eoreq	r4, r0, r5, asr #8
    3740:	7335705f 	teqvc	r5, #95	; 0x5f
    3744:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    3748:	41454c5f 	cmpmi	r5, pc, asr ip
    374c:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    3750:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3754:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3758:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    375c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3760:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 3690 <__bss_end__+0x3a8>
    3764:	5f5f5841 	svcpl	0x005f5841
    3768:	43535f00 	cmpmi	r3, #0, 30
    376c:	504f585f 	subpl	r5, pc, pc, asr r8	; <UNPREDICTABLE>
    3770:	565f4e45 	ldrbpl	r4, [pc], -r5, asr #28
    3774:	49535245 	ldmdbmi	r3, {r0, r2, r6, r9, ip, lr}^
    3778:	31204e4f 			; <UNDEFINED> instruction: 0x31204e4f
    377c:	5f003630 	svcpl	0x00003630
    3780:	4c425346 	mcrrmi	3, 4, r5, r2, cr6
    3784:	544e434b 	strbpl	r4, [lr], #-843	; 0xfffffcb5
    3788:	445f545f 	ldrbmi	r5, [pc], #-1119	; 3790 <__bss_end__+0x4a8>
    378c:	414c4345 	cmpmi	ip, r5, asr #6
    3790:	20444552 	subcs	r4, r4, r2, asr r5
    3794:	735f5f00 	cmpvc	pc, #0, 30
    3798:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    379c:	6b61665f 	blvs	185d120 <_end+0x85d120>
    37a0:	415f0065 	cmpmi	pc, r5, rrx
    37a4:	49584554 	ldmdbmi	r8, {r2, r4, r6, r8, sl, lr}^
    37a8:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
    37ac:	7b205449 	blvc	8188d8 <heap_size+0x7f88d8>
    37b0:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    37b4:	30202c4c 	eorcc	r2, r0, ip, asr #24
    37b8:	5f7b202c 	svcpl	0x007b202c
    37bc:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    37c0:	5f202c7d 	svcpl	0x00202c7d
    37c4:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    37c8:	775f007d 			; <UNDEFINED> instruction: 0x775f007d
    37cc:	5f007364 	svcpl	0x00007364
    37d0:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    37d4:	41454c5f 	cmpmi	r5, pc, asr ip
    37d8:	36315453 			; <UNDEFINED> instruction: 0x36315453
    37dc:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    37e0:	5f5f4854 	svcpl	0x005f4854
    37e4:	00363120 	eorseq	r3, r6, r0, lsr #2
    37e8:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    37ec:	5758525f 			; <UNDEFINED> instruction: 0x5758525f
    37f0:	414d5f4d 	cmpmi	sp, sp, asr #30
    37f4:	30204b53 	eorcc	r4, r0, r3, asr fp
    37f8:	30303078 	eorscc	r3, r0, r8, ror r0
    37fc:	33303030 	teqcc	r0, #48	; 0x30
    3800:	4e490046 	cdpmi	0, 4, cr0, cr9, cr6, {2}
    3804:	52545054 	subspl	r5, r4, #84	; 0x54
    3808:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    380c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 3814 <__bss_end__+0x52c>
    3810:	455f4345 	ldrbmi	r4, [pc, #-837]	; 34d3 <__bss_end__+0x1eb>
    3814:	5f4c4156 	svcpl	0x004c4156
    3818:	4854454d 	ldmdami	r4, {r0, r2, r3, r6, r8, sl, lr}^
    381c:	5f5f444f 	svcpl	0x005f444f
    3820:	5f003220 	svcpl	0x00003220
    3824:	545f4350 	ldrbpl	r4, [pc], #-848	; 382c <__bss_end__+0x544>
    3828:	53454d49 	movtpl	r4, #23881	; 0x5d49
    382c:	504d4154 	subpl	r4, sp, r4, asr r1
    3830:	5345525f 	movtpl	r5, #21087	; 0x525f
    3834:	54554c4f 	ldrbpl	r4, [r5], #-3151	; 0xfffff3b1
    3838:	204e4f49 	subcs	r4, lr, r9, asr #30
    383c:	5f003032 	svcpl	0x00003032
    3840:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
    3844:	504c5f36 	subpl	r5, ip, r6, lsr pc
    3848:	5f474942 	svcpl	0x00474942
    384c:	4246464f 	submi	r4, r6, #82837504	; 0x4f00000
    3850:	5f204749 	svcpl	0x00204749
    3854:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
    3858:	504c5f37 	subpl	r5, ip, r7, lsr pc
    385c:	5f474942 	svcpl	0x00474942
    3860:	4246464f 	submi	r4, r6, #82837504	; 0x4f00000
    3864:	5f004749 	svcpl	0x00004749
    3868:	4c57454e 	cfldr64mi	mvdx4, [r7], {78}	; 0x4e
    386c:	565f4249 	ldrbpl	r4, [pc], -r9, asr #4
    3870:	49535245 	ldmdbmi	r3, {r0, r2, r6, r9, ip, lr}^
    3874:	22204e4f 	eorcs	r4, r0, #1264	; 0x4f0
    3878:	2e302e33 	mrccs	14, 1, r2, cr0, cr3, {1}
    387c:	5f002230 	svcpl	0x00002230
    3880:	5f676973 	svcpl	0x00676973
    3884:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
    3888:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 3890 <__bss_end__+0x5a8>
    388c:	34364345 	ldrtcc	r4, [r6], #-837	; 0xfffffcbb
    3890:	4255535f 	subsmi	r5, r5, #2080374785	; 0x7c000001
    3894:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    3898:	4d5f4c41 	ldclmi	12, cr4, [pc, #-260]	; 379c <__bss_end__+0x4b4>
    389c:	5f5f4e49 	svcpl	0x005f4e49
    38a0:	302e3020 	eorcc	r3, lr, r0, lsr #32
    38a4:	30303030 	eorscc	r3, r0, r0, lsr r0
    38a8:	30303030 	eorscc	r3, r0, r0, lsr r0
    38ac:	30303030 	eorscc	r3, r0, r0, lsr r0
    38b0:	2d453130 	stfcse	f3, [r5, #-192]	; 0xffffff40
    38b4:	44333833 	ldrtmi	r3, [r3], #-2099	; 0xfffff7cd
    38b8:	5f5f0044 	svcpl	0x005f0044
    38bc:	52465355 	subpl	r5, r6, #1409286145	; 0x54000001
    38c0:	5f544341 	svcpl	0x00544341
    38c4:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    38c8:	5f4e4f4c 	svcpl	0x004e4f4c
    38cc:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    38d0:	382d5031 	stmdacc	sp!, {r0, r4, r5, ip, lr}
    38d4:	00524855 	subseq	r4, r2, r5, asr r8
    38d8:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    38dc:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    38e0:	2064696f 	rsbcs	r6, r4, pc, ror #18
    38e4:	2930292a 	ldmdbcs	r0!, {r1, r3, r5, r8, fp, sp}
    38e8:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    38ec:	5f544e45 	svcpl	0x00544e45
    38f0:	43454843 	movtmi	r4, #22595	; 0x5843
    38f4:	504d5f4b 	subpl	r5, sp, fp, asr #30
    38f8:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    38fc:	525f2029 	subspl	r2, pc, #41	; 0x29
    3900:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    3904:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    3908:	76284b43 	strtvc	r4, [r8], -r3, asr #22
    390c:	202c7261 	eorcs	r7, ip, r1, ror #4
    3910:	2c706d5f 	ldclcs	13, cr6, [r0], #-380	; 0xfffffe84
    3914:	72747320 	rsbsvc	r7, r4, #32, 6	; 0x80000000
    3918:	20746375 	rsbscs	r6, r4, r5, ror r3
    391c:	72706d5f 	rsbsvc	r6, r0, #6080	; 0x17c0
    3920:	2a206365 	bcs	81c6bc <heap_size+0x7fc6bc>
    3924:	6973202c 	ldmdbvs	r3!, {r2, r3, r5, sp}^
    3928:	666f657a 			; <UNDEFINED> instruction: 0x666f657a
    392c:	28282a20 	stmdacs	r8!, {r5, r9, fp, sp}
    3930:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    3934:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 3888 <__bss_end__+0x5a0>
    3938:	202c2970 	eorcs	r2, ip, r0, ror r9
    393c:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    3940:	495f544e 	ldmdbmi	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    3944:	5f54494e 	svcpl	0x0054494e
    3948:	7628504d 	strtvc	r5, [r8], -sp, asr #32
    394c:	29297261 	stmdbcs	r9!, {r0, r5, r6, r9, ip, sp, lr}
    3950:	68545f00 	ldmdavs	r4, {r8, r9, sl, fp, ip, lr}^
    3954:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
    3958:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    395c:	5f206c61 	svcpl	0x00206c61
    3960:	7268745f 	rsbvc	r7, r8, #1593835520	; 0x5f000000
    3964:	00646165 	rsbeq	r6, r4, r5, ror #2
    3968:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    396c:	5f524d5f 	svcpl	0x00524d5f
    3970:	49524150 	ldmdbmi	r2, {r4, r6, r8, lr}^
    3974:	535f5954 	cmppl	pc, #84, 18	; 0x150000
    3978:	54464948 	strbpl	r4, [r6], #-2376	; 0xfffff6b8
    397c:	45003320 	strmi	r3, [r0, #-800]	; 0xfffffce0
    3980:	46444142 	strbmi	r4, [r4], -r2, asr #2
    3984:	5f003920 	svcpl	0x00003920
    3988:	5f46464f 	svcpl	0x0046464f
    398c:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    3990:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    3994:	00204445 	eoreq	r4, r0, r5, asr #8
    3998:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    399c:	6c5f746e 	cfldrdvs	mvd7, [pc], {110}	; 0x6e
    39a0:	74736165 	ldrbtvc	r6, [r3], #-357	; 0xfffffe9b
    39a4:	745f3233 	ldrbvc	r3, [pc], #-563	; 39ac <__bss_end__+0x6c4>
    39a8:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    39ac:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    39b0:	5f003120 	svcpl	0x00003120
    39b4:	414c4c5f 	cmpmi	ip, pc, asr ip
    39b8:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    39bc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    39c0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    39c4:	46463758 			; <UNDEFINED> instruction: 0x46463758
    39c8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    39cc:	46464646 	strbmi	r4, [r6], -r6, asr #12
    39d0:	46464646 	strbmi	r4, [r6], -r6, asr #12
    39d4:	332d5046 			; <UNDEFINED> instruction: 0x332d5046
    39d8:	4b4c4c31 	blmi	1316aa4 <_end+0x316aa4>
    39dc:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    39e0:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 3910 <__bss_end__+0x628>
    39e4:	45004e49 	strmi	r4, [r0, #-3657]	; 0xfffff1b7
    39e8:	50495053 	subpl	r5, r9, r3, asr r0
    39ec:	39322045 	ldmdbcc	r2!, {r0, r2, r6, sp}
    39f0:	666f5f00 	strbtvs	r5, [pc], -r0, lsl #30
    39f4:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
    39f8:	52415500 	subpl	r5, r1, #0, 10
    39fc:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
    3a00:	4148435f 	cmpmi	r8, pc, asr r3
    3a04:	4e454c52 	mcrmi	12, 2, r4, cr5, cr2, {2}
    3a08:	425f375f 	subsmi	r3, pc, #24903680	; 0x17c0000
    3a0c:	30205449 	eorcc	r5, r0, r9, asr #8
    3a10:	30303078 	eorscc	r3, r0, r8, ror r0
    3a14:	30303030 	eorscc	r3, r0, r0, lsr r0
    3a18:	425f0034 	subsmi	r0, pc, #52	; 0x34
    3a1c:	505f4453 	subspl	r4, pc, r3, asr r4	; <UNPREDICTABLE>
    3a20:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    3a24:	545f4646 	ldrbpl	r4, [pc], #-1606	; 3a2c <__bss_end__+0x744>
    3a28:	5f00205f 	svcpl	0x0000205f
    3a2c:	53494e55 	movtpl	r4, #40533	; 0x9e55
    3a30:	485f4454 	ldmdami	pc, {r2, r4, r6, sl, lr}^	; <UNPREDICTABLE>
    3a34:	5f00205f 	svcpl	0x0000205f
    3a38:	62747663 	rsbsvs	r7, r4, #103809024	; 0x6300000
    3a3c:	55006675 	strpl	r6, [r0, #-1653]	; 0xfffff98b
    3a40:	5f545241 	svcpl	0x00545241
    3a44:	535f524d 	cmppl	pc, #-805306364	; 0xd0000004
    3a48:	4d504f54 	ldclmi	15, cr4, [r0, #-336]	; 0xfffffeb0
    3a4c:	5f45444f 	svcpl	0x0045444f
    3a50:	46494853 			; <UNDEFINED> instruction: 0x46494853
    3a54:	00362054 	eorseq	r2, r6, r4, asr r0
    3a58:	53555f5f 	cmppl	r5, #380	; 0x17c
    3a5c:	4c5f5245 	lfmmi	f5, 2, [pc], {69}	; 0x45
    3a60:	4c454241 	sfmmi	f4, 2, [r5], {65}	; 0x41
    3a64:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    3a68:	5f584946 	svcpl	0x00584946
    3a6c:	5f00205f 	svcpl	0x0000205f
    3a70:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    3a74:	5f343654 	svcpl	0x00343654
    3a78:	5f58414d 	svcpl	0x0058414d
    3a7c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    3a80:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3a84:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3a88:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3a8c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3a90:	004c4c55 	subeq	r4, ip, r5, asr ip
    3a94:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    3a98:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    3a9c:	4f545254 	svcmi	0x00545254
    3aa0:	414c5f4b 	cmpmi	ip, fp, asr #30
    3aa4:	70285453 	eorvc	r5, r8, r3, asr r4
    3aa8:	20297274 	eorcs	r7, r9, r4, ror r2
    3aac:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    3ab0:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    3ab4:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    3ab8:	5f3e2d63 	svcpl	0x003e2d63
    3abc:	74727473 	ldrbtvc	r7, [r2], #-1139	; 0xfffffb8d
    3ac0:	6c5f6b6f 	mrrcvs	11, 6, r6, pc, cr15	; <UNPREDICTABLE>
    3ac4:	29747361 	ldmdbcs	r4!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    3ac8:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    3acc:	5341465f 	movtpl	r4, #5727	; 0x165f
    3ad0:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 3988 <__bss_end__+0x6a0>
    3ad4:	5f205841 	svcpl	0x00205841
    3ad8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3adc:	5341465f 	movtpl	r4, #5727	; 0x165f
    3ae0:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 3998 <__bss_end__+0x6b0>
    3ae4:	5f5f5841 	svcpl	0x005f5841
    3ae8:	52415500 	subpl	r5, r1, #0, 10
    3aec:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
    3af0:	4b4c435f 	blmi	1314874 <_end+0x314874>
    3af4:	204c4553 	subcs	r4, ip, r3, asr r5
    3af8:	30307830 	eorscc	r7, r0, r0, lsr r8
    3afc:	30303030 	eorscc	r3, r0, r0, lsr r0
    3b00:	5f003130 	svcpl	0x00003130
    3b04:	73626f69 	cmnvc	r2, #420	; 0x1a4
    3b08:	43535f00 	cmpmi	r3, #0, 30
    3b0c:	435f325f 	cmpmi	pc, #-268435451	; 0xf0000005
    3b10:	5645445f 			; <UNDEFINED> instruction: 0x5645445f
    3b14:	39303120 	ldmdbcc	r0!, {r5, r8, ip, sp}
    3b18:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    3b1c:	435f3436 	cmpmi	pc, #905969664	; 0x36000000
    3b20:	20296328 	eorcs	r6, r9, r8, lsr #6
    3b24:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    3b28:	5f343654 	svcpl	0x00343654
    3b2c:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    3b30:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 3b38 <__bss_end__+0x850>
    3b34:	6f6c7972 	svcvs	0x006c7972
    3b38:	5f736b63 	svcpl	0x00736b63
    3b3c:	72616873 	rsbvc	r6, r1, #7536640	; 0x730000
    3b40:	2e286465 	cdpcs	4, 2, cr6, cr8, cr5, {3}
    3b44:	20292e2e 	eorcs	r2, r9, lr, lsr #28
    3b48:	6f6c5f5f 	svcvs	0x006c5f5f
    3b4c:	615f6b63 	cmpvs	pc, r3, ror #22
    3b50:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 3b58 <__bss_end__+0x870>
    3b54:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    3b58:	72616873 	rsbvc	r6, r1, #7536640	; 0x730000
    3b5c:	745f6465 	ldrbvc	r6, [pc], #-1125	; 3b64 <__bss_end__+0x87c>
    3b60:	6f6c7972 	svcvs	0x006c7972
    3b64:	665f6b63 	ldrbvs	r6, [pc], -r3, ror #22
    3b68:	74636e75 	strbtvc	r6, [r3], #-3701	; 0xfffff18b
    3b6c:	286e6f69 	stmdacs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    3b70:	41565f5f 	cmpmi	r6, pc, asr pc
    3b74:	4752415f 			; <UNDEFINED> instruction: 0x4752415f
    3b78:	295f5f53 	ldmdbcs	pc, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3b7c:	5f5f0029 	svcpl	0x005f0029
    3b80:	5f544e49 	svcpl	0x00544e49
    3b84:	5341454c 	movtpl	r4, #5452	; 0x154c
    3b88:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 3a40 <__bss_end__+0x758>
    3b8c:	5f5f5841 	svcpl	0x005f5841
    3b90:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    3b94:	5f5f0066 	svcpl	0x005f0066
    3b98:	5f434347 	svcpl	0x00434347
    3b9c:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 3aa0 <__bss_end__+0x7b8>
    3ba0:	505f4349 	subspl	r4, pc, r9, asr #6
    3ba4:	544e494f 	strbpl	r4, [lr], #-2383	; 0xfffff6b1
    3ba8:	4c5f5245 	lfmmi	f5, 2, [pc], {69}	; 0x45
    3bac:	5f4b434f 	svcpl	0x004b434f
    3bb0:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    3bb4:	5f003220 	svcpl	0x00003220
    3bb8:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    3bbc:	4145465f 	cmpmi	r5, pc, asr r6
    3bc0:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    3bc4:	4942515f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, ip, lr}^
    3bc8:	00312054 	eorseq	r2, r1, r4, asr r0
    3bcc:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    3bd0:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    3bd4:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    3bd8:	4c435f45 	mcrrmi	15, 4, r5, r3, cr5
    3bdc:	0031205a 	eorseq	r2, r1, sl, asr r0
    3be0:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    3be4:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    3be8:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    3bec:	44495f45 	strbmi	r5, [r9], #-3909	; 0xfffff0bb
    3bf0:	5f005649 	svcpl	0x00005649
    3bf4:	4f54415f 	svcmi	0x0054415f
    3bf8:	5f43494d 	svcpl	0x0043494d
    3bfc:	55514341 	ldrbpl	r4, [r1, #-833]	; 0xfffffcbf
    3c00:	20455249 	subcs	r5, r5, r9, asr #4
    3c04:	5f5f0032 	svcpl	0x005f0032
    3c08:	6b636f6c 	blvs	18df9c0 <_end+0x8df9c0>
    3c0c:	68735f73 	ldmdavs	r3!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    3c10:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    3c14:	2e2e2e28 	cdpcs	14, 2, cr2, cr14, cr8, {1}
    3c18:	5f5f2029 	svcpl	0x005f2029
    3c1c:	6b636f6c 	blvs	18df9d4 <_end+0x8df9d4>
    3c20:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    3c24:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    3c28:	68732865 	ldmdavs	r3!, {r0, r2, r5, r6, fp, sp}^
    3c2c:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    3c30:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    3c34:	75665f6b 	strbvc	r5, [r6, #-3947]!	; 0xfffff095
    3c38:	6974636e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    3c3c:	5f286e6f 	svcpl	0x00286e6f
    3c40:	5f41565f 	svcpl	0x0041565f
    3c44:	53475241 	movtpl	r5, #29249	; 0x7241
    3c48:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    3c4c:	736e7500 	cmnvc	lr, #0, 10
    3c50:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    3c54:	69732064 	ldmdbvs	r3!, {r2, r5, r6, sp}^
    3c58:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    3c5c:	4f484500 	svcmi	0x00484500
    3c60:	4e555453 	mrcmi	4, 2, r5, cr5, cr3, {2}
    3c64:	43414552 	movtmi	r4, #5458	; 0x1552
    3c68:	31312048 	teqcc	r1, r8, asr #32
    3c6c:	706f0038 	rsbvc	r0, pc, r8, lsr r0	; <UNPREDICTABLE>
    3c70:	646e6974 	strbtvs	r6, [lr], #-2420	; 0xfffff68c
    3c74:	415f5f00 	cmpmi	pc, r0, lsl #30
    3c78:	535f4d52 	cmppl	pc, #5248	; 0x1480
    3c7c:	4f455a49 	svcmi	0x00455a49
    3c80:	43575f46 	cmpmi	r7, #280	; 0x118
    3c84:	5f524148 	svcpl	0x00524148
    3c88:	00342054 	eorseq	r2, r4, r4, asr r0
    3c8c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    3c90:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    3c94:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3c98:	5058455f 	subspl	r4, r8, pc, asr r5
    3c9c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    3ca0:	00343230 	eorseq	r3, r4, r0, lsr r2
    3ca4:	61685f5f 	cmnvs	r8, pc, asr pc
    3ca8:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
    3cac:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    3cb0:	54532865 	ldrbpl	r2, [r3], #-2149	; 0xfffff79b
    3cb4:	5f202952 	svcpl	0x00202952
    3cb8:	7361685f 	cmnvc	r1, #6225920	; 0x5f0000
    3cbc:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
    3cc0:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
    3cc4:	53285f5f 			; <UNDEFINED> instruction: 0x53285f5f
    3cc8:	00295254 	eoreq	r5, r9, r4, asr r2
    3ccc:	5f43505f 	svcpl	0x0043505f
    3cd0:	48544150 	ldmdami	r4, {r4, r6, r8, lr}^
    3cd4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3cd8:	5f003420 	svcpl	0x00003420
    3cdc:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    3ce0:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    3ce4:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    3ce8:	414d5f32 	cmpmi	sp, r2, lsr pc
    3cec:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3cf0:	66667830 			; <UNDEFINED> instruction: 0x66667830
    3cf4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3cf8:	4c556666 	mrrcmi	6, 6, r6, r5, cr6
    3cfc:	43535f00 	cmpmi	r3, #0, 30
    3d00:	4f49415f 	svcmi	0x0049415f
    3d04:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3d08:	00353320 	eorseq	r3, r5, r0, lsr #6
    3d0c:	42445f5f 	submi	r5, r4, #380	; 0x17c
    3d10:	50455f4c 	subpl	r5, r5, ip, asr #30
    3d14:	4f4c4953 	svcmi	0x004c4953
    3d18:	205f5f4e 	subscs	r5, pc, lr, asr #30
    3d1c:	6f642828 	svcvs	0x00642828
    3d20:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
    3d24:	322e3229 	eorcc	r3, lr, #-1879048190	; 0x90000002
    3d28:	34343032 	ldrtcc	r3, [r4], #-50	; 0xffffffce
    3d2c:	39343036 	ldmdbcc	r4!, {r1, r2, r4, r5, ip, sp}
    3d30:	33303532 	teqcc	r0, #209715200	; 0xc800000
    3d34:	65313331 	ldrvs	r3, [r1, #-817]!	; 0xfffffccf
    3d38:	4c36312d 	ldfmis	f3, [r6], #-180	; 0xffffff4c
    3d3c:	5f5f0029 	svcpl	0x005f0029
    3d40:	6b636f6c 	blvs	18dfaf8 <_end+0x8dfaf8>
    3d44:	7163615f 	cmnvc	r3, pc, asr r1
    3d48:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    3d4c:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    3d50:	2820296b 	stmdacs	r0!, {r0, r1, r3, r5, r6, r8, fp, sp}
    3d54:	696f7628 	stmdbvs	pc!, {r3, r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    3d58:	30202964 	eorcc	r2, r0, r4, ror #18
    3d5c:	5f5f0029 	svcpl	0x005f0029
    3d60:	4152464c 	cmpmi	r2, ip, asr #12
    3d64:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 3c60 <__bss_end__+0x978>
    3d68:	5f5f4e49 	svcpl	0x005f4e49
    3d6c:	302d2820 	eorcc	r2, sp, r0, lsr #16
    3d70:	524c352e 	subpl	r3, ip, #192937984	; 0xb800000
    3d74:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    3d78:	0029524c 	eoreq	r5, r9, ip, asr #4
    3d7c:	5f43535f 	svcpl	0x0043535f
    3d80:	48435f32 	stmdami	r3, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    3d84:	545f5241 	ldrbpl	r5, [pc], #-577	; 3d8c <__bss_end__+0xaa4>
    3d88:	204d5245 	subcs	r5, sp, r5, asr #4
    3d8c:	00373031 	eorseq	r3, r7, r1, lsr r0
    3d90:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    3d94:	575f544e 	ldrbpl	r5, [pc, -lr, asr #8]
    3d98:	54525343 	ldrbpl	r5, [r2], #-835	; 0xfffffcbd
    3d9c:	53424d4f 	movtpl	r4, #11599	; 0x2d4f
    3da0:	4154535f 	cmpmi	r4, pc, asr r3
    3da4:	70284554 	eorvc	r4, r8, r4, asr r5
    3da8:	20297274 	eorcs	r7, r9, r4, ror r2
    3dac:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    3db0:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    3db4:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    3db8:	5f3e2d63 	svcpl	0x003e2d63
    3dbc:	72736377 	rsbsvc	r6, r3, #-603979775	; 0xdc000001
    3dc0:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
    3dc4:	74735f73 	ldrbtvc	r5, [r3], #-3955	; 0xfffff08d
    3dc8:	29657461 	stmdbcs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    3dcc:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3dd0:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    3dd4:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3dd8:	575f3436 	smmlarpl	pc, r6, r4, r3	; <UNPREDICTABLE>
    3ddc:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    3de0:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    3de4:	5f5f0034 	svcpl	0x005f0034
    3de8:	5f544c46 	svcpl	0x00544c46
    3dec:	5f534148 	svcpl	0x00534148
    3df0:	49464e49 	stmdbmi	r6, {r0, r3, r6, r9, sl, fp, lr}^
    3df4:	5954494e 	ldmdbpl	r4, {r1, r2, r3, r6, r8, fp, lr}^
    3df8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    3dfc:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    3e00:	5f544e45 	svcpl	0x00544e45
    3e04:	424f4c47 	submi	r4, pc, #18176	; 0x4700
    3e08:	415f4c41 	cmpmi	pc, r1, asr #24
    3e0c:	49584554 	ldmdbmi	r8, {r2, r4, r6, r8, sl, lr}^
    3e10:	00312054 	eorseq	r2, r1, r4, asr r0
    3e14:	5f43535f 	svcpl	0x0043535f
    3e18:	495f3656 	ldmdbmi	pc, {r1, r2, r4, r6, r9, sl, ip, sp}^	; <UNPREDICTABLE>
    3e1c:	3233504c 	eorscc	r5, r3, #76	; 0x4c
    3e20:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    3e24:	20474942 	subcs	r4, r7, r2, asr #18
    3e28:	5f43535f 	svcpl	0x0043535f
    3e2c:	495f3756 	ldmdbmi	pc, {r1, r2, r4, r6, r8, r9, sl, ip, sp}^	; <UNPREDICTABLE>
    3e30:	3233504c 	eorscc	r5, r3, #76	; 0x4c
    3e34:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    3e38:	00474942 	subeq	r4, r7, r2, asr #18
    3e3c:	43415f5f 	movtmi	r5, #8031	; 0x1f5f
    3e40:	5f4d5543 	svcpl	0x004d5543
    3e44:	5f58414d 	svcpl	0x0058414d
    3e48:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    3e4c:	46464637 			; <UNDEFINED> instruction: 0x46464637
    3e50:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3e54:	35312d50 	ldrcc	r2, [r1, #-3408]!	; 0xfffff2b0
    3e58:	5f5f004b 	svcpl	0x005f004b
    3e5c:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    3e60:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3e64:	30205f5f 	eorcc	r5, r0, pc, asr pc
    3e68:	00663778 	rsbeq	r3, r6, r8, ror r7
    3e6c:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    3e70:	41485f43 	cmpmi	r8, r3, asr #30
    3e74:	445f4556 	ldrbmi	r4, [pc], #-1366	; 3e7c <__bss_end__+0xb94>
    3e78:	46524157 			; <UNDEFINED> instruction: 0x46524157
    3e7c:	46435f32 			; <UNDEFINED> instruction: 0x46435f32
    3e80:	53415f49 	movtpl	r5, #8009	; 0x1f49
    3e84:	0031204d 	eorseq	r2, r1, sp, asr #32
    3e88:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3e8c:	5f38746e 	svcpl	0x0038746e
    3e90:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    3e94:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    3e98:	00312064 	eorseq	r2, r1, r4, rrx
    3e9c:	46535f5f 	usaxmi	r5, r3, pc	; <UNPREDICTABLE>
    3ea0:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    3ea4:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    3ea8:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    3eac:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    3eb0:	302d5248 	eorcc	r5, sp, r8, asr #4
    3eb4:	5248352e 	subpl	r3, r8, #192937984	; 0xb800000
    3eb8:	5f5f0029 	svcpl	0x005f0029
    3ebc:	495f4153 	ldmdbmi	pc, {r0, r1, r4, r6, r8, lr}^	; <UNPREDICTABLE>
    3ec0:	5f544942 	svcpl	0x00544942
    3ec4:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    3ec8:	43535f00 	cmpmi	r3, #0, 30
    3ecc:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    3ed0:	5f314c45 	svcpl	0x00314c45
    3ed4:	43414344 	movtmi	r4, #4932	; 0x1344
    3ed8:	535f4548 	cmppl	pc, #72, 10	; 0x12000000
    3edc:	20455a49 	subcs	r5, r5, r9, asr #20
    3ee0:	00383231 	eorseq	r3, r8, r1, lsr r2
    3ee4:	666f5f5f 	uqsaxvs	r5, pc, pc	; <UNPREDICTABLE>
    3ee8:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
    3eec:	7428666f 	strtvc	r6, [r8], #-1647	; 0xfffff991
    3ef0:	2c657079 	stclcs	0, cr7, [r5], #-484	; 0xfffffe1c
    3ef4:	6c656966 			; <UNDEFINED> instruction: 0x6c656966
    3ef8:	6f202964 	svcvs	0x00202964
    3efc:	65736666 	ldrbvs	r6, [r3, #-1638]!	; 0xfffff99a
    3f00:	28666f74 	stmdacs	r6!, {r2, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
    3f04:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    3f08:	6966202c 	stmdbvs	r6!, {r2, r3, r5, sp}^
    3f0c:	29646c65 	stmdbcs	r4!, {r0, r2, r5, r6, sl, fp, sp, lr}^
    3f10:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 3f18 <__bss_end__+0xc30>
    3f14:	32314345 	eorscc	r4, r1, #335544321	; 0x14000001
    3f18:	414d5f38 	cmpmi	sp, r8, lsr pc
    3f1c:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    3f20:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    3f24:	35343136 	ldrcc	r3, [r4, #-310]!	; 0xfffffeca
    3f28:	43505f00 	cmpmi	r0, #0, 30
    3f2c:	535f325f 	cmppl	pc, #-268435451	; 0xf0000005
    3f30:	494c4d59 	stmdbmi	ip, {r0, r3, r4, r6, r8, sl, fp, lr}^
    3f34:	20534b4e 	subscs	r4, r3, lr, asr #22
    3f38:	5f003331 	svcpl	0x00003331
    3f3c:	4343475f 	movtmi	r4, #14175	; 0x375f
    3f40:	4345495f 	movtmi	r4, #22879	; 0x595f
    3f44:	3935355f 	ldmdbcc	r5!, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp}
    3f48:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; 3dd4 <__bss_end__+0xaec>
    3f4c:	58454c50 	stmdapl	r5, {r4, r6, sl, fp, lr}^
    3f50:	5f003220 	svcpl	0x00003220
    3f54:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    3f58:	205f5f43 	subscs	r5, pc, r3, asr #30
    3f5c:	5f5f0037 	svcpl	0x005f0037
    3f60:	5f4d5241 	svcpl	0x004d5241
    3f64:	36315046 	ldrtcc	r5, [r1], -r6, asr #32
    3f68:	524f465f 	subpl	r4, pc, #99614720	; 0x5f00000
    3f6c:	5f54414d 	svcpl	0x0054414d
    3f70:	45454549 	strbmi	r4, [r5, #-1353]	; 0xfffffab7
    3f74:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 307c <__sf_fake_stdout+0x4>
    3f78:	31544e49 	cmpcc	r4, r9, asr #28
    3f7c:	59545f36 	ldmdbpl	r4, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    3f80:	5f5f4550 	svcpl	0x005f4550
    3f84:	6f687320 	svcvs	0x00687320
    3f88:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
    3f8c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    3f90:	2064656e 	rsbcs	r6, r4, lr, ror #10
    3f94:	00746e69 	rsbseq	r6, r4, r9, ror #28
    3f98:	44534945 	ldrbmi	r4, [r3], #-2373	; 0xfffff6bb
    3f9c:	32205249 	eorcc	r5, r0, #-1879048188	; 0x90000004
    3fa0:	5f5f0031 	svcpl	0x005f0031
    3fa4:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
    3fa8:	745f3233 	ldrbvc	r3, [pc], #-563	; 3fb0 <__bss_end__+0xcc8>
    3fac:	52415500 	subpl	r5, r1, #0, 10
    3fb0:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    3fb4:	4f4c465f 	svcmi	0x004c465f
    3fb8:	4c454457 	cfstrdmi	mvd4, [r5], {87}	; 0x57
    3fbc:	30783020 	rsbscc	r3, r8, r0, lsr #32
    3fc0:	31303030 	teqcc	r0, r0, lsr r0
    3fc4:	00303030 	eorseq	r3, r0, r0, lsr r0
    3fc8:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    3fcc:	5258495f 	subspl	r4, r8, #1556480	; 0x17c000
    3fd0:	554f545f 	strbpl	r5, [pc, #-1119]	; 3b79 <__bss_end__+0x891>
    3fd4:	78302054 	ldmdavc	r0!, {r2, r4, r6, sp}
    3fd8:	30303030 	eorscc	r3, r0, r0, lsr r0
    3fdc:	30303130 	eorscc	r3, r0, r0, lsr r1
    3fe0:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    3fe4:	5f544e45 	svcpl	0x00544e45
    3fe8:	70284d54 	eorvc	r4, r8, r4, asr sp
    3fec:	20297274 	eorcs	r7, r9, r4, ror r2
    3ff0:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    3ff4:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    3ff8:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    3ffc:	69746c61 	ldmdbvs	r4!, {r0, r5, r6, sl, fp, sp, lr}^
    4000:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
    4004:	00296675 	eoreq	r6, r9, r5, ror r6
    4008:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    400c:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    4010:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    4014:	30205f5f 	eorcc	r5, r0, pc, asr pc
    4018:	66666678 			; <UNDEFINED> instruction: 0x66666678
    401c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4020:	004c5566 	subeq	r5, ip, r6, ror #10
    4024:	64735f5f 	ldrbtvs	r5, [r3], #-3935	; 0xfffff0a1
    4028:	6e696469 	cdpvs	4, 6, cr6, cr9, cr9, {3}
    402c:	5f007469 	svcpl	0x00007469
    4030:	4345445f 	movtmi	r4, #21599	; 0x545f
    4034:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 3f70 <__bss_end__+0xc88>
    4038:	455f5841 	ldrbmi	r5, [pc, #-2113]	; 37ff <__bss_end__+0x517>
    403c:	5f5f5058 	svcpl	0x005f5058
    4040:	00373920 	eorseq	r3, r7, r0, lsr #18
    4044:	4e4f4345 	cdpmi	3, 4, cr4, cr15, cr5, {2}
    4048:	4f42414e 	svcmi	0x0042414e
    404c:	44455452 	strbmi	r5, [r5], #-1106	; 0xfffffbae
    4050:	33313120 	teqcc	r1, #32, 2
    4054:	5f545f00 	svcpl	0x00545f00
    4058:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    405c:	4700205f 	smlsdmi	r0, pc, r0, r2	; <UNPREDICTABLE>
    4060:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
    4064:	37203939 			; <UNDEFINED> instruction: 0x37203939
    4068:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
    406c:	31303220 	teqcc	r0, r0, lsr #4
    4070:	32363038 	eorscc	r3, r6, #56	; 0x38
    4074:	72282032 	eorvc	r2, r8, #50	; 0x32
    4078:	61656c65 	cmnvs	r5, r5, ror #24
    407c:	20296573 	eorcs	r6, r9, r3, ror r5
    4080:	4d52415b 	ldfmie	f4, [r2, #-364]	; 0xfffffe94
    4084:	626d652f 	rsbvs	r6, sp, #197132288	; 0xbc00000
    4088:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
    408c:	2d372d64 	ldccs	13, cr2, [r7, #-400]!	; 0xfffffe70
    4090:	6e617262 	cdpvs	2, 6, cr7, cr1, cr2, {3}
    4094:	72206863 	eorvc	r6, r0, #6488064	; 0x630000
    4098:	73697665 	cmnvc	r9, #105906176	; 0x6500000
    409c:	206e6f69 	rsbcs	r6, lr, r9, ror #30
    40a0:	39313632 	ldmdbcc	r1!, {r1, r4, r5, r9, sl, ip, sp}
    40a4:	205d3730 	subscs	r3, sp, r0, lsr r7
    40a8:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
    40ac:	6f633d75 	svcvs	0x00633d75
    40b0:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
    40b4:	2039612d 	eorscs	r6, r9, sp, lsr #2
    40b8:	70666d2d 	rsbvc	r6, r6, sp, lsr #26
    40bc:	66763d75 			; <UNDEFINED> instruction: 0x66763d75
    40c0:	20337670 	eorscs	r7, r3, r0, ror r6
    40c4:	6c666d2d 	stclvs	13, cr6, [r6], #-180	; 0xffffff4c
    40c8:	2d74616f 	ldfcse	f6, [r4, #-444]!	; 0xfffffe44
    40cc:	3d696261 	sfmcc	f6, 2, [r9, #-388]!	; 0xfffffe7c
    40d0:	64726168 	ldrbtvs	r6, [r2], #-360	; 0xfffffe98
    40d4:	67672d20 	strbvs	r2, [r7, -r0, lsr #26]!
    40d8:	20336264 	eorscs	r6, r3, r4, ror #4
    40dc:	20304f2d 	eorscs	r4, r0, sp, lsr #30
    40e0:	6474732d 	ldrbtvs	r7, [r4], #-813	; 0xfffffcd3
    40e4:	3939633d 	ldmdbcc	r9!, {r0, r2, r3, r4, r5, r8, r9, sp, lr}
    40e8:	6f662d20 	svcvs	0x00662d20
    40ec:	2d74696d 			; <UNDEFINED> instruction: 0x2d74696d
    40f0:	6d617266 	sfmvs	f7, 2, [r1, #-408]!	; 0xfffffe68
    40f4:	6f702d65 	svcvs	0x00702d65
    40f8:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
    40fc:	662d2072 			; <UNDEFINED> instruction: 0x662d2072
    4100:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
    4104:	6e617473 	mcrvs	4, 3, r7, cr1, cr3, {3}
    4108:	676e6964 	strbvs	r6, [lr, -r4, ror #18]!
    410c:	615f5f00 	cmpvs	pc, r0, lsl #30
    4110:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    4114:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    4118:	6c616d5f 	stclvs	13, cr6, [r1], #-380	; 0xfffffe84
    411c:	5f636f6c 	svcpl	0x00636f6c
    4120:	5500205f 	strpl	r2, [r0, #-95]	; 0xffffffa1
    4124:	5f545241 	svcpl	0x00545241
    4128:	505f5253 	subspl	r5, pc, r3, asr r2	; <UNPREDICTABLE>
    412c:	54495241 	strbpl	r5, [r9], #-577	; 0xfffffdbf
    4130:	78302059 	ldmdavc	r0!, {r0, r3, r4, r6, sp}
    4134:	30303030 	eorscc	r3, r0, r0, lsr r0
    4138:	30383030 	eorscc	r3, r8, r0, lsr r0
    413c:	535f5f00 	cmppl	pc, #0, 30
    4140:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    4144:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    4148:	5f5f4854 	svcpl	0x005f4854
    414c:	55003820 	strpl	r3, [r0, #-2080]	; 0xfffff7e0
    4150:	5f544e49 	svcpl	0x00544e49
    4154:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    4158:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 409c <__bss_end__+0xdb4>
    415c:	5f005841 	svcpl	0x00005841
    4160:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    4164:	63615f6b 	cmnvs	r1, #428	; 0x1ac
    4168:	72697571 	rsbvc	r7, r9, #473956352	; 0x1c400000
    416c:	65725f65 	ldrbvs	r5, [r2, #-3941]!	; 0xfffff09b
    4170:	73727563 	cmnvc	r2, #415236096	; 0x18c00000
    4174:	28657669 	stmdacs	r5!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
    4178:	6b636f6c 	blvs	18dff30 <_end+0x8dff30>
    417c:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    4180:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    4184:	29302029 	ldmdbcs	r0!, {r0, r3, r5, sp}
    4188:	725f5f00 	subsvc	r5, pc, #0, 30
    418c:	72747365 	rsbsvc	r7, r4, #-1811939327	; 0x94000001
    4190:	20746369 	rsbscs	r6, r4, r9, ror #6
    4194:	74736572 	ldrbtvc	r6, [r3], #-1394	; 0xfffffa8e
    4198:	74636972 	strbtvc	r6, [r3], #-2418	; 0xfffff68e
    419c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 32a4 <sUsername+0x14>
    41a0:	5f544e49 	svcpl	0x00544e49
    41a4:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    41a8:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    41ac:	5f5f4550 	svcpl	0x005f4550
    41b0:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    41b4:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    41b8:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    41bc:	5f5f0074 	svcpl	0x005f0074
    41c0:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    41c4:	5f4d5543 	svcpl	0x004d5543
    41c8:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    41cc:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    41d0:	5f5f0032 	svcpl	0x005f0032
    41d4:	43415246 	movtmi	r5, #4678	; 0x1246
    41d8:	50455f54 	subpl	r5, r5, r4, asr pc
    41dc:	4f4c4953 	svcmi	0x004c4953
    41e0:	205f5f4e 	subscs	r5, pc, lr, asr #30
    41e4:	50317830 	eorspl	r7, r1, r0, lsr r8
    41e8:	5235312d 	eorspl	r3, r5, #1073741835	; 0x4000000b
    41ec:	725f5f00 	subsvc	r5, pc, #0, 30
    41f0:	69757165 	ldmdbvs	r5!, {r0, r2, r5, r6, r8, ip, sp, lr}^
    41f4:	5f736572 	svcpl	0x00736572
    41f8:	6f6c6e75 	svcvs	0x006c6e75
    41fc:	64656b63 	strbtvs	r6, [r5], #-2915	; 0xfffff49d
    4200:	2e2e2e28 	cdpcs	14, 2, cr2, cr14, cr8, {1}
    4204:	5f5f2029 	svcpl	0x005f2029
    4208:	6b636f6c 	blvs	18dffc0 <_end+0x8dffc0>
    420c:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    4210:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    4214:	6f6c2865 	svcvs	0x006c2865
    4218:	5f736b63 	svcpl	0x00736b63
    421c:	6c637865 	stclvs	8, cr7, [r3], #-404	; 0xfffffe6c
    4220:	64656475 	strbtvs	r6, [r5], #-1141	; 0xfffffb8b
    4224:	565f5f28 	ldrbpl	r5, [pc], -r8, lsr #30
    4228:	52415f41 	subpl	r5, r1, #260	; 0x104
    422c:	5f5f5347 	svcpl	0x005f5347
    4230:	5f002929 	svcpl	0x00002929
    4234:	325f4353 	subscc	r4, pc, #1275068417	; 0x4c000001
    4238:	5342505f 	movtpl	r5, #8287	; 0x205f
    423c:	53454d5f 	movtpl	r4, #23903	; 0x5d5f
    4240:	45474153 	strbmi	r4, [r7, #-339]	; 0xfffffead
    4244:	37313120 	ldrcc	r3, [r1, -r0, lsr #2]!
    4248:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    424c:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    4250:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    4254:	30205f5f 	eorcc	r5, r0, pc, asr pc
    4258:	66663778 			; <UNDEFINED> instruction: 0x66663778
    425c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4260:	5f004c66 	svcpl	0x00004c66
    4264:	6e696d5f 	mcrvs	13, 3, r6, cr9, cr15, {2}
    4268:	7a69735f 	bvc	1a60fec <_end+0xa60fec>
    426c:	29782865 	ldmdbcs	r8!, {r0, r2, r5, r6, fp, sp}^
    4270:	61747320 	cmnvs	r4, r0, lsr #6
    4274:	20636974 	rsbcs	r6, r3, r4, ror r9
    4278:	00297828 	eoreq	r7, r9, r8, lsr #16
    427c:	4d49545f 	cfstrdmi	mvd5, [r9, #-380]	; 0xfffffe84
    4280:	545f5245 	ldrbpl	r5, [pc], #-581	; 4288 <__bss_end__+0xfa0>
    4284:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    4288:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    428c:	6c206465 	cfstrsvs	mvf6, [r0], #-404	; 0xfffffe6c
    4290:	00676e6f 	rsbeq	r6, r7, pc, ror #28
    4294:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    4298:	52415f4d 	subpl	r5, r1, #308	; 0x134
    429c:	375f4843 	ldrbcc	r4, [pc, -r3, asr #16]
    42a0:	205f5f41 	subscs	r5, pc, r1, asr #30
    42a4:	4c5f0031 	mrrcmi	0, 3, r0, pc, cr1	; <UNPREDICTABLE>
    42a8:	5f4b434f 	svcpl	0x004b434f
    42ac:	55434552 	strbpl	r4, [r3, #-1362]	; 0xfffffaae
    42b0:	56495352 			; <UNDEFINED> instruction: 0x56495352
    42b4:	00545f45 	subseq	r5, r4, r5, asr #30
    42b8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    42bc:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    42c0:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    42c4:	414d5f34 	cmpmi	sp, r4, lsr pc
    42c8:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    42cc:	66377830 			; <UNDEFINED> instruction: 0x66377830
    42d0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    42d4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    42d8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    42dc:	4c4c6666 	mcrrmi	6, 6, r6, ip, cr6
    42e0:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
    42e4:	5f6c6c75 	svcpl	0x006c6c75
    42e8:	746e6573 	strbtvc	r6, [lr], #-1395	; 0xfffffa8d
    42ec:	6c656e69 	stclvs	14, cr6, [r5], #-420	; 0xfffffe5c
    42f0:	615f5f20 	cmpvs	pc, r0, lsr #30
    42f4:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    42f8:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    42fc:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    4300:	65735f5f 	ldrbvs	r5, [r3, #-3935]!	; 0xfffff0a1
    4304:	6e69746e 	cdpvs	4, 6, cr7, cr9, cr14, {3}
    4308:	5f5f6c65 	svcpl	0x005f6c65
    430c:	5f002929 	svcpl	0x00002929
    4310:	5f66735f 	svcpl	0x0066735f
    4314:	656b6166 	strbvs	r6, [fp, #-358]!	; 0xfffffe9a
    4318:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    431c:	00727265 	rsbseq	r7, r2, r5, ror #4
    4320:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    4324:	54535f5f 	ldrbpl	r5, [r3], #-3935	; 0xfffff0a1
    4328:	544e4944 	strbpl	r4, [lr], #-2372	; 0xfffff6bc
    432c:	0020485f 	eoreq	r4, r0, pc, asr r8
    4330:	5f43535f 	svcpl	0x0043535f
    4334:	49564441 	ldmdbmi	r6, {r0, r6, sl, lr}^
    4338:	59524f53 	ldmdbpl	r2, {r0, r1, r4, r6, r8, r9, sl, fp, lr}^
    433c:	464e495f 			; <UNDEFINED> instruction: 0x464e495f
    4340:	3435204f 	ldrtcc	r2, [r5], #-79	; 0xffffffb1
    4344:	4f4e4500 	svcmi	0x004e4500
    4348:	50555354 	subspl	r5, r5, r4, asr r3
    434c:	34333120 	ldrtcc	r3, [r3], #-288	; 0xfffffee0
    4350:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    4354:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    4358:	4e414d5f 	mcrmi	13, 2, r4, cr1, cr15, {2}
    435c:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    4360:	205f5f47 	subscs	r5, pc, r7, asr #30
    4364:	5f003432 	svcpl	0x00003432
    4368:	6e727265 	cdpvs	2, 7, cr7, cr2, cr5, {3}
    436c:	5f5f006f 	svcpl	0x005f006f
    4370:	53524556 	cmppl	r2, #360710144	; 0x15800000
    4374:	5f4e4f49 	svcpl	0x004e4f49
    4378:	3722205f 			; <UNDEFINED> instruction: 0x3722205f
    437c:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
    4380:	31303220 	teqcc	r0, r0, lsr #4
    4384:	32363038 	eorscc	r3, r6, #56	; 0x38
    4388:	72282032 	eorvc	r2, r8, #50	; 0x32
    438c:	61656c65 	cmnvs	r5, r5, ror #24
    4390:	20296573 	eorcs	r6, r9, r3, ror r5
    4394:	4d52415b 	ldfmie	f4, [r2, #-364]	; 0xfffffe94
    4398:	626d652f 	rsbvs	r6, sp, #197132288	; 0xbc00000
    439c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
    43a0:	2d372d64 	ldccs	13, cr2, [r7, #-400]!	; 0xfffffe70
    43a4:	6e617262 	cdpvs	2, 6, cr7, cr1, cr2, {3}
    43a8:	72206863 	eorvc	r6, r0, #6488064	; 0x630000
    43ac:	73697665 	cmnvc	r9, #105906176	; 0x6500000
    43b0:	206e6f69 	rsbcs	r6, lr, r9, ror #30
    43b4:	39313632 	ldmdbcc	r1!, {r1, r4, r5, r9, sl, ip, sp}
    43b8:	225d3730 	subscs	r3, sp, #48, 14	; 0xc00000
    43bc:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    43c0:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    43c4:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    43c8:	5f4d524f 	svcpl	0x004d524f
    43cc:	5f4e494d 	svcpl	0x004e494d
    43d0:	2e31205f 	mrccs	0, 1, r2, cr1, cr15, {2}
    43d4:	32313034 	eorscc	r3, r1, #52	; 0x34
    43d8:	36343839 			; <UNDEFINED> instruction: 0x36343839
    43dc:	34323334 	ldrtcc	r3, [r2], #-820	; 0xfffffccc
    43e0:	31373138 	teqcc	r7, r8, lsr r1
    43e4:	35342d65 	ldrcc	r2, [r4, #-3429]!	; 0xfffff29b
    43e8:	00323346 	eorseq	r3, r2, r6, asr #6
    43ec:	65735f5f 	ldrbvs	r5, [r3, #-3935]!	; 0xfffff0a1
    43f0:	6f697463 	svcvs	0x00697463
    43f4:	2978286e 	ldmdbcs	r8!, {r1, r2, r3, r5, r6, fp, sp}^
    43f8:	615f5f20 	cmpvs	pc, r0, lsr #30
    43fc:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    4400:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    4404:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    4408:	65735f5f 	ldrbvs	r5, [r3, #-3935]!	; 0xfffff0a1
    440c:	6f697463 	svcvs	0x00697463
    4410:	285f5f6e 	ldmdacs	pc, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    4414:	29292978 	stmdbcs	r9!, {r3, r4, r5, r6, r8, fp, sp}
    4418:	66666f00 	strbtvs	r6, [r6], -r0, lsl #30
    441c:	6f746573 	svcvs	0x00746573
    4420:	59542866 	ldmdbpl	r4, {r1, r2, r5, r6, fp, sp}^
    4424:	4d2c4550 	cfstr32mi	mvfx4, [ip, #-320]!	; 0xfffffec0
    4428:	45424d45 	strbmi	r4, [r2, #-3397]	; 0xfffff2bb
    442c:	5f202952 	svcpl	0x00202952
    4430:	6975625f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
    4434:	6e69746c 	cdpvs	4, 6, cr7, cr9, cr12, {3}
    4438:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
    443c:	6f746573 	svcvs	0x00746573
    4440:	54282066 	strtpl	r2, [r8], #-102	; 0xffffff9a
    4444:	2c455059 	mcrrcs	0, 5, r5, r5, cr9
    4448:	4d454d20 	stclmi	13, cr4, [r5, #-128]	; 0xffffff80
    444c:	29524542 	ldmdbcs	r2, {r1, r6, r8, sl, lr}^
    4450:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 3558 <__bss_end__+0x270>
    4454:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    4458:	28435f34 	stmdacs	r3, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    445c:	63202963 			; <UNDEFINED> instruction: 0x63202963
    4460:	20232320 	eorcs	r2, r3, r0, lsr #6
    4464:	004c4c55 	subeq	r4, ip, r5, asr ip
    4468:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    446c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    4470:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    4474:	545f3436 	ldrbpl	r3, [pc], #-1078	; 447c <__bss_end__+0x1194>
    4478:	5f455059 	svcpl	0x00455059
    447c:	6f6c205f 	svcvs	0x006c205f
    4480:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
    4484:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    4488:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    448c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    4490:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    4494:	48435700 	stmdami	r3, {r8, r9, sl, ip, lr}^
    4498:	4d5f5241 	lfmmi	f5, 2, [pc, #-260]	; 439c <__bss_end__+0x10b4>
    449c:	5f204e49 	svcpl	0x00204e49
    44a0:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    44a4:	4d5f5241 	lfmmi	f5, 2, [pc, #-260]	; 43a8 <__bss_end__+0x10c0>
    44a8:	5f5f4e49 	svcpl	0x005f4e49
    44ac:	43535f00 	cmpmi	r3, #0, 30
    44b0:	4950535f 	ldmdbmi	r0, {r0, r1, r2, r3, r4, r6, r8, r9, ip, lr}^
    44b4:	4f4c5f4e 	svcmi	0x004c5f4e
    44b8:	20534b43 	subscs	r4, r3, r3, asr #22
    44bc:	5f003637 	svcpl	0x00003637
    44c0:	4653555f 			; <UNDEFINED> instruction: 0x4653555f
    44c4:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    44c8:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    44cc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    44d0:	5f5f0038 	svcpl	0x005f0038
    44d4:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    44d8:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    44dc:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    44e0:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    44e4:	3032322e 	eorscc	r3, r2, lr, lsr #4
    44e8:	30363434 	eorscc	r3, r6, r4, lsr r4
    44ec:	35323934 	ldrcc	r3, [r2, #-2356]!	; 0xfffff6cc
    44f0:	33313330 	teqcc	r1, #48, 6	; 0xc0000000
    44f4:	312d6531 			; <UNDEFINED> instruction: 0x312d6531
    44f8:	45004c36 	strmi	r4, [r0, #-3126]	; 0xfffff3ca
    44fc:	53495845 	movtpl	r5, #38981	; 0x9845
    4500:	37312054 			; <UNDEFINED> instruction: 0x37312054
    4504:	52415500 	subpl	r5, r1, #0, 10
    4508:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
    450c:	4f54535f 	svcmi	0x0054535f
    4510:	444f4d50 	strbmi	r4, [pc], #-3408	; 4518 <__bss_end__+0x1230>
    4514:	5f315f45 	svcpl	0x00315f45
    4518:	20544942 	subscs	r4, r4, r2, asr #18
    451c:	30307830 	eorscc	r7, r0, r0, lsr r8
    4520:	30303030 	eorscc	r3, r0, r0, lsr r0
    4524:	45003030 	strmi	r3, [r0, #-48]	; 0xffffffd0
    4528:	52504f4e 	subspl	r4, r0, #312	; 0x138
    452c:	4f4f544f 	svcmi	0x004f544f
    4530:	31205450 			; <UNDEFINED> instruction: 0x31205450
    4534:	5f003930 	svcpl	0x00003930
    4538:	7275705f 	rsbsvc	r7, r5, #95	; 0x5f
    453c:	5f203265 	svcpl	0x00203265
    4540:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    4544:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    4548:	5f5f6574 	svcpl	0x005f6574
    454c:	5f5f2828 	svcpl	0x005f2828
    4550:	736e6f63 	cmnvc	lr, #396	; 0x18c
    4554:	295f5f74 	ldmdbcs	pc, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    4558:	5f5f0029 	svcpl	0x005f0029
    455c:	5f434347 	svcpl	0x00434347
    4560:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 4464 <__bss_end__+0x117c>
    4564:	435f4349 	cmpmi	pc, #603979777	; 0x24000001
    4568:	31524148 	cmpcc	r2, r8, asr #2
    456c:	5f545f36 	svcpl	0x00545f36
    4570:	4b434f4c 	blmi	10d82a8 <_end+0xd82a8>
    4574:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    4578:	00322045 	eorseq	r2, r2, r5, asr #32
    457c:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    4580:	435f5841 	cmpmi	pc, #4259840	; 0x410000
    4584:	20296328 	eorcs	r6, r9, r8, lsr #6
    4588:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    458c:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    4590:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    4594:	5f5f0029 	svcpl	0x005f0029
    4598:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    459c:	4c494241 	sfmmi	f4, 2, [r9], {65}	; 0x41
    45a0:	5f595449 	svcpl	0x00595449
    45a4:	47415250 	smlsldmi	r5, r1, r0, r2
    45a8:	505f414d 	subspl	r4, pc, sp, asr #2
    45ac:	20485355 	subcs	r5, r8, r5, asr r3
    45b0:	69735f00 	ldmdbvs	r3!, {r8, r9, sl, fp, ip, lr}^
    45b4:	6c616e67 	stclvs	14, cr6, [r1], #-412	; 0xfffffe64
    45b8:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
    45bc:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 45c4 <__bss_end__+0x12dc>
    45c0:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 44c0 <__bss_end__+0x11d8>
    45c4:	455f5841 	ldrbmi	r5, [pc, #-2113]	; 3d8b <__bss_end__+0xaa3>
    45c8:	5f5f5058 	svcpl	0x005f5058
    45cc:	32303120 	eorscc	r3, r0, #32, 2
    45d0:	5f5f0034 	svcpl	0x005f0034
    45d4:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 44d8 <__bss_end__+0x11f0>
    45d8:	525f4349 	subspl	r4, pc, #603979777	; 0x24000001
    45dc:	41454c45 	cmpmi	r5, r5, asr #24
    45e0:	33204553 			; <UNDEFINED> instruction: 0x33204553
    45e4:	43535f00 	cmpmi	r3, #0, 30
    45e8:	5f43425f 	svcpl	0x0043425f
    45ec:	5f4d4944 	svcpl	0x004d4944
    45f0:	2058414d 	subscs	r4, r8, sp, asr #2
    45f4:	65003835 	strvs	r3, [r0, #-2101]	; 0xfffff7cb
    45f8:	6f6e7272 	svcvs	0x006e7272
    45fc:	5f2a2820 	svcpl	0x002a2820
    4600:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
    4604:	29286f6e 	stmdbcs	r8!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}
    4608:	5f5f0029 	svcpl	0x005f0029
    460c:	33544c46 	cmpcc	r4, #17920	; 0x4600
    4610:	485f5832 	ldmdami	pc, {r1, r4, r5, fp, ip, lr}^	; <UNPREDICTABLE>
    4614:	445f5341 	ldrbmi	r5, [pc], #-833	; 461c <__bss_end__+0x1334>
    4618:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    461c:	205f5f4d 	subscs	r5, pc, sp, asr #30
    4620:	5f5f0031 	svcpl	0x005f0031
    4624:	5f544c46 	svcpl	0x00544c46
    4628:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
    462c:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    4630:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    4634:	535f0034 	cmppl	pc, #52	; 0x34
    4638:	37565f43 	ldrbcc	r5, [r6, -r3, asr #30]
    463c:	504c495f 	subpl	r4, ip, pc, asr r9
    4640:	4f5f3233 	svcmi	0x005f3233
    4644:	49424646 	stmdbmi	r2, {r1, r2, r6, r9, sl, lr}^
    4648:	33392047 	teqcc	r9, #71	; 0x47
    464c:	41525f00 	cmpmi	r2, r0, lsl #30
    4650:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    4654:	4545535f 	strbmi	r5, [r5, #-863]	; 0xfffffca1
    4658:	20315f44 	eorscs	r5, r1, r4, asr #30
    465c:	61783028 	cmnvs	r8, r8, lsr #32
    4660:	29646362 	stmdbcs	r4!, {r1, r5, r6, r8, r9, sp, lr}^
    4664:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 376c <__bss_end__+0x484>
    4668:	495f5144 	ldmdbmi	pc, {r2, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    466c:	5f544942 	svcpl	0x00544942
    4670:	0030205f 	eorseq	r2, r0, pc, asr r0
    4674:	4f4c475f 	svcmi	0x004c475f
    4678:	5f4c4142 	svcpl	0x004c4142
    467c:	58455441 	stmdapl	r5, {r0, r6, sl, ip, lr}^
    4680:	5f205449 	svcpl	0x00205449
    4684:	626f6c67 	rsbvs	r6, pc, #26368	; 0x6700
    4688:	615f6c61 	cmpvs	pc, r1, ror #24
    468c:	69786574 	ldmdbvs	r8!, {r2, r4, r5, r6, r8, sl, sp, lr}^
    4690:	5f5f0074 	svcpl	0x005f0074
    4694:	5f544e49 	svcpl	0x00544e49
    4698:	5341454c 	movtpl	r4, #5452	; 0x154c
    469c:	5f323354 	svcpl	0x00323354
    46a0:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    46a4:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    46a8:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    46ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
    46b0:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    46b4:	705f746e 	subsvc	r7, pc, lr, ror #8
    46b8:	69647274 	stmdbvs	r4!, {r2, r4, r5, r6, r9, ip, sp, lr}^
    46bc:	745f6666 	ldrbvc	r6, [pc], #-1638	; 46c4 <__bss_end__+0x13dc>
    46c0:	0020685f 	eoreq	r6, r0, pc, asr r8
    46c4:	45445845 	strbmi	r5, [r4, #-2117]	; 0xfffff7bb
    46c8:	38312056 	ldmdacc	r1!, {r1, r2, r4, r6, sp}
    46cc:	52415500 	subpl	r5, r1, #0, 10
    46d0:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
    46d4:	5241505f 	subpl	r5, r1, #95	; 0x5f
    46d8:	5f595449 	svcpl	0x00595449
    46dc:	454e4f4e 	strbmi	r4, [lr, #-3918]	; 0xfffff0b2
    46e0:	30783020 	rsbscc	r3, r8, r0, lsr #32
    46e4:	30303030 	eorscc	r3, r0, r0, lsr r0
    46e8:	00303230 	eorseq	r3, r0, r0, lsr r2
    46ec:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    46f0:	5055535f 	subspl	r5, r5, pc, asr r3
    46f4:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    46f8:	5f5f5f53 	svcpl	0x005f5f53
    46fc:	434e5546 	movtmi	r5, #58694	; 0xe546
    4700:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    4704:	52415500 	subpl	r5, r1, #0, 10
    4708:	41425f54 	cmpmi	r2, r4, asr pc
    470c:	45474455 	strbmi	r4, [r7, #-1109]	; 0xfffffbab
    4710:	49445f4e 	stmdbmi	r4, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    4714:	4c424153 	stfmie	f4, [r2], {83}	; 0x53
    4718:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
    471c:	30303030 	eorscc	r3, r0, r0, lsr r0
    4720:	30303030 	eorscc	r3, r0, r0, lsr r0
    4724:	43535f00 	cmpmi	r3, #0, 30
    4728:	505f325f 	subspl	r3, pc, pc, asr r2	; <UNPREDICTABLE>
    472c:	415f5342 	cmpmi	pc, r2, asr #6
    4730:	554f4343 	strbpl	r4, [pc, #-835]	; 43f5 <__bss_end__+0x110d>
    4734:	4e49544e 	cdpmi	4, 4, cr5, cr9, cr14, {2}
    4738:	31312047 	teqcc	r1, r7, asr #32
    473c:	425f0034 	subsmi	r0, pc, #52	; 0x34
    4740:	6e696769 	cdpvs	7, 6, cr6, cr9, cr9, {3}
    4744:	49460074 	stmdbmi	r6, {r2, r4, r5, r6}^
    4748:	45004f46 	strmi	r4, [r0, #-3910]	; 0xfffff0ba
    474c:	52444441 	subpl	r4, r4, #1090519040	; 0x41000000
    4750:	53554e49 	cmppl	r5, #1168	; 0x490
    4754:	31312045 	teqcc	r1, r5, asr #32
    4758:	545f0032 	ldrbpl	r0, [pc], #-50	; 4760 <__bss_end__+0x1478>
    475c:	5254505f 	subspl	r5, r4, #95	; 0x5f
    4760:	46464944 	strbmi	r4, [r6], -r4, asr #18
    4764:	5f00205f 	svcpl	0x0000205f
    4768:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    476c:	41525f54 	cmpmi	r2, r4, asr pc
    4770:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    4774:	4c554d5f 	mrrcmi	13, 5, r4, r5, cr15
    4778:	74702854 	ldrbtvc	r2, [r0], #-2132	; 0xfffff7ac
    477c:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    4780:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4784:	5f3e2d29 	svcpl	0x003e2d29
    4788:	2d383472 	cfldrscs	mvf3, [r8, #-456]!	; 0xfffffe38
    478c:	756d5f3e 	strbvc	r5, [sp, #-3902]!	; 0xfffff0c2
    4790:	0029746c 	eoreq	r7, r9, ip, ror #8
    4794:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    4798:	445f4c42 	ldrbmi	r4, [pc], #-3138	; 47a0 <__bss_end__+0x14b8>
    479c:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    47a0:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    47a4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    47a8:	34392e34 	ldrtcc	r2, [r9], #-3636	; 0xfffff1cc
    47ac:	36353630 			; <UNDEFINED> instruction: 0x36353630
    47b0:	34383534 	ldrtcc	r3, [r8], #-1332	; 0xfffffacc
    47b4:	36343231 			; <UNDEFINED> instruction: 0x36343231
    47b8:	2d653435 	cfstrdcs	mvd3, [r5, #-212]!	; 0xffffff2c
    47bc:	4c343233 	lfmmi	f3, 4, [r4], #-204	; 0xffffff34
    47c0:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    47c4:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    47c8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    47cc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    47d0:	66663778 			; <UNDEFINED> instruction: 0x66663778
    47d4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    47d8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    47dc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    47e0:	004c4c66 	subeq	r4, ip, r6, ror #24
    47e4:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    47e8:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    47ec:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    47f0:	41535f45 	cmpmi	r3, r5, asr #30
    47f4:	00312054 	eorseq	r2, r1, r4, asr r0
    47f8:	5f43535f 	svcpl	0x0043535f
    47fc:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    4800:	415f4441 	cmpmi	pc, r1, asr #8
    4804:	5f525454 	svcpl	0x00525454
    4808:	43415453 	movtmi	r5, #5203	; 0x1453
    480c:	5a49534b 	bpl	1259540 <_end+0x259540>
    4810:	34342045 	ldrtcc	r2, [r4], #-69	; 0xffffffbb
    4814:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 391c <__bss_end__+0x634>
    4818:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    481c:	5f544341 	svcpl	0x00544341
    4820:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    4824:	30205f5f 	eorcc	r5, r0, pc, asr pc
    4828:	43505f00 	cmpmi	r0, #0, 30
    482c:	4952505f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, ip, lr}^
    4830:	4f495f4f 	svcmi	0x00495f4f
    4834:	00303120 	eorseq	r3, r0, r0, lsr #2
    4838:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    483c:	4d5f5841 	ldclmi	8, cr5, [pc, #-260]	; 4740 <__bss_end__+0x1458>
    4840:	5f205841 	svcpl	0x00205841
    4844:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    4848:	5f58414d 	svcpl	0x0058414d
    484c:	5f58414d 	svcpl	0x0058414d
    4850:	5f5f005f 	svcpl	0x005f005f
    4854:	61656c63 	cmnvs	r5, r3, ror #24
    4858:	0070756e 	rsbseq	r7, r0, lr, ror #10
    485c:	5f43535f 	svcpl	0x0043535f
    4860:	35534258 	ldrbcc	r4, [r3, #-600]	; 0xfffffda8
    4864:	504c495f 	subpl	r4, ip, pc, asr r9
    4868:	4f5f3233 	svcmi	0x005f3233
    486c:	32334646 	eorscc	r4, r3, #73400320	; 0x4600000
    4870:	43535f20 	cmpmi	r3, #32, 30	; 0x80
    4874:	5f37565f 	svcpl	0x0037565f
    4878:	33504c49 	cmpcc	r0, #18688	; 0x4900
    487c:	464f5f32 			; <UNDEFINED> instruction: 0x464f5f32
    4880:	00323346 	eorseq	r3, r2, r6, asr #6
    4884:	4f4f4c45 	svcmi	0x004f4c45
    4888:	32392050 	eorscc	r2, r9, #80	; 0x50
    488c:	454e4500 	strbmi	r4, [lr, #-1280]	; 0xfffffb00
    4890:	53455254 	movtpl	r5, #21076	; 0x5254
    4894:	31205445 			; <UNDEFINED> instruction: 0x31205445
    4898:	5f003632 	svcpl	0x00003632
    489c:	4343475f 	movtmi	r4, #14175	; 0x375f
    48a0:	5641485f 			; <UNDEFINED> instruction: 0x5641485f
    48a4:	59535f45 	ldmdbpl	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    48a8:	435f434e 	cmpmi	pc, #939524097	; 0x38000001
    48ac:	41504d4f 	cmpmi	r0, pc, asr #26
    48b0:	415f4552 	cmpmi	pc, r2, asr r5	; <UNPREDICTABLE>
    48b4:	535f444e 	cmppl	pc, #1308622848	; 0x4e000000
    48b8:	5f504157 	svcpl	0x00504157
    48bc:	00312038 	eorseq	r2, r1, r8, lsr r0
    48c0:	6e6f4e5f 	mcrvs	14, 3, r4, cr15, cr15, {2}
    48c4:	6c6c756e 	cfstr64vs	mvdx7, [ip], #-440	; 0xfffffe48
    48c8:	43570020 	cmpmi	r7, #32
    48cc:	5f524148 	svcpl	0x00524148
    48d0:	0058414d 	subseq	r4, r8, sp, asr #2
    48d4:	6c615f5f 	stclvs	15, cr5, [r1], #-380	; 0xfffffe84
    48d8:	5f636f6c 	svcpl	0x00636f6c
    48dc:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    48e0:	20297828 	eorcs	r7, r9, r8, lsr #16
    48e4:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    48e8:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    48ec:	5f657475 	svcpl	0x00657475
    48f0:	5f28285f 	svcpl	0x0028285f
    48f4:	6c6c615f 	stfvse	f6, [ip], #-380	; 0xfffffe84
    48f8:	735f636f 	cmpvc	pc, #-1140850687	; 0xbc000001
    48fc:	5f657a69 	svcpl	0x00657a69
    4900:	2978285f 	ldmdbcs	r8!, {r0, r1, r2, r3, r4, r6, fp, sp}^
    4904:	5f002929 	svcpl	0x00002929
    4908:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
    490c:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    4910:	41435f34 	cmpmi	r3, r4, lsr pc
    4914:	5f454843 	svcpl	0x00454843
    4918:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    491c:	37333120 	ldrcc	r3, [r3, -r0, lsr #2]!
    4920:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    4924:	5f474e4f 	svcpl	0x00474e4f
    4928:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    492c:	205f5f48 	subscs	r5, pc, r8, asr #30
    4930:	5f003233 	svcpl	0x00003233
    4934:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    4938:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    493c:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    4940:	3230342e 	eorscc	r3, r0, #771751936	; 0x2e000000
    4944:	34333238 	ldrtcc	r3, [r3], #-568	; 0xfffffdc8
    4948:	38333636 	ldmdacc	r3!, {r1, r2, r4, r5, r9, sl, ip, sp}
    494c:	38383235 	ldmdacc	r8!, {r0, r2, r4, r5, r9, ip, sp}
    4950:	332b6536 			; <UNDEFINED> instruction: 0x332b6536
    4954:	45004638 	strmi	r4, [r0, #-1592]	; 0xfffff9c8
    4958:	454d4f4e 	strbmi	r4, [sp, #-3918]	; 0xfffff0b2
    495c:	3231204d 	eorscc	r2, r1, #77	; 0x4d
    4960:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 3a68 <__bss_end__+0x780>
    4964:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    4968:	42465f4d 	submi	r5, r6, #308	; 0x134
    496c:	5f5f5449 	svcpl	0x005f5449
    4970:	00363120 	eorseq	r3, r6, r0, lsr #2
    4974:	61775f5f 	cmnvs	r7, pc, asr pc
    4978:	725f6e72 	subsvc	r6, pc, #1824	; 0x720
    497c:	72656665 	rsbvc	r6, r5, #105906176	; 0x6500000
    4980:	65636e65 	strbvs	r6, [r3, #-3685]!	; 0xfffff19b
    4984:	79732873 	ldmdbvc	r3!, {r0, r1, r4, r5, r6, fp, sp}^
    4988:	736d2c6d 	cmnvc	sp, #27904	; 0x6d00
    498c:	5f202967 	svcpl	0x00202967
    4990:	6d73615f 	ldfvse	f6, [r3, #-380]!	; 0xfffffe84
    4994:	22285f5f 	eorcs	r5, r8, #380	; 0x17c
    4998:	6365732e 	cmnvs	r5, #-1207959552	; 0xb8000000
    499c:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
    49a0:	6e672e20 	cdpvs	14, 6, cr2, cr7, cr0, {1}
    49a4:	61772e75 	cmnvs	r7, r5, ror lr
    49a8:	6e696e72 	mcrvs	14, 3, r6, cr9, cr2, {3}
    49ac:	20222e67 	eorcs	r2, r2, r7, ror #28
    49b0:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    49b4:	5f203b29 	svcpl	0x00203b29
    49b8:	6d73615f 	ldfvse	f6, [r3, #-380]!	; 0xfffffe84
    49bc:	22285f5f 	eorcs	r5, r8, #380	; 0x17c
    49c0:	6373612e 	cmnvs	r3, #-2147483637	; 0x8000000b
    49c4:	5c207a69 			; <UNDEFINED> instruction: 0x5c207a69
    49c8:	6d202222 	sfmvs	f2, 4, [r0, #-136]!	; 0xffffff78
    49cc:	22206773 	eorcs	r6, r0, #30146560	; 0x1cc0000
    49d0:	2922225c 	stmdbcs	r2!, {r2, r3, r4, r6, r9, sp}
    49d4:	5f5f203b 	svcpl	0x005f203b
    49d8:	5f6d7361 	svcpl	0x006d7361
    49dc:	2e22285f 	mcrcs	8, 1, r2, cr2, cr15, {2}
    49e0:	76657270 			; <UNDEFINED> instruction: 0x76657270
    49e4:	73756f69 	cmnvc	r5, #420	; 0x1a4
    49e8:	5f002922 	svcpl	0x00002922
    49ec:	5246555f 	subpl	r5, r6, #398458880	; 0x17c00000
    49f0:	5f544341 	svcpl	0x00544341
    49f4:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    49f8:	5f4e4f4c 	svcpl	0x004e4f4c
    49fc:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    4a00:	312d5031 			; <UNDEFINED> instruction: 0x312d5031
    4a04:	00525536 	subseq	r5, r2, r6, lsr r5
    4a08:	43575f5f 	cmpmi	r7, #380	; 0x17c
    4a0c:	5f524148 	svcpl	0x00524148
    4a10:	5f4e494d 	svcpl	0x004e494d
    4a14:	5530205f 	ldrpl	r2, [r0, #-95]!	; 0xffffffa1
    4a18:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    4a1c:	485f4343 	ldmdami	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    4a20:	5f455641 	svcpl	0x00455641
    4a24:	434e5953 	movtmi	r5, #59731	; 0xe953
    4a28:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; 48b4 <__bss_end__+0x15cc>
    4a2c:	45524150 	ldrbmi	r4, [r2, #-336]	; 0xfffffeb0
    4a30:	444e415f 	strbmi	r4, [lr], #-351	; 0xfffffea1
    4a34:	4157535f 	cmpmi	r7, pc, asr r3
    4a38:	20315f50 	eorscs	r5, r1, r0, asr pc
    4a3c:	5f5f0031 	svcpl	0x005f0031
    4a40:	5f515155 	svcpl	0x00515155
    4a44:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    4a48:	30205f5f 	eorcc	r5, r0, pc, asr pc
    4a4c:	454e5f00 	strbmi	r5, [lr, #-3840]	; 0xfffff100
    4a50:	42494c57 	submi	r4, r9, #22272	; 0x5700
    4a54:	5245565f 	subpl	r5, r5, #99614720	; 0x5f00000
    4a58:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
    4a5c:	5f5f485f 	svcpl	0x005f485f
    4a60:	5f003120 	svcpl	0x00003120
    4a64:	4343475f 	movtmi	r4, #14175	; 0x375f
    4a68:	4f54415f 	svcmi	0x0054415f
    4a6c:	5f43494d 	svcpl	0x0043494d
    4a70:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    4a74:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    4a78:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    4a7c:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    4a80:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 3b88 <__bss_end__+0x8a0>
    4a84:	4343414c 	movtmi	r4, #12620	; 0x314c
    4a88:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 493c <__bss_end__+0x1654>
    4a8c:	5f5f4e49 	svcpl	0x005f4e49
    4a90:	302e3020 	eorcc	r3, lr, r0, lsr #32
    4a94:	004b4c55 	subeq	r4, fp, r5, asr ip
    4a98:	4554415f 	ldrbmi	r4, [r4, #-351]	; 0xfffffea1
    4a9c:	5f544958 	svcpl	0x00544958
    4aa0:	414e5944 	cmpmi	lr, r4, asr #18
    4aa4:	5f43494d 	svcpl	0x0043494d
    4aa8:	4f4c4c41 	svcmi	0x004c4c41
    4aac:	00312043 	eorseq	r2, r1, r3, asr #32
    4ab0:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    4ab4:	735f6465 	cmpvc	pc, #1694498816	; 0x65000000
    4ab8:	5f657a69 	svcpl	0x00657a69
    4abc:	655f0074 	ldrbvs	r0, [pc, #-116]	; 4a50 <__bss_end__+0x1768>
    4ac0:	6772656d 	ldrbvs	r6, [r2, -sp, ror #10]!
    4ac4:	79636e65 	stmdbvc	r3!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
    4ac8:	415f5f00 	cmpmi	pc, r0, lsl #30
    4acc:	415f4d52 	cmpmi	pc, r2, asr sp	; <UNPREDICTABLE>
    4ad0:	20484352 	subcs	r4, r8, r2, asr r3
    4ad4:	49450037 	stmdbmi	r5, {r0, r1, r2, r4, r5}^
    4ad8:	5145534c 	cmppl	r5, ip, asr #6
    4adc:	38333120 	ldmdacc	r3!, {r5, r8, ip, sp}
    4ae0:	43535f00 	cmpmi	r3, #0, 30
    4ae4:	53454d5f 	movtpl	r4, #23903	; 0x5d5f
    4ae8:	45474153 	strbmi	r4, [r7, #-339]	; 0xfffffead
    4aec:	5341505f 	movtpl	r5, #4191	; 0x105f
    4af0:	474e4953 	smlsldmi	r4, lr, r3, r9
    4af4:	00373220 	eorseq	r3, r7, r0, lsr #4
    4af8:	49423245 	stmdbmi	r2, {r0, r2, r6, r9, ip, sp}^
    4afc:	00372047 	eorseq	r2, r7, r7, asr #32
    4b00:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    4b04:	41525f54 	cmpmi	r2, r4, asr pc
    4b08:	5f584944 	svcpl	0x00584944
    4b0c:	0032205f 	eorseq	r2, r2, pc, asr r0
    4b10:	5f43535f 	svcpl	0x0043535f
    4b14:	36565049 	ldrbcc	r5, [r6], -r9, asr #32
    4b18:	00373620 	eorseq	r3, r7, r0, lsr #12
    4b1c:	5f43535f 	svcpl	0x0043535f
    4b20:	45504f58 	ldrbmi	r4, [r0, #-3928]	; 0xfffff0a8
    4b24:	45525f4e 	ldrbmi	r5, [r2, #-3918]	; 0xfffff0b2
    4b28:	49544c41 	ldmdbmi	r4, {r0, r6, sl, fp, lr}^
    4b2c:	545f454d 	ldrbpl	r4, [pc], #-1357	; 4b34 <__bss_end__+0x184c>
    4b30:	41455248 	cmpmi	r5, r8, asr #4
    4b34:	31205344 			; <UNDEFINED> instruction: 0x31205344
    4b38:	5f003230 	svcpl	0x00003230
    4b3c:	43414c5f 	movtmi	r4, #7263	; 0x1c5f
    4b40:	5f4d5543 	svcpl	0x004d5543
    4b44:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    4b48:	5f4e4f4c 	svcpl	0x004e4f4c
    4b4c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    4b50:	332d5031 			; <UNDEFINED> instruction: 0x332d5031
    4b54:	004b4c31 	subeq	r4, fp, r1, lsr ip
    4b58:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    4b5c:	444f4d5f 	strbmi	r4, [pc], #-3423	; 4b64 <__bss_end__+0x187c>
    4b60:	52534d45 	subspl	r4, r3, #4416	; 0x1140
    4b64:	2049525f 	subcs	r5, r9, pc, asr r2
    4b68:	30307830 	eorscc	r7, r0, r0, lsr r8
    4b6c:	30303030 	eorscc	r3, r0, r0, lsr r0
    4b70:	5f003034 	svcpl	0x00003034
    4b74:	4343475f 	movtmi	r4, #14175	; 0x375f
    4b78:	4f54415f 	svcmi	0x0054415f
    4b7c:	5f43494d 	svcpl	0x0043494d
    4b80:	4c4f4f42 	mcrrmi	15, 4, r4, pc, cr2
    4b84:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    4b88:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    4b8c:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    4b90:	6e6f5f00 	cdpvs	15, 6, cr5, cr15, cr0, {0}
    4b94:	6978655f 	ldmdbvs	r8!, {r0, r1, r2, r3, r4, r6, r8, sl, sp, lr}^
    4b98:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
    4b9c:	705f7367 	subsvc	r7, pc, r7, ror #6
    4ba0:	5f007274 	svcpl	0x00007274
    4ba4:	4d5f4350 	ldclmi	3, cr4, [pc, #-320]	; 4a6c <__bss_end__+0x1784>
    4ba8:	495f5841 	ldmdbmi	pc, {r0, r6, fp, ip, lr}^	; <UNPREDICTABLE>
    4bac:	5455504e 	ldrbpl	r5, [r5], #-78	; 0xffffffb2
    4bb0:	5f003220 	svcpl	0x00003220
    4bb4:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    4bb8:	41485f4c 	cmpmi	r8, ip, asr #30
    4bbc:	55515f53 	ldrbpl	r5, [r1, #-3923]	; 0xfffff0ad
    4bc0:	5f544549 	svcpl	0x00544549
    4bc4:	5f4e414e 	svcpl	0x004e414e
    4bc8:	0031205f 	eorseq	r2, r1, pc, asr r0
    4bcc:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    4bd0:	4e5f6465 	cdpmi	4, 5, cr6, cr15, cr5, {3}
    4bd4:	004c4c55 	subeq	r4, ip, r5, asr ip
    4bd8:	49484345 	stmdbmi	r8, {r0, r2, r6, r8, r9, lr}^
    4bdc:	3120444c 			; <UNDEFINED> instruction: 0x3120444c
    4be0:	5f5f0030 	svcpl	0x005f0030
    4be4:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    4be8:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    4bec:	49575f47 	ldmdbmi	r7, {r0, r1, r2, r6, r8, r9, sl, fp, ip, lr}^
    4bf0:	5f485444 	svcpl	0x00485444
    4bf4:	3436205f 	ldrtcc	r2, [r6], #-95	; 0xffffffa1
    4bf8:	43535f00 	cmpmi	r3, #0, 30
    4bfc:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    4c00:	5f334c45 	svcpl	0x00334c45
    4c04:	48434143 	stmdami	r3, {r0, r1, r6, r8, lr}^
    4c08:	494c5f45 	stmdbmi	ip, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    4c0c:	4953454e 	ldmdbmi	r3, {r1, r2, r3, r6, r8, sl, lr}^
    4c10:	3120455a 			; <UNDEFINED> instruction: 0x3120455a
    4c14:	55003633 	strpl	r3, [r0, #-1587]	; 0xfffff9cd
    4c18:	5f545241 	svcpl	0x00545241
    4c1c:	4544454d 	strbmi	r4, [r4, #-1357]	; 0xfffffab3
    4c20:	5f52534d 	svcpl	0x0052534d
    4c24:	20584952 	subscs	r4, r8, r2, asr r9
    4c28:	30307830 	eorscc	r7, r0, r0, lsr r8
    4c2c:	30303030 	eorscc	r3, r0, r0, lsr r0
    4c30:	5f003430 	svcpl	0x00003430
    4c34:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    4c38:	41465f54 	cmpmi	r6, r4, asr pc
    4c3c:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    4c40:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    4c44:	30205f5f 	eorcc	r5, r0, pc, asr pc
    4c48:	66666678 			; <UNDEFINED> instruction: 0x66666678
    4c4c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4c50:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4c54:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4c58:	4c4c5566 	cfstr64mi	mvdx5, [ip], {102}	; 0x66
    4c5c:	43535f00 	cmpmi	r3, #0, 30
    4c60:	5248545f 	subpl	r5, r8, #1593835520	; 0x5f000000
    4c64:	5f444145 	svcpl	0x00444145
    4c68:	55424f52 	strbpl	r4, [r2, #-3922]	; 0xfffff0ae
    4c6c:	505f5453 	subspl	r5, pc, r3, asr r4	; <UNPREDICTABLE>
    4c70:	5f4f4952 	svcpl	0x004f4952
    4c74:	544f5250 	strbpl	r5, [pc], #-592	; 4c7c <__bss_end__+0x1994>
    4c78:	20544345 	subscs	r4, r4, r5, asr #6
    4c7c:	00333231 	eorseq	r3, r3, r1, lsr r2
    4c80:	49424645 	stmdbmi	r2, {r0, r2, r6, r9, sl, lr}^
    4c84:	37322047 	ldrcc	r2, [r2, -r7, asr #32]!
    4c88:	485f5f00 	ldmdami	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    4c8c:	42495f41 	submi	r5, r9, #260	; 0x104
    4c90:	5f5f5449 	svcpl	0x005f5449
    4c94:	5f003820 	svcpl	0x00003820
    4c98:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    4c9c:	5f525450 	svcpl	0x00525450
    4ca0:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    4ca4:	205f5f48 	subscs	r5, pc, r8, asr #30
    4ca8:	5f003233 	svcpl	0x00003233
    4cac:	6c67735f 	stclvs	3, cr7, [r7], #-380	; 0xfffffe84
    4cb0:	5f006575 	svcpl	0x00006575
    4cb4:	4343475f 	movtmi	r4, #14175	; 0x375f
    4cb8:	4f54415f 	svcmi	0x0054415f
    4cbc:	5f43494d 	svcpl	0x0043494d
    4cc0:	4e4f4c4c 	cdpmi	12, 4, cr4, cr15, cr12, {2}
    4cc4:	4f4c5f47 	svcmi	0x004c5f47
    4cc8:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
    4ccc:	20454552 	subcs	r4, r5, r2, asr r5
    4cd0:	535f0032 	cmppl	pc, #50	; 0x32
    4cd4:	454c5f43 	strbmi	r5, [ip, #-3907]	; 0xfffff0bd
    4cd8:	314c4556 	cmpcc	ip, r6, asr r5
    4cdc:	4143495f 	cmpmi	r3, pc, asr r9
    4ce0:	5f454843 	svcpl	0x00454843
    4ce4:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    4ce8:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    4cec:	37323120 	ldrcc	r3, [r2, -r0, lsr #2]!
    4cf0:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    4cf4:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    4cf8:	494d5f58 	stmdbmi	sp, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    4cfc:	205f5f4e 	subscs	r5, pc, lr, asr #30
    4d00:	32322e32 	eorscc	r2, r2, #800	; 0x320
    4d04:	33373035 	teqcc	r7, #53	; 0x35
    4d08:	35383538 	ldrcc	r3, [r8, #-1336]!	; 0xfffffac8
    4d0c:	30323730 	eorscc	r3, r2, r0, lsr r7
    4d10:	2d653431 	cfstrdcs	mvd3, [r5, #-196]!	; 0xffffff3c
    4d14:	46383033 			; <UNDEFINED> instruction: 0x46383033
    4d18:	00783233 	rsbseq	r3, r8, r3, lsr r2
    4d1c:	5f544e49 	svcpl	0x00544e49
    4d20:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    4d24:	494d5f38 	stmdbmi	sp, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    4d28:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    4d2c:	5f544e49 	svcpl	0x00544e49
    4d30:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    4d34:	414d5f38 	cmpmi	sp, r8, lsr pc
    4d38:	202d2058 	eorcs	r2, sp, r8, asr r0
    4d3c:	5f002931 	svcpl	0x00002931
    4d40:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    4d44:	6e695f64 	cdpvs	15, 6, cr5, cr9, cr4, {3}
    4d48:	70797474 	rsbsvc	r7, r9, r4, ror r4
    4d4c:	5f007365 	svcpl	0x00007365
    4d50:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    4d54:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 4c84 <__bss_end__+0x199c>
    4d58:	455f5841 	ldrbmi	r5, [pc, #-2113]	; 451f <__bss_end__+0x1237>
    4d5c:	5f5f5058 	svcpl	0x005f5058
    4d60:	32303120 	eorscc	r3, r0, #32, 2
    4d64:	5f5f0034 	svcpl	0x005f0034
    4d68:	41484357 	cmpmi	r8, r7, asr r3
    4d6c:	20545f52 	subscs	r5, r4, r2, asr pc
    4d70:	46504500 	ldrbmi	r4, [r0], -r0, lsl #10
    4d74:	55534f4e 	ldrbpl	r4, [r3, #-3918]	; 0xfffff0b2
    4d78:	524f5050 	subpl	r5, pc, #80	; 0x50
    4d7c:	36392054 			; <UNDEFINED> instruction: 0x36392054
    4d80:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    4d84:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    4d88:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    4d8c:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    4d90:	3532322e 	ldrcc	r3, [r2, #-558]!	; 0xfffffdd2
    4d94:	38333730 	ldmdacc	r3!, {r4, r5, r8, r9, sl, ip, sp}
    4d98:	30353835 	eorscc	r3, r5, r5, lsr r8
    4d9c:	31303237 	teqcc	r0, r7, lsr r2
    4da0:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    4da4:	36463830 			; <UNDEFINED> instruction: 0x36463830
    4da8:	5f5f0034 	svcpl	0x005f0034
    4dac:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    4db0:	745f3233 	ldrbvc	r3, [pc], #-563	; 4db8 <__bss_end__+0x1ad0>
    4db4:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    4db8:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    4dbc:	5f003120 	svcpl	0x00003120
    4dc0:	6d6d6167 	stfvse	f6, [sp, #-412]!	; 0xfffffe64
    4dc4:	69735f61 	ldmdbvs	r3!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
    4dc8:	61676e67 	cmnvs	r7, r7, ror #28
    4dcc:	485f006d 	ldmdami	pc, {r0, r2, r3, r5, r6}^	; <UNPREDICTABLE>
    4dd0:	5f455641 	svcpl	0x00455641
    4dd4:	495f4343 	ldmdbmi	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    4dd8:	4249484e 	submi	r4, r9, #5111808	; 0x4e0000
    4ddc:	4c5f5449 	cfldrdmi	mvd5, [pc], {73}	; 0x49
    4de0:	5f504f4f 	svcpl	0x00504f4f
    4de4:	4c5f4f54 	mrrcmi	15, 5, r4, pc, cr4	; <UNPREDICTABLE>
    4de8:	41434249 	cmpmi	r3, r9, asr #4
    4dec:	31204c4c 			; <UNDEFINED> instruction: 0x31204c4c
    4df0:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    4df4:	455f544c 	ldrbmi	r5, [pc, #-1100]	; 49b0 <__bss_end__+0x16c8>
    4df8:	5f4c4156 	svcpl	0x004c4156
    4dfc:	4854454d 	ldmdami	r4, {r0, r2, r3, r6, r8, sl, lr}^
    4e00:	545f444f 	ldrbpl	r4, [pc], #-1103	; 4e08 <__bss_end__+0x1b20>
    4e04:	38315f53 	ldmdacc	r1!, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}
    4e08:	5f313636 	svcpl	0x00313636
    4e0c:	205f5f33 	subscs	r5, pc, r3, lsr pc	; <UNPREDICTABLE>
    4e10:	5f5f0030 	svcpl	0x005f0030
    4e14:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    4e18:	4c494241 	sfmmi	f4, 2, [r9], {65}	; 0x41
    4e1c:	5f595449 	svcpl	0x00595449
    4e20:	47415250 	smlsldmi	r5, r1, r0, r2
    4e24:	505f414d 	subspl	r4, pc, sp, asr #2
    4e28:	0020504f 	eoreq	r5, r0, pc, asr #32
    4e2c:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    4e30:	575f544e 	ldrbpl	r5, [pc, -lr, asr #8]
    4e34:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    4e38:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    4e3c:	5f5f0032 	svcpl	0x005f0032
    4e40:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    4e44:	59545f34 	ldmdbpl	r4, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    4e48:	5f5f4550 	svcpl	0x005f4550
    4e4c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    4e50:	6f6c2067 	svcvs	0x006c2067
    4e54:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
    4e58:	5f00746e 	svcpl	0x0000746e
    4e5c:	52464c5f 	subpl	r4, r6, #24320	; 0x5f00
    4e60:	5f544341 	svcpl	0x00544341
    4e64:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    4e68:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    4e6c:	5f5f0031 	svcpl	0x005f0031
    4e70:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    4e74:	5449425f 	strbpl	r4, [r9], #-607	; 0xfffffda1
    4e78:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    4e7c:	4f4e4500 	svcmi	0x004e4500
    4e80:	2047534d 	subcs	r5, r7, sp, asr #6
    4e84:	5f003533 	svcpl	0x00003533
    4e88:	5a49535f 	bpl	1259c0c <_end+0x259c0c>
    4e8c:	5f464f45 	svcpl	0x00464f45
    4e90:	41484357 	cmpmi	r8, r7, asr r3
    4e94:	5f545f52 	svcpl	0x00545f52
    4e98:	0034205f 	eorseq	r2, r4, pc, asr r0
    4e9c:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    4ea0:	5541425f 	strbpl	r4, [r1, #-607]	; 0xfffffda1
    4ea4:	4e454744 	cdpmi	7, 4, cr4, cr5, cr4, {2}
    4ea8:	3531315f 	ldrcc	r3, [r1, #-351]!	; 0xfffffea1
    4eac:	20303032 	eorscs	r3, r0, r2, lsr r0
    4eb0:	5f003236 	svcpl	0x00003236
    4eb4:	4453425f 	ldrbmi	r4, [r3], #-607	; 0xfffffda1
    4eb8:	5349565f 	movtpl	r5, #38495	; 0x965f
    4ebc:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    4ec0:	5f003020 	svcpl	0x00003020
    4ec4:	6572705f 	ldrbvs	r7, [r2, #-95]!	; 0xffffffa1
    4ec8:	74636964 	strbtvc	r6, [r3], #-2404	; 0xfffff69c
    4ecc:	6c61665f 	stclvs	6, cr6, [r1], #-380	; 0xfffffe84
    4ed0:	65286573 	strvs	r6, [r8, #-1395]!	; 0xfffffa8d
    4ed4:	20297078 	eorcs	r7, r9, r8, ror r0
    4ed8:	75625f5f 	strbvc	r5, [r2, #-3935]!	; 0xfffff0a1
    4edc:	69746c69 	ldmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    4ee0:	78655f6e 	stmdavc	r5!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    4ee4:	74636570 	strbtvc	r6, [r3], #-1392	; 0xfffffa90
    4ee8:	78652828 	stmdavc	r5!, {r3, r5, fp, sp}^
    4eec:	202c2970 	eorcs	r2, ip, r0, ror r9
    4ef0:	5f002930 	svcpl	0x00002930
    4ef4:	585f4353 	ldmdapl	pc, {r0, r1, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    4ef8:	4e45504f 	cdpmi	0, 4, cr5, cr5, cr15, {2}
    4efc:	4d48535f 	stclmi	3, cr5, [r8, #-380]	; 0xfffffe84
    4f00:	33303120 	teqcc	r0, #32, 2
    4f04:	534d4500 	movtpl	r4, #54528	; 0xd500
    4f08:	5a495347 	bpl	1259c2c <_end+0x259c2c>
    4f0c:	32312045 	eorscc	r2, r1, #69	; 0x45
    4f10:	5f5f0032 	svcpl	0x005f0032
    4f14:	6e6e6f6e 	cdpvs	15, 6, cr6, cr14, cr14, {3}
    4f18:	5f6c6c75 	svcpl	0x006c6c75
    4f1c:	206c6c61 	rsbcs	r6, ip, r1, ror #24
    4f20:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    4f24:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    4f28:	5f657475 	svcpl	0x00657475
    4f2c:	5f28285f 	svcpl	0x0028285f
    4f30:	6e6f6e5f 	mcrvs	14, 3, r6, cr15, cr15, {2}
    4f34:	6c6c756e 	cfstr64vs	mvdx7, [ip], #-440	; 0xfffffe48
    4f38:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    4f3c:	52415500 	subpl	r5, r1, #0, 10
    4f40:	58495f54 	stmdapl	r9, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    4f44:	58525f52 	ldmdapl	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    4f48:	4c4c5546 	cfstr64mi	mvdx5, [ip], {70}	; 0x46
    4f4c:	30783020 	rsbscc	r3, r8, r0, lsr #32
    4f50:	30303030 	eorscc	r3, r0, r0, lsr r0
    4f54:	00343030 	eorseq	r3, r4, r0, lsr r0
    4f58:	5f43535f 	svcpl	0x0043535f
    4f5c:	524f5053 	subpl	r5, pc, #83	; 0x53
    4f60:	43494441 	movtmi	r4, #37953	; 0x9441
    4f64:	5245535f 	subpl	r5, r5, #2080374785	; 0x7c000001
    4f68:	20524556 	subscs	r4, r2, r6, asr r5
    4f6c:	5f003737 	svcpl	0x00003737
    4f70:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
    4f74:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
    4f78:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    4f7c:	494d5f38 	stmdbmi	sp, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    4f80:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    4f84:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    4f88:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    4f8c:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    4f90:	41550029 	cmpmi	r5, r9, lsr #32
    4f94:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    4f98:	41525f52 	cmpmi	r2, r2, asr pc
    4f9c:	56495443 	strbpl	r5, [r9], -r3, asr #8
    4fa0:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
    4fa4:	30303030 	eorscc	r3, r0, r0, lsr r0
    4fa8:	30303430 	eorscc	r3, r0, r0, lsr r4
    4fac:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 40b4 <__bss_end__+0xdcc>
    4fb0:	43415246 	movtmi	r5, #4678	; 0x1246
    4fb4:	414d5f54 	cmpmi	sp, r4, asr pc
    4fb8:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    4fbc:	46465830 			; <UNDEFINED> instruction: 0x46465830
    4fc0:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    4fc4:	52553631 	subspl	r3, r5, #51380224	; 0x3100000
    4fc8:	52415500 	subpl	r5, r1, #0, 10
    4fcc:	52435f54 	subpl	r5, r3, #84, 30	; 0x150
    4fd0:	5f4e455f 	svcpl	0x004e455f
    4fd4:	5f534944 	svcpl	0x00534944
    4fd8:	4b53414d 	blmi	14d5514 <_end+0x4d5514>
    4fdc:	30783020 	rsbscc	r3, r8, r0, lsr #32
    4fe0:	30303030 	eorscc	r3, r0, r0, lsr r0
    4fe4:	00433330 	subeq	r3, r3, r0, lsr r3
    4fe8:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    4fec:	6c5f746e 	cfldrdvs	mvd7, [pc], {110}	; 0x6e
    4ff0:	74736165 	ldrbtvc	r6, [r3], #-357	; 0xfffffe9b
    4ff4:	745f3436 	ldrbvc	r3, [pc], #-1078	; 4ffc <__bss_end__+0x1d14>
    4ff8:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    4ffc:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    5000:	5f003120 	svcpl	0x00003120
    5004:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    5008:	445f545f 	ldrbmi	r5, [pc], #-1119	; 5010 <__bss_end__+0x1d28>
    500c:	414c4345 	cmpmi	ip, r5, asr #6
    5010:	20444552 	subcs	r4, r4, r2, asr r5
    5014:	6c415f00 	mcrrvs	15, 0, r5, r1, cr0
    5018:	6f6e6769 	svcvs	0x006e6769
    501c:	29782866 	ldmdbcs	r8!, {r1, r2, r5, r6, fp, sp}^
    5020:	615f5f20 	cmpvs	pc, r0, lsr #30
    5024:	6e67696c 	vnmulvs.f16	s13, s14, s25	; <UNPREDICTABLE>
    5028:	7828666f 	stmdavc	r8!, {r0, r1, r2, r3, r5, r6, r9, sl, sp, lr}
    502c:	5f5f0029 	svcpl	0x005f0029
    5030:	4f524854 	svcmi	0x00524854
    5034:	5f002057 	svcpl	0x00002057
    5038:	65756c67 	ldrbvs	r6, [r5, #-3175]!	; 0xfffff399
    503c:	626d5f00 	rsbvs	r5, sp, #0, 30
    5040:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    5044:	00745f65 	rsbseq	r5, r4, r5, ror #30
    5048:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
    504c:	4e49006e 	cdpmi	0, 4, cr0, cr9, cr14, {3}
    5050:	41465f54 	cmpmi	r6, r4, asr pc
    5054:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    5058:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    505c:	492d2820 	pushmi	{r5, fp, sp}
    5060:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    5064:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    5068:	414d5f34 	cmpmi	sp, r4, lsr pc
    506c:	202d2058 	eorcs	r2, sp, r8, asr r0
    5070:	5f002931 	svcpl	0x00002931
    5074:	5246535f 	subpl	r5, r6, #2080374785	; 0x7c000001
    5078:	5f544341 	svcpl	0x00544341
    507c:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    5080:	30205f5f 	eorcc	r5, r0, pc, asr pc
    5084:	52415500 	subpl	r5, r1, #0, 10
    5088:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    508c:	4341545f 	movtmi	r5, #5215	; 0x145f
    5090:	45564954 	ldrbmi	r4, [r6, #-2388]	; 0xfffff6ac
    5094:	30783020 	rsbscc	r3, r8, r0, lsr #32
    5098:	30303030 	eorscc	r3, r0, r0, lsr r0
    509c:	00303038 	eorseq	r3, r0, r8, lsr r0
    50a0:	44414245 	strbmi	r4, [r1], #-581	; 0xfffffdbb
    50a4:	2047534d 	subcs	r5, r7, sp, asr #6
    50a8:	55003737 	strpl	r3, [r0, #-1847]	; 0xfffff8c9
    50ac:	5f545241 	svcpl	0x00545241
    50b0:	435f524d 	cmpmi	pc, #-805306364	; 0xd0000004
    50b4:	444f4d48 	strbmi	r4, [pc], #-3400	; 50bc <__bss_end__+0x1dd4>
    50b8:	43455f45 	movtmi	r5, #24389	; 0x5f45
    50bc:	30204f48 	eorcc	r4, r0, r8, asr #30
    50c0:	30303078 	eorscc	r3, r0, r8, ror r0
    50c4:	30313030 	eorscc	r3, r1, r0, lsr r0
    50c8:	525f0030 	subspl	r0, pc, #48	; 0x30
    50cc:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    50d0:	414d535f 	cmpmi	sp, pc, asr r3
    50d4:	435f4c4c 	cmpmi	pc, #76, 24	; 0x4c00
    50d8:	4b434548 	blmi	10d6600 <_end+0xd6600>
    50dc:	494e495f 	stmdbmi	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    50e0:	74702854 	ldrbtvc	r2, [r0], #-2132	; 0xfffff7ac
    50e4:	64202972 	strtvs	r2, [r0], #-2418	; 0xfffff68e
    50e8:	207b206f 	rsbscs	r2, fp, pc, rrx
    50ec:	28206669 	stmdacs	r0!, {r0, r3, r5, r6, r9, sl, sp, lr}
    50f0:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    50f4:	26262029 	strtcs	r2, [r6], -r9, lsr #32
    50f8:	70282120 	eorvc	r2, r8, r0, lsr #2
    50fc:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    5100:	735f5f3e 	cmpvc	pc, #62, 30	; 0xf8
    5104:	69646964 	stmdbvs	r4!, {r2, r5, r6, r8, fp, sp, lr}^
    5108:	2974696e 	ldmdbcs	r4!, {r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    510c:	735f5f20 	cmpvc	pc, #32, 30	; 0x80
    5110:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
    5114:	74702820 	ldrbtvc	r2, [r0], #-2080	; 0xfffff7e0
    5118:	203b2972 	eorscs	r2, fp, r2, ror r9
    511c:	6877207d 	ldmdavs	r7!, {r0, r2, r3, r4, r5, r6, sp}^
    5120:	20656c69 	rsbcs	r6, r5, r9, ror #24
    5124:	00293028 	eoreq	r3, r9, r8, lsr #32
    5128:	58455f5f 	stmdapl	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    512c:	29782850 	ldmdbcs	r8!, {r4, r6, fp, sp}^
    5130:	205f5f20 	subscs	r5, pc, r0, lsr #30
    5134:	20782323 	rsbscs	r2, r8, r3, lsr #6
    5138:	5f5f2323 	svcpl	0x005f2323
    513c:	4f4e4500 	svcmi	0x004e4500
    5140:	20595454 	subscs	r5, r9, r4, asr r4
    5144:	5f003532 	svcpl	0x00003532
    5148:	5459425f 	ldrbpl	r4, [r9], #-607	; 0xfffffda1
    514c:	524f5f45 	subpl	r5, pc, #276	; 0x114
    5150:	5f524544 	svcpl	0x00524544
    5154:	5f5f205f 	svcpl	0x005f205f
    5158:	4544524f 	strbmi	r5, [r4, #-591]	; 0xfffffdb1
    515c:	494c5f52 	stmdbmi	ip, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    5160:	454c5454 	strbmi	r5, [ip, #-1108]	; 0xfffffbac
    5164:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
    5168:	5f4e4149 	svcpl	0x004e4149
    516c:	5f5f005f 	svcpl	0x005f005f
    5170:	33544c46 	cmpcc	r4, #17920	; 0x4600
    5174:	50455f32 	subpl	r5, r5, r2, lsr pc
    5178:	4f4c4953 	svcmi	0x004c4953
    517c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    5180:	39312e31 	ldmdbcc	r1!, {r0, r4, r5, r9, sl, fp, sp}
    5184:	32393032 	eorscc	r3, r9, #50	; 0x32
    5188:	35353938 	ldrcc	r3, [r5, #-2360]!	; 0xfffff6c8
    518c:	31383730 	teqcc	r8, r0, lsr r7
    5190:	2d653532 	cfstr64cs	mvdx3, [r5, #-200]!	; 0xffffff38
    5194:	32334637 	eorscc	r4, r3, #57671680	; 0x3700000
    5198:	415f5f00 	cmpmi	pc, r0, lsl #30
    519c:	4e5f4d52 	mrcmi	13, 2, r4, cr15, cr2, {2}
    51a0:	5f4e4f45 	svcpl	0x004e4f45
    51a4:	49005046 	stmdbmi	r0, {r1, r2, r6, ip, lr}
    51a8:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    51ac:	494d5f52 	stmdbmi	sp, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    51b0:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    51b4:	50544e49 	subspl	r4, r4, r9, asr #28
    51b8:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 5070 <__bss_end__+0x1d88>
    51bc:	2d205841 	stccs	8, cr5, [r0, #-260]!	; 0xfffffefc
    51c0:	00293120 	eoreq	r3, r9, r0, lsr #2
    51c4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    51c8:	5341465f 	movtpl	r4, #5727	; 0x165f
    51cc:	5f343654 	svcpl	0x00343654
    51d0:	2058414d 	subscs	r4, r8, sp, asr #2
    51d4:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    51d8:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    51dc:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    51e0:	414d5f34 	cmpmi	sp, r4, lsr pc
    51e4:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    51e8:	544f4e5f 	strbpl	r4, [pc], #-3679	; 51f0 <__bss_end__+0x1f08>
    51ec:	574f5248 	strbpl	r5, [pc, -r8, asr #4]
    51f0:	415f0020 	cmpmi	pc, r0, lsr #32
    51f4:	4449534e 	strbmi	r5, [r9], #-846	; 0xfffffcb2
    51f8:	5f4c4345 	svcpl	0x004c4345
    51fc:	00205f48 	eoreq	r5, r0, r8, asr #30
    5200:	534e415f 	movtpl	r4, #57695	; 0xe15f
    5204:	54535f49 	ldrbpl	r5, [r3], #-3913	; 0xfffff0b7
    5208:	46454444 	strbmi	r4, [r5], -r4, asr #8
    520c:	0020485f 	eoreq	r4, r0, pc, asr r8
    5210:	5f43535f 	svcpl	0x0043535f
    5214:	434f4c43 	movtmi	r4, #64579	; 0xfc43
    5218:	45535f4b 	ldrbmi	r5, [r3, #-3915]	; 0xfffff0b5
    521c:	5443454c 	strbpl	r4, [r3], #-1356	; 0xfffffab4
    5220:	204e4f49 	subcs	r4, lr, r9, asr #30
    5224:	5f003136 	svcpl	0x00003136
    5228:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    522c:	4f54415f 	svcmi	0x0054415f
    5230:	5f43494d 	svcpl	0x0043494d
    5234:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    5238:	69205f5f 	stmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    523c:	5f00746e 	svcpl	0x0000746e
    5240:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    5244:	43575f54 	cmpmi	r7, #84, 30	; 0x150
    5248:	424d4f54 	submi	r4, sp, #84, 30	; 0x150
    524c:	4154535f 	cmpmi	r4, pc, asr r3
    5250:	70284554 	eorvc	r4, r8, r4, asr r5
    5254:	20297274 	eorcs	r7, r9, r4, ror r2
    5258:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    525c:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    5260:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    5264:	5f3e2d63 	svcpl	0x003e2d63
    5268:	6f746377 	svcvs	0x00746377
    526c:	735f626d 	cmpvc	pc, #-805306362	; 0xd0000006
    5270:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    5274:	5f5f0029 	svcpl	0x005f0029
    5278:	41524655 	cmpmi	r2, r5, asr r6
    527c:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    5280:	5f544942 	svcpl	0x00544942
    5284:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    5288:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 4390 <__bss_end__+0x10a8>
    528c:	465f5144 	ldrbmi	r5, [pc], -r4, asr #2
    5290:	5f544942 	svcpl	0x00544942
    5294:	3436205f 	ldrtcc	r2, [r6], #-95	; 0xffffffa1
    5298:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    529c:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 51e0 <__bss_end__+0x1ef8>
    52a0:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    52a4:	544e492d 	strbpl	r4, [lr], #-2349	; 0xfffff6d3
    52a8:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 51ec <__bss_end__+0x1f04>
    52ac:	2d205841 	stccs	8, cr5, [r0, #-260]!	; 0xfffffefc
    52b0:	00293120 	eoreq	r3, r9, r0, lsr #2
    52b4:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    52b8:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
    52bc:	425f454b 	subsmi	r4, pc, #314572800	; 0x12c00000
    52c0:	544c4955 	strbpl	r4, [ip], #-2389	; 0xfffff6ab
    52c4:	4d5f4e49 	ldclmi	14, cr4, [pc, #-292]	; 51a8 <__bss_end__+0x1ec0>
    52c8:	50434d45 	subpl	r4, r3, r5, asr #26
    52cc:	00312059 	eorseq	r2, r1, r9, asr r0
    52d0:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    52d4:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 51d4 <__bss_end__+0x1eec>
    52d8:	315f5841 	cmpcc	pc, r1, asr #16
    52dc:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    52e0:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    52e4:	00383033 	eorseq	r3, r8, r3, lsr r0
    52e8:	5f43535f 	svcpl	0x0043535f
    52ec:	49474f4c 	stmdbmi	r7, {r2, r3, r6, r8, r9, sl, fp, lr}^
    52f0:	414e5f4e 	cmpmi	lr, lr, asr #30
    52f4:	4d5f454d 	cfldr64mi	mvdx4, [pc, #-308]	; 51c8 <__bss_end__+0x1ee0>
    52f8:	35205841 	strcc	r5, [r0, #-2113]!	; 0xfffff7bf
    52fc:	5f5f0032 	svcpl	0x005f0032
    5300:	665f6673 			; <UNDEFINED> instruction: 0x665f6673
    5304:	5f656b61 	svcpl	0x00656b61
    5308:	6f647473 	svcvs	0x00647473
    530c:	5f007475 	svcpl	0x00007475
    5310:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
    5314:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    5318:	5f4d524f 	svcpl	0x004d524f
    531c:	5f4e494d 	svcpl	0x004e494d
    5320:	2828205f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, sp}
    5324:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
    5328:	3429656c 	strtcc	r6, [r9], #-1388	; 0xfffffa94
    532c:	3034392e 	eorscc	r3, r4, lr, lsr #18
    5330:	34363536 	ldrtcc	r3, [r6], #-1334	; 0xfffffaca
    5334:	31343835 	teqcc	r4, r5, lsr r8
    5338:	35363432 	ldrcc	r3, [r6, #-1074]!	; 0xfffffbce
    533c:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    5340:	294c3432 	stmdbcs	ip, {r1, r4, r5, sl, ip, sp}^
    5344:	6c665f00 	stclvs	15, cr5, [r6], #-0
    5348:	32736761 	rsbscc	r6, r3, #25427968	; 0x1840000
    534c:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5350:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    5354:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    5358:	59545f32 	ldmdbpl	r4, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    535c:	5f5f4550 	svcpl	0x005f4550
    5360:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    5364:	49555f00 	ldmdbmi	r5, {r8, r9, sl, fp, ip, lr}^
    5368:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    536c:	445f545f 	ldrbmi	r5, [pc], #-1119	; 5374 <__bss_end__+0x208c>
    5370:	414c4345 	cmpmi	ip, r5, asr #6
    5374:	20444552 	subcs	r4, r4, r2, asr r5
    5378:	4e495f00 	cdpmi	15, 4, cr5, cr9, cr0, {0}
    537c:	5f545f4f 	svcpl	0x00545f4f
    5380:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    5384:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    5388:	525f0020 	subspl	r0, pc, #32
    538c:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    5390:	4353415f 	cmpmi	r3, #-1073741801	; 0xc0000017
    5394:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    5398:	4655425f 			; <UNDEFINED> instruction: 0x4655425f
    539c:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    53a0:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    53a4:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    53a8:	615f3e2d 	cmpvs	pc, sp, lsr #28
    53ac:	69746373 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, r9, sp, lr}^
    53b0:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
    53b4:	00296675 	eoreq	r6, r9, r5, ror r6
    53b8:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    53bc:	5f525450 	svcpl	0x00525450
    53c0:	2058414d 	subscs	r4, r8, sp, asr #2
    53c4:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    53c8:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    53cc:	414d5f52 	cmpmi	sp, r2, asr pc
    53d0:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    53d4:	444f4e45 	strbmi	r4, [pc], #-3653	; 53dc <__bss_end__+0x20f4>
    53d8:	20415441 	subcs	r5, r1, r1, asr #8
    53dc:	5f003136 	svcpl	0x00003136
    53e0:	57454e5f 	smlsldpl	r4, r5, pc, lr	; <UNPREDICTABLE>
    53e4:	5f42494c 	svcpl	0x0042494c
    53e8:	4f4e494d 	svcmi	0x004e494d
    53ec:	205f5f52 	subscs	r5, pc, r2, asr pc	; <UNPREDICTABLE>
    53f0:	555f0030 	ldrbpl	r0, [pc, #-48]	; 53c8 <__bss_end__+0x20e0>
    53f4:	545f4449 	ldrbpl	r4, [pc], #-1097	; 53fc <__bss_end__+0x2114>
    53f8:	4345445f 	movtmi	r4, #21599	; 0x545f
    53fc:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    5400:	5f002044 	svcpl	0x00002044
    5404:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    5408:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    540c:	5058455f 	subspl	r4, r8, pc, asr r5
    5410:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5414:	3532312d 	ldrcc	r3, [r2, #-301]!	; 0xfffffed3
    5418:	5f5f0029 	svcpl	0x005f0029
    541c:	36544c46 	ldrbcc	r4, [r4], -r6, asr #24
    5420:	41485f34 	cmpmi	r8, r4, lsr pc
    5424:	55515f53 	ldrbpl	r5, [r1, #-3923]	; 0xfffff0ad
    5428:	5f544549 	svcpl	0x00544549
    542c:	5f4e414e 	svcpl	0x004e414e
    5430:	0031205f 	eorseq	r2, r1, pc, asr r0
    5434:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    5438:	52415f4d 	subpl	r5, r1, #308	; 0x134
    543c:	505f4843 	subspl	r4, pc, r3, asr #16
    5440:	49464f52 	stmdbmi	r6, {r1, r4, r6, r8, r9, sl, fp, lr}^
    5444:	3620454c 	strtcc	r4, [r0], -ip, asr #10
    5448:	5f5f0035 	svcpl	0x005f0035
    544c:	43415355 	movtmi	r5, #4949	; 0x1355
    5450:	5f4d5543 	svcpl	0x004d5543
    5454:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    5458:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    545c:	43535f00 	cmpmi	r3, #0, 30
    5460:	4c4f435f 	mcrrmi	3, 5, r4, pc, cr15
    5464:	45575f4c 	ldrbmi	r5, [r7, #-3916]	; 0xfffff0b4
    5468:	54484749 	strbpl	r4, [r8], #-1865	; 0xfffff8b7
    546c:	414d5f53 	cmpmi	sp, r3, asr pc
    5470:	32362058 	eorscc	r2, r6, #88	; 0x58
    5474:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 457c <__bss_end__+0x1294>
    5478:	465f4144 	ldrbmi	r4, [pc], -r4, asr #2
    547c:	5f544942 	svcpl	0x00544942
    5480:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    5484:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    5488:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    548c:	5341485f 	movtpl	r4, #6239	; 0x185f
    5490:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    5494:	5f4d524f 	svcpl	0x004d524f
    5498:	0031205f 	eorseq	r2, r1, pc, asr r0
    549c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    54a0:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    54a4:	205f5f47 	subscs	r5, pc, r7, asr #30
    54a8:	5f5f0036 	svcpl	0x005f0036
    54ac:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    54b0:	5f58414d 	svcpl	0x0058414d
    54b4:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    54b8:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    54bc:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    54c0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    54c4:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    54c8:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    54cc:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    54d0:	575f0074 			; <UNDEFINED> instruction: 0x575f0074
    54d4:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    54d8:	445f545f 	ldrbmi	r5, [pc], #-1119	; 54e0 <__bss_end__+0x21f8>
    54dc:	414c4345 	cmpmi	ip, r5, asr #6
    54e0:	20444552 	subcs	r4, r4, r2, asr r5
    54e4:	52415500 	subpl	r5, r1, #0, 10
    54e8:	4f4d5f54 	svcmi	0x004d5f54
    54ec:	434d4544 	movtmi	r4, #54596	; 0xd544
    54f0:	43465f52 	movtmi	r5, #28498	; 0x6f52
    54f4:	7830204d 	ldmdavc	r0!, {r0, r2, r3, r6, sp}
    54f8:	30303030 	eorscc	r3, r0, r0, lsr r0
    54fc:	30313030 	eorscc	r3, r1, r0, lsr r0
    5500:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    5504:	41454c5f 	cmpmi	r5, pc, asr ip
    5508:	5f385453 	svcpl	0x00385453
    550c:	2058414d 	subscs	r4, r8, sp, asr #2
    5510:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    5514:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    5518:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    551c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    5520:	5f005f5f 	svcpl	0x00005f5f
    5524:	545f4353 	ldrbpl	r4, [pc], #-851	; 552c <__bss_end__+0x2244>
    5528:	41455248 	cmpmi	r5, r8, asr #4
    552c:	54415f44 	strbpl	r5, [r1], #-3908	; 0xfffff0bc
    5530:	535f5254 	cmppl	pc, #84, 4	; 0x40000005
    5534:	4b434154 	blmi	10d5a8c <_end+0xd5a8c>
    5538:	52444441 	subpl	r4, r4, #1090519040	; 0x41000000
    553c:	00333420 	eorseq	r3, r3, r0, lsr #8
    5540:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    5544:	56455f54 			; <UNDEFINED> instruction: 0x56455f54
    5548:	4d5f4c41 	ldclmi	12, cr4, [pc, #-260]	; 544c <__bss_end__+0x2164>
    554c:	4f485445 	svcmi	0x00485445
    5550:	205f5f44 	subscs	r5, pc, r4, asr #30
    5554:	49550030 	ldmdbmi	r5, {r4, r5}^
    5558:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    555c:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    5560:	414d5f32 	cmpmi	sp, r2, lsr pc
    5564:	5f5f0058 	svcpl	0x005f0058
    5568:	41484353 	cmpmi	r8, r3, asr r3
    556c:	414d5f52 	cmpmi	sp, r2, asr pc
    5570:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    5574:	66377830 			; <UNDEFINED> instruction: 0x66377830
    5578:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    557c:	41454c5f 	cmpmi	r5, pc, asr ip
    5580:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    5584:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    5588:	6e795a00 	vaddvs.f32	s11, s18, s0
    558c:	30303771 	eorscc	r3, r0, r1, ror r7
    5590:	41555f30 	cmpmi	r5, r0, lsr pc
    5594:	475f5452 			; <UNDEFINED> instruction: 0x475f5452
    5598:	48435445 	stmdami	r3, {r0, r2, r6, sl, ip, lr}^
    559c:	49005241 	stmdbmi	r0, {r0, r6, r9, ip, lr}
    55a0:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    55a4:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    55a8:	492d2820 	pushmi	{r5, fp, sp}
    55ac:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    55b0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    55b4:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    55b8:	5f5f0029 	svcpl	0x005f0029
    55bc:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
    55c0:	5f5f3262 	svcpl	0x005f3262
    55c4:	43535f00 	cmpmi	r3, #0, 30
    55c8:	5f43425f 	svcpl	0x0043425f
    55cc:	49525453 	ldmdbmi	r2, {r0, r1, r4, r6, sl, ip, lr}^
    55d0:	4d5f474e 	ldclmi	7, cr4, [pc, #-312]	; 54a0 <__bss_end__+0x21b8>
    55d4:	36205841 	strtcc	r5, [r0], -r1, asr #16
    55d8:	525f0030 	subspl	r0, pc, #48	; 0x30
    55dc:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    55e0:	454d455f 	strbmi	r4, [sp, #-1375]	; 0xfffffaa1
    55e4:	4e454752 	mcrmi	7, 2, r4, cr5, cr2, {2}
    55e8:	70285943 	eorvc	r5, r8, r3, asr #18
    55ec:	20297274 	eorcs	r7, r9, r4, ror r2
    55f0:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    55f4:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    55f8:	656d655f 	strbvs	r6, [sp, #-1375]!	; 0xfffffaa1
    55fc:	6e656772 	mcrvs	7, 3, r6, cr5, cr2, {3}
    5600:	00297963 	eoreq	r7, r9, r3, ror #18
    5604:	5f43535f 	svcpl	0x0043535f
    5608:	4c454853 	mcrrmi	8, 5, r4, r5, cr3
    560c:	3437204c 	ldrtcc	r2, [r7], #-76	; 0xffffffb4
    5610:	5f545f00 	svcpl	0x00545f00
    5614:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    5618:	20464649 	subcs	r4, r6, r9, asr #12
    561c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 4724 <__bss_end__+0x143c>
    5620:	465f5151 			; <UNDEFINED> instruction: 0x465f5151
    5624:	5f544942 	svcpl	0x00544942
    5628:	0038205f 	eorseq	r2, r8, pc, asr r0
    562c:	7263775f 	rsbvc	r7, r3, #24903680	; 0x17c0000
    5630:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
    5634:	6174735f 	cmnvs	r4, pc, asr r3
    5638:	5f006574 	svcpl	0x00006574
    563c:	4e49575f 	mcrmi	7, 2, r5, cr9, cr15, {2}
    5640:	59545f54 	ldmdbpl	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    5644:	5f5f4550 	svcpl	0x005f4550
    5648:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    564c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    5650:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    5654:	5f5f0074 	svcpl	0x005f0074
    5658:	36434544 	strbcc	r4, [r3], -r4, asr #10
    565c:	494d5f34 	stmdbmi	sp, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    5660:	58455f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    5664:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    5668:	38332d28 	ldmdacc	r3!, {r3, r5, r8, sl, fp, sp}
    566c:	5f002932 	svcpl	0x00002932
    5670:	4341555f 	movtmi	r5, #5471	; 0x155f
    5674:	5f4d5543 	svcpl	0x004d5543
    5678:	5f58414d 	svcpl	0x0058414d
    567c:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    5680:	46464646 	strbmi	r4, [r6], -r6, asr #12
    5684:	46464646 	strbmi	r4, [r6], -r6, asr #12
    5688:	36312d50 			; <UNDEFINED> instruction: 0x36312d50
    568c:	5f004b55 	svcpl	0x00004b55
    5690:	325f4353 	subscc	r4, pc, #1275068417	; 0x4c000001
    5694:	5342505f 	movtpl	r5, #8287	; 0x205f
    5698:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    569c:	4f504b43 	svcmi	0x00504b43
    56a0:	20544e49 	subscs	r4, r4, r9, asr #28
    56a4:	00353131 	eorseq	r3, r5, r1, lsr r1
    56a8:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    56ac:	45495f43 	strbmi	r5, [r9, #-3907]	; 0xfffff0bd
    56b0:	35355f43 	ldrcc	r5, [r5, #-3907]!	; 0xfffff0bd
    56b4:	00322039 	eorseq	r2, r2, r9, lsr r0
    56b8:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
    56bc:	61646d5f 	cmnvs	r4, pc, asr sp
    56c0:	4e490079 	mcrmi	0, 2, r0, cr9, cr9, {3}
    56c4:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    56c8:	31545341 	cmpcc	r4, r1, asr #6
    56cc:	414d5f36 	cmpmi	sp, r6, lsr pc
    56d0:	5f5f2058 	svcpl	0x005f2058
    56d4:	5f544e49 	svcpl	0x00544e49
    56d8:	5341454c 	movtpl	r4, #5452	; 0x154c
    56dc:	5f363154 	svcpl	0x00363154
    56e0:	5f58414d 	svcpl	0x0058414d
    56e4:	5f5f005f 	svcpl	0x005f005f
    56e8:	4152464c 	cmpmi	r2, ip, asr #12
    56ec:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 55e8 <__bss_end__+0x2300>
    56f0:	5f5f5841 	svcpl	0x005f5841
    56f4:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    56f8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    56fc:	50464646 	subpl	r4, r6, r6, asr #12
    5700:	4c31332d 	ldcmi	3, cr3, [r1], #-180	; 0xffffff4c
    5704:	5f5f0052 	svcpl	0x005f0052
    5708:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    570c:	505f464f 	subspl	r4, pc, pc, asr #12
    5710:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    5714:	545f4646 	ldrbpl	r4, [pc], #-1606	; 571c <__bss_end__+0x2434>
    5718:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    571c:	52415500 	subpl	r5, r1, #0, 10
    5720:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
    5724:	4d48435f 	stclmi	3, cr4, [r8, #-380]	; 0xfffffe84
    5728:	5f45444f 	svcpl	0x0045444f
    572c:	4f4c5f4c 	svcmi	0x004c5f4c
    5730:	3020504f 	eorcc	r5, r0, pc, asr #32
    5734:	30303078 	eorscc	r3, r0, r8, ror r0
    5738:	30323030 	eorscc	r3, r2, r0, lsr r0
    573c:	505f0030 	subspl	r0, pc, r0, lsr r0	; <UNPREDICTABLE>
    5740:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    5744:	545f4646 	ldrbpl	r4, [pc], #-1606	; 574c <__bss_end__+0x2464>
    5748:	4345445f 	movtmi	r4, #21599	; 0x545f
    574c:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    5750:	45002044 	strmi	r2, [r0, #-68]	; 0xffffffbc
    5754:	58454f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, lr}^
    5758:	38204345 	stmdacc	r0!, {r0, r2, r6, r8, r9, lr}
    575c:	52415500 	subpl	r5, r1, #0, 10
    5760:	58495f54 	stmdapl	r9, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    5764:	58545f52 	ldmdapl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    5768:	54504d45 	ldrbpl	r4, [r0], #-3397	; 0xfffff2bb
    576c:	78302059 	ldmdavc	r0!, {r0, r3, r4, r6, sp}
    5770:	30303030 	eorscc	r3, r0, r0, lsr r0
    5774:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
    5778:	5f5f5f00 	svcpl	0x005f5f00
    577c:	5f746e69 	svcpl	0x00746e69
    5780:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    5784:	745f3874 	ldrbvc	r3, [pc], #-2164	; 578c <__bss_end__+0x24a4>
    5788:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    578c:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    5790:	5f003120 	svcpl	0x00003120
    5794:	66756275 			; <UNDEFINED> instruction: 0x66756275
    5798:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    579c:	54414f4c 	strbpl	r4, [r1], #-3916	; 0xfffff0b4
    57a0:	524f575f 	subpl	r5, pc, #24903680	; 0x17c0000
    57a4:	524f5f44 	subpl	r5, pc, #68, 30	; 0x110
    57a8:	5f524544 	svcpl	0x00524544
    57ac:	5f5f205f 	svcpl	0x005f205f
    57b0:	4544524f 	strbmi	r5, [r4, #-591]	; 0xfffffdb1
    57b4:	494c5f52 	stmdbmi	ip, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    57b8:	454c5454 	strbmi	r5, [ip, #-1108]	; 0xfffffbac
    57bc:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
    57c0:	5f4e4149 	svcpl	0x004e4149
    57c4:	4e49005f 	mcrmi	0, 2, r0, cr9, cr15, {2}
    57c8:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    57cc:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    57d0:	492d2820 	pushmi	{r5, fp, sp}
    57d4:	414d544e 	cmpmi	sp, lr, asr #8
    57d8:	414d5f58 	cmpmi	sp, r8, asr pc
    57dc:	202d2058 	eorcs	r2, sp, r8, asr r0
    57e0:	5f002931 	svcpl	0x00002931
    57e4:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    57e8:	545f3854 	ldrbpl	r3, [pc], #-2132	; 57f0 <__bss_end__+0x2508>
    57ec:	5f455059 	svcpl	0x00455059
    57f0:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    57f4:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    57f8:	63206465 			; <UNDEFINED> instruction: 0x63206465
    57fc:	00726168 	rsbseq	r6, r2, r8, ror #2
    5800:	74726155 	ldrbtvc	r6, [r2], #-341	; 0xfffffeab
    5804:	61746144 	cmnvs	r4, r4, asr #2
    5808:	65636552 	strbvs	r6, [r3, #-1362]!	; 0xfffffaae
    580c:	64657669 	strbtvs	r7, [r5], #-1641	; 0xfffff997
    5810:	73614228 	cmnvc	r1, #40, 4	; 0x80000002
    5814:	64644165 	strbtvs	r4, [r4], #-357	; 0xfffffe9b
    5818:	73736572 	cmnvc	r3, #478150656	; 0x1c800000
    581c:	28212029 	stmdacs	r1!, {r0, r3, r5, sp}
    5820:	5f6f6928 	svcpl	0x006f6928
    5824:	32336e69 	eorscc	r6, r3, #1680	; 0x690
    5828:	61422828 	cmpvs	r2, r8, lsr #16
    582c:	64416573 	strbvs	r6, [r1], #-1395	; 0xfffffa8d
    5830:	73657264 	cmnvc	r5, #100, 4	; 0x40000006
    5834:	2b202973 	blcs	80fe08 <heap_size+0x7efe08>
    5838:	52415520 	subpl	r5, r1, #32, 10	; 0x8000000
    583c:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    5840:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    5844:	29544553 	ldmdbcs	r4, {r0, r1, r4, r6, r8, sl, lr}^
    5848:	55202620 	strpl	r2, [r0, #-1568]!	; 0xfffff9e0
    584c:	5f545241 	svcpl	0x00545241
    5850:	525f5253 	subspl	r5, pc, #805306373	; 0x30000005
    5854:	504d4558 	subpl	r4, sp, r8, asr r5
    5858:	20295954 	eorcs	r5, r9, r4, asr r9
    585c:	55203d3d 	strpl	r3, [r0, #-3389]!	; 0xfffff2c3
    5860:	5f545241 	svcpl	0x00545241
    5864:	525f5253 	subspl	r5, pc, #805306373	; 0x30000005
    5868:	504d4558 	subpl	r4, sp, r8, asr r5
    586c:	00295954 	eoreq	r5, r9, r4, asr r9
    5870:	5f43535f 	svcpl	0x0043535f
    5874:	5050414d 	subspl	r4, r0, sp, asr #2
    5878:	465f4445 	ldrbmi	r4, [pc], -r5, asr #8
    587c:	53454c49 	movtpl	r4, #23625	; 0x5c49
    5880:	00333220 	eorseq	r3, r3, r0, lsr #4
    5884:	6e755f5f 	mrcvs	15, 3, r5, cr5, cr15, {2}
    5888:	6b636f6c 	blvs	18e1640 <_end+0x8e1640>
    588c:	2e2e2873 	mcrcs	8, 1, r2, cr14, cr3, {3}
    5890:	5f20292e 	svcpl	0x0020292e
    5894:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    5898:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    589c:	61746f6e 	cmnvs	r4, lr, ror #30
    58a0:	75286574 	strvc	r6, [r8, #-1396]!	; 0xfffffa8c
    58a4:	636f6c6e 	cmnvs	pc, #28160	; 0x6e00
    58a8:	75665f6b 	strbvc	r5, [r6, #-3947]!	; 0xfffff095
    58ac:	6974636e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    58b0:	5f286e6f 	svcpl	0x00286e6f
    58b4:	5f41565f 	svcpl	0x0041565f
    58b8:	53475241 	movtpl	r5, #29249	; 0x7241
    58bc:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    58c0:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; 49c8 <__bss_end__+0x16e0>
    58c4:	524f5058 	subpl	r5, pc, #88	; 0x58
    58c8:	5f002054 	svcpl	0x00002054
    58cc:	53424f5f 	movtpl	r4, #12127	; 0x2f5f
    58d0:	54454c4f 	strbpl	r4, [r5], #-3151	; 0xfffff3b1
    58d4:	414d5f45 	cmpmi	sp, r5, asr #30
    58d8:	445f4854 	ldrbmi	r4, [pc], #-2132	; 58e0 <__bss_end__+0x25f8>
    58dc:	55414645 	strbpl	r4, [r1, #-1605]	; 0xfffff9bb
    58e0:	3020544c 	eorcc	r5, r0, ip, asr #8
    58e4:	626d5f00 	rsbvs	r5, sp, #0, 30
    58e8:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    58ec:	4e5f0065 	cdpmi	0, 5, cr0, cr15, cr5, {3}
    58f0:	7465726f 	strbtvc	r7, [r5], #-623	; 0xfffffd91
    58f4:	206e7275 	rsbcs	r7, lr, r5, ror r2
    58f8:	65645f5f 	strbvs	r5, [r4, #-3935]!	; 0xfffff0a1
    58fc:	00326461 	eorseq	r6, r2, r1, ror #8
    5900:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    5904:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 5834 <__bss_end__+0x254c>
    5908:	5f205841 	svcpl	0x00205841
    590c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    5910:	5f343654 	svcpl	0x00343654
    5914:	5f58414d 	svcpl	0x0058414d
    5918:	5745005f 	smlsldpl	r0, r5, pc, r0	; <UNPREDICTABLE>
    591c:	444c554f 	strbmi	r5, [ip], #-1359	; 0xfffffab1
    5920:	434f4c42 	movtmi	r4, #64578	; 0xfc42
    5924:	4145204b 	cmpmi	r5, fp, asr #32
    5928:	4e494147 	dvfmiem	f4, f1, f7
    592c:	535f5f00 	cmppl	pc, #0, 30
    5930:	5f545248 	svcpl	0x00545248
    5934:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    5938:	205f5f48 	subscs	r5, pc, r8, asr #30
    593c:	5f003631 	svcpl	0x00003631
    5940:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
    5944:	505f5245 	subspl	r5, pc, r5, asr #4
    5948:	455f5044 	ldrbmi	r5, [pc, #-68]	; 590c <__bss_end__+0x2624>
    594c:	4149444e 	cmpmi	r9, lr, asr #8
    5950:	205f5f4e 	subscs	r5, pc, lr, asr #30
    5954:	32313433 	eorscc	r3, r1, #855638016	; 0x33000000
    5958:	61725f00 	cmnvs	r2, r0, lsl #30
    595c:	6e5f646e 	cdpvs	4, 5, cr6, cr15, cr14, {3}
    5960:	00747865 	rsbseq	r7, r4, r5, ror #16
    5964:	4f4f5445 	svcmi	0x004f5445
    5968:	594e414d 	stmdbpl	lr, {r0, r2, r3, r6, r8, lr}^
    596c:	53464552 	movtpl	r4, #25938	; 0x6552
    5970:	39323120 	ldmdbcc	r2!, {r5, r8, ip, sp}
    5974:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 597c <__bss_end__+0x2694>
    5978:	32314345 	eorscc	r4, r1, #335544321	; 0x14000001
    597c:	414d5f38 	cmpmi	sp, r8, lsr pc
    5980:	445f544e 	ldrbmi	r5, [pc], #-1102	; 5988 <__bss_end__+0x26a0>
    5984:	5f5f4749 	svcpl	0x005f4749
    5988:	00343320 	eorseq	r3, r4, r0, lsr #6
    598c:	616c665f 	cmnvs	ip, pc, asr r6
    5990:	5f007367 	svcpl	0x00007367
    5994:	504d495f 	subpl	r4, sp, pc, asr r9
    5998:	2054524f 	subscs	r5, r4, pc, asr #4
    599c:	43535f00 	cmpmi	r3, #0, 30
    59a0:	4554415f 	ldrbmi	r4, [r4, #-351]	; 0xfffffea1
    59a4:	5f544958 	svcpl	0x00544958
    59a8:	2058414d 	subscs	r4, r8, sp, asr #2
    59ac:	5f003535 	svcpl	0x00003535
    59b0:	325f4353 	subscc	r4, pc, #1275068417	; 0x4c000001
    59b4:	5342505f 	movtpl	r5, #8287	; 0x205f
    59b8:	4152545f 	cmpmi	r2, pc, asr r4
    59bc:	31204b43 			; <UNDEFINED> instruction: 0x31204b43
    59c0:	5f003831 	svcpl	0x00003831
    59c4:	4153555f 	cmpmi	r3, pc, asr r5
    59c8:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    59cc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    59d0:	5f003631 	svcpl	0x00003631
    59d4:	6c6f765f 	stclvs	6, cr7, [pc], #-380	; 5860 <__bss_end__+0x2578>
    59d8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    59dc:	6f762065 	svcvs	0x00762065
    59e0:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    59e4:	5f00656c 	svcpl	0x0000656c
    59e8:	4843414d 	stmdami	r3, {r0, r2, r3, r6, r8, lr}^
    59ec:	5f454e49 	svcpl	0x00454e49
    59f0:	5059545f 	subspl	r5, r9, pc, asr r4
    59f4:	485f5345 	ldmdami	pc, {r0, r2, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    59f8:	5f5f0020 	svcpl	0x005f0020
    59fc:	45454549 	strbmi	r4, [r5, #-1353]	; 0xfffffab7
    5a00:	54494c5f 	strbpl	r4, [r9], #-3167	; 0xfffff3a1
    5a04:	5f454c54 	svcpl	0x00454c54
    5a08:	49444e45 	stmdbmi	r4, {r0, r2, r6, r9, sl, fp, lr}^
    5a0c:	00204e41 	eoreq	r4, r0, r1, asr #28
    5a10:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    5a14:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 5914 <__bss_end__+0x262c>
    5a18:	315f4e49 	cmpcc	pc, r9, asr #28
    5a1c:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    5a20:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    5a24:	30332d28 	eorscc	r2, r3, r8, lsr #26
    5a28:	49002937 	stmdbmi	r0, {r0, r1, r2, r4, r5, r8, fp, sp}
    5a2c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    5a30:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    5a34:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 5978 <__bss_end__+0x2690>
    5a38:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    5a3c:	544e492d 	strbpl	r4, [lr], #-2349	; 0xfffff6d3
    5a40:	41454c5f 	cmpmi	r5, pc, asr ip
    5a44:	36315453 			; <UNDEFINED> instruction: 0x36315453
    5a48:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    5a4c:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    5a50:	5f5f0029 	svcpl	0x005f0029
    5a54:	5f544c46 	svcpl	0x00544c46
    5a58:	5f534148 	svcpl	0x00534148
    5a5c:	45495551 	strbmi	r5, [r9, #-1361]	; 0xfffffaaf
    5a60:	414e5f54 	cmpmi	lr, r4, asr pc
    5a64:	205f5f4e 	subscs	r5, pc, lr, asr #30
    5a68:	5f5f0031 	svcpl	0x005f0031
    5a6c:	49465441 	stmdbmi	r6, {r0, r6, sl, ip, lr}^
    5a70:	565f454c 	ldrbpl	r4, [pc], -ip, asr #10
    5a74:	42495349 	submi	r5, r9, #603979777	; 0x24000001
    5a78:	3020454c 	eorcc	r4, r0, ip, asr #10
    5a7c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    5a80:	415f4343 	cmpmi	pc, r3, asr #6
    5a84:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    5a88:	48435f43 	stmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    5a8c:	4c5f5241 	lfmmi	f5, 2, [pc], {65}	; 0x41
    5a90:	5f4b434f 	svcpl	0x004b434f
    5a94:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    5a98:	5f003220 	svcpl	0x00003220
    5a9c:	325f4353 	subscc	r4, pc, #1275068417	; 0x4c000001
    5aa0:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    5aa4:	44454c41 	strbmi	r4, [r5], #-3137	; 0xfffff3bf
    5aa8:	31204645 			; <UNDEFINED> instruction: 0x31204645
    5aac:	5f003231 	svcpl	0x00003231
    5ab0:	475f4353 			; <UNDEFINED> instruction: 0x475f4353
    5ab4:	57505445 	ldrbpl	r5, [r0, -r5, asr #8]
    5ab8:	535f525f 	cmppl	pc, #-268435451	; 0xf0000005
    5abc:	5f455a49 	svcpl	0x00455a49
    5ac0:	2058414d 	subscs	r4, r8, sp, asr #2
    5ac4:	5f003135 	svcpl	0x00003135
    5ac8:	52464c5f 	subpl	r4, r6, #24320	; 0x5f00
    5acc:	5f544341 	svcpl	0x00544341
    5ad0:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    5ad4:	5f4e4f4c 	svcpl	0x004e4f4c
    5ad8:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    5adc:	332d5031 			; <UNDEFINED> instruction: 0x332d5031
    5ae0:	00524c31 	subseq	r4, r2, r1, lsr ip
    5ae4:	4745425f 	smlsldmi	r4, r5, pc, r2	; <UNPREDICTABLE>
    5ae8:	535f4e49 	cmppl	pc, #1168	; 0x490
    5aec:	435f4454 	cmpmi	pc, #84, 8	; 0x54000000
    5af0:	535f0020 	cmppl	pc, #32
    5af4:	54545f43 	ldrbpl	r5, [r4], #-3907	; 0xfffff0bd
    5af8:	414e5f59 	cmpmi	lr, r9, asr pc
    5afc:	4d5f454d 	cfldr64mi	mvdx4, [pc, #-308]	; 59d0 <__bss_end__+0x26e8>
    5b00:	34205841 	strtcc	r5, [r0], #-2113	; 0xfffff7bf
    5b04:	5f5f0031 	svcpl	0x005f0031
    5b08:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    5b0c:	6c5f636f 	mrrcvs	3, 6, r6, pc, cr15	; <UNPREDICTABLE>
    5b10:	20656b69 	rsbcs	r6, r5, r9, ror #22
    5b14:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    5b18:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    5b1c:	5f657475 	svcpl	0x00657475
    5b20:	5f28285f 	svcpl	0x0028285f
    5b24:	6c616d5f 	stclvs	13, cr6, [r1], #-380	; 0xfffffe84
    5b28:	5f636f6c 	svcpl	0x00636f6c
    5b2c:	0029295f 	eoreq	r2, r9, pc, asr r9
    5b30:	54535f5f 	ldrbpl	r5, [r3], #-3935	; 0xfffff0a1
    5b34:	474e4952 	smlsldmi	r4, lr, r2, r9
    5b38:	20297828 	eorcs	r7, r9, r8, lsr #16
    5b3c:	55007823 	strpl	r7, [r0, #-2083]	; 0xfffff7dd
    5b40:	5f544e49 	svcpl	0x00544e49
    5b44:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    5b48:	414d5f38 	cmpmi	sp, r8, lsr pc
    5b4c:	5f5f2058 	svcpl	0x005f2058
    5b50:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    5b54:	5341465f 	movtpl	r4, #5727	; 0x165f
    5b58:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 5a10 <__bss_end__+0x2728>
    5b5c:	5f5f5841 	svcpl	0x005f5841
    5b60:	52415500 	subpl	r5, r1, #0, 10
    5b64:	4f4d5f54 	svcmi	0x004d5f54
    5b68:	534d4544 	movtpl	r4, #54596	; 0xd544
    5b6c:	43445f52 	movtmi	r5, #20306	; 0x4f52
    5b70:	78302044 	ldmdavc	r0!, {r2, r6, sp}
    5b74:	30303030 	eorscc	r3, r0, r0, lsr r0
    5b78:	30383030 	eorscc	r3, r8, r0, lsr r0
    5b7c:	615f5f00 	cmpvs	pc, r0, lsl #30
    5b80:	5f5f6d72 	svcpl	0x005f6d72
    5b84:	5f003120 	svcpl	0x00003120
    5b88:	5f535953 	svcpl	0x00535953
    5b8c:	4e525245 	cdpmi	2, 5, cr5, cr2, cr5, {2}
    5b90:	5f485f4f 	svcpl	0x00485f4f
    5b94:	535f0020 	cmppl	pc, #32
    5b98:	59545f43 	ldmdbpl	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    5b9c:	5f444550 	svcpl	0x00444550
    5ba0:	4f4d454d 	svcmi	0x004d454d
    5ba4:	4f5f5952 	svcmi	0x005f5952
    5ba8:	43454a42 	movtmi	r4, #23106	; 0x5a42
    5bac:	39205354 	stmdbcc	r0!, {r2, r4, r6, r8, r9, ip, lr}
    5bb0:	5f5f0031 	svcpl	0x005f0031
    5bb4:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    5bb8:	5f745f72 	svcpl	0x00745f72
    5bbc:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    5bc0:	2064656e 	rsbcs	r6, r4, lr, ror #10
    5bc4:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    5bc8:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    5bcc:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    5bd0:	5f30315f 	svcpl	0x0030315f
    5bd4:	5f505845 	svcpl	0x00505845
    5bd8:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    5bdc:	00293733 	eoreq	r3, r9, r3, lsr r7
    5be0:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    5be4:	5f524d5f 	svcpl	0x00524d5f
    5be8:	4f4d4843 	svcmi	0x004d4843
    5bec:	535f4544 	cmppl	pc, #68, 10	; 0x11000000
    5bf0:	54464948 	strbpl	r4, [r6], #-2376	; 0xfffff6b8
    5bf4:	5f003820 	svcpl	0x00003820
    5bf8:	756f635f 	strbvc	r6, [pc, #-863]!	; 58a1 <__bss_end__+0x25b9>
    5bfc:	5f00746e 	svcpl	0x0000746e
    5c00:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    5c04:	72745f6b 	rsbsvc	r5, r4, #428	; 0x1ac
    5c08:	63615f79 	cmnvs	r1, #484	; 0x1e4
    5c0c:	72697571 	rsbvc	r7, r9, #473956352	; 0x1c400000
    5c10:	6f6c2865 	svcvs	0x006c2865
    5c14:	20296b63 	eorcs	r6, r9, r3, ror #22
    5c18:	6f762828 	svcvs	0x00762828
    5c1c:	20296469 	eorcs	r6, r9, r9, ror #8
    5c20:	49002930 	stmdbmi	r0, {r4, r5, r8, fp, sp}
    5c24:	5f38544e 	svcpl	0x0038544e
    5c28:	2058414d 	subscs	r4, r8, sp, asr #2
    5c2c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    5c30:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 5ae8 <__bss_end__+0x2800>
    5c34:	5f5f5841 	svcpl	0x005f5841
    5c38:	415f5f00 	cmpmi	pc, r0, lsl #30
    5c3c:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    5c40:	5f363150 	svcpl	0x00363150
    5c44:	4d524f46 	ldclmi	15, cr4, [r2, #-280]	; 0xfffffee8
    5c48:	415f5441 	cmpmi	pc, r1, asr #8
    5c4c:	5245544c 	subpl	r5, r5, #76, 8	; 0x4c000000
    5c50:	4954414e 	ldmdbmi	r4, {r1, r2, r3, r6, r8, lr}^
    5c54:	5f004556 	svcpl	0x00004556
    5c58:	4345445f 	movtmi	r4, #21599	; 0x545f
    5c5c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 5b98 <__bss_end__+0x28b0>
    5c60:	5f544e41 	svcpl	0x00544e41
    5c64:	5f474944 	svcpl	0x00474944
    5c68:	0037205f 	eorseq	r2, r7, pc, asr r0
    5c6c:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    5c70:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 5b40 <__bss_end__+0x2858>
    5c74:	454c5242 	strbmi	r5, [ip, #-578]	; 0xfffffdbe
    5c78:	54535f4e 	ldrbpl	r5, [r3], #-3918	; 0xfffff0b2
    5c7c:	28455441 	stmdacs	r5, {r0, r6, sl, ip, lr}^
    5c80:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    5c84:	70282820 	eorvc	r2, r8, r0, lsr #16
    5c88:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    5c8c:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    5c90:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    5c94:	72626d5f 	rsbvc	r6, r2, #6080	; 0x17c0
    5c98:	5f6e656c 	svcpl	0x006e656c
    5c9c:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    5ca0:	5f002965 	svcpl	0x00002965
    5ca4:	5f41445f 	svcpl	0x0041445f
    5ca8:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    5cac:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    5cb0:	4d5f0031 	ldclmi	0, cr0, [pc, #-196]	; 5bf4 <__bss_end__+0x290c>
    5cb4:	49484341 	stmdbmi	r8, {r0, r6, r8, r9, lr}^
    5cb8:	5f5f454e 	svcpl	0x005f454e
    5cbc:	41464544 	cmpmi	r6, r4, asr #10
    5cc0:	5f544c55 	svcpl	0x00544c55
    5cc4:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    5cc8:	20485f53 	subcs	r5, r8, r3, asr pc
    5ccc:	425f5f00 	subsmi	r5, pc, #0, 30
    5cd0:	45474749 	strbmi	r4, [r7, #-1865]	; 0xfffff8b7
    5cd4:	415f5453 	cmpmi	pc, r3, asr r4	; <UNPREDICTABLE>
    5cd8:	4e47494c 	vmlsmi.f16	s9, s14, s24	; <UNPREDICTABLE>
    5cdc:	544e454d 	strbpl	r4, [lr], #-1357	; 0xfffffab3
    5ce0:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5ce4:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    5ce8:	28435f38 	stmdacs	r3, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    5cec:	5f202963 	svcpl	0x00202963
    5cf0:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    5cf4:	28435f38 	stmdacs	r3, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    5cf8:	5f002963 	svcpl	0x00002963
    5cfc:	5f434347 	svcpl	0x00434347
    5d00:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    5d04:	5f464649 	svcpl	0x00464649
    5d08:	5f002054 	svcpl	0x00002054
    5d0c:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    5d10:	4b494c43 	blmi	1258e24 <_end+0x258e24>
    5d14:	55425f45 	strbpl	r5, [r2, #-3909]	; 0xfffff0bb
    5d18:	49544c49 	ldmdbmi	r4, {r0, r3, r6, sl, fp, lr}^
    5d1c:	454e5f4e 	strbmi	r5, [lr, #-3918]	; 0xfffff0b2
    5d20:	415f5458 	cmpmi	pc, r8, asr r4	; <UNPREDICTABLE>
    5d24:	31204752 			; <UNDEFINED> instruction: 0x31204752
    5d28:	52415500 	subpl	r5, r1, #0, 10
    5d2c:	41425f54 	cmpmi	r2, r4, asr pc
    5d30:	49444455 	stmdbmi	r4, {r0, r2, r4, r6, sl, lr}^
    5d34:	414d5f56 	cmpmi	sp, r6, asr pc
    5d38:	30204b53 	eorcc	r4, r0, r3, asr fp
    5d3c:	30303078 	eorscc	r3, r0, r8, ror r0
    5d40:	46303030 			; <UNDEFINED> instruction: 0x46303030
    5d44:	41420046 	cmpmi	r2, r6, asr #32
    5d48:	45474455 	strbmi	r4, [r7, #-1109]	; 0xfffffbab
    5d4c:	5f5f004e 	svcpl	0x005f004e
    5d50:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    5d54:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    5d58:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    5d5c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    5d60:	00666666 	rsbeq	r6, r6, r6, ror #12
    5d64:	4f4c5f5f 	svcmi	0x004c5f5f
    5d68:	495f4b43 	ldmdbmi	pc, {r0, r1, r6, r8, r9, fp, lr}^	; <UNPREDICTABLE>
    5d6c:	2854494e 	ldmdacs	r4, {r1, r2, r3, r6, r8, fp, lr}^
    5d70:	73616c63 	cmnvc	r1, #25344	; 0x6300
    5d74:	6f6c2c73 	svcvs	0x006c2c73
    5d78:	20296b63 	eorcs	r6, r9, r3, ror #22
    5d7c:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    5d80:	69206369 	stmdbvs	r0!, {r0, r3, r5, r6, r8, r9, sp, lr}
    5d84:	6c20746e 	cfstrsvs	mvf7, [r0], #-440	; 0xfffffe48
    5d88:	206b636f 	rsbcs	r6, fp, pc, ror #6
    5d8c:	3b30203d 	blcc	c0de88 <heap_size+0xbede88>
    5d90:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 5d98 <__bss_end__+0x2ab0>
    5d94:	64775f6d 	ldrbtvs	r5, [r7], #-3949	; 0xfffff093
    5d98:	5f007961 	svcpl	0x00007961
    5d9c:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    5da0:	4d5f3834 	ldclmi	8, cr3, [pc, #-208]	; 5cd8 <__bss_end__+0x29f0>
    5da4:	5f544c55 	svcpl	0x00544c55
    5da8:	30282032 	eorcc	r2, r8, r2, lsr r0
    5dac:	30303078 	eorscc	r3, r0, r8, ror r0
    5db0:	5f002935 	svcpl	0x00002935
    5db4:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    5db8:	4145465f 	cmpmi	r5, pc, asr r6
    5dbc:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    5dc0:	4452515f 	ldrbmi	r5, [r2], #-351	; 0xfffffea1
    5dc4:	4500584d 	strmi	r5, [r0, #-2125]	; 0xfffff7b3
    5dc8:	45434341 	strbmi	r4, [r3, #-833]	; 0xfffffcbf
    5dcc:	33312053 	teqcc	r1, #83	; 0x53
    5dd0:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 5dd8 <__bss_end__+0x2af0>
    5dd4:	5f656d69 	svcpl	0x00656d69
    5dd8:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    5ddc:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    5de0:	5f002064 	svcpl	0x00002064
    5de4:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    5de8:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    5dec:	53495f48 	movtpl	r5, #40776	; 0x9f48
    5df0:	48545f41 	ldmdami	r4, {r0, r6, r8, r9, sl, fp, ip, lr}^
    5df4:	20424d55 	subcs	r4, r2, r5, asr sp
    5df8:	41550032 	cmpmi	r5, r2, lsr r0
    5dfc:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    5e00:	505f5258 	subspl	r5, pc, r8, asr r2	; <UNPREDICTABLE>
    5e04:	54495241 	strbpl	r5, [r9], #-577	; 0xfffffdbf
    5e08:	78302059 	ldmdavc	r0!, {r0, r3, r4, r6, sp}
    5e0c:	30303030 	eorscc	r3, r0, r0, lsr r0
    5e10:	30383030 	eorscc	r3, r8, r0, lsr r0
    5e14:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    5e18:	5f474e4f 	svcpl	0x00474e4f
    5e1c:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    5e20:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    5e24:	30205f5f 	eorcc	r5, r0, pc, asr pc
    5e28:	66663778 			; <UNDEFINED> instruction: 0x66663778
    5e2c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    5e30:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    5e34:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    5e38:	004c4c66 	subeq	r4, ip, r6, ror #24
    5e3c:	564e4945 	strbpl	r4, [lr], -r5, asr #18
    5e40:	32204c41 	eorcc	r4, r0, #16640	; 0x4100
    5e44:	42450032 	submi	r0, r5, #50	; 0x32
    5e48:	20595355 	subscs	r5, r9, r5, asr r3
    5e4c:	5f003631 	svcpl	0x00003631
    5e50:	736f6c63 	cmnvc	pc, #25344	; 0x6300
    5e54:	5f5f0065 	svcpl	0x005f0065
    5e58:	5f677261 	svcpl	0x00677261
    5e5c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    5e60:	6761745f 			; <UNDEFINED> instruction: 0x6761745f
    5e64:	67726128 	ldrbvs	r6, [r2, -r8, lsr #2]!
    5e68:	6e696b5f 	vmovvs.8	d9[6], r6
    5e6c:	72612c64 	rsbvc	r2, r1, #100, 24	; 0x6400
    5e70:	64695f67 	strbtvs	r5, [r9], #-3943	; 0xfffff099
    5e74:	79742c78 	ldmdbvc	r4!, {r3, r4, r5, r6, sl, fp, sp}^
    5e78:	745f6570 	ldrbvc	r6, [pc], #-1392	; 5e80 <__bss_end__+0x2b98>
    5e7c:	695f6761 	ldmdbvs	pc, {r0, r5, r6, r8, r9, sl, sp, lr}^	; <UNPREDICTABLE>
    5e80:	20297864 	eorcs	r7, r9, r4, ror #16
    5e84:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 4f8c <__bss_end__+0x1ca4>
    5e88:	5f544e49 	svcpl	0x00544e49
    5e8c:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    5e90:	545f3233 	ldrbpl	r3, [pc], #-563	; 5e98 <__bss_end__+0x2bb0>
    5e94:	5f455059 	svcpl	0x00455059
    5e98:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    5e9c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    5ea0:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    5ea4:	5f00746e 	svcpl	0x0000746e
    5ea8:	425f4353 	subsmi	r4, pc, #1275068417	; 0x4c000001
    5eac:	43535f43 	cmpmi	r3, #268	; 0x10c
    5eb0:	5f454c41 	svcpl	0x00454c41
    5eb4:	2058414d 	subscs	r4, r8, sp, asr #2
    5eb8:	55003935 	strpl	r3, [r0, #-2357]	; 0xfffff6cb
    5ebc:	5f545241 	svcpl	0x00545241
    5ec0:	545f5243 	ldrbpl	r5, [pc], #-579	; 5ec8 <__bss_end__+0x2be0>
    5ec4:	4e455f58 	mcrmi	15, 2, r5, cr5, cr8, {2}
    5ec8:	30783020 	rsbscc	r3, r8, r0, lsr #32
    5ecc:	30303030 	eorscc	r3, r0, r0, lsr r0
    5ed0:	00303130 	eorseq	r3, r0, r0, lsr r1
    5ed4:	4f435f5f 	svcmi	0x00435f5f
    5ed8:	49525950 	ldmdbmi	r2, {r4, r6, r8, fp, ip, lr}^
    5edc:	28544847 	ldmdacs	r4, {r0, r1, r2, r6, fp, lr}^
    5ee0:	73202973 			; <UNDEFINED> instruction: 0x73202973
    5ee4:	63757274 	cmnvs	r5, #116, 4	; 0x40000007
    5ee8:	5f5f2074 	svcpl	0x005f2074
    5eec:	6b636168 	blvs	18de494 <_end+0x8de494>
    5ef0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 4ff8 <__bss_end__+0x1d10>
    5ef4:	43415246 	movtmi	r5, #4678	; 0x1246
    5ef8:	42495f54 	submi	r5, r9, #84, 30	; 0x150
    5efc:	5f5f5449 	svcpl	0x005f5449
    5f00:	5f003020 	svcpl	0x00003020
    5f04:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    5f08:	4232335f 	eorsmi	r3, r2, #2080374785	; 0x7c000001
    5f0c:	535f5449 	cmppl	pc, #1224736768	; 0x49000000
    5f10:	45544154 	ldrbmi	r4, [r4, #-340]	; 0xfffffeac
    5f14:	5f003120 	svcpl	0x00003120
    5f18:	5f434347 	svcpl	0x00434347
    5f1c:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    5f20:	485f544e 	ldmdami	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    5f24:	5f5f0020 	svcpl	0x005f0020
    5f28:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    5f2c:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    5f30:	00632029 	rsbeq	r2, r3, r9, lsr #32
    5f34:	464c5f5f 			; <UNDEFINED> instruction: 0x464c5f5f
    5f38:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    5f3c:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    5f40:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    5f44:	4e490030 	mcrmi	0, 2, r0, cr9, cr0, {1}
    5f48:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    5f4c:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    5f50:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    5f54:	492d2820 	pushmi	{r5, fp, sp}
    5f58:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    5f5c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    5f60:	414d5f38 	cmpmi	sp, r8, lsr pc
    5f64:	202d2058 	eorcs	r2, sp, r8, asr r0
    5f68:	5f002931 	svcpl	0x00002931
    5f6c:	44445453 	strbmi	r5, [r4], #-1107	; 0xfffffbad
    5f70:	485f4645 	ldmdami	pc, {r0, r2, r6, r9, sl, lr}^	; <UNPREDICTABLE>
    5f74:	4900205f 	stmdbmi	r0, {r0, r1, r2, r3, r4, r6, sp}
    5f78:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    5f7c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    5f80:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 5eb0 <__bss_end__+0x2bc8>
    5f84:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    5f88:	544e492d 	strbpl	r4, [lr], #-2349	; 0xfffff6d3
    5f8c:	41454c5f 	cmpmi	r5, pc, asr ip
    5f90:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    5f94:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    5f98:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    5f9c:	5f5f0029 	svcpl	0x005f0029
    5fa0:	5f4c4244 	svcpl	0x004c4244
    5fa4:	5f4e494d 	svcpl	0x004e494d
    5fa8:	5f505845 	svcpl	0x00505845
    5fac:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    5fb0:	31323031 	teqcc	r2, r1, lsr r0
    5fb4:	5f5f0029 	svcpl	0x005f0029
    5fb8:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    5fbc:	0020545f 	eoreq	r5, r0, pc, asr r4
    5fc0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    5fc4:	5341465f 	movtpl	r4, #5727	; 0x165f
    5fc8:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 5e80 <__bss_end__+0x2b98>
    5fcc:	5f005841 	svcpl	0x00005841
    5fd0:	475f4353 			; <UNDEFINED> instruction: 0x475f4353
    5fd4:	52475445 	subpl	r5, r7, #1157627904	; 0x45000000
    5fd8:	535f525f 	cmppl	pc, #-268435451	; 0xf0000005
    5fdc:	5f455a49 	svcpl	0x00455a49
    5fe0:	2058414d 	subscs	r4, r8, sp, asr #2
    5fe4:	5f003035 	svcpl	0x00003035
    5fe8:	64656573 	strbtvs	r6, [r5], #-1395	; 0xfffffa8d
    5fec:	705f5f00 	subsvc	r5, pc, r0, lsl #30
    5ff0:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
    5ff4:	696c3066 	stmdbvs	ip!, {r1, r2, r5, r6, ip, sp}^
    5ff8:	6628656b 	strtvs	r6, [r8], -fp, ror #10
    5ffc:	7261746d 	rsbvc	r7, r1, #1828716544	; 0x6d000000
    6000:	69662c67 	stmdbvs	r6!, {r0, r1, r2, r5, r6, sl, fp, sp}^
    6004:	76747372 			; <UNDEFINED> instruction: 0x76747372
    6008:	72617261 	rsbvc	r7, r1, #268435462	; 0x10000006
    600c:	00202967 	eoreq	r2, r0, r7, ror #18
    6010:	5f43535f 	svcpl	0x0043535f
    6014:	4c4d5953 	mcrrmi	9, 5, r5, sp, cr3	; <UNPREDICTABLE>
    6018:	5f504f4f 	svcpl	0x00504f4f
    601c:	2058414d 	subscs	r4, r8, sp, asr #2
    6020:	45003937 	strmi	r3, [r0, #-2359]	; 0xfffff6c9
    6024:	474e4152 	smlsldmi	r4, lr, r2, r1
    6028:	34332045 	ldrtcc	r2, [r3], #-69	; 0xffffffbb
    602c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    6030:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    6034:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    6038:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    603c:	65735f00 	ldrbvs	r5, [r3, #-3840]!	; 0xfffff100
    6040:	5f006b65 	svcpl	0x00006b65
    6044:	535f4353 	cmppl	pc, #1275068417	; 0x4c000001
    6048:	565f4d45 	ldrbpl	r4, [pc], -r5, asr #26
    604c:	45554c41 	ldrbmi	r4, [r5, #-3137]	; 0xfffff3bf
    6050:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6054:	00373120 	eorseq	r3, r7, r0, lsr #2
    6058:	65645f5f 	strbvs	r5, [r4, #-3935]!	; 0xfffff0a1
    605c:	20326461 	eorscs	r6, r2, r1, ror #8
    6060:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    6064:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    6068:	5f657475 	svcpl	0x00657475
    606c:	5f28285f 	svcpl	0x0028285f
    6070:	726f6e5f 	rsbvc	r6, pc, #1520	; 0x5f0
    6074:	72757465 	rsbsvc	r7, r5, #1694498816	; 0x65000000
    6078:	295f5f6e 	ldmdbcs	pc, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    607c:	535f0029 	cmppl	pc, #41	; 0x29
    6080:	42585f43 	subsmi	r5, r8, #268	; 0x10c
    6084:	4c5f3553 	cfldr64mi	mvdx3, [pc], {83}	; 0x53
    6088:	5f343650 	svcpl	0x00343650
    608c:	3646464f 	strbcc	r4, [r6], -pc, asr #12
    6090:	535f2034 	cmppl	pc, #52	; 0x34
    6094:	37565f43 	ldrbcc	r5, [r6, -r3, asr #30]
    6098:	36504c5f 			; <UNDEFINED> instruction: 0x36504c5f
    609c:	464f5f34 			; <UNDEFINED> instruction: 0x464f5f34
    60a0:	00343646 	eorseq	r3, r4, r6, asr #12
    60a4:	5f43535f 	svcpl	0x0043535f
    60a8:	42505f32 	subsmi	r5, r0, #50, 30	; 0xc8
    60ac:	4f4c5f53 	svcmi	0x004c5f53
    60b0:	45544143 	ldrbmi	r4, [r4, #-323]	; 0xfffffebd
    60b4:	36313120 	ldrtcc	r3, [r1], -r0, lsr #2
    60b8:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    60bc:	5f363154 	svcpl	0x00363154
    60c0:	535f0043 	cmppl	pc, #67	; 0x43
    60c4:	4f585f43 	svcmi	0x00585f43
    60c8:	5f4e4550 	svcpl	0x004e4550
    60cc:	4147454c 	cmpmi	r7, ip, asr #10
    60d0:	39205943 	stmdbcc	r0!, {r0, r1, r6, r8, fp, ip, lr}
    60d4:	575f0038 	smmlarpl	pc, r8, r0, r0	; <UNPREDICTABLE>
    60d8:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    60dc:	445f545f 	ldrbmi	r5, [pc], #-1119	; 60e4 <__bss_end__+0x2dfc>
    60e0:	4e494645 	cdpmi	6, 4, cr4, cr9, cr5, {2}
    60e4:	205f4445 	subscs	r4, pc, r5, asr #8
    60e8:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; 51f0 <__bss_end__+0x1f08>
    60ec:	5f005058 	svcpl	0x00005058
    60f0:	736f7066 	cmnvc	pc, #102	; 0x66
    60f4:	5f00745f 	svcpl	0x0000745f
    60f8:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    60fc:	41485f4c 	cmpmi	r8, ip, asr #30
    6100:	45445f53 	strbmi	r5, [r4, #-3923]	; 0xfffff0ad
    6104:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    6108:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    610c:	775f5f00 	ldrbvc	r5, [pc, -r0, lsl #30]
    6110:	00626863 	rsbeq	r6, r2, r3, ror #16
    6114:	716e795a 	cmnvc	lr, sl, asr r9
    6118:	30303037 	eorscc	r3, r0, r7, lsr r0
    611c:	5241555f 	subpl	r5, r1, #398458880	; 0x17c00000
    6120:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
    6124:	4e455f54 	mcrmi	15, 2, r5, cr5, cr4, {2}
    6128:	454c4241 	strbmi	r4, [ip, #-577]	; 0xfffffdbf
    612c:	52415528 	subpl	r5, r1, #40, 10	; 0xa000000
    6130:	28202954 	stmdacs	r0!, {r2, r4, r6, r8, fp, sp}
    6134:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    6138:	45493e2d 	strbmi	r3, [r9, #-3629]	; 0xfffff1d3
    613c:	3d7c2052 	ldclcc	0, cr2, [ip, #-328]!	; 0xfffffeb8
    6140:	41552820 	cmpmi	r5, r0, lsr #16
    6144:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    6148:	525f5258 	subspl	r5, pc, #88, 4	; 0x80000005
    614c:	52564f58 	subspl	r4, r6, #88, 30	; 0x160
    6150:	55207c20 	strpl	r7, [r0, #-3104]!	; 0xfffff3e0
    6154:	5f545241 	svcpl	0x00545241
    6158:	5f525849 	svcpl	0x00525849
    615c:	55465852 	strbpl	r5, [r6, #-2130]	; 0xfffff7ae
    6160:	29294c4c 	stmdbcs	r9!, {r2, r3, r6, sl, fp, lr}
    6164:	425f5f00 	subsmi	r5, pc, #0, 30
    6168:	4e494745 	cdpmi	7, 4, cr4, cr9, cr5, {2}
    616c:	4345445f 	movtmi	r4, #21599	; 0x545f
    6170:	0020534c 	eoreq	r5, r0, ip, asr #6
    6174:	43415f5f 	movtmi	r5, #8031	; 0x1f5f
    6178:	5f4d5543 	svcpl	0x004d5543
    617c:	5f4e494d 	svcpl	0x004e494d
    6180:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    6184:	50315830 	eorspl	r5, r1, r0, lsr r8
    6188:	2d4b3531 	cfstr64cs	mvdx3, [fp, #-196]	; 0xffffff3c
    618c:	50315830 	eorspl	r5, r1, r0, lsr r8
    6190:	294b3531 	stmdbcs	fp, {r0, r4, r5, r8, sl, ip, sp}^
    6194:	43535f00 	cmpmi	r3, #0, 30
    6198:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    619c:	5f344c45 	svcpl	0x00344c45
    61a0:	48434143 	stmdami	r3, {r0, r1, r6, r8, lr}^
    61a4:	494c5f45 	stmdbmi	ip, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    61a8:	4953454e 	ldmdbmi	r3, {r1, r2, r3, r6, r8, sl, lr}^
    61ac:	3120455a 			; <UNDEFINED> instruction: 0x3120455a
    61b0:	5f003933 	svcpl	0x00003933
    61b4:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    61b8:	41565f43 	cmpmi	r6, r3, asr #30
    61bc:	53494c5f 	movtpl	r4, #40031	; 0x9c5f
    61c0:	4f435f54 	svcmi	0x00435f54
    61c4:	5441504d 	strbpl	r5, [r1], #-77	; 0xffffffb3
    61c8:	4c494249 	sfmmi	f4, 2, [r9], {73}	; 0x49
    61cc:	20595449 	subscs	r5, r9, r9, asr #8
    61d0:	5f5f0031 	svcpl	0x005f0031
    61d4:	5f4d5241 	svcpl	0x004d5241
    61d8:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    61dc:	5f455255 	svcpl	0x00455255
    61e0:	50595243 	subspl	r5, r9, r3, asr #4
    61e4:	5f004f54 	svcpl	0x00004f54
    61e8:	505f4353 	subspl	r4, pc, r3, asr r3	; <UNPREDICTABLE>
    61ec:	524f4952 	subpl	r4, pc, #1343488	; 0x148000
    61f0:	5a495449 	bpl	125b31c <_end+0x25b31c>
    61f4:	495f4445 	ldmdbmi	pc, {r0, r2, r6, sl, lr}^	; <UNPREDICTABLE>
    61f8:	3832204f 	ldmdacc	r2!, {r0, r1, r2, r3, r6, sp}
    61fc:	43535f00 	cmpmi	r3, #0, 30
    6200:	5058455f 	subspl	r4, r8, pc, asr r5
    6204:	454e5f52 	strbmi	r5, [lr, #-3922]	; 0xfffff0ae
    6208:	4d5f5453 	cfldrdmi	mvd5, [pc, #-332]	; 60c4 <__bss_end__+0x2ddc>
    620c:	36205841 	strtcc	r5, [r0], -r1, asr #16
    6210:	6d5f0034 	ldclvs	0, cr0, [pc, #-208]	; 6148 <__bss_end__+0x2e60>
    6214:	776f7462 	strbvc	r7, [pc, -r2, ror #8]!
    6218:	74735f63 	ldrbtvc	r5, [r3], #-3939	; 0xfffff09d
    621c:	00657461 	rsbeq	r7, r5, r1, ror #8
    6220:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    6224:	41454c5f 	cmpmi	r5, pc, asr ip
    6228:	36315453 			; <UNDEFINED> instruction: 0x36315453
    622c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6230:	74706f00 	ldrbtvc	r6, [r0], #-3840	; 0xfffff100
    6234:	0074706f 	rsbseq	r7, r4, pc, rrx
    6238:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    623c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    6240:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    6244:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 6174 <__bss_end__+0x2e8c>
    6248:	5f5f5841 	svcpl	0x005f5841
    624c:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    6250:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    6254:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    6258:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    625c:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    6260:	5f004c4c 	svcpl	0x00004c4c
    6264:	4152465f 	cmpmi	r2, pc, asr r6
    6268:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    626c:	5f544942 	svcpl	0x00544942
    6270:	0030205f 	eorseq	r2, r0, pc, asr r0
    6274:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    6278:	41454c5f 	cmpmi	r5, pc, asr ip
    627c:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    6280:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6284:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    6288:	575f544e 	ldrbpl	r5, [pc, -lr, asr #8]
    628c:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    6290:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    6294:	5f5f0032 	svcpl	0x005f0032
    6298:	4c57454e 	cfldr64mi	mvdx4, [r7], {78}	; 0x4e
    629c:	505f4249 	subspl	r4, pc, r9, asr #4
    62a0:	48435441 	stmdami	r3, {r0, r6, sl, ip, lr}^
    62a4:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
    62a8:	205f5f4c 	subscs	r5, pc, ip, asr #30
    62ac:	535f0030 	cmppl	pc, #48	; 0x30
    62b0:	504e5f43 	subpl	r5, lr, r3, asr #30
    62b4:	45434f52 	strbmi	r4, [r3, #-3922]	; 0xfffff0ae
    62b8:	524f5353 	subpl	r5, pc, #1275068417	; 0x4c000001
    62bc:	4e4f5f53 	mcrmi	15, 2, r5, cr15, cr3, {2}
    62c0:	31204e4c 			; <UNDEFINED> instruction: 0x31204e4c
    62c4:	535f0030 	cmppl	pc, #48	; 0x30
    62c8:	5a545f43 	bpl	151dfdc <_end+0x51dfdc>
    62cc:	454d414e 	strbmi	r4, [sp, #-334]	; 0xfffffeb2
    62d0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    62d4:	00303220 	eorseq	r3, r0, r0, lsr #4
    62d8:	524f5f5f 	subpl	r5, pc, #380	; 0x17c
    62dc:	5f524544 	svcpl	0x00524544
    62e0:	5454494c 	ldrbpl	r4, [r4], #-2380	; 0xfffff6b4
    62e4:	455f454c 	ldrbmi	r4, [pc, #-1356]	; 5da0 <__bss_end__+0x2ab8>
    62e8:	4149444e 	cmpmi	r9, lr, asr #8
    62ec:	205f5f4e 	subscs	r5, pc, lr, asr #30
    62f0:	34333231 	ldrtcc	r3, [r3], #-561	; 0xfffffdcf
    62f4:	735f5f00 	cmpvc	pc, #0, 30
    62f8:	5f657a69 	svcpl	0x00657a69
    62fc:	49530074 	ldmdbmi	r3, {r2, r4, r5, r6}^
    6300:	4d5f455a 	cfldr64mi	mvdx4, [pc, #-360]	; 61a0 <__bss_end__+0x2eb8>
    6304:	5f205841 	svcpl	0x00205841
    6308:	5a49535f 	bpl	125b08c <_end+0x25b08c>
    630c:	414d5f45 	cmpmi	sp, r5, asr #30
    6310:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    6314:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    6318:	5055535f 	subspl	r5, r5, pc, asr r3
    631c:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    6320:	4e495f53 	mcrmi	15, 2, r5, cr9, cr3, {2}
    6324:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    6328:	5f003120 	svcpl	0x00003120
    632c:	544f445f 	strbpl	r4, [pc], #-1119	; 6334 <__bss_end__+0x304c>
    6330:	202c2053 	eorcs	r2, ip, r3, asr r0
    6334:	002e2e2e 	eoreq	r2, lr, lr, lsr #28
    6338:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    633c:	5f343643 	svcpl	0x00343643
    6340:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
    6344:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    6348:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    634c:	525f0036 	subspl	r0, pc, #54	; 0x36
    6350:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    6354:	5445475f 	strbpl	r4, [r5], #-1887	; 0xfffff8a1
    6358:	45544144 	ldrbmi	r4, [r4, #-324]	; 0xfffffebc
    635c:	5252455f 	subspl	r4, r2, #398458880	; 0x17c00000
    6360:	7028505f 	eorvc	r5, r8, pc, asr r0
    6364:	20297274 	eorcs	r7, r9, r4, ror r2
    6368:	28282628 	stmdacs	r8!, {r3, r5, r9, sl, sp}
    636c:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    6370:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 62c4 <__bss_end__+0x2fdc>
    6374:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    6378:	65675f3e 	strbvs	r5, [r7, #-3902]!	; 0xfffff0c2
    637c:	74616474 	strbtvc	r6, [r1], #-1140	; 0xfffffb8c
    6380:	72655f65 	rsbvc	r5, r5, #404	; 0x194
    6384:	00292972 	eoreq	r2, r9, r2, ror r9
    6388:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    638c:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    6390:	30315f4e 	eorscc	r5, r1, lr, asr #30
    6394:	5058455f 	subspl	r4, r8, pc, asr r5
    6398:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    639c:	2937332d 	ldmdbcs	r7!, {r0, r2, r3, r5, r8, r9, ip, sp}
    63a0:	43535f00 	cmpmi	r3, #0, 30
    63a4:	4752415f 			; <UNDEFINED> instruction: 0x4752415f
    63a8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    63ac:	5f003020 	svcpl	0x00003020
    63b0:	414c555f 	cmpmi	ip, pc, asr r5
    63b4:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    63b8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    63bc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    63c0:	5f003233 	svcpl	0x00003233
    63c4:	6c6c754e 	cfstr64vs	mvdx7, [ip], #-312	; 0xfffffec8
    63c8:	736e755f 	cmnvc	lr, #398458880	; 0x17c00000
    63cc:	69636570 	stmdbvs	r3!, {r4, r5, r6, r8, sl, sp, lr}^
    63d0:	64656966 	strbtvs	r6, [r5], #-2406	; 0xfffff69a
    63d4:	5f5f0020 	svcpl	0x005f0020
    63d8:	54524853 	ldrbpl	r4, [r2], #-2131	; 0xfffff7ad
    63dc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    63e0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    63e4:	66663778 			; <UNDEFINED> instruction: 0x66663778
    63e8:	41550066 	cmpmi	r5, r6, rrx
    63ec:	425f5452 	subsmi	r5, pc, #1375731712	; 0x52000000
    63f0:	47445541 	strbmi	r5, [r4, -r1, asr #10]
    63f4:	4d5f4e45 	ldclmi	14, cr4, [pc, #-276]	; 62e8 <__bss_end__+0x3000>
    63f8:	204b5341 	subcs	r5, fp, r1, asr #6
    63fc:	30307830 	eorscc	r7, r0, r0, lsr r8
    6400:	46463030 			; <UNDEFINED> instruction: 0x46463030
    6404:	5f004646 	svcpl	0x00004646
    6408:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    640c:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    6410:	50455f4d 	subpl	r5, r5, sp, asr #30
    6414:	4f4c4953 	svcmi	0x004c4953
    6418:	205f5f4e 	subscs	r5, pc, lr, asr #30
    641c:	50317830 	eorspl	r7, r1, r0, lsr r8
    6420:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
    6424:	004b4c4c 	subeq	r4, fp, ip, asr #24
    6428:	5a49535f 	bpl	125b1ac <_end+0x25b1ac>
    642c:	5f545f45 	svcpl	0x00545f45
    6430:	49464544 	stmdbmi	r6, {r2, r6, r8, sl, lr}^
    6434:	2044454e 	subcs	r4, r4, lr, asr #10
    6438:	415f5f00 	cmpmi	pc, r0, lsl #30
    643c:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    6440:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    6444:	4c5f4552 	cfldr64mi	mvdx4, [pc], {82}	; 0x52
    6448:	58455244 	stmdapl	r5, {r2, r6, r9, ip, lr}^
    644c:	00353120 	eorseq	r3, r5, r0, lsr #2
    6450:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    6454:	49565f55 	ldmdbmi	r6, {r0, r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    6458:	4c424953 	mcrrmi	9, 5, r4, r2, cr3	; <UNPREDICTABLE>
    645c:	00302045 	eorseq	r2, r0, r5, asr #32
    6460:	41535f5f 	cmpmi	r3, pc, asr pc
    6464:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    6468:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    646c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    6470:	5f5f0038 	svcpl	0x005f0038
    6474:	465f5144 	ldrbmi	r5, [pc], -r4, asr #2
    6478:	5f544942 	svcpl	0x00544942
    647c:	3336205f 	teqcc	r6, #95	; 0x5f
    6480:	63775f00 	cmnvs	r7, #0, 30
    6484:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
    6488:	6174735f 	cmnvs	r4, pc, asr r3
    648c:	5f006574 	svcpl	0x00006574
    6490:	5254505f 	subspl	r5, r4, #95	; 0x5f
    6494:	46464944 	strbmi	r4, [r6], -r4, asr #18
    6498:	0020545f 	eoreq	r5, r0, pc, asr r4
    649c:	48555f5f 	ldmdami	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    64a0:	42495f51 	submi	r5, r9, #324	; 0x144
    64a4:	5f5f5449 	svcpl	0x005f5449
    64a8:	49003020 	stmdbmi	r0, {r5, ip, sp}
    64ac:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    64b0:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    64b4:	494d5f38 	stmdbmi	sp, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    64b8:	535f004e 	cmppl	pc, #78	; 0x4e
    64bc:	454c5f43 	strbmi	r5, [ip, #-3907]	; 0xfffff0bd
    64c0:	314c4556 	cmpcc	ip, r6, asr r5
    64c4:	4143445f 	cmpmi	r3, pc, asr r4
    64c8:	5f454843 	svcpl	0x00454843
    64cc:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    64d0:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    64d4:	30333120 	eorscc	r3, r3, r0, lsr #2
    64d8:	73645f00 	cmnvc	r4, #0, 30
    64dc:	61685f6f 	cmnvs	r8, pc, ror #30
    64e0:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
    64e4:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    64e8:	485f4343 	ldmdami	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    64ec:	5f455641 	svcpl	0x00455641
    64f0:	434e5953 	movtmi	r5, #59731	; 0xe953
    64f4:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; 6380 <__bss_end__+0x3098>
    64f8:	45524150 	ldrbmi	r4, [r2, #-336]	; 0xfffffeb0
    64fc:	444e415f 	strbmi	r4, [lr], #-351	; 0xfffffea1
    6500:	4157535f 	cmpmi	r7, pc, asr r3
    6504:	20345f50 	eorscs	r5, r4, r0, asr pc
    6508:	5f5f0031 	svcpl	0x005f0031
    650c:	5f544e49 	svcpl	0x00544e49
    6510:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    6514:	545f3631 	ldrbpl	r3, [pc], #-1585	; 651c <__bss_end__+0x3234>
    6518:	5f455059 	svcpl	0x00455059
    651c:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
    6520:	555f0074 	ldrbpl	r0, [pc, #-116]	; 64b4 <__bss_end__+0x31cc>
    6524:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    6528:	545f5841 	ldrbpl	r5, [pc], #-2113	; 6530 <__bss_end__+0x3248>
    652c:	4345445f 	movtmi	r4, #21599	; 0x545f
    6530:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    6534:	4d002044 	stcmi	0, cr2, [r0, #-272]	; 0xfffffef0
    6538:	4d45444f 	cfstrdmi	mvd4, [r5, #-316]	; 0xfffffec4
    653c:	5f005243 	svcpl	0x00005243
    6540:	646e6172 	strbtvs	r6, [lr], #-370	; 0xfffffe8e
    6544:	5f003834 	svcpl	0x00003834
    6548:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    654c:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    6550:	31545341 	cmpcc	r4, r1, asr #6
    6554:	59545f36 	ldmdbpl	r4, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    6558:	5f5f4550 	svcpl	0x005f4550
    655c:	6f687320 	svcvs	0x00687320
    6560:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
    6564:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    6568:	2064656e 	rsbcs	r6, r4, lr, ror #10
    656c:	00746e69 	rsbseq	r6, r4, r9, ror #28
    6570:	5f44495f 	svcpl	0x0044495f
    6574:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    6578:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    657c:	00204445 	eoreq	r4, r0, r5, asr #8
    6580:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    6584:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    6588:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    658c:	4d465f45 	stclmi	15, cr5, [r6, #-276]	; 0xfffffeec
    6590:	5f5f0041 	svcpl	0x005f0041
    6594:	4343414c 	movtmi	r4, #12620	; 0x314c
    6598:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 644c <__bss_end__+0x3164>
    659c:	5f5f5841 	svcpl	0x005f5841
    65a0:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    65a4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    65a8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    65ac:	46464646 	strbmi	r4, [r6], -r6, asr #12
    65b0:	50464646 	subpl	r4, r6, r6, asr #12
    65b4:	4c31332d 	ldcmi	3, cr3, [r1], #-180	; 0xffffff4c
    65b8:	5f5f004b 	svcpl	0x005f004b
    65bc:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    65c0:	545f3631 	ldrbpl	r3, [pc], #-1585	; 65c8 <__bss_end__+0x32e0>
    65c4:	5f455059 	svcpl	0x00455059
    65c8:	6873205f 	ldmdavs	r3!, {r0, r1, r2, r3, r4, r6, sp}^
    65cc:	2074726f 	rsbscs	r7, r4, pc, ror #4
    65d0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    65d4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    65d8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    65dc:	635f5f00 	cmpvs	pc, #0, 30
    65e0:	6b636f6c 	blvs	18e2398 <_end+0x8e2398>
    65e4:	745f6469 	ldrbvc	r6, [pc], #-1129	; 65ec <__bss_end__+0x3304>
    65e8:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    65ec:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    65f0:	535f0020 	cmppl	pc, #32
    65f4:	53465f43 	movtpl	r5, #28483	; 0x6f43
    65f8:	20434e59 	subcs	r4, r3, r9, asr lr
    65fc:	5f003232 	svcpl	0x00003232
    6600:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    6604:	5f583233 	svcpl	0x00583233
    6608:	5f474944 	svcpl	0x00474944
    660c:	3531205f 	ldrcc	r2, [r1, #-95]!	; 0xffffffa1
    6610:	735f5f00 	cmpvc	pc, #0, 30
    6614:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    6618:	69732064 	ldmdbvs	r3!, {r2, r5, r6, sp}^
    661c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    6620:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 5728 <__bss_end__+0x2440>
    6624:	465f5154 			; <UNDEFINED> instruction: 0x465f5154
    6628:	5f544942 	svcpl	0x00544942
    662c:	3231205f 	eorscc	r2, r1, #95	; 0x5f
    6630:	505f0038 	subspl	r0, pc, r8, lsr r0	; <UNPREDICTABLE>
    6634:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
    6638:	494d5f43 	stmdbmi	sp, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    663c:	46585f4e 	ldrbmi	r5, [r8], -lr, asr #30
    6640:	535f5245 	cmppl	pc, #1342177284	; 0x50000004
    6644:	20455a49 	subcs	r5, r5, r9, asr #20
    6648:	55003831 	strpl	r3, [r0, #-2097]	; 0xfffff7cf
    664c:	5f545241 	svcpl	0x00545241
    6650:	535f5243 	cmppl	pc, #805306372	; 0x30000004
    6654:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
    6658:	204b5242 	subcs	r5, fp, r2, asr #4
    665c:	30307830 	eorscc	r7, r0, r0, lsr r8
    6660:	30303030 	eorscc	r3, r0, r0, lsr r0
    6664:	5f003038 	svcpl	0x00003038
    6668:	434b4c42 	movtmi	r4, #48194	; 0xbc42
    666c:	545f544e 	ldrbpl	r5, [pc], #-1102	; 6674 <__bss_end__+0x338c>
    6670:	4345445f 	movtmi	r4, #21599	; 0x545f
    6674:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    6678:	5f002044 	svcpl	0x00002044
    667c:	4e49465f 	mcrmi	6, 2, r4, cr9, cr15, {2}
    6680:	5f455449 	svcpl	0x00455449
    6684:	4854414d 	ldmdami	r4, {r0, r2, r3, r6, r8, lr}^
    6688:	4c4e4f5f 	mcrrmi	15, 5, r4, lr, cr15
    668c:	205f5f59 	subscs	r5, pc, r9, asr pc	; <UNPREDICTABLE>
    6690:	525f0030 	subspl	r0, pc, #48	; 0x30
    6694:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    6698:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    669c:	535f4b43 	cmppl	pc, #68608	; 0x10c00
    66a0:	414e4749 	cmpmi	lr, r9, asr #14
    66a4:	55425f4c 	strbpl	r5, [r2, #-3916]	; 0xfffff0b4
    66a8:	61762846 	cmnvs	r6, r6, asr #16
    66ac:	5f202972 	svcpl	0x00202972
    66b0:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    66b4:	48435f54 	stmdami	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    66b8:	284b4345 	stmdacs	fp, {r0, r2, r6, r8, r9, lr}^
    66bc:	2c726176 	ldfcse	f6, [r2], #-472	; 0xfffffe28
    66c0:	69735f20 	ldmdbvs	r3!, {r5, r8, r9, sl, fp, ip, lr}^
    66c4:	6c616e67 	stclvs	14, cr6, [r1], #-412	; 0xfffffe64
    66c8:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
    66cc:	6863202c 	stmdavs	r3!, {r2, r3, r5, sp}^
    66d0:	2a207261 	bcs	82305c <heap_size+0x80305c>
    66d4:	525f202c 	subspl	r2, pc, #44	; 0x2c
    66d8:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    66dc:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    66e0:	5f4c414e 	svcpl	0x004c414e
    66e4:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    66e8:	0029202c 	eoreq	r2, r9, ip, lsr #32
    66ec:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    66f0:	41465f54 	cmpmi	r6, r4, asr pc
    66f4:	36315453 			; <UNDEFINED> instruction: 0x36315453
    66f8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    66fc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    6700:	66663778 			; <UNDEFINED> instruction: 0x66663778
    6704:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    6708:	5f5f0066 	svcpl	0x005f0066
    670c:	65766168 	ldrbvs	r6, [r6, #-360]!	; 0xfffffe98
    6710:	6e6f6c5f 	mcrvs	12, 3, r6, cr15, cr15, {2}
    6714:	6e6f6c67 	cdpvs	12, 6, cr6, cr15, cr7, {3}
    6718:	20343667 	eorscs	r3, r4, r7, ror #12
    671c:	41550031 	cmpmi	r5, r1, lsr r0
    6720:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    6724:	4f545f52 	svcmi	0x00545f52
    6728:	30205455 	eorcc	r5, r0, r5, asr r4
    672c:	30303078 	eorscc	r3, r0, r8, ror r0
    6730:	30313030 	eorscc	r3, r1, r0, lsr r0
    6734:	535f0030 	cmppl	pc, #48	; 0x30
    6738:	48505f43 	ldmdami	r0, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    673c:	505f5359 	subspl	r5, pc, r9, asr r3	; <UNPREDICTABLE>
    6740:	53454741 	movtpl	r4, #22337	; 0x5741
    6744:	00313120 	eorseq	r3, r1, r0, lsr #2
    6748:	6b6c625f 	blvs	1b1f0cc <_end+0xb1f0cc>
    674c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    6750:	45455300 	strbmi	r5, [r5, #-768]	; 0xfffffd00
    6754:	4e455f4b 	cdpmi	15, 4, cr5, cr5, cr11, {2}
    6758:	00322044 	eorseq	r2, r2, r4, asr #32
    675c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    6760:	545f3854 	ldrbpl	r3, [pc], #-2132	; 6768 <__bss_end__+0x3480>
    6764:	4345445f 	movtmi	r4, #21599	; 0x545f
    6768:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    676c:	5f002044 	svcpl	0x00002044
    6770:	6f6c635f 	svcvs	0x006c635f
    6774:	745f6b63 	ldrbvc	r6, [pc], #-2915	; 677c <__bss_end__+0x3494>
    6778:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    677c:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    6780:	4e490020 	cdpmi	0, 4, cr0, cr9, cr0, {1}
    6784:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 663c <__bss_end__+0x3354>
    6788:	5f004e49 	svcpl	0x00004e49
    678c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    6790:	5f525450 	svcpl	0x00525450
    6794:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    6798:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    679c:	00204445 	eoreq	r4, r0, r5, asr #8
    67a0:	4d4f4445 	cfstrdmi	mvd4, [pc, #-276]	; 6694 <__bss_end__+0x33ac>
    67a4:	00333320 	eorseq	r3, r3, r0, lsr #6
    67a8:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    67ac:	545f5241 	ldrbpl	r5, [pc], #-577	; 67b4 <__bss_end__+0x34cc>
    67b0:	4645445f 			; <UNDEFINED> instruction: 0x4645445f
    67b4:	44454e49 	strbmi	r4, [r5], #-3657	; 0xfffff1b7
    67b8:	625f0020 	subsvs	r0, pc, #32
    67bc:	00657361 	rsbeq	r7, r5, r1, ror #6
    67c0:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    67c4:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    67c8:	414d5f4d 	cmpmi	sp, sp, asr #30
    67cc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    67d0:	46465830 			; <UNDEFINED> instruction: 0x46465830
    67d4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    67d8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    67dc:	46464646 	strbmi	r4, [r6], -r6, asr #12
    67e0:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    67e4:	4c553233 	lfmmi	f3, 2, [r5], {51}	; 0x33
    67e8:	5f5f004b 	svcpl	0x005f004b
    67ec:	6c797274 	lfmvs	f7, 2, [r9], #-464	; 0xfffffe30
    67f0:	736b636f 	cmnvc	fp, #-1140850687	; 0xbc000001
    67f4:	6378655f 	cmnvs	r8, #398458880	; 0x17c00000
    67f8:	6973756c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
    67fc:	2e286576 	mcrcs	5, 1, r6, cr8, cr6, {3}
    6800:	20292e2e 	eorcs	r2, r9, lr, lsr #28
    6804:	6f6c5f5f 	svcvs	0x006c5f5f
    6808:	615f6b63 	cmpvs	pc, r3, ror #22
    680c:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 6814 <__bss_end__+0x352c>
    6810:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    6814:	6c637865 	stclvs	8, cr7, [r3], #-404	; 0xfffffe6c
    6818:	76697375 			; <UNDEFINED> instruction: 0x76697375
    681c:	72745f65 	rsbsvc	r5, r4, #404	; 0x194
    6820:	636f6c79 	cmnvs	pc, #30976	; 0x7900
    6824:	75665f6b 	strbvc	r5, [r6, #-3947]!	; 0xfffff095
    6828:	6974636e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    682c:	5f286e6f 	svcpl	0x00286e6f
    6830:	5f41565f 	svcpl	0x0041565f
    6834:	53475241 	movtpl	r5, #29249	; 0x7241
    6838:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    683c:	47495300 	strbmi	r5, [r9, -r0, lsl #6]
    6840:	4f54415f 	svcmi	0x0054415f
    6844:	5f43494d 	svcpl	0x0043494d
    6848:	0058414d 	subseq	r4, r8, sp, asr #2
    684c:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    6850:	525f544e 	subspl	r5, pc, #1308622848	; 0x4e000000
    6854:	5f444e41 	svcpl	0x00444e41
    6858:	5458454e 	ldrbpl	r4, [r8], #-1358	; 0xfffffab2
    685c:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    6860:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    6864:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    6868:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
    686c:	3e2d3834 	mcrcc	8, 1, r3, cr13, cr4, {1}
    6870:	6e61725f 	mcrvs	2, 3, r7, cr1, cr15, {2}
    6874:	656e5f64 	strbvs	r5, [lr, #-3940]!	; 0xfffff09c
    6878:	00297478 	eoreq	r7, r9, r8, ror r4
    687c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    6880:	5341465f 	movtpl	r4, #5727	; 0x165f
    6884:	5f323354 	svcpl	0x00323354
    6888:	2058414d 	subscs	r4, r8, sp, asr #2
    688c:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    6890:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    6894:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    6898:	414d5f32 	cmpmi	sp, r2, lsr pc
    689c:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    68a0:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    68a4:	43415246 	movtmi	r5, #4678	; 0x1246
    68a8:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    68ac:	205f5f4e 	subscs	r5, pc, lr, asr #30
    68b0:	55302e30 	ldrpl	r2, [r0, #-3632]!	; 0xfffff1d0
    68b4:	6f00524c 	svcvs	0x0000524c
    68b8:	72657470 	rsbvc	r7, r5, #112, 8	; 0x70000000
    68bc:	735f0072 	cmpvc	pc, #114	; 0x72
    68c0:	6f747274 	svcvs	0x00747274
    68c4:	616c5f6b 	cmnvs	ip, fp, ror #30
    68c8:	5f007473 	svcpl	0x00007473
    68cc:	5f51445f 	svcpl	0x0051445f
    68d0:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    68d4:	30205f5f 	eorcc	r5, r0, pc, asr pc
    68d8:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    68dc:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    68e0:	5059545f 	subspl	r5, r9, pc, asr r4
    68e4:	205f5f45 	subscs	r5, pc, r5, asr #30
    68e8:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    68ec:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    68f0:	615f5f00 	cmpvs	pc, r0, lsl #30
    68f4:	7961776c 	stmdbvc	r1!, {r2, r3, r5, r6, r8, r9, sl, ip, sp, lr}^
    68f8:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
    68fc:	656e696c 	strbvs	r6, [lr, #-2412]!	; 0xfffff694
    6900:	695f5f20 	ldmdbvs	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    6904:	6e696c6e 	cdpvs	12, 6, cr6, cr9, cr14, {3}
    6908:	205f5f65 	subscs	r5, pc, r5, ror #30
    690c:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    6910:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    6914:	5f657475 	svcpl	0x00657475
    6918:	5f28285f 	svcpl	0x0028285f
    691c:	776c615f 			; <UNDEFINED> instruction: 0x776c615f
    6920:	5f737961 	svcpl	0x00737961
    6924:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6928:	5f5f656e 	svcpl	0x005f656e
    692c:	5f002929 	svcpl	0x00002929
    6930:	7472626d 	ldrbtvc	r6, [r2], #-621	; 0xfffffd93
    6934:	5f63776f 	svcpl	0x0063776f
    6938:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    693c:	5f5f0065 	svcpl	0x005f0065
    6940:	746e6f63 	strbtvc	r6, [lr], #-3939	; 0xfffff09d
    6944:	656e6961 	strbvs	r6, [lr, #-2401]!	; 0xfffff69f
    6948:	28666f72 	stmdacs	r6!, {r1, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
    694c:	2c732c78 	ldclcs	12, cr2, [r3], #-480	; 0xfffffe20
    6950:	2820296d 	stmdacs	r0!, {r0, r2, r3, r5, r6, r8, fp, sp}
    6954:	6f63207b 	svcvs	0x0063207b
    6958:	2074736e 	rsbscs	r7, r4, lr, ror #6
    695c:	616c6f76 	smcvs	50934	; 0xc6f6
    6960:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    6964:	745f5f20 	ldrbvc	r5, [pc], #-3872	; 696c <__bss_end__+0x3684>
    6968:	6f657079 	svcvs	0x00657079
    696c:	28282866 	stmdacs	r8!, {r1, r2, r5, r6, fp, sp}
    6970:	292a2073 	stmdbcs	sl!, {r0, r1, r4, r5, r6, sp}
    6974:	3e2d2930 			; <UNDEFINED> instruction: 0x3e2d2930
    6978:	2a20296d 	bcs	810f34 <heap_size+0x7f0f34>
    697c:	20785f5f 	rsbscs	r5, r8, pc, asr pc
    6980:	7828203d 	stmdavc	r8!, {r0, r2, r3, r4, r5, sp}
    6984:	5f203b29 	svcpl	0x00203b29
    6988:	5145445f 	cmppl	r5, pc, asr r4
    698c:	494c4155 	stmdbmi	ip, {r0, r2, r4, r6, r8, lr}^
    6990:	73285946 			; <UNDEFINED> instruction: 0x73285946
    6994:	202c2a20 	eorcs	r2, ip, r0, lsr #20
    6998:	6e6f6328 	cdpvs	3, 6, cr6, cr15, cr8, {1}
    699c:	76207473 			; <UNDEFINED> instruction: 0x76207473
    69a0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    69a4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    69a8:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    69ac:	5f292a20 	svcpl	0x00292a20
    69b0:	2d20785f 	stccs	8, cr7, [r0, #-380]!	; 0xfffffe84
    69b4:	6f5f5f20 	svcvs	0x005f5f20
    69b8:	65736666 	ldrbvs	r6, [r3, #-1638]!	; 0xfffff99a
    69bc:	28666f74 	stmdacs	r6!, {r2, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
    69c0:	6d202c73 	stcvs	12, cr2, [r0, #-460]!	; 0xfffffe34
    69c4:	7d3b2929 			; <UNDEFINED> instruction: 0x7d3b2929
    69c8:	555f0029 	ldrbpl	r0, [pc, #-41]	; 69a7 <__bss_end__+0x36bf>
    69cc:	33544e49 	cmpcc	r4, #1168	; 0x490
    69d0:	5f545f32 	svcpl	0x00545f32
    69d4:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    69d8:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    69dc:	425f0020 	subsmi	r0, pc, #32
    69e0:	535f4453 	cmppl	pc, #1392508928	; 0x53000000
    69e4:	5f455a49 	svcpl	0x00455a49
    69e8:	00205f54 	eoreq	r5, r0, r4, asr pc
    69ec:	41484357 	cmpmi	r8, r7, asr r3
    69f0:	494d5f52 	stmdbmi	sp, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    69f4:	535f004e 	cmppl	pc, #78	; 0x4e
    69f8:	49415f43 	stmdbmi	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    69fc:	52505f4f 	subspl	r5, r0, #316	; 0x13c
    6a00:	445f4f49 	ldrbmi	r4, [pc], #-3913	; 6a08 <__bss_end__+0x3720>
    6a04:	41544c45 	cmpmi	r4, r5, asr #24
    6a08:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6a0c:	00363320 	eorseq	r3, r6, r0, lsr #6
    6a10:	6f6e5f5f 	svcvs	0x006e5f5f
    6a14:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    6a18:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    6a1c:	73796c61 	cmnvc	r9, #24832	; 0x6100
    6a20:	5f207369 	svcpl	0x00207369
    6a24:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    6a28:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    6a2c:	61746f6e 	cmnvs	r4, lr, ror #30
    6a30:	6e286574 	mcrvs	5, 1, r6, cr8, cr4, {3}
    6a34:	68745f6f 	ldmdavs	r4!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    6a38:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
    6a3c:	6661735f 			; <UNDEFINED> instruction: 0x6661735f
    6a40:	5f797465 	svcpl	0x00797465
    6a44:	6c616e61 	stclvs	14, cr6, [r1], #-388	; 0xfffffe7c
    6a48:	73697379 	cmnvc	r9, #-469762047	; 0xe4000001
    6a4c:	665f0029 	ldrbvs	r0, [pc], -r9, lsr #32
    6a50:	6b636f6c 	blvs	18e2808 <_end+0x8e2808>
    6a54:	5500745f 	strpl	r7, [r0, #-1119]	; 0xfffffba1
    6a58:	5f544e49 	svcpl	0x00544e49
    6a5c:	5341454c 	movtpl	r4, #5452	; 0x154c
    6a60:	5f363154 	svcpl	0x00363154
    6a64:	2058414d 	subscs	r4, r8, sp, asr #2
    6a68:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    6a6c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    6a70:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    6a74:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 69b8 <__bss_end__+0x36d0>
    6a78:	5f5f5841 	svcpl	0x005f5841
    6a7c:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    6a80:	5f544e45 	svcpl	0x00544e45
    6a84:	43454843 	movtmi	r4, #22595	; 0x5843
    6a88:	53415f4b 	movtpl	r5, #8011	; 0x1f4b
    6a8c:	4d495443 	cfstrdmi	mvd5, [r9, #-268]	; 0xfffffef4
    6a90:	55425f45 	strbpl	r5, [r2, #-3909]	; 0xfffff0bb
    6a94:	61762846 	cmnvs	r6, r6, asr #16
    6a98:	5f202972 	svcpl	0x00202972
    6a9c:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    6aa0:	48435f54 	stmdami	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    6aa4:	284b4345 	stmdacs	fp, {r0, r2, r6, r8, r9, lr}^
    6aa8:	2c726176 	ldfcse	f6, [r2], #-472	; 0xfffffe28
    6aac:	73615f20 	cmnvc	r1, #32, 30	; 0x80
    6ab0:	6d697463 	cfstrdvs	mvd7, [r9, #-396]!	; 0xfffffe74
    6ab4:	75625f65 	strbvc	r5, [r2, #-3941]!	; 0xfffff09b
    6ab8:	63202c66 			; <UNDEFINED> instruction: 0x63202c66
    6abc:	20726168 	rsbscs	r6, r2, r8, ror #2
    6ac0:	5f202c2a 	svcpl	0x00202c2a
    6ac4:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    6ac8:	53415f54 	movtpl	r5, #8020	; 0x1f54
    6acc:	4d495443 	cfstrdmi	mvd5, [r9, #-268]	; 0xfffffef4
    6ad0:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    6ad4:	202c455a 	eorcs	r4, ip, sl, asr r5
    6ad8:	736d656d 	cmnvc	sp, #457179136	; 0x1b400000
    6adc:	28287465 	stmdacs	r8!, {r0, r2, r5, r6, sl, ip, sp, lr}
    6ae0:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    6ae4:	615f3e2d 	cmpvs	pc, sp, lsr #28
    6ae8:	69746373 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, r9, sp, lr}^
    6aec:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
    6af0:	202c6675 	eorcs	r6, ip, r5, ror r6
    6af4:	5f202c30 	svcpl	0x00202c30
    6af8:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    6afc:	53415f54 	movtpl	r5, #8020	; 0x1f54
    6b00:	4d495443 	cfstrdmi	mvd5, [r9, #-268]	; 0xfffffef4
    6b04:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    6b08:	2929455a 	stmdbcs	r9!, {r1, r3, r4, r6, r8, sl, lr}
    6b0c:	43535f00 	cmpmi	r3, #0, 30
    6b10:	505f325f 	subspl	r3, pc, pc, asr r2	; <UNPREDICTABLE>
    6b14:	31205342 			; <UNDEFINED> instruction: 0x31205342
    6b18:	5f003331 	svcpl	0x00003331
    6b1c:	4c49465f 	mcrrmi	6, 5, r4, r9, cr15
    6b20:	535f0045 	cmppl	pc, #69	; 0x45
    6b24:	4f585f43 	svcmi	0x00585f43
    6b28:	5f4e4550 	svcpl	0x004e4550
    6b2c:	50595243 	subspl	r5, r9, r3, asr #4
    6b30:	36392054 			; <UNDEFINED> instruction: 0x36392054
    6b34:	4f4e4500 	svcmi	0x004e4500
    6b38:	434f5354 	movtmi	r5, #62292	; 0xf354
    6b3c:	3031204b 	eorscc	r2, r1, fp, asr #32
    6b40:	535f0038 	cmppl	pc, #56	; 0x38
    6b44:	50435f43 	subpl	r5, r3, r3, asr #30
    6b48:	4d495455 	cfstrdmi	mvd5, [r9, #-340]	; 0xfffffeac
    6b4c:	33362045 	teqcc	r6, #69	; 0x45
    6b50:	415f5f00 	cmpmi	pc, r0, lsl #30
    6b54:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    6b58:	32312050 	eorscc	r2, r1, #80	; 0x50
    6b5c:	43535f00 	cmpmi	r3, #0, 30
    6b60:	4741505f 	smlsldmi	r5, r1, pc, r0	; <UNPREDICTABLE>
    6b64:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    6b68:	5f20455a 	svcpl	0x0020455a
    6b6c:	505f4353 	subspl	r4, pc, r3, asr r3	; <UNPREDICTABLE>
    6b70:	53454741 	movtpl	r4, #22337	; 0x5741
    6b74:	00455a49 	subeq	r5, r5, r9, asr #20
    6b78:	4d49545f 	cfstrdmi	mvd5, [r9, #-380]	; 0xfffffe84
    6b7c:	5f545f45 	svcpl	0x00545f45
    6b80:	695f5f20 	ldmdbvs	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    6b84:	6c5f746e 	cfldrdvs	mvd7, [pc], {110}	; 0x6e
    6b88:	74736165 	ldrbtvc	r6, [r3], #-357	; 0xfffffe9b
    6b8c:	745f3436 	ldrbvc	r3, [pc], #-1078	; 6b94 <__bss_end__+0x38ac>
    6b90:	4c435f00 	mcrrmi	15, 0, r5, r3, cr0
    6b94:	494b434f 	stmdbmi	fp, {r0, r1, r2, r3, r6, r8, r9, lr}^
    6b98:	5f545f44 	svcpl	0x00545f44
    6b9c:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    6ba0:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    6ba4:	6f6c2064 	svcvs	0x006c2064
    6ba8:	5f00676e 	svcpl	0x0000676e
    6bac:	5f444947 	svcpl	0x00444947
    6bb0:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    6bb4:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    6bb8:	00204445 	eoreq	r4, r0, r5, asr #8
    6bbc:	54555f5f 	ldrbpl	r5, [r5], #-3935	; 0xfffff0a1
    6bc0:	42495f51 	submi	r5, r9, #324	; 0x144
    6bc4:	5f5f5449 	svcpl	0x005f5449
    6bc8:	49003020 	stmdbmi	r0, {r5, ip, sp}
    6bcc:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    6bd0:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    6bd4:	414d5f32 	cmpmi	sp, r2, lsr pc
    6bd8:	5f5f2058 	svcpl	0x005f2058
    6bdc:	5f544e49 	svcpl	0x00544e49
    6be0:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    6be4:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 6b20 <__bss_end__+0x3838>
    6be8:	5f5f5841 	svcpl	0x005f5841
    6bec:	535f5f00 	cmppl	pc, #0, 30
    6bf0:	42465f41 	submi	r5, r6, #260	; 0x104
    6bf4:	5f5f5449 	svcpl	0x005f5449
    6bf8:	00353120 	eorseq	r3, r5, r0, lsr #2
    6bfc:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    6c00:	43575f54 	cmpmi	r7, #84, 30	; 0x150
    6c04:	5f524148 	svcpl	0x00524148
    6c08:	20485f54 	subcs	r5, r8, r4, asr pc
    6c0c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    6c10:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    6c14:	414d5f58 	cmpmi	sp, r8, asr pc
    6c18:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    6c1c:	39372e31 	ldmdbcc	r7!, {r0, r4, r5, r9, sl, fp, sp}
    6c20:	33393637 	teqcc	r9, #57671680	; 0x3700000
    6c24:	38343331 	ldmdacc	r4!, {r0, r4, r5, r8, r9, ip, sp}
    6c28:	31333236 	teqcc	r3, r6, lsr r2
    6c2c:	2b653735 	blcs	1954908 <_end+0x954908>
    6c30:	46383033 			; <UNDEFINED> instruction: 0x46383033
    6c34:	00783233 	rsbseq	r3, r8, r3, lsr r2
    6c38:	5f43535f 	svcpl	0x0043535f
    6c3c:	4c4d454d 	cfstr64mi	mvdx4, [sp], {77}	; 0x4d
    6c40:	5f4b434f 	svcpl	0x004b434f
    6c44:	474e4152 	smlsldmi	r4, lr, r2, r1
    6c48:	35322045 	ldrcc	r2, [r2, #-69]!	; 0xffffffbb
    6c4c:	72615500 	rsbvc	r5, r1, #0, 10
    6c50:	616e4574 	smcvs	58452	; 0xe454
    6c54:	00656c62 	rsbeq	r6, r5, r2, ror #24
    6c58:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    6c5c:	41455f4d 	cmpmi	r5, sp, asr #30
    6c60:	5f5f4942 	svcpl	0x005f4942
    6c64:	5f003120 	svcpl	0x00003120
    6c68:	00383472 	eorseq	r3, r8, r2, ror r4
    6c6c:	41555f5f 	cmpmi	r5, pc, asr pc
    6c70:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    6c74:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    6c78:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    6c7c:	49003631 	stmdbmi	r0, {r0, r4, r5, r9, sl, ip, sp}
    6c80:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    6c84:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    6c88:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; 5d90 <__bss_end__+0x2aa8>
    6c8c:	5f5f464c 	svcpl	0x005f464c
    6c90:	5f003120 	svcpl	0x00003120
    6c94:	485f4353 	ldmdami	pc, {r0, r1, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    6c98:	5f54534f 	svcpl	0x0054534f
    6c9c:	454d414e 	strbmi	r4, [sp, #-334]	; 0xfffffeb2
    6ca0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6ca4:	00353620 	eorseq	r3, r5, r0, lsr #12
    6ca8:	4343475f 	movtmi	r4, #14175	; 0x375f
    6cac:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    6cb0:	545f5241 	ldrbpl	r5, [pc], #-577	; 6cb8 <__bss_end__+0x39d0>
    6cb4:	41550020 	cmpmi	r5, r0, lsr #32
    6cb8:	435f5452 	cmpmi	pc, #1375731712	; 0x52000000
    6cbc:	54535f52 	ldrbpl	r5, [r3], #-3922	; 0xfffff0ae
    6cc0:	5242504f 	subpl	r5, r2, #79	; 0x4f
    6cc4:	7830204b 	ldmdavc	r0!, {r0, r1, r3, r6, sp}
    6cc8:	30303030 	eorscc	r3, r0, r0, lsr r0
    6ccc:	30303130 	eorscc	r3, r0, r0, lsr r1
    6cd0:	415f5f00 	cmpmi	pc, r0, lsl #30
    6cd4:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    6cd8:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    6cdc:	445f4552 	ldrbmi	r4, [pc], #-1362	; 6ce4 <__bss_end__+0x39fc>
    6ce0:	31205053 	qsubcc	r5, r3, r0
    6ce4:	43535f00 	cmpmi	r3, #0, 30
    6ce8:	4d45535f 	stclmi	3, cr5, [r5, #-380]	; 0xfffffe84
    6cec:	45534e5f 	ldrbmi	r4, [r3, #-3679]	; 0xfffff1a1
    6cf0:	4d5f534d 	ldclmi	3, cr5, [pc, #-308]	; 6bc4 <__bss_end__+0x38dc>
    6cf4:	31205841 			; <UNDEFINED> instruction: 0x31205841
    6cf8:	54530036 	ldrbpl	r0, [r3], #-54	; 0xffffffca
    6cfc:	52524544 	subspl	r4, r2, #68, 10	; 0x11000000
    6d00:	4c49465f 	mcrrmi	6, 5, r4, r9, cr15
    6d04:	204f4e45 	subcs	r4, pc, r5, asr #28
    6d08:	41550032 	cmpmi	r5, r2, lsr r0
    6d0c:	20305452 	eorscs	r5, r0, r2, asr r4
    6d10:	41552828 	cmpmi	r5, r8, lsr #16
    6d14:	525f5452 	subspl	r5, pc, #1375731712	; 0x52000000
    6d18:	73696765 	cmnvc	r9, #26476544	; 0x1940000
    6d1c:	73726574 	cmnvc	r2, #116, 10	; 0x1d000000
    6d20:	55292a20 	strpl	r2, [r9, #-2592]!	; 0xfffff5e0
    6d24:	30545241 	subscc	r5, r4, r1, asr #4
    6d28:	5341425f 	movtpl	r4, #4703	; 0x125f
    6d2c:	5f002945 	svcpl	0x00002945
    6d30:	5f51515f 	svcpl	0x0051515f
    6d34:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    6d38:	30205f5f 	eorcc	r5, r0, pc, asr pc
    6d3c:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    6d40:	5f544e45 	svcpl	0x00544e45
    6d44:	525f504d 	subspl	r5, pc, #77	; 0x4d
    6d48:	4c555345 	mrrcmi	3, 4, r5, r5, cr5	; <UNPREDICTABLE>
    6d4c:	74702854 	ldrbtvc	r2, [r0], #-2132	; 0xfffff7ac
    6d50:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    6d54:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    6d58:	5f3e2d29 	svcpl	0x003e2d29
    6d5c:	3e2d706d 	cdpcc	0, 2, cr7, cr13, cr13, {3}
    6d60:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
    6d64:	29746c75 	ldmdbcs	r4!, {r0, r2, r4, r5, r6, sl, fp, sp, lr}^
    6d68:	43535f00 	cmpmi	r3, #0, 30
    6d6c:	465f325f 			; <UNDEFINED> instruction: 0x465f325f
    6d70:	5f54524f 	svcpl	0x0054524f
    6d74:	204e5552 	subcs	r5, lr, r2, asr r5
    6d78:	00313131 	eorseq	r3, r1, r1, lsr r1
    6d7c:	5f43535f 	svcpl	0x0043535f
    6d80:	43415254 	movtmi	r5, #4692	; 0x1254
    6d84:	4e495f45 	cdpmi	15, 4, cr5, cr9, cr5, {2}
    6d88:	49524548 	ldmdbmi	r2, {r3, r6, r8, sl, lr}^
    6d8c:	36382054 			; <UNDEFINED> instruction: 0x36382054
    6d90:	52415500 	subpl	r5, r1, #0, 10
    6d94:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    6d98:	4658525f 			; <UNDEFINED> instruction: 0x4658525f
    6d9c:	204c4c55 	subcs	r4, ip, r5, asr ip
    6da0:	30307830 	eorscc	r7, r0, r0, lsr r8
    6da4:	30303030 	eorscc	r3, r0, r0, lsr r0
    6da8:	5f003430 	svcpl	0x00003430
    6dac:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
    6db0:	615f746e 	cmpvs	pc, lr, ror #8
    6db4:	72657373 	rsbvc	r7, r5, #-872415231	; 0xcc000001
    6db8:	29782874 	ldmdbcs	r8!, {r2, r4, r5, r6, fp, sp}^
    6dbc:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    6dc0:	2964696f 	stmdbcs	r4!, {r0, r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    6dc4:	5f002930 	svcpl	0x00002930
    6dc8:	434f4c43 	movtmi	r4, #64579	; 0xfc43
    6dcc:	5f545f4b 	svcpl	0x00545f4b
    6dd0:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    6dd4:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    6dd8:	5f5f0020 	svcpl	0x005f0020
    6ddc:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    6de0:	5f4d5543 	svcpl	0x004d5543
    6de4:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    6de8:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    6dec:	645f0031 	ldrbvs	r0, [pc], #-49	; 6df4 <__bss_end__+0x3b0c>
    6df0:	00617461 	rsbeq	r7, r1, r1, ror #8
    6df4:	5f43535f 	svcpl	0x0043535f
    6df8:	43415254 	movtmi	r5, #4692	; 0x1254
    6dfc:	59535f45 	ldmdbpl	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    6e00:	414d5f53 	cmpmi	sp, r3, asr pc
    6e04:	39382058 	ldmdbcc	r8!, {r3, r4, r6, sp}
    6e08:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    6e0c:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    6e10:	494d5f58 	stmdbmi	sp, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    6e14:	30315f4e 	eorscc	r5, r1, lr, asr #30
    6e18:	5058455f 	subspl	r4, r8, pc, asr r5
    6e1c:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    6e20:	3730332d 	ldrcc	r3, [r0, -sp, lsr #6]!
    6e24:	5f5f0029 	svcpl	0x005f0029
    6e28:	5f515355 	svcpl	0x00515355
    6e2c:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    6e30:	30205f5f 	eorcc	r5, r0, pc, asr pc
    6e34:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    6e38:	5f43554e 	svcpl	0x0043554e
    6e3c:	4f4e494d 	svcmi	0x004e494d
    6e40:	205f5f52 	subscs	r5, pc, r2, asr pc	; <UNPREDICTABLE>
    6e44:	5f5f0033 	svcpl	0x005f0033
    6e48:	6b636f6c 	blvs	18e2c00 <_end+0x8e2c00>
    6e4c:	6c65725f 	sfmvs	f7, 2, [r5], #-380	; 0xfffffe84
    6e50:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
    6e54:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    6e58:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    6e5c:	6c286576 	cfstr32vs	mvfx6, [r8], #-472	; 0xfffffe28
    6e60:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    6e64:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    6e68:	2964696f 	stmdbcs	r4!, {r0, r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    6e6c:	00293020 	eoreq	r3, r9, r0, lsr #32
    6e70:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    6e74:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    6e78:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    6e7c:	545f3233 	ldrbpl	r3, [pc], #-563	; 6e84 <__bss_end__+0x3b9c>
    6e80:	5f455059 	svcpl	0x00455059
    6e84:	6f6c205f 	svcvs	0x006c205f
    6e88:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
    6e8c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    6e90:	2064656e 	rsbcs	r6, r4, lr, ror #10
    6e94:	00746e69 	rsbseq	r6, r4, r9, ror #28
    6e98:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    6e9c:	545f3233 	ldrbpl	r3, [pc], #-563	; 6ea4 <__bss_end__+0x3bbc>
    6ea0:	4345445f 	movtmi	r4, #21599	; 0x545f
    6ea4:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    6ea8:	5f002044 	svcpl	0x00002044
    6eac:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    6eb0:	4145465f 	cmpmi	r5, pc, asr r6
    6eb4:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    6eb8:	4d554e5f 	ldclmi	14, cr4, [r5, #-380]	; 0xfffffe84
    6ebc:	43495245 	movtmi	r5, #37445	; 0x9245
    6ec0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6ec4:	004e494d 	subeq	r4, lr, sp, asr #18
    6ec8:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    6ecc:	5f383444 	svcpl	0x00383444
    6ed0:	544c554d 	strbpl	r5, [ip], #-1357	; 0xfffffab3
    6ed4:	2820315f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, ip, sp}
    6ed8:	65647830 	strbvs	r7, [r4, #-2096]!	; 0xfffff7d0
    6edc:	00296365 	eoreq	r6, r9, r5, ror #6
    6ee0:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    6ee4:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    6ee8:	5059545f 	subspl	r5, r9, pc, asr r4
    6eec:	205f5f45 	subscs	r5, pc, r5, asr #30
    6ef0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    6ef4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    6ef8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
    6efc:	49550074 	ldmdbmi	r5, {r2, r4, r5, r6}^
    6f00:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    6f04:	414d5f52 	cmpmi	sp, r2, asr pc
    6f08:	535f0058 	cmppl	pc, #88	; 0x58
    6f0c:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
    6f10:	5055445f 	subspl	r4, r5, pc, asr r4
    6f14:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6f18:	00333720 	eorseq	r3, r3, r0, lsr #14
    6f1c:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    6f20:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    6f24:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    6f28:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    6f2c:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    6f30:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    6f34:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    6f38:	415f5f00 	cmpmi	pc, r0, lsl #30
    6f3c:	535f4d52 	cmppl	pc, #5248	; 0x1480
    6f40:	4f455a49 	svcmi	0x00455a49
    6f44:	494d5f46 	stmdbmi	sp, {r1, r2, r6, r8, r9, sl, fp, ip, lr}^
    6f48:	414d494e 	cmpmi	sp, lr, asr #18
    6f4c:	4e455f4c 	cdpmi	15, 4, cr5, cr5, cr12, {2}
    6f50:	31204d55 			; <UNDEFINED> instruction: 0x31204d55
    6f54:	43535f00 	cmpmi	r3, #0, 30
    6f58:	4152545f 	cmpmi	r2, pc, asr r4
    6f5c:	4c5f4543 	cfldr64mi	mvdx4, [pc], {67}	; 0x43
    6f60:	3820474f 	stmdacc	r0!, {r0, r1, r2, r3, r6, r8, r9, sl, lr}
    6f64:	525f0037 	subspl	r0, pc, #55	; 0x37
    6f68:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    6f6c:	45535f38 	ldrbmi	r5, [r3, #-3896]	; 0xfffff0c8
    6f70:	305f4445 	subscc	r4, pc, r5, asr #8
    6f74:	78302820 	ldmdavc	r0!, {r5, fp, sp}
    6f78:	65303333 	ldrvs	r3, [r0, #-819]!	; 0xfffffccd
    6f7c:	535f0029 	cmppl	pc, #41	; 0x29
    6f80:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    6f84:	445f545f 	ldrbmi	r5, [pc], #-1119	; 6f8c <__bss_end__+0x3ca4>
    6f88:	414c4345 	cmpmi	ip, r5, asr #6
    6f8c:	20444552 	subcs	r4, r4, r2, asr r5
    6f90:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    6f94:	5f544e45 	svcpl	0x00544e45
    6f98:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    6f9c:	535f3834 	cmppl	pc, #52, 16	; 0x340000
    6fa0:	28444545 	stmdacs	r4, {r0, r2, r6, r8, sl, lr}^
    6fa4:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    6fa8:	70282820 	eorvc	r2, r8, r0, lsr #16
    6fac:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    6fb0:	34725f3e 	ldrbtcc	r5, [r2], #-3902	; 0xfffff0c2
    6fb4:	5f3e2d38 	svcpl	0x003e2d38
    6fb8:	64656573 	strbtvs	r6, [r5], #-1395	; 0xfffffa8d
    6fbc:	495f0029 	ldmdbmi	pc, {r0, r3, r5}^	; <UNPREDICTABLE>
    6fc0:	5f38544e 	svcpl	0x0038544e
    6fc4:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    6fc8:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    6fcc:	00204445 	eoreq	r4, r0, r5, asr #8
    6fd0:	6f4c5f5f 	svcvs	0x004c5f5f
    6fd4:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
    6fd8:	00676e6f 	rsbeq	r6, r7, pc, ror #28
    6fdc:	5a49535f 	bpl	125bd60 <_end+0x25bd60>
    6fe0:	205f5445 	subscs	r5, pc, r5, asr #8
    6fe4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 60ec <__bss_end__+0x2e04>
    6fe8:	43434153 	movtmi	r4, #12627	; 0x3153
    6fec:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; 629f <__bss_end__+0x2fb7>
    6ff0:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    6ff4:	5f5f4e4f 	svcpl	0x005f4e4f
    6ff8:	31783020 	cmncc	r8, r0, lsr #32
    6ffc:	55382d50 	ldrpl	r2, [r8, #-3408]!	; 0xfffff2b0
    7000:	5f004b48 	svcpl	0x00004b48
    7004:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
    7008:	5341485f 	movtpl	r4, #6239	; 0x185f
    700c:	4955515f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, ip, lr}^
    7010:	4e5f5445 	cdpmi	4, 5, cr5, cr15, cr5, {2}
    7014:	5f5f4e41 	svcpl	0x005f4e41
    7018:	55003120 	strpl	r3, [r0, #-288]	; 0xfffffee0
    701c:	5f544e49 	svcpl	0x00544e49
    7020:	5341454c 	movtpl	r4, #5452	; 0x154c
    7024:	5f323354 	svcpl	0x00323354
    7028:	0058414d 	subseq	r4, r8, sp, asr #2
    702c:	574f4c46 	strbpl	r4, [pc, -r6, asr #24]
    7030:	004c4544 	subeq	r4, ip, r4, asr #10
    7034:	74705f5f 	ldrbtvc	r5, [r0], #-3935	; 0xfffff0a1
    7038:	6c617672 	stclvs	6, cr7, [r1], #-456	; 0xfffffe38
    703c:	00206575 	eoreq	r6, r0, r5, ror r5
    7040:	494f4e5f 	stmdbmi	pc, {r0, r1, r2, r3, r4, r6, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    7044:	4e494c4e 	cdpmi	12, 4, cr4, cr9, cr14, {2}
    7048:	54535f45 	ldrbpl	r5, [r3], #-3909	; 0xfffff0bb
    704c:	43495441 	movtmi	r5, #37953	; 0x9441
    7050:	4f4e5f20 	svcmi	0x004e5f20
    7054:	494c4e49 	stmdbmi	ip, {r0, r3, r6, r9, sl, fp, lr}^
    7058:	7320454e 			; <UNDEFINED> instruction: 0x7320454e
    705c:	69746174 	ldmdbvs	r4!, {r2, r4, r5, r6, r8, sp, lr}^
    7060:	41550063 	cmpmi	r5, r3, rrx
    7064:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 6f24 <__bss_end__+0x3c3c>
    7068:	54535f52 	ldrbpl	r5, [r3], #-3922	; 0xfffff0ae
    706c:	4f4d504f 	svcmi	0x004d504f
    7070:	4d5f4544 	cfldr64mi	mvdx4, [pc, #-272]	; 6f68 <__bss_end__+0x3c80>
    7074:	204b5341 	subcs	r5, fp, r1, asr #6
    7078:	30307830 	eorscc	r7, r0, r0, lsr r8
    707c:	30303030 	eorscc	r3, r0, r0, lsr r0
    7080:	5f003041 	svcpl	0x00003041
    7084:	464c4c5f 			; <UNDEFINED> instruction: 0x464c4c5f
    7088:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    708c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7090:	30205f5f 	eorcc	r5, r0, pc, asr pc
    7094:	46463758 			; <UNDEFINED> instruction: 0x46463758
    7098:	46464646 	strbmi	r4, [r6], -r6, asr #12
    709c:	46464646 	strbmi	r4, [r6], -r6, asr #12
    70a0:	46464646 	strbmi	r4, [r6], -r6, asr #12
    70a4:	362d5046 	strtcc	r5, [sp], -r6, asr #32
    70a8:	524c4c33 	subpl	r4, ip, #13056	; 0x3300
    70ac:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    70b0:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    70b4:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    70b8:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    70bc:	5f5f4854 	svcpl	0x005f4854
    70c0:	00323320 	eorseq	r3, r2, r0, lsr #6
    70c4:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    70c8:	5f524d5f 	svcpl	0x00524d5f
    70cc:	49524150 	ldmdbmi	r2, {r4, r6, r8, lr}^
    70d0:	535f5954 	cmppl	pc, #84, 18	; 0x150000
    70d4:	45434150 	strbmi	r4, [r3, #-336]	; 0xfffffeb0
    70d8:	30783020 	rsbscc	r3, r8, r0, lsr #32
    70dc:	30303030 	eorscc	r3, r0, r0, lsr r0
    70e0:	00303130 	eorseq	r3, r0, r0, lsr r1
    70e4:	5355535f 	cmppl	r5, #2080374785	; 0x7c000001
    70e8:	4e4f4345 	cdpmi	3, 4, cr4, cr15, cr5, {2}
    70ec:	545f5344 	ldrbpl	r5, [pc], #-836	; 70f4 <__bss_end__+0x3e0c>
    70f0:	4345445f 	movtmi	r4, #21599	; 0x545f
    70f4:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    70f8:	45002044 	strmi	r2, [r0, #-68]	; 0xffffffbc
    70fc:	4c415453 	cfstrdmi	mvd5, [r1], {83}	; 0x53
    7100:	33312045 	teqcc	r1, #69	; 0x45
    7104:	41550033 	cmpmi	r5, r3, lsr r0
    7108:	465f5452 			; <UNDEFINED> instruction: 0x465f5452
    710c:	44574f4c 	ldrbmi	r4, [r7], #-3916	; 0xfffff0b4
    7110:	4d5f4c45 	ldclmi	12, cr4, [pc, #-276]	; 7004 <__bss_end__+0x3d1c>
    7114:	204b5341 	subcs	r5, fp, r1, asr #6
    7118:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    711c:	5758525f 			; <UNDEFINED> instruction: 0x5758525f
    7120:	414d5f4d 	cmpmi	sp, sp, asr #30
    7124:	5f004b53 	svcpl	0x00004b53
    7128:	585f4353 	ldmdapl	pc, {r0, r1, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    712c:	4e45504f 	cdpmi	0, 4, cr5, cr5, cr15, {2}
    7130:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
    7134:	534d4145 	movtpl	r4, #53573	; 0xd145
    7138:	34303120 	ldrtcc	r3, [r0], #-288	; 0xfffffee0
    713c:	43505f00 	cmpmi	r0, #0, 30
    7140:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    7144:	414d5f4b 	cmpmi	sp, fp, asr #30
    7148:	00302058 	eorseq	r2, r0, r8, asr r0
    714c:	41535f5f 	cmpmi	r3, pc, asr pc
    7150:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    7154:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7158:	30205f5f 	eorcc	r5, r0, pc, asr pc
    715c:	46463758 			; <UNDEFINED> instruction: 0x46463758
    7160:	372d5046 	strcc	r5, [sp, -r6, asr #32]!
    7164:	5f004b48 	svcpl	0x00004b48
    7168:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    716c:	5f525450 	svcpl	0x00525450
    7170:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    7174:	69205f5f 	stmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    7178:	5500746e 	strpl	r7, [r0, #-1134]	; 0xfffffb92
    717c:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    7180:	5f00435f 	svcpl	0x0000435f
    7184:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    7188:	52545054 	subspl	r5, r4, #84	; 0x54
    718c:	5059545f 	subspl	r5, r9, pc, asr r4
    7190:	205f5f45 	subscs	r5, pc, r5, asr #30
    7194:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    7198:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    719c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    71a0:	43535f00 	cmpmi	r3, #0, 30
    71a4:	4d49545f 	cfstrdmi	mvd5, [r9, #-380]	; 0xfffffe84
    71a8:	54554f45 	ldrbpl	r4, [r5], #-3909	; 0xfffff0bb
    71ac:	32382053 	eorscc	r2, r8, #83	; 0x53
    71b0:	4e495700 	cdpmi	7, 4, cr5, cr9, cr0, {0}
    71b4:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    71b8:	5f5f004e 	svcpl	0x005f004e
    71bc:	49474552 	stmdbmi	r7, {r1, r4, r6, r8, sl, lr}^
    71c0:	52455453 	subpl	r5, r5, #1392508928	; 0x53000000
    71c4:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    71c8:	5f584946 	svcpl	0x00584946
    71cc:	5f00205f 	svcpl	0x0000205f
    71d0:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    71d4:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 7110 <__bss_end__+0x3e28>
    71d8:	5f5f5841 	svcpl	0x005f5841
    71dc:	342e3320 	strtcc	r3, [lr], #-800	; 0xfffffce0
    71e0:	32383230 	eorscc	r3, r8, #48, 4
    71e4:	36363433 			; <UNDEFINED> instruction: 0x36363433
    71e8:	32353833 	eorscc	r3, r5, #3342336	; 0x330000
    71ec:	65363838 	ldrvs	r3, [r6, #-2104]!	; 0xfffff7c8
    71f0:	4638332b 	ldrtmi	r3, [r8], -fp, lsr #6
    71f4:	5f003233 	svcpl	0x00003233
    71f8:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
    71fc:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    7200:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    7204:	5f5f0035 	svcpl	0x005f0035
    7208:	52464c55 	subpl	r4, r6, #21760	; 0x5500
    720c:	5f544341 	svcpl	0x00544341
    7210:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    7214:	5f4e4f4c 	svcpl	0x004e4f4c
    7218:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    721c:	332d5031 			; <UNDEFINED> instruction: 0x332d5031
    7220:	524c5532 	subpl	r5, ip, #209715200	; 0xc800000
    7224:	525f5f00 	subspl	r5, pc, #0, 30
    7228:	44495343 	strbmi	r5, [r9], #-835	; 0xfffffcbd
    722c:	20297328 	eorcs	r7, r9, r8, lsr #6
    7230:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
    7234:	5f207463 	svcpl	0x00207463
    7238:	6361685f 	cmnvs	r1, #6225920	; 0x5f0000
    723c:	4955006b 	ldmdbmi	r5, {r0, r1, r3, r5, r6}^
    7240:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    7244:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    7248:	5f5f2029 	svcpl	0x005f2029
    724c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    7250:	435f3631 	cmpmi	pc, #51380224	; 0x3100000
    7254:	00296328 	eoreq	r6, r9, r8, lsr #6
    7258:	5f43535f 	svcpl	0x0043535f
    725c:	45504f58 	ldrbmi	r4, [r0, #-3928]	; 0xfffff0a8
    7260:	4e555f4e 	cdpmi	15, 5, cr5, cr5, cr14, {2}
    7264:	31205849 			; <UNDEFINED> instruction: 0x31205849
    7268:	5f003530 	svcpl	0x00003530
    726c:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
    7270:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    7274:	41435f32 	cmpmi	r3, r2, lsr pc
    7278:	5f454843 	svcpl	0x00454843
    727c:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    7280:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    7284:	33333120 	teqcc	r3, #32, 2
    7288:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    728c:	5f544e45 	svcpl	0x00544e45
    7290:	4134364c 	teqmi	r4, ip, asr #12
    7294:	4655425f 			; <UNDEFINED> instruction: 0x4655425f
    7298:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    729c:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    72a0:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    72a4:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 71f8 <__bss_end__+0x3f10>
    72a8:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    72ac:	366c5f3e 	uqasxcc	r5, ip, lr
    72b0:	625f6134 	subsvs	r6, pc, #52, 2
    72b4:	00296675 	eoreq	r6, r9, r5, ror r6
    72b8:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    72bc:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
    72c0:	5a49535f 	bpl	125c044 <_end+0x25c044>
    72c4:	5f545f45 	svcpl	0x00545f45
    72c8:	0034205f 	eorseq	r2, r4, pc, asr r0
    72cc:	6f6c5f5f 	svcvs	0x006c5f5f
    72d0:	635f6b63 	cmpvs	pc, #101376	; 0x18c00
    72d4:	65736f6c 	ldrbvs	r6, [r3, #-3948]!	; 0xfffff094
    72d8:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    72dc:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    72e0:	6c286576 	cfstr32vs	mvfx6, [r8], #-472	; 0xfffffe28
    72e4:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    72e8:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    72ec:	2964696f 	stmdbcs	r4!, {r0, r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    72f0:	00293020 	eoreq	r3, r9, r0, lsr #32
    72f4:	5f43505f 	svcpl	0x0043505f
    72f8:	4c4d5953 	mcrrmi	9, 5, r5, sp, cr3	; <UNPREDICTABLE>
    72fc:	5f4b4e49 	svcpl	0x004b4e49
    7300:	2058414d 	subscs	r4, r8, sp, asr #2
    7304:	5f003431 	svcpl	0x00003431
    7308:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    730c:	4b494c43 	blmi	125a420 <_end+0x25a420>
    7310:	5f5f5f45 	svcpl	0x005f5f45
    7314:	5346464f 	movtpl	r4, #26191	; 0x664f
    7318:	464f5445 	strbmi	r5, [pc], -r5, asr #8
    731c:	5f003120 	svcpl	0x00003120
    7320:	4345445f 	movtmi	r4, #21599	; 0x545f
    7324:	5f383231 	svcpl	0x00383231
    7328:	5f4e494d 	svcpl	0x004e494d
    732c:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
    7330:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    7334:	004c4433 	subeq	r4, ip, r3, lsr r4
    7338:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    733c:	5f343654 	svcpl	0x00343654
    7340:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    7344:	23206320 			; <UNDEFINED> instruction: 0x23206320
    7348:	4c4c2023 	mcrrmi	0, 2, r2, ip, cr3
    734c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    7350:	4c43554e 	cfstr64mi	mvdx5, [r3], {78}	; 0x4e
    7354:	5f454b49 	svcpl	0x00454b49
    7358:	524f5443 	subpl	r5, pc, #1124073472	; 0x43000000
    735c:	4345535f 	movtmi	r5, #21343	; 0x535f
    7360:	4e4f4954 			; <UNDEFINED> instruction: 0x4e4f4954
    7364:	4e41485f 	mcrmi	8, 2, r4, cr1, cr15, {2}
    7368:	4e494c44 	cdpmi	12, 4, cr4, cr9, cr4, {2}
    736c:	00312047 	eorseq	r2, r1, r7, asr #32
    7370:	6f6c5f5f 	svcvs	0x006c5f5f
    7374:	62616b63 	rsbvs	r6, r1, #101376	; 0x18c00
    7378:	5f20656c 	svcpl	0x0020656c
    737c:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    7380:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    7384:	61746f6e 	cmnvs	r4, lr, ror #30
    7388:	6c286574 	cfstr32vs	mvfx6, [r8], #-464	; 0xfffffe30
    738c:	616b636f 	cmnvs	fp, pc, ror #6
    7390:	29656c62 	stmdbcs	r5!, {r1, r5, r6, sl, fp, sp, lr}^
    7394:	43535f00 	cmpmi	r3, #0, 30
    7398:	5342585f 	movtpl	r5, #10335	; 0x285f
    739c:	504c5f35 	subpl	r5, ip, r5, lsr pc
    73a0:	5f474942 	svcpl	0x00474942
    73a4:	4246464f 	submi	r4, r6, #82837504	; 0x4f00000
    73a8:	5f204749 	svcpl	0x00204749
    73ac:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
    73b0:	504c5f37 	subpl	r5, ip, r7, lsr pc
    73b4:	5f474942 	svcpl	0x00474942
    73b8:	4246464f 	submi	r4, r6, #82837504	; 0x4f00000
    73bc:	5f004749 	svcpl	0x00004749
    73c0:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
    73c4:	4345445f 	movtmi	r4, #21599	; 0x545f
    73c8:	0020534c 	eoreq	r5, r0, ip, asr #6
    73cc:	5f43535f 	svcpl	0x0043535f
    73d0:	4c5f3656 	mrrcmi	6, 5, r3, pc, cr6	; <UNPREDICTABLE>
    73d4:	5f343650 	svcpl	0x00343650
    73d8:	3646464f 	strbcc	r4, [r6], -pc, asr #12
    73dc:	535f2034 	cmppl	pc, #52	; 0x34
    73e0:	37565f43 	ldrbcc	r5, [r6, -r3, asr #30]
    73e4:	36504c5f 			; <UNDEFINED> instruction: 0x36504c5f
    73e8:	464f5f34 			; <UNDEFINED> instruction: 0x464f5f34
    73ec:	00343646 	eorseq	r3, r4, r6, asr #12
    73f0:	65675f5f 	strbvs	r5, [r7, #-3935]!	; 0xfffff0a1
    73f4:	6972656e 	ldmdbvs	r2!, {r1, r2, r3, r5, r6, r8, sl, sp, lr}^
    73f8:	78652863 	stmdavc	r5!, {r0, r1, r5, r6, fp, sp}^
    73fc:	742c7270 	strtvc	r7, [ip], #-624	; 0xfffffd90
    7400:	7365792c 	cmnvc	r5, #44, 18	; 0xb0000
    7404:	296f6e2c 	stmdbcs	pc!, {r2, r3, r5, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    7408:	625f5f20 	subsvs	r5, pc, #32, 30	; 0x80
    740c:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
    7410:	635f6e69 	cmpvs	pc, #1680	; 0x690
    7414:	736f6f68 	cmnvc	pc, #104, 30	; 0x1a0
    7418:	78655f65 	stmdavc	r5!, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    741c:	20287270 	eorcs	r7, r8, r0, ror r2
    7420:	75625f5f 	strbvc	r5, [r2, #-3935]!	; 0xfffff0a1
    7424:	69746c69 	ldmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    7428:	79745f6e 	ldmdbvc	r4!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    742c:	5f736570 	svcpl	0x00736570
    7430:	706d6f63 	rsbvc	r6, sp, r3, ror #30
    7434:	62697461 	rsbvs	r7, r9, #1627389952	; 0x61000000
    7438:	705f656c 	subsvc	r6, pc, ip, ror #10
    743c:	745f5f28 	ldrbvc	r5, [pc], #-3880	; 7444 <__bss_end__+0x415c>
    7440:	6f657079 	svcvs	0x00657079
    7444:	78652866 	stmdavc	r5!, {r1, r2, r5, r6, fp, sp}^
    7448:	2c297270 	sfmcs	f7, 4, [r9], #-448	; 0xfffffe40
    744c:	2c297420 	cfstrscs	mvf7, [r9], #-128	; 0xffffff80
    7450:	73657920 	cmnvc	r5, #32, 18	; 0x80000
    7454:	6f6e202c 	svcvs	0x006e202c
    7458:	5f5f0029 	svcpl	0x005f0029
    745c:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    7460:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    7464:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    7468:	3532322e 	ldrcc	r3, [r2, #-558]!	; 0xfffffdd2
    746c:	38333730 	ldmdacc	r3!, {r4, r5, r8, r9, sl, ip, sp}
    7470:	30353835 	eorscc	r3, r5, r5, lsr r8
    7474:	31303237 	teqcc	r0, r7, lsr r2
    7478:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    747c:	004c3830 	subeq	r3, ip, r0, lsr r8
    7480:	5f43535f 	svcpl	0x0043535f
    7484:	4c4d454d 	cfstr64mi	mvdx4, [sp], {77}	; 0x4d
    7488:	204b434f 	subcs	r4, fp, pc, asr #6
    748c:	5f003432 	svcpl	0x00003432
    7490:	4343415f 	movtmi	r4, #12639	; 0x315f
    7494:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
    7498:	5f544942 	svcpl	0x00544942
    749c:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    74a0:	736e7500 	cmnvc	lr, #0, 10
    74a4:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    74a8:	525f0064 	subspl	r0, pc, #100	; 0x64
    74ac:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    74b0:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    74b4:	4d5f4b43 	vldrmi	d20, [pc, #-268]	; 73b0 <__bss_end__+0x40c8>
    74b8:	28435349 	stmdacs	r3, {r0, r3, r6, r8, r9, ip, lr}^
    74bc:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    74c0:	45525f20 	ldrbmi	r5, [r2, #-3872]	; 0xfffff0e0
    74c4:	5f544e45 	svcpl	0x00544e45
    74c8:	43454843 	movtmi	r4, #22595	; 0x5843
    74cc:	6176284b 	cmnvs	r6, fp, asr #16
    74d0:	5f202c72 	svcpl	0x00202c72
    74d4:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    74d8:	7473202c 	ldrbtvc	r2, [r3], #-44	; 0xffffffd4
    74dc:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
    74e0:	696d5f20 	stmdbvs	sp!, {r5, r8, r9, sl, fp, ip, lr}^
    74e4:	725f6373 	subsvc	r6, pc, #-872415231	; 0xcc000001
    74e8:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    74ec:	202c2a20 	eorcs	r2, ip, r0, lsr #20
    74f0:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    74f4:	2a20666f 	bcs	820eb8 <heap_size+0x800eb8>
    74f8:	61762828 	cmnvs	r6, r8, lsr #16
    74fc:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    7500:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    7504:	202c2963 	eorcs	r2, ip, r3, ror #18
    7508:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    750c:	495f544e 	ldmdbmi	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    7510:	5f54494e 	svcpl	0x0054494e
    7514:	4353494d 	cmpmi	r3, #1261568	; 0x134000
    7518:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    751c:	5f002929 	svcpl	0x00002929
    7520:	656c626d 	strbvs	r6, [ip, #-621]!	; 0xfffffd93
    7524:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xfffff092
    7528:	00657461 	rsbeq	r7, r5, r1, ror #8
    752c:	61685f5f 	cmnvs	r8, pc, asr pc
    7530:	75625f73 	strbvc	r5, [r2, #-3955]!	; 0xfffff08d
    7534:	69746c69 	ldmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    7538:	2978286e 	ldmdbcs	r8!, {r1, r2, r3, r5, r6, fp, sp}^
    753c:	49003020 	stmdbmi	r0, {r5, ip, sp}
    7540:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    7544:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    7548:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 7484 <__bss_end__+0x419c>
    754c:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    7550:	544e492d 	strbpl	r4, [lr], #-2349	; 0xfffff6d3
    7554:	41454c5f 	cmpmi	r5, pc, asr ip
    7558:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    755c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7560:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    7564:	535f0029 	cmppl	pc, #41	; 0x29
    7568:	41505f43 	cmpmi	r0, r3, asr #30
    756c:	49534547 	ldmdbmi	r3, {r0, r1, r2, r6, r8, sl, lr}^
    7570:	3820455a 	stmdacc	r0!, {r1, r3, r4, r6, r8, sl, lr}
    7574:	705f5f00 	subsvc	r5, pc, r0, lsl #30
    7578:	75675f74 	strbvc	r5, [r7, #-3956]!	; 0xfffff08c
    757c:	65647261 	strbvs	r7, [r4, #-609]!	; 0xfffffd9f
    7580:	79625f64 	stmdbvc	r2!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    7584:	20297828 	eorcs	r7, r9, r8, lsr #16
    7588:	6f6c5f5f 	svcvs	0x006c5f5f
    758c:	615f6b63 	cmpvs	pc, r3, ror #22
    7590:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 7598 <__bss_end__+0x42b0>
    7594:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    7598:	675f7470 			; <UNDEFINED> instruction: 0x675f7470
    759c:	64726175 	ldrbtvs	r6, [r2], #-373	; 0xfffffe8b
    75a0:	625f6465 	subsvs	r6, pc, #1694498816	; 0x65000000
    75a4:	29782879 	ldmdbcs	r8!, {r0, r3, r4, r5, r6, fp, sp}^
    75a8:	5f5f0029 	svcpl	0x005f0029
    75ac:	72617567 	rsbvc	r7, r1, #432013312	; 0x19c00000
    75b0:	5f646564 	svcpl	0x00646564
    75b4:	78287962 	stmdavc	r8!, {r1, r5, r6, r8, fp, ip, sp, lr}
    75b8:	5f5f2029 	svcpl	0x005f2029
    75bc:	6b636f6c 	blvs	18e3374 <_end+0x8e3374>
    75c0:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    75c4:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    75c8:	75672865 	strbvc	r2, [r7, #-2149]!	; 0xfffff79b
    75cc:	65647261 	strbvs	r7, [r4, #-609]!	; 0xfffffd9f
    75d0:	79625f64 	stmdbvc	r2!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    75d4:	29297828 	stmdbcs	r9!, {r3, r5, fp, ip, sp, lr}
    75d8:	43505f00 	cmpmi	r0, #0, 30
    75dc:	4345525f 	movtmi	r5, #21087	; 0x525f
    75e0:	434e495f 	movtmi	r4, #59743	; 0xe95f
    75e4:	46585f52 	usaxmi	r5, r8, r2
    75e8:	535f5245 	cmppl	pc, #1342177284	; 0x50000004
    75ec:	20455a49 	subcs	r5, r5, r9, asr #20
    75f0:	5f003631 	svcpl	0x00003631
    75f4:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    75f8:	5f363154 	svcpl	0x00363154
    75fc:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    7600:	5f006320 	svcpl	0x00006320
    7604:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    7608:	4145465f 	cmpmi	r5, pc, asr r6
    760c:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    7610:	3150465f 	cmpcc	r0, pc, asr r6
    7614:	43535f36 	cmpmi	r3, #54, 30	; 0xd8
    7618:	52414c41 	subpl	r4, r1, #16640	; 0x4100
    761c:	4952415f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, lr}^
    7620:	454d4854 	strbmi	r4, [sp, #-2132]	; 0xfffff7ac
    7624:	00434954 	subeq	r4, r3, r4, asr r9
    7628:	79735f5f 	ldmdbvc	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    762c:	6f635f6d 	svcvs	0x00635f6d
    7630:	7461706d 	strbtvc	r7, [r1], #-109	; 0xffffff93
    7634:	6d797328 	ldclvs	3, cr7, [r9, #-160]!	; 0xffffff60
    7638:	706d692c 	rsbvc	r6, sp, ip, lsr #18
    763c:	65762c6c 	ldrbvs	r2, [r6, #-3180]!	; 0xfffff394
    7640:	29646972 	stmdbcs	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
    7644:	615f5f20 	cmpvs	pc, r0, lsr #30
    7648:	5f5f6d73 	svcpl	0x005f6d73
    764c:	732e2228 			; <UNDEFINED> instruction: 0x732e2228
    7650:	65766d79 	ldrbvs	r6, [r6, #-3449]!	; 0xfffff287
    7654:	20222072 	eorcs	r2, r2, r2, ror r0
    7658:	706d6923 	rsbvc	r6, sp, r3, lsr #18
    765c:	2c22206c 	stccs	0, cr2, [r2], #-432	; 0xfffffe50
    7660:	23202220 			; <UNDEFINED> instruction: 0x23202220
    7664:	206d7973 	rsbcs	r7, sp, r3, ror r9
    7668:	20224022 	eorcs	r4, r2, r2, lsr #32
    766c:	72657623 	rsbvc	r7, r5, #36700160	; 0x2300000
    7670:	00296469 	eoreq	r6, r9, r9, ror #8
    7674:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
    7678:	756f685f 	strbvc	r6, [pc, #-2143]!	; 6e21 <__bss_end__+0x3b39>
    767c:	5f5f0072 	svcpl	0x005f0072
    7680:	5f414455 	svcpl	0x00414455
    7684:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    7688:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    768c:	5f5f0032 	svcpl	0x005f0032
    7690:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
    7694:	696c6674 	stmdbvs	ip!, {r2, r4, r5, r6, r9, sl, sp, lr}^
    7698:	6628656b 	strtvs	r6, [r8], -fp, ror #10
    769c:	7261746d 	rsbvc	r7, r1, #1828716544	; 0x6d000000
    76a0:	69662c67 	stmdbvs	r6!, {r0, r1, r2, r5, r6, sl, fp, sp}^
    76a4:	76747372 			; <UNDEFINED> instruction: 0x76747372
    76a8:	72617261 	rsbvc	r7, r1, #268435462	; 0x10000006
    76ac:	5f202967 	svcpl	0x00202967
    76b0:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    76b4:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    76b8:	5f5f6574 	svcpl	0x005f6574
    76bc:	5f5f2828 	svcpl	0x005f2828
    76c0:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
    76c4:	5f5f7461 	svcpl	0x005f7461
    76c8:	5f5f2820 	svcpl	0x005f2820
    76cc:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
    76d0:	5f5f6674 	svcpl	0x005f6674
    76d4:	6d66202c 	stclvs	0, cr2, [r6, #-176]!	; 0xffffff50
    76d8:	67726174 			; <UNDEFINED> instruction: 0x67726174
    76dc:	6966202c 	stmdbvs	r6!, {r2, r3, r5, sp}^
    76e0:	76747372 			; <UNDEFINED> instruction: 0x76747372
    76e4:	72617261 	rsbvc	r7, r1, #268435462	; 0x10000006
    76e8:	29292967 	stmdbcs	r9!, {r0, r1, r2, r5, r6, r8, fp, sp}
    76ec:	4e5f5f00 	cdpmi	15, 5, cr5, cr15, cr0, {0}
    76f0:	4e495f4f 	cdpmi	15, 4, cr5, cr9, cr15, {2}
    76f4:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    76f8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    76fc:	665f5f00 	ldrbvs	r5, [pc], -r0, lsl #30
    7700:	63747361 	cmnvs	r4, #-2080374783	; 0x84000001
    7704:	206c6c61 	rsbcs	r6, ip, r1, ror #24
    7708:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    770c:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    7710:	5f657475 	svcpl	0x00657475
    7714:	5f28285f 	svcpl	0x0028285f
    7718:	7361665f 	cmnvc	r1, #99614720	; 0x5f00000
    771c:	6c616374 	stclvs	3, cr6, [r1], #-464	; 0xfffffe30
    7720:	295f5f6c 	ldmdbcs	pc, {r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    7724:	5f5f0029 	svcpl	0x005f0029
    7728:	6e727265 	cdpvs	2, 7, cr7, cr2, cr5, {3}
    772c:	28725f6f 	ldmdacs	r2!, {r0, r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    7730:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    7734:	70282820 	eorvc	r2, r8, r0, lsr #16
    7738:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    773c:	72655f3e 	rsbvc	r5, r5, #62, 30	; 0xf8
    7740:	296f6e72 	stmdbcs	pc!, {r1, r4, r5, r6, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    7744:	454e4500 	strbmi	r4, [lr, #-1280]	; 0xfffffb00
    7748:	574f4454 	smlsldpl	r4, pc, r4, r4	; <UNPREDICTABLE>
    774c:	3131204e 	teqcc	r1, lr, asr #32
    7750:	5f5f0035 	svcpl	0x005f0035
    7754:	6b636f6c 	blvs	18e350c <_end+0x8e350c>
    7758:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    775c:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    7760:	29782865 	ldmdbcs	r8!, {r0, r2, r5, r6, fp, sp}^
    7764:	4c5f0020 	mrrcmi	0, 2, r0, pc, cr0	; <UNPREDICTABLE>
    7768:	5f455449 	svcpl	0x00455449
    776c:	54495845 	strbpl	r5, [r9], #-2117	; 0xfffff7bb
    7770:	5f003120 	svcpl	0x00003120
    7774:	4f54415f 	svcmi	0x0054415f
    7778:	5f43494d 	svcpl	0x0043494d
    777c:	414c4552 	cmpmi	ip, r2, asr r5
    7780:	20444558 	subcs	r4, r4, r8, asr r5
    7784:	415f0030 	cmpmi	pc, r0, lsr r0	; <UNPREDICTABLE>
    7788:	49525454 	ldmdbmi	r2, {r2, r4, r6, sl, ip, lr}^
    778c:	45545542 	ldrbmi	r5, [r4, #-1346]	; 0xfffffabe
    7790:	74746128 	ldrbtvc	r6, [r4], #-296	; 0xfffffed8
    7794:	20297372 	eorcs	r7, r9, r2, ror r3
    7798:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    779c:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    77a0:	5f657475 	svcpl	0x00657475
    77a4:	6128205f 	qsubvs	r2, pc, r8	; <UNPREDICTABLE>
    77a8:	73727474 	cmnvc	r2, #116, 8	; 0x74000000
    77ac:	5f5f0029 	svcpl	0x005f0029
    77b0:	52545441 	subspl	r5, r4, #1090519040	; 0x41000000
    77b4:	54554249 	ldrbpl	r4, [r5], #-585	; 0xfffffdb7
    77b8:	4d495f45 	stclmi	15, cr5, [r9, #-276]	; 0xfffffeec
    77bc:	45525550 	ldrbmi	r5, [r2, #-1360]	; 0xfffffab0
    77c0:	5254505f 	subspl	r5, r4, #95	; 0x5f
    77c4:	00205f5f 	eoreq	r5, r0, pc, asr pc
    77c8:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
    77cc:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    77d0:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    77d4:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    77d8:	414d5f34 	cmpmi	sp, r4, lsr pc
    77dc:	5f5f2058 	svcpl	0x005f2058
    77e0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    77e4:	41454c5f 	cmpmi	r5, pc, asr ip
    77e8:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    77ec:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    77f0:	5f005f5f 	svcpl	0x00005f5f
    77f4:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    77f8:	4f54415f 	svcmi	0x0054415f
    77fc:	5f43494d 	svcpl	0x0043494d
    7800:	5f58414d 	svcpl	0x0058414d
    7804:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    7808:	66666637 			; <UNDEFINED> instruction: 0x66666637
    780c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    7810:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    7814:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    7818:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    781c:	414d5f32 	cmpmi	sp, r2, lsr pc
    7820:	5f5f2058 	svcpl	0x005f2058
    7824:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    7828:	41454c5f 	cmpmi	r5, pc, asr ip
    782c:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    7830:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7834:	5f005f5f 	svcpl	0x00005f5f
    7838:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    783c:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 776c <__bss_end__+0x4484>
    7840:	5f544e41 	svcpl	0x00544e41
    7844:	5f474944 	svcpl	0x00474944
    7848:	3335205f 	teqcc	r5, #95	; 0x5f
    784c:	43535f00 	cmpmi	r3, #0, 30
    7850:	4150535f 	cmpmi	r0, pc, asr r3
    7854:	37204e57 			; <UNDEFINED> instruction: 0x37204e57
    7858:	535f0035 	cmppl	pc, #53	; 0x35
    785c:	4f585f43 	svcmi	0x00585f43
    7860:	5f4e4550 	svcpl	0x004e4550
    7864:	4c414552 	cfstr64mi	mvdx4, [r1], {82}	; 0x52
    7868:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    786c:	00393920 	eorseq	r3, r9, r0, lsr #18
    7870:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    7874:	5258495f 	subspl	r4, r8, #1556480	; 0x17c000
    7878:	45564f5f 	ldrbmi	r4, [r6, #-3935]	; 0xfffff0a1
    787c:	78302052 	ldmdavc	r0!, {r1, r4, r6, sp}
    7880:	30303030 	eorscc	r3, r0, r0, lsr r0
    7884:	30323030 	eorscc	r3, r2, r0, lsr r0
    7888:	52415500 	subpl	r5, r1, #0, 10
    788c:	52435f54 	subpl	r5, r3, #84, 30	; 0x150
    7890:	5f58525f 	svcpl	0x0058525f
    7894:	20534944 	subscs	r4, r3, r4, asr #18
    7898:	30307830 	eorscc	r7, r0, r0, lsr r8
    789c:	30303030 	eorscc	r3, r0, r0, lsr r0
    78a0:	45003830 	strmi	r3, [r0, #-2096]	; 0xfffff7d0
    78a4:	4e454f4e 	cdpmi	15, 4, cr4, cr5, cr14, {2}
    78a8:	00322054 	eorseq	r2, r2, r4, asr r0
    78ac:	61725f5f 	cmnvs	r2, pc, asr pc
    78b0:	6f65676e 	svcvs	0x0065676e
    78b4:	79742866 	ldmdbvc	r4!, {r1, r2, r5, r6, fp, sp}^
    78b8:	732c6570 			; <UNDEFINED> instruction: 0x732c6570
    78bc:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
    78c0:	646e652c 	strbtvs	r6, [lr], #-1324	; 0xfffffad4
    78c4:	5f282029 	svcpl	0x00282029
    78c8:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
    78cc:	6f746573 	svcvs	0x00746573
    78d0:	79742866 	ldmdbvc	r4!, {r1, r2, r5, r6, fp, sp}^
    78d4:	202c6570 	eorcs	r6, ip, r0, ror r5
    78d8:	29646e65 	stmdbcs	r4!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
    78dc:	5f202d20 	svcpl	0x00202d20
    78e0:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
    78e4:	6f746573 	svcvs	0x00746573
    78e8:	79742866 	ldmdbvc	r4!, {r1, r2, r5, r6, fp, sp}^
    78ec:	202c6570 	eorcs	r6, ip, r0, ror r5
    78f0:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
    78f4:	00292974 	eoreq	r2, r9, r4, ror r9
    78f8:	5f43535f 	svcpl	0x0043535f
    78fc:	35534258 	ldrbcc	r4, [r3, #-600]	; 0xfffffda8
    7900:	504c495f 	subpl	r4, ip, pc, asr r9
    7904:	4f5f3233 	svcmi	0x005f3233
    7908:	49424646 	stmdbmi	r2, {r1, r2, r6, r9, sl, lr}^
    790c:	535f2047 	cmppl	pc, #71	; 0x47
    7910:	37565f43 	ldrbcc	r5, [r6, -r3, asr #30]
    7914:	504c495f 	subpl	r4, ip, pc, asr r9
    7918:	4f5f3233 	svcmi	0x005f3233
    791c:	49424646 	stmdbmi	r2, {r1, r2, r6, r9, sl, lr}^
    7920:	5f5f0047 	svcpl	0x005f0047
    7924:	53455355 	movtpl	r5, #21333	; 0x5355
    7928:	494e495f 	stmdbmi	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    792c:	4e494654 	mcrmi	6, 2, r4, cr9, cr4, {2}
    7930:	205f5f49 	subscs	r5, pc, r9, asr #30
    7934:	5f5f0031 	svcpl	0x005f0031
    7938:	6b636f6c 	blvs	18e36f0 <_end+0x8e36f0>
    793c:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
    7940:	6f6c2874 	svcvs	0x006c2874
    7944:	20296b63 	eorcs	r6, r9, r3, ror #22
    7948:	6f762828 	svcvs	0x00762828
    794c:	20296469 	eorcs	r6, r9, r9, ror #8
    7950:	5f002930 	svcpl	0x00002930
    7954:	4345445f 	movtmi	r4, #21599	; 0x545f
    7958:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 7888 <__bss_end__+0x45a0>
    795c:	5f5f4e49 	svcpl	0x005f4e49
    7960:	2d453120 	stfcse	f3, [r5, #-128]	; 0xffffff80
    7964:	44333833 	ldrtmi	r3, [r3], #-2099	; 0xfffff7cd
    7968:	5f5f0044 	svcpl	0x005f0044
    796c:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
    7970:	7274705f 	rsbsvc	r7, r4, #95	; 0x5f
    7974:	66666964 	strbtvs	r6, [r6], -r4, ror #18
    7978:	5f00745f 	svcpl	0x0000745f
    797c:	464c555f 			; <UNDEFINED> instruction: 0x464c555f
    7980:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    7984:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7988:	30205f5f 	eorcc	r5, r0, pc, asr pc
    798c:	46464658 			; <UNDEFINED> instruction: 0x46464658
    7990:	46464646 	strbmi	r4, [r6], -r6, asr #12
    7994:	332d5046 			; <UNDEFINED> instruction: 0x332d5046
    7998:	524c5532 	subpl	r5, ip, #209715200	; 0xc800000
    799c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 79a4 <__bss_end__+0x46bc>
    79a0:	445f4c42 	ldrbmi	r4, [pc], #-3138	; 79a8 <__bss_end__+0x46c0>
    79a4:	4d494345 	stclmi	3, cr4, [r9, #-276]	; 0xfffffeec
    79a8:	445f4c41 	ldrbmi	r4, [pc], #-3137	; 79b0 <__bss_end__+0x46c8>
    79ac:	5f5f4749 	svcpl	0x005f4749
    79b0:	00373120 	eorseq	r3, r7, r0, lsr #2
    79b4:	78616d5f 	stmdavc	r1!, {r0, r1, r2, r3, r4, r6, r8, sl, fp, sp, lr}^
    79b8:	00736477 	rsbseq	r6, r3, r7, ror r4
    79bc:	5f43535f 	svcpl	0x0043535f
    79c0:	5f564f49 	svcpl	0x00564f49
    79c4:	2058414d 	subscs	r4, r8, sp, asr #2
    79c8:	5f003636 	svcpl	0x00003636
    79cc:	7661685f 			; <UNDEFINED> instruction: 0x7661685f
    79d0:	6f6c5f65 	svcvs	0x006c5f65
    79d4:	3233676e 	eorscc	r6, r3, #28835840	; 0x1b80000
    79d8:	5f003120 	svcpl	0x00003120
    79dc:	5f737973 	svcpl	0x00737973
    79e0:	6c727265 	lfmvs	f7, 2, [r2], #-404	; 0xfffffe6c
    79e4:	00747369 	rsbseq	r7, r4, r9, ror #6
    79e8:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    79ec:	6765525f 			; <UNDEFINED> instruction: 0x6765525f
    79f0:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    79f4:	5f007372 	svcpl	0x00007372
    79f8:	656c665f 	strbvs	r6, [ip, #-1631]!	; 0xfffff9a1
    79fc:	72726178 	rsbsvc	r6, r2, #120, 2
    7a00:	5d305b20 	vldmdbpl	r0!, {d5-d20}
    7a04:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    7a08:	435f3631 	cmpmi	pc, #51380224	; 0x3100000
    7a0c:	20296328 	eorcs	r6, r9, r8, lsr #6
    7a10:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    7a14:	5f363154 	svcpl	0x00363154
    7a18:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    7a1c:	52415500 	subpl	r5, r1, #0, 10
    7a20:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
    7a24:	4d48435f 	stclmi	3, cr4, [r8, #-380]	; 0xfffffe84
    7a28:	5f45444f 	svcpl	0x0045444f
    7a2c:	4f4c5f52 	svcmi	0x004c5f52
    7a30:	3020504f 	eorcc	r5, r0, pc, asr #32
    7a34:	30303078 	eorscc	r3, r0, r8, ror r0
    7a38:	30333030 	eorscc	r3, r3, r0, lsr r0
    7a3c:	5f5f0030 	svcpl	0x005f0030
    7a40:	795f6d74 	ldmdbvc	pc, {r2, r4, r5, r6, r8, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    7a44:	00726165 	rsbseq	r6, r2, r5, ror #2
    7a48:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    7a4c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 7988 <__bss_end__+0x46a0>
    7a50:	45005841 	strmi	r5, [r0, #-2113]	; 0xfffff7bf
    7a54:	52544f4e 	subspl	r4, r4, #312	; 0x138
    7a58:	564f4345 	strbpl	r4, [pc], -r5, asr #6
    7a5c:	42415245 	submi	r5, r1, #1342177284	; 0x50000004
    7a60:	3120454c 			; <UNDEFINED> instruction: 0x3120454c
    7a64:	5f003134 	svcpl	0x00003134
    7a68:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    7a6c:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 79b0 <__bss_end__+0x46c8>
    7a70:	5f5f5841 	svcpl	0x005f5841
    7a74:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    7a78:	00666666 	rsbeq	r6, r6, r6, ror #12
    7a7c:	59535f5f 	ldmdbpl	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    7a80:	4f435f53 	svcmi	0x00435f53
    7a84:	4749464e 	strbmi	r4, [r9, -lr, asr #12]
    7a88:	5f5f485f 	svcpl	0x005f485f
    7a8c:	4e450020 	cdpmi	0, 4, cr0, cr5, cr0, {1}
    7a90:	204f4958 	subcs	r4, pc, r8, asr r9	; <UNPREDICTABLE>
    7a94:	5f5f0036 	svcpl	0x005f0036
    7a98:	4f564544 	svcmi	0x00564544
    7a9c:	4954414c 	ldmdbmi	r4, {r2, r3, r6, r8, lr}^
    7aa0:	7428454c 	strtvc	r4, [r8], #-1356	; 0xfffffab4
    7aa4:	2c657079 	stclcs	0, cr7, [r5], #-484	; 0xfffffe1c
    7aa8:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    7aac:	74282820 	strtvc	r2, [r8], #-2080	; 0xfffff7e0
    7ab0:	29657079 	stmdbcs	r5!, {r0, r3, r4, r5, r6, ip, sp, lr}^
    7ab4:	755f5f28 	ldrbvc	r5, [pc, #-3880]	; 6b94 <__bss_end__+0x38ac>
    7ab8:	70746e69 	rsbsvc	r6, r4, r9, ror #28
    7abc:	745f7274 	ldrbvc	r7, [pc], #-628	; 7ac4 <__bss_end__+0x47dc>
    7ac0:	6f762829 	svcvs	0x00762829
    7ac4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    7ac8:	7620656c 	strtvc	r6, [r0], -ip, ror #10
    7acc:	2064696f 	rsbcs	r6, r4, pc, ror #18
    7ad0:	7628292a 	strtvc	r2, [r8], -sl, lsr #18
    7ad4:	29297261 	stmdbcs	r9!, {r0, r5, r6, r9, ip, sp, lr}
    7ad8:	575f5f00 	ldrbpl	r5, [pc, -r0, lsl #30]
    7adc:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    7ae0:	5f5f545f 	svcpl	0x005f545f
    7ae4:	5f5f0020 	svcpl	0x005f0020
    7ae8:	5f505353 	svcpl	0x00505353
    7aec:	54524f46 	ldrbpl	r4, [r2], #-3910	; 0xfffff0ba
    7af0:	5f594649 	svcpl	0x00594649
    7af4:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
    7af8:	0030204c 	eorseq	r2, r0, ip, asr #32
    7afc:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    7b00:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    7b04:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    7b08:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    7b0c:	3233444d 	eorscc	r4, r3, #1291845632	; 0x4d000000
    7b10:	5f003120 	svcpl	0x00003120
    7b14:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
    7b18:	5f746c75 	svcpl	0x00746c75
    7b1c:	5f657375 	svcpl	0x00657375
    7b20:	63656863 	cmnvs	r5, #6488064	; 0x630000
    7b24:	5f5f206b 	svcpl	0x005f206b
    7b28:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    7b2c:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    7b30:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    7b34:	775f5f28 	ldrbvc	r5, [pc, -r8, lsr #30]
    7b38:	5f6e7261 	svcpl	0x006e7261
    7b3c:	73756e75 	cmnvc	r5, #1872	; 0x750
    7b40:	725f6465 	subsvc	r6, pc, #1694498816	; 0x65000000
    7b44:	6c757365 	ldclvs	3, cr7, [r5], #-404	; 0xfffffe6c
    7b48:	295f5f74 	ldmdbcs	pc, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    7b4c:	5f5f0029 	svcpl	0x005f0029
    7b50:	5f495358 	svcpl	0x00495358
    7b54:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    7b58:	20454c42 	subcs	r4, r5, r2, asr #24
    7b5c:	41550030 	cmpmi	r5, r0, lsr r0
    7b60:	435f5452 	cmpmi	pc, #1375731712	; 0x52000000
    7b64:	4f545f52 	svcmi	0x00545f52
    7b68:	20545352 	subscs	r5, r4, r2, asr r3
    7b6c:	30307830 	eorscc	r7, r0, r0, lsr r8
    7b70:	30303030 	eorscc	r3, r0, r0, lsr r0
    7b74:	5f003034 	svcpl	0x00003034
    7b78:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    7b7c:	48435f54 	stmdami	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    7b80:	5f4b4345 	svcpl	0x004b4345
    7b84:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    7b88:	76283834 			; <UNDEFINED> instruction: 0x76283834
    7b8c:	20297261 	eorcs	r7, r9, r1, ror #4
    7b90:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    7b94:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    7b98:	4b434548 	blmi	10d90c0 <_end+0xd90c0>
    7b9c:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    7ba0:	725f202c 	subsvc	r2, pc, #44	; 0x2c
    7ba4:	202c3834 	eorcs	r3, ip, r4, lsr r8
    7ba8:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
    7bac:	5f207463 	svcpl	0x00207463
    7bb0:	646e6172 	strbtvs	r6, [lr], #-370	; 0xfffffe8e
    7bb4:	2a203834 	bcs	815c8c <heap_size+0x7f5c8c>
    7bb8:	6973202c 	ldmdbvs	r3!, {r2, r3, r5, sp}^
    7bbc:	666f657a 			; <UNDEFINED> instruction: 0x666f657a
    7bc0:	28282a20 	stmdacs	r8!, {r5, r9, fp, sp}
    7bc4:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    7bc8:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
    7bcc:	2c293834 	stccs	8, cr3, [r9], #-208	; 0xffffff30
    7bd0:	45525f20 	ldrbmi	r5, [r2, #-3872]	; 0xfffff0e0
    7bd4:	5f544e45 	svcpl	0x00544e45
    7bd8:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    7bdc:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    7be0:	28383444 	ldmdacs	r8!, {r2, r6, sl, ip, sp}
    7be4:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    7be8:	00292929 	eoreq	r2, r9, r9, lsr #18
    7bec:	5f544e49 	svcpl	0x00544e49
    7bf0:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    7bf4:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 7b30 <__bss_end__+0x4848>
    7bf8:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    7bfc:	544e492d 	strbpl	r4, [lr], #-2349	; 0xfffff6d3
    7c00:	5341465f 	movtpl	r4, #5727	; 0x165f
    7c04:	5f323354 	svcpl	0x00323354
    7c08:	2058414d 	subscs	r4, r8, sp, asr #2
    7c0c:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    7c10:	515f5f00 	cmppl	pc, r0, lsl #30
    7c14:	42465f51 	submi	r5, r6, #324	; 0x144
    7c18:	5f5f5449 	svcpl	0x005f5449
    7c1c:	55003720 	strpl	r3, [r0, #-1824]	; 0xfffff8e0
    7c20:	5f544e49 	svcpl	0x00544e49
    7c24:	5341454c 	movtpl	r4, #5452	; 0x154c
    7c28:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 7ae0 <__bss_end__+0x47f8>
    7c2c:	5f005841 	svcpl	0x00005841
    7c30:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    7c34:	4f54415f 	svcmi	0x0054415f
    7c38:	5f43494d 	svcpl	0x0043494d
    7c3c:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    7c40:	205f5f48 	subscs	r5, pc, r8, asr #30
    7c44:	5f003233 	svcpl	0x00003233
    7c48:	545f4353 	ldrbpl	r4, [pc], #-851	; 7c50 <__bss_end__+0x4968>
    7c4c:	41455248 	cmpmi	r5, r8, asr #4
    7c50:	52505f44 	subspl	r5, r0, #68, 30	; 0x110
    7c54:	49524f49 	ldmdbmi	r2, {r0, r3, r6, r8, r9, sl, fp, lr}^
    7c58:	535f5954 	cmppl	pc, #84, 18	; 0x150000
    7c5c:	44454843 	strbmi	r4, [r5], #-2115	; 0xfffff7bd
    7c60:	4e494c55 	mcrmi	12, 2, r4, cr9, cr5, {2}
    7c64:	35342047 	ldrcc	r2, [r4, #-71]!	; 0xffffffb9
    7c68:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    7c6c:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    7c70:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    7c74:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    7c78:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    7c7c:	3032322e 	eorscc	r3, r2, lr, lsr #4
    7c80:	30363434 	eorscc	r3, r6, r4, lsr r4
    7c84:	35323934 	ldrcc	r3, [r2, #-2356]!	; 0xfffff6cc
    7c88:	33313330 	teqcc	r1, #48, 6	; 0xc0000000
    7c8c:	312d6531 			; <UNDEFINED> instruction: 0x312d6531
    7c90:	34364636 	ldrtcc	r4, [r6], #-1590	; 0xfffff9ca
    7c94:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    7c98:	5f544e45 	svcpl	0x00544e45
    7c9c:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    7ca0:	4554415f 	ldrbmi	r4, [r4, #-351]	; 0xfffffea1
    7ca4:	20544958 	subscs	r4, r4, r8, asr r9
    7ca8:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    7cac:	5f43554e 	svcpl	0x0043554e
    7cb0:	52455250 	subpl	r5, r5, #80, 4
    7cb4:	5f5f5145 	svcpl	0x005f5145
    7cb8:	2c616d28 	stclcs	13, cr6, [r1], #-160	; 0xffffff60
    7cbc:	2029696d 	eorcs	r6, r9, sp, ror #18
    7cc0:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    7cc4:	505f4355 	subspl	r4, pc, r5, asr r3	; <UNPREDICTABLE>
    7cc8:	45524552 	ldrbmi	r4, [r2, #-1362]	; 0xfffffaae
    7ccc:	616d2851 	cmnvs	sp, r1, asr r8
    7cd0:	696d202c 	stmdbvs	sp!, {r2, r3, r5, sp}^
    7cd4:	535f0029 	cmppl	pc, #41	; 0x29
    7cd8:	48545f43 	ldmdami	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    7cdc:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
    7ce0:	4952505f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, ip, lr}^
    7ce4:	45435f4f 	strbmi	r5, [r3, #-3919]	; 0xfffff0b1
    7ce8:	4e494c49 	cdpmi	12, 4, cr4, cr9, cr9, {2}
    7cec:	535f2047 	cmppl	pc, #71	; 0x47
    7cf0:	48545f43 	ldmdami	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    7cf4:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
    7cf8:	4952505f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, ip, lr}^
    7cfc:	52505f4f 	subspl	r5, r0, #316	; 0x13c
    7d00:	4345544f 	movtmi	r5, #21583	; 0x544f
    7d04:	5f5f0054 	svcpl	0x005f0054
    7d08:	5f415455 	svcpl	0x00415455
    7d0c:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    7d10:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    7d14:	5f5f0034 	svcpl	0x005f0034
    7d18:	414c4c55 	cmpmi	ip, r5, asr ip
    7d1c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    7d20:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    7d24:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    7d28:	5f003233 	svcpl	0x00003233
    7d2c:	4d5f4353 	ldclmi	3, cr4, [pc, #-332]	; 7be8 <__bss_end__+0x4900>
    7d30:	504f5f51 	subpl	r5, pc, r1, asr pc	; <UNPREDICTABLE>
    7d34:	4d5f4e45 	ldclmi	14, cr4, [pc, #-276]	; 7c28 <__bss_end__+0x4940>
    7d38:	31205841 			; <UNDEFINED> instruction: 0x31205841
    7d3c:	5f5f0033 	svcpl	0x005f0033
    7d40:	6f727473 	svcvs	0x00727473
    7d44:	725f676e 	subsvc	r6, pc, #28835840	; 0x1b80000
    7d48:	72656665 	rsbvc	r6, r5, #105906176	; 0x6500000
    7d4c:	65636e65 	strbvs	r6, [r3, #-3685]!	; 0xfffff19b
    7d50:	6d797328 	ldclvs	3, cr7, [r9, #-160]!	; 0xffffff60
    7d54:	696c612c 	stmdbvs	ip!, {r2, r3, r5, r8, sp, lr}^
    7d58:	79737361 	ldmdbvc	r3!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    7d5c:	6520296d 	strvs	r2, [r0, #-2413]!	; 0xfffff693
    7d60:	72657478 	rsbvc	r7, r5, #120, 8	; 0x78000000
    7d64:	5f5f206e 	svcpl	0x005f206e
    7d68:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    7d6c:	2820666f 	stmdacs	r0!, {r0, r1, r2, r3, r5, r6, r9, sl, sp, lr}
    7d70:	296d7973 	stmdbcs	sp!, {r0, r1, r4, r5, r6, r8, fp, ip, sp, lr}^
    7d74:	696c6120 	stmdbvs	ip!, {r5, r8, sp, lr}^
    7d78:	79737361 	ldmdbvc	r3!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    7d7c:	5f5f206d 	svcpl	0x005f206d
    7d80:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    7d84:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    7d88:	205f5f65 	subscs	r5, pc, r5, ror #30
    7d8c:	5f5f2828 	svcpl	0x005f2828
    7d90:	61696c61 	cmnvs	r9, r1, ror #24
    7d94:	205f5f73 	subscs	r5, pc, r3, ror pc	; <UNPREDICTABLE>
    7d98:	79732328 	ldmdbvc	r3!, {r3, r5, r8, r9, sp}^
    7d9c:	2929296d 	stmdbcs	r9!, {r0, r2, r3, r5, r6, r8, fp, sp}
    7da0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 6ea8 <__bss_end__+0x3bc0>
    7da4:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    7da8:	5f544341 	svcpl	0x00544341
    7dac:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    7db0:	5f4e4f4c 	svcpl	0x004e4f4c
    7db4:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    7db8:	362d5031 			; <UNDEFINED> instruction: 0x362d5031
    7dbc:	4c4c5534 	cfstr64mi	mvdx5, [ip], {52}	; 0x34
    7dc0:	6c5f0052 	mrrcvs	0, 5, r0, pc, cr2	; <UNPREDICTABLE>
    7dc4:	69736662 	ldmdbvs	r3!, {r1, r5, r6, r9, sl, sp, lr}^
    7dc8:	5f00657a 	svcpl	0x0000657a
    7dcc:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    7dd0:	4e495f4b 	cdpmi	15, 4, cr5, cr9, cr11, {2}
    7dd4:	525f5449 	subspl	r5, pc, #1224736768	; 0x49000000
    7dd8:	52554345 	subspl	r4, r5, #335544321	; 0x14000001
    7ddc:	45564953 	ldrbmi	r4, [r6, #-2387]	; 0xfffff6ad
    7de0:	616c6328 	cmnvs	ip, r8, lsr #6
    7de4:	6c2c7373 	stcvs	3, cr7, [ip], #-460	; 0xfffffe34
    7de8:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    7dec:	61747320 	cmnvs	r4, r0, lsr #6
    7df0:	20636974 	rsbcs	r6, r3, r4, ror r9
    7df4:	20746e69 	rsbscs	r6, r4, r9, ror #28
    7df8:	6b636f6c 	blvs	18e3bb0 <_end+0x8e3bb0>
    7dfc:	30203d20 	eorcc	r3, r0, r0, lsr #26
    7e00:	5f5f003b 	svcpl	0x005f003b
    7e04:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    7e08:	575f464f 	ldrbpl	r4, [pc, -pc, asr #12]
    7e0c:	5f544e49 	svcpl	0x00544e49
    7e10:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    7e14:	695f0034 	ldmdbvs	pc, {r2, r4, r5}^	; <UNPREDICTABLE>
    7e18:	4500646e 	strmi	r6, [r0, #-1134]	; 0xfffffb92
    7e1c:	52534f4e 	subspl	r4, r3, #312	; 0x138
    7e20:	00333620 	eorseq	r3, r3, r0, lsr #12
    7e24:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    7e28:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    7e2c:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    7e30:	4e555f45 	cdpmi	15, 5, cr5, cr5, cr5, {2}
    7e34:	47494c41 	strbmi	r4, [r9, -r1, asr #24]
    7e38:	2044454e 	subcs	r4, r4, lr, asr #10
    7e3c:	5f5f0031 	svcpl	0x005f0031
    7e40:	43445453 	movtmi	r5, #17491	; 0x4453
    7e44:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    7e48:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    7e4c:	5f4c4244 	svcpl	0x004c4244
    7e50:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
    7e54:	5f4c414d 	svcpl	0x004c414d
    7e58:	5f474944 	svcpl	0x00474944
    7e5c:	3731205f 			; <UNDEFINED> instruction: 0x3731205f
    7e60:	52415500 	subpl	r5, r1, #0, 10
    7e64:	4f4d5f54 	svcmi	0x004d5f54
    7e68:	434d4544 	movtmi	r4, #54596	; 0xd544
    7e6c:	54445f52 	strbpl	r5, [r4], #-3922	; 0xfffff0ae
    7e70:	78302052 	ldmdavc	r0!, {r1, r4, r6, sp}
    7e74:	30303030 	eorscc	r3, r0, r0, lsr r0
    7e78:	31303030 	teqcc	r0, r0, lsr r0
    7e7c:	4f4e4500 	svcmi	0x004e4500
    7e80:	20535953 	subscs	r5, r3, r3, asr r9
    7e84:	5f003838 	svcpl	0x00003838
    7e88:	756e755f 	strbvc	r7, [lr, #-1375]!	; 0xfffffaa1
    7e8c:	20646573 	rsbcs	r6, r4, r3, ror r5
    7e90:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    7e94:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    7e98:	5f657475 	svcpl	0x00657475
    7e9c:	5f28285f 	svcpl	0x0028285f
    7ea0:	756e755f 	strbvc	r7, [lr, #-1375]!	; 0xfffffaa1
    7ea4:	5f646573 	svcpl	0x00646573
    7ea8:	0029295f 	eoreq	r2, r9, pc, asr r9
    7eac:	414c5f5f 	cmpmi	ip, pc, asr pc
    7eb0:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    7eb4:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    7eb8:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    7ebc:	3158302d 	cmpcc	r8, sp, lsr #32
    7ec0:	4c313350 	ldcmi	3, cr3, [r1], #-320	; 0xfffffec0
    7ec4:	58302d4b 	ldmdapl	r0!, {r0, r1, r3, r6, r8, sl, fp, sp}
    7ec8:	31335031 	teqcc	r3, r1, lsr r0
    7ecc:	00294b4c 	eoreq	r4, r9, ip, asr #22
    7ed0:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    7ed4:	41465f54 	cmpmi	r6, r4, asr pc
    7ed8:	5f385453 	svcpl	0x00385453
    7edc:	5f58414d 	svcpl	0x0058414d
    7ee0:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    7ee4:	66666637 			; <UNDEFINED> instruction: 0x66666637
    7ee8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    7eec:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    7ef0:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    7ef4:	5341485f 	movtpl	r4, #6239	; 0x185f
    7ef8:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    7efc:	5f4d524f 	svcpl	0x004d524f
    7f00:	0031205f 	eorseq	r2, r1, pc, asr r0
    7f04:	63735f5f 	cmnvs	r3, #380	; 0x17c
    7f08:	6c666e61 	stclvs	14, cr6, [r6], #-388	; 0xfffffe7c
    7f0c:	28656b69 	stmdacs	r5!, {r0, r3, r5, r6, r8, r9, fp, sp, lr}^
    7f10:	61746d66 	cmnvs	r4, r6, ror #26
    7f14:	662c6772 			; <UNDEFINED> instruction: 0x662c6772
    7f18:	74737269 	ldrbtvc	r7, [r3], #-617	; 0xfffffd97
    7f1c:	61726176 	cmnvs	r2, r6, ror r1
    7f20:	20296772 	eorcs	r6, r9, r2, ror r7
    7f24:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    7f28:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    7f2c:	5f657475 	svcpl	0x00657475
    7f30:	5f28285f 	svcpl	0x0028285f
    7f34:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
    7f38:	5f74616d 	svcpl	0x0074616d
    7f3c:	5f28205f 	svcpl	0x0028205f
    7f40:	6163735f 	cmnvs	r3, pc, asr r3
    7f44:	5f5f666e 	svcpl	0x005f666e
    7f48:	6d66202c 	stclvs	0, cr2, [r6, #-176]!	; 0xffffff50
    7f4c:	67726174 			; <UNDEFINED> instruction: 0x67726174
    7f50:	6966202c 	stmdbvs	r6!, {r2, r3, r5, sp}^
    7f54:	76747372 			; <UNDEFINED> instruction: 0x76747372
    7f58:	72617261 	rsbvc	r7, r1, #268435462	; 0x10000006
    7f5c:	29292967 	stmdbcs	r9!, {r0, r1, r2, r5, r6, r8, fp, sp}
    7f60:	43535f00 	cmpmi	r3, #0, 30
    7f64:	534f505f 	movtpl	r5, #61535	; 0xf05f
    7f68:	325f5849 	subscc	r5, pc, #4784128	; 0x490000
    7f6c:	45565f36 	ldrbmi	r5, [r6, #-3894]	; 0xfffff0ca
    7f70:	4f495352 	svcmi	0x00495352
    7f74:	3431204e 	ldrtcc	r2, [r1], #-78	; 0xffffffb2
    7f78:	525f0030 	subspl	r0, pc, #48	; 0x30
    7f7c:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    7f80:	414d535f 	cmpmi	sp, pc, asr r3
    7f84:	00204c4c 	eoreq	r4, r0, ip, asr #24
    7f88:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    7f8c:	5258495f 	subspl	r4, r8, #1556480	; 0x17c000
    7f90:	53414d5f 	movtpl	r4, #7519	; 0x1d5f
    7f94:	7830204b 	ldmdavc	r0!, {r0, r1, r3, r6, sp}
    7f98:	30303030 	eorscc	r3, r0, r0, lsr r0
    7f9c:	46463330 			; <UNDEFINED> instruction: 0x46463330
    7fa0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 70a8 <__bss_end__+0x3dc0>
    7fa4:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    7fa8:	5f4d5543 	svcpl	0x004d5543
    7fac:	5f4e494d 	svcpl	0x004e494d
    7fb0:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
    7fb4:	4c4c5530 	cfstr64mi	mvdx5, [ip], {48}	; 0x30
    7fb8:	535f004b 	cmppl	pc, #75	; 0x4b
    7fbc:	5f5f5359 	svcpl	0x005f5359
    7fc0:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    7fc4:	20485f53 	subcs	r5, r8, r3, asr pc
    7fc8:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    7fcc:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    7fd0:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    7fd4:	49575f32 	ldmdbmi	r7, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    7fd8:	5f485444 	svcpl	0x00485444
    7fdc:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    7fe0:	59535f00 	ldmdbpl	r3, {r8, r9, sl, fp, ip, lr}^
    7fe4:	44435f53 	strbmi	r5, [r3], #-3923	; 0xfffff0ad
    7fe8:	5f534645 	svcpl	0x00534645
    7fec:	00205f48 	eoreq	r5, r0, r8, asr #30
    7ff0:	5f43505f 	svcpl	0x0043505f
    7ff4:	45504950 	ldrbmi	r4, [r0, #-2384]	; 0xfffff6b0
    7ff8:	4655425f 			; <UNDEFINED> instruction: 0x4655425f
    7ffc:	5f003520 	svcpl	0x00003520
    8000:	635f7369 	cmpvs	pc, #-1543503871	; 0xa4000001
    8004:	5f006178 	svcpl	0x00006178
    8008:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    800c:	4b494c43 	blmi	125b120 <_end+0x25b120>
    8010:	55425f45 	strbpl	r5, [r2, #-3909]	; 0xfffff0bb
    8014:	49544c49 	ldmdbmi	r4, {r0, r3, r6, sl, fp, lr}^
    8018:	41565f4e 	cmpmi	r6, lr, asr #30
    801c:	53494c41 	movtpl	r4, #40001	; 0x9c41
    8020:	00312054 	eorseq	r2, r1, r4, asr r0
    8024:	5f43535f 	svcpl	0x0043535f
    8028:	4e595341 	cdpmi	3, 5, cr5, cr9, cr1, {2}
    802c:	4f524843 	svcmi	0x00524843
    8030:	53554f4e 	cmppl	r5, #312	; 0x138
    8034:	204f495f 	subcs	r4, pc, pc, asr r9	; <UNPREDICTABLE>
    8038:	5f003132 	svcpl	0x00003132
    803c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    8040:	5f323354 	svcpl	0x00323354
    8044:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    8048:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    804c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    8050:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    8054:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    8058:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    805c:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    8060:	5f525450 	svcpl	0x00525450
    8064:	2058414d 	subscs	r4, r8, sp, asr #2
    8068:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    806c:	52545054 	subspl	r5, r4, #84	; 0x54
    8070:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8074:	5f005f5f 	svcpl	0x00005f5f
    8078:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    807c:	4b494c43 	blmi	125b190 <_end+0x25b190>
    8080:	414d5f45 	cmpmi	sp, r5, asr #30
    8084:	425f4854 	subsmi	r4, pc, #84, 16	; 0x540000
    8088:	544c4955 	strbpl	r4, [ip], #-2389	; 0xfffff6ab
    808c:	435f4e49 	cmpmi	pc, #1168	; 0x490
    8090:	54534e4f 	ldrbpl	r4, [r3], #-3663	; 0xfffff1b1
    8094:	53544e41 	cmppl	r4, #1040	; 0x410
    8098:	535f0020 	cmppl	pc, #32
    809c:	474e5f43 	strbmi	r5, [lr, -r3, asr #30]
    80a0:	50554f52 	subspl	r4, r5, r2, asr pc
    80a4:	414d5f53 	cmpmi	sp, r3, asr pc
    80a8:	00332058 	eorseq	r2, r3, r8, asr r0
    80ac:	5241555f 	subpl	r5, r1, #398458880	; 0x17c00000
    80b0:	57485f54 	smlsldpl	r5, r8, r4, pc	; <UNPREDICTABLE>
    80b4:	205f485f 	subscs	r4, pc, pc, asr r8	; <UNPREDICTABLE>
    80b8:	706d5f00 	rsbvc	r5, sp, r0, lsl #30
    80bc:	00636572 	rsbeq	r6, r3, r2, ror r5
    80c0:	75705f5f 	ldrbvc	r5, [r0, #-3935]!	; 0xfffff0a1
    80c4:	5f206572 	svcpl	0x00206572
    80c8:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    80cc:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    80d0:	5f5f6574 	svcpl	0x005f6574
    80d4:	5f5f2828 	svcpl	0x005f2828
    80d8:	65727570 	ldrbvs	r7, [r2, #-1392]!	; 0xfffffa90
    80dc:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    80e0:	415f5f00 	cmpmi	pc, r0, lsl #30
    80e4:	505f4d52 	subspl	r4, pc, r2, asr sp	; <UNPREDICTABLE>
    80e8:	565f5343 	ldrbpl	r5, [pc], -r3, asr #6
    80ec:	31205046 			; <UNDEFINED> instruction: 0x31205046
    80f0:	52545000 	subspl	r5, r4, #0
    80f4:	46464944 	strbmi	r4, [r6], -r4, asr #18
    80f8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    80fc:	505f5f20 	subspl	r5, pc, r0, lsr #30
    8100:	49445254 	stmdbmi	r4, {r2, r4, r6, r9, ip, lr}^
    8104:	4d5f4646 	ldclmi	6, cr4, [pc, #-280]	; 7ff4 <__bss_end__+0x4d0c>
    8108:	5f5f5841 	svcpl	0x005f5841
    810c:	43475f00 	movtmi	r5, #32512	; 0x7f00
    8110:	49535f43 	ldmdbmi	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    8114:	545f455a 	ldrbpl	r4, [pc], #-1370	; 811c <__bss_end__+0x4e34>
    8118:	6d5f0020 	ldclvs	0, cr0, [pc, #-128]	; 80a0 <__bss_end__+0x4db8>
    811c:	00637369 	rsbeq	r7, r3, r9, ror #6
    8120:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    8124:	5055535f 	subspl	r5, r5, pc, asr r3
    8128:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    812c:	41575f53 	cmpmi	r7, r3, asr pc
    8130:	4e494e52 	mcrmi	14, 2, r4, cr9, cr2, {2}
    8134:	00312047 	eorseq	r2, r1, r7, asr #32
    8138:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    813c:	4152464c 	cmpmi	r2, ip, asr #12
    8140:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 803c <__bss_end__+0x4d54>
    8144:	5f5f4e49 	svcpl	0x005f4e49
    8148:	302e3020 	eorcc	r3, lr, r0, lsr #32
    814c:	524c4c55 	subpl	r4, ip, #21760	; 0x5500
    8150:	5f545f00 	svcpl	0x00545f00
    8154:	41484357 	cmpmi	r8, r7, asr r3
    8158:	00205f52 	eoreq	r5, r0, r2, asr pc
    815c:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    8160:	00676e6f 	rsbeq	r6, r7, pc, ror #28
    8164:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    8168:	5f524d5f 	svcpl	0x00524d5f
    816c:	504f5453 	subpl	r5, pc, r3, asr r4	; <UNPREDICTABLE>
    8170:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    8174:	355f315f 	ldrbcc	r3, [pc, #-351]	; 801d <__bss_end__+0x4d35>
    8178:	5449425f 	strbpl	r4, [r9], #-607	; 0xfffffda1
    817c:	30783020 	rsbscc	r3, r8, r0, lsr #32
    8180:	30303030 	eorscc	r3, r0, r0, lsr r0
    8184:	00303430 	eorseq	r3, r0, r0, lsr r4
    8188:	4c554d45 	mrrcmi	13, 4, r4, r5, cr5
    818c:	4f484954 	svcmi	0x00484954
    8190:	34372050 	ldrtcc	r2, [r7], #-80	; 0xffffffb0
    8194:	415f5f00 	cmpmi	pc, r0, lsl #30
    8198:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    819c:	5f363150 	svcpl	0x00363150
    81a0:	53475241 	movtpl	r5, #29249	; 0x7241
    81a4:	6c5f5f00 	mrrcvs	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    81a8:	5f6b636f 	svcpl	0x006b636f
    81ac:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
    81b0:	28657361 	stmdacs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    81b4:	6b636f6c 	blvs	18e3f6c <_end+0x8e3f6c>
    81b8:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    81bc:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    81c0:	29302029 	ldmdbcs	r0!, {r0, r3, r5, sp}
    81c4:	535f5f00 	cmppl	pc, #0, 30
    81c8:	4f455a49 	svcmi	0x00455a49
    81cc:	4e495f46 	cdpmi	15, 4, cr5, cr9, cr6, {2}
    81d0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    81d4:	425f0034 	subsmi	r0, pc, #52	; 0x34
    81d8:	575f4453 			; <UNDEFINED> instruction: 0x575f4453
    81dc:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    81e0:	005f545f 	subseq	r5, pc, pc, asr r4	; <UNPREDICTABLE>
    81e4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    81e8:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 812c <__bss_end__+0x4e44>
    81ec:	5f005841 	svcpl	0x00005841
    81f0:	464c4c5f 			; <UNDEFINED> instruction: 0x464c4c5f
    81f4:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    81f8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    81fc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    8200:	5f5f0030 	svcpl	0x005f0030
    8204:	535f4343 	cmppl	pc, #201326593	; 0xc000001
    8208:	4f505055 	svcmi	0x00505055
    820c:	5f535452 	svcpl	0x00535452
    8210:	41524156 	cmpmi	r2, r6, asr r1
    8214:	5f434944 	svcpl	0x00434944
    8218:	20585858 	subscs	r5, r8, r8, asr r8
    821c:	505f0031 	subspl	r0, pc, r1, lsr r0	; <UNPREDICTABLE>
    8220:	414d5f43 	cmpmi	sp, r3, asr #30
    8224:	41435f58 	cmpmi	r3, r8, asr pc
    8228:	204e4f4e 	subcs	r4, lr, lr, asr #30
    822c:	41550031 	cmpmi	r5, r1, lsr r0
    8230:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 80f0 <__bss_end__+0x4e08>
    8234:	48435f52 	stmdami	r3, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    8238:	454c5241 	strbmi	r5, [ip, #-577]	; 0xfffffdbf
    823c:	48535f4e 	ldmdami	r3, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    8240:	20544649 	subscs	r4, r4, r9, asr #12
    8244:	4d450031 	stclmi	0, cr0, [r5, #-196]	; 0xffffff3c
    8248:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    824c:	00343220 	eorseq	r3, r4, r0, lsr #4
    8250:	5f43535f 	svcpl	0x0043535f
    8254:	5f4b4c43 	svcpl	0x004b4c43
    8258:	204b4354 	subcs	r4, fp, r4, asr r3
    825c:	5f5f0032 	svcpl	0x005f0032
    8260:	43434153 	movtmi	r4, #12627	; 0x3153
    8264:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; 7517 <__bss_end__+0x422f>
    8268:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    826c:	5f5f4e4f 	svcpl	0x005f4e4f
    8270:	31783020 	cmncc	r8, r0, lsr #32
    8274:	48372d50 	ldmdami	r7!, {r4, r6, r8, sl, fp, sp}
    8278:	535f004b 	cmppl	pc, #75	; 0x4b
    827c:	48545f43 	ldmdami	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    8280:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
    8284:	4f52505f 	svcmi	0x0052505f
    8288:	53534543 	cmppl	r3, #281018368	; 0x10c00000
    828c:	4148535f 	cmpmi	r8, pc, asr r3
    8290:	20444552 	subcs	r4, r4, r2, asr r5
    8294:	45003834 	strmi	r3, [r0, #-2100]	; 0xfffff7cc
    8298:	35204f49 	strcc	r4, [r0, #-3913]!	; 0xfffff0b7
    829c:	65725f00 	ldrbvs	r5, [r2, #-3840]!	; 0xfffff100
    82a0:	746c7573 	strbtvc	r7, [ip], #-1395	; 0xfffffa8d
    82a4:	45444500 	strbmi	r4, [r4, #-1280]	; 0xfffffb00
    82a8:	4b4c4441 	blmi	13193b4 <_end+0x3193b4>
    82ac:	00353420 	eorseq	r3, r5, r0, lsr #8
    82b0:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    82b4:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 8184 <__bss_end__+0x4e9c>
    82b8:	52465f50 	subpl	r5, r6, #80, 30	; 0x140
    82bc:	494c4545 	stmdbmi	ip, {r0, r2, r6, r8, sl, lr}^
    82c0:	70285453 	eorvc	r5, r8, r3, asr r4
    82c4:	20297274 	eorcs	r7, r9, r4, ror r2
    82c8:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    82cc:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    82d0:	2d706d5f 	ldclcs	13, cr6, [r0, #-380]!	; 0xfffffe84
    82d4:	72665f3e 	rsbvc	r5, r6, #62, 30	; 0xf8
    82d8:	696c6565 	stmdbvs	ip!, {r0, r2, r5, r6, r8, sl, sp, lr}^
    82dc:	00297473 	eoreq	r7, r9, r3, ror r4
    82e0:	5f43535f 	svcpl	0x0043535f
    82e4:	4f495250 	svcmi	0x00495250
    82e8:	59544952 	ldmdbpl	r4, {r1, r4, r6, r8, fp, lr}^
    82ec:	4843535f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, ip, lr}^
    82f0:	4c554445 	cfldrdmi	mvd4, [r5], {69}	; 0x45
    82f4:	20474e49 	subcs	r4, r7, r9, asr #28
    82f8:	00313031 	eorseq	r3, r1, r1, lsr r0
    82fc:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    8300:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    8304:	31545341 	cmpcc	r4, r1, asr #6
    8308:	59545f36 	ldmdbpl	r4, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    830c:	5f5f4550 	svcpl	0x005f4550
    8310:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    8314:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    8318:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    831c:	5f5f0074 	svcpl	0x005f0074
    8320:	5f414855 	svcpl	0x00414855
    8324:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    8328:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    832c:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
    8330:	5f646565 	svcpl	0x00646565
    8334:	746e6977 	strbtvc	r6, [lr], #-2423	; 0xfffff689
    8338:	0020745f 	eoreq	r7, r0, pc, asr r4
    833c:	43415f5f 	movtmi	r5, #8031	; 0x1f5f
    8340:	5f4d5543 	svcpl	0x004d5543
    8344:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    8348:	5f4e4f4c 	svcpl	0x004e4f4c
    834c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    8350:	312d5031 			; <UNDEFINED> instruction: 0x312d5031
    8354:	5f004b35 	svcpl	0x00004b35
    8358:	414c555f 	cmpmi	ip, pc, asr r5
    835c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    8360:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    8364:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    8368:	30205f5f 	eorcc	r5, r0, pc, asr pc
    836c:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    8370:	4c553233 	lfmmi	f3, 2, [r5], {51}	; 0x33
    8374:	5f5f004b 	svcpl	0x005f004b
    8378:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    837c:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    8380:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    8384:	4f450035 	svcmi	0x00450035
    8388:	46524556 			; <UNDEFINED> instruction: 0x46524556
    838c:	20574f4c 	subscs	r4, r7, ip, asr #30
    8390:	00393331 	eorseq	r3, r9, r1, lsr r3
    8394:	42445f5f 	submi	r5, r4, #380	; 0x17c
    8398:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    839c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    83a0:	6f642828 	svcvs	0x00642828
    83a4:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
    83a8:	322e3229 	eorcc	r3, lr, #-1879048190	; 0x90000002
    83ac:	37303532 			; <UNDEFINED> instruction: 0x37303532
    83b0:	38353833 	ldmdacc	r5!, {r0, r1, r4, r5, fp, ip, sp}
    83b4:	32373035 	eorscc	r3, r7, #53	; 0x35
    83b8:	65343130 	ldrvs	r3, [r4, #-304]!	; 0xfffffed0
    83bc:	3830332d 	ldmdacc	r0!, {r0, r2, r3, r5, r8, r9, ip, sp}
    83c0:	5f00294c 	svcpl	0x0000294c
    83c4:	6d6f7441 	cfstrdvs	mvd7, [pc, #-260]!	; 82c8 <__bss_end__+0x4fe0>
    83c8:	54286369 	strtpl	r6, [r8], #-873	; 0xfffffc97
    83cc:	74732029 	ldrbtvc	r2, [r3], #-41	; 0xffffffd7
    83d0:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
    83d4:	54207b20 	strtpl	r7, [r0], #-2848	; 0xfffff4e0
    83d8:	6c6f7620 	stclvs	6, cr7, [pc], #-128	; 8360 <__bss_end__+0x5078>
    83dc:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    83e0:	5f5f2065 	svcpl	0x005f2065
    83e4:	3b6c6176 	blcc	1b209c4 <_end+0xb209c4>
    83e8:	5f007d20 	svcpl	0x00007d20
    83ec:	5a49535f 	bpl	125d170 <_end+0x25d170>
    83f0:	49575f45 	ldmdbmi	r7, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    83f4:	5f485444 	svcpl	0x00485444
    83f8:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    83fc:	74706f00 	ldrbtvc	r6, [r0], #-3840	; 0xfffff100
    8400:	00677261 	rsbeq	r7, r7, r1, ror #4
    8404:	5f43535f 	svcpl	0x0043535f
    8408:	414c4544 	cmpmi	ip, r4, asr #10
    840c:	4d495459 	cfstrdmi	mvd5, [r9, #-356]	; 0xfffffe9c
    8410:	4d5f5245 	lfmmi	f5, 2, [pc, #-276]	; 8304 <__bss_end__+0x501c>
    8414:	33205841 			; <UNDEFINED> instruction: 0x33205841
    8418:	5f5f0037 	svcpl	0x005f0037
    841c:	544e4957 	strbpl	r4, [lr], #-2391	; 0xfffff6a9
    8420:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    8424:	30205f5f 	eorcc	r5, r0, pc, asr pc
    8428:	4e490055 	mcrmi	0, 2, r0, cr9, cr5, {2}
    842c:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    8430:	31545341 	cmpcc	r4, r1, asr #6
    8434:	494d5f36 	stmdbmi	sp, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    8438:	6f5f004e 	svcvs	0x005f004e
    843c:	745f6666 	ldrbvc	r6, [pc], #-1638	; 8444 <__bss_end__+0x515c>
    8440:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    8444:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    8448:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    844c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    8450:	5f5f0035 	svcpl	0x005f0035
    8454:	36434544 	strbcc	r4, [r3], -r4, asr #10
    8458:	50455f34 	subpl	r5, r5, r4, lsr pc
    845c:	4f4c4953 	svcmi	0x004c4953
    8460:	205f5f4e 	subscs	r5, pc, lr, asr #30
    8464:	312d4531 			; <UNDEFINED> instruction: 0x312d4531
    8468:	00444435 	subeq	r4, r4, r5, lsr r4
    846c:	4f4c435f 	svcmi	0x004c435f
    8470:	44494b43 	strbmi	r4, [r9], #-2883	; 0xfffff4bd
    8474:	445f545f 	ldrbmi	r5, [pc], #-1119	; 847c <__bss_end__+0x5194>
    8478:	414c4345 	cmpmi	ip, r5, asr #6
    847c:	20444552 	subcs	r4, r4, r2, asr r5
    8480:	575f5f00 	ldrbpl	r5, [pc, -r0, lsl #30]
    8484:	5f544e49 	svcpl	0x00544e49
    8488:	5f58414d 	svcpl	0x0058414d
    848c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    8490:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8494:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8498:	5f5f0055 	svcpl	0x005f0055
    849c:	5f544e49 	svcpl	0x00544e49
    84a0:	5341454c 	movtpl	r4, #5452	; 0x154c
    84a4:	575f3854 			; <UNDEFINED> instruction: 0x575f3854
    84a8:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    84ac:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    84b0:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    84b4:	5f544e45 	svcpl	0x00544e45
    84b8:	525f504d 	subspl	r5, pc, #77	; 0x4d
    84bc:	4c555345 	mrrcmi	3, 4, r5, r5, cr5	; <UNPREDICTABLE>
    84c0:	284b5f54 	stmdacs	fp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    84c4:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    84c8:	70282820 	eorvc	r2, r8, r0, lsr #16
    84cc:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    84d0:	706d5f3e 	rsbvc	r5, sp, lr, lsr pc
    84d4:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
    84d8:	6c757365 	ldclvs	3, cr7, [r5], #-404	; 0xfffffe6c
    84dc:	296b5f74 	stmdbcs	fp!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    84e0:	6c5f5f00 	mrrcvs	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    84e4:	5f676e6f 	svcpl	0x00676e6f
    84e8:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
    84ec:	745f656c 	ldrbvc	r6, [pc], #-1388	; 84f4 <__bss_end__+0x520c>
    84f0:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    84f4:	6f642067 	svcvs	0x00642067
    84f8:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
    84fc:	52545000 	subspl	r5, r4, #0
    8500:	46464944 	strbmi	r4, [r6], -r4, asr #18
    8504:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    8508:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    850c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    8510:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    8514:	545f3631 	ldrbpl	r3, [pc], #-1585	; 851c <__bss_end__+0x5234>
    8518:	5f455059 	svcpl	0x00455059
    851c:	6873205f 	ldmdavs	r3!, {r0, r1, r2, r3, r4, r6, sp}^
    8520:	2074726f 	rsbscs	r7, r4, pc, ror #4
    8524:	00746e69 	rsbseq	r6, r4, r9, ror #28
    8528:	6464615f 	strbtvs	r6, [r4], #-351	; 0xfffffea1
    852c:	41525f00 	cmpmi	r2, r0, lsl #30
    8530:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    8534:	4c554d5f 	mrrcmi	13, 5, r4, r5, cr15
    8538:	20305f54 	eorscs	r5, r0, r4, asr pc
    853c:	65783028 	ldrbvs	r3, [r8, #-40]!	; 0xffffffd8
    8540:	29643636 	stmdbcs	r4!, {r1, r2, r4, r5, r9, sl, ip, sp}^
    8544:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    8548:	5341465f 	movtpl	r4, #5727	; 0x165f
    854c:	5f363154 	svcpl	0x00363154
    8550:	204e494d 	subcs	r4, lr, sp, asr #18
    8554:	4e492d28 	cdpmi	13, 4, cr2, cr9, cr8, {1}
    8558:	41465f54 	cmpmi	r6, r4, asr pc
    855c:	36315453 			; <UNDEFINED> instruction: 0x36315453
    8560:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8564:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    8568:	5f5f0029 	svcpl	0x005f0029
    856c:	5f4c4244 	svcpl	0x004c4244
    8570:	5f58414d 	svcpl	0x0058414d
    8574:	2828205f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, sp}
    8578:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
    857c:	3129656c 			; <UNDEFINED> instruction: 0x3129656c
    8580:	3739372e 	ldrcc	r3, [r9, -lr, lsr #14]!
    8584:	31333936 	teqcc	r3, r6, lsr r9
    8588:	36383433 			; <UNDEFINED> instruction: 0x36383433
    858c:	35313332 	ldrcc	r3, [r1, #-818]!	; 0xfffffcce
    8590:	332b6537 			; <UNDEFINED> instruction: 0x332b6537
    8594:	294c3830 	stmdbcs	ip, {r4, r5, fp, ip, sp}^
    8598:	43535f00 	cmpmi	r3, #0, 30
    859c:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    85a0:	5f314c45 	svcpl	0x00314c45
    85a4:	43414349 	movtmi	r4, #4937	; 0x1349
    85a8:	415f4548 	cmpmi	pc, r8, asr #10
    85ac:	434f5353 	movtmi	r5, #62291	; 0xf353
    85b0:	36323120 	ldrtcc	r3, [r2], -r0, lsr #2
    85b4:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    85b8:	4152464c 	cmpmi	r2, ip, asr #12
    85bc:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    85c0:	5f544942 	svcpl	0x00544942
    85c4:	3336205f 	teqcc	r6, #95	; 0x5f
    85c8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    85cc:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    85d0:	5341485f 	movtpl	r4, #6239	; 0x185f
    85d4:	464e495f 			; <UNDEFINED> instruction: 0x464e495f
    85d8:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    85dc:	205f5f59 	subscs	r5, pc, r9, asr pc	; <UNPREDICTABLE>
    85e0:	49550031 	ldmdbmi	r5, {r0, r4, r5}^
    85e4:	414d544e 	cmpmi	sp, lr, asr #8
    85e8:	00435f58 	subeq	r5, r3, r8, asr pc
    85ec:	46735f5f 	uhsaxmi	r5, r3, pc	; <UNPREDICTABLE>
    85f0:	00454c49 	subeq	r4, r5, r9, asr #24
    85f4:	5f544e49 	svcpl	0x00544e49
    85f8:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    85fc:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 8540 <__bss_end__+0x5258>
    8600:	5f205841 	svcpl	0x00205841
    8604:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    8608:	5341465f 	movtpl	r4, #5727	; 0x165f
    860c:	5f363154 	svcpl	0x00363154
    8610:	5f58414d 	svcpl	0x0058414d
    8614:	5f5f005f 	svcpl	0x005f005f
    8618:	454d5241 	strbmi	r5, [sp, #-577]	; 0xfffffdbf
    861c:	205f5f4c 	subscs	r5, pc, ip, asr #30
    8620:	41550031 	cmpmi	r5, r1, lsr r0
    8624:	435f5452 	cmpmi	pc, #1375731712	; 0x52000000
    8628:	58525f52 	ldmdapl	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    862c:	20545352 	subscs	r5, r4, r2, asr r3
    8630:	30307830 	eorscc	r7, r0, r0, lsr r8
    8634:	30303030 	eorscc	r3, r0, r0, lsr r0
    8638:	5f003130 	svcpl	0x00003130
    863c:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    8640:	545f5841 	ldrbpl	r5, [pc], #-2113	; 8648 <__bss_end__+0x5360>
    8644:	4345445f 	movtmi	r4, #21599	; 0x545f
    8648:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    864c:	5f002044 	svcpl	0x00002044
    8650:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
    8654:	5f74616d 	svcpl	0x0074616d
    8658:	28677261 	stmdacs	r7!, {r0, r5, r6, r9, ip, sp, lr}^
    865c:	61746d66 	cmnvs	r4, r6, ror #26
    8660:	20296772 	eorcs	r6, r9, r2, ror r7
    8664:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    8668:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    866c:	5f657475 	svcpl	0x00657475
    8670:	5f28285f 	svcpl	0x0028285f
    8674:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
    8678:	5f74616d 	svcpl	0x0074616d
    867c:	5f677261 	svcpl	0x00677261
    8680:	6628205f 			; <UNDEFINED> instruction: 0x6628205f
    8684:	7261746d 	rsbvc	r7, r1, #1828716544	; 0x6d000000
    8688:	29292967 	stmdbcs	r9!, {r0, r1, r2, r5, r6, r8, fp, sp}
    868c:	635f5f00 	cmpvs	pc, #0, 30
    8690:	69706d6f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, sl, fp, sp, lr}^
    8694:	5f72656c 	svcpl	0x0072656c
    8698:	626d656d 	rsbvs	r6, sp, #457179136	; 0x1b400000
    869c:	29287261 	stmdbcs	r8!, {r0, r5, r6, r9, ip, sp, lr}
    86a0:	615f5f20 	cmpvs	pc, r0, lsr #30
    86a4:	5f206d73 	svcpl	0x00206d73
    86a8:	6c6f765f 	stclvs	6, cr7, [pc], #-380	; 8534 <__bss_end__+0x524c>
    86ac:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    86b0:	20222865 	eorcs	r2, r2, r5, ror #16
    86b4:	203a2022 	eorscs	r2, sl, r2, lsr #32
    86b8:	203a203a 	eorscs	r2, sl, sl, lsr r0
    86bc:	6d656d22 	stclvs	13, cr6, [r5, #-136]!	; 0xffffff78
    86c0:	2279726f 	rsbscs	r7, r9, #-268435450	; 0xf0000006
    86c4:	5f5f0029 	svcpl	0x005f0029
    86c8:	465f5148 	ldrbmi	r5, [pc], -r8, asr #2
    86cc:	5f544942 	svcpl	0x00544942
    86d0:	3531205f 	ldrcc	r2, [r1, #-95]!	; 0xffffffa1
    86d4:	4f4e4500 	svcmi	0x004e4500
    86d8:	20564544 	subscs	r4, r6, r4, asr #10
    86dc:	57003931 	smladxpl	r0, r1, r9, r3
    86e0:	204b4f5f 	subcs	r4, fp, pc, asr pc
    86e4:	5f520032 	svcpl	0x00520032
    86e8:	34204b4f 	strtcc	r4, [r0], #-2895	; 0xfffff4b1
    86ec:	645f5f00 	ldrbvs	r5, [pc], #-3840	; 86f4 <__bss_end__+0x540c>
    86f0:	74617461 	strbtvc	r7, [r1], #-1121	; 0xfffffb9f
    86f4:	5f657079 	svcpl	0x00657079
    86f8:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    86fc:	6761745f 			; <UNDEFINED> instruction: 0x6761745f
    8700:	6e696b28 	vmulvs.f64	d22, d9, d24
    8704:	79742c64 	ldmdbvc	r4!, {r2, r5, r6, sl, fp, sp}^
    8708:	20296570 	eorcs	r6, r9, r0, ror r5
    870c:	6c5f5f00 	mrrcvs	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    8710:	5f6b636f 	svcpl	0x006b636f
    8714:	5f797274 	svcpl	0x00797274
    8718:	75716361 	ldrbvc	r6, [r1, #-865]!	; 0xfffffc9f
    871c:	5f657269 	svcpl	0x00657269
    8720:	75636572 	strbvc	r6, [r3, #-1394]!	; 0xfffffa8e
    8724:	76697372 			; <UNDEFINED> instruction: 0x76697372
    8728:	6f6c2865 	svcvs	0x006c2865
    872c:	20296b63 	eorcs	r6, r9, r3, ror #22
    8730:	6f762828 	svcvs	0x00762828
    8734:	20296469 	eorcs	r6, r9, r9, ror #8
    8738:	5f002930 	svcpl	0x00002930
    873c:	5a49535f 	bpl	125d4c0 <_end+0x25d4c0>
    8740:	414d5f45 	cmpmi	sp, r5, asr #30
    8744:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    8748:	66667830 			; <UNDEFINED> instruction: 0x66667830
    874c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8750:	00556666 	subseq	r6, r5, r6, ror #12
    8754:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    8758:	41425f30 	cmpmi	r2, r0, lsr pc
    875c:	30204553 	eorcc	r4, r0, r3, asr r5
    8760:	30304578 	eorscc	r4, r0, r8, ror r5
    8764:	30303030 	eorscc	r3, r0, r0, lsr r0
    8768:	6d5f0030 	ldclvs	0, cr0, [pc, #-192]	; 86b0 <__bss_end__+0x53c8>
    876c:	74727362 	ldrbtvc	r7, [r2], #-866	; 0xfffffc9e
    8770:	7363776f 	cmnvc	r3, #29097984	; 0x1bc0000
    8774:	6174735f 	cmnvs	r4, pc, asr r3
    8778:	73006574 	movwvc	r6, #1396	; 0x574
    877c:	552f6372 	strpl	r6, [pc, #-882]!	; 8412 <__bss_end__+0x512a>
    8780:	5f545241 	svcpl	0x00545241
    8784:	632e5748 			; <UNDEFINED> instruction: 0x632e5748
    8788:	52415500 	subpl	r5, r1, #0, 10
    878c:	58525f54 	ldmdapl	r2, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    8790:	54554f54 	ldrbpl	r4, [r5], #-3924	; 0xfffff0ac
    8794:	5349445f 	movtpl	r4, #37983	; 0x945f
    8798:	454c4241 	strbmi	r4, [ip, #-577]	; 0xfffffdbf
    879c:	30783020 	rsbscc	r3, r8, r0, lsr #32
    87a0:	30303030 	eorscc	r3, r0, r0, lsr r0
    87a4:	00303030 	eorseq	r3, r0, r0, lsr r0
    87a8:	4f4c475f 	svcmi	0x004c475f
    87ac:	5f4c4142 	svcpl	0x004c4142
    87b0:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    87b4:	675f2054 			; <UNDEFINED> instruction: 0x675f2054
    87b8:	61626f6c 	cmnvs	r2, ip, ror #30
    87bc:	6d695f6c 	stclvs	15, cr5, [r9, #-432]!	; 0xfffffe50
    87c0:	65727570 	ldrbvs	r7, [r2, #-1392]!	; 0xfffffa90
    87c4:	7274705f 	rsbsvc	r7, r4, #95	; 0x5f
    87c8:	4f4e4500 	svcmi	0x004e4500
    87cc:	204b434c 	subcs	r4, fp, ip, asr #6
    87d0:	5f003634 	svcpl	0x00003634
    87d4:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    87d8:	414d5f47 	cmpmi	sp, r7, asr #30
    87dc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    87e0:	66377830 			; <UNDEFINED> instruction: 0x66377830
    87e4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    87e8:	004c6666 	subeq	r6, ip, r6, ror #12
    87ec:	524c4145 	subpl	r4, ip, #1073741841	; 0x40000011
    87f0:	59444145 	stmdbpl	r4, {r0, r2, r6, r8, lr}^
    87f4:	30323120 	eorscc	r3, r2, r0, lsr #2
    87f8:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 8800 <__bss_end__+0x5518>
    87fc:	485f4c42 	ldmdami	pc, {r1, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    8800:	495f5341 	ldmdbmi	pc, {r0, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    8804:	4e49464e 	cdpmi	6, 4, cr4, cr9, cr14, {2}
    8808:	5f595449 	svcpl	0x00595449
    880c:	0031205f 	eorseq	r2, r1, pc, asr r0
    8810:	5f43535f 	svcpl	0x0043535f
    8814:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    8818:	535f4441 	cmppl	pc, #1090519040	; 0x41000000
    881c:	5f454641 	svcpl	0x00454641
    8820:	434e5546 	movtmi	r5, #58694	; 0xe546
    8824:	4e4f4954 			; <UNDEFINED> instruction: 0x4e4f4954
    8828:	39342053 	ldmdbcc	r4!, {r0, r1, r4, r6, sp}
    882c:	4f4e4500 	svcmi	0x004e4500
    8830:	4e4f4354 	mcrmi	3, 2, r4, cr15, cr4, {2}
    8834:	3231204e 	eorscc	r2, r1, #78	; 0x4e
    8838:	5f5f0038 	svcpl	0x005f0038
    883c:	6e6e6f6e 	cdpvs	15, 6, cr6, cr14, cr14, {3}
    8840:	286c6c75 	stmdacs	ip!, {r0, r2, r4, r5, r6, sl, fp, sp, lr}^
    8844:	5f202978 	svcpl	0x00202978
    8848:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    884c:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    8850:	5f5f6574 	svcpl	0x005f6574
    8854:	5f5f2828 	svcpl	0x005f2828
    8858:	6e6e6f6e 	cdpvs	15, 6, cr6, cr14, cr14, {3}
    885c:	5f6c6c75 	svcpl	0x006c6c75
    8860:	2978205f 	ldmdbcs	r8!, {r0, r1, r2, r3, r4, r6, sp}^
    8864:	525f0029 	subspl	r0, pc, #41	; 0x29
    8868:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    886c:	44415f38 	strbmi	r5, [r1], #-3896	; 0xfffff0c8
    8870:	30282044 	eorcc	r2, r8, r4, asr #32
    8874:	30303078 	eorscc	r3, r0, r8, ror r0
    8878:	49002962 	stmdbmi	r0, {r1, r5, r6, r8, fp, sp}
    887c:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    8880:	31545341 	cmpcc	r4, r1, asr #6
    8884:	494d5f36 	stmdbmi	sp, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    8888:	4953004e 	ldmdbmi	r3, {r1, r2, r3, r6}^
    888c:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    8890:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    8894:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    8898:	535f5f20 	cmppl	pc, #32, 30	; 0x80
    889c:	415f4749 	cmpmi	pc, r9, asr #14
    88a0:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    88a4:	494d5f43 	stmdbmi	sp, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    88a8:	005f5f4e 	subseq	r5, pc, lr, asr #30
    88ac:	5f544e49 	svcpl	0x00544e49
    88b0:	5341454c 	movtpl	r4, #5452	; 0x154c
    88b4:	5f343654 	svcpl	0x00343654
    88b8:	004e494d 	subeq	r4, lr, sp, asr #18
    88bc:	33544e49 	cmpcc	r4, #1168	; 0x490
    88c0:	494d5f32 	stmdbmi	sp, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    88c4:	4955004e 	ldmdbmi	r5, {r1, r2, r3, r6}^
    88c8:	414d544e 	cmpmi	sp, lr, asr #8
    88cc:	414d5f58 	cmpmi	sp, r8, asr pc
    88d0:	5f5f2058 	svcpl	0x005f2058
    88d4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    88d8:	5f58414d 	svcpl	0x0058414d
    88dc:	5f58414d 	svcpl	0x0058414d
    88e0:	535f005f 	cmppl	pc, #95	; 0x5f
    88e4:	454c5f43 	strbmi	r5, [ip, #-3907]	; 0xfffff0bd
    88e8:	324c4556 	subcc	r4, ip, #360710144	; 0x15800000
    88ec:	4341435f 	movtmi	r4, #4959	; 0x135f
    88f0:	535f4548 	cmppl	pc, #72, 10	; 0x12000000
    88f4:	20455a49 	subcs	r5, r5, r9, asr #20
    88f8:	00313331 	eorseq	r3, r1, r1, lsr r3
    88fc:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    8900:	44454d5f 	strbmi	r4, [r5], #-3423	; 0xfffff2a1
    8904:	52534d45 	subspl	r4, r3, #4416	; 0x1140
    8908:	5253445f 	subspl	r4, r3, #1593835520	; 0x5f000000
    890c:	78302058 	ldmdavc	r0!, {r3, r4, r6, sp}
    8910:	30303030 	eorscc	r3, r0, r0, lsr r0
    8914:	32303030 	eorscc	r3, r0, #48	; 0x30
    8918:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    891c:	4152464c 	cmpmi	r2, ip, asr #12
    8920:	455f5443 	ldrbmi	r5, [pc, #-1091]	; 84e5 <__bss_end__+0x51fd>
    8924:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    8928:	5f5f4e4f 	svcpl	0x005f4e4f
    892c:	31783020 	cmncc	r8, r0, lsr #32
    8930:	33362d50 	teqcc	r6, #80, 26	; 0x1400
    8934:	00524c4c 	subseq	r4, r2, ip, asr #24
    8938:	5f43505f 	svcpl	0x0043505f
    893c:	574f4843 	strbpl	r4, [pc, -r3, asr #16]
    8940:	45525f4e 	ldrbmi	r5, [r2, #-3918]	; 0xfffff0b2
    8944:	49525453 	ldmdbmi	r2, {r0, r1, r4, r6, sl, ip, lr}^
    8948:	44455443 	strbmi	r5, [r5], #-1091	; 0xfffffbbd
    894c:	5f003620 	svcpl	0x00003620
    8950:	5246535f 	subpl	r5, r6, #2080374785	; 0x7c000001
    8954:	5f544341 	svcpl	0x00544341
    8958:	5f58414d 	svcpl	0x0058414d
    895c:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    8960:	2d504637 	ldclcs	6, cr4, [r0, #-220]	; 0xffffff24
    8964:	00524837 	subseq	r4, r2, r7, lsr r8
    8968:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    896c:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    8970:	4e414d5f 	mcrmi	13, 2, r4, cr1, cr15, {2}
    8974:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    8978:	205f5f47 	subscs	r5, pc, r7, asr #30
    897c:	5f003335 	svcpl	0x00003335
    8980:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    8984:	4d53415f 	ldfmie	f4, [r3, #-380]	; 0xfffffe84
    8988:	4e59535f 	mrcmi	3, 2, r5, cr9, cr15, {2}
    898c:	5f584154 	svcpl	0x00584154
    8990:	46494e55 			; <UNDEFINED> instruction: 0x46494e55
    8994:	5f444549 	svcpl	0x00444549
    8998:	495f005f 	ldmdbmi	pc, {r0, r1, r2, r3, r4, r6}^	; <UNPREDICTABLE>
    899c:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    89a0:	445f545f 	ldrbmi	r5, [pc], #-1119	; 89a8 <__bss_end__+0x56c0>
    89a4:	414c4345 	cmpmi	ip, r5, asr #6
    89a8:	20444552 	subcs	r4, r4, r2, asr r5
    89ac:	43535f00 	cmpmi	r3, #0, 30
    89b0:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    89b4:	5f314c45 	svcpl	0x00314c45
    89b8:	43414344 	movtmi	r4, #4932	; 0x1344
    89bc:	415f4548 	cmpmi	pc, r8, asr #10
    89c0:	434f5353 	movtmi	r5, #62291	; 0xf353
    89c4:	39323120 	ldmdbcc	r2!, {r5, r8, ip, sp}
    89c8:	4e495700 	cdpmi	7, 4, cr5, cr9, cr0, {0}
    89cc:	414d5f54 	cmpmi	sp, r4, asr pc
    89d0:	535f0058 	cmppl	pc, #88	; 0x58
    89d4:	5f5f5359 	svcpl	0x005f5359
    89d8:	52485450 	subpl	r5, r8, #80, 8	; 0x50000000
    89dc:	54444145 	strbpl	r4, [r4], #-325	; 0xfffffebb
    89e0:	53455059 	movtpl	r5, #20569	; 0x5059
    89e4:	205f485f 	subscs	r4, pc, pc, asr r8	; <UNPREDICTABLE>
    89e8:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    89ec:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    89f0:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    89f4:	00632029 	rsbeq	r2, r3, r9, lsr #32
    89f8:	5f43535f 	svcpl	0x0043535f
    89fc:	4c5f3756 	mrrcmi	7, 5, r3, pc, cr6	; <UNPREDICTABLE>
    8a00:	47494250 	smlsldmi	r4, r9, r0, r2
    8a04:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    8a08:	20474942 	subcs	r4, r7, r2, asr #18
    8a0c:	5f003539 	svcpl	0x00003539
    8a10:	5f41445f 	svcpl	0x0041445f
    8a14:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    8a18:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    8a1c:	5f5f0032 	svcpl	0x005f0032
    8a20:	66727473 			; <UNDEFINED> instruction: 0x66727473
    8a24:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    8a28:	656b696c 	strbvs	r6, [fp, #-2412]!	; 0xfffff694
    8a2c:	746d6628 	strbtvc	r6, [sp], #-1576	; 0xfffff9d8
    8a30:	2c677261 	sfmcs	f7, 2, [r7], #-388	; 0xfffffe7c
    8a34:	73726966 	cmnvc	r2, #1671168	; 0x198000
    8a38:	72617674 	rsbvc	r7, r1, #116, 12	; 0x7400000
    8a3c:	29677261 	stmdbcs	r7!, {r0, r5, r6, r9, ip, sp, lr}^
    8a40:	615f5f20 	cmpvs	pc, r0, lsr #30
    8a44:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    8a48:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    8a4c:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    8a50:	6f665f5f 	svcvs	0x00665f5f
    8a54:	74616d72 	strbtvc	r6, [r1], #-3442	; 0xfffff28e
    8a58:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    8a5c:	74735f5f 	ldrbtvc	r5, [r3], #-3935	; 0xfffff0a1
    8a60:	69746672 	ldmdbvs	r4!, {r1, r4, r5, r6, r9, sl, sp, lr}^
    8a64:	5f5f656d 	svcpl	0x005f656d
    8a68:	6d66202c 	stclvs	0, cr2, [r6, #-176]!	; 0xffffff50
    8a6c:	67726174 			; <UNDEFINED> instruction: 0x67726174
    8a70:	6966202c 	stmdbvs	r6!, {r2, r3, r5, sp}^
    8a74:	76747372 			; <UNDEFINED> instruction: 0x76747372
    8a78:	72617261 	rsbvc	r7, r1, #268435462	; 0x10000006
    8a7c:	29292967 	stmdbcs	r9!, {r0, r1, r2, r5, r6, r8, fp, sp}
    8a80:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 8a88 <__bss_end__+0x57a0>
    8a84:	73695f6d 	cmnvc	r9, #436	; 0x1b4
    8a88:	00747364 	rsbseq	r7, r4, r4, ror #6
    8a8c:	5f43535f 	svcpl	0x0043535f
    8a90:	4f4e4f4d 	svcmi	0x004e4f4d
    8a94:	494e4f54 	stmdbmi	lr, {r2, r4, r6, r8, r9, sl, fp, lr}^
    8a98:	4c435f43 	mcrrmi	15, 4, r5, r3, cr3
    8a9c:	204b434f 	subcs	r4, fp, pc, asr #6
    8aa0:	5f003936 	svcpl	0x00003936
    8aa4:	5145445f 	cmppl	r5, pc, asr r4
    8aa8:	494c4155 	stmdbmi	ip, {r0, r2, r4, r6, r8, lr}^
    8aac:	74285946 	strtvc	r5, [r8], #-2374	; 0xfffff6ba
    8ab0:	2c657079 	stclcs	0, cr7, [r5], #-484	; 0xfffffe1c
    8ab4:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    8ab8:	74282820 	strtvc	r2, [r8], #-2080	; 0xfffff7e0
    8abc:	29657079 	stmdbcs	r5!, {r0, r3, r4, r5, r6, ip, sp, lr}^
    8ac0:	755f5f28 	ldrbvc	r5, [pc, #-3880]	; 7ba0 <__bss_end__+0x48b8>
    8ac4:	70746e69 	rsbsvc	r6, r4, r9, ror #28
    8ac8:	745f7274 	ldrbvc	r7, [pc], #-628	; 8ad0 <__bss_end__+0x57e8>
    8acc:	6f632829 	svcvs	0x00632829
    8ad0:	2074736e 	rsbscs	r7, r4, lr, ror #6
    8ad4:	616c6f76 	smcvs	50934	; 0xc6f6
    8ad8:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    8adc:	696f7620 	stmdbvs	pc!, {r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    8ae0:	292a2064 	stmdbcs	sl!, {r2, r5, r6, sp}
    8ae4:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    8ae8:	5f002929 	svcpl	0x00002929
    8aec:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
    8af0:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    8af4:	41435f33 	cmpmi	r3, r3, lsr pc
    8af8:	5f454843 	svcpl	0x00454843
    8afc:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    8b00:	34333120 	ldrtcc	r3, [r3], #-288	; 0xfffffee0
    8b04:	415f5f00 	cmpmi	pc, r0, lsl #30
    8b08:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    8b0c:	43415f43 	movtmi	r5, #8003	; 0x1f43
    8b10:	45525f51 	ldrbmi	r5, [r2, #-3921]	; 0xfffff0af
    8b14:	0034204c 	eorseq	r2, r4, ip, asr #32
    8b18:	5f43535f 	svcpl	0x0043535f
    8b1c:	4e45504f 	cdpmi	0, 4, cr5, cr5, cr15, {2}
    8b20:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8b24:	5f003420 	svcpl	0x00003420
    8b28:	5f51485f 	svcpl	0x0051485f
    8b2c:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    8b30:	30205f5f 	eorcc	r5, r0, pc, asr pc
    8b34:	705f5f00 	subsvc	r5, pc, r0, lsl #30
    8b38:	656b6361 	strbvs	r6, [fp, #-865]!	; 0xfffffc9f
    8b3c:	5f5f2064 	svcpl	0x005f2064
    8b40:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    8b44:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    8b48:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    8b4c:	705f5f28 	subsvc	r5, pc, r8, lsr #30
    8b50:	656b6361 	strbvs	r6, [fp, #-865]!	; 0xfffffc9f
    8b54:	295f5f64 	ldmdbcs	pc, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    8b58:	5f5f0029 	svcpl	0x005f0029
    8b5c:	5f4c4244 	svcpl	0x004c4244
    8b60:	5f4e494d 	svcpl	0x004e494d
    8b64:	455f3031 	ldrbmi	r3, [pc, #-49]	; 8b3b <__bss_end__+0x5853>
    8b68:	5f5f5058 	svcpl	0x005f5058
    8b6c:	332d2820 			; <UNDEFINED> instruction: 0x332d2820
    8b70:	00293730 	eoreq	r3, r9, r0, lsr r7
    8b74:	4d495445 	cfstrdmi	mvd5, [r9, #-276]	; 0xfffffeec
    8b78:	554f4445 	strbpl	r4, [pc, #-1093]	; 873b <__bss_end__+0x5453>
    8b7c:	31312054 	teqcc	r1, r4, asr r0
    8b80:	535f0036 	cmppl	pc, #54	; 0x36
    8b84:	59535f43 	ldmdbpl	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    8b88:	5248434e 	subpl	r4, r8, #939524097	; 0x38000001
    8b8c:	5a494e4f 	bpl	125c4d0 <_end+0x25c4d0>
    8b90:	495f4445 	ldmdbmi	pc, {r0, r2, r6, sl, lr}^	; <UNPREDICTABLE>
    8b94:	3233204f 	eorscc	r2, r3, #79	; 0x4f
    8b98:	43505f00 	cmpmi	r0, #0, 30
    8b9c:	4345525f 	movtmi	r5, #21087	; 0x525f
    8ba0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8ba4:	4546585f 	strbmi	r5, [r6, #-2143]	; 0xfffff7a1
    8ba8:	49535f52 	ldmdbmi	r3, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    8bac:	3120455a 			; <UNDEFINED> instruction: 0x3120455a
    8bb0:	5f5f0037 	svcpl	0x005f0037
    8bb4:	65737361 	ldrbvs	r7, [r3, #-865]!	; 0xfffffc9f
    8bb8:	5f737472 	svcpl	0x00737472
    8bbc:	72616873 	rsbvc	r6, r1, #7536640	; 0x730000
    8bc0:	2e286465 	cdpcs	4, 2, cr6, cr8, cr5, {3}
    8bc4:	20292e2e 	eorcs	r2, r9, lr, lsr #28
    8bc8:	6f6c5f5f 	svcvs	0x006c5f5f
    8bcc:	615f6b63 	cmpvs	pc, r3, ror #22
    8bd0:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 8bd8 <__bss_end__+0x58f0>
    8bd4:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    8bd8:	65737361 	ldrbvs	r7, [r3, #-865]!	; 0xfffffc9f
    8bdc:	735f7472 	cmpvc	pc, #1912602624	; 0x72000000
    8be0:	65726168 	ldrbvs	r6, [r2, #-360]!	; 0xfffffe98
    8be4:	6f6c5f64 	svcvs	0x006c5f64
    8be8:	5f286b63 	svcpl	0x00286b63
    8bec:	5f41565f 	svcpl	0x0041565f
    8bf0:	53475241 	movtpl	r5, #29249	; 0x7241
    8bf4:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    8bf8:	435f5f00 	cmpmi	pc, #0, 30
    8bfc:	55535f43 	ldrbpl	r5, [r3, #-3907]	; 0xfffff0bd
    8c00:	524f5050 	subpl	r5, pc, #80	; 0x50
    8c04:	5f5f5354 	svcpl	0x005f5354
    8c08:	4c4e495f 	mcrrmi	9, 5, r4, lr, cr15	; <UNPREDICTABLE>
    8c0c:	5f454e49 	svcpl	0x00454e49
    8c10:	0031205f 	eorseq	r2, r1, pc, asr r0
    8c14:	52415570 	subpl	r5, r1, #112, 10	; 0x1c000000
    8c18:	41550054 	cmpmi	r5, r4, asr r0
    8c1c:	425f5452 	subsmi	r5, pc, #1375731712	; 0x52000000
    8c20:	44445541 	strbmi	r5, [r4], #-1345	; 0xfffffabf
    8c24:	315f5649 	cmpcc	pc, r9, asr #12
    8c28:	30323531 	eorscc	r3, r2, r1, lsr r5
    8c2c:	00362030 	eorseq	r2, r6, r0, lsr r0
    8c30:	4e414e5f 	mcrmi	14, 2, r4, cr1, cr15, {2}
    8c34:	4f465f4f 	svcmi	0x00465f4f
    8c38:	54414d52 	strbpl	r4, [r1], #-3410	; 0xfffff2ae
    8c3c:	5f444554 	svcpl	0x00444554
    8c40:	31204f49 			; <UNDEFINED> instruction: 0x31204f49
    8c44:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 8c4c <__bss_end__+0x5964>
    8c48:	696d5f6d 	stmdbvs	sp!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    8c4c:	525f006e 	subspl	r0, pc, #110	; 0x6e
    8c50:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    8c54:	4353415f 	cmpmi	r3, #-1073741801	; 0xc0000017
    8c58:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    8c5c:	5a49535f 	bpl	125d9e0 <_end+0x25d9e0>
    8c60:	36322045 	ldrtcc	r2, [r2], -r5, asr #32
    8c64:	47495300 	strbmi	r5, [r9, -r0, lsl #6]
    8c68:	4f54415f 	svcmi	0x0054415f
    8c6c:	5f43494d 	svcpl	0x0043494d
    8c70:	2058414d 	subscs	r4, r8, sp, asr #2
    8c74:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    8c78:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    8c7c:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    8c80:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8c84:	5f005f5f 	svcpl	0x00005f5f
    8c88:	64746567 	ldrbtvs	r6, [r4], #-1383	; 0xfffffa99
    8c8c:	5f657461 	svcpl	0x00657461
    8c90:	00727265 	rsbseq	r7, r2, r5, ror #4
    8c94:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    8c98:	5f464649 	svcpl	0x00464649
    8c9c:	204e494d 	subcs	r4, lr, sp, asr #18
    8ca0:	54502d28 	ldrbpl	r2, [r0], #-3368	; 0xfffff2d8
    8ca4:	46494452 			; <UNDEFINED> instruction: 0x46494452
    8ca8:	414d5f46 	cmpmi	sp, r6, asr #30
    8cac:	202d2058 	eorcs	r2, sp, r8, asr r0
    8cb0:	5f002931 	svcpl	0x00002931
    8cb4:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    8cb8:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    8cbc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8cc0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    8cc4:	66666678 			; <UNDEFINED> instruction: 0x66666678
    8cc8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8ccc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8cd0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8cd4:	4c4c5566 	cfstr64mi	mvdx5, [ip], {102}	; 0x66
    8cd8:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 8ce0 <__bss_end__+0x59f8>
    8cdc:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 8bdc <__bss_end__+0x58f4>
    8ce0:	5f544e41 	svcpl	0x00544e41
    8ce4:	5f474944 	svcpl	0x00474944
    8ce8:	3335205f 	teqcc	r5, #95	; 0x5f
    8cec:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 7df4 <__bss_end__+0x4b0c>
    8cf0:	4152464c 	cmpmi	r2, ip, asr #12
    8cf4:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    8cf8:	5f544942 	svcpl	0x00544942
    8cfc:	0030205f 	eorseq	r2, r0, pc, asr r0
    8d00:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    8d04:	5f383444 	svcpl	0x00383444
    8d08:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
    8d0c:	2820325f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r9, ip, sp}
    8d10:	32317830 	eorscc	r7, r1, #48, 16	; 0x300000
    8d14:	00293433 	eoreq	r3, r9, r3, lsr r4
    8d18:	59535f5f 	ldmdbpl	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    8d1c:	4f4c5f53 	svcmi	0x004c5f53
    8d20:	485f4b43 	ldmdami	pc, {r0, r1, r6, r8, r9, fp, lr}^	; <UNPREDICTABLE>
    8d24:	00205f5f 	eoreq	r5, r0, pc, asr pc
    8d28:	5f43535f 	svcpl	0x0043535f
    8d2c:	525f5353 	subspl	r5, pc, #1275068417	; 0x4c000001
    8d30:	5f4c5045 	svcpl	0x004c5045
    8d34:	2058414d 	subscs	r4, r8, sp, asr #2
    8d38:	5f003837 	svcpl	0x00003837
    8d3c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    8d40:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8d44:	30205f5f 	eorcc	r5, r0, pc, asr pc
    8d48:	66663778 			; <UNDEFINED> instruction: 0x66663778
    8d4c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8d50:	5f5f0066 	svcpl	0x005f0066
    8d54:	5f544e49 	svcpl	0x00544e49
    8d58:	5341454c 	movtpl	r4, #5452	; 0x154c
    8d5c:	5f343654 	svcpl	0x00343654
    8d60:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    8d64:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    8d68:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    8d6c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    8d70:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    8d74:	52415500 	subpl	r5, r1, #0, 10
    8d78:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    8d7c:	4f58525f 	svcmi	0x0058525f
    8d80:	30205256 	eorcc	r5, r0, r6, asr r2
    8d84:	30303078 	eorscc	r3, r0, r8, ror r0
    8d88:	30303030 	eorscc	r3, r0, r0, lsr r0
    8d8c:	5f5f0031 	svcpl	0x005f0031
    8d90:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    8d94:	545f3436 	ldrbpl	r3, [pc], #-1078	; 8d9c <__bss_end__+0x5ab4>
    8d98:	5f455059 	svcpl	0x00455059
    8d9c:	6f6c205f 	svcvs	0x006c205f
    8da0:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
    8da4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    8da8:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    8dac:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    8db0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    8db4:	535f5f00 	cmppl	pc, #0, 30
    8db8:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    8dbc:	42465f4d 	submi	r5, r6, #308	; 0x134
    8dc0:	5f5f5449 	svcpl	0x005f5449
    8dc4:	55003720 	strpl	r3, [r0, #-1824]	; 0xfffff8e0
    8dc8:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    8dcc:	414d5f34 	cmpmi	sp, r4, lsr pc
    8dd0:	415f0058 	cmpmi	pc, r8, asr r0	; <UNPREDICTABLE>
    8dd4:	49584554 	ldmdbmi	r8, {r2, r4, r6, r8, sl, lr}^
    8dd8:	49535f54 	ldmdbmi	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    8ddc:	3320455a 			; <UNDEFINED> instruction: 0x3320455a
    8de0:	495f0032 	ldmdbmi	pc, {r1, r4, r5}^	; <UNPREDICTABLE>
    8de4:	4642464f 	strbmi	r4, [r2], -pc, asr #12
    8de8:	5f003020 	svcpl	0x00003020
    8dec:	6567735f 	strbvs	r7, [r7, #-863]!	; 0xfffffca1
    8df0:	725f6374 	subsvc	r6, pc, #116, 6	; 0xd0000001
    8df4:	705f5f28 	subsvc	r5, pc, r8, lsr #30
    8df8:	5f2c7274 	svcpl	0x002c7274
    8dfc:	2029705f 	eorcs	r7, r9, pc, asr r0
    8e00:	67735f5f 			; <UNDEFINED> instruction: 0x67735f5f
    8e04:	5f637465 	svcpl	0x00637465
    8e08:	5f776172 	svcpl	0x00776172
    8e0c:	5f5f2872 	svcpl	0x005f2872
    8e10:	2c727470 	cfldrdcs	mvd7, [r2], #-448	; 0xfffffe40
    8e14:	705f5f20 	subsvc	r5, pc, r0, lsr #30
    8e18:	55730029 	ldrbpl	r0, [r3, #-41]!	; 0xffffffd7
    8e1c:	6e726573 	mrcvs	5, 3, r6, cr2, cr3, {3}
    8e20:	00656d61 	rsbeq	r6, r5, r1, ror #26
    8e24:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    8e28:	5f28206e 	svcpl	0x0028206e
    8e2c:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    8e30:	5f3e2d54 	svcpl	0x003e2d54
    8e34:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    8e38:	7300296e 	movwvc	r2, #2414	; 0x96e
    8e3c:	72656474 	rsbvc	r6, r5, #116, 8	; 0x74000000
    8e40:	5f282072 	svcpl	0x00282072
    8e44:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    8e48:	5f3e2d54 	svcpl	0x003e2d54
    8e4c:	65647473 	strbvs	r7, [r4, #-1139]!	; 0xfffffb8d
    8e50:	00297272 	eoreq	r7, r9, r2, ror r2
    8e54:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
    8e58:	65726177 	ldrbvs	r6, [r2, #-375]!	; 0xfffffe89
    8e5c:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
    8e60:	6f685f74 	svcvs	0x00685f74
    8e64:	5f006b6f 	svcpl	0x00006b6f
    8e68:	5453535f 	ldrbpl	r5, [r3], #-863	; 0xfffffca1
    8e6c:	78302052 	ldmdavc	r0!, {r1, r4, r6, sp}
    8e70:	30303230 	eorscc	r3, r0, r0, lsr r2
    8e74:	535f5f00 	cmppl	pc, #0, 30
    8e78:	30204452 	eorcc	r4, r0, r2, asr r4
    8e7c:	30303078 	eorscc	r3, r0, r8, ror r0
    8e80:	5f4c0034 	svcpl	0x004c0034
    8e84:	6e706d74 	mrcvs	13, 3, r6, cr0, cr4, {3}
    8e88:	46206d61 	strtmi	r6, [r0], -r1, ror #26
    8e8c:	4e454c49 	cdpmi	12, 4, cr4, cr5, cr9, {2}
    8e90:	5f454d41 	svcpl	0x00454d41
    8e94:	0058414d 	subseq	r4, r8, sp, asr #2
    8e98:	656c6966 	strbvs	r6, [ip, #-2406]!	; 0xfffff69a
    8e9c:	48006f6e 	stmdami	r0, {r1, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}
    8ea0:	695f4c41 	ldmdbvs	pc, {r0, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    8ea4:	0074696e 	rsbseq	r6, r4, lr, ror #18
    8ea8:	4d535f5f 	ldclmi	15, cr5, [r3, #-380]	; 0xfffffe84
    8eac:	30204642 	eorcc	r4, r0, r2, asr #12
    8eb0:	38303078 	ldmdacc	r0!, {r3, r4, r5, r6, ip, sp}
    8eb4:	61680030 	cmnvs	r8, r0, lsr r0
    8eb8:	61776472 	cmnvs	r7, r2, ror r4
    8ebc:	695f6572 	ldmdbvs	pc, {r1, r4, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
    8ec0:	5f74696e 	svcpl	0x0074696e
    8ec4:	6b6f6f68 	blvs	1be4c6c <_end+0xbe4c6c>
    8ec8:	735f5f00 	cmpvc	pc, #0, 30
    8ecc:	61656c63 	cmnvs	r5, r3, ror #24
    8ed0:	72726572 	rsbsvc	r6, r2, #478150656	; 0x1c800000
    8ed4:	20297028 	eorcs	r7, r9, r8, lsr #32
    8ed8:	6f762828 	svcvs	0x00762828
    8edc:	28296469 	stmdacs	r9!, {r0, r3, r5, r6, sl, sp, lr}
    8ee0:	2d297028 	stccs	0, cr7, [r9, #-160]!	; 0xffffff60
    8ee4:	6c665f3e 	stclvs	15, cr5, [r6], #-248	; 0xffffff08
    8ee8:	20736761 	rsbscs	r6, r3, r1, ror #14
    8eec:	7e203d26 	cdpvc	13, 2, cr3, cr0, cr6, {1}
    8ef0:	535f5f28 	cmppl	pc, #40, 30	; 0xa0
    8ef4:	7c525245 	lfmvc	f5, 2, [r2], {69}	; 0x45
    8ef8:	45535f5f 	ldrbmi	r5, [r3, #-3935]	; 0xfffff0a1
    8efc:	2929464f 	stmdbcs	r9!, {r0, r1, r2, r3, r6, r9, sl, lr}
    8f00:	665f0029 	ldrbvs	r0, [pc], -r9, lsr #32
    8f04:	6b636f6c 	blvs	18e4cbc <_end+0x8e4cbc>
    8f08:	656c6966 	strbvs	r6, [ip, #-2406]!	; 0xfffff69a
    8f0c:	29706628 	ldmdbcs	r0!, {r3, r5, r9, sl, sp, lr}^
    8f10:	28282820 	stmdacs	r8!, {r5, fp, sp}
    8f14:	2d297066 	stccs	0, cr7, [r9, #-408]!	; 0xfffffe68
    8f18:	6c665f3e 	stclvs	15, cr5, [r6], #-248	; 0xffffff08
    8f1c:	20736761 	rsbscs	r6, r3, r1, ror #14
    8f20:	5f5f2026 	svcpl	0x005f2026
    8f24:	52545353 	subspl	r5, r4, #1275068417	; 0x4c000001
    8f28:	203f2029 	eorscs	r2, pc, r9, lsr #32
    8f2c:	203a2030 	eorscs	r2, sl, r0, lsr r0
    8f30:	6f6c5f5f 	svcvs	0x006c5f5f
    8f34:	615f6b63 	cmpvs	pc, r3, ror #22
    8f38:	69757163 	ldmdbvs	r5!, {r0, r1, r5, r6, r8, ip, sp, lr}^
    8f3c:	725f6572 	subsvc	r6, pc, #478150656	; 0x1c800000
    8f40:	72756365 	rsbsvc	r6, r5, #-1811939327	; 0x94000001
    8f44:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    8f48:	70662828 	rsbvc	r2, r6, r8, lsr #16
    8f4c:	5f3e2d29 	svcpl	0x003e2d29
    8f50:	6b636f6c 	blvs	18e4d08 <_end+0x8e4d08>
    8f54:	5f002929 	svcpl	0x00002929
    8f58:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    8f5c:	5f5f5f64 	svcpl	0x005f5f64
    8f60:	6c5f6176 	ldfvse	f6, [pc], {118}	; 0x76
    8f64:	20747369 	rsbscs	r7, r4, r9, ror #6
    8f68:	735f5f00 	cmpvc	pc, #0, 30
    8f6c:	63746567 	cmnvs	r4, #432013312	; 0x19c00000
    8f70:	7761725f 			; <UNDEFINED> instruction: 0x7761725f
    8f74:	5f28725f 	svcpl	0x0028725f
    8f78:	7274705f 	rsbsvc	r7, r4, #95	; 0x5f
    8f7c:	665f5f2c 	ldrbvs	r5, [pc], -ip, lsr #30
    8f80:	2d282029 	stccs	0, cr2, [r8, #-164]!	; 0xffffff5c
    8f84:	5f5f282d 	svcpl	0x005f282d
    8f88:	3e2d2966 	vnmulcc.f16	s4, s26, s13	; <UNPREDICTABLE>
    8f8c:	3c20725f 	sfmcc	f7, 4, [r0], #-380	; 0xfffffe84
    8f90:	3f203020 	svccc	0x00203020
    8f94:	735f5f20 	cmpvc	pc, #32, 30	; 0x80
    8f98:	74656772 	strbtvc	r6, [r5], #-1906	; 0xfffff88e
    8f9c:	5f28725f 	svcpl	0x0028725f
    8fa0:	7274705f 	rsbsvc	r7, r4, #95	; 0x5f
    8fa4:	5f5f202c 	svcpl	0x005f202c
    8fa8:	3a202966 	bcc	813548 <heap_size+0x7f3548>
    8fac:	6e692820 	cdpvs	8, 6, cr2, cr9, cr0, {1}
    8fb0:	2a282974 	bcs	a13588 <heap_size+0x9f3588>
    8fb4:	665f5f28 	ldrbvs	r5, [pc], -r8, lsr #30
    8fb8:	5f3e2d29 	svcpl	0x003e2d29
    8fbc:	292b2b70 	stmdbcs	fp!, {r4, r5, r6, r8, r9, fp, sp}
    8fc0:	665f0029 	ldrbvs	r0, [pc], -r9, lsr #32
    8fc4:	6f6c6e75 	svcvs	0x006c6e75
    8fc8:	69666b63 	stmdbvs	r6!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}^
    8fcc:	6628656c 	strtvs	r6, [r8], -ip, ror #10
    8fd0:	28202970 	stmdacs	r0!, {r4, r5, r6, r8, fp, sp}
    8fd4:	70662828 	rsbvc	r2, r6, r8, lsr #16
    8fd8:	5f3e2d29 	svcpl	0x003e2d29
    8fdc:	67616c66 	strbvs	r6, [r1, -r6, ror #24]!
    8fe0:	20262073 	eorcs	r2, r6, r3, ror r0
    8fe4:	53535f5f 	cmppl	r3, #380	; 0x17c
    8fe8:	20295254 	eorcs	r5, r9, r4, asr r2
    8fec:	2030203f 	eorscs	r2, r0, pc, lsr r0
    8ff0:	5f5f203a 	svcpl	0x005f203a
    8ff4:	6b636f6c 	blvs	18e4dac <_end+0x8e4dac>
    8ff8:	6c65725f 	sfmvs	f7, 2, [r5], #-380	; 0xfffffe84
    8ffc:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
    9000:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    9004:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    9008:	28286576 	stmdacs	r8!, {r1, r2, r4, r5, r6, r8, sl, sp, lr}
    900c:	2d297066 	stccs	0, cr7, [r9, #-408]!	; 0xfffffe68
    9010:	6f6c5f3e 	svcvs	0x006c5f3e
    9014:	29296b63 	stmdbcs	r9!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}
    9018:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    901c:	5f454c49 	svcpl	0x00454c49
    9020:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    9024:	2064656e 	rsbcs	r6, r4, lr, ror #10
    9028:	414d5f00 	cmpmi	sp, r0, lsl #30
    902c:	54534843 	ldrbpl	r4, [r3], #-2115	; 0xfffff7bd
    9030:	42494c44 	submi	r4, r9, #68, 24	; 0x4400
    9034:	205f485f 	subscs	r4, pc, pc, asr r8	; <UNPREDICTABLE>
    9038:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
    903c:	5f646565 	svcpl	0x00646565
    9040:	61686377 	smcvs	34359	; 0x8637
    9044:	20745f72 	rsbscs	r5, r4, r2, ror pc
    9048:	535f5f00 	cmppl	pc, #0, 30
    904c:	2046464f 	subcs	r4, r6, pc, asr #12
    9050:	30317830 	eorscc	r7, r1, r0, lsr r8
    9054:	5f003030 	svcpl	0x00003030
    9058:	424c535f 	submi	r5, ip, #2080374785	; 0x7c000001
    905c:	78302046 	ldmdavc	r0!, {r1, r2, r6, sp}
    9060:	31303030 	teqcc	r0, r0, lsr r0
    9064:	535f5f00 	cmppl	pc, #0, 30
    9068:	2034364c 	eorscs	r3, r4, ip, asr #12
    906c:	30387830 	eorscc	r7, r8, r0, lsr r8
    9070:	5f003030 	svcpl	0x00003030
    9074:	5752535f 			; <UNDEFINED> instruction: 0x5752535f
    9078:	30783020 	rsbscc	r3, r8, r0, lsr #32
    907c:	00303130 	eorseq	r3, r0, r0, lsr r1
    9080:	4e535f5f 	mrcmi	15, 2, r5, cr3, cr15, {2}
    9084:	30205450 	eorcc	r5, r0, r0, asr r4
    9088:	30383078 	eorscc	r3, r8, r8, ror r0
    908c:	5f5f0030 	svcpl	0x005f0030
    9090:	44495753 	strbmi	r5, [r9], #-1875	; 0xfffff8ad
    9094:	32783020 	rsbscc	r3, r8, #32
    9098:	00303030 	eorseq	r3, r0, r0, lsr r0
    909c:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    90a0:	565f4355 			; <UNDEFINED> instruction: 0x565f4355
    90a4:	494c5f41 	stmdbmi	ip, {r0, r6, r8, r9, sl, fp, ip, lr}^
    90a8:	00205453 	eoreq	r5, r0, r3, asr r4
    90ac:	45535f5f 	ldrbmi	r5, [r3, #-3935]	; 0xfffff0a1
    90b0:	30205252 	eorcc	r5, r0, r2, asr r2
    90b4:	34303078 	ldrtcc	r3, [r0], #-120	; 0xffffff88
    90b8:	75620030 	strbvc	r0, [r2, #-48]!	; 0xffffffd0
    90bc:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
    90c0:	4e415200 	cdpmi	2, 4, cr5, cr1, cr0, {0}
    90c4:	414d5f44 	cmpmi	sp, r4, asr #30
    90c8:	5f5f2058 	svcpl	0x005f2058
    90cc:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    90d0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    90d4:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
    90d8:	5f646565 	svcpl	0x00646565
    90dc:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    90e0:	5f5f0020 	svcpl	0x005f0020
    90e4:	494c4156 	stmdbmi	ip, {r1, r2, r4, r6, r8, lr}^
    90e8:	5f205453 	svcpl	0x00205453
    90ec:	756e675f 	strbvc	r6, [lr, #-1887]!	; 0xfffff8a1
    90f0:	61765f63 	cmnvs	r6, r3, ror #30
    90f4:	73696c5f 	cmnvc	r9, #24320	; 0x5f00
    90f8:	424d0074 	submi	r0, sp, #116	; 0x74
    90fc:	5255435f 	subspl	r4, r5, #2080374785	; 0x7c000001
    9100:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    9104:	6c5f5f20 	mrrcvs	15, 2, r5, pc, cr0	; <UNPREDICTABLE>
    9108:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
    910c:	626d5f65 	rsbvs	r5, sp, #404	; 0x194
    9110:	7275635f 	rsbsvc	r6, r5, #2080374785	; 0x7c000001
    9114:	78616d5f 	stmdavc	r1!, {r0, r1, r2, r3, r4, r6, r8, sl, fp, sp, lr}^
    9118:	5f002928 	svcpl	0x00002928
    911c:	6566735f 	strbvs	r7, [r6, #-863]!	; 0xfffffca1
    9120:	7028666f 	eorvc	r6, r8, pc, ror #12
    9124:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    9128:	29746e69 	ldmdbcs	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    912c:	70282828 	eorvc	r2, r8, r8, lsr #16
    9130:	5f3e2d29 	svcpl	0x003e2d29
    9134:	67616c66 	strbvs	r6, [r1, -r6, ror #24]!
    9138:	20262073 	eorcs	r2, r6, r3, ror r0
    913c:	45535f5f 	ldrbmi	r5, [r3, #-3935]	; 0xfffff0a1
    9140:	2029464f 	eorcs	r4, r9, pc, asr #12
    9144:	30203d21 	eorcc	r3, r0, r1, lsr #26
    9148:	45002929 	strmi	r2, [r0, #-2345]	; 0xfffff6d7
    914c:	2820464f 	stmdacs	r0!, {r0, r1, r2, r3, r6, r9, sl, lr}
    9150:	0029312d 	eoreq	r3, r9, sp, lsr #2
    9154:	45535f5f 	ldrbmi	r5, [r3, #-3935]	; 0xfffff0a1
    9158:	3020464f 	eorcc	r4, r0, pc, asr #12
    915c:	32303078 	eorscc	r3, r0, #120	; 0x78
    9160:	4d540030 	ldclmi	0, cr0, [r4, #-192]	; 0xffffff40
    9164:	414d5f50 	cmpmi	sp, r0, asr pc
    9168:	36322058 			; <UNDEFINED> instruction: 0x36322058
    916c:	4c494600 	mcrrmi	6, 0, r4, r9, cr0
    9170:	4d414e45 	stclmi	14, cr4, [r1, #-276]	; 0xfffffeec
    9174:	414d5f45 	cmpmi	sp, r5, asr #30
    9178:	30312058 	eorscc	r2, r1, r8, asr r0
    917c:	5f003432 	svcpl	0x00003432
    9180:	5041535f 	subpl	r5, r1, pc, asr r3
    9184:	78302050 	ldmdavc	r0!, {r4, r6, sp}
    9188:	30303130 	eorscc	r3, r0, r0, lsr r1
    918c:	53465f00 	movtpl	r5, #28416	; 0x6f00
    9190:	4f494454 	svcmi	0x00494454
    9194:	735f0020 	cmpvc	pc, #32
    9198:	756f6474 	strbvc	r6, [pc, #-1140]!	; 8d2c <__bss_end__+0x5a44>
    919c:	28725f74 	ldmdacs	r2!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    91a0:	28202978 	stmdacs	r0!, {r3, r4, r5, r6, r8, fp, sp}
    91a4:	2d297828 	stccs	8, cr7, [r9, #-160]!	; 0xffffff60
    91a8:	74735f3e 	ldrbtvc	r5, [r3], #-3902	; 0xfffff0c2
    91ac:	74756f64 	ldrbtvc	r6, [r5], #-3940	; 0xfffff09c
    91b0:	495f0029 	ldmdbmi	pc, {r0, r3, r5}^	; <UNPREDICTABLE>
    91b4:	46424e4f 	strbmi	r4, [r2], -pc, asr #28
    91b8:	5f003220 	svcpl	0x00003220
    91bc:	6d6f635f 	stclvs	3, cr6, [pc, #-380]!	; 9048 <__bss_end__+0x5d60>
    91c0:	5f726170 	svcpl	0x00726170
    91c4:	745f6e66 	ldrbvc	r6, [pc], #-3686	; 91cc <__bss_end__+0x5ee4>
    91c8:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    91cc:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    91d0:	5f5f0020 	svcpl	0x005f0020
    91d4:	46424e53 			; <UNDEFINED> instruction: 0x46424e53
    91d8:	30783020 	rsbscc	r3, r8, r0, lsr #32
    91dc:	00323030 	eorseq	r3, r2, r0, lsr r0
    91e0:	4f535f5f 	svcmi	0x00535f5f
    91e4:	30204452 	eorcc	r4, r0, r2, asr r4
    91e8:	30303278 	eorscc	r3, r0, r8, ror r2
    91ec:	5f5f0030 	svcpl	0x005f0030
    91f0:	6c696673 	stclvs	6, cr6, [r9], #-460	; 0xfffffe34
    91f4:	286f6e65 	stmdacs	pc!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    91f8:	28202970 	stmdacs	r0!, {r4, r5, r6, r8, fp, sp}
    91fc:	2d297028 	stccs	0, cr7, [r9, #-160]!	; 0xffffff60
    9200:	69665f3e 	stmdbvs	r6!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    9204:	0029656c 	eoreq	r6, r9, ip, ror #10
    9208:	4e535f5f 	mrcmi	15, 2, r5, cr3, cr15, {2}
    920c:	30204b4c 	eorcc	r4, r0, ip, asr #22
    9210:	30303078 	eorscc	r3, r0, r8, ror r0
    9214:	5f5f0031 	svcpl	0x005f0031
    9218:	54504f53 	ldrbpl	r4, [r0], #-3923	; 0xfffff0ad
    921c:	30783020 	rsbscc	r3, r8, r0, lsr #32
    9220:	00303034 	eorseq	r3, r0, r4, lsr r0
    9224:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    9228:	485f4f49 	ldmdami	pc, {r0, r3, r6, r8, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    922c:	7300205f 	movwvc	r2, #95	; 0x5f
    9230:	756f6474 	strbvc	r6, [pc, #-1140]!	; 8dc4 <__bss_end__+0x5adc>
    9234:	5f282074 	svcpl	0x00282074
    9238:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    923c:	5f3e2d54 	svcpl	0x003e2d54
    9240:	6f647473 	svcvs	0x00647473
    9244:	00297475 	eoreq	r7, r9, r5, ror r4
    9248:	57454e5f 	smlsldpl	r4, r5, pc, lr	; <UNPREDICTABLE>
    924c:	5f42494c 	svcpl	0x0042494c
    9250:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    9254:	20485f4f 	subcs	r5, r8, pc, asr #30
    9258:	504f4600 	subpl	r4, pc, r0, lsl #12
    925c:	4d5f4e45 	ldclmi	14, cr4, [pc, #-276]	; 9150 <__bss_end__+0x5e68>
    9260:	32205841 	eorcc	r5, r0, #4259840	; 0x410000
    9264:	5f5f0030 	svcpl	0x005f0030
    9268:	72656673 	rsbvc	r6, r5, #120586240	; 0x7300000
    926c:	28726f72 	ldmdacs	r2!, {r1, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
    9270:	28202970 	stmdacs	r0!, {r4, r5, r6, r8, fp, sp}
    9274:	746e6928 	strbtvc	r6, [lr], #-2344	; 0xfffff6d8
    9278:	28282829 	stmdacs	r8!, {r0, r3, r5, fp, sp}
    927c:	3e2d2970 			; <UNDEFINED> instruction: 0x3e2d2970
    9280:	616c665f 	cmnvs	ip, pc, asr r6
    9284:	26207367 	strtcs	r7, [r0], -r7, ror #6
    9288:	535f5f20 	cmppl	pc, #32, 30	; 0x80
    928c:	29525245 	ldmdbcs	r2, {r0, r2, r6, r9, ip, lr}^
    9290:	203d2120 	eorscs	r2, sp, r0, lsr #2
    9294:	00292930 	eoreq	r2, r9, r0, lsr r9
    9298:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    929c:	5f42494c 	svcpl	0x0042494c
    92a0:	00205f48 	eoreq	r5, r0, r8, asr #30
    92a4:	4c4f495f 	mcrrmi	9, 5, r4, pc, cr15	; <UNPREDICTABLE>
    92a8:	31204642 			; <UNDEFINED> instruction: 0x31204642
    92ac:	46554200 	ldrbmi	r4, [r5], -r0, lsl #4
    92b0:	205a4953 	subscs	r4, sl, r3, asr r9
    92b4:	34323031 	ldrtcc	r3, [r2], #-49	; 0xffffffcf
    92b8:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
    92bc:	7273006e 	rsbsvc	r0, r3, #110	; 0x6e
    92c0:	616d2f63 	cmnvs	sp, r3, ror #30
    92c4:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
    92c8:	535f5f00 	cmppl	pc, #0, 30
    92cc:	30205257 	eorcc	r5, r0, r7, asr r2
    92d0:	30303078 	eorscc	r3, r0, r8, ror r0
    92d4:	58450038 	stmdapl	r5, {r3, r4, r5}^
    92d8:	535f5449 	cmppl	pc, #1224736768	; 0x49000000
    92dc:	45434355 	strbmi	r4, [r3, #-853]	; 0xfffffcab
    92e0:	30205353 	eorcc	r5, r0, r3, asr r3
    92e4:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xfffff100
    92e8:	5f6e6964 	svcpl	0x006e6964
    92ec:	29782872 	ldmdbcs	r8!, {r1, r4, r5, r6, fp, sp}^
    92f0:	78282820 	stmdavc	r8!, {r5, fp, sp}
    92f4:	5f3e2d29 	svcpl	0x003e2d29
    92f8:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    92fc:	5f00296e 	svcpl	0x0000296e
    9300:	65647473 	strbvs	r7, [r4, #-1139]!	; 0xfffffb8d
    9304:	725f7272 	subsvc	r7, pc, #536870919	; 0x20000007
    9308:	20297828 	eorcs	r7, r9, r8, lsr #16
    930c:	29782828 	ldmdbcs	r8!, {r3, r5, fp, sp}^
    9310:	735f3e2d 	cmpvc	pc, #720	; 0x2d0
    9314:	72656474 	rsbvc	r6, r5, #116, 8	; 0x74000000
    9318:	5f002972 	svcpl	0x00002972
    931c:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    9320:	5f5f5f64 	svcpl	0x005f5f64
    9324:	6c5f6176 	ldfvse	f6, [pc], {118}	; 0x76
    9328:	00747369 	rsbseq	r7, r4, r9, ror #6
    932c:	54495845 	strbpl	r5, [r9], #-2117	; 0xfffff7bb
    9330:	4941465f 	stmdbmi	r1, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    9334:	4552554c 	ldrbmi	r5, [r2, #-1356]	; 0xfffffab4
    9338:	73003120 	movwvc	r3, #288	; 0x120
    933c:	6b63694e 	blvs	18e387c <_end+0x8e387c>
    9340:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
    9344:	63727300 	cmnvs	r2, #0, 6
    9348:	6174732f 	cmnvs	r4, pc, lsr #6
    934c:	732e7472 			; <UNDEFINED> instruction: 0x732e7472
    9350:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
    9354:	20534120 	subscs	r4, r3, r0, lsr #2
    9358:	30332e32 	eorscc	r2, r3, r2, lsr lr
    935c:	Address 0x0000935c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000014 	andeq	r0, r0, r4, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00000144 	andeq	r0, r0, r4, asr #2
  1c:	00000044 	andeq	r0, r0, r4, asr #32
  20:	5e100e42 	cdppl	14, 1, cr0, cr0, cr2, {2}
  24:	0000000e 	andeq	r0, r0, lr
  28:	00000014 	andeq	r0, r0, r4, lsl r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00000188 	andeq	r0, r0, r8, lsl #3
  34:	00000044 	andeq	r0, r0, r4, asr #32
  38:	5e080e42 	cdppl	14, 0, cr0, cr8, cr2, {2}
  3c:	0000000e 	andeq	r0, r0, lr
  40:	00000014 	andeq	r0, r0, r4, lsl r0
  44:	00000000 	andeq	r0, r0, r0
  48:	000001cc 	andeq	r0, r0, ip, asr #3
  4c:	00000070 	andeq	r0, r0, r0, ror r0
  50:	74100e42 	ldrvc	r0, [r0], #-3650	; 0xfffff1be
  54:	0000000e 	andeq	r0, r0, lr
  58:	00000018 	andeq	r0, r0, r8, lsl r0
  5c:	00000000 	andeq	r0, r0, r0
  60:	0000023c 	andeq	r0, r0, ip, lsr r2
  64:	000000e8 	andeq	r0, r0, r8, ror #1
  68:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
  6c:	200e4201 	andcs	r4, lr, r1, lsl #4
  70:	040e6e02 	streq	r6, [lr], #-3586	; 0xfffff1fe
  74:	00000018 	andeq	r0, r0, r8, lsl r0
  78:	00000000 	andeq	r0, r0, r0
  7c:	00000324 	andeq	r0, r0, r4, lsr #6
  80:	00000140 	andeq	r0, r0, r0, asr #2
  84:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
  88:	280e4201 	stmdacs	lr, {r0, r9, lr}
  8c:	040e9a02 	streq	r9, [lr], #-2562	; 0xfffff5fe
  90:	0000000c 	andeq	r0, r0, ip
  94:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  98:	7c020001 	stcvc	0, cr0, [r2], {1}
  9c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  a0:	00000014 	andeq	r0, r0, r4, lsl r0
  a4:	00000090 	muleq	r0, r0, r0
  a8:	00000464 	andeq	r0, r0, r4, ror #8
  ac:	00000044 	andeq	r0, r0, r4, asr #32
  b0:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  b4:	00018e02 	andeq	r8, r1, r2, lsl #28
  b8:	00000014 	andeq	r0, r0, r4, lsl r0
  bc:	00000090 	muleq	r0, r0, r0
  c0:	000004a8 	andeq	r0, r0, r8, lsr #9
  c4:	00000010 	andeq	r0, r0, r0, lsl r0
  c8:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  cc:	00018e02 	andeq	r8, r1, r2, lsl #28
  d0:	0000000c 	andeq	r0, r0, ip
  d4:	00000090 	muleq	r0, r0, r0
  d8:	000004b8 			; <UNDEFINED> instruction: 0x000004b8
  dc:	00000008 	andeq	r0, r0, r8
  e0:	00000014 	andeq	r0, r0, r4, lsl r0
  e4:	00000090 	muleq	r0, r0, r0
  e8:	000004c0 	andeq	r0, r0, r0, asr #9
  ec:	000000c0 	andeq	r0, r0, r0, asr #1
  f0:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  f4:	00018e02 	andeq	r8, r1, r2, lsl #28
  f8:	0000000c 	andeq	r0, r0, ip
  fc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 100:	7c020001 	stcvc	0, cr0, [r2], {1}
 104:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 108:	0000000c 	andeq	r0, r0, ip
 10c:	000000f8 	strdeq	r0, [r0], -r8
 110:	00000580 	andeq	r0, r0, r0, lsl #11
 114:	0000000c 	andeq	r0, r0, ip
 118:	0000000c 	andeq	r0, r0, ip
 11c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 120:	7c020001 	stcvc	0, cr0, [r2], {1}
 124:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 128:	00000014 	andeq	r0, r0, r4, lsl r0
 12c:	00000118 	andeq	r0, r0, r8, lsl r1
 130:	0000058c 	andeq	r0, r0, ip, lsl #11
 134:	00000028 	andeq	r0, r0, r8, lsr #32
 138:	83080e41 	movwhi	r0, #36417	; 0x8e41
 13c:	00018e02 	andeq	r8, r1, r2, lsl #28
 140:	0000000c 	andeq	r0, r0, ip
 144:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 148:	7c020001 	stcvc	0, cr0, [r2], {1}
 14c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 150:	00000018 	andeq	r0, r0, r8, lsl r0
 154:	00000140 	andeq	r0, r0, r0, asr #2
 158:	000005b4 			; <UNDEFINED> instruction: 0x000005b4
 15c:	00000058 	andeq	r0, r0, r8, asr r0
 160:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 164:	86038504 	strhi	r8, [r3], -r4, lsl #10
 168:	00018e02 	andeq	r8, r1, r2, lsl #28
 16c:	0000000c 	andeq	r0, r0, ip
 170:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 174:	7c020001 	stcvc	0, cr0, [r2], {1}
 178:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 17c:	0000000c 	andeq	r0, r0, ip
 180:	0000016c 	andeq	r0, r0, ip, ror #2
 184:	0000060c 	andeq	r0, r0, ip, lsl #12
 188:	00000004 	andeq	r0, r0, r4
 18c:	00000014 	andeq	r0, r0, r4, lsl r0
 190:	0000016c 	andeq	r0, r0, ip, ror #2
 194:	00000610 	andeq	r0, r0, r0, lsl r6
 198:	00000048 	andeq	r0, r0, r8, asr #32
 19c:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
 1a0:	00018e02 	andeq	r8, r1, r2, lsl #28
 1a4:	0000000c 	andeq	r0, r0, ip
 1a8:	0000016c 	andeq	r0, r0, ip, ror #2
 1ac:	00000658 	andeq	r0, r0, r8, asr r6
 1b0:	0000000c 	andeq	r0, r0, ip
 1b4:	0000000c 	andeq	r0, r0, ip
 1b8:	0000016c 	andeq	r0, r0, ip, ror #2
 1bc:	00000664 	andeq	r0, r0, r4, ror #12
 1c0:	00000004 	andeq	r0, r0, r4
 1c4:	00000018 	andeq	r0, r0, r8, lsl r0
 1c8:	0000016c 	andeq	r0, r0, ip, ror #2
 1cc:	00000668 	andeq	r0, r0, r8, ror #12
 1d0:	0000002c 	andeq	r0, r0, ip, lsr #32
 1d4:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 1d8:	86038504 	strhi	r8, [r3], -r4, lsl #10
 1dc:	00018e02 	andeq	r8, r1, r2, lsl #28
 1e0:	0000000c 	andeq	r0, r0, ip
 1e4:	0000016c 	andeq	r0, r0, ip, ror #2
 1e8:	00000694 	muleq	r0, r4, r6
 1ec:	0000000c 	andeq	r0, r0, ip
 1f0:	00000014 	andeq	r0, r0, r4, lsl r0
 1f4:	0000016c 	andeq	r0, r0, ip, ror #2
 1f8:	000006a0 	andeq	r0, r0, r0, lsr #13
 1fc:	00000060 	andeq	r0, r0, r0, rrx
 200:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
 204:	00018e02 	andeq	r8, r1, r2, lsl #28
 208:	0000001c 	andeq	r0, r0, ip, lsl r0
 20c:	0000016c 	andeq	r0, r0, ip, ror #2
 210:	00000700 	andeq	r0, r0, r0, lsl #14
 214:	00000078 	andeq	r0, r0, r8, ror r0
 218:	83180e41 	tsthi	r8, #1040	; 0x410
 21c:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 220:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 224:	00018e02 	andeq	r8, r1, r2, lsl #28
 228:	0000000c 	andeq	r0, r0, ip
 22c:	0000016c 	andeq	r0, r0, ip, ror #2
 230:	00000778 	andeq	r0, r0, r8, ror r7
 234:	00000002 	andeq	r0, r0, r2
 238:	0000000c 	andeq	r0, r0, ip
 23c:	0000016c 	andeq	r0, r0, ip, ror #2
 240:	0000077a 	andeq	r0, r0, sl, ror r7
 244:	00000002 	andeq	r0, r0, r2
 248:	0000000c 	andeq	r0, r0, ip
 24c:	0000016c 	andeq	r0, r0, ip, ror #2
 250:	0000077c 	andeq	r0, r0, ip, ror r7
 254:	00000002 	andeq	r0, r0, r2
 258:	0000000c 	andeq	r0, r0, ip
 25c:	0000016c 	andeq	r0, r0, ip, ror #2
 260:	0000077e 	andeq	r0, r0, lr, ror r7
 264:	00000002 	andeq	r0, r0, r2
 268:	0000000c 	andeq	r0, r0, ip
 26c:	0000016c 	andeq	r0, r0, ip, ror #2
 270:	00000780 	andeq	r0, r0, r0, lsl #15
 274:	00000014 	andeq	r0, r0, r4, lsl r0
 278:	0000000c 	andeq	r0, r0, ip
 27c:	0000016c 	andeq	r0, r0, ip, ror #2
 280:	00000794 	muleq	r0, r4, r7
 284:	00000014 	andeq	r0, r0, r4, lsl r0
 288:	0000000c 	andeq	r0, r0, ip
 28c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 290:	7c020001 	stcvc	0, cr0, [r2], {1}
 294:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 298:	0000001c 	andeq	r0, r0, ip, lsl r0
 29c:	00000288 	andeq	r0, r0, r8, lsl #5
 2a0:	000007a8 	andeq	r0, r0, r8, lsr #15
 2a4:	00000038 	andeq	r0, r0, r8, lsr r0
 2a8:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 2ac:	86058506 	strhi	r8, [r5], -r6, lsl #10
 2b0:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 2b4:	00018e02 	andeq	r8, r1, r2, lsl #28
 2b8:	00000020 	andeq	r0, r0, r0, lsr #32
 2bc:	00000288 	andeq	r0, r0, r8, lsl #5
 2c0:	000007e0 	andeq	r0, r0, r0, ror #15
 2c4:	0000003c 	andeq	r0, r0, ip, lsr r0
 2c8:	83200e42 			; <UNDEFINED> instruction: 0x83200e42
 2cc:	85078408 	strhi	r8, [r7, #-1032]	; 0xfffffbf8
 2d0:	87058606 	strhi	r8, [r5, -r6, lsl #12]
 2d4:	89038804 	stmdbhi	r3, {r2, fp, pc}
 2d8:	00018e02 	andeq	r8, r1, r2, lsl #28
 2dc:	0000000c 	andeq	r0, r0, ip
 2e0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2e4:	7c020001 	stcvc	0, cr0, [r2], {1}
 2e8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2ec:	00000018 	andeq	r0, r0, r8, lsl r0
 2f0:	000002dc 	ldrdeq	r0, [r0], -ip
 2f4:	0000081c 	andeq	r0, r0, ip, lsl r8
 2f8:	00000048 	andeq	r0, r0, r8, asr #32
 2fc:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 300:	86038504 	strhi	r8, [r3], -r4, lsl #10
 304:	00018e02 	andeq	r8, r1, r2, lsl #28
 308:	0000000c 	andeq	r0, r0, ip
 30c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 310:	7c020001 	stcvc	0, cr0, [r2], {1}
 314:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 318:	0000000c 	andeq	r0, r0, ip
 31c:	00000308 	andeq	r0, r0, r8, lsl #6
 320:	00000864 	andeq	r0, r0, r4, ror #16
 324:	00000010 	andeq	r0, r0, r0, lsl r0
 328:	0000000c 	andeq	r0, r0, ip
 32c:	00000308 	andeq	r0, r0, r8, lsl #6
 330:	00000874 	andeq	r0, r0, r4, ror r8
 334:	00000010 	andeq	r0, r0, r0, lsl r0
 338:	0000000c 	andeq	r0, r0, ip
 33c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 340:	7c020001 	stcvc	0, cr0, [r2], {1}
 344:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 348:	0000000c 	andeq	r0, r0, ip
 34c:	00000338 	andeq	r0, r0, r8, lsr r3
 350:	00000884 	andeq	r0, r0, r4, lsl #17
 354:	00000010 	andeq	r0, r0, r0, lsl r0
 358:	0000000c 	andeq	r0, r0, ip
 35c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 360:	7c020001 	stcvc	0, cr0, [r2], {1}
 364:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 368:	00000024 	andeq	r0, r0, r4, lsr #32
 36c:	00000358 	andeq	r0, r0, r8, asr r3
 370:	00000894 	muleq	r0, r4, r8
 374:	00000098 	muleq	r0, r8, r0
 378:	83100e41 	tsthi	r0, #1040	; 0x410
 37c:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 380:	54018e02 	strpl	r8, [r1], #-3586	; 0xfffff1fe
 384:	c4c5ce0a 	strbgt	ip, [r5], #3594	; 0xe0a
 388:	42000ec3 	andmi	r0, r0, #3120	; 0xc30
 38c:	0000000b 	andeq	r0, r0, fp
 390:	0000000c 	andeq	r0, r0, ip
 394:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 398:	7c020001 	stcvc	0, cr0, [r2], {1}
 39c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 3a0:	00000018 	andeq	r0, r0, r8, lsl r0
 3a4:	00000390 	muleq	r0, r0, r3
 3a8:	0000092c 	andeq	r0, r0, ip, lsr #18
 3ac:	000000b4 	strheq	r0, [r0], -r4
 3b0:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 3b4:	86038504 	strhi	r8, [r3], -r4, lsl #10
 3b8:	00018e02 	andeq	r8, r1, r2, lsl #28
 3bc:	0000000c 	andeq	r0, r0, ip
 3c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3c4:	7c020001 	stcvc	0, cr0, [r2], {1}
 3c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 3cc:	0000002c 	andeq	r0, r0, ip, lsr #32
 3d0:	000003bc 			; <UNDEFINED> instruction: 0x000003bc
 3d4:	000009e0 	andeq	r0, r0, r0, ror #19
 3d8:	00000028 	andeq	r0, r0, r8, lsr #32
 3dc:	810c0e41 	tsthi	ip, r1, asr #28
 3e0:	83028203 	movwhi	r8, #8707	; 0x2203
 3e4:	200e4101 	andcs	r4, lr, r1, lsl #2
 3e8:	048e0584 	streq	r0, [lr], #1412	; 0x584
 3ec:	42140e4e 	andsmi	r0, r4, #1248	; 0x4e0
 3f0:	0c0ec4ce 	cfstrseq	mvf12, [lr], {206}	; 0xce
 3f4:	c1c2c341 	bicgt	ip, r2, r1, asr #6
 3f8:	0000000e 	andeq	r0, r0, lr
 3fc:	00000030 	andeq	r0, r0, r0, lsr r0
 400:	000003bc 			; <UNDEFINED> instruction: 0x000003bc
 404:	00000a08 	andeq	r0, r0, r8, lsl #20
 408:	00000030 	andeq	r0, r0, r0, lsr r0
 40c:	80100e41 	andshi	r0, r0, r1, asr #28
 410:	82038104 	andhi	r8, r3, #4, 2
 414:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 418:	0684200e 	streq	r2, [r4], lr
 41c:	0e4f058e 	cdpeq	5, 4, cr0, cr15, cr14, {4}
 420:	c4ce4218 	strbgt	r4, [lr], #536	; 0x218
 424:	c341100e 	movtgt	r1, #4110	; 0x100e
 428:	0ec0c1c2 	acseqdm	f4, f2
 42c:	00000000 	andeq	r0, r0, r0
 430:	0000000c 	andeq	r0, r0, ip
 434:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 438:	7c020001 	stcvc	0, cr0, [r2], {1}
 43c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 440:	00000018 	andeq	r0, r0, r8, lsl r0
 444:	00000430 	andeq	r0, r0, r0, lsr r4
 448:	00000a38 	andeq	r0, r0, r8, lsr sl
 44c:	000000b8 	strheq	r0, [r0], -r8
 450:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 454:	86038504 	strhi	r8, [r3], -r4, lsl #10
 458:	00018e02 	andeq	r8, r1, r2, lsl #28
 45c:	0000000c 	andeq	r0, r0, ip
 460:	00000430 	andeq	r0, r0, r0, lsr r4
 464:	00000af0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 468:	00000010 	andeq	r0, r0, r0, lsl r0
 46c:	0000000c 	andeq	r0, r0, ip
 470:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 474:	7c020001 	stcvc	0, cr0, [r2], {1}
 478:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 47c:	00000018 	andeq	r0, r0, r8, lsl r0
 480:	0000046c 	andeq	r0, r0, ip, ror #8
 484:	00000b00 	andeq	r0, r0, r0, lsl #22
 488:	00000020 	andeq	r0, r0, r0, lsr #32
 48c:	83100e41 	tsthi	r0, #1040	; 0x410
 490:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 494:	00018e02 	andeq	r8, r1, r2, lsl #28
 498:	0000000c 	andeq	r0, r0, ip
 49c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 4a0:	7c020001 	stcvc	0, cr0, [r2], {1}
 4a4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 4a8:	00000030 	andeq	r0, r0, r0, lsr r0
 4ac:	00000498 	muleq	r0, r8, r4
 4b0:	00000b20 	andeq	r0, r0, r0, lsr #22
 4b4:	00000030 	andeq	r0, r0, r0, lsr r0
 4b8:	80100e41 	andshi	r0, r0, r1, asr #28
 4bc:	82038104 	andhi	r8, r3, #4, 2
 4c0:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 4c4:	0684200e 	streq	r2, [r4], lr
 4c8:	0e4f058e 	cdpeq	5, 4, cr0, cr15, cr14, {4}
 4cc:	c4ce4218 	strbgt	r4, [lr], #536	; 0x218
 4d0:	c341100e 	movtgt	r1, #4110	; 0x100e
 4d4:	0ec0c1c2 	acseqdm	f4, f2
 4d8:	00000000 	andeq	r0, r0, r0
 4dc:	0000002c 	andeq	r0, r0, ip, lsr #32
 4e0:	00000498 	muleq	r0, r8, r4
 4e4:	00000b50 	andeq	r0, r0, r0, asr fp
 4e8:	00000028 	andeq	r0, r0, r8, lsr #32
 4ec:	810c0e41 	tsthi	ip, r1, asr #28
 4f0:	83028203 	movwhi	r8, #8707	; 0x2203
 4f4:	200e4101 	andcs	r4, lr, r1, lsl #2
 4f8:	048e0584 	streq	r0, [lr], #1412	; 0x584
 4fc:	42140e4e 	andsmi	r0, r4, #1248	; 0x4e0
 500:	0c0ec4ce 	cfstrseq	mvf12, [lr], {206}	; 0xce
 504:	c1c2c341 	bicgt	ip, r2, r1, asr #6
 508:	0000000e 	andeq	r0, r0, lr
 50c:	0000000c 	andeq	r0, r0, ip
 510:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 514:	7c020001 	stcvc	0, cr0, [r2], {1}
 518:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 51c:	00000014 	andeq	r0, r0, r4, lsl r0
 520:	0000050c 	andeq	r0, r0, ip, lsl #10
 524:	00000b78 	andeq	r0, r0, r8, ror fp
 528:	00000022 	andeq	r0, r0, r2, lsr #32
 52c:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 530:	00018e02 	andeq	r8, r1, r2, lsl #28
 534:	0000000c 	andeq	r0, r0, ip
 538:	0000050c 	andeq	r0, r0, ip, lsl #10
 53c:	00000b9a 	muleq	r0, sl, fp
 540:	00000004 	andeq	r0, r0, r4
 544:	00000024 	andeq	r0, r0, r4, lsr #32
 548:	0000050c 	andeq	r0, r0, ip, lsl #10
 54c:	00000b9e 	muleq	r0, lr, fp
 550:	00000038 	andeq	r0, r0, r8, lsr r0
 554:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 558:	86058506 	strhi	r8, [r5], -r6, lsl #10
 55c:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 560:	58018e02 	stmdapl	r1, {r1, r9, sl, fp, pc}
 564:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
 568:	000ec4c5 	andeq	ip, lr, r5, asr #9
 56c:	00000014 	andeq	r0, r0, r4, lsl r0
 570:	0000050c 	andeq	r0, r0, ip, lsl #10
 574:	00000bd6 	ldrdeq	r0, [r0], -r6
 578:	00000024 	andeq	r0, r0, r4, lsr #32
 57c:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 580:	00018e02 	andeq	r8, r1, r2, lsl #28
 584:	0000000c 	andeq	r0, r0, ip
 588:	0000050c 	andeq	r0, r0, ip, lsl #10
 58c:	00000bfa 	strdeq	r0, [r0], -sl
 590:	00000008 	andeq	r0, r0, r8
 594:	0000000c 	andeq	r0, r0, ip
 598:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 59c:	7c020001 	stcvc	0, cr0, [r2], {1}
 5a0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5a4:	0000000c 	andeq	r0, r0, ip
 5a8:	00000594 	muleq	r0, r4, r5
 5ac:	00000c02 	andeq	r0, r0, r2, lsl #24
 5b0:	00000004 	andeq	r0, r0, r4
 5b4:	0000000c 	andeq	r0, r0, ip
 5b8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5bc:	7c020001 	stcvc	0, cr0, [r2], {1}
 5c0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5c4:	0000001c 	andeq	r0, r0, ip, lsl r0
 5c8:	000005b4 			; <UNDEFINED> instruction: 0x000005b4
 5cc:	00000c08 	andeq	r0, r0, r8, lsl #24
 5d0:	000000a4 	andeq	r0, r0, r4, lsr #1
 5d4:	83180e41 	tsthi	r8, #1040	; 0x410
 5d8:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 5dc:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 5e0:	00018e02 	andeq	r8, r1, r2, lsl #28
 5e4:	0000000c 	andeq	r0, r0, ip
 5e8:	000005b4 			; <UNDEFINED> instruction: 0x000005b4
 5ec:	00000cac 	andeq	r0, r0, ip, lsr #25
 5f0:	00000010 	andeq	r0, r0, r0, lsl r0
 5f4:	0000000c 	andeq	r0, r0, ip
 5f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 5fc:	7c020001 	stcvc	0, cr0, [r2], {1}
 600:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 604:	00000018 	andeq	r0, r0, r8, lsl r0
 608:	000005f4 	strdeq	r0, [r0], -r4
 60c:	00000cbc 			; <UNDEFINED> instruction: 0x00000cbc
 610:	00000024 	andeq	r0, r0, r4, lsr #32
 614:	83100e41 	tsthi	r0, #1040	; 0x410
 618:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 61c:	00018e02 	andeq	r8, r1, r2, lsl #28
 620:	0000000c 	andeq	r0, r0, ip
 624:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 628:	7c020001 	stcvc	0, cr0, [r2], {1}
 62c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 630:	00000018 	andeq	r0, r0, r8, lsl r0
 634:	00000620 	andeq	r0, r0, r0, lsr #12
 638:	00000ce0 	andeq	r0, r0, r0, ror #25
 63c:	000000dc 	ldrdeq	r0, [r0], -ip
 640:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 644:	86038504 	strhi	r8, [r3], -r4, lsl #10
 648:	00018e02 	andeq	r8, r1, r2, lsl #28
 64c:	0000000c 	andeq	r0, r0, ip
 650:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 654:	7c020001 	stcvc	0, cr0, [r2], {1}
 658:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 65c:	00000018 	andeq	r0, r0, r8, lsl r0
 660:	0000064c 	andeq	r0, r0, ip, asr #12
 664:	00000dbc 			; <UNDEFINED> instruction: 0x00000dbc
 668:	00000020 	andeq	r0, r0, r0, lsr #32
 66c:	83100e41 	tsthi	r0, #1040	; 0x410
 670:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 674:	00018e02 	andeq	r8, r1, r2, lsl #28
 678:	0000000c 	andeq	r0, r0, ip
 67c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 680:	7c020001 	stcvc	0, cr0, [r2], {1}
 684:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 688:	0000001c 	andeq	r0, r0, ip, lsl r0
 68c:	00000678 	andeq	r0, r0, r8, ror r6
 690:	00000ddc 	ldrdeq	r0, [r0], -ip
 694:	0000010c 	andeq	r0, r0, ip, lsl #2
 698:	84180e43 	ldrhi	r0, [r8], #-3651	; 0xfffff1bd
 69c:	86058506 	strhi	r8, [r5], -r6, lsl #10
 6a0:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 6a4:	00018e02 	andeq	r8, r1, r2, lsl #28
 6a8:	00000024 	andeq	r0, r0, r4, lsr #32
 6ac:	00000678 	andeq	r0, r0, r8, ror r6
 6b0:	00000ee8 	andeq	r0, r0, r8, ror #29
 6b4:	00000054 	andeq	r0, r0, r4, asr r0
 6b8:	83100e41 	tsthi	r0, #1040	; 0x410
 6bc:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 6c0:	54018e02 	strpl	r8, [r1], #-3586	; 0xfffff1fe
 6c4:	c4c5ce0a 	strbgt	ip, [r5], #3594	; 0xe0a
 6c8:	42000ec3 	andmi	r0, r0, #3120	; 0xc30
 6cc:	0000000b 	andeq	r0, r0, fp
 6d0:	0000000c 	andeq	r0, r0, ip
 6d4:	00000678 	andeq	r0, r0, r8, ror r6
 6d8:	00000f3c 	andeq	r0, r0, ip, lsr pc
 6dc:	00000024 	andeq	r0, r0, r4, lsr #32
 6e0:	0000000c 	andeq	r0, r0, ip
 6e4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 6e8:	7c020001 	stcvc	0, cr0, [r2], {1}
 6ec:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 6f0:	00000018 	andeq	r0, r0, r8, lsl r0
 6f4:	000006e0 	andeq	r0, r0, r0, ror #13
 6f8:	00000f60 	andeq	r0, r0, r0, ror #30
 6fc:	00000024 	andeq	r0, r0, r4, lsr #32
 700:	83100e41 	tsthi	r0, #1040	; 0x410
 704:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 708:	00018e02 	andeq	r8, r1, r2, lsl #28
 70c:	0000000c 	andeq	r0, r0, ip
 710:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 714:	7c020001 	stcvc	0, cr0, [r2], {1}
 718:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 71c:	00000020 	andeq	r0, r0, r0, lsr #32
 720:	0000070c 	andeq	r0, r0, ip, lsl #14
 724:	00000f84 	andeq	r0, r0, r4, lsl #31
 728:	00000048 	andeq	r0, r0, r8, asr #32
 72c:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 730:	86038504 	strhi	r8, [r3], -r4, lsl #10
 734:	44018e02 	strmi	r8, [r1], #-3586	; 0xfffff1fe
 738:	0e5e680e 	cdpeq	8, 5, cr6, cr14, cr14, {0}
 73c:	00000010 	andeq	r0, r0, r0, lsl r0
 740:	00000020 	andeq	r0, r0, r0, lsr #32
 744:	0000070c 	andeq	r0, r0, ip, lsl #14
 748:	00000fcc 	andeq	r0, r0, ip, asr #31
 74c:	00000080 	andeq	r0, r0, r0, lsl #1
 750:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 754:	86038504 	strhi	r8, [r3], -r4, lsl #10
 758:	4b018e02 	blmi	63f68 <heap_size+0x43f68>
 75c:	41100e0a 	tstmi	r0, sl, lsl #28
 760:	0000000b 	andeq	r0, r0, fp
 764:	0000000c 	andeq	r0, r0, ip
 768:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 76c:	7c020001 	stcvc	0, cr0, [r2], {1}
 770:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 774:	0000000c 	andeq	r0, r0, ip
 778:	00000764 	andeq	r0, r0, r4, ror #14
 77c:	0000104c 	andeq	r1, r0, ip, asr #32
 780:	00000002 	andeq	r0, r0, r2
 784:	0000000c 	andeq	r0, r0, ip
 788:	00000764 	andeq	r0, r0, r4, ror #14
 78c:	0000104e 	andeq	r1, r0, lr, asr #32
 790:	00000002 	andeq	r0, r0, r2
 794:	0000000c 	andeq	r0, r0, ip
 798:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 79c:	7c020001 	stcvc	0, cr0, [r2], {1}
 7a0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 7a4:	0000001c 	andeq	r0, r0, ip, lsl r0
 7a8:	00000794 	muleq	r0, r4, r7
 7ac:	00001050 	andeq	r1, r0, r0, asr r0
 7b0:	0000002e 	andeq	r0, r0, lr, lsr #32
 7b4:	84040e42 	strhi	r0, [r4], #-3650	; 0xfffff1be
 7b8:	c40a4b01 	strgt	r4, [sl], #-2817	; 0xfffff4ff
 7bc:	0b42000e 	bleq	10807fc <_end+0x807fc>
 7c0:	000ec447 	andeq	ip, lr, r7, asr #8
 7c4:	0000001c 	andeq	r0, r0, ip, lsl r0
 7c8:	00000794 	muleq	r0, r4, r7
 7cc:	0000107e 	andeq	r1, r0, lr, ror r0
 7d0:	00000024 	andeq	r0, r0, r4, lsr #32
 7d4:	83180e41 	tsthi	r8, #1040	; 0x410
 7d8:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 7dc:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 7e0:	00018e02 	andeq	r8, r1, r2, lsl #28
 7e4:	00000018 	andeq	r0, r0, r8, lsl r0
 7e8:	00000794 	muleq	r0, r4, r7
 7ec:	000010a2 	andeq	r1, r0, r2, lsr #1
 7f0:	0000001a 	andeq	r0, r0, sl, lsl r0
 7f4:	83100e41 	tsthi	r0, #1040	; 0x410
 7f8:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 7fc:	00018e02 	andeq	r8, r1, r2, lsl #28
 800:	0000002c 	andeq	r0, r0, ip, lsr #32
 804:	00000794 	muleq	r0, r4, r7
 808:	000010bc 	strheq	r1, [r0], -ip
 80c:	0000022c 	andeq	r0, r0, ip, lsr #4
 810:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 814:	86088509 	strhi	r8, [r8], -r9, lsl #10
 818:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 81c:	8a048905 	bhi	122c38 <heap_size+0x102c38>
 820:	8e028b03 	vmlahi.f64	d8, d2, d3
 824:	980e4201 	stmdals	lr, {r0, r9, lr}
 828:	0a770201 	beq	1dc1034 <_end+0xdc1034>
 82c:	0b42240e 	bleq	108986c <_end+0x8986c>
 830:	0000000c 	andeq	r0, r0, ip
 834:	00000794 	muleq	r0, r4, r7
 838:	000012e8 	andeq	r1, r0, r8, ror #5
 83c:	00000014 	andeq	r0, r0, r4, lsl r0
 840:	0000000c 	andeq	r0, r0, ip
 844:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 848:	7c020001 	stcvc	0, cr0, [r2], {1}
 84c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 850:	00000020 	andeq	r0, r0, r0, lsr #32
 854:	00000840 	andeq	r0, r0, r0, asr #16
 858:	000012fc 	strdeq	r1, [r0], -ip
 85c:	000000f2 	strdeq	r0, [r0], -r2
 860:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 864:	86078508 	strhi	r8, [r7], -r8, lsl #10
 868:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 86c:	8a038904 	bhi	e2c84 <heap_size+0xc2c84>
 870:	00018e02 	andeq	r8, r1, r2, lsl #28
 874:	0000002c 	andeq	r0, r0, ip, lsr #32
 878:	00000840 	andeq	r0, r0, r0, asr #16
 87c:	000013f0 	strdeq	r1, [r0], -r0
 880:	00000238 	andeq	r0, r0, r8, lsr r2
 884:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 888:	86088509 	strhi	r8, [r8], -r9, lsl #10
 88c:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 890:	8a048905 	bhi	122cac <heap_size+0x102cac>
 894:	8e028b03 	vmlahi.f64	d8, d2, d3
 898:	380e4301 	stmdacc	lr, {r0, r8, r9, lr}
 89c:	0e0a9b02 	vmlaeq.f64	d9, d10, d2
 8a0:	000b4224 	andeq	r4, fp, r4, lsr #4
 8a4:	0000000c 	andeq	r0, r0, ip
 8a8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 8ac:	7c020001 	stcvc	0, cr0, [r2], {1}
 8b0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 8b4:	00000030 	andeq	r0, r0, r0, lsr r0
 8b8:	000008a4 	andeq	r0, r0, r4, lsr #17
 8bc:	00001628 	andeq	r1, r0, r8, lsr #12
 8c0:	000002a0 	andeq	r0, r0, r0, lsr #5
 8c4:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 8c8:	86088509 	strhi	r8, [r8], -r9, lsl #10
 8cc:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 8d0:	8a048905 	bhi	122cec <heap_size+0x102cec>
 8d4:	8e028b03 	vmlahi.f64	d8, d2, d3
 8d8:	b00e4201 	andlt	r4, lr, r1, lsl #4
 8dc:	01400305 	cmpeq	r0, r5, lsl #6
 8e0:	42240e0a 	eormi	r0, r4, #10, 28	; 0xa0
 8e4:	0000000b 	andeq	r0, r0, fp
 8e8:	00000028 	andeq	r0, r0, r8, lsr #32
 8ec:	000008a4 	andeq	r0, r0, r4, lsr #17
 8f0:	000018c8 	andeq	r1, r0, r8, asr #17
 8f4:	00000058 	andeq	r0, r0, r8, asr r0
 8f8:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 8fc:	86058506 	strhi	r8, [r5], -r6, lsl #10
 900:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 904:	55018e02 	strpl	r8, [r1, #-3586]	; 0xfffff1fe
 908:	c7c8ce0a 	strbgt	ip, [r8, sl, lsl #28]
 90c:	0ec4c5c6 	cdpeq	5, 12, cr12, cr4, cr6, {6}
 910:	000b4200 	andeq	r4, fp, r0, lsl #4
 914:	0000000c 	andeq	r0, r0, ip
 918:	000008a4 	andeq	r0, r0, r4, lsr #17
 91c:	00001920 	andeq	r1, r0, r0, lsr #18
 920:	00000014 	andeq	r0, r0, r4, lsl r0
 924:	00000028 	andeq	r0, r0, r8, lsr #32
 928:	000008a4 	andeq	r0, r0, r4, lsr #17
 92c:	00001934 	andeq	r1, r0, r4, lsr r9
 930:	00000050 	andeq	r0, r0, r0, asr r0
 934:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 938:	86058506 	strhi	r8, [r5], -r6, lsl #10
 93c:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 940:	53018e02 	movwpl	r8, #7682	; 0x1e02
 944:	c7c8ce0a 	strbgt	ip, [r8, sl, lsl #28]
 948:	0ec4c5c6 	cdpeq	5, 12, cr12, cr4, cr6, {6}
 94c:	000b4200 	andeq	r4, fp, r0, lsl #4
 950:	0000000c 	andeq	r0, r0, ip
 954:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 958:	7c020001 	stcvc	0, cr0, [r2], {1}
 95c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 960:	0000001c 	andeq	r0, r0, ip, lsl r0
 964:	00000950 	andeq	r0, r0, r0, asr r9
 968:	00001984 	andeq	r1, r0, r4, lsl #19
 96c:	000000ba 	strheq	r0, [r0], -sl
 970:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 974:	86058506 	strhi	r8, [r5], -r6, lsl #10
 978:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 97c:	00018e02 	andeq	r8, r1, r2, lsl #28
 980:	0000002c 	andeq	r0, r0, ip, lsr #32
 984:	00000950 	andeq	r0, r0, r0, asr r9
 988:	00001a40 	andeq	r1, r0, r0, asr #20
 98c:	000001ec 	andeq	r0, r0, ip, ror #3
 990:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 994:	86088509 	strhi	r8, [r8], -r9, lsl #10
 998:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 99c:	8a048905 	bhi	122db8 <heap_size+0x102db8>
 9a0:	8e028b03 	vmlahi.f64	d8, d2, d3
 9a4:	400e4601 	andmi	r4, lr, r1, lsl #12
 9a8:	0e0ad902 	vmlaeq.f16	s26, s20, s4	; <UNPREDICTABLE>
 9ac:	000b4224 	andeq	r4, fp, r4, lsr #4
 9b0:	0000000c 	andeq	r0, r0, ip
 9b4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 9b8:	7c020001 	stcvc	0, cr0, [r2], {1}
 9bc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 9c0:	00000018 	andeq	r0, r0, r8, lsl r0
 9c4:	000009b0 			; <UNDEFINED> instruction: 0x000009b0
 9c8:	00001c2c 	andeq	r1, r0, ip, lsr #24
 9cc:	00000024 	andeq	r0, r0, r4, lsr #32
 9d0:	83100e41 	tsthi	r0, #1040	; 0x410
 9d4:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 9d8:	00018e02 	andeq	r8, r1, r2, lsl #28
 9dc:	0000000c 	andeq	r0, r0, ip
 9e0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 9e4:	7c020001 	stcvc	0, cr0, [r2], {1}
 9e8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 9ec:	00000020 	andeq	r0, r0, r0, lsr #32
 9f0:	000009dc 	ldrdeq	r0, [r0], -ip
 9f4:	00001c50 	andeq	r1, r0, r0, asr ip
 9f8:	0000001a 	andeq	r0, r0, sl, lsl r0
 9fc:	83100e41 	tsthi	r0, #1040	; 0x410
 a00:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 a04:	4a018e02 	bmi	64214 <heap_size+0x44214>
 a08:	c3c4c5ce 	bicgt	ip, r4, #864026624	; 0x33800000
 a0c:	0000000e 	andeq	r0, r0, lr
 a10:	00000024 	andeq	r0, r0, r4, lsr #32
 a14:	000009dc 	ldrdeq	r0, [r0], -ip
 a18:	00001c6c 	andeq	r1, r0, ip, ror #24
 a1c:	000000b8 	strheq	r0, [r0], -r8
 a20:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 a24:	86038504 	strhi	r8, [r3], -r4, lsl #10
 a28:	02018e02 	andeq	r8, r1, #2, 28
 a2c:	c6ce0a41 	strbgt	r0, [lr], r1, asr #20
 a30:	000ec4c5 	andeq	ip, lr, r5, asr #9
 a34:	00000b42 	andeq	r0, r0, r2, asr #22
 a38:	0000000c 	andeq	r0, r0, ip
 a3c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 a40:	7c020001 	stcvc	0, cr0, [r2], {1}
 a44:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 a48:	0000000c 	andeq	r0, r0, ip
 a4c:	00000a38 	andeq	r0, r0, r8, lsr sl
 a50:	00001d24 	andeq	r1, r0, r4, lsr #26
 a54:	00000012 	andeq	r0, r0, r2, lsl r0
 a58:	0000001c 	andeq	r0, r0, ip, lsl r0
 a5c:	00000a38 	andeq	r0, r0, r8, lsr sl
 a60:	00001d38 	andeq	r1, r0, r8, lsr sp
 a64:	00000118 	andeq	r0, r0, r8, lsl r1
 a68:	83180e41 	tsthi	r8, #1040	; 0x410
 a6c:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 a70:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 a74:	00018e02 	andeq	r8, r1, r2, lsl #28
 a78:	0000000c 	andeq	r0, r0, ip
 a7c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 a80:	7c020001 	stcvc	0, cr0, [r2], {1}
 a84:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 a88:	00000018 	andeq	r0, r0, r8, lsl r0
 a8c:	00000a78 	andeq	r0, r0, r8, ror sl
 a90:	00001e50 	andeq	r1, r0, r0, asr lr
 a94:	00000062 	andeq	r0, r0, r2, rrx
 a98:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 a9c:	86038504 	strhi	r8, [r3], -r4, lsl #10
 aa0:	00018e02 	andeq	r8, r1, r2, lsl #28
 aa4:	0000000c 	andeq	r0, r0, ip
 aa8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 aac:	7c020001 	stcvc	0, cr0, [r2], {1}
 ab0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 ab4:	00000024 	andeq	r0, r0, r4, lsr #32
 ab8:	00000aa4 	andeq	r0, r0, r4, lsr #21
 abc:	00001eb2 			; <UNDEFINED> instruction: 0x00001eb2
 ac0:	0000010a 	andeq	r0, r0, sl, lsl #2
 ac4:	83280e42 			; <UNDEFINED> instruction: 0x83280e42
 ac8:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
 acc:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 ad0:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 ad4:	8b038a04 	blhi	e32ec <heap_size+0xc32ec>
 ad8:	00018e02 	andeq	r8, r1, r2, lsl #28
 adc:	00000018 	andeq	r0, r0, r8, lsl r0
 ae0:	00000aa4 	andeq	r0, r0, r4, lsr #21
 ae4:	00001fbc 			; <UNDEFINED> instruction: 0x00001fbc
 ae8:	00000024 	andeq	r0, r0, r4, lsr #32
 aec:	84180e41 	ldrhi	r0, [r8], #-3649	; 0xfffff1bf
 af0:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 af4:	0c0e4b01 			; <UNDEFINED> instruction: 0x0c0e4b01
 af8:	00000014 	andeq	r0, r0, r4, lsl r0
 afc:	00000aa4 	andeq	r0, r0, r4, lsr #21
 b00:	00001fe0 	andeq	r1, r0, r0, ror #31
 b04:	0000001c 	andeq	r0, r0, ip, lsl r0
 b08:	8e100e41 	cdphi	14, 1, cr0, cr0, cr1, {2}
 b0c:	040e4901 	streq	r4, [lr], #-2305	; 0xfffff6ff
 b10:	00000018 	andeq	r0, r0, r8, lsl r0
 b14:	00000aa4 	andeq	r0, r0, r4, lsr #21
 b18:	00001ffc 	strdeq	r1, [r0], -ip
 b1c:	0000002c 	andeq	r0, r0, ip, lsr #32
 b20:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 b24:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 b28:	0c0e4e01 	stceq	14, cr4, [lr], {1}
 b2c:	0000000c 	andeq	r0, r0, ip
 b30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 b34:	7c020001 	stcvc	0, cr0, [r2], {1}
 b38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 b3c:	00000024 	andeq	r0, r0, r4, lsr #32
 b40:	00000b2c 	andeq	r0, r0, ip, lsr #22
 b44:	00002028 	andeq	r2, r0, r8, lsr #32
 b48:	00000100 	andeq	r0, r0, r0, lsl #2
 b4c:	83280e42 			; <UNDEFINED> instruction: 0x83280e42
 b50:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
 b54:	87078608 	strhi	r8, [r7, -r8, lsl #12]
 b58:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
 b5c:	8b038a04 	blhi	e3374 <heap_size+0xc3374>
 b60:	00018e02 	andeq	r8, r1, r2, lsl #28
 b64:	00000018 	andeq	r0, r0, r8, lsl r0
 b68:	00000b2c 	andeq	r0, r0, ip, lsr #22
 b6c:	00002128 	andeq	r2, r0, r8, lsr #2
 b70:	00000024 	andeq	r0, r0, r4, lsr #32
 b74:	84180e41 	ldrhi	r0, [r8], #-3649	; 0xfffff1bf
 b78:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 b7c:	0c0e4b01 			; <UNDEFINED> instruction: 0x0c0e4b01
 b80:	00000014 	andeq	r0, r0, r4, lsl r0
 b84:	00000b2c 	andeq	r0, r0, ip, lsr #22
 b88:	0000214c 	andeq	r2, r0, ip, asr #2
 b8c:	0000001c 	andeq	r0, r0, ip, lsl r0
 b90:	8e100e41 	cdphi	14, 1, cr0, cr0, cr1, {2}
 b94:	040e4901 	streq	r4, [lr], #-2305	; 0xfffff6ff
 b98:	00000018 	andeq	r0, r0, r8, lsl r0
 b9c:	00000b2c 	andeq	r0, r0, ip, lsr #22
 ba0:	00002168 	andeq	r2, r0, r8, ror #2
 ba4:	0000002c 	andeq	r0, r0, ip, lsr #32
 ba8:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 bac:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 bb0:	0c0e4e01 	stceq	14, cr4, [lr], {1}
 bb4:	0000000c 	andeq	r0, r0, ip
 bb8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 bbc:	7c020001 	stcvc	0, cr0, [r2], {1}
 bc0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 bc4:	0000001c 	andeq	r0, r0, ip, lsl r0
 bc8:	00000bb4 			; <UNDEFINED> instruction: 0x00000bb4
 bcc:	00002194 	muleq	r0, r4, r1
 bd0:	0000006e 	andeq	r0, r0, lr, rrx
 bd4:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 bd8:	86058506 	strhi	r8, [r5], -r6, lsl #10
 bdc:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 be0:	00018e02 	andeq	r8, r1, r2, lsl #28
 be4:	00000018 	andeq	r0, r0, r8, lsl r0
 be8:	00000bb4 			; <UNDEFINED> instruction: 0x00000bb4
 bec:	00002204 	andeq	r2, r0, r4, lsl #4
 bf0:	000000e4 	andeq	r0, r0, r4, ror #1
 bf4:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 bf8:	86038504 	strhi	r8, [r3], -r4, lsl #10
 bfc:	00018e02 	andeq	r8, r1, r2, lsl #28
 c00:	0000000c 	andeq	r0, r0, ip
 c04:	00000bb4 			; <UNDEFINED> instruction: 0x00000bb4
 c08:	000022e8 	andeq	r2, r0, r8, ror #5
 c0c:	00000010 	andeq	r0, r0, r0, lsl r0
 c10:	0000000c 	andeq	r0, r0, ip
 c14:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 c18:	7c020001 	stcvc	0, cr0, [r2], {1}
 c1c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 c20:	00000018 	andeq	r0, r0, r8, lsl r0
 c24:	00000c10 	andeq	r0, r0, r0, lsl ip
 c28:	000022f8 	strdeq	r2, [r0], -r8
 c2c:	00000024 	andeq	r0, r0, r4, lsr #32
 c30:	83100e41 	tsthi	r0, #1040	; 0x410
 c34:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 c38:	00018e02 	andeq	r8, r1, r2, lsl #28
 c3c:	0000000c 	andeq	r0, r0, ip
 c40:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 c44:	7c020001 	stcvc	0, cr0, [r2], {1}
 c48:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 c4c:	00000028 	andeq	r0, r0, r8, lsr #32
 c50:	00000c3c 	andeq	r0, r0, ip, lsr ip
 c54:	0000231c 	andeq	r2, r0, ip, lsl r3
 c58:	000002a4 	andeq	r0, r0, r4, lsr #5
 c5c:	84300e43 	ldrthi	r0, [r0], #-3651	; 0xfffff1bd
 c60:	86088509 	strhi	r8, [r8], -r9, lsl #10
 c64:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 c68:	8a048905 	bhi	123084 <heap_size+0x103084>
 c6c:	8e028b03 	vmlahi.f64	d8, d2, d3
 c70:	0e0a4601 	cfmadd32eq	mvax0, mvfx4, mvfx10, mvfx1
 c74:	000b4224 	andeq	r4, fp, r4, lsr #4
 c78:	0000000c 	andeq	r0, r0, ip
 c7c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 c80:	7c020001 	stcvc	0, cr0, [r2], {1}
 c84:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 c88:	00000018 	andeq	r0, r0, r8, lsl r0
 c8c:	00000c78 	andeq	r0, r0, r8, ror ip
 c90:	000025c0 	andeq	r2, r0, r0, asr #11
 c94:	00000020 	andeq	r0, r0, r0, lsr #32
 c98:	83100e41 	tsthi	r0, #1040	; 0x410
 c9c:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
 ca0:	00018e02 	andeq	r8, r1, r2, lsl #28
 ca4:	0000000c 	andeq	r0, r0, ip
 ca8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 cac:	7c020001 	stcvc	0, cr0, [r2], {1}
 cb0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 cb4:	00000014 	andeq	r0, r0, r4, lsl r0
 cb8:	00000ca4 	andeq	r0, r0, r4, lsr #25
 cbc:	000025e0 	andeq	r2, r0, r0, ror #11
 cc0:	00000038 	andeq	r0, r0, r8, lsr r0
 cc4:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 cc8:	00018e02 	andeq	r8, r1, r2, lsl #28
 ccc:	0000000c 	andeq	r0, r0, ip
 cd0:	00000ca4 	andeq	r0, r0, r4, lsr #25
 cd4:	00002618 	andeq	r2, r0, r8, lsl r6
 cd8:	0000001c 	andeq	r0, r0, ip, lsl r0
 cdc:	0000000c 	andeq	r0, r0, ip
 ce0:	00000ca4 	andeq	r0, r0, r4, lsr #25
 ce4:	00002634 	andeq	r2, r0, r4, lsr r6
 ce8:	00000006 	andeq	r0, r0, r6
 cec:	0000000c 	andeq	r0, r0, ip
 cf0:	00000ca4 	andeq	r0, r0, r4, lsr #25
 cf4:	0000263c 	andeq	r2, r0, ip, lsr r6
 cf8:	0000001c 	andeq	r0, r0, ip, lsl r0
 cfc:	0000000c 	andeq	r0, r0, ip
 d00:	00000ca4 	andeq	r0, r0, r4, lsr #25
 d04:	00002658 	andeq	r2, r0, r8, asr r6
 d08:	00000010 	andeq	r0, r0, r0, lsl r0
 d0c:	0000000c 	andeq	r0, r0, ip
 d10:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 d14:	7c020001 	stcvc	0, cr0, [r2], {1}
 d18:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 d1c:	00000018 	andeq	r0, r0, r8, lsl r0
 d20:	00000d0c 	andeq	r0, r0, ip, lsl #26
 d24:	00002668 	andeq	r2, r0, r8, ror #12
 d28:	00000024 	andeq	r0, r0, r4, lsr #32
 d2c:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 d30:	4b018502 	blmi	62140 <heap_size+0x42140>
 d34:	000ec4c5 	andeq	ip, lr, r5, asr #9
 d38:	00000018 	andeq	r0, r0, r8, lsl r0
 d3c:	00000d0c 	andeq	r0, r0, ip, lsl #26
 d40:	0000268c 	andeq	r2, r0, ip, lsl #13
 d44:	00000024 	andeq	r0, r0, r4, lsr #32
 d48:	4b080e41 	blmi	204654 <heap_size+0x1e4654>
 d4c:	41000e0a 	tstmi	r0, sl, lsl #28
 d50:	0000000b 	andeq	r0, r0, fp
 d54:	0000000c 	andeq	r0, r0, ip
 d58:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 d5c:	7c020001 	stcvc	0, cr0, [r2], {1}
 d60:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 d64:	00000014 	andeq	r0, r0, r4, lsl r0
 d68:	00000d54 	andeq	r0, r0, r4, asr sp
 d6c:	000026b0 			; <UNDEFINED> instruction: 0x000026b0
 d70:	0000001c 	andeq	r0, r0, ip, lsl r0
 d74:	84080e43 	strhi	r0, [r8], #-3651	; 0xfffff1bd
 d78:	00018e02 	andeq	r8, r1, r2, lsl #28
 d7c:	0000000c 	andeq	r0, r0, ip
 d80:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 d84:	7c020001 	stcvc	0, cr0, [r2], {1}
 d88:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 d8c:	00000014 	andeq	r0, r0, r4, lsl r0
 d90:	00000d7c 	andeq	r0, r0, ip, ror sp
 d94:	000026cc 	andeq	r2, r0, ip, asr #13
 d98:	00000016 	andeq	r0, r0, r6, lsl r0
 d9c:	84080e43 	strhi	r0, [r8], #-3651	; 0xfffff1bd
 da0:	00018e02 	andeq	r8, r1, r2, lsl #28
 da4:	0000000c 	andeq	r0, r0, ip
 da8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 dac:	7c020001 	stcvc	0, cr0, [r2], {1}
 db0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 db4:	00000014 	andeq	r0, r0, r4, lsl r0
 db8:	00000da4 	andeq	r0, r0, r4, lsr #27
 dbc:	000026e2 	andeq	r2, r0, r2, ror #13
 dc0:	00000032 	andeq	r0, r0, r2, lsr r0
 dc4:	84080e44 	strhi	r0, [r8], #-3652	; 0xfffff1bc
 dc8:	00018e02 	andeq	r8, r1, r2, lsl #28
 dcc:	0000000c 	andeq	r0, r0, ip
 dd0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 dd4:	7c020001 	stcvc	0, cr0, [r2], {1}
 dd8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 ddc:	00000028 	andeq	r0, r0, r8, lsr #32
 de0:	00000dcc 	andeq	r0, r0, ip, asr #27
 de4:	00002714 	andeq	r2, r0, r4, lsl r7
 de8:	0000004c 	andeq	r0, r0, ip, asr #32
 dec:	83180e41 	tsthi	r8, #1040	; 0x410
 df0:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
 df4:	87038604 	strhi	r8, [r3, -r4, lsl #12]
 df8:	47018e02 	strmi	r8, [r1, -r2, lsl #28]
 dfc:	c6c7ce0a 	strbgt	ip, [r7], sl, lsl #28
 e00:	0ec3c4c5 	cdpeq	4, 12, cr12, cr3, cr5, {6}
 e04:	000b4200 	andeq	r4, fp, r0, lsl #4
 e08:	0000000c 	andeq	r0, r0, ip
 e0c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 e10:	7c020001 	stcvc	0, cr0, [r2], {1}
 e14:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 e18:	0000000c 	andeq	r0, r0, ip
 e1c:	00000e08 	andeq	r0, r0, r8, lsl #28
 e20:	00002760 	andeq	r2, r0, r0, ror #14
 e24:	00000014 	andeq	r0, r0, r4, lsl r0
 e28:	0000000c 	andeq	r0, r0, ip
 e2c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 e30:	7c020001 	stcvc	0, cr0, [r2], {1}
 e34:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 e38:	00000018 	andeq	r0, r0, r8, lsl r0
 e3c:	00000e28 	andeq	r0, r0, r8, lsr #28
 e40:	00002774 	andeq	r2, r0, r4, ror r7
 e44:	00000024 	andeq	r0, r0, r4, lsr #32
 e48:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
 e4c:	4b018502 	blmi	6225c <heap_size+0x4225c>
 e50:	000ec4c5 	andeq	ip, lr, r5, asr #9
 e54:	0000000c 	andeq	r0, r0, ip
 e58:	00000e28 	andeq	r0, r0, r8, lsr #28
 e5c:	00002798 	muleq	r0, r8, r7
 e60:	0000001a 	andeq	r0, r0, sl, lsl r0
 e64:	0000000c 	andeq	r0, r0, ip
 e68:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 e6c:	7c020001 	stcvc	0, cr0, [r2], {1}
 e70:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 e74:	0000000c 	andeq	r0, r0, ip
 e78:	00000e64 	andeq	r0, r0, r4, ror #28
 e7c:	000027b2 			; <UNDEFINED> instruction: 0x000027b2
 e80:	00000010 	andeq	r0, r0, r0, lsl r0
 e84:	0000000c 	andeq	r0, r0, ip
 e88:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 e8c:	7c010001 	stcvc	0, cr0, [r1], {1}
 e90:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 e94:	0000000c 	andeq	r0, r0, ip
 e98:	00000e84 	andeq	r0, r0, r4, lsl #29
 e9c:	000027c9 	andeq	r2, r0, r9, asr #15
 ea0:	0000025c 	andeq	r0, r0, ip, asr r2
 ea4:	0000000c 	andeq	r0, r0, ip
 ea8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 eac:	7c010001 	stcvc	0, cr0, [r1], {1}
 eb0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 eb4:	0000000c 	andeq	r0, r0, ip
 eb8:	00000ea4 	andeq	r0, r0, r4, lsr #29
 ebc:	00002a41 	andeq	r2, r0, r1, asr #20
 ec0:	00000294 	muleq	r0, r4, r2
 ec4:	0000000c 	andeq	r0, r0, ip
 ec8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 ecc:	7c020001 	stcvc	0, cr0, [r2], {1}
 ed0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 ed4:	0000000c 	andeq	r0, r0, ip
 ed8:	00000ec4 	andeq	r0, r0, r4, asr #29
 edc:	00002cf4 	strdeq	r2, [r0], -r4
 ee0:	00000012 	andeq	r0, r0, r2, lsl r0
 ee4:	0000000c 	andeq	r0, r0, ip
 ee8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 eec:	7c020001 	stcvc	0, cr0, [r2], {1}
 ef0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 ef4:	0000000c 	andeq	r0, r0, ip
 ef8:	00000ee4 	andeq	r0, r0, r4, ror #29
 efc:	00002d08 	andeq	r2, r0, r8, lsl #26
 f00:	00000012 	andeq	r0, r0, r2, lsl r0
 f04:	0000000c 	andeq	r0, r0, ip
 f08:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 f0c:	7c020001 	stcvc	0, cr0, [r2], {1}
 f10:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 f14:	0000000c 	andeq	r0, r0, ip
 f18:	00000f04 	andeq	r0, r0, r4, lsl #30
 f1c:	00002d1c 	andeq	r2, r0, ip, lsl sp
 f20:	00000010 	andeq	r0, r0, r0, lsl r0
 f24:	0000000c 	andeq	r0, r0, ip
 f28:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 f2c:	7c020001 	stcvc	0, cr0, [r2], {1}
 f30:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 f34:	0000000c 	andeq	r0, r0, ip
 f38:	00000f24 	andeq	r0, r0, r4, lsr #30
 f3c:	00002d2c 	andeq	r2, r0, ip, lsr #26
 f40:	00000012 	andeq	r0, r0, r2, lsl r0
 f44:	0000000c 	andeq	r0, r0, ip
 f48:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 f4c:	7c020001 	stcvc	0, cr0, [r2], {1}
 f50:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 f54:	0000000c 	andeq	r0, r0, ip
 f58:	00000f44 	andeq	r0, r0, r4, asr #30
 f5c:	00002d40 	andeq	r2, r0, r0, asr #26
 f60:	00000020 	andeq	r0, r0, r0, lsr #32
 f64:	0000000c 	andeq	r0, r0, ip
 f68:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 f6c:	7c020001 	stcvc	0, cr0, [r2], {1}
 f70:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 f74:	0000000c 	andeq	r0, r0, ip
 f78:	00000f64 	andeq	r0, r0, r4, ror #30
 f7c:	00002d60 	andeq	r2, r0, r0, ror #26
 f80:	00000002 	andeq	r0, r0, r2

Disassembly of section .stab:

00000000 <.stab>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00080000 	andeq	r0, r8, r0
   8:	000000e3 	andeq	r0, r0, r3, ror #1
   c:	00000009 	andeq	r0, r0, r9
  10:	0000001e 	andeq	r0, r0, lr, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00000038 	andeq	r0, r0, r8, lsr r0
  1c:	00000001 	andeq	r0, r0, r1
  20:	00000000 	andeq	r0, r0, r0
  24:	0000003f 	andeq	r0, r0, pc, lsr r0
  28:	0000001e 	andeq	r0, r0, lr, lsl r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0000006e 	andeq	r0, r0, lr, rrx
  34:	00000001 	andeq	r0, r0, r1
  38:	00000000 	andeq	r0, r0, r0
  3c:	00000075 	andeq	r0, r0, r5, ror r0
  40:	0000001e 	andeq	r0, r0, lr, lsl r0
  44:	00000000 	andeq	r0, r0, r0
  48:	000000a5 	andeq	r0, r0, r5, lsr #1
  4c:	00000001 	andeq	r0, r0, r1
  50:	00000000 	andeq	r0, r0, r0
  54:	000000ad 	andeq	r0, r0, sp, lsr #1
  58:	0000001e 	andeq	r0, r0, lr, lsl r0
  5c:	00000000 	andeq	r0, r0, r0
  60:	000000dc 	ldrdeq	r0, [r0], -ip
  64:	00000001 	andeq	r0, r0, r1
  68:	00000000 	andeq	r0, r0, r0

Disassembly of section .stabstr:

00000000 <.stabstr>:
   0:	6f6c6300 	svcvs	0x006c6300
   4:	632e6573 			; <UNDEFINED> instruction: 0x632e6573
   8:	6c635f00 	stclvs	15, cr5, [r3], #-0
   c:	2065736f 	rsbcs	r7, r5, pc, ror #6
  10:	6e207369 	cdpvs	3, 2, cr7, cr0, cr9, {3}
  14:	6920746f 	stmdbvs	r0!, {r0, r1, r2, r3, r5, r6, sl, ip, sp, lr}
  18:	656c706d 	strbvs	r7, [ip, #-109]!	; 0xffffff93
  1c:	746e656d 	strbtvc	r6, [lr], #-1389	; 0xfffffa93
  20:	61206465 			; <UNDEFINED> instruction: 0x61206465
  24:	7720646e 	strvc	r6, [r0, -lr, ror #8]!
  28:	206c6c69 	rsbcs	r6, ip, r9, ror #24
  2c:	61776c61 	cmnvs	r7, r1, ror #24
  30:	66207379 			; <UNDEFINED> instruction: 0x66207379
  34:	006c6961 	rsbeq	r6, ip, r1, ror #18
  38:	6f6c635f 	svcvs	0x006c635f
  3c:	5f006573 	svcpl	0x00006573
  40:	61747366 	cmnvs	r4, r6, ror #6
  44:	73692074 	cmnvc	r9, #116	; 0x74
  48:	746f6e20 	strbtvc	r6, [pc], #-3616	; 50 <Undefined_Handler+0xc>
  4c:	706d6920 	rsbvc	r6, sp, r0, lsr #18
  50:	656d656c 	strbvs	r6, [sp, #-1388]!	; 0xfffffa94
  54:	6465746e 	strbtvs	r7, [r5], #-1134	; 0xfffffb92
  58:	646e6120 	strbtvs	r6, [lr], #-288	; 0xfffffee0
  5c:	6c697720 	stclvs	7, cr7, [r9], #-128	; 0xffffff80
  60:	6c61206c 	stclvs	0, cr2, [r1], #-432	; 0xfffffe50
  64:	73796177 	cmnvc	r9, #-1073741795	; 0xc000001d
  68:	69616620 	stmdbvs	r1!, {r5, r9, sl, sp, lr}^
  6c:	665f006c 	ldrbvs	r0, [pc], -ip, rrx
  70:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
  74:	73695f00 	cmnvc	r9, #0, 30
  78:	79747461 	ldmdbvc	r4!, {r0, r5, r6, sl, ip, sp, lr}^
  7c:	20736920 	rsbscs	r6, r3, r0, lsr #18
  80:	20746f6e 	rsbscs	r6, r4, lr, ror #30
  84:	6c706d69 	ldclvs	13, cr6, [r0], #-420	; 0xfffffe5c
  88:	6e656d65 	cdpvs	13, 6, cr6, cr5, cr5, {3}
  8c:	20646574 	rsbcs	r6, r4, r4, ror r5
  90:	20646e61 	rsbcs	r6, r4, r1, ror #28
  94:	6c6c6977 			; <UNDEFINED> instruction: 0x6c6c6977
  98:	776c6120 	strbvc	r6, [ip, -r0, lsr #2]!
  9c:	20737961 	rsbscs	r7, r3, r1, ror #18
  a0:	6c696166 	stfvse	f6, [r9], #-408	; 0xfffffe68
  a4:	73695f00 	cmnvc	r9, #0, 30
  a8:	79747461 	ldmdbvc	r4!, {r0, r5, r6, sl, ip, sp, lr}^
  ac:	736c5f00 	cmnvc	ip, #0, 30
  b0:	206b6565 	rsbcs	r6, fp, r5, ror #10
  b4:	6e207369 	cdpvs	3, 2, cr7, cr0, cr9, {3}
  b8:	6920746f 	stmdbvs	r0!, {r0, r1, r2, r3, r5, r6, sl, ip, sp, lr}
  bc:	656c706d 	strbvs	r7, [ip, #-109]!	; 0xffffff93
  c0:	746e656d 	strbtvc	r6, [lr], #-1389	; 0xfffffa93
  c4:	61206465 			; <UNDEFINED> instruction: 0x61206465
  c8:	7720646e 	strvc	r6, [r0, -lr, ror #8]!
  cc:	206c6c69 	rsbcs	r6, ip, r9, ror #24
  d0:	61776c61 	cmnvs	r7, r1, ror #24
  d4:	66207379 			; <UNDEFINED> instruction: 0x66207379
  d8:	006c6961 	rsbeq	r6, ip, r1, ror #18
  dc:	65736c5f 	ldrbvs	r6, [r3, #-3167]!	; 0xfffff3a1
  e0:	Address 0x000000e0 is out of bounds.

