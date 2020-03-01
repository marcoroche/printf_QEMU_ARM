
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
      82:	f243 741c 	movw	r4, #14108	; 0x371c
      86:	f2c0 0400 	movt	r4, #0
      8a:	7823      	ldrb	r3, [r4, #0]
      8c:	b963      	cbnz	r3, a8 <__do_global_dtors_aux+0x28>
      8e:	f240 0300 	movw	r3, #0
      92:	f2c0 0300 	movt	r3, #0
      96:	b12b      	cbz	r3, a4 <__do_global_dtors_aux+0x24>
      98:	f243 7010 	movw	r0, #14096	; 0x3710
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
      b8:	f243 7120 	movw	r1, #14112	; 0x3720
      bc:	f243 7010 	movw	r0, #14096	; 0x3710
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
      ea:	f000 fd7d 	bl	be8 <memset>
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
     112:	f000 fd35 	bl	b80 <__libc_init_array>
     116:	0020      	movs	r0, r4
     118:	0029      	movs	r1, r5
     11a:	f000 ea54 	blx	5c4 <main>
     11e:	f000 fbc7 	bl	8b0 <exit>
     122:	bf00      	nop
     124:	00080000 	andeq	r0, r8, r0
     128:	07fffff8 			; <UNDEFINED> instruction: 0x07fffff8
     12c:	00000568 	andeq	r0, r0, r8, ror #10
     130:	000005ac 	andeq	r0, r0, ip, lsr #11
     134:	0000370e 	andeq	r3, r0, lr, lsl #14
     138:	000037f0 	strdeq	r3, [r0], -r0
	...

00000144 <_write>:
     144:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     148:	e24dd01c 	sub	sp, sp, #28
     14c:	e58d000c 	str	r0, [sp, #12]
     150:	e58d1008 	str	r1, [sp, #8]
     154:	e58d2004 	str	r2, [sp, #4]
     158:	e59d300c 	ldr	r3, [sp, #12]
     15c:	e3530001 	cmp	r3, #1
     160:	0a000002 	beq	170 <_write+0x2c>
     164:	e3530002 	cmp	r3, #2
     168:	0a000012 	beq	1b8 <_write+0x74>
     16c:	ea000024 	b	204 <_write+0xc0>
     170:	e3a03000 	mov	r3, #0
     174:	e58d3014 	str	r3, [sp, #20]
     178:	ea000009 	b	1a4 <_write+0x60>
     17c:	e59d3008 	ldr	r3, [sp, #8]
     180:	e2832001 	add	r2, r3, #1
     184:	e58d2008 	str	r2, [sp, #8]
     188:	e5d33000 	ldrb	r3, [r3]
     18c:	e1a01003 	mov	r1, r3
     190:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     194:	eb0000c6 	bl	4b4 <Zynq7000_UART_SENDCHAR>
     198:	e59d3014 	ldr	r3, [sp, #20]
     19c:	e2833001 	add	r3, r3, #1
     1a0:	e58d3014 	str	r3, [sp, #20]
     1a4:	e59d2014 	ldr	r2, [sp, #20]
     1a8:	e59d3004 	ldr	r3, [sp, #4]
     1ac:	e1520003 	cmp	r2, r3
     1b0:	bafffff1 	blt	17c <_write+0x38>
     1b4:	ea000018 	b	21c <_write+0xd8>
     1b8:	e3a03000 	mov	r3, #0
     1bc:	e58d3014 	str	r3, [sp, #20]
     1c0:	ea00000a 	b	1f0 <_write+0xac>
     1c4:	e59d3008 	ldr	r3, [sp, #8]
     1c8:	e2832001 	add	r2, r3, #1
     1cc:	e58d2008 	str	r2, [sp, #8]
     1d0:	e5d33000 	ldrb	r3, [r3]
     1d4:	e1a01003 	mov	r1, r3
     1d8:	e3a00a01 	mov	r0, #4096	; 0x1000
     1dc:	e34e0000 	movt	r0, #57344	; 0xe000
     1e0:	eb0000b3 	bl	4b4 <Zynq7000_UART_SENDCHAR>
     1e4:	e59d3014 	ldr	r3, [sp, #20]
     1e8:	e2833001 	add	r3, r3, #1
     1ec:	e58d3014 	str	r3, [sp, #20]
     1f0:	e59d2014 	ldr	r2, [sp, #20]
     1f4:	e59d3004 	ldr	r3, [sp, #4]
     1f8:	e1520003 	cmp	r2, r3
     1fc:	bafffff0 	blt	1c4 <_write+0x80>
     200:	ea000005 	b	21c <_write+0xd8>
     204:	fa0001a6 	blx	8a4 <__errno>
     208:	e1a02000 	mov	r2, r0
     20c:	e3a03009 	mov	r3, #9
     210:	e5823000 	str	r3, [r2]
     214:	e3e03000 	mvn	r3, #0
     218:	ea000000 	b	220 <_write+0xdc>
     21c:	e59d3004 	ldr	r3, [sp, #4]
     220:	e1a00003 	mov	r0, r3
     224:	e28dd01c 	add	sp, sp, #28
     228:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0000022c <_read>:
     22c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     230:	e24dd024 	sub	sp, sp, #36	; 0x24
     234:	e58d000c 	str	r0, [sp, #12]
     238:	e58d1008 	str	r1, [sp, #8]
     23c:	e58d2004 	str	r2, [sp, #4]
     240:	e3a03000 	mov	r3, #0
     244:	e58d3018 	str	r3, [sp, #24]
     248:	e59d300c 	ldr	r3, [sp, #12]
     24c:	e3530000 	cmp	r3, #0
     250:	1a00003b 	bne	344 <_read+0x118>
     254:	e3a03000 	mov	r3, #0
     258:	e58d301c 	str	r3, [sp, #28]
     25c:	ea00002f 	b	320 <_read+0xf4>
     260:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     264:	eb0000a3 	bl	4f8 <Zynq7000_UART_GETCHAR>
     268:	e1a03000 	mov	r3, r0
     26c:	e5cd3017 	strb	r3, [sp, #23]
     270:	e5dd3017 	ldrb	r3, [sp, #23]
     274:	e1a01003 	mov	r1, r3
     278:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     27c:	eb00008c 	bl	4b4 <Zynq7000_UART_SENDCHAR>
     280:	e59d3008 	ldr	r3, [sp, #8]
     284:	e2832001 	add	r2, r3, #1
     288:	e58d2008 	str	r2, [sp, #8]
     28c:	e5dd2017 	ldrb	r2, [sp, #23]
     290:	e5c32000 	strb	r2, [r3]
     294:	e59d3018 	ldr	r3, [sp, #24]
     298:	e2833001 	add	r3, r3, #1
     29c:	e58d3018 	str	r3, [sp, #24]
     2a0:	e5dd3017 	ldrb	r3, [sp, #23]
     2a4:	e353000d 	cmp	r3, #13
     2a8:	1a000015 	bne	304 <_read+0xd8>
     2ac:	e59d301c 	ldr	r3, [sp, #28]
     2b0:	e2833001 	add	r3, r3, #1
     2b4:	e58d301c 	str	r3, [sp, #28]
     2b8:	e59d201c 	ldr	r2, [sp, #28]
     2bc:	e59d3004 	ldr	r3, [sp, #4]
     2c0:	e1520003 	cmp	r2, r3
     2c4:	aa00001a 	bge	334 <_read+0x108>
     2c8:	e3a0300a 	mov	r3, #10
     2cc:	e5cd3017 	strb	r3, [sp, #23]
     2d0:	e5dd3017 	ldrb	r3, [sp, #23]
     2d4:	e1a01003 	mov	r1, r3
     2d8:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     2dc:	eb000074 	bl	4b4 <Zynq7000_UART_SENDCHAR>
     2e0:	e59d3008 	ldr	r3, [sp, #8]
     2e4:	e2832001 	add	r2, r3, #1
     2e8:	e58d2008 	str	r2, [sp, #8]
     2ec:	e3a0200a 	mov	r2, #10
     2f0:	e5c32000 	strb	r2, [r3]
     2f4:	e59d3018 	ldr	r3, [sp, #24]
     2f8:	e2833001 	add	r3, r3, #1
     2fc:	e58d3018 	str	r3, [sp, #24]
     300:	ea00000b 	b	334 <_read+0x108>
     304:	e5dd3017 	ldrb	r3, [sp, #23]
     308:	e353000a 	cmp	r3, #10
     30c:	0a00000a 	beq	33c <_read+0x110>
     310:	e320f000 	nop	{0}
     314:	e59d301c 	ldr	r3, [sp, #28]
     318:	e2833001 	add	r3, r3, #1
     31c:	e58d301c 	str	r3, [sp, #28]
     320:	e59d201c 	ldr	r2, [sp, #28]
     324:	e59d3004 	ldr	r3, [sp, #4]
     328:	e1520003 	cmp	r2, r3
     32c:	baffffcb 	blt	260 <_read+0x34>
     330:	ea000009 	b	35c <_read+0x130>
     334:	e320f000 	nop	{0}
     338:	ea000007 	b	35c <_read+0x130>
     33c:	e320f000 	nop	{0}
     340:	ea000005 	b	35c <_read+0x130>
     344:	fa000156 	blx	8a4 <__errno>
     348:	e1a02000 	mov	r2, r0
     34c:	e3a03009 	mov	r3, #9
     350:	e5823000 	str	r3, [r2]
     354:	e3e03000 	mvn	r3, #0
     358:	ea000000 	b	360 <_read+0x134>
     35c:	e59d3018 	ldr	r3, [sp, #24]
     360:	e1a00003 	mov	r0, r3
     364:	e28dd024 	add	sp, sp, #36	; 0x24
     368:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0000036c <Console>:
     36c:	e92d000e 	push	{r1, r2, r3}
     370:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     374:	e24dd010 	sub	sp, sp, #16
     378:	e58d0004 	str	r0, [sp, #4]
     37c:	e28d3018 	add	r3, sp, #24
     380:	e58d3008 	str	r3, [sp, #8]
     384:	e3a03000 	mov	r3, #0
     388:	e58d300c 	str	r3, [sp, #12]
     38c:	e59d3004 	ldr	r3, [sp, #4]
     390:	e2433001 	sub	r3, r3, #1
     394:	e3530003 	cmp	r3, #3
     398:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     39c:	ea000013 	b	3f0 <Console+0x84>
     3a0:	000003b0 			; <UNDEFINED> instruction: 0x000003b0
     3a4:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     3a8:	000003c0 	andeq	r0, r0, r0, asr #7
     3ac:	000003e0 	andeq	r0, r0, r0, ror #7
     3b0:	e30330e0 	movw	r3, #12512	; 0x30e0
     3b4:	e3403000 	movt	r3, #0
     3b8:	e58d300c 	str	r3, [sp, #12]
     3bc:	ea00000f 	b	400 <Console+0x94>
     3c0:	e30330ec 	movw	r3, #12524	; 0x30ec
     3c4:	e3403000 	movt	r3, #0
     3c8:	e58d300c 	str	r3, [sp, #12]
     3cc:	ea00000b 	b	400 <Console+0x94>
     3d0:	e30330fc 	movw	r3, #12540	; 0x30fc
     3d4:	e3403000 	movt	r3, #0
     3d8:	e58d300c 	str	r3, [sp, #12]
     3dc:	ea000007 	b	400 <Console+0x94>
     3e0:	e303310c 	movw	r3, #12556	; 0x310c
     3e4:	e3403000 	movt	r3, #0
     3e8:	e58d300c 	str	r3, [sp, #12]
     3ec:	ea000003 	b	400 <Console+0x94>
     3f0:	e303311c 	movw	r3, #12572	; 0x311c
     3f4:	e3403000 	movt	r3, #0
     3f8:	e58d300c 	str	r3, [sp, #12]
     3fc:	e320f000 	nop	{0}
     400:	e3033168 	movw	r3, #12648	; 0x3168
     404:	e3403000 	movt	r3, #0
     408:	e5933000 	ldr	r3, [r3]
     40c:	e593300c 	ldr	r3, [r3, #12]
     410:	e59d100c 	ldr	r1, [sp, #12]
     414:	e1a00003 	mov	r0, r3
     418:	fa0001b2 	blx	ae8 <fiprintf>
     41c:	e3033168 	movw	r3, #12648	; 0x3168
     420:	e3403000 	movt	r3, #0
     424:	e5933000 	ldr	r3, [r3]
     428:	e593300c 	ldr	r3, [r3, #12]
     42c:	e59d2008 	ldr	r2, [sp, #8]
     430:	e59d1014 	ldr	r1, [sp, #20]
     434:	e1a00003 	mov	r0, r3
     438:	fa0002e7 	blx	fdc <vfiprintf>
     43c:	e3033168 	movw	r3, #12648	; 0x3168
     440:	e3403000 	movt	r3, #0
     444:	e5933000 	ldr	r3, [r3]
     448:	e593300c 	ldr	r3, [r3, #12]
     44c:	e3031340 	movw	r1, #13120	; 0x3340
     450:	e3401000 	movt	r1, #0
     454:	e1a00003 	mov	r0, r3
     458:	fa0001a2 	blx	ae8 <fiprintf>
     45c:	e320f000 	nop	{0}
     460:	e28dd010 	add	sp, sp, #16
     464:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     468:	e28dd00c 	add	sp, sp, #12
     46c:	e12fff1e 	bx	lr

00000470 <UartEnable>:
     470:	e24dd010 	sub	sp, sp, #16
     474:	e58d0004 	str	r0, [sp, #4]
     478:	e59d3004 	ldr	r3, [sp, #4]
     47c:	e5933000 	ldr	r3, [r3]
     480:	e58d300c 	str	r3, [sp, #12]
     484:	e59d300c 	ldr	r3, [sp, #12]
     488:	e3c3303c 	bic	r3, r3, #60	; 0x3c
     48c:	e58d300c 	str	r3, [sp, #12]
     490:	e59d300c 	ldr	r3, [sp, #12]
     494:	e3833014 	orr	r3, r3, #20
     498:	e58d300c 	str	r3, [sp, #12]
     49c:	e59d3004 	ldr	r3, [sp, #4]
     4a0:	e59d200c 	ldr	r2, [sp, #12]
     4a4:	e5832000 	str	r2, [r3]
     4a8:	e320f000 	nop	{0}
     4ac:	e28dd010 	add	sp, sp, #16
     4b0:	e12fff1e 	bx	lr

000004b4 <Zynq7000_UART_SENDCHAR>:
     4b4:	e24dd008 	sub	sp, sp, #8
     4b8:	e58d0004 	str	r0, [sp, #4]
     4bc:	e1a03001 	mov	r3, r1
     4c0:	e5cd3003 	strb	r3, [sp, #3]
     4c4:	e320f000 	nop	{0}
     4c8:	e59d3004 	ldr	r3, [sp, #4]
     4cc:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
     4d0:	e2033010 	and	r3, r3, #16
     4d4:	e3530000 	cmp	r3, #0
     4d8:	1afffffa 	bne	4c8 <Zynq7000_UART_SENDCHAR+0x14>
     4dc:	e5dd2003 	ldrb	r2, [sp, #3]
     4e0:	e59d3004 	ldr	r3, [sp, #4]
     4e4:	e5832030 	str	r2, [r3, #48]	; 0x30
     4e8:	e5dd3003 	ldrb	r3, [sp, #3]
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e28dd008 	add	sp, sp, #8
     4f4:	e12fff1e 	bx	lr

000004f8 <Zynq7000_UART_GETCHAR>:
     4f8:	e24dd010 	sub	sp, sp, #16
     4fc:	e58d0004 	str	r0, [sp, #4]
     500:	e59d3004 	ldr	r3, [sp, #4]
     504:	e5933014 	ldr	r3, [r3, #20]
     508:	e2033001 	and	r3, r3, #1
     50c:	e3530000 	cmp	r3, #0
     510:	0a000007 	beq	534 <Zynq7000_UART_GETCHAR+0x3c>
     514:	e59d3004 	ldr	r3, [sp, #4]
     518:	e5933030 	ldr	r3, [r3, #48]	; 0x30
     51c:	e5cd300e 	strb	r3, [sp, #14]
     520:	e59d3004 	ldr	r3, [sp, #4]
     524:	e3a02005 	mov	r2, #5
     528:	e5832014 	str	r2, [r3, #20]
     52c:	e5dd300e 	ldrb	r3, [sp, #14]
     530:	ea000009 	b	55c <Zynq7000_UART_GETCHAR+0x64>
     534:	e320f000 	nop	{0}
     538:	e59d3004 	ldr	r3, [sp, #4]
     53c:	e593302c 	ldr	r3, [r3, #44]	; 0x2c
     540:	e2033002 	and	r3, r3, #2
     544:	e3530002 	cmp	r3, #2
     548:	0afffffa 	beq	538 <Zynq7000_UART_GETCHAR+0x40>
     54c:	e59d3004 	ldr	r3, [sp, #4]
     550:	e5933030 	ldr	r3, [r3, #48]	; 0x30
     554:	e5cd300f 	strb	r3, [sp, #15]
     558:	e5dd300f 	ldrb	r3, [sp, #15]
     55c:	e1a00003 	mov	r0, r3
     560:	e28dd010 	add	sp, sp, #16
     564:	e12fff1e 	bx	lr

00000568 <hardware_init_hook>:
     568:	e92d4010 	push	{r4, lr}
     56c:	e3a0020e 	mov	r0, #-536870912	; 0xe0000000
     570:	ebffffbe 	bl	470 <UartEnable>
     574:	e3a00a01 	mov	r0, #4096	; 0x1000
     578:	e34e0000 	movt	r0, #57344	; 0xe000
     57c:	ebffffbb 	bl	470 <UartEnable>
     580:	e3030348 	movw	r0, #13128	; 0x3348
     584:	e3400000 	movt	r0, #0
     588:	fa0003a7 	blx	142c <puts>
     58c:	e3030368 	movw	r0, #13160	; 0x3368
     590:	e3400000 	movt	r0, #0
     594:	fa0003a4 	blx	142c <puts>
     598:	e3030388 	movw	r0, #13192	; 0x3388
     59c:	e3400000 	movt	r0, #0
     5a0:	fa0003a1 	blx	142c <puts>
     5a4:	e320f000 	nop	{0}
     5a8:	e8bd8010 	pop	{r4, pc}

000005ac <software_init_hook>:
     5ac:	e92d4010 	push	{r4, lr}
     5b0:	e3030388 	movw	r0, #13192	; 0x3388
     5b4:	e3400000 	movt	r0, #0
     5b8:	fa00039b 	blx	142c <puts>
     5bc:	e320f000 	nop	{0}
     5c0:	e8bd8010 	pop	{r4, pc}

000005c4 <main>:
     5c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     5c8:	e24dd054 	sub	sp, sp, #84	; 0x54
     5cc:	e3a00a32 	mov	r0, #204800	; 0x32000
     5d0:	fa00017c 	blx	bc8 <malloc>
     5d4:	e1a02000 	mov	r2, r0
     5d8:	e3033748 	movw	r3, #14152	; 0x3748
     5dc:	e3403000 	movt	r3, #0
     5e0:	e5832000 	str	r2, [r3]
     5e4:	e30303b4 	movw	r0, #13236	; 0x33b4
     5e8:	e3400000 	movt	r0, #0
     5ec:	fa000354 	blx	1344 <iprintf>
     5f0:	e30303bc 	movw	r0, #13244	; 0x33bc
     5f4:	e3400000 	movt	r0, #0
     5f8:	fa00038b 	blx	142c <puts>
     5fc:	e3033168 	movw	r3, #12648	; 0x3168
     600:	e3403000 	movt	r3, #0
     604:	e5933000 	ldr	r3, [r3]
     608:	e5933004 	ldr	r3, [r3, #4]
     60c:	e58d3000 	str	r3, [sp]
     610:	e3032508 	movw	r2, #13576	; 0x3508
     614:	e3402000 	movt	r2, #0
     618:	e28d3004 	add	r3, sp, #4
     61c:	e8920003 	ldm	r2, {r0, r1}
     620:	e5830000 	str	r0, [r3]
     624:	e2833004 	add	r3, r3, #4
     628:	e1c310b0 	strh	r1, [r3]
     62c:	e28d300a 	add	r3, sp, #10
     630:	e3a02000 	mov	r2, #0
     634:	e5832000 	str	r2, [r3]
     638:	e5832004 	str	r2, [r3, #4]
     63c:	e5832008 	str	r2, [r3, #8]
     640:	e1c320bc 	strh	r2, [r3, #12]
     644:	e3033168 	movw	r3, #12648	; 0x3168
     648:	e3403000 	movt	r3, #0
     64c:	e5933000 	ldr	r3, [r3]
     650:	e5933008 	ldr	r3, [r3, #8]
     654:	e58d3018 	str	r3, [sp, #24]
     658:	e303251c 	movw	r2, #13596	; 0x351c
     65c:	e3402000 	movt	r2, #0
     660:	e28d301c 	add	r3, sp, #28
     664:	e8920003 	ldm	r2, {r0, r1}
     668:	e5830000 	str	r0, [r3]
     66c:	e2833004 	add	r3, r3, #4
     670:	e1c310b0 	strh	r1, [r3]
     674:	e2833002 	add	r3, r3, #2
     678:	e1a02821 	lsr	r2, r1, #16
     67c:	e5c32000 	strb	r2, [r3]
     680:	e28d3023 	add	r3, sp, #35	; 0x23
     684:	e3a02000 	mov	r2, #0
     688:	e5832000 	str	r2, [r3]
     68c:	e5832004 	str	r2, [r3, #4]
     690:	e5832008 	str	r2, [r3, #8]
     694:	e5c3200c 	strb	r2, [r3, #12]
     698:	e3033168 	movw	r3, #12648	; 0x3168
     69c:	e3403000 	movt	r3, #0
     6a0:	e5933000 	ldr	r3, [r3]
     6a4:	e593300c 	ldr	r3, [r3, #12]
     6a8:	e58d3030 	str	r3, [sp, #48]	; 0x30
     6ac:	e3032530 	movw	r2, #13616	; 0x3530
     6b0:	e3402000 	movt	r2, #0
     6b4:	e28d3034 	add	r3, sp, #52	; 0x34
     6b8:	e8920003 	ldm	r2, {r0, r1}
     6bc:	e5830000 	str	r0, [r3]
     6c0:	e2833004 	add	r3, r3, #4
     6c4:	e1c310b0 	strh	r1, [r3]
     6c8:	e2833002 	add	r3, r3, #2
     6cc:	e1a02821 	lsr	r2, r1, #16
     6d0:	e5c32000 	strb	r2, [r3]
     6d4:	e28d303b 	add	r3, sp, #59	; 0x3b
     6d8:	e3a02000 	mov	r2, #0
     6dc:	e5832000 	str	r2, [r3]
     6e0:	e5832004 	str	r2, [r3, #4]
     6e4:	e5832008 	str	r2, [r3, #8]
     6e8:	e5c3200c 	strb	r2, [r3, #12]
     6ec:	e3a03000 	mov	r3, #0
     6f0:	e58d304c 	str	r3, [sp, #76]	; 0x4c
     6f4:	ea000032 	b	7c4 <main+0x200>
     6f8:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a03083 	lsl	r3, r3, #1
     704:	e0833002 	add	r3, r3, r2
     708:	e1a03183 	lsl	r3, r3, #3
     70c:	e28d2050 	add	r2, sp, #80	; 0x50
     710:	e0823003 	add	r3, r2, r3
     714:	e2433050 	sub	r3, r3, #80	; 0x50
     718:	e5933000 	ldr	r3, [r3]
     71c:	e1a00003 	mov	r0, r3
     720:	fa00006c 	blx	8d8 <fileno>
     724:	e1a03000 	mov	r3, r0
     728:	e1a00003 	mov	r0, r3
     72c:	fb000382 	blx	153e <isatty>
     730:	e1a03000 	mov	r3, r0
     734:	e3530000 	cmp	r3, #0
     738:	0a00000f 	beq	77c <main+0x1b8>
     73c:	e30303d8 	movw	r0, #13272	; 0x33d8
     740:	e3400000 	movt	r0, #0
     744:	fa0002fe 	blx	1344 <iprintf>
     748:	e1a0100d 	mov	r1, sp
     74c:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
     750:	e1a03002 	mov	r3, r2
     754:	e1a03083 	lsl	r3, r3, #1
     758:	e0833002 	add	r3, r3, r2
     75c:	e1a03183 	lsl	r3, r3, #3
     760:	e0813003 	add	r3, r1, r3
     764:	e2833004 	add	r3, r3, #4
     768:	e1a01003 	mov	r1, r3
     76c:	e30303e0 	movw	r0, #13280	; 0x33e0
     770:	e3400000 	movt	r0, #0
     774:	fa0002f2 	blx	1344 <iprintf>
     778:	ea00000e 	b	7b8 <main+0x1f4>
     77c:	e30303fc 	movw	r0, #13308	; 0x33fc
     780:	e3400000 	movt	r0, #0
     784:	fa0002ee 	blx	1344 <iprintf>
     788:	e1a0100d 	mov	r1, sp
     78c:	e59d204c 	ldr	r2, [sp, #76]	; 0x4c
     790:	e1a03002 	mov	r3, r2
     794:	e1a03083 	lsl	r3, r3, #1
     798:	e0833002 	add	r3, r3, r2
     79c:	e1a03183 	lsl	r3, r3, #3
     7a0:	e0813003 	add	r3, r1, r3
     7a4:	e2833004 	add	r3, r3, #4
     7a8:	e1a01003 	mov	r1, r3
     7ac:	e3030408 	movw	r0, #13320	; 0x3408
     7b0:	e3400000 	movt	r0, #0
     7b4:	fa0002e2 	blx	1344 <iprintf>
     7b8:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
     7bc:	e2833001 	add	r3, r3, #1
     7c0:	e58d304c 	str	r3, [sp, #76]	; 0x4c
     7c4:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
     7c8:	e3530002 	cmp	r3, #2
     7cc:	daffffc9 	ble	6f8 <main+0x134>
     7d0:	e303042c 	movw	r0, #13356	; 0x342c
     7d4:	e3400000 	movt	r0, #0
     7d8:	fa000313 	blx	142c <puts>
     7dc:	e3030454 	movw	r0, #13396	; 0x3454
     7e0:	e3400000 	movt	r0, #0
     7e4:	fa0002d6 	blx	1344 <iprintf>
     7e8:	e3a03000 	mov	r3, #0
     7ec:	e58d3048 	str	r3, [sp, #72]	; 0x48
     7f0:	ea000021 	b	87c <main+0x2b8>
     7f4:	e303045c 	movw	r0, #13404	; 0x345c
     7f8:	e3400000 	movt	r0, #0
     7fc:	fa0002d0 	blx	1344 <iprintf>
     800:	e303179c 	movw	r1, #14236	; 0x379c
     804:	e3401000 	movt	r1, #0
     808:	e3030470 	movw	r0, #13424	; 0x3470
     80c:	e3400000 	movt	r0, #0
     810:	fa000311 	blx	145c <iscanf>
     814:	e3030474 	movw	r0, #13428	; 0x3474
     818:	e3400000 	movt	r0, #0
     81c:	fa0002c8 	blx	1344 <iprintf>
     820:	e303174c 	movw	r1, #14156	; 0x374c
     824:	e3401000 	movt	r1, #0
     828:	e3030470 	movw	r0, #13424	; 0x3470
     82c:	e3400000 	movt	r0, #0
     830:	fa000309 	blx	145c <iscanf>
     834:	e303374c 	movw	r3, #14156	; 0x374c
     838:	e3403000 	movt	r3, #0
     83c:	e303279c 	movw	r2, #14236	; 0x379c
     840:	e3402000 	movt	r2, #0
     844:	e303148c 	movw	r1, #13452	; 0x348c
     848:	e3401000 	movt	r1, #0
     84c:	e3a00003 	mov	r0, #3
     850:	ebfffec5 	bl	36c <Console>
     854:	e30314c4 	movw	r1, #13508	; 0x34c4
     858:	e3401000 	movt	r1, #0
     85c:	e3a00001 	mov	r0, #1
     860:	ebfffec1 	bl	36c <Console>
     864:	e30304dc 	movw	r0, #13532	; 0x34dc
     868:	e3400000 	movt	r0, #0
     86c:	fa0002b4 	blx	1344 <iprintf>
     870:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
     874:	e2833001 	add	r3, r3, #1
     878:	e58d3048 	str	r3, [sp, #72]	; 0x48
     87c:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
     880:	e3530004 	cmp	r3, #4
     884:	daffffda 	ble	7f4 <main+0x230>
     888:	e30304f4 	movw	r0, #13556	; 0x34f4
     88c:	e3400000 	movt	r0, #0
     890:	fa0002ab 	blx	1344 <iprintf>
     894:	e3030500 	movw	r0, #13568	; 0x3500
     898:	e3400000 	movt	r0, #0
     89c:	fa0002a8 	blx	1344 <iprintf>
     8a0:	eafffffe 	b	8a0 <main+0x2dc>

000008a4 <__errno>:
     8a4:	4b01      	ldr	r3, [pc, #4]	; (8ac <__errno+0x8>)
     8a6:	6818      	ldr	r0, [r3, #0]
     8a8:	4770      	bx	lr
     8aa:	bf00      	nop
     8ac:	00003168 	andeq	r3, r0, r8, ror #2

000008b0 <exit>:
     8b0:	b508      	push	{r3, lr}
     8b2:	4604      	mov	r4, r0
     8b4:	4b06      	ldr	r3, [pc, #24]	; (8d0 <exit+0x20>)
     8b6:	b113      	cbz	r3, 8be <exit+0xe>
     8b8:	2100      	movs	r1, #0
     8ba:	f3af 8000 	nop.w
     8be:	4b05      	ldr	r3, [pc, #20]	; (8d4 <exit+0x24>)
     8c0:	6818      	ldr	r0, [r3, #0]
     8c2:	6a83      	ldr	r3, [r0, #40]	; 0x28
     8c4:	b103      	cbz	r3, 8c8 <exit+0x18>
     8c6:	4798      	blx	r3
     8c8:	4620      	mov	r0, r4
     8ca:	f002 fbf9 	bl	30c0 <_exit>
     8ce:	bf00      	nop
     8d0:	00000000 	andeq	r0, r0, r0
     8d4:	000035a4 	andeq	r3, r0, r4, lsr #11

000008d8 <fileno>:
     8d8:	b570      	push	{r4, r5, r6, lr}
     8da:	4604      	mov	r4, r0
     8dc:	4e10      	ldr	r6, [pc, #64]	; (920 <fileno+0x48>)
     8de:	6835      	ldr	r5, [r6, #0]
     8e0:	b125      	cbz	r5, 8ec <fileno+0x14>
     8e2:	69ab      	ldr	r3, [r5, #24]
     8e4:	b913      	cbnz	r3, 8ec <fileno+0x14>
     8e6:	4628      	mov	r0, r5
     8e8:	f000 f86c 	bl	9c4 <__sinit>
     8ec:	4b0d      	ldr	r3, [pc, #52]	; (924 <fileno+0x4c>)
     8ee:	429c      	cmp	r4, r3
     8f0:	d106      	bne.n	900 <fileno+0x28>
     8f2:	686c      	ldr	r4, [r5, #4]
     8f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     8f8:	b163      	cbz	r3, 914 <fileno+0x3c>
     8fa:	f9b4 000e 	ldrsh.w	r0, [r4, #14]
     8fe:	bd70      	pop	{r4, r5, r6, pc}
     900:	4b09      	ldr	r3, [pc, #36]	; (928 <fileno+0x50>)
     902:	429c      	cmp	r4, r3
     904:	d101      	bne.n	90a <fileno+0x32>
     906:	68ac      	ldr	r4, [r5, #8]
     908:	e7f4      	b.n	8f4 <fileno+0x1c>
     90a:	4b08      	ldr	r3, [pc, #32]	; (92c <fileno+0x54>)
     90c:	429c      	cmp	r4, r3
     90e:	bf08      	it	eq
     910:	68ec      	ldreq	r4, [r5, #12]
     912:	e7ef      	b.n	8f4 <fileno+0x1c>
     914:	6833      	ldr	r3, [r6, #0]
     916:	2209      	movs	r2, #9
     918:	f04f 30ff 	mov.w	r0, #4294967295
     91c:	601a      	str	r2, [r3, #0]
     91e:	e7ee      	b.n	8fe <fileno+0x26>
     920:	00003168 	andeq	r3, r0, r8, ror #2
     924:	00003564 	andeq	r3, r0, r4, ror #10
     928:	00003584 	andeq	r3, r0, r4, lsl #11
     92c:	00003544 	andeq	r3, r0, r4, asr #10

00000930 <__fp_lock>:
     930:	2000      	movs	r0, #0
     932:	4770      	bx	lr

00000934 <std>:
     934:	2300      	movs	r3, #0
     936:	b510      	push	{r4, lr}
     938:	4604      	mov	r4, r0
     93a:	e9c0 3300 	strd	r3, r3, [r0]
     93e:	6083      	str	r3, [r0, #8]
     940:	8181      	strh	r1, [r0, #12]
     942:	4619      	mov	r1, r3
     944:	6643      	str	r3, [r0, #100]	; 0x64
     946:	81c2      	strh	r2, [r0, #14]
     948:	2208      	movs	r2, #8
     94a:	e9c0 3304 	strd	r3, r3, [r0, #16]
     94e:	305c      	adds	r0, #92	; 0x5c
     950:	f840 3c44 	str.w	r3, [r0, #-68]
     954:	f000 f948 	bl	be8 <memset>
     958:	4b04      	ldr	r3, [pc, #16]	; (96c <std+0x38>)
     95a:	6224      	str	r4, [r4, #32]
     95c:	6263      	str	r3, [r4, #36]	; 0x24
     95e:	4b04      	ldr	r3, [pc, #16]	; (970 <std+0x3c>)
     960:	62a3      	str	r3, [r4, #40]	; 0x28
     962:	4b04      	ldr	r3, [pc, #16]	; (974 <std+0x40>)
     964:	62e3      	str	r3, [r4, #44]	; 0x2c
     966:	4b04      	ldr	r3, [pc, #16]	; (978 <std+0x44>)
     968:	6323      	str	r3, [r4, #48]	; 0x30
     96a:	bd10      	pop	{r4, pc}
     96c:	000014b5 			; <UNDEFINED> instruction: 0x000014b5
     970:	000014db 	ldrdeq	r1, [r0], -fp
     974:	00001513 	andeq	r1, r0, r3, lsl r5
     978:	00001537 	andeq	r1, r0, r7, lsr r5

0000097c <_cleanup_r>:
     97c:	4901      	ldr	r1, [pc, #4]	; (984 <_cleanup_r+0x8>)
     97e:	f000 b8e1 	b.w	b44 <_fwalk_reent>
     982:	bf00      	nop
     984:	00001825 	andeq	r1, r0, r5, lsr #16

00000988 <__fp_unlock>:
     988:	2000      	movs	r0, #0
     98a:	4770      	bx	lr

0000098c <__sfmoreglue>:
     98c:	1e4a      	subs	r2, r1, #1
     98e:	b570      	push	{r4, r5, r6, lr}
     990:	2568      	movs	r5, #104	; 0x68
     992:	4355      	muls	r5, r2
     994:	460e      	mov	r6, r1
     996:	f105 0174 	add.w	r1, r5, #116	; 0x74
     99a:	f000 f979 	bl	c90 <_malloc_r>
     99e:	4604      	mov	r4, r0
     9a0:	b140      	cbz	r0, 9b4 <__sfmoreglue+0x28>
     9a2:	2100      	movs	r1, #0
     9a4:	f105 0268 	add.w	r2, r5, #104	; 0x68
     9a8:	e9c0 1600 	strd	r1, r6, [r0]
     9ac:	300c      	adds	r0, #12
     9ae:	60a0      	str	r0, [r4, #8]
     9b0:	f000 f91a 	bl	be8 <memset>
     9b4:	4620      	mov	r0, r4
     9b6:	bd70      	pop	{r4, r5, r6, pc}

000009b8 <_cleanup>:
     9b8:	4b01      	ldr	r3, [pc, #4]	; (9c0 <_cleanup+0x8>)
     9ba:	6818      	ldr	r0, [r3, #0]
     9bc:	f7ff bfde 	b.w	97c <_cleanup_r>
     9c0:	000035a4 	andeq	r3, r0, r4, lsr #11

000009c4 <__sinit>:
     9c4:	6983      	ldr	r3, [r0, #24]
     9c6:	b510      	push	{r4, lr}
     9c8:	4604      	mov	r4, r0
     9ca:	bb33      	cbnz	r3, a1a <__sinit+0x56>
     9cc:	e9c0 3312 	strd	r3, r3, [r0, #72]	; 0x48
     9d0:	6503      	str	r3, [r0, #80]	; 0x50
     9d2:	4b12      	ldr	r3, [pc, #72]	; (a1c <__sinit+0x58>)
     9d4:	4a12      	ldr	r2, [pc, #72]	; (a20 <__sinit+0x5c>)
     9d6:	681b      	ldr	r3, [r3, #0]
     9d8:	6282      	str	r2, [r0, #40]	; 0x28
     9da:	4298      	cmp	r0, r3
     9dc:	bf04      	itt	eq
     9de:	2301      	moveq	r3, #1
     9e0:	6183      	streq	r3, [r0, #24]
     9e2:	f000 f81f 	bl	a24 <__sfp>
     9e6:	6060      	str	r0, [r4, #4]
     9e8:	4620      	mov	r0, r4
     9ea:	f000 f81b 	bl	a24 <__sfp>
     9ee:	60a0      	str	r0, [r4, #8]
     9f0:	4620      	mov	r0, r4
     9f2:	f000 f817 	bl	a24 <__sfp>
     9f6:	2200      	movs	r2, #0
     9f8:	2104      	movs	r1, #4
     9fa:	60e0      	str	r0, [r4, #12]
     9fc:	6860      	ldr	r0, [r4, #4]
     9fe:	f7ff ff99 	bl	934 <std>
     a02:	2201      	movs	r2, #1
     a04:	2109      	movs	r1, #9
     a06:	68a0      	ldr	r0, [r4, #8]
     a08:	f7ff ff94 	bl	934 <std>
     a0c:	2202      	movs	r2, #2
     a0e:	2112      	movs	r1, #18
     a10:	68e0      	ldr	r0, [r4, #12]
     a12:	f7ff ff8f 	bl	934 <std>
     a16:	2301      	movs	r3, #1
     a18:	61a3      	str	r3, [r4, #24]
     a1a:	bd10      	pop	{r4, pc}
     a1c:	000035a4 	andeq	r3, r0, r4, lsr #11
     a20:	0000097d 	andeq	r0, r0, sp, ror r9

00000a24 <__sfp>:
     a24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     a26:	4607      	mov	r7, r0
     a28:	4b1a      	ldr	r3, [pc, #104]	; (a94 <__sfp+0x70>)
     a2a:	681e      	ldr	r6, [r3, #0]
     a2c:	69b3      	ldr	r3, [r6, #24]
     a2e:	b913      	cbnz	r3, a36 <__sfp+0x12>
     a30:	4630      	mov	r0, r6
     a32:	f7ff ffc7 	bl	9c4 <__sinit>
     a36:	3648      	adds	r6, #72	; 0x48
     a38:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
     a3c:	3b01      	subs	r3, #1
     a3e:	d503      	bpl.n	a48 <__sfp+0x24>
     a40:	6833      	ldr	r3, [r6, #0]
     a42:	b133      	cbz	r3, a52 <__sfp+0x2e>
     a44:	6836      	ldr	r6, [r6, #0]
     a46:	e7f7      	b.n	a38 <__sfp+0x14>
     a48:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
     a4c:	b16d      	cbz	r5, a6a <__sfp+0x46>
     a4e:	3468      	adds	r4, #104	; 0x68
     a50:	e7f4      	b.n	a3c <__sfp+0x18>
     a52:	2104      	movs	r1, #4
     a54:	4638      	mov	r0, r7
     a56:	f7ff ff99 	bl	98c <__sfmoreglue>
     a5a:	6030      	str	r0, [r6, #0]
     a5c:	2800      	cmp	r0, #0
     a5e:	d1f1      	bne.n	a44 <__sfp+0x20>
     a60:	4604      	mov	r4, r0
     a62:	230c      	movs	r3, #12
     a64:	603b      	str	r3, [r7, #0]
     a66:	4620      	mov	r0, r4
     a68:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     a6a:	4b0b      	ldr	r3, [pc, #44]	; (a98 <__sfp+0x74>)
     a6c:	2208      	movs	r2, #8
     a6e:	6665      	str	r5, [r4, #100]	; 0x64
     a70:	4629      	mov	r1, r5
     a72:	e9c4 5500 	strd	r5, r5, [r4]
     a76:	f104 005c 	add.w	r0, r4, #92	; 0x5c
     a7a:	60a5      	str	r5, [r4, #8]
     a7c:	e9c4 3503 	strd	r3, r5, [r4, #12]
     a80:	e9c4 5505 	strd	r5, r5, [r4, #20]
     a84:	f000 f8b0 	bl	be8 <memset>
     a88:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
     a8c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
     a90:	e7e9      	b.n	a66 <__sfp+0x42>
     a92:	bf00      	nop
     a94:	000035a4 	andeq	r3, r0, r4, lsr #11
     a98:	ffff0001 			; <UNDEFINED> instruction: 0xffff0001

00000a9c <__sfp_lock_acquire>:
     a9c:	4770      	bx	lr

00000a9e <__sfp_lock_release>:
     a9e:	4770      	bx	lr

00000aa0 <__sinit_lock_acquire>:
     aa0:	4770      	bx	lr

00000aa2 <__sinit_lock_release>:
     aa2:	4770      	bx	lr

00000aa4 <__fp_lock_all>:
     aa4:	4b02      	ldr	r3, [pc, #8]	; (ab0 <__fp_lock_all+0xc>)
     aa6:	4903      	ldr	r1, [pc, #12]	; (ab4 <__fp_lock_all+0x10>)
     aa8:	6818      	ldr	r0, [r3, #0]
     aaa:	f000 b82f 	b.w	b0c <_fwalk>
     aae:	bf00      	nop
     ab0:	00003168 	andeq	r3, r0, r8, ror #2
     ab4:	00000931 	andeq	r0, r0, r1, lsr r9

00000ab8 <__fp_unlock_all>:
     ab8:	4b02      	ldr	r3, [pc, #8]	; (ac4 <__fp_unlock_all+0xc>)
     aba:	4903      	ldr	r1, [pc, #12]	; (ac8 <__fp_unlock_all+0x10>)
     abc:	6818      	ldr	r0, [r3, #0]
     abe:	f000 b825 	b.w	b0c <_fwalk>
     ac2:	bf00      	nop
     ac4:	00003168 	andeq	r3, r0, r8, ror #2
     ac8:	00000989 	andeq	r0, r0, r9, lsl #19

00000acc <_fiprintf_r>:
     acc:	b40c      	push	{r2, r3}
     ace:	b507      	push	{r0, r1, r2, lr}
     ad0:	ab04      	add	r3, sp, #16
     ad2:	f853 2b04 	ldr.w	r2, [r3], #4
     ad6:	9301      	str	r3, [sp, #4]
     ad8:	f000 f96a 	bl	db0 <_vfiprintf_r>
     adc:	b003      	add	sp, #12
     ade:	f85d eb04 	ldr.w	lr, [sp], #4
     ae2:	b002      	add	sp, #8
     ae4:	4770      	bx	lr
	...

00000ae8 <fiprintf>:
     ae8:	b40e      	push	{r1, r2, r3}
     aea:	b503      	push	{r0, r1, lr}
     aec:	ab03      	add	r3, sp, #12
     aee:	4601      	mov	r1, r0
     af0:	4805      	ldr	r0, [pc, #20]	; (b08 <fiprintf+0x20>)
     af2:	f853 2b04 	ldr.w	r2, [r3], #4
     af6:	6800      	ldr	r0, [r0, #0]
     af8:	9301      	str	r3, [sp, #4]
     afa:	f000 f959 	bl	db0 <_vfiprintf_r>
     afe:	b002      	add	sp, #8
     b00:	f85d eb04 	ldr.w	lr, [sp], #4
     b04:	b003      	add	sp, #12
     b06:	4770      	bx	lr
     b08:	00003168 	andeq	r3, r0, r8, ror #2

00000b0c <_fwalk>:
     b0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
     b10:	f100 0448 	add.w	r4, r0, #72	; 0x48
     b14:	4688      	mov	r8, r1
     b16:	2600      	movs	r6, #0
     b18:	b914      	cbnz	r4, b20 <_fwalk+0x14>
     b1a:	4630      	mov	r0, r6
     b1c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
     b20:	e9d4 7501 	ldrd	r7, r5, [r4, #4]
     b24:	3f01      	subs	r7, #1
     b26:	d501      	bpl.n	b2c <_fwalk+0x20>
     b28:	6824      	ldr	r4, [r4, #0]
     b2a:	e7f5      	b.n	b18 <_fwalk+0xc>
     b2c:	89ab      	ldrh	r3, [r5, #12]
     b2e:	2b01      	cmp	r3, #1
     b30:	d906      	bls.n	b40 <_fwalk+0x34>
     b32:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
     b36:	3301      	adds	r3, #1
     b38:	d002      	beq.n	b40 <_fwalk+0x34>
     b3a:	4628      	mov	r0, r5
     b3c:	47c0      	blx	r8
     b3e:	4306      	orrs	r6, r0
     b40:	3568      	adds	r5, #104	; 0x68
     b42:	e7ef      	b.n	b24 <_fwalk+0x18>

00000b44 <_fwalk_reent>:
     b44:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
     b48:	f100 0448 	add.w	r4, r0, #72	; 0x48
     b4c:	4680      	mov	r8, r0
     b4e:	4689      	mov	r9, r1
     b50:	2600      	movs	r6, #0
     b52:	b914      	cbnz	r4, b5a <_fwalk_reent+0x16>
     b54:	4630      	mov	r0, r6
     b56:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
     b5a:	e9d4 7501 	ldrd	r7, r5, [r4, #4]
     b5e:	3f01      	subs	r7, #1
     b60:	d501      	bpl.n	b66 <_fwalk_reent+0x22>
     b62:	6824      	ldr	r4, [r4, #0]
     b64:	e7f5      	b.n	b52 <_fwalk_reent+0xe>
     b66:	89ab      	ldrh	r3, [r5, #12]
     b68:	2b01      	cmp	r3, #1
     b6a:	d907      	bls.n	b7c <_fwalk_reent+0x38>
     b6c:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
     b70:	3301      	adds	r3, #1
     b72:	d003      	beq.n	b7c <_fwalk_reent+0x38>
     b74:	4629      	mov	r1, r5
     b76:	4640      	mov	r0, r8
     b78:	47c8      	blx	r9
     b7a:	4306      	orrs	r6, r0
     b7c:	3568      	adds	r5, #104	; 0x68
     b7e:	e7ee      	b.n	b5e <_fwalk_reent+0x1a>

00000b80 <__libc_init_array>:
     b80:	b570      	push	{r4, r5, r6, lr}
     b82:	2500      	movs	r5, #0
     b84:	4e0c      	ldr	r6, [pc, #48]	; (bb8 <__libc_init_array+0x38>)
     b86:	4c0d      	ldr	r4, [pc, #52]	; (bbc <__libc_init_array+0x3c>)
     b88:	1ba4      	subs	r4, r4, r6
     b8a:	10a4      	asrs	r4, r4, #2
     b8c:	42a5      	cmp	r5, r4
     b8e:	d109      	bne.n	ba4 <__libc_init_array+0x24>
     b90:	f002 fa98 	bl	30c4 <_init>
     b94:	4e0a      	ldr	r6, [pc, #40]	; (bc0 <__libc_init_array+0x40>)
     b96:	4c0b      	ldr	r4, [pc, #44]	; (bc4 <__libc_init_array+0x44>)
     b98:	2500      	movs	r5, #0
     b9a:	1ba4      	subs	r4, r4, r6
     b9c:	10a4      	asrs	r4, r4, #2
     b9e:	42a5      	cmp	r5, r4
     ba0:	d105      	bne.n	bae <__libc_init_array+0x2e>
     ba2:	bd70      	pop	{r4, r5, r6, pc}
     ba4:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
     ba8:	3501      	adds	r5, #1
     baa:	4798      	blx	r3
     bac:	e7ee      	b.n	b8c <__libc_init_array+0xc>
     bae:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
     bb2:	3501      	adds	r5, #1
     bb4:	4798      	blx	r3
     bb6:	e7f2      	b.n	b9e <__libc_init_array+0x1e>
	...

00000bc8 <malloc>:
     bc8:	4b02      	ldr	r3, [pc, #8]	; (bd4 <malloc+0xc>)
     bca:	4601      	mov	r1, r0
     bcc:	6818      	ldr	r0, [r3, #0]
     bce:	f000 b85f 	b.w	c90 <_malloc_r>
     bd2:	bf00      	nop
     bd4:	00003168 	andeq	r3, r0, r8, ror #2

00000bd8 <free>:
     bd8:	4b02      	ldr	r3, [pc, #8]	; (be4 <free+0xc>)
     bda:	4601      	mov	r1, r0
     bdc:	6818      	ldr	r0, [r3, #0]
     bde:	f000 b80b 	b.w	bf8 <_free_r>
     be2:	bf00      	nop
     be4:	00003168 	andeq	r3, r0, r8, ror #2

00000be8 <memset>:
     be8:	4402      	add	r2, r0
     bea:	4603      	mov	r3, r0
     bec:	4293      	cmp	r3, r2
     bee:	d100      	bne.n	bf2 <memset+0xa>
     bf0:	4770      	bx	lr
     bf2:	f803 1b01 	strb.w	r1, [r3], #1
     bf6:	e7f9      	b.n	bec <memset+0x4>

00000bf8 <_free_r>:
     bf8:	b538      	push	{r3, r4, r5, lr}
     bfa:	4605      	mov	r5, r0
     bfc:	2900      	cmp	r1, #0
     bfe:	d043      	beq.n	c88 <_free_r+0x90>
     c00:	f851 3c04 	ldr.w	r3, [r1, #-4]
     c04:	1f0c      	subs	r4, r1, #4
     c06:	2b00      	cmp	r3, #0
     c08:	bfb8      	it	lt
     c0a:	18e4      	addlt	r4, r4, r3
     c0c:	f001 f840 	bl	1c90 <__malloc_lock>
     c10:	4a1e      	ldr	r2, [pc, #120]	; (c8c <_free_r+0x94>)
     c12:	6813      	ldr	r3, [r2, #0]
     c14:	4610      	mov	r0, r2
     c16:	b933      	cbnz	r3, c26 <_free_r+0x2e>
     c18:	6063      	str	r3, [r4, #4]
     c1a:	6014      	str	r4, [r2, #0]
     c1c:	4628      	mov	r0, r5
     c1e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
     c22:	f001 b836 	b.w	1c92 <__malloc_unlock>
     c26:	42a3      	cmp	r3, r4
     c28:	d90b      	bls.n	c42 <_free_r+0x4a>
     c2a:	6821      	ldr	r1, [r4, #0]
     c2c:	1862      	adds	r2, r4, r1
     c2e:	4293      	cmp	r3, r2
     c30:	bf01      	itttt	eq
     c32:	681a      	ldreq	r2, [r3, #0]
     c34:	685b      	ldreq	r3, [r3, #4]
     c36:	1852      	addeq	r2, r2, r1
     c38:	6022      	streq	r2, [r4, #0]
     c3a:	6063      	str	r3, [r4, #4]
     c3c:	6004      	str	r4, [r0, #0]
     c3e:	e7ed      	b.n	c1c <_free_r+0x24>
     c40:	4613      	mov	r3, r2
     c42:	685a      	ldr	r2, [r3, #4]
     c44:	b10a      	cbz	r2, c4a <_free_r+0x52>
     c46:	42a2      	cmp	r2, r4
     c48:	d9fa      	bls.n	c40 <_free_r+0x48>
     c4a:	6819      	ldr	r1, [r3, #0]
     c4c:	1858      	adds	r0, r3, r1
     c4e:	42a0      	cmp	r0, r4
     c50:	d10b      	bne.n	c6a <_free_r+0x72>
     c52:	6820      	ldr	r0, [r4, #0]
     c54:	4401      	add	r1, r0
     c56:	6019      	str	r1, [r3, #0]
     c58:	1858      	adds	r0, r3, r1
     c5a:	4282      	cmp	r2, r0
     c5c:	d1de      	bne.n	c1c <_free_r+0x24>
     c5e:	6810      	ldr	r0, [r2, #0]
     c60:	6852      	ldr	r2, [r2, #4]
     c62:	4401      	add	r1, r0
     c64:	6019      	str	r1, [r3, #0]
     c66:	605a      	str	r2, [r3, #4]
     c68:	e7d8      	b.n	c1c <_free_r+0x24>
     c6a:	d902      	bls.n	c72 <_free_r+0x7a>
     c6c:	230c      	movs	r3, #12
     c6e:	602b      	str	r3, [r5, #0]
     c70:	e7d4      	b.n	c1c <_free_r+0x24>
     c72:	6820      	ldr	r0, [r4, #0]
     c74:	1821      	adds	r1, r4, r0
     c76:	428a      	cmp	r2, r1
     c78:	bf01      	itttt	eq
     c7a:	6811      	ldreq	r1, [r2, #0]
     c7c:	6852      	ldreq	r2, [r2, #4]
     c7e:	1809      	addeq	r1, r1, r0
     c80:	6021      	streq	r1, [r4, #0]
     c82:	6062      	str	r2, [r4, #4]
     c84:	605c      	str	r4, [r3, #4]
     c86:	e7c9      	b.n	c1c <_free_r+0x24>
     c88:	bd38      	pop	{r3, r4, r5, pc}
     c8a:	bf00      	nop
     c8c:	00003738 	andeq	r3, r0, r8, lsr r7

00000c90 <_malloc_r>:
     c90:	b570      	push	{r4, r5, r6, lr}
     c92:	1ccd      	adds	r5, r1, #3
     c94:	f025 0503 	bic.w	r5, r5, #3
     c98:	4606      	mov	r6, r0
     c9a:	3508      	adds	r5, #8
     c9c:	2d0c      	cmp	r5, #12
     c9e:	bf38      	it	cc
     ca0:	250c      	movcc	r5, #12
     ca2:	2d00      	cmp	r5, #0
     ca4:	db01      	blt.n	caa <_malloc_r+0x1a>
     ca6:	42a9      	cmp	r1, r5
     ca8:	d903      	bls.n	cb2 <_malloc_r+0x22>
     caa:	230c      	movs	r3, #12
     cac:	6033      	str	r3, [r6, #0]
     cae:	2000      	movs	r0, #0
     cb0:	bd70      	pop	{r4, r5, r6, pc}
     cb2:	f000 ffed 	bl	1c90 <__malloc_lock>
     cb6:	4a21      	ldr	r2, [pc, #132]	; (d3c <_malloc_r+0xac>)
     cb8:	6814      	ldr	r4, [r2, #0]
     cba:	4621      	mov	r1, r4
     cbc:	b991      	cbnz	r1, ce4 <_malloc_r+0x54>
     cbe:	4c20      	ldr	r4, [pc, #128]	; (d40 <_malloc_r+0xb0>)
     cc0:	6823      	ldr	r3, [r4, #0]
     cc2:	b91b      	cbnz	r3, ccc <_malloc_r+0x3c>
     cc4:	4630      	mov	r0, r6
     cc6:	f000 fbb9 	bl	143c <_sbrk_r>
     cca:	6020      	str	r0, [r4, #0]
     ccc:	4629      	mov	r1, r5
     cce:	4630      	mov	r0, r6
     cd0:	f000 fbb4 	bl	143c <_sbrk_r>
     cd4:	1c43      	adds	r3, r0, #1
     cd6:	d124      	bne.n	d22 <_malloc_r+0x92>
     cd8:	230c      	movs	r3, #12
     cda:	4630      	mov	r0, r6
     cdc:	6033      	str	r3, [r6, #0]
     cde:	f000 ffd8 	bl	1c92 <__malloc_unlock>
     ce2:	e7e4      	b.n	cae <_malloc_r+0x1e>
     ce4:	680b      	ldr	r3, [r1, #0]
     ce6:	1b5b      	subs	r3, r3, r5
     ce8:	d418      	bmi.n	d1c <_malloc_r+0x8c>
     cea:	2b0b      	cmp	r3, #11
     cec:	d90f      	bls.n	d0e <_malloc_r+0x7e>
     cee:	18cc      	adds	r4, r1, r3
     cf0:	600b      	str	r3, [r1, #0]
     cf2:	50cd      	str	r5, [r1, r3]
     cf4:	4630      	mov	r0, r6
     cf6:	f000 ffcc 	bl	1c92 <__malloc_unlock>
     cfa:	f104 000b 	add.w	r0, r4, #11
     cfe:	1d23      	adds	r3, r4, #4
     d00:	f020 0007 	bic.w	r0, r0, #7
     d04:	1ac3      	subs	r3, r0, r3
     d06:	d0d3      	beq.n	cb0 <_malloc_r+0x20>
     d08:	425a      	negs	r2, r3
     d0a:	50e2      	str	r2, [r4, r3]
     d0c:	e7d0      	b.n	cb0 <_malloc_r+0x20>
     d0e:	684b      	ldr	r3, [r1, #4]
     d10:	428c      	cmp	r4, r1
     d12:	bf1a      	itte	ne
     d14:	6063      	strne	r3, [r4, #4]
     d16:	460c      	movne	r4, r1
     d18:	6013      	streq	r3, [r2, #0]
     d1a:	e7eb      	b.n	cf4 <_malloc_r+0x64>
     d1c:	460c      	mov	r4, r1
     d1e:	6849      	ldr	r1, [r1, #4]
     d20:	e7cc      	b.n	cbc <_malloc_r+0x2c>
     d22:	1cc4      	adds	r4, r0, #3
     d24:	f024 0403 	bic.w	r4, r4, #3
     d28:	42a0      	cmp	r0, r4
     d2a:	d005      	beq.n	d38 <_malloc_r+0xa8>
     d2c:	1a21      	subs	r1, r4, r0
     d2e:	4630      	mov	r0, r6
     d30:	f000 fb84 	bl	143c <_sbrk_r>
     d34:	3001      	adds	r0, #1
     d36:	d0cf      	beq.n	cd8 <_malloc_r+0x48>
     d38:	6025      	str	r5, [r4, #0]
     d3a:	e7db      	b.n	cf4 <_malloc_r+0x64>
     d3c:	00003738 	andeq	r3, r0, r8, lsr r7
     d40:	0000373c 	andeq	r3, r0, ip, lsr r7

00000d44 <__sfputc_r>:
     d44:	6893      	ldr	r3, [r2, #8]
     d46:	b410      	push	{r4}
     d48:	3b01      	subs	r3, #1
     d4a:	2b00      	cmp	r3, #0
     d4c:	6093      	str	r3, [r2, #8]
     d4e:	da08      	bge.n	d62 <__sfputc_r+0x1e>
     d50:	6994      	ldr	r4, [r2, #24]
     d52:	42a3      	cmp	r3, r4
     d54:	db01      	blt.n	d5a <__sfputc_r+0x16>
     d56:	290a      	cmp	r1, #10
     d58:	d103      	bne.n	d62 <__sfputc_r+0x1e>
     d5a:	f85d 4b04 	ldr.w	r4, [sp], #4
     d5e:	f000 bbf1 	b.w	1544 <__swbuf_r>
     d62:	6813      	ldr	r3, [r2, #0]
     d64:	1c58      	adds	r0, r3, #1
     d66:	6010      	str	r0, [r2, #0]
     d68:	7019      	strb	r1, [r3, #0]
     d6a:	4608      	mov	r0, r1
     d6c:	f85d 4b04 	ldr.w	r4, [sp], #4
     d70:	4770      	bx	lr

00000d72 <__sfputs_r>:
     d72:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     d74:	18d5      	adds	r5, r2, r3
     d76:	4606      	mov	r6, r0
     d78:	460f      	mov	r7, r1
     d7a:	4614      	mov	r4, r2
     d7c:	42ac      	cmp	r4, r5
     d7e:	d101      	bne.n	d84 <__sfputs_r+0x12>
     d80:	2000      	movs	r0, #0
     d82:	e007      	b.n	d94 <__sfputs_r+0x22>
     d84:	463a      	mov	r2, r7
     d86:	f814 1b01 	ldrb.w	r1, [r4], #1
     d8a:	4630      	mov	r0, r6
     d8c:	f7ff ffda 	bl	d44 <__sfputc_r>
     d90:	1c43      	adds	r3, r0, #1
     d92:	d1f3      	bne.n	d7c <__sfputs_r+0xa>
     d94:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00000d96 <__sprint_r>:
     d96:	b538      	push	{r3, r4, r5, lr}
     d98:	4614      	mov	r4, r2
     d9a:	6893      	ldr	r3, [r2, #8]
     d9c:	2500      	movs	r5, #0
     d9e:	b913      	cbnz	r3, da6 <__sprint_r+0x10>
     da0:	4618      	mov	r0, r3
     da2:	6053      	str	r3, [r2, #4]
     da4:	bd38      	pop	{r3, r4, r5, pc}
     da6:	f000 fd79 	bl	189c <__sfvwrite_r>
     daa:	e9c4 5501 	strd	r5, r5, [r4, #4]
     dae:	e7f9      	b.n	da4 <__sprint_r+0xe>

00000db0 <_vfiprintf_r>:
     db0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
     db4:	460c      	mov	r4, r1
     db6:	b09d      	sub	sp, #116	; 0x74
     db8:	4617      	mov	r7, r2
     dba:	461d      	mov	r5, r3
     dbc:	4606      	mov	r6, r0
     dbe:	b118      	cbz	r0, dc8 <_vfiprintf_r+0x18>
     dc0:	6983      	ldr	r3, [r0, #24]
     dc2:	b90b      	cbnz	r3, dc8 <_vfiprintf_r+0x18>
     dc4:	f7ff fdfe 	bl	9c4 <__sinit>
     dc8:	4b7c      	ldr	r3, [pc, #496]	; (fbc <_vfiprintf_r+0x20c>)
     dca:	429c      	cmp	r4, r3
     dcc:	d158      	bne.n	e80 <_vfiprintf_r+0xd0>
     dce:	6874      	ldr	r4, [r6, #4]
     dd0:	89a3      	ldrh	r3, [r4, #12]
     dd2:	0718      	lsls	r0, r3, #28
     dd4:	d55e      	bpl.n	e94 <_vfiprintf_r+0xe4>
     dd6:	6923      	ldr	r3, [r4, #16]
     dd8:	2b00      	cmp	r3, #0
     dda:	d05b      	beq.n	e94 <_vfiprintf_r+0xe4>
     ddc:	f04f 0b01 	mov.w	fp, #1
     de0:	2300      	movs	r3, #0
     de2:	9503      	str	r5, [sp, #12]
     de4:	9309      	str	r3, [sp, #36]	; 0x24
     de6:	2320      	movs	r3, #32
     de8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
     dec:	2330      	movs	r3, #48	; 0x30
     dee:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
     df2:	46b8      	mov	r8, r7
     df4:	4645      	mov	r5, r8
     df6:	f815 3b01 	ldrb.w	r3, [r5], #1
     dfa:	b10b      	cbz	r3, e00 <_vfiprintf_r+0x50>
     dfc:	2b25      	cmp	r3, #37	; 0x25
     dfe:	d154      	bne.n	eaa <_vfiprintf_r+0xfa>
     e00:	ebb8 0a07 	subs.w	sl, r8, r7
     e04:	d00b      	beq.n	e1e <_vfiprintf_r+0x6e>
     e06:	4653      	mov	r3, sl
     e08:	463a      	mov	r2, r7
     e0a:	4621      	mov	r1, r4
     e0c:	4630      	mov	r0, r6
     e0e:	f7ff ffb0 	bl	d72 <__sfputs_r>
     e12:	3001      	adds	r0, #1
     e14:	f000 80c2 	beq.w	f9c <_vfiprintf_r+0x1ec>
     e18:	9b09      	ldr	r3, [sp, #36]	; 0x24
     e1a:	4453      	add	r3, sl
     e1c:	9309      	str	r3, [sp, #36]	; 0x24
     e1e:	f898 3000 	ldrb.w	r3, [r8]
     e22:	2b00      	cmp	r3, #0
     e24:	f000 80ba 	beq.w	f9c <_vfiprintf_r+0x1ec>
     e28:	2300      	movs	r3, #0
     e2a:	f04f 32ff 	mov.w	r2, #4294967295
     e2e:	9304      	str	r3, [sp, #16]
     e30:	9307      	str	r3, [sp, #28]
     e32:	e9cd 2305 	strd	r2, r3, [sp, #20]
     e36:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
     e3a:	931a      	str	r3, [sp, #104]	; 0x68
     e3c:	46a8      	mov	r8, r5
     e3e:	2205      	movs	r2, #5
     e40:	f818 1b01 	ldrb.w	r1, [r8], #1
     e44:	485e      	ldr	r0, [pc, #376]	; (fc0 <_vfiprintf_r+0x210>)
     e46:	f000 fef1 	bl	1c2c <memchr>
     e4a:	9b04      	ldr	r3, [sp, #16]
     e4c:	bb78      	cbnz	r0, eae <_vfiprintf_r+0xfe>
     e4e:	06d9      	lsls	r1, r3, #27
     e50:	bf44      	itt	mi
     e52:	2220      	movmi	r2, #32
     e54:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
     e58:	071a      	lsls	r2, r3, #28
     e5a:	bf44      	itt	mi
     e5c:	222b      	movmi	r2, #43	; 0x2b
     e5e:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
     e62:	782a      	ldrb	r2, [r5, #0]
     e64:	2a2a      	cmp	r2, #42	; 0x2a
     e66:	d02a      	beq.n	ebe <_vfiprintf_r+0x10e>
     e68:	9a07      	ldr	r2, [sp, #28]
     e6a:	46a8      	mov	r8, r5
     e6c:	2000      	movs	r0, #0
     e6e:	250a      	movs	r5, #10
     e70:	4641      	mov	r1, r8
     e72:	f811 3b01 	ldrb.w	r3, [r1], #1
     e76:	3b30      	subs	r3, #48	; 0x30
     e78:	2b09      	cmp	r3, #9
     e7a:	d969      	bls.n	f50 <_vfiprintf_r+0x1a0>
     e7c:	b360      	cbz	r0, ed8 <_vfiprintf_r+0x128>
     e7e:	e024      	b.n	eca <_vfiprintf_r+0x11a>
     e80:	4b50      	ldr	r3, [pc, #320]	; (fc4 <_vfiprintf_r+0x214>)
     e82:	429c      	cmp	r4, r3
     e84:	d101      	bne.n	e8a <_vfiprintf_r+0xda>
     e86:	68b4      	ldr	r4, [r6, #8]
     e88:	e7a2      	b.n	dd0 <_vfiprintf_r+0x20>
     e8a:	4b4f      	ldr	r3, [pc, #316]	; (fc8 <_vfiprintf_r+0x218>)
     e8c:	429c      	cmp	r4, r3
     e8e:	bf08      	it	eq
     e90:	68f4      	ldreq	r4, [r6, #12]
     e92:	e79d      	b.n	dd0 <_vfiprintf_r+0x20>
     e94:	4621      	mov	r1, r4
     e96:	4630      	mov	r0, r6
     e98:	f000 fbc0 	bl	161c <__swsetup_r>
     e9c:	2800      	cmp	r0, #0
     e9e:	d09d      	beq.n	ddc <_vfiprintf_r+0x2c>
     ea0:	f04f 30ff 	mov.w	r0, #4294967295
     ea4:	b01d      	add	sp, #116	; 0x74
     ea6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
     eaa:	46a8      	mov	r8, r5
     eac:	e7a2      	b.n	df4 <_vfiprintf_r+0x44>
     eae:	4a44      	ldr	r2, [pc, #272]	; (fc0 <_vfiprintf_r+0x210>)
     eb0:	4645      	mov	r5, r8
     eb2:	1a80      	subs	r0, r0, r2
     eb4:	fa0b f000 	lsl.w	r0, fp, r0
     eb8:	4318      	orrs	r0, r3
     eba:	9004      	str	r0, [sp, #16]
     ebc:	e7be      	b.n	e3c <_vfiprintf_r+0x8c>
     ebe:	9a03      	ldr	r2, [sp, #12]
     ec0:	1d11      	adds	r1, r2, #4
     ec2:	9103      	str	r1, [sp, #12]
     ec4:	6812      	ldr	r2, [r2, #0]
     ec6:	2a00      	cmp	r2, #0
     ec8:	db01      	blt.n	ece <_vfiprintf_r+0x11e>
     eca:	9207      	str	r2, [sp, #28]
     ecc:	e004      	b.n	ed8 <_vfiprintf_r+0x128>
     ece:	4252      	negs	r2, r2
     ed0:	f043 0302 	orr.w	r3, r3, #2
     ed4:	9207      	str	r2, [sp, #28]
     ed6:	9304      	str	r3, [sp, #16]
     ed8:	f898 3000 	ldrb.w	r3, [r8]
     edc:	2b2e      	cmp	r3, #46	; 0x2e
     ede:	d10e      	bne.n	efe <_vfiprintf_r+0x14e>
     ee0:	f898 3001 	ldrb.w	r3, [r8, #1]
     ee4:	2b2a      	cmp	r3, #42	; 0x2a
     ee6:	d138      	bne.n	f5a <_vfiprintf_r+0x1aa>
     ee8:	9b03      	ldr	r3, [sp, #12]
     eea:	f108 0802 	add.w	r8, r8, #2
     eee:	1d1a      	adds	r2, r3, #4
     ef0:	9203      	str	r2, [sp, #12]
     ef2:	681b      	ldr	r3, [r3, #0]
     ef4:	2b00      	cmp	r3, #0
     ef6:	bfb8      	it	lt
     ef8:	f04f 33ff 	movlt.w	r3, #4294967295
     efc:	9305      	str	r3, [sp, #20]
     efe:	4d33      	ldr	r5, [pc, #204]	; (fcc <_vfiprintf_r+0x21c>)
     f00:	2203      	movs	r2, #3
     f02:	f898 1000 	ldrb.w	r1, [r8]
     f06:	4628      	mov	r0, r5
     f08:	f000 fe90 	bl	1c2c <memchr>
     f0c:	b140      	cbz	r0, f20 <_vfiprintf_r+0x170>
     f0e:	2340      	movs	r3, #64	; 0x40
     f10:	1b40      	subs	r0, r0, r5
     f12:	fa03 f000 	lsl.w	r0, r3, r0
     f16:	f108 0801 	add.w	r8, r8, #1
     f1a:	9b04      	ldr	r3, [sp, #16]
     f1c:	4303      	orrs	r3, r0
     f1e:	9304      	str	r3, [sp, #16]
     f20:	f898 1000 	ldrb.w	r1, [r8]
     f24:	2206      	movs	r2, #6
     f26:	482a      	ldr	r0, [pc, #168]	; (fd0 <_vfiprintf_r+0x220>)
     f28:	f108 0701 	add.w	r7, r8, #1
     f2c:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
     f30:	f000 fe7c 	bl	1c2c <memchr>
     f34:	2800      	cmp	r0, #0
     f36:	d037      	beq.n	fa8 <_vfiprintf_r+0x1f8>
     f38:	4b26      	ldr	r3, [pc, #152]	; (fd4 <_vfiprintf_r+0x224>)
     f3a:	bb1b      	cbnz	r3, f84 <_vfiprintf_r+0x1d4>
     f3c:	9b03      	ldr	r3, [sp, #12]
     f3e:	3307      	adds	r3, #7
     f40:	f023 0307 	bic.w	r3, r3, #7
     f44:	3308      	adds	r3, #8
     f46:	9303      	str	r3, [sp, #12]
     f48:	9b09      	ldr	r3, [sp, #36]	; 0x24
     f4a:	444b      	add	r3, r9
     f4c:	9309      	str	r3, [sp, #36]	; 0x24
     f4e:	e750      	b.n	df2 <_vfiprintf_r+0x42>
     f50:	fb05 3202 	mla	r2, r5, r2, r3
     f54:	2001      	movs	r0, #1
     f56:	4688      	mov	r8, r1
     f58:	e78a      	b.n	e70 <_vfiprintf_r+0xc0>
     f5a:	2300      	movs	r3, #0
     f5c:	f108 0801 	add.w	r8, r8, #1
     f60:	4619      	mov	r1, r3
     f62:	250a      	movs	r5, #10
     f64:	9305      	str	r3, [sp, #20]
     f66:	4640      	mov	r0, r8
     f68:	f810 2b01 	ldrb.w	r2, [r0], #1
     f6c:	3a30      	subs	r2, #48	; 0x30
     f6e:	2a09      	cmp	r2, #9
     f70:	d903      	bls.n	f7a <_vfiprintf_r+0x1ca>
     f72:	2b00      	cmp	r3, #0
     f74:	d0c3      	beq.n	efe <_vfiprintf_r+0x14e>
     f76:	9105      	str	r1, [sp, #20]
     f78:	e7c1      	b.n	efe <_vfiprintf_r+0x14e>
     f7a:	fb05 2101 	mla	r1, r5, r1, r2
     f7e:	2301      	movs	r3, #1
     f80:	4680      	mov	r8, r0
     f82:	e7f0      	b.n	f66 <_vfiprintf_r+0x1b6>
     f84:	ab03      	add	r3, sp, #12
     f86:	4622      	mov	r2, r4
     f88:	9300      	str	r3, [sp, #0]
     f8a:	a904      	add	r1, sp, #16
     f8c:	4b12      	ldr	r3, [pc, #72]	; (fd8 <_vfiprintf_r+0x228>)
     f8e:	4630      	mov	r0, r6
     f90:	f3af 8000 	nop.w
     f94:	f1b0 3fff 	cmp.w	r0, #4294967295
     f98:	4681      	mov	r9, r0
     f9a:	d1d5      	bne.n	f48 <_vfiprintf_r+0x198>
     f9c:	89a3      	ldrh	r3, [r4, #12]
     f9e:	065b      	lsls	r3, r3, #25
     fa0:	f53f af7e 	bmi.w	ea0 <_vfiprintf_r+0xf0>
     fa4:	9809      	ldr	r0, [sp, #36]	; 0x24
     fa6:	e77d      	b.n	ea4 <_vfiprintf_r+0xf4>
     fa8:	ab03      	add	r3, sp, #12
     faa:	4622      	mov	r2, r4
     fac:	9300      	str	r3, [sp, #0]
     fae:	a904      	add	r1, sp, #16
     fb0:	4b09      	ldr	r3, [pc, #36]	; (fd8 <_vfiprintf_r+0x228>)
     fb2:	4630      	mov	r0, r6
     fb4:	f000 f896 	bl	10e4 <_printf_i>
     fb8:	e7ec      	b.n	f94 <_vfiprintf_r+0x1e4>
     fba:	bf00      	nop
     fbc:	00003564 	andeq	r3, r0, r4, ror #10
     fc0:	000035a8 	andeq	r3, r0, r8, lsr #11
     fc4:	00003584 	andeq	r3, r0, r4, lsl #11
     fc8:	00003544 	andeq	r3, r0, r4, asr #10
     fcc:	000035ae 	andeq	r3, r0, lr, lsr #11
     fd0:	000035b2 			; <UNDEFINED> instruction: 0x000035b2
     fd4:	00000000 	andeq	r0, r0, r0
     fd8:	00000d73 	andeq	r0, r0, r3, ror sp

00000fdc <vfiprintf>:
     fdc:	4613      	mov	r3, r2
     fde:	460a      	mov	r2, r1
     fe0:	4601      	mov	r1, r0
     fe2:	4802      	ldr	r0, [pc, #8]	; (fec <vfiprintf+0x10>)
     fe4:	6800      	ldr	r0, [r0, #0]
     fe6:	f7ff bee3 	b.w	db0 <_vfiprintf_r>
     fea:	bf00      	nop
     fec:	00003168 	andeq	r3, r0, r8, ror #2

00000ff0 <_printf_common>:
     ff0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
     ff4:	4691      	mov	r9, r2
     ff6:	461f      	mov	r7, r3
     ff8:	688a      	ldr	r2, [r1, #8]
     ffa:	690b      	ldr	r3, [r1, #16]
     ffc:	4606      	mov	r6, r0
     ffe:	460c      	mov	r4, r1
    1000:	f8dd 8020 	ldr.w	r8, [sp, #32]
    1004:	4293      	cmp	r3, r2
    1006:	bfb8      	it	lt
    1008:	4613      	movlt	r3, r2
    100a:	f8c9 3000 	str.w	r3, [r9]
    100e:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
    1012:	b112      	cbz	r2, 101a <__STACK_SIZE+0x1a>
    1014:	3301      	adds	r3, #1
    1016:	f8c9 3000 	str.w	r3, [r9]
    101a:	6823      	ldr	r3, [r4, #0]
    101c:	0699      	lsls	r1, r3, #26
    101e:	bf42      	ittt	mi
    1020:	f8d9 3000 	ldrmi.w	r3, [r9]
    1024:	3302      	addmi	r3, #2
    1026:	f8c9 3000 	strmi.w	r3, [r9]
    102a:	6825      	ldr	r5, [r4, #0]
    102c:	f015 0506 	ands.w	r5, r5, #6
    1030:	d107      	bne.n	1042 <__STACK_SIZE+0x42>
    1032:	f104 0a19 	add.w	sl, r4, #25
    1036:	68e3      	ldr	r3, [r4, #12]
    1038:	f8d9 2000 	ldr.w	r2, [r9]
    103c:	1a9b      	subs	r3, r3, r2
    103e:	42ab      	cmp	r3, r5
    1040:	dc2c      	bgt.n	109c <__STACK_SIZE+0x9c>
    1042:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
    1046:	6822      	ldr	r2, [r4, #0]
    1048:	3300      	adds	r3, #0
    104a:	bf18      	it	ne
    104c:	2301      	movne	r3, #1
    104e:	0692      	lsls	r2, r2, #26
    1050:	d431      	bmi.n	10b6 <__STACK_SIZE+0xb6>
    1052:	f104 0243 	add.w	r2, r4, #67	; 0x43
    1056:	4639      	mov	r1, r7
    1058:	4630      	mov	r0, r6
    105a:	47c0      	blx	r8
    105c:	3001      	adds	r0, #1
    105e:	d024      	beq.n	10aa <__STACK_SIZE+0xaa>
    1060:	6823      	ldr	r3, [r4, #0]
    1062:	341a      	adds	r4, #26
    1064:	f854 5c0e 	ldr.w	r5, [r4, #-14]
    1068:	f8d9 2000 	ldr.w	r2, [r9]
    106c:	f003 0306 	and.w	r3, r3, #6
    1070:	2b04      	cmp	r3, #4
    1072:	f854 3c12 	ldr.w	r3, [r4, #-18]
    1076:	bf08      	it	eq
    1078:	1aad      	subeq	r5, r5, r2
    107a:	f854 2c0a 	ldr.w	r2, [r4, #-10]
    107e:	bf18      	it	ne
    1080:	2500      	movne	r5, #0
    1082:	f04f 0900 	mov.w	r9, #0
    1086:	bf08      	it	eq
    1088:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
    108c:	4293      	cmp	r3, r2
    108e:	bfc4      	itt	gt
    1090:	1a9b      	subgt	r3, r3, r2
    1092:	18ed      	addgt	r5, r5, r3
    1094:	454d      	cmp	r5, r9
    1096:	d11a      	bne.n	10ce <__STACK_SIZE+0xce>
    1098:	2000      	movs	r0, #0
    109a:	e008      	b.n	10ae <__STACK_SIZE+0xae>
    109c:	2301      	movs	r3, #1
    109e:	4652      	mov	r2, sl
    10a0:	4639      	mov	r1, r7
    10a2:	4630      	mov	r0, r6
    10a4:	47c0      	blx	r8
    10a6:	3001      	adds	r0, #1
    10a8:	d103      	bne.n	10b2 <__STACK_SIZE+0xb2>
    10aa:	f04f 30ff 	mov.w	r0, #4294967295
    10ae:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    10b2:	3501      	adds	r5, #1
    10b4:	e7bf      	b.n	1036 <__STACK_SIZE+0x36>
    10b6:	18e1      	adds	r1, r4, r3
    10b8:	1c5a      	adds	r2, r3, #1
    10ba:	2030      	movs	r0, #48	; 0x30
    10bc:	4422      	add	r2, r4
    10be:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
    10c2:	3302      	adds	r3, #2
    10c4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
    10c8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
    10cc:	e7c1      	b.n	1052 <__STACK_SIZE+0x52>
    10ce:	2301      	movs	r3, #1
    10d0:	4622      	mov	r2, r4
    10d2:	4639      	mov	r1, r7
    10d4:	4630      	mov	r0, r6
    10d6:	47c0      	blx	r8
    10d8:	3001      	adds	r0, #1
    10da:	d0e6      	beq.n	10aa <__STACK_SIZE+0xaa>
    10dc:	f109 0901 	add.w	r9, r9, #1
    10e0:	e7d8      	b.n	1094 <__STACK_SIZE+0x94>
	...

000010e4 <_printf_i>:
    10e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    10e8:	4617      	mov	r7, r2
    10ea:	7e0a      	ldrb	r2, [r1, #24]
    10ec:	b085      	sub	sp, #20
    10ee:	4698      	mov	r8, r3
    10f0:	4606      	mov	r6, r0
    10f2:	2a6e      	cmp	r2, #110	; 0x6e
    10f4:	460c      	mov	r4, r1
    10f6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    10f8:	f101 0a43 	add.w	sl, r1, #67	; 0x43
    10fc:	f000 80bb 	beq.w	1276 <_printf_i+0x192>
    1100:	d824      	bhi.n	114c <_printf_i+0x68>
    1102:	2a63      	cmp	r2, #99	; 0x63
    1104:	d039      	beq.n	117a <_printf_i+0x96>
    1106:	d80a      	bhi.n	111e <_printf_i+0x3a>
    1108:	2a00      	cmp	r2, #0
    110a:	f000 80c1 	beq.w	1290 <_printf_i+0x1ac>
    110e:	2a58      	cmp	r2, #88	; 0x58
    1110:	f000 808a 	beq.w	1228 <_printf_i+0x144>
    1114:	f104 0542 	add.w	r5, r4, #66	; 0x42
    1118:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
    111c:	e035      	b.n	118a <_printf_i+0xa6>
    111e:	2a64      	cmp	r2, #100	; 0x64
    1120:	d001      	beq.n	1126 <_printf_i+0x42>
    1122:	2a69      	cmp	r2, #105	; 0x69
    1124:	d1f6      	bne.n	1114 <_printf_i+0x30>
    1126:	6820      	ldr	r0, [r4, #0]
    1128:	6819      	ldr	r1, [r3, #0]
    112a:	0605      	lsls	r5, r0, #24
    112c:	f101 0204 	add.w	r2, r1, #4
    1130:	d52d      	bpl.n	118e <_printf_i+0xaa>
    1132:	6808      	ldr	r0, [r1, #0]
    1134:	601a      	str	r2, [r3, #0]
    1136:	2800      	cmp	r0, #0
    1138:	da03      	bge.n	1142 <_printf_i+0x5e>
    113a:	4240      	negs	r0, r0
    113c:	232d      	movs	r3, #45	; 0x2d
    113e:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
    1142:	f8df 91d0 	ldr.w	r9, [pc, #464]	; 1314 <_printf_i+0x230>
    1146:	f04f 0b0a 	mov.w	fp, #10
    114a:	e03d      	b.n	11c8 <_printf_i+0xe4>
    114c:	2a73      	cmp	r2, #115	; 0x73
    114e:	f000 80a3 	beq.w	1298 <_printf_i+0x1b4>
    1152:	d808      	bhi.n	1166 <_printf_i+0x82>
    1154:	2a6f      	cmp	r2, #111	; 0x6f
    1156:	d021      	beq.n	119c <_printf_i+0xb8>
    1158:	2a70      	cmp	r2, #112	; 0x70
    115a:	d1db      	bne.n	1114 <_printf_i+0x30>
    115c:	680a      	ldr	r2, [r1, #0]
    115e:	f042 0220 	orr.w	r2, r2, #32
    1162:	600a      	str	r2, [r1, #0]
    1164:	e003      	b.n	116e <_printf_i+0x8a>
    1166:	2a75      	cmp	r2, #117	; 0x75
    1168:	d018      	beq.n	119c <_printf_i+0xb8>
    116a:	2a78      	cmp	r2, #120	; 0x78
    116c:	d1d2      	bne.n	1114 <_printf_i+0x30>
    116e:	2278      	movs	r2, #120	; 0x78
    1170:	f8df 91a4 	ldr.w	r9, [pc, #420]	; 1318 <_printf_i+0x234>
    1174:	f884 2045 	strb.w	r2, [r4, #69]	; 0x45
    1178:	e05a      	b.n	1230 <_printf_i+0x14c>
    117a:	681a      	ldr	r2, [r3, #0]
    117c:	f104 0542 	add.w	r5, r4, #66	; 0x42
    1180:	1d11      	adds	r1, r2, #4
    1182:	6019      	str	r1, [r3, #0]
    1184:	6813      	ldr	r3, [r2, #0]
    1186:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
    118a:	2301      	movs	r3, #1
    118c:	e091      	b.n	12b2 <_printf_i+0x1ce>
    118e:	f010 0f40 	tst.w	r0, #64	; 0x40
    1192:	6808      	ldr	r0, [r1, #0]
    1194:	601a      	str	r2, [r3, #0]
    1196:	bf18      	it	ne
    1198:	b200      	sxthne	r0, r0
    119a:	e7cc      	b.n	1136 <_printf_i+0x52>
    119c:	6819      	ldr	r1, [r3, #0]
    119e:	6825      	ldr	r5, [r4, #0]
    11a0:	1d08      	adds	r0, r1, #4
    11a2:	6018      	str	r0, [r3, #0]
    11a4:	062b      	lsls	r3, r5, #24
    11a6:	d501      	bpl.n	11ac <_printf_i+0xc8>
    11a8:	6808      	ldr	r0, [r1, #0]
    11aa:	e002      	b.n	11b2 <_printf_i+0xce>
    11ac:	0668      	lsls	r0, r5, #25
    11ae:	d5fb      	bpl.n	11a8 <_printf_i+0xc4>
    11b0:	8808      	ldrh	r0, [r1, #0]
    11b2:	2a6f      	cmp	r2, #111	; 0x6f
    11b4:	f8df 915c 	ldr.w	r9, [pc, #348]	; 1314 <_printf_i+0x230>
    11b8:	bf14      	ite	ne
    11ba:	f04f 0b0a 	movne.w	fp, #10
    11be:	f04f 0b08 	moveq.w	fp, #8
    11c2:	2300      	movs	r3, #0
    11c4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
    11c8:	6862      	ldr	r2, [r4, #4]
    11ca:	2a00      	cmp	r2, #0
    11cc:	60a2      	str	r2, [r4, #8]
    11ce:	f2c0 8097 	blt.w	1300 <_printf_i+0x21c>
    11d2:	6823      	ldr	r3, [r4, #0]
    11d4:	f023 0304 	bic.w	r3, r3, #4
    11d8:	6023      	str	r3, [r4, #0]
    11da:	2800      	cmp	r0, #0
    11dc:	d140      	bne.n	1260 <_printf_i+0x17c>
    11de:	2a00      	cmp	r2, #0
    11e0:	f040 8090 	bne.w	1304 <_printf_i+0x220>
    11e4:	4655      	mov	r5, sl
    11e6:	f1bb 0f08 	cmp.w	fp, #8
    11ea:	d10b      	bne.n	1204 <_printf_i+0x120>
    11ec:	6823      	ldr	r3, [r4, #0]
    11ee:	07db      	lsls	r3, r3, #31
    11f0:	d508      	bpl.n	1204 <_printf_i+0x120>
    11f2:	6923      	ldr	r3, [r4, #16]
    11f4:	6862      	ldr	r2, [r4, #4]
    11f6:	429a      	cmp	r2, r3
    11f8:	bfde      	ittt	le
    11fa:	2330      	movle	r3, #48	; 0x30
    11fc:	f805 3c01 	strble.w	r3, [r5, #-1]
    1200:	f105 35ff 	addle.w	r5, r5, #4294967295
    1204:	ebaa 0305 	sub.w	r3, sl, r5
    1208:	6123      	str	r3, [r4, #16]
    120a:	f8cd 8000 	str.w	r8, [sp]
    120e:	463b      	mov	r3, r7
    1210:	aa03      	add	r2, sp, #12
    1212:	4621      	mov	r1, r4
    1214:	4630      	mov	r0, r6
    1216:	f7ff feeb 	bl	ff0 <_printf_common>
    121a:	3001      	adds	r0, #1
    121c:	d14e      	bne.n	12bc <_printf_i+0x1d8>
    121e:	f04f 30ff 	mov.w	r0, #4294967295
    1222:	b005      	add	sp, #20
    1224:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1228:	f8df 90e8 	ldr.w	r9, [pc, #232]	; 1314 <_printf_i+0x230>
    122c:	f881 2045 	strb.w	r2, [r1, #69]	; 0x45
    1230:	6818      	ldr	r0, [r3, #0]
    1232:	6822      	ldr	r2, [r4, #0]
    1234:	1d01      	adds	r1, r0, #4
    1236:	6800      	ldr	r0, [r0, #0]
    1238:	6019      	str	r1, [r3, #0]
    123a:	0613      	lsls	r3, r2, #24
    123c:	d50c      	bpl.n	1258 <_printf_i+0x174>
    123e:	07d1      	lsls	r1, r2, #31
    1240:	bf44      	itt	mi
    1242:	f042 0220 	orrmi.w	r2, r2, #32
    1246:	6022      	strmi	r2, [r4, #0]
    1248:	b918      	cbnz	r0, 1252 <_printf_i+0x16e>
    124a:	6823      	ldr	r3, [r4, #0]
    124c:	f023 0320 	bic.w	r3, r3, #32
    1250:	6023      	str	r3, [r4, #0]
    1252:	f04f 0b10 	mov.w	fp, #16
    1256:	e7b4      	b.n	11c2 <_printf_i+0xde>
    1258:	0655      	lsls	r5, r2, #25
    125a:	bf48      	it	mi
    125c:	b280      	uxthmi	r0, r0
    125e:	e7ee      	b.n	123e <_printf_i+0x15a>
    1260:	4655      	mov	r5, sl
    1262:	4659      	mov	r1, fp
    1264:	f001 fd8e 	bl	2d84 <__aeabi_uidivmod>
    1268:	f819 3001 	ldrb.w	r3, [r9, r1]
    126c:	f805 3d01 	strb.w	r3, [r5, #-1]!
    1270:	2800      	cmp	r0, #0
    1272:	d1f6      	bne.n	1262 <_printf_i+0x17e>
    1274:	e7b7      	b.n	11e6 <_printf_i+0x102>
    1276:	680d      	ldr	r5, [r1, #0]
    1278:	681a      	ldr	r2, [r3, #0]
    127a:	6949      	ldr	r1, [r1, #20]
    127c:	1d10      	adds	r0, r2, #4
    127e:	6018      	str	r0, [r3, #0]
    1280:	0628      	lsls	r0, r5, #24
    1282:	6813      	ldr	r3, [r2, #0]
    1284:	d501      	bpl.n	128a <_printf_i+0x1a6>
    1286:	6019      	str	r1, [r3, #0]
    1288:	e002      	b.n	1290 <_printf_i+0x1ac>
    128a:	066a      	lsls	r2, r5, #25
    128c:	d5fb      	bpl.n	1286 <_printf_i+0x1a2>
    128e:	8019      	strh	r1, [r3, #0]
    1290:	2300      	movs	r3, #0
    1292:	4655      	mov	r5, sl
    1294:	6123      	str	r3, [r4, #16]
    1296:	e7b8      	b.n	120a <_printf_i+0x126>
    1298:	681a      	ldr	r2, [r3, #0]
    129a:	1d11      	adds	r1, r2, #4
    129c:	6019      	str	r1, [r3, #0]
    129e:	6815      	ldr	r5, [r2, #0]
    12a0:	2100      	movs	r1, #0
    12a2:	6862      	ldr	r2, [r4, #4]
    12a4:	4628      	mov	r0, r5
    12a6:	f000 fcc1 	bl	1c2c <memchr>
    12aa:	b108      	cbz	r0, 12b0 <_printf_i+0x1cc>
    12ac:	1b40      	subs	r0, r0, r5
    12ae:	6060      	str	r0, [r4, #4]
    12b0:	6863      	ldr	r3, [r4, #4]
    12b2:	6123      	str	r3, [r4, #16]
    12b4:	2300      	movs	r3, #0
    12b6:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
    12ba:	e7a6      	b.n	120a <_printf_i+0x126>
    12bc:	6923      	ldr	r3, [r4, #16]
    12be:	462a      	mov	r2, r5
    12c0:	4639      	mov	r1, r7
    12c2:	4630      	mov	r0, r6
    12c4:	47c0      	blx	r8
    12c6:	3001      	adds	r0, #1
    12c8:	d0a9      	beq.n	121e <_printf_i+0x13a>
    12ca:	6823      	ldr	r3, [r4, #0]
    12cc:	079b      	lsls	r3, r3, #30
    12ce:	d413      	bmi.n	12f8 <_printf_i+0x214>
    12d0:	68e0      	ldr	r0, [r4, #12]
    12d2:	9b03      	ldr	r3, [sp, #12]
    12d4:	4298      	cmp	r0, r3
    12d6:	bfb8      	it	lt
    12d8:	4618      	movlt	r0, r3
    12da:	e7a2      	b.n	1222 <_printf_i+0x13e>
    12dc:	2301      	movs	r3, #1
    12de:	464a      	mov	r2, r9
    12e0:	4639      	mov	r1, r7
    12e2:	4630      	mov	r0, r6
    12e4:	47c0      	blx	r8
    12e6:	3001      	adds	r0, #1
    12e8:	d099      	beq.n	121e <_printf_i+0x13a>
    12ea:	3501      	adds	r5, #1
    12ec:	68e3      	ldr	r3, [r4, #12]
    12ee:	9a03      	ldr	r2, [sp, #12]
    12f0:	1a9b      	subs	r3, r3, r2
    12f2:	42ab      	cmp	r3, r5
    12f4:	dcf2      	bgt.n	12dc <_printf_i+0x1f8>
    12f6:	e7eb      	b.n	12d0 <_printf_i+0x1ec>
    12f8:	2500      	movs	r5, #0
    12fa:	f104 0919 	add.w	r9, r4, #25
    12fe:	e7f5      	b.n	12ec <_printf_i+0x208>
    1300:	2800      	cmp	r0, #0
    1302:	d1ad      	bne.n	1260 <_printf_i+0x17c>
    1304:	f899 3000 	ldrb.w	r3, [r9]
    1308:	f104 0542 	add.w	r5, r4, #66	; 0x42
    130c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
    1310:	e769      	b.n	11e6 <_printf_i+0x102>
    1312:	bf00      	nop
    1314:	000035b9 			; <UNDEFINED> instruction: 0x000035b9
    1318:	000035ca 	andeq	r3, r0, sl, asr #11

0000131c <_iprintf_r>:
    131c:	b40e      	push	{r1, r2, r3}
    131e:	b517      	push	{r0, r1, r2, r4, lr}
    1320:	4604      	mov	r4, r0
    1322:	b118      	cbz	r0, 132c <_iprintf_r+0x10>
    1324:	6983      	ldr	r3, [r0, #24]
    1326:	b90b      	cbnz	r3, 132c <_iprintf_r+0x10>
    1328:	f7ff fb4c 	bl	9c4 <__sinit>
    132c:	ab06      	add	r3, sp, #24
    132e:	9a05      	ldr	r2, [sp, #20]
    1330:	68a1      	ldr	r1, [r4, #8]
    1332:	4620      	mov	r0, r4
    1334:	9301      	str	r3, [sp, #4]
    1336:	f7ff fd3b 	bl	db0 <_vfiprintf_r>
    133a:	b003      	add	sp, #12
    133c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    1340:	b003      	add	sp, #12
    1342:	4770      	bx	lr

00001344 <iprintf>:
    1344:	b40f      	push	{r0, r1, r2, r3}
    1346:	4b0a      	ldr	r3, [pc, #40]	; (1370 <iprintf+0x2c>)
    1348:	b513      	push	{r0, r1, r4, lr}
    134a:	681c      	ldr	r4, [r3, #0]
    134c:	b124      	cbz	r4, 1358 <iprintf+0x14>
    134e:	69a3      	ldr	r3, [r4, #24]
    1350:	b913      	cbnz	r3, 1358 <iprintf+0x14>
    1352:	4620      	mov	r0, r4
    1354:	f7ff fb36 	bl	9c4 <__sinit>
    1358:	ab05      	add	r3, sp, #20
    135a:	9a04      	ldr	r2, [sp, #16]
    135c:	68a1      	ldr	r1, [r4, #8]
    135e:	4620      	mov	r0, r4
    1360:	9301      	str	r3, [sp, #4]
    1362:	f7ff fd25 	bl	db0 <_vfiprintf_r>
    1366:	b002      	add	sp, #8
    1368:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    136c:	b004      	add	sp, #16
    136e:	4770      	bx	lr
    1370:	00003168 	andeq	r3, r0, r8, ror #2

00001374 <_puts_r>:
    1374:	b570      	push	{r4, r5, r6, lr}
    1376:	460e      	mov	r6, r1
    1378:	4605      	mov	r5, r0
    137a:	b118      	cbz	r0, 1384 <_puts_r+0x10>
    137c:	6983      	ldr	r3, [r0, #24]
    137e:	b90b      	cbnz	r3, 1384 <_puts_r+0x10>
    1380:	f7ff fb20 	bl	9c4 <__sinit>
    1384:	69ab      	ldr	r3, [r5, #24]
    1386:	68ac      	ldr	r4, [r5, #8]
    1388:	b913      	cbnz	r3, 1390 <_puts_r+0x1c>
    138a:	4628      	mov	r0, r5
    138c:	f7ff fb1a 	bl	9c4 <__sinit>
    1390:	4b23      	ldr	r3, [pc, #140]	; (1420 <_puts_r+0xac>)
    1392:	429c      	cmp	r4, r3
    1394:	d117      	bne.n	13c6 <_puts_r+0x52>
    1396:	686c      	ldr	r4, [r5, #4]
    1398:	89a3      	ldrh	r3, [r4, #12]
    139a:	071b      	lsls	r3, r3, #28
    139c:	d51d      	bpl.n	13da <_puts_r+0x66>
    139e:	6923      	ldr	r3, [r4, #16]
    13a0:	b1db      	cbz	r3, 13da <_puts_r+0x66>
    13a2:	3e01      	subs	r6, #1
    13a4:	f816 1f01 	ldrb.w	r1, [r6, #1]!
    13a8:	68a3      	ldr	r3, [r4, #8]
    13aa:	3b01      	subs	r3, #1
    13ac:	60a3      	str	r3, [r4, #8]
    13ae:	b9e9      	cbnz	r1, 13ec <_puts_r+0x78>
    13b0:	2b00      	cmp	r3, #0
    13b2:	da2e      	bge.n	1412 <_puts_r+0x9e>
    13b4:	4622      	mov	r2, r4
    13b6:	210a      	movs	r1, #10
    13b8:	4628      	mov	r0, r5
    13ba:	f000 f8c3 	bl	1544 <__swbuf_r>
    13be:	3001      	adds	r0, #1
    13c0:	d011      	beq.n	13e6 <_puts_r+0x72>
    13c2:	200a      	movs	r0, #10
    13c4:	e011      	b.n	13ea <_puts_r+0x76>
    13c6:	4b17      	ldr	r3, [pc, #92]	; (1424 <_puts_r+0xb0>)
    13c8:	429c      	cmp	r4, r3
    13ca:	d101      	bne.n	13d0 <_puts_r+0x5c>
    13cc:	68ac      	ldr	r4, [r5, #8]
    13ce:	e7e3      	b.n	1398 <_puts_r+0x24>
    13d0:	4b15      	ldr	r3, [pc, #84]	; (1428 <_puts_r+0xb4>)
    13d2:	429c      	cmp	r4, r3
    13d4:	bf08      	it	eq
    13d6:	68ec      	ldreq	r4, [r5, #12]
    13d8:	e7de      	b.n	1398 <_puts_r+0x24>
    13da:	4621      	mov	r1, r4
    13dc:	4628      	mov	r0, r5
    13de:	f000 f91d 	bl	161c <__swsetup_r>
    13e2:	2800      	cmp	r0, #0
    13e4:	d0dd      	beq.n	13a2 <_puts_r+0x2e>
    13e6:	f04f 30ff 	mov.w	r0, #4294967295
    13ea:	bd70      	pop	{r4, r5, r6, pc}
    13ec:	2b00      	cmp	r3, #0
    13ee:	da04      	bge.n	13fa <_puts_r+0x86>
    13f0:	69a2      	ldr	r2, [r4, #24]
    13f2:	429a      	cmp	r2, r3
    13f4:	dc06      	bgt.n	1404 <_puts_r+0x90>
    13f6:	290a      	cmp	r1, #10
    13f8:	d004      	beq.n	1404 <_puts_r+0x90>
    13fa:	6823      	ldr	r3, [r4, #0]
    13fc:	1c5a      	adds	r2, r3, #1
    13fe:	6022      	str	r2, [r4, #0]
    1400:	7019      	strb	r1, [r3, #0]
    1402:	e7cf      	b.n	13a4 <_puts_r+0x30>
    1404:	4622      	mov	r2, r4
    1406:	4628      	mov	r0, r5
    1408:	f000 f89c 	bl	1544 <__swbuf_r>
    140c:	3001      	adds	r0, #1
    140e:	d1c9      	bne.n	13a4 <_puts_r+0x30>
    1410:	e7e9      	b.n	13e6 <_puts_r+0x72>
    1412:	6823      	ldr	r3, [r4, #0]
    1414:	200a      	movs	r0, #10
    1416:	1c5a      	adds	r2, r3, #1
    1418:	6022      	str	r2, [r4, #0]
    141a:	7018      	strb	r0, [r3, #0]
    141c:	e7e5      	b.n	13ea <_puts_r+0x76>
    141e:	bf00      	nop
    1420:	00003564 	andeq	r3, r0, r4, ror #10
    1424:	00003584 	andeq	r3, r0, r4, lsl #11
    1428:	00003544 	andeq	r3, r0, r4, asr #10

0000142c <puts>:
    142c:	4b02      	ldr	r3, [pc, #8]	; (1438 <puts+0xc>)
    142e:	4601      	mov	r1, r0
    1430:	6818      	ldr	r0, [r3, #0]
    1432:	f7ff bf9f 	b.w	1374 <_puts_r>
    1436:	bf00      	nop
    1438:	00003168 	andeq	r3, r0, r8, ror #2

0000143c <_sbrk_r>:
    143c:	b538      	push	{r3, r4, r5, lr}
    143e:	4605      	mov	r5, r0
    1440:	4c05      	ldr	r4, [pc, #20]	; (1458 <_sbrk_r+0x1c>)
    1442:	4608      	mov	r0, r1
    1444:	2300      	movs	r3, #0
    1446:	6023      	str	r3, [r4, #0]
    1448:	f001 fe2a 	bl	30a0 <_sbrk>
    144c:	1c43      	adds	r3, r0, #1
    144e:	d102      	bne.n	1456 <_sbrk_r+0x1a>
    1450:	6823      	ldr	r3, [r4, #0]
    1452:	b103      	cbz	r3, 1456 <_sbrk_r+0x1a>
    1454:	602b      	str	r3, [r5, #0]
    1456:	bd38      	pop	{r3, r4, r5, pc}
    1458:	000037ec 	andeq	r3, r0, ip, ror #15

0000145c <iscanf>:
    145c:	b40f      	push	{r0, r1, r2, r3}
    145e:	4b0a      	ldr	r3, [pc, #40]	; (1488 <iscanf+0x2c>)
    1460:	b513      	push	{r0, r1, r4, lr}
    1462:	681c      	ldr	r4, [r3, #0]
    1464:	b124      	cbz	r4, 1470 <iscanf+0x14>
    1466:	69a3      	ldr	r3, [r4, #24]
    1468:	b913      	cbnz	r3, 1470 <iscanf+0x14>
    146a:	4620      	mov	r0, r4
    146c:	f7ff faaa 	bl	9c4 <__sinit>
    1470:	ab05      	add	r3, sp, #20
    1472:	9a04      	ldr	r2, [sp, #16]
    1474:	6861      	ldr	r1, [r4, #4]
    1476:	4620      	mov	r0, r4
    1478:	9301      	str	r3, [sp, #4]
    147a:	f000 fdb7 	bl	1fec <_vfiscanf_r>
    147e:	b002      	add	sp, #8
    1480:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    1484:	b004      	add	sp, #16
    1486:	4770      	bx	lr
    1488:	00003168 	andeq	r3, r0, r8, ror #2

0000148c <_iscanf_r>:
    148c:	b40e      	push	{r1, r2, r3}
    148e:	b517      	push	{r0, r1, r2, r4, lr}
    1490:	4604      	mov	r4, r0
    1492:	b118      	cbz	r0, 149c <_iscanf_r+0x10>
    1494:	6983      	ldr	r3, [r0, #24]
    1496:	b90b      	cbnz	r3, 149c <_iscanf_r+0x10>
    1498:	f7ff fa94 	bl	9c4 <__sinit>
    149c:	ab06      	add	r3, sp, #24
    149e:	9a05      	ldr	r2, [sp, #20]
    14a0:	6861      	ldr	r1, [r4, #4]
    14a2:	4620      	mov	r0, r4
    14a4:	9301      	str	r3, [sp, #4]
    14a6:	f000 fda1 	bl	1fec <_vfiscanf_r>
    14aa:	b003      	add	sp, #12
    14ac:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    14b0:	b003      	add	sp, #12
    14b2:	4770      	bx	lr

000014b4 <__sread>:
    14b4:	b510      	push	{r4, lr}
    14b6:	460c      	mov	r4, r1
    14b8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    14bc:	f000 ff12 	bl	22e4 <_read_r>
    14c0:	2800      	cmp	r0, #0
    14c2:	bfab      	itete	ge
    14c4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
    14c6:	89a3      	ldrhlt	r3, [r4, #12]
    14c8:	181b      	addge	r3, r3, r0
    14ca:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
    14ce:	bfac      	ite	ge
    14d0:	6563      	strge	r3, [r4, #84]	; 0x54
    14d2:	81a3      	strhlt	r3, [r4, #12]
    14d4:	bd10      	pop	{r4, pc}

000014d6 <__seofread>:
    14d6:	2000      	movs	r0, #0
    14d8:	4770      	bx	lr

000014da <__swrite>:
    14da:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    14de:	461f      	mov	r7, r3
    14e0:	898b      	ldrh	r3, [r1, #12]
    14e2:	4605      	mov	r5, r0
    14e4:	460c      	mov	r4, r1
    14e6:	4616      	mov	r6, r2
    14e8:	05db      	lsls	r3, r3, #23
    14ea:	d505      	bpl.n	14f8 <__swrite+0x1e>
    14ec:	2302      	movs	r3, #2
    14ee:	2200      	movs	r2, #0
    14f0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    14f4:	f000 fb24 	bl	1b40 <_lseek_r>
    14f8:	89a3      	ldrh	r3, [r4, #12]
    14fa:	4632      	mov	r2, r6
    14fc:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
    1500:	4628      	mov	r0, r5
    1502:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
    1506:	81a3      	strh	r3, [r4, #12]
    1508:	463b      	mov	r3, r7
    150a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    150e:	f000 b873 	b.w	15f8 <_write_r>

00001512 <__sseek>:
    1512:	b510      	push	{r4, lr}
    1514:	460c      	mov	r4, r1
    1516:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    151a:	f000 fb11 	bl	1b40 <_lseek_r>
    151e:	1c43      	adds	r3, r0, #1
    1520:	89a3      	ldrh	r3, [r4, #12]
    1522:	bf15      	itete	ne
    1524:	6560      	strne	r0, [r4, #84]	; 0x54
    1526:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
    152a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
    152e:	81a3      	strheq	r3, [r4, #12]
    1530:	bf18      	it	ne
    1532:	81a3      	strhne	r3, [r4, #12]
    1534:	bd10      	pop	{r4, pc}

00001536 <__sclose>:
    1536:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    153a:	f000 b8dd 	b.w	16f8 <_close_r>

0000153e <isatty>:
    153e:	f001 bd9d 	b.w	307c <_isatty>
	...

00001544 <__swbuf_r>:
    1544:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1546:	460e      	mov	r6, r1
    1548:	4614      	mov	r4, r2
    154a:	4605      	mov	r5, r0
    154c:	b118      	cbz	r0, 1556 <__swbuf_r+0x12>
    154e:	6983      	ldr	r3, [r0, #24]
    1550:	b90b      	cbnz	r3, 1556 <__swbuf_r+0x12>
    1552:	f7ff fa37 	bl	9c4 <__sinit>
    1556:	4b21      	ldr	r3, [pc, #132]	; (15dc <__swbuf_r+0x98>)
    1558:	429c      	cmp	r4, r3
    155a:	d12a      	bne.n	15b2 <__swbuf_r+0x6e>
    155c:	686c      	ldr	r4, [r5, #4]
    155e:	69a3      	ldr	r3, [r4, #24]
    1560:	60a3      	str	r3, [r4, #8]
    1562:	89a3      	ldrh	r3, [r4, #12]
    1564:	071a      	lsls	r2, r3, #28
    1566:	d52e      	bpl.n	15c6 <__swbuf_r+0x82>
    1568:	6923      	ldr	r3, [r4, #16]
    156a:	b363      	cbz	r3, 15c6 <__swbuf_r+0x82>
    156c:	6923      	ldr	r3, [r4, #16]
    156e:	b2f6      	uxtb	r6, r6
    1570:	6820      	ldr	r0, [r4, #0]
    1572:	4637      	mov	r7, r6
    1574:	1ac0      	subs	r0, r0, r3
    1576:	6963      	ldr	r3, [r4, #20]
    1578:	4283      	cmp	r3, r0
    157a:	dc04      	bgt.n	1586 <__swbuf_r+0x42>
    157c:	4621      	mov	r1, r4
    157e:	4628      	mov	r0, r5
    1580:	f000 f950 	bl	1824 <_fflush_r>
    1584:	bb28      	cbnz	r0, 15d2 <__swbuf_r+0x8e>
    1586:	68a3      	ldr	r3, [r4, #8]
    1588:	3001      	adds	r0, #1
    158a:	3b01      	subs	r3, #1
    158c:	60a3      	str	r3, [r4, #8]
    158e:	6823      	ldr	r3, [r4, #0]
    1590:	1c5a      	adds	r2, r3, #1
    1592:	6022      	str	r2, [r4, #0]
    1594:	701e      	strb	r6, [r3, #0]
    1596:	6963      	ldr	r3, [r4, #20]
    1598:	4283      	cmp	r3, r0
    159a:	d004      	beq.n	15a6 <__swbuf_r+0x62>
    159c:	89a3      	ldrh	r3, [r4, #12]
    159e:	07db      	lsls	r3, r3, #31
    15a0:	d519      	bpl.n	15d6 <__swbuf_r+0x92>
    15a2:	2e0a      	cmp	r6, #10
    15a4:	d117      	bne.n	15d6 <__swbuf_r+0x92>
    15a6:	4621      	mov	r1, r4
    15a8:	4628      	mov	r0, r5
    15aa:	f000 f93b 	bl	1824 <_fflush_r>
    15ae:	b190      	cbz	r0, 15d6 <__swbuf_r+0x92>
    15b0:	e00f      	b.n	15d2 <__swbuf_r+0x8e>
    15b2:	4b0b      	ldr	r3, [pc, #44]	; (15e0 <__swbuf_r+0x9c>)
    15b4:	429c      	cmp	r4, r3
    15b6:	d101      	bne.n	15bc <__swbuf_r+0x78>
    15b8:	68ac      	ldr	r4, [r5, #8]
    15ba:	e7d0      	b.n	155e <__swbuf_r+0x1a>
    15bc:	4b09      	ldr	r3, [pc, #36]	; (15e4 <__swbuf_r+0xa0>)
    15be:	429c      	cmp	r4, r3
    15c0:	bf08      	it	eq
    15c2:	68ec      	ldreq	r4, [r5, #12]
    15c4:	e7cb      	b.n	155e <__swbuf_r+0x1a>
    15c6:	4621      	mov	r1, r4
    15c8:	4628      	mov	r0, r5
    15ca:	f000 f827 	bl	161c <__swsetup_r>
    15ce:	2800      	cmp	r0, #0
    15d0:	d0cc      	beq.n	156c <__swbuf_r+0x28>
    15d2:	f04f 37ff 	mov.w	r7, #4294967295
    15d6:	4638      	mov	r0, r7
    15d8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    15da:	bf00      	nop
    15dc:	00003564 	andeq	r3, r0, r4, ror #10
    15e0:	00003584 	andeq	r3, r0, r4, lsl #11
    15e4:	00003544 	andeq	r3, r0, r4, asr #10

000015e8 <__swbuf>:
    15e8:	4b02      	ldr	r3, [pc, #8]	; (15f4 <__swbuf+0xc>)
    15ea:	460a      	mov	r2, r1
    15ec:	4601      	mov	r1, r0
    15ee:	6818      	ldr	r0, [r3, #0]
    15f0:	f7ff bfa8 	b.w	1544 <__swbuf_r>
    15f4:	00003168 	andeq	r3, r0, r8, ror #2

000015f8 <_write_r>:
    15f8:	b538      	push	{r3, r4, r5, lr}
    15fa:	4605      	mov	r5, r0
    15fc:	4c06      	ldr	r4, [pc, #24]	; (1618 <_write_r+0x20>)
    15fe:	4608      	mov	r0, r1
    1600:	4611      	mov	r1, r2
    1602:	2200      	movs	r2, #0
    1604:	6022      	str	r2, [r4, #0]
    1606:	461a      	mov	r2, r3
    1608:	f7fe ed9c 	blx	144 <_write>
    160c:	1c43      	adds	r3, r0, #1
    160e:	d102      	bne.n	1616 <_write_r+0x1e>
    1610:	6823      	ldr	r3, [r4, #0]
    1612:	b103      	cbz	r3, 1616 <_write_r+0x1e>
    1614:	602b      	str	r3, [r5, #0]
    1616:	bd38      	pop	{r3, r4, r5, pc}
    1618:	000037ec 	andeq	r3, r0, ip, ror #15

0000161c <__swsetup_r>:
    161c:	4b32      	ldr	r3, [pc, #200]	; (16e8 <__swsetup_r+0xcc>)
    161e:	b570      	push	{r4, r5, r6, lr}
    1620:	4606      	mov	r6, r0
    1622:	681d      	ldr	r5, [r3, #0]
    1624:	460c      	mov	r4, r1
    1626:	b125      	cbz	r5, 1632 <__swsetup_r+0x16>
    1628:	69ab      	ldr	r3, [r5, #24]
    162a:	b913      	cbnz	r3, 1632 <__swsetup_r+0x16>
    162c:	4628      	mov	r0, r5
    162e:	f7ff f9c9 	bl	9c4 <__sinit>
    1632:	4b2e      	ldr	r3, [pc, #184]	; (16ec <__swsetup_r+0xd0>)
    1634:	429c      	cmp	r4, r3
    1636:	d10f      	bne.n	1658 <__swsetup_r+0x3c>
    1638:	686c      	ldr	r4, [r5, #4]
    163a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    163e:	b29a      	uxth	r2, r3
    1640:	0715      	lsls	r5, r2, #28
    1642:	d42c      	bmi.n	169e <__swsetup_r+0x82>
    1644:	06d0      	lsls	r0, r2, #27
    1646:	d411      	bmi.n	166c <__swsetup_r+0x50>
    1648:	2209      	movs	r2, #9
    164a:	6032      	str	r2, [r6, #0]
    164c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1650:	f04f 30ff 	mov.w	r0, #4294967295
    1654:	81a3      	strh	r3, [r4, #12]
    1656:	e03e      	b.n	16d6 <__swsetup_r+0xba>
    1658:	4b25      	ldr	r3, [pc, #148]	; (16f0 <__swsetup_r+0xd4>)
    165a:	429c      	cmp	r4, r3
    165c:	d101      	bne.n	1662 <__swsetup_r+0x46>
    165e:	68ac      	ldr	r4, [r5, #8]
    1660:	e7eb      	b.n	163a <__swsetup_r+0x1e>
    1662:	4b24      	ldr	r3, [pc, #144]	; (16f4 <__swsetup_r+0xd8>)
    1664:	429c      	cmp	r4, r3
    1666:	bf08      	it	eq
    1668:	68ec      	ldreq	r4, [r5, #12]
    166a:	e7e6      	b.n	163a <__swsetup_r+0x1e>
    166c:	0751      	lsls	r1, r2, #29
    166e:	d512      	bpl.n	1696 <__swsetup_r+0x7a>
    1670:	6b61      	ldr	r1, [r4, #52]	; 0x34
    1672:	b141      	cbz	r1, 1686 <__swsetup_r+0x6a>
    1674:	f104 0344 	add.w	r3, r4, #68	; 0x44
    1678:	4299      	cmp	r1, r3
    167a:	d002      	beq.n	1682 <__swsetup_r+0x66>
    167c:	4630      	mov	r0, r6
    167e:	f7ff fabb 	bl	bf8 <_free_r>
    1682:	2300      	movs	r3, #0
    1684:	6363      	str	r3, [r4, #52]	; 0x34
    1686:	89a3      	ldrh	r3, [r4, #12]
    1688:	f023 0324 	bic.w	r3, r3, #36	; 0x24
    168c:	81a3      	strh	r3, [r4, #12]
    168e:	2300      	movs	r3, #0
    1690:	6063      	str	r3, [r4, #4]
    1692:	6923      	ldr	r3, [r4, #16]
    1694:	6023      	str	r3, [r4, #0]
    1696:	89a3      	ldrh	r3, [r4, #12]
    1698:	f043 0308 	orr.w	r3, r3, #8
    169c:	81a3      	strh	r3, [r4, #12]
    169e:	6923      	ldr	r3, [r4, #16]
    16a0:	b94b      	cbnz	r3, 16b6 <__swsetup_r+0x9a>
    16a2:	89a3      	ldrh	r3, [r4, #12]
    16a4:	f403 7320 	and.w	r3, r3, #640	; 0x280
    16a8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    16ac:	d003      	beq.n	16b6 <__swsetup_r+0x9a>
    16ae:	4621      	mov	r1, r4
    16b0:	4630      	mov	r0, r6
    16b2:	f000 fa7b 	bl	1bac <__smakebuf_r>
    16b6:	89a2      	ldrh	r2, [r4, #12]
    16b8:	f012 0301 	ands.w	r3, r2, #1
    16bc:	d00c      	beq.n	16d8 <__swsetup_r+0xbc>
    16be:	2300      	movs	r3, #0
    16c0:	60a3      	str	r3, [r4, #8]
    16c2:	6963      	ldr	r3, [r4, #20]
    16c4:	425b      	negs	r3, r3
    16c6:	61a3      	str	r3, [r4, #24]
    16c8:	6923      	ldr	r3, [r4, #16]
    16ca:	b953      	cbnz	r3, 16e2 <__swsetup_r+0xc6>
    16cc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    16d0:	f013 0080 	ands.w	r0, r3, #128	; 0x80
    16d4:	d1ba      	bne.n	164c <__swsetup_r+0x30>
    16d6:	bd70      	pop	{r4, r5, r6, pc}
    16d8:	0792      	lsls	r2, r2, #30
    16da:	bf58      	it	pl
    16dc:	6963      	ldrpl	r3, [r4, #20]
    16de:	60a3      	str	r3, [r4, #8]
    16e0:	e7f2      	b.n	16c8 <__swsetup_r+0xac>
    16e2:	2000      	movs	r0, #0
    16e4:	e7f7      	b.n	16d6 <__swsetup_r+0xba>
    16e6:	bf00      	nop
    16e8:	00003168 	andeq	r3, r0, r8, ror #2
    16ec:	00003564 	andeq	r3, r0, r4, ror #10
    16f0:	00003584 	andeq	r3, r0, r4, lsl #11
    16f4:	00003544 	andeq	r3, r0, r4, asr #10

000016f8 <_close_r>:
    16f8:	b538      	push	{r3, r4, r5, lr}
    16fa:	4605      	mov	r5, r0
    16fc:	4c05      	ldr	r4, [pc, #20]	; (1714 <_close_r+0x1c>)
    16fe:	4608      	mov	r0, r1
    1700:	2300      	movs	r3, #0
    1702:	6023      	str	r3, [r4, #0]
    1704:	f001 fca6 	bl	3054 <_close>
    1708:	1c43      	adds	r3, r0, #1
    170a:	d102      	bne.n	1712 <_close_r+0x1a>
    170c:	6823      	ldr	r3, [r4, #0]
    170e:	b103      	cbz	r3, 1712 <_close_r+0x1a>
    1710:	602b      	str	r3, [r5, #0]
    1712:	bd38      	pop	{r3, r4, r5, pc}
    1714:	000037ec 	andeq	r3, r0, ip, ror #15

00001718 <__sflush_r>:
    1718:	898a      	ldrh	r2, [r1, #12]
    171a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    171e:	4605      	mov	r5, r0
    1720:	0710      	lsls	r0, r2, #28
    1722:	460c      	mov	r4, r1
    1724:	d459      	bmi.n	17da <__sflush_r+0xc2>
    1726:	684b      	ldr	r3, [r1, #4]
    1728:	2b00      	cmp	r3, #0
    172a:	dc05      	bgt.n	1738 <__sflush_r+0x20>
    172c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
    172e:	2b00      	cmp	r3, #0
    1730:	dc02      	bgt.n	1738 <__sflush_r+0x20>
    1732:	2000      	movs	r0, #0
    1734:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    1738:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
    173a:	2e00      	cmp	r6, #0
    173c:	d0f9      	beq.n	1732 <__sflush_r+0x1a>
    173e:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
    1742:	682f      	ldr	r7, [r5, #0]
    1744:	f04f 0300 	mov.w	r3, #0
    1748:	6a21      	ldr	r1, [r4, #32]
    174a:	602b      	str	r3, [r5, #0]
    174c:	d032      	beq.n	17b4 <__sflush_r+0x9c>
    174e:	6d60      	ldr	r0, [r4, #84]	; 0x54
    1750:	89a3      	ldrh	r3, [r4, #12]
    1752:	075a      	lsls	r2, r3, #29
    1754:	d505      	bpl.n	1762 <__sflush_r+0x4a>
    1756:	6863      	ldr	r3, [r4, #4]
    1758:	1ac0      	subs	r0, r0, r3
    175a:	6b63      	ldr	r3, [r4, #52]	; 0x34
    175c:	b10b      	cbz	r3, 1762 <__sflush_r+0x4a>
    175e:	6c23      	ldr	r3, [r4, #64]	; 0x40
    1760:	1ac0      	subs	r0, r0, r3
    1762:	2300      	movs	r3, #0
    1764:	4602      	mov	r2, r0
    1766:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
    1768:	4628      	mov	r0, r5
    176a:	6a21      	ldr	r1, [r4, #32]
    176c:	47b0      	blx	r6
    176e:	1c43      	adds	r3, r0, #1
    1770:	89a3      	ldrh	r3, [r4, #12]
    1772:	d106      	bne.n	1782 <__sflush_r+0x6a>
    1774:	6829      	ldr	r1, [r5, #0]
    1776:	291d      	cmp	r1, #29
    1778:	d848      	bhi.n	180c <__sflush_r+0xf4>
    177a:	4a29      	ldr	r2, [pc, #164]	; (1820 <__sflush_r+0x108>)
    177c:	40ca      	lsrs	r2, r1
    177e:	07d6      	lsls	r6, r2, #31
    1780:	d544      	bpl.n	180c <__sflush_r+0xf4>
    1782:	2200      	movs	r2, #0
    1784:	6062      	str	r2, [r4, #4]
    1786:	6922      	ldr	r2, [r4, #16]
    1788:	04d9      	lsls	r1, r3, #19
    178a:	6022      	str	r2, [r4, #0]
    178c:	d504      	bpl.n	1798 <__sflush_r+0x80>
    178e:	1c42      	adds	r2, r0, #1
    1790:	d101      	bne.n	1796 <__sflush_r+0x7e>
    1792:	682b      	ldr	r3, [r5, #0]
    1794:	b903      	cbnz	r3, 1798 <__sflush_r+0x80>
    1796:	6560      	str	r0, [r4, #84]	; 0x54
    1798:	6b61      	ldr	r1, [r4, #52]	; 0x34
    179a:	602f      	str	r7, [r5, #0]
    179c:	2900      	cmp	r1, #0
    179e:	d0c8      	beq.n	1732 <__sflush_r+0x1a>
    17a0:	f104 0344 	add.w	r3, r4, #68	; 0x44
    17a4:	4299      	cmp	r1, r3
    17a6:	d002      	beq.n	17ae <__sflush_r+0x96>
    17a8:	4628      	mov	r0, r5
    17aa:	f7ff fa25 	bl	bf8 <_free_r>
    17ae:	2000      	movs	r0, #0
    17b0:	6360      	str	r0, [r4, #52]	; 0x34
    17b2:	e7bf      	b.n	1734 <__sflush_r+0x1c>
    17b4:	2301      	movs	r3, #1
    17b6:	4628      	mov	r0, r5
    17b8:	47b0      	blx	r6
    17ba:	1c41      	adds	r1, r0, #1
    17bc:	d1c8      	bne.n	1750 <__sflush_r+0x38>
    17be:	682b      	ldr	r3, [r5, #0]
    17c0:	2b00      	cmp	r3, #0
    17c2:	d0c5      	beq.n	1750 <__sflush_r+0x38>
    17c4:	2b1d      	cmp	r3, #29
    17c6:	d001      	beq.n	17cc <__sflush_r+0xb4>
    17c8:	2b16      	cmp	r3, #22
    17ca:	d101      	bne.n	17d0 <__sflush_r+0xb8>
    17cc:	602f      	str	r7, [r5, #0]
    17ce:	e7b0      	b.n	1732 <__sflush_r+0x1a>
    17d0:	89a3      	ldrh	r3, [r4, #12]
    17d2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    17d6:	81a3      	strh	r3, [r4, #12]
    17d8:	e7ac      	b.n	1734 <__sflush_r+0x1c>
    17da:	690f      	ldr	r7, [r1, #16]
    17dc:	2f00      	cmp	r7, #0
    17de:	d0a8      	beq.n	1732 <__sflush_r+0x1a>
    17e0:	0793      	lsls	r3, r2, #30
    17e2:	680e      	ldr	r6, [r1, #0]
    17e4:	600f      	str	r7, [r1, #0]
    17e6:	bf08      	it	eq
    17e8:	694b      	ldreq	r3, [r1, #20]
    17ea:	eba6 0807 	sub.w	r8, r6, r7
    17ee:	bf18      	it	ne
    17f0:	2300      	movne	r3, #0
    17f2:	608b      	str	r3, [r1, #8]
    17f4:	f1b8 0f00 	cmp.w	r8, #0
    17f8:	dd9b      	ble.n	1732 <__sflush_r+0x1a>
    17fa:	4643      	mov	r3, r8
    17fc:	463a      	mov	r2, r7
    17fe:	6a21      	ldr	r1, [r4, #32]
    1800:	4628      	mov	r0, r5
    1802:	6aa6      	ldr	r6, [r4, #40]	; 0x28
    1804:	47b0      	blx	r6
    1806:	2800      	cmp	r0, #0
    1808:	dc06      	bgt.n	1818 <__sflush_r+0x100>
    180a:	89a3      	ldrh	r3, [r4, #12]
    180c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1810:	f04f 30ff 	mov.w	r0, #4294967295
    1814:	81a3      	strh	r3, [r4, #12]
    1816:	e78d      	b.n	1734 <__sflush_r+0x1c>
    1818:	4407      	add	r7, r0
    181a:	eba8 0800 	sub.w	r8, r8, r0
    181e:	e7e9      	b.n	17f4 <__sflush_r+0xdc>
    1820:	20400001 	subcs	r0, r0, r1

00001824 <_fflush_r>:
    1824:	b538      	push	{r3, r4, r5, lr}
    1826:	4605      	mov	r5, r0
    1828:	690b      	ldr	r3, [r1, #16]
    182a:	460c      	mov	r4, r1
    182c:	b1db      	cbz	r3, 1866 <_fflush_r+0x42>
    182e:	b118      	cbz	r0, 1838 <_fflush_r+0x14>
    1830:	6983      	ldr	r3, [r0, #24]
    1832:	b90b      	cbnz	r3, 1838 <_fflush_r+0x14>
    1834:	f7ff f8c6 	bl	9c4 <__sinit>
    1838:	4b0c      	ldr	r3, [pc, #48]	; (186c <_fflush_r+0x48>)
    183a:	429c      	cmp	r4, r3
    183c:	d109      	bne.n	1852 <_fflush_r+0x2e>
    183e:	686c      	ldr	r4, [r5, #4]
    1840:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    1844:	b17b      	cbz	r3, 1866 <_fflush_r+0x42>
    1846:	4621      	mov	r1, r4
    1848:	4628      	mov	r0, r5
    184a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    184e:	f7ff bf63 	b.w	1718 <__sflush_r>
    1852:	4b07      	ldr	r3, [pc, #28]	; (1870 <_fflush_r+0x4c>)
    1854:	429c      	cmp	r4, r3
    1856:	d101      	bne.n	185c <_fflush_r+0x38>
    1858:	68ac      	ldr	r4, [r5, #8]
    185a:	e7f1      	b.n	1840 <_fflush_r+0x1c>
    185c:	4b05      	ldr	r3, [pc, #20]	; (1874 <_fflush_r+0x50>)
    185e:	429c      	cmp	r4, r3
    1860:	bf08      	it	eq
    1862:	68ec      	ldreq	r4, [r5, #12]
    1864:	e7ec      	b.n	1840 <_fflush_r+0x1c>
    1866:	2000      	movs	r0, #0
    1868:	bd38      	pop	{r3, r4, r5, pc}
    186a:	bf00      	nop
    186c:	00003564 	andeq	r3, r0, r4, ror #10
    1870:	00003584 	andeq	r3, r0, r4, lsl #11
    1874:	00003544 	andeq	r3, r0, r4, asr #10

00001878 <fflush>:
    1878:	4601      	mov	r1, r0
    187a:	b920      	cbnz	r0, 1886 <fflush+0xe>
    187c:	4b04      	ldr	r3, [pc, #16]	; (1890 <fflush+0x18>)
    187e:	4905      	ldr	r1, [pc, #20]	; (1894 <fflush+0x1c>)
    1880:	6818      	ldr	r0, [r3, #0]
    1882:	f7ff b95f 	b.w	b44 <_fwalk_reent>
    1886:	4b04      	ldr	r3, [pc, #16]	; (1898 <fflush+0x20>)
    1888:	6818      	ldr	r0, [r3, #0]
    188a:	f7ff bfcb 	b.w	1824 <_fflush_r>
    188e:	bf00      	nop
    1890:	000035a4 	andeq	r3, r0, r4, lsr #11
    1894:	00001825 	andeq	r1, r0, r5, lsr #16
    1898:	00003168 	andeq	r3, r0, r8, ror #2

0000189c <__sfvwrite_r>:
    189c:	6893      	ldr	r3, [r2, #8]
    189e:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    18a2:	4607      	mov	r7, r0
    18a4:	460c      	mov	r4, r1
    18a6:	4690      	mov	r8, r2
    18a8:	b91b      	cbnz	r3, 18b2 <__sfvwrite_r+0x16>
    18aa:	2000      	movs	r0, #0
    18ac:	b003      	add	sp, #12
    18ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    18b2:	898b      	ldrh	r3, [r1, #12]
    18b4:	0718      	lsls	r0, r3, #28
    18b6:	d550      	bpl.n	195a <__sfvwrite_r+0xbe>
    18b8:	690b      	ldr	r3, [r1, #16]
    18ba:	2b00      	cmp	r3, #0
    18bc:	d04d      	beq.n	195a <__sfvwrite_r+0xbe>
    18be:	89a3      	ldrh	r3, [r4, #12]
    18c0:	f8d8 6000 	ldr.w	r6, [r8]
    18c4:	f013 0902 	ands.w	r9, r3, #2
    18c8:	d16c      	bne.n	19a4 <__sfvwrite_r+0x108>
    18ca:	f013 0301 	ands.w	r3, r3, #1
    18ce:	f000 809c 	beq.w	1a0a <__sfvwrite_r+0x16e>
    18d2:	4648      	mov	r0, r9
    18d4:	46ca      	mov	sl, r9
    18d6:	46cb      	mov	fp, r9
    18d8:	f1bb 0f00 	cmp.w	fp, #0
    18dc:	f000 8108 	beq.w	1af0 <__sfvwrite_r+0x254>
    18e0:	b950      	cbnz	r0, 18f8 <__sfvwrite_r+0x5c>
    18e2:	465a      	mov	r2, fp
    18e4:	210a      	movs	r1, #10
    18e6:	4650      	mov	r0, sl
    18e8:	f000 f9a0 	bl	1c2c <memchr>
    18ec:	2800      	cmp	r0, #0
    18ee:	f000 8104 	beq.w	1afa <__sfvwrite_r+0x25e>
    18f2:	3001      	adds	r0, #1
    18f4:	eba0 090a 	sub.w	r9, r0, sl
    18f8:	45d9      	cmp	r9, fp
    18fa:	6820      	ldr	r0, [r4, #0]
    18fc:	6921      	ldr	r1, [r4, #16]
    18fe:	464b      	mov	r3, r9
    1900:	bf28      	it	cs
    1902:	465b      	movcs	r3, fp
    1904:	6962      	ldr	r2, [r4, #20]
    1906:	4288      	cmp	r0, r1
    1908:	f240 80fa 	bls.w	1b00 <__sfvwrite_r+0x264>
    190c:	68a5      	ldr	r5, [r4, #8]
    190e:	4415      	add	r5, r2
    1910:	42ab      	cmp	r3, r5
    1912:	f340 80f5 	ble.w	1b00 <__sfvwrite_r+0x264>
    1916:	4651      	mov	r1, sl
    1918:	462a      	mov	r2, r5
    191a:	f000 f9a0 	bl	1c5e <memmove>
    191e:	6823      	ldr	r3, [r4, #0]
    1920:	4621      	mov	r1, r4
    1922:	4638      	mov	r0, r7
    1924:	442b      	add	r3, r5
    1926:	6023      	str	r3, [r4, #0]
    1928:	f7ff ff7c 	bl	1824 <_fflush_r>
    192c:	2800      	cmp	r0, #0
    192e:	d167      	bne.n	1a00 <__sfvwrite_r+0x164>
    1930:	ebb9 0905 	subs.w	r9, r9, r5
    1934:	f040 80fe 	bne.w	1b34 <__sfvwrite_r+0x298>
    1938:	4621      	mov	r1, r4
    193a:	4638      	mov	r0, r7
    193c:	f7ff ff72 	bl	1824 <_fflush_r>
    1940:	2800      	cmp	r0, #0
    1942:	d15d      	bne.n	1a00 <__sfvwrite_r+0x164>
    1944:	f8d8 3008 	ldr.w	r3, [r8, #8]
    1948:	44aa      	add	sl, r5
    194a:	ebab 0b05 	sub.w	fp, fp, r5
    194e:	1b5d      	subs	r5, r3, r5
    1950:	f8c8 5008 	str.w	r5, [r8, #8]
    1954:	2d00      	cmp	r5, #0
    1956:	d1bf      	bne.n	18d8 <__sfvwrite_r+0x3c>
    1958:	e7a7      	b.n	18aa <__sfvwrite_r+0xe>
    195a:	4621      	mov	r1, r4
    195c:	4638      	mov	r0, r7
    195e:	f7ff fe5d 	bl	161c <__swsetup_r>
    1962:	2800      	cmp	r0, #0
    1964:	d0ab      	beq.n	18be <__sfvwrite_r+0x22>
    1966:	f04f 30ff 	mov.w	r0, #4294967295
    196a:	e79f      	b.n	18ac <__sfvwrite_r+0x10>
    196c:	e9d6 a900 	ldrd	sl, r9, [r6]
    1970:	3608      	adds	r6, #8
    1972:	f1b9 0f00 	cmp.w	r9, #0
    1976:	d0f9      	beq.n	196c <__sfvwrite_r+0xd0>
    1978:	45d9      	cmp	r9, fp
    197a:	464b      	mov	r3, r9
    197c:	4652      	mov	r2, sl
    197e:	6a21      	ldr	r1, [r4, #32]
    1980:	bf28      	it	cs
    1982:	465b      	movcs	r3, fp
    1984:	4638      	mov	r0, r7
    1986:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    1988:	47a8      	blx	r5
    198a:	2800      	cmp	r0, #0
    198c:	dd38      	ble.n	1a00 <__sfvwrite_r+0x164>
    198e:	f8d8 3008 	ldr.w	r3, [r8, #8]
    1992:	4482      	add	sl, r0
    1994:	eba9 0900 	sub.w	r9, r9, r0
    1998:	1a18      	subs	r0, r3, r0
    199a:	f8c8 0008 	str.w	r0, [r8, #8]
    199e:	2800      	cmp	r0, #0
    19a0:	d1e7      	bne.n	1972 <__sfvwrite_r+0xd6>
    19a2:	e782      	b.n	18aa <__sfvwrite_r+0xe>
    19a4:	f04f 0a00 	mov.w	sl, #0
    19a8:	f8df b190 	ldr.w	fp, [pc, #400]	; 1b3c <__sfvwrite_r+0x2a0>
    19ac:	46d1      	mov	r9, sl
    19ae:	e7e0      	b.n	1972 <__sfvwrite_r+0xd6>
    19b0:	e9d6 9a00 	ldrd	r9, sl, [r6]
    19b4:	3608      	adds	r6, #8
    19b6:	f1ba 0f00 	cmp.w	sl, #0
    19ba:	d0f9      	beq.n	19b0 <__sfvwrite_r+0x114>
    19bc:	89a2      	ldrh	r2, [r4, #12]
    19be:	68a3      	ldr	r3, [r4, #8]
    19c0:	0591      	lsls	r1, r2, #22
    19c2:	6820      	ldr	r0, [r4, #0]
    19c4:	d564      	bpl.n	1a90 <__sfvwrite_r+0x1f4>
    19c6:	4553      	cmp	r3, sl
    19c8:	d836      	bhi.n	1a38 <__sfvwrite_r+0x19c>
    19ca:	f412 6f90 	tst.w	r2, #1152	; 0x480
    19ce:	d033      	beq.n	1a38 <__sfvwrite_r+0x19c>
    19d0:	6965      	ldr	r5, [r4, #20]
    19d2:	6921      	ldr	r1, [r4, #16]
    19d4:	eb05 0545 	add.w	r5, r5, r5, lsl #1
    19d8:	eba0 0b01 	sub.w	fp, r0, r1
    19dc:	f10b 0301 	add.w	r3, fp, #1
    19e0:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
    19e4:	4453      	add	r3, sl
    19e6:	106d      	asrs	r5, r5, #1
    19e8:	429d      	cmp	r5, r3
    19ea:	bf38      	it	cc
    19ec:	461d      	movcc	r5, r3
    19ee:	0553      	lsls	r3, r2, #21
    19f0:	d53e      	bpl.n	1a70 <__sfvwrite_r+0x1d4>
    19f2:	4629      	mov	r1, r5
    19f4:	4638      	mov	r0, r7
    19f6:	f7ff f94b 	bl	c90 <_malloc_r>
    19fa:	b948      	cbnz	r0, 1a10 <__sfvwrite_r+0x174>
    19fc:	230c      	movs	r3, #12
    19fe:	603b      	str	r3, [r7, #0]
    1a00:	89a3      	ldrh	r3, [r4, #12]
    1a02:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1a06:	81a3      	strh	r3, [r4, #12]
    1a08:	e7ad      	b.n	1966 <__sfvwrite_r+0xca>
    1a0a:	4699      	mov	r9, r3
    1a0c:	469a      	mov	sl, r3
    1a0e:	e7d2      	b.n	19b6 <__sfvwrite_r+0x11a>
    1a10:	465a      	mov	r2, fp
    1a12:	6921      	ldr	r1, [r4, #16]
    1a14:	9001      	str	r0, [sp, #4]
    1a16:	f000 f917 	bl	1c48 <memcpy>
    1a1a:	89a2      	ldrh	r2, [r4, #12]
    1a1c:	9b01      	ldr	r3, [sp, #4]
    1a1e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
    1a22:	f042 0280 	orr.w	r2, r2, #128	; 0x80
    1a26:	81a2      	strh	r2, [r4, #12]
    1a28:	6123      	str	r3, [r4, #16]
    1a2a:	445b      	add	r3, fp
    1a2c:	6023      	str	r3, [r4, #0]
    1a2e:	4653      	mov	r3, sl
    1a30:	6165      	str	r5, [r4, #20]
    1a32:	eba5 050b 	sub.w	r5, r5, fp
    1a36:	60a5      	str	r5, [r4, #8]
    1a38:	4553      	cmp	r3, sl
    1a3a:	4649      	mov	r1, r9
    1a3c:	6820      	ldr	r0, [r4, #0]
    1a3e:	4655      	mov	r5, sl
    1a40:	bf28      	it	cs
    1a42:	4653      	movcs	r3, sl
    1a44:	9301      	str	r3, [sp, #4]
    1a46:	461a      	mov	r2, r3
    1a48:	f000 f909 	bl	1c5e <memmove>
    1a4c:	68a2      	ldr	r2, [r4, #8]
    1a4e:	9b01      	ldr	r3, [sp, #4]
    1a50:	1ad2      	subs	r2, r2, r3
    1a52:	60a2      	str	r2, [r4, #8]
    1a54:	6822      	ldr	r2, [r4, #0]
    1a56:	4413      	add	r3, r2
    1a58:	6023      	str	r3, [r4, #0]
    1a5a:	f8d8 3008 	ldr.w	r3, [r8, #8]
    1a5e:	44a9      	add	r9, r5
    1a60:	ebaa 0a05 	sub.w	sl, sl, r5
    1a64:	1b5d      	subs	r5, r3, r5
    1a66:	f8c8 5008 	str.w	r5, [r8, #8]
    1a6a:	2d00      	cmp	r5, #0
    1a6c:	d1a3      	bne.n	19b6 <__sfvwrite_r+0x11a>
    1a6e:	e71c      	b.n	18aa <__sfvwrite_r+0xe>
    1a70:	462a      	mov	r2, r5
    1a72:	4638      	mov	r0, r7
    1a74:	f000 f90e 	bl	1c94 <_realloc_r>
    1a78:	4603      	mov	r3, r0
    1a7a:	2800      	cmp	r0, #0
    1a7c:	d1d4      	bne.n	1a28 <__sfvwrite_r+0x18c>
    1a7e:	6921      	ldr	r1, [r4, #16]
    1a80:	4638      	mov	r0, r7
    1a82:	f7ff f8b9 	bl	bf8 <_free_r>
    1a86:	89a3      	ldrh	r3, [r4, #12]
    1a88:	f023 0380 	bic.w	r3, r3, #128	; 0x80
    1a8c:	81a3      	strh	r3, [r4, #12]
    1a8e:	e7b5      	b.n	19fc <__sfvwrite_r+0x160>
    1a90:	6922      	ldr	r2, [r4, #16]
    1a92:	4282      	cmp	r2, r0
    1a94:	d302      	bcc.n	1a9c <__sfvwrite_r+0x200>
    1a96:	6965      	ldr	r5, [r4, #20]
    1a98:	4555      	cmp	r5, sl
    1a9a:	d916      	bls.n	1aca <__sfvwrite_r+0x22e>
    1a9c:	4553      	cmp	r3, sl
    1a9e:	4649      	mov	r1, r9
    1aa0:	bf28      	it	cs
    1aa2:	4653      	movcs	r3, sl
    1aa4:	461a      	mov	r2, r3
    1aa6:	461d      	mov	r5, r3
    1aa8:	f000 f8d9 	bl	1c5e <memmove>
    1aac:	68a3      	ldr	r3, [r4, #8]
    1aae:	6822      	ldr	r2, [r4, #0]
    1ab0:	1b5b      	subs	r3, r3, r5
    1ab2:	60a3      	str	r3, [r4, #8]
    1ab4:	442a      	add	r2, r5
    1ab6:	6022      	str	r2, [r4, #0]
    1ab8:	2b00      	cmp	r3, #0
    1aba:	d1ce      	bne.n	1a5a <__sfvwrite_r+0x1be>
    1abc:	4621      	mov	r1, r4
    1abe:	4638      	mov	r0, r7
    1ac0:	f7ff feb0 	bl	1824 <_fflush_r>
    1ac4:	2800      	cmp	r0, #0
    1ac6:	d0c8      	beq.n	1a5a <__sfvwrite_r+0x1be>
    1ac8:	e79a      	b.n	1a00 <__sfvwrite_r+0x164>
    1aca:	4b1b      	ldr	r3, [pc, #108]	; (1b38 <__sfvwrite_r+0x29c>)
    1acc:	4629      	mov	r1, r5
    1ace:	459a      	cmp	sl, r3
    1ad0:	bf94      	ite	ls
    1ad2:	4650      	movls	r0, sl
    1ad4:	f06f 4000 	mvnhi.w	r0, #2147483648	; 0x80000000
    1ad8:	f001 f962 	bl	2da0 <__divsi3>
    1adc:	464a      	mov	r2, r9
    1ade:	6a21      	ldr	r1, [r4, #32]
    1ae0:	fb05 f300 	mul.w	r3, r5, r0
    1ae4:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    1ae6:	4638      	mov	r0, r7
    1ae8:	47a8      	blx	r5
    1aea:	1e05      	subs	r5, r0, #0
    1aec:	dcb5      	bgt.n	1a5a <__sfvwrite_r+0x1be>
    1aee:	e787      	b.n	1a00 <__sfvwrite_r+0x164>
    1af0:	e9d6 ab00 	ldrd	sl, fp, [r6]
    1af4:	2000      	movs	r0, #0
    1af6:	3608      	adds	r6, #8
    1af8:	e6ee      	b.n	18d8 <__sfvwrite_r+0x3c>
    1afa:	f10b 0901 	add.w	r9, fp, #1
    1afe:	e6fb      	b.n	18f8 <__sfvwrite_r+0x5c>
    1b00:	429a      	cmp	r2, r3
    1b02:	dc09      	bgt.n	1b18 <__sfvwrite_r+0x27c>
    1b04:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    1b06:	4613      	mov	r3, r2
    1b08:	6a21      	ldr	r1, [r4, #32]
    1b0a:	4652      	mov	r2, sl
    1b0c:	4638      	mov	r0, r7
    1b0e:	47a8      	blx	r5
    1b10:	1e05      	subs	r5, r0, #0
    1b12:	f73f af0d 	bgt.w	1930 <__sfvwrite_r+0x94>
    1b16:	e773      	b.n	1a00 <__sfvwrite_r+0x164>
    1b18:	461a      	mov	r2, r3
    1b1a:	4651      	mov	r1, sl
    1b1c:	9301      	str	r3, [sp, #4]
    1b1e:	f000 f89e 	bl	1c5e <memmove>
    1b22:	9b01      	ldr	r3, [sp, #4]
    1b24:	68a2      	ldr	r2, [r4, #8]
    1b26:	1ad2      	subs	r2, r2, r3
    1b28:	60a2      	str	r2, [r4, #8]
    1b2a:	6822      	ldr	r2, [r4, #0]
    1b2c:	461d      	mov	r5, r3
    1b2e:	441a      	add	r2, r3
    1b30:	6022      	str	r2, [r4, #0]
    1b32:	e6fd      	b.n	1930 <__sfvwrite_r+0x94>
    1b34:	2001      	movs	r0, #1
    1b36:	e705      	b.n	1944 <__sfvwrite_r+0xa8>
    1b38:	7ffffffe 	svcvc	0x00fffffe
    1b3c:	7ffffc00 	svcvc	0x00fffc00

00001b40 <_lseek_r>:
    1b40:	b538      	push	{r3, r4, r5, lr}
    1b42:	4605      	mov	r5, r0
    1b44:	4c06      	ldr	r4, [pc, #24]	; (1b60 <_lseek_r+0x20>)
    1b46:	4608      	mov	r0, r1
    1b48:	4611      	mov	r1, r2
    1b4a:	2200      	movs	r2, #0
    1b4c:	6022      	str	r2, [r4, #0]
    1b4e:	461a      	mov	r2, r3
    1b50:	f001 fa9c 	bl	308c <_lseek>
    1b54:	1c43      	adds	r3, r0, #1
    1b56:	d102      	bne.n	1b5e <_lseek_r+0x1e>
    1b58:	6823      	ldr	r3, [r4, #0]
    1b5a:	b103      	cbz	r3, 1b5e <_lseek_r+0x1e>
    1b5c:	602b      	str	r3, [r5, #0]
    1b5e:	bd38      	pop	{r3, r4, r5, pc}
    1b60:	000037ec 	andeq	r3, r0, ip, ror #15

00001b64 <__swhatbuf_r>:
    1b64:	b570      	push	{r4, r5, r6, lr}
    1b66:	460e      	mov	r6, r1
    1b68:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    1b6c:	b096      	sub	sp, #88	; 0x58
    1b6e:	4614      	mov	r4, r2
    1b70:	461d      	mov	r5, r3
    1b72:	2900      	cmp	r1, #0
    1b74:	da07      	bge.n	1b86 <__swhatbuf_r+0x22>
    1b76:	2300      	movs	r3, #0
    1b78:	602b      	str	r3, [r5, #0]
    1b7a:	89b3      	ldrh	r3, [r6, #12]
    1b7c:	061a      	lsls	r2, r3, #24
    1b7e:	d410      	bmi.n	1ba2 <__swhatbuf_r+0x3e>
    1b80:	f44f 6380 	mov.w	r3, #1024	; 0x400
    1b84:	e00e      	b.n	1ba4 <__swhatbuf_r+0x40>
    1b86:	466a      	mov	r2, sp
    1b88:	f000 ff12 	bl	29b0 <_fstat_r>
    1b8c:	2800      	cmp	r0, #0
    1b8e:	dbf2      	blt.n	1b76 <__swhatbuf_r+0x12>
    1b90:	9a01      	ldr	r2, [sp, #4]
    1b92:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
    1b96:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
    1b9a:	425a      	negs	r2, r3
    1b9c:	415a      	adcs	r2, r3
    1b9e:	602a      	str	r2, [r5, #0]
    1ba0:	e7ee      	b.n	1b80 <__swhatbuf_r+0x1c>
    1ba2:	2340      	movs	r3, #64	; 0x40
    1ba4:	2000      	movs	r0, #0
    1ba6:	6023      	str	r3, [r4, #0]
    1ba8:	b016      	add	sp, #88	; 0x58
    1baa:	bd70      	pop	{r4, r5, r6, pc}

00001bac <__smakebuf_r>:
    1bac:	898b      	ldrh	r3, [r1, #12]
    1bae:	b573      	push	{r0, r1, r4, r5, r6, lr}
    1bb0:	079d      	lsls	r5, r3, #30
    1bb2:	4606      	mov	r6, r0
    1bb4:	460c      	mov	r4, r1
    1bb6:	d507      	bpl.n	1bc8 <__smakebuf_r+0x1c>
    1bb8:	f104 0347 	add.w	r3, r4, #71	; 0x47
    1bbc:	6023      	str	r3, [r4, #0]
    1bbe:	6123      	str	r3, [r4, #16]
    1bc0:	2301      	movs	r3, #1
    1bc2:	6163      	str	r3, [r4, #20]
    1bc4:	b002      	add	sp, #8
    1bc6:	bd70      	pop	{r4, r5, r6, pc}
    1bc8:	ab01      	add	r3, sp, #4
    1bca:	466a      	mov	r2, sp
    1bcc:	f7ff ffca 	bl	1b64 <__swhatbuf_r>
    1bd0:	9900      	ldr	r1, [sp, #0]
    1bd2:	4605      	mov	r5, r0
    1bd4:	4630      	mov	r0, r6
    1bd6:	f7ff f85b 	bl	c90 <_malloc_r>
    1bda:	b948      	cbnz	r0, 1bf0 <__smakebuf_r+0x44>
    1bdc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    1be0:	059a      	lsls	r2, r3, #22
    1be2:	d4ef      	bmi.n	1bc4 <__smakebuf_r+0x18>
    1be4:	f023 0303 	bic.w	r3, r3, #3
    1be8:	f043 0302 	orr.w	r3, r3, #2
    1bec:	81a3      	strh	r3, [r4, #12]
    1bee:	e7e3      	b.n	1bb8 <__smakebuf_r+0xc>
    1bf0:	4b0d      	ldr	r3, [pc, #52]	; (1c28 <__smakebuf_r+0x7c>)
    1bf2:	62b3      	str	r3, [r6, #40]	; 0x28
    1bf4:	89a3      	ldrh	r3, [r4, #12]
    1bf6:	6020      	str	r0, [r4, #0]
    1bf8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    1bfc:	81a3      	strh	r3, [r4, #12]
    1bfe:	9b00      	ldr	r3, [sp, #0]
    1c00:	6120      	str	r0, [r4, #16]
    1c02:	6163      	str	r3, [r4, #20]
    1c04:	9b01      	ldr	r3, [sp, #4]
    1c06:	b15b      	cbz	r3, 1c20 <__smakebuf_r+0x74>
    1c08:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
    1c0c:	4630      	mov	r0, r6
    1c0e:	f000 fee1 	bl	29d4 <_isatty_r>
    1c12:	b128      	cbz	r0, 1c20 <__smakebuf_r+0x74>
    1c14:	89a3      	ldrh	r3, [r4, #12]
    1c16:	f023 0303 	bic.w	r3, r3, #3
    1c1a:	f043 0301 	orr.w	r3, r3, #1
    1c1e:	81a3      	strh	r3, [r4, #12]
    1c20:	89a3      	ldrh	r3, [r4, #12]
    1c22:	431d      	orrs	r5, r3
    1c24:	81a5      	strh	r5, [r4, #12]
    1c26:	e7cd      	b.n	1bc4 <__smakebuf_r+0x18>
    1c28:	0000097d 	andeq	r0, r0, sp, ror r9

00001c2c <memchr>:
    1c2c:	b2c9      	uxtb	r1, r1
    1c2e:	4402      	add	r2, r0
    1c30:	b510      	push	{r4, lr}
    1c32:	4290      	cmp	r0, r2
    1c34:	4603      	mov	r3, r0
    1c36:	d101      	bne.n	1c3c <memchr+0x10>
    1c38:	2300      	movs	r3, #0
    1c3a:	e003      	b.n	1c44 <memchr+0x18>
    1c3c:	781c      	ldrb	r4, [r3, #0]
    1c3e:	3001      	adds	r0, #1
    1c40:	428c      	cmp	r4, r1
    1c42:	d1f6      	bne.n	1c32 <memchr+0x6>
    1c44:	4618      	mov	r0, r3
    1c46:	bd10      	pop	{r4, pc}

00001c48 <memcpy>:
    1c48:	1e43      	subs	r3, r0, #1
    1c4a:	440a      	add	r2, r1
    1c4c:	b510      	push	{r4, lr}
    1c4e:	4291      	cmp	r1, r2
    1c50:	d100      	bne.n	1c54 <memcpy+0xc>
    1c52:	bd10      	pop	{r4, pc}
    1c54:	f811 4b01 	ldrb.w	r4, [r1], #1
    1c58:	f803 4f01 	strb.w	r4, [r3, #1]!
    1c5c:	e7f7      	b.n	1c4e <memcpy+0x6>

00001c5e <memmove>:
    1c5e:	4288      	cmp	r0, r1
    1c60:	eb01 0302 	add.w	r3, r1, r2
    1c64:	b510      	push	{r4, lr}
    1c66:	d807      	bhi.n	1c78 <memmove+0x1a>
    1c68:	1e42      	subs	r2, r0, #1
    1c6a:	4299      	cmp	r1, r3
    1c6c:	d00a      	beq.n	1c84 <memmove+0x26>
    1c6e:	f811 4b01 	ldrb.w	r4, [r1], #1
    1c72:	f802 4f01 	strb.w	r4, [r2, #1]!
    1c76:	e7f8      	b.n	1c6a <memmove+0xc>
    1c78:	4283      	cmp	r3, r0
    1c7a:	d9f5      	bls.n	1c68 <memmove+0xa>
    1c7c:	1881      	adds	r1, r0, r2
    1c7e:	1ad2      	subs	r2, r2, r3
    1c80:	42d3      	cmn	r3, r2
    1c82:	d100      	bne.n	1c86 <memmove+0x28>
    1c84:	bd10      	pop	{r4, pc}
    1c86:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
    1c8a:	f801 4d01 	strb.w	r4, [r1, #-1]!
    1c8e:	e7f7      	b.n	1c80 <memmove+0x22>

00001c90 <__malloc_lock>:
    1c90:	4770      	bx	lr

00001c92 <__malloc_unlock>:
    1c92:	4770      	bx	lr

00001c94 <_realloc_r>:
    1c94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1c96:	4607      	mov	r7, r0
    1c98:	4614      	mov	r4, r2
    1c9a:	460e      	mov	r6, r1
    1c9c:	b921      	cbnz	r1, 1ca8 <_realloc_r+0x14>
    1c9e:	4611      	mov	r1, r2
    1ca0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    1ca4:	f7fe bff4 	b.w	c90 <_malloc_r>
    1ca8:	b922      	cbnz	r2, 1cb4 <_realloc_r+0x20>
    1caa:	f7fe ffa5 	bl	bf8 <_free_r>
    1cae:	4625      	mov	r5, r4
    1cb0:	4628      	mov	r0, r5
    1cb2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    1cb4:	f000 ff06 	bl	2ac4 <_malloc_usable_size_r>
    1cb8:	42a0      	cmp	r0, r4
    1cba:	d20f      	bcs.n	1cdc <_realloc_r+0x48>
    1cbc:	4621      	mov	r1, r4
    1cbe:	4638      	mov	r0, r7
    1cc0:	f7fe ffe6 	bl	c90 <_malloc_r>
    1cc4:	4605      	mov	r5, r0
    1cc6:	2800      	cmp	r0, #0
    1cc8:	d0f2      	beq.n	1cb0 <_realloc_r+0x1c>
    1cca:	4631      	mov	r1, r6
    1ccc:	4622      	mov	r2, r4
    1cce:	f7ff ffbb 	bl	1c48 <memcpy>
    1cd2:	4631      	mov	r1, r6
    1cd4:	4638      	mov	r0, r7
    1cd6:	f7fe ff8f 	bl	bf8 <_free_r>
    1cda:	e7e9      	b.n	1cb0 <_realloc_r+0x1c>
    1cdc:	4635      	mov	r5, r6
    1cde:	e7e7      	b.n	1cb0 <_realloc_r+0x1c>

00001ce0 <__svfiscanf_r>:
    1ce0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1ce4:	f5ad 7d23 	sub.w	sp, sp, #652	; 0x28c
    1ce8:	460c      	mov	r4, r1
    1cea:	2100      	movs	r1, #0
    1cec:	9144      	str	r1, [sp, #272]	; 0x110
    1cee:	4606      	mov	r6, r0
    1cf0:	9145      	str	r1, [sp, #276]	; 0x114
    1cf2:	4692      	mov	sl, r2
    1cf4:	499e      	ldr	r1, [pc, #632]	; (1f70 <__svfiscanf_r+0x290>)
    1cf6:	270a      	movs	r7, #10
    1cf8:	f8df 927c 	ldr.w	r9, [pc, #636]	; 1f78 <__svfiscanf_r+0x298>
    1cfc:	f10d 0804 	add.w	r8, sp, #4
    1d00:	9300      	str	r3, [sp, #0]
    1d02:	91a0      	str	r1, [sp, #640]	; 0x280
    1d04:	499b      	ldr	r1, [pc, #620]	; (1f74 <__svfiscanf_r+0x294>)
    1d06:	f8cd 8118 	str.w	r8, [sp, #280]	; 0x118
    1d0a:	91a1      	str	r1, [sp, #644]	; 0x284
    1d0c:	f89a 3000 	ldrb.w	r3, [sl]
    1d10:	2b00      	cmp	r3, #0
    1d12:	f000 812b 	beq.w	1f6c <__svfiscanf_r+0x28c>
    1d16:	f000 fe9b 	bl	2a50 <__locale_ctype_ptr>
    1d1a:	4655      	mov	r5, sl
    1d1c:	f815 bb01 	ldrb.w	fp, [r5], #1
    1d20:	4458      	add	r0, fp
    1d22:	7843      	ldrb	r3, [r0, #1]
    1d24:	f013 0308 	ands.w	r3, r3, #8
    1d28:	d01c      	beq.n	1d64 <__svfiscanf_r+0x84>
    1d2a:	6863      	ldr	r3, [r4, #4]
    1d2c:	2b00      	cmp	r3, #0
    1d2e:	dd12      	ble.n	1d56 <__svfiscanf_r+0x76>
    1d30:	f000 fe8e 	bl	2a50 <__locale_ctype_ptr>
    1d34:	6823      	ldr	r3, [r4, #0]
    1d36:	781a      	ldrb	r2, [r3, #0]
    1d38:	4410      	add	r0, r2
    1d3a:	7842      	ldrb	r2, [r0, #1]
    1d3c:	0712      	lsls	r2, r2, #28
    1d3e:	d401      	bmi.n	1d44 <__svfiscanf_r+0x64>
    1d40:	46aa      	mov	sl, r5
    1d42:	e7e3      	b.n	1d0c <__svfiscanf_r+0x2c>
    1d44:	9a45      	ldr	r2, [sp, #276]	; 0x114
    1d46:	3301      	adds	r3, #1
    1d48:	6023      	str	r3, [r4, #0]
    1d4a:	3201      	adds	r2, #1
    1d4c:	9245      	str	r2, [sp, #276]	; 0x114
    1d4e:	6862      	ldr	r2, [r4, #4]
    1d50:	3a01      	subs	r2, #1
    1d52:	6062      	str	r2, [r4, #4]
    1d54:	e7e9      	b.n	1d2a <__svfiscanf_r+0x4a>
    1d56:	9ba1      	ldr	r3, [sp, #644]	; 0x284
    1d58:	4621      	mov	r1, r4
    1d5a:	4630      	mov	r0, r6
    1d5c:	4798      	blx	r3
    1d5e:	2800      	cmp	r0, #0
    1d60:	d0e6      	beq.n	1d30 <__svfiscanf_r+0x50>
    1d62:	e7ed      	b.n	1d40 <__svfiscanf_r+0x60>
    1d64:	f1bb 0f25 	cmp.w	fp, #37	; 0x25
    1d68:	f040 8082 	bne.w	1e70 <__svfiscanf_r+0x190>
    1d6c:	9343      	str	r3, [sp, #268]	; 0x10c
    1d6e:	9341      	str	r3, [sp, #260]	; 0x104
    1d70:	f89a 3001 	ldrb.w	r3, [sl, #1]
    1d74:	2b2a      	cmp	r3, #42	; 0x2a
    1d76:	d103      	bne.n	1d80 <__svfiscanf_r+0xa0>
    1d78:	f10a 0502 	add.w	r5, sl, #2
    1d7c:	2310      	movs	r3, #16
    1d7e:	9341      	str	r3, [sp, #260]	; 0x104
    1d80:	46aa      	mov	sl, r5
    1d82:	f815 1b01 	ldrb.w	r1, [r5], #1
    1d86:	f1a1 0230 	sub.w	r2, r1, #48	; 0x30
    1d8a:	2a09      	cmp	r2, #9
    1d8c:	d922      	bls.n	1dd4 <__svfiscanf_r+0xf4>
    1d8e:	2203      	movs	r2, #3
    1d90:	4879      	ldr	r0, [pc, #484]	; (1f78 <__svfiscanf_r+0x298>)
    1d92:	f7ff ff4b 	bl	1c2c <memchr>
    1d96:	b138      	cbz	r0, 1da8 <__svfiscanf_r+0xc8>
    1d98:	eba0 0309 	sub.w	r3, r0, r9
    1d9c:	2001      	movs	r0, #1
    1d9e:	4098      	lsls	r0, r3
    1da0:	9b41      	ldr	r3, [sp, #260]	; 0x104
    1da2:	46aa      	mov	sl, r5
    1da4:	4318      	orrs	r0, r3
    1da6:	9041      	str	r0, [sp, #260]	; 0x104
    1da8:	f89a 3000 	ldrb.w	r3, [sl]
    1dac:	f10a 0501 	add.w	r5, sl, #1
    1db0:	2b67      	cmp	r3, #103	; 0x67
    1db2:	d82b      	bhi.n	1e0c <__svfiscanf_r+0x12c>
    1db4:	2b65      	cmp	r3, #101	; 0x65
    1db6:	f080 80a0 	bcs.w	1efa <__svfiscanf_r+0x21a>
    1dba:	2b47      	cmp	r3, #71	; 0x47
    1dbc:	d810      	bhi.n	1de0 <__svfiscanf_r+0x100>
    1dbe:	2b45      	cmp	r3, #69	; 0x45
    1dc0:	f080 809b 	bcs.w	1efa <__svfiscanf_r+0x21a>
    1dc4:	2b00      	cmp	r3, #0
    1dc6:	d06c      	beq.n	1ea2 <__svfiscanf_r+0x1c2>
    1dc8:	2b25      	cmp	r3, #37	; 0x25
    1dca:	d051      	beq.n	1e70 <__svfiscanf_r+0x190>
    1dcc:	2303      	movs	r3, #3
    1dce:	9742      	str	r7, [sp, #264]	; 0x108
    1dd0:	9347      	str	r3, [sp, #284]	; 0x11c
    1dd2:	e027      	b.n	1e24 <__svfiscanf_r+0x144>
    1dd4:	9b43      	ldr	r3, [sp, #268]	; 0x10c
    1dd6:	fb07 1303 	mla	r3, r7, r3, r1
    1dda:	3b30      	subs	r3, #48	; 0x30
    1ddc:	9343      	str	r3, [sp, #268]	; 0x10c
    1dde:	e7cf      	b.n	1d80 <__svfiscanf_r+0xa0>
    1de0:	2b5b      	cmp	r3, #91	; 0x5b
    1de2:	d06a      	beq.n	1eba <__svfiscanf_r+0x1da>
    1de4:	d80c      	bhi.n	1e00 <__svfiscanf_r+0x120>
    1de6:	2b58      	cmp	r3, #88	; 0x58
    1de8:	d1f0      	bne.n	1dcc <__svfiscanf_r+0xec>
    1dea:	9a41      	ldr	r2, [sp, #260]	; 0x104
    1dec:	f442 7200 	orr.w	r2, r2, #512	; 0x200
    1df0:	9241      	str	r2, [sp, #260]	; 0x104
    1df2:	2210      	movs	r2, #16
    1df4:	9242      	str	r2, [sp, #264]	; 0x108
    1df6:	2b6e      	cmp	r3, #110	; 0x6e
    1df8:	bf8c      	ite	hi
    1dfa:	2304      	movhi	r3, #4
    1dfc:	2303      	movls	r3, #3
    1dfe:	e010      	b.n	1e22 <__svfiscanf_r+0x142>
    1e00:	2b63      	cmp	r3, #99	; 0x63
    1e02:	d065      	beq.n	1ed0 <__svfiscanf_r+0x1f0>
    1e04:	2b64      	cmp	r3, #100	; 0x64
    1e06:	d1e1      	bne.n	1dcc <__svfiscanf_r+0xec>
    1e08:	9742      	str	r7, [sp, #264]	; 0x108
    1e0a:	e7f4      	b.n	1df6 <__svfiscanf_r+0x116>
    1e0c:	2b70      	cmp	r3, #112	; 0x70
    1e0e:	d04b      	beq.n	1ea8 <__svfiscanf_r+0x1c8>
    1e10:	d826      	bhi.n	1e60 <__svfiscanf_r+0x180>
    1e12:	2b6e      	cmp	r3, #110	; 0x6e
    1e14:	d062      	beq.n	1edc <__svfiscanf_r+0x1fc>
    1e16:	d84c      	bhi.n	1eb2 <__svfiscanf_r+0x1d2>
    1e18:	2b69      	cmp	r3, #105	; 0x69
    1e1a:	d1d7      	bne.n	1dcc <__svfiscanf_r+0xec>
    1e1c:	2300      	movs	r3, #0
    1e1e:	9342      	str	r3, [sp, #264]	; 0x108
    1e20:	2303      	movs	r3, #3
    1e22:	9347      	str	r3, [sp, #284]	; 0x11c
    1e24:	6863      	ldr	r3, [r4, #4]
    1e26:	2b00      	cmp	r3, #0
    1e28:	dd69      	ble.n	1efe <__svfiscanf_r+0x21e>
    1e2a:	9b41      	ldr	r3, [sp, #260]	; 0x104
    1e2c:	0659      	lsls	r1, r3, #25
    1e2e:	d407      	bmi.n	1e40 <__svfiscanf_r+0x160>
    1e30:	f000 fe0e 	bl	2a50 <__locale_ctype_ptr>
    1e34:	6823      	ldr	r3, [r4, #0]
    1e36:	781a      	ldrb	r2, [r3, #0]
    1e38:	4410      	add	r0, r2
    1e3a:	7842      	ldrb	r2, [r0, #1]
    1e3c:	0712      	lsls	r2, r2, #28
    1e3e:	d465      	bmi.n	1f0c <__svfiscanf_r+0x22c>
    1e40:	9b47      	ldr	r3, [sp, #284]	; 0x11c
    1e42:	2b02      	cmp	r3, #2
    1e44:	dc74      	bgt.n	1f30 <__svfiscanf_r+0x250>
    1e46:	466b      	mov	r3, sp
    1e48:	4622      	mov	r2, r4
    1e4a:	a941      	add	r1, sp, #260	; 0x104
    1e4c:	4630      	mov	r0, r6
    1e4e:	f000 f8f5 	bl	203c <_scanf_chars>
    1e52:	2801      	cmp	r0, #1
    1e54:	f000 808a 	beq.w	1f6c <__svfiscanf_r+0x28c>
    1e58:	2802      	cmp	r0, #2
    1e5a:	f47f af71 	bne.w	1d40 <__svfiscanf_r+0x60>
    1e5e:	e01d      	b.n	1e9c <__svfiscanf_r+0x1bc>
    1e60:	2b75      	cmp	r3, #117	; 0x75
    1e62:	d0d1      	beq.n	1e08 <__svfiscanf_r+0x128>
    1e64:	2b78      	cmp	r3, #120	; 0x78
    1e66:	d0c0      	beq.n	1dea <__svfiscanf_r+0x10a>
    1e68:	2b73      	cmp	r3, #115	; 0x73
    1e6a:	d1af      	bne.n	1dcc <__svfiscanf_r+0xec>
    1e6c:	2302      	movs	r3, #2
    1e6e:	e7d8      	b.n	1e22 <__svfiscanf_r+0x142>
    1e70:	6863      	ldr	r3, [r4, #4]
    1e72:	2b00      	cmp	r3, #0
    1e74:	dd0c      	ble.n	1e90 <__svfiscanf_r+0x1b0>
    1e76:	6823      	ldr	r3, [r4, #0]
    1e78:	781a      	ldrb	r2, [r3, #0]
    1e7a:	455a      	cmp	r2, fp
    1e7c:	d176      	bne.n	1f6c <__svfiscanf_r+0x28c>
    1e7e:	6862      	ldr	r2, [r4, #4]
    1e80:	3301      	adds	r3, #1
    1e82:	6023      	str	r3, [r4, #0]
    1e84:	9b45      	ldr	r3, [sp, #276]	; 0x114
    1e86:	3a01      	subs	r2, #1
    1e88:	6062      	str	r2, [r4, #4]
    1e8a:	3301      	adds	r3, #1
    1e8c:	9345      	str	r3, [sp, #276]	; 0x114
    1e8e:	e757      	b.n	1d40 <__svfiscanf_r+0x60>
    1e90:	9ba1      	ldr	r3, [sp, #644]	; 0x284
    1e92:	4621      	mov	r1, r4
    1e94:	4630      	mov	r0, r6
    1e96:	4798      	blx	r3
    1e98:	2800      	cmp	r0, #0
    1e9a:	d0ec      	beq.n	1e76 <__svfiscanf_r+0x196>
    1e9c:	9844      	ldr	r0, [sp, #272]	; 0x110
    1e9e:	2800      	cmp	r0, #0
    1ea0:	d15a      	bne.n	1f58 <__svfiscanf_r+0x278>
    1ea2:	f04f 30ff 	mov.w	r0, #4294967295
    1ea6:	e05d      	b.n	1f64 <__svfiscanf_r+0x284>
    1ea8:	9a41      	ldr	r2, [sp, #260]	; 0x104
    1eaa:	f042 0220 	orr.w	r2, r2, #32
    1eae:	9241      	str	r2, [sp, #260]	; 0x104
    1eb0:	e79b      	b.n	1dea <__svfiscanf_r+0x10a>
    1eb2:	2308      	movs	r3, #8
    1eb4:	9342      	str	r3, [sp, #264]	; 0x108
    1eb6:	2304      	movs	r3, #4
    1eb8:	e7b3      	b.n	1e22 <__svfiscanf_r+0x142>
    1eba:	4629      	mov	r1, r5
    1ebc:	4640      	mov	r0, r8
    1ebe:	f000 fb23 	bl	2508 <__sccl>
    1ec2:	9b41      	ldr	r3, [sp, #260]	; 0x104
    1ec4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1ec8:	9341      	str	r3, [sp, #260]	; 0x104
    1eca:	2301      	movs	r3, #1
    1ecc:	4605      	mov	r5, r0
    1ece:	e7a8      	b.n	1e22 <__svfiscanf_r+0x142>
    1ed0:	9b41      	ldr	r3, [sp, #260]	; 0x104
    1ed2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1ed6:	9341      	str	r3, [sp, #260]	; 0x104
    1ed8:	2300      	movs	r3, #0
    1eda:	e7a2      	b.n	1e22 <__svfiscanf_r+0x142>
    1edc:	9841      	ldr	r0, [sp, #260]	; 0x104
    1ede:	06c3      	lsls	r3, r0, #27
    1ee0:	f53f af2e 	bmi.w	1d40 <__svfiscanf_r+0x60>
    1ee4:	9b00      	ldr	r3, [sp, #0]
    1ee6:	07c0      	lsls	r0, r0, #31
    1ee8:	9a45      	ldr	r2, [sp, #276]	; 0x114
    1eea:	f103 0104 	add.w	r1, r3, #4
    1eee:	9100      	str	r1, [sp, #0]
    1ef0:	681b      	ldr	r3, [r3, #0]
    1ef2:	bf4c      	ite	mi
    1ef4:	801a      	strhmi	r2, [r3, #0]
    1ef6:	601a      	strpl	r2, [r3, #0]
    1ef8:	e722      	b.n	1d40 <__svfiscanf_r+0x60>
    1efa:	2305      	movs	r3, #5
    1efc:	e791      	b.n	1e22 <__svfiscanf_r+0x142>
    1efe:	9ba1      	ldr	r3, [sp, #644]	; 0x284
    1f00:	4621      	mov	r1, r4
    1f02:	4630      	mov	r0, r6
    1f04:	4798      	blx	r3
    1f06:	2800      	cmp	r0, #0
    1f08:	d08f      	beq.n	1e2a <__svfiscanf_r+0x14a>
    1f0a:	e7c7      	b.n	1e9c <__svfiscanf_r+0x1bc>
    1f0c:	9a45      	ldr	r2, [sp, #276]	; 0x114
    1f0e:	3201      	adds	r2, #1
    1f10:	9245      	str	r2, [sp, #276]	; 0x114
    1f12:	6862      	ldr	r2, [r4, #4]
    1f14:	3a01      	subs	r2, #1
    1f16:	6062      	str	r2, [r4, #4]
    1f18:	2a00      	cmp	r2, #0
    1f1a:	dd02      	ble.n	1f22 <__svfiscanf_r+0x242>
    1f1c:	3301      	adds	r3, #1
    1f1e:	6023      	str	r3, [r4, #0]
    1f20:	e786      	b.n	1e30 <__svfiscanf_r+0x150>
    1f22:	9ba1      	ldr	r3, [sp, #644]	; 0x284
    1f24:	4621      	mov	r1, r4
    1f26:	4630      	mov	r0, r6
    1f28:	4798      	blx	r3
    1f2a:	2800      	cmp	r0, #0
    1f2c:	d080      	beq.n	1e30 <__svfiscanf_r+0x150>
    1f2e:	e7b5      	b.n	1e9c <__svfiscanf_r+0x1bc>
    1f30:	2b04      	cmp	r3, #4
    1f32:	dc06      	bgt.n	1f42 <__svfiscanf_r+0x262>
    1f34:	466b      	mov	r3, sp
    1f36:	4622      	mov	r2, r4
    1f38:	a941      	add	r1, sp, #260	; 0x104
    1f3a:	4630      	mov	r0, r6
    1f3c:	f000 f8dc 	bl	20f8 <_scanf_i>
    1f40:	e787      	b.n	1e52 <__svfiscanf_r+0x172>
    1f42:	4b0e      	ldr	r3, [pc, #56]	; (1f7c <__svfiscanf_r+0x29c>)
    1f44:	2b00      	cmp	r3, #0
    1f46:	f43f aefb 	beq.w	1d40 <__svfiscanf_r+0x60>
    1f4a:	466b      	mov	r3, sp
    1f4c:	4622      	mov	r2, r4
    1f4e:	a941      	add	r1, sp, #260	; 0x104
    1f50:	4630      	mov	r0, r6
    1f52:	f3af 8000 	nop.w
    1f56:	e77c      	b.n	1e52 <__svfiscanf_r+0x172>
    1f58:	89a3      	ldrh	r3, [r4, #12]
    1f5a:	f013 0f40 	tst.w	r3, #64	; 0x40
    1f5e:	bf18      	it	ne
    1f60:	f04f 30ff 	movne.w	r0, #4294967295
    1f64:	f50d 7d23 	add.w	sp, sp, #652	; 0x28c
    1f68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1f6c:	9844      	ldr	r0, [sp, #272]	; 0x110
    1f6e:	e7f9      	b.n	1f64 <__svfiscanf_r+0x284>
    1f70:	000028bd 			; <UNDEFINED> instruction: 0x000028bd
    1f74:	000023f1 	strdeq	r2, [r0], -r1
    1f78:	000035ae 	andeq	r3, r0, lr, lsr #11
    1f7c:	00000000 	andeq	r0, r0, r0

00001f80 <vfiscanf>:
    1f80:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1f84:	4604      	mov	r4, r0
    1f86:	4e10      	ldr	r6, [pc, #64]	; (1fc8 <vfiscanf+0x48>)
    1f88:	460f      	mov	r7, r1
    1f8a:	4690      	mov	r8, r2
    1f8c:	6835      	ldr	r5, [r6, #0]
    1f8e:	b125      	cbz	r5, 1f9a <vfiscanf+0x1a>
    1f90:	69ab      	ldr	r3, [r5, #24]
    1f92:	b913      	cbnz	r3, 1f9a <vfiscanf+0x1a>
    1f94:	4628      	mov	r0, r5
    1f96:	f7fe fd15 	bl	9c4 <__sinit>
    1f9a:	4b0c      	ldr	r3, [pc, #48]	; (1fcc <vfiscanf+0x4c>)
    1f9c:	429c      	cmp	r4, r3
    1f9e:	d108      	bne.n	1fb2 <vfiscanf+0x32>
    1fa0:	686c      	ldr	r4, [r5, #4]
    1fa2:	4643      	mov	r3, r8
    1fa4:	463a      	mov	r2, r7
    1fa6:	4621      	mov	r1, r4
    1fa8:	6830      	ldr	r0, [r6, #0]
    1faa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    1fae:	f7ff be97 	b.w	1ce0 <__svfiscanf_r>
    1fb2:	4b07      	ldr	r3, [pc, #28]	; (1fd0 <vfiscanf+0x50>)
    1fb4:	429c      	cmp	r4, r3
    1fb6:	d101      	bne.n	1fbc <vfiscanf+0x3c>
    1fb8:	68ac      	ldr	r4, [r5, #8]
    1fba:	e7f2      	b.n	1fa2 <vfiscanf+0x22>
    1fbc:	4b05      	ldr	r3, [pc, #20]	; (1fd4 <vfiscanf+0x54>)
    1fbe:	429c      	cmp	r4, r3
    1fc0:	bf08      	it	eq
    1fc2:	68ec      	ldreq	r4, [r5, #12]
    1fc4:	e7ed      	b.n	1fa2 <vfiscanf+0x22>
    1fc6:	bf00      	nop
    1fc8:	00003168 	andeq	r3, r0, r8, ror #2
    1fcc:	00003564 	andeq	r3, r0, r4, ror #10
    1fd0:	00003584 	andeq	r3, r0, r4, lsl #11
    1fd4:	00003544 	andeq	r3, r0, r4, asr #10

00001fd8 <__svfscanf>:
    1fd8:	4613      	mov	r3, r2
    1fda:	460a      	mov	r2, r1
    1fdc:	4601      	mov	r1, r0
    1fde:	4802      	ldr	r0, [pc, #8]	; (1fe8 <__svfscanf+0x10>)
    1fe0:	6800      	ldr	r0, [r0, #0]
    1fe2:	f7ff be7d 	b.w	1ce0 <__svfiscanf_r>
    1fe6:	bf00      	nop
    1fe8:	00003168 	andeq	r3, r0, r8, ror #2

00001fec <_vfiscanf_r>:
    1fec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    1ff0:	460c      	mov	r4, r1
    1ff2:	4616      	mov	r6, r2
    1ff4:	461f      	mov	r7, r3
    1ff6:	4605      	mov	r5, r0
    1ff8:	b118      	cbz	r0, 2002 <_vfiscanf_r+0x16>
    1ffa:	6983      	ldr	r3, [r0, #24]
    1ffc:	b90b      	cbnz	r3, 2002 <_vfiscanf_r+0x16>
    1ffe:	f7fe fce1 	bl	9c4 <__sinit>
    2002:	4b0b      	ldr	r3, [pc, #44]	; (2030 <_vfiscanf_r+0x44>)
    2004:	429c      	cmp	r4, r3
    2006:	d108      	bne.n	201a <_vfiscanf_r+0x2e>
    2008:	686c      	ldr	r4, [r5, #4]
    200a:	463b      	mov	r3, r7
    200c:	4632      	mov	r2, r6
    200e:	4621      	mov	r1, r4
    2010:	4628      	mov	r0, r5
    2012:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    2016:	f7ff be63 	b.w	1ce0 <__svfiscanf_r>
    201a:	4b06      	ldr	r3, [pc, #24]	; (2034 <_vfiscanf_r+0x48>)
    201c:	429c      	cmp	r4, r3
    201e:	d101      	bne.n	2024 <_vfiscanf_r+0x38>
    2020:	68ac      	ldr	r4, [r5, #8]
    2022:	e7f2      	b.n	200a <_vfiscanf_r+0x1e>
    2024:	4b04      	ldr	r3, [pc, #16]	; (2038 <_vfiscanf_r+0x4c>)
    2026:	429c      	cmp	r4, r3
    2028:	bf08      	it	eq
    202a:	68ec      	ldreq	r4, [r5, #12]
    202c:	e7ed      	b.n	200a <_vfiscanf_r+0x1e>
    202e:	bf00      	nop
    2030:	00003564 	andeq	r3, r0, r4, ror #10
    2034:	00003584 	andeq	r3, r0, r4, lsl #11
    2038:	00003544 	andeq	r3, r0, r4, asr #10

0000203c <_scanf_chars>:
    203c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    2040:	4615      	mov	r5, r2
    2042:	688a      	ldr	r2, [r1, #8]
    2044:	4680      	mov	r8, r0
    2046:	460c      	mov	r4, r1
    2048:	b932      	cbnz	r2, 2058 <_scanf_chars+0x1c>
    204a:	698a      	ldr	r2, [r1, #24]
    204c:	2a00      	cmp	r2, #0
    204e:	bf14      	ite	ne
    2050:	f04f 32ff 	movne.w	r2, #4294967295
    2054:	2201      	moveq	r2, #1
    2056:	608a      	str	r2, [r1, #8]
    2058:	6822      	ldr	r2, [r4, #0]
    205a:	2600      	movs	r6, #0
    205c:	06d1      	lsls	r1, r2, #27
    205e:	bf5f      	itttt	pl
    2060:	681a      	ldrpl	r2, [r3, #0]
    2062:	1d11      	addpl	r1, r2, #4
    2064:	6019      	strpl	r1, [r3, #0]
    2066:	6817      	ldrpl	r7, [r2, #0]
    2068:	69a3      	ldr	r3, [r4, #24]
    206a:	b1d3      	cbz	r3, 20a2 <_scanf_chars+0x66>
    206c:	2b01      	cmp	r3, #1
    206e:	d107      	bne.n	2080 <_scanf_chars+0x44>
    2070:	682b      	ldr	r3, [r5, #0]
    2072:	6962      	ldr	r2, [r4, #20]
    2074:	781b      	ldrb	r3, [r3, #0]
    2076:	5cd3      	ldrb	r3, [r2, r3]
    2078:	b99b      	cbnz	r3, 20a2 <_scanf_chars+0x66>
    207a:	2e00      	cmp	r6, #0
    207c:	d12c      	bne.n	20d8 <_scanf_chars+0x9c>
    207e:	e005      	b.n	208c <_scanf_chars+0x50>
    2080:	2b02      	cmp	r3, #2
    2082:	d006      	beq.n	2092 <_scanf_chars+0x56>
    2084:	bb46      	cbnz	r6, 20d8 <_scanf_chars+0x9c>
    2086:	69a3      	ldr	r3, [r4, #24]
    2088:	2b01      	cmp	r3, #1
    208a:	d125      	bne.n	20d8 <_scanf_chars+0x9c>
    208c:	2001      	movs	r0, #1
    208e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    2092:	f000 fcdd 	bl	2a50 <__locale_ctype_ptr>
    2096:	682b      	ldr	r3, [r5, #0]
    2098:	781b      	ldrb	r3, [r3, #0]
    209a:	4418      	add	r0, r3
    209c:	7843      	ldrb	r3, [r0, #1]
    209e:	071b      	lsls	r3, r3, #28
    20a0:	d4f0      	bmi.n	2084 <_scanf_chars+0x48>
    20a2:	6823      	ldr	r3, [r4, #0]
    20a4:	3601      	adds	r6, #1
    20a6:	06da      	lsls	r2, r3, #27
    20a8:	bf5f      	itttt	pl
    20aa:	682b      	ldrpl	r3, [r5, #0]
    20ac:	781b      	ldrbpl	r3, [r3, #0]
    20ae:	703b      	strbpl	r3, [r7, #0]
    20b0:	3701      	addpl	r7, #1
    20b2:	682a      	ldr	r2, [r5, #0]
    20b4:	686b      	ldr	r3, [r5, #4]
    20b6:	3201      	adds	r2, #1
    20b8:	602a      	str	r2, [r5, #0]
    20ba:	68a2      	ldr	r2, [r4, #8]
    20bc:	3b01      	subs	r3, #1
    20be:	606b      	str	r3, [r5, #4]
    20c0:	3a01      	subs	r2, #1
    20c2:	60a2      	str	r2, [r4, #8]
    20c4:	b142      	cbz	r2, 20d8 <_scanf_chars+0x9c>
    20c6:	2b00      	cmp	r3, #0
    20c8:	dcce      	bgt.n	2068 <_scanf_chars+0x2c>
    20ca:	f8d4 3180 	ldr.w	r3, [r4, #384]	; 0x180
    20ce:	4629      	mov	r1, r5
    20d0:	4640      	mov	r0, r8
    20d2:	4798      	blx	r3
    20d4:	2800      	cmp	r0, #0
    20d6:	d0c7      	beq.n	2068 <_scanf_chars+0x2c>
    20d8:	6823      	ldr	r3, [r4, #0]
    20da:	f013 0310 	ands.w	r3, r3, #16
    20de:	d105      	bne.n	20ec <_scanf_chars+0xb0>
    20e0:	68e2      	ldr	r2, [r4, #12]
    20e2:	3201      	adds	r2, #1
    20e4:	60e2      	str	r2, [r4, #12]
    20e6:	69a2      	ldr	r2, [r4, #24]
    20e8:	b102      	cbz	r2, 20ec <_scanf_chars+0xb0>
    20ea:	703b      	strb	r3, [r7, #0]
    20ec:	6923      	ldr	r3, [r4, #16]
    20ee:	2000      	movs	r0, #0
    20f0:	441e      	add	r6, r3
    20f2:	6126      	str	r6, [r4, #16]
    20f4:	e7cb      	b.n	208e <_scanf_chars+0x52>
	...

000020f8 <_scanf_i>:
    20f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    20fc:	469a      	mov	sl, r3
    20fe:	4b75      	ldr	r3, [pc, #468]	; (22d4 <_scanf_i+0x1dc>)
    2100:	460c      	mov	r4, r1
    2102:	4683      	mov	fp, r0
    2104:	4616      	mov	r6, r2
    2106:	b087      	sub	sp, #28
    2108:	68a7      	ldr	r7, [r4, #8]
    210a:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
    210e:	ab03      	add	r3, sp, #12
    2110:	f104 091c 	add.w	r9, r4, #28
    2114:	f04f 0800 	mov.w	r8, #0
    2118:	e883 0007 	stmia.w	r3, {r0, r1, r2}
    211c:	4b6e      	ldr	r3, [pc, #440]	; (22d8 <_scanf_i+0x1e0>)
    211e:	69a1      	ldr	r1, [r4, #24]
    2120:	4a6e      	ldr	r2, [pc, #440]	; (22dc <_scanf_i+0x1e4>)
    2122:	2903      	cmp	r1, #3
    2124:	bf08      	it	eq
    2126:	461a      	moveq	r2, r3
    2128:	1e7b      	subs	r3, r7, #1
    212a:	f5b3 7fae 	cmp.w	r3, #348	; 0x15c
    212e:	9200      	str	r2, [sp, #0]
    2130:	bf84      	itt	hi
    2132:	f240 135d 	movwhi	r3, #349	; 0x15d
    2136:	60a3      	strhi	r3, [r4, #8]
    2138:	6823      	ldr	r3, [r4, #0]
    213a:	bf86      	itte	hi
    213c:	f46f 75ae 	mvnhi.w	r5, #348	; 0x15c
    2140:	197f      	addhi	r7, r7, r5
    2142:	2700      	movls	r7, #0
    2144:	f443 6350 	orr.w	r3, r3, #3328	; 0xd00
    2148:	6023      	str	r3, [r4, #0]
    214a:	464b      	mov	r3, r9
    214c:	6831      	ldr	r1, [r6, #0]
    214e:	2202      	movs	r2, #2
    2150:	9301      	str	r3, [sp, #4]
    2152:	ab03      	add	r3, sp, #12
    2154:	7809      	ldrb	r1, [r1, #0]
    2156:	f853 0028 	ldr.w	r0, [r3, r8, lsl #2]
    215a:	f7ff fd67 	bl	1c2c <memchr>
    215e:	9b01      	ldr	r3, [sp, #4]
    2160:	b330      	cbz	r0, 21b0 <_scanf_i+0xb8>
    2162:	f1b8 0f01 	cmp.w	r8, #1
    2166:	d15a      	bne.n	221e <_scanf_i+0x126>
    2168:	6862      	ldr	r2, [r4, #4]
    216a:	b92a      	cbnz	r2, 2178 <_scanf_i+0x80>
    216c:	6822      	ldr	r2, [r4, #0]
    216e:	2108      	movs	r1, #8
    2170:	6061      	str	r1, [r4, #4]
    2172:	f442 7200 	orr.w	r2, r2, #512	; 0x200
    2176:	6022      	str	r2, [r4, #0]
    2178:	6822      	ldr	r2, [r4, #0]
    217a:	f422 62a0 	bic.w	r2, r2, #1280	; 0x500
    217e:	6022      	str	r2, [r4, #0]
    2180:	68a2      	ldr	r2, [r4, #8]
    2182:	1e51      	subs	r1, r2, #1
    2184:	60a1      	str	r1, [r4, #8]
    2186:	b19a      	cbz	r2, 21b0 <_scanf_i+0xb8>
    2188:	6832      	ldr	r2, [r6, #0]
    218a:	1c5d      	adds	r5, r3, #1
    218c:	1c51      	adds	r1, r2, #1
    218e:	6031      	str	r1, [r6, #0]
    2190:	7812      	ldrb	r2, [r2, #0]
    2192:	701a      	strb	r2, [r3, #0]
    2194:	6873      	ldr	r3, [r6, #4]
    2196:	3b01      	subs	r3, #1
    2198:	6073      	str	r3, [r6, #4]
    219a:	2b00      	cmp	r3, #0
    219c:	dc07      	bgt.n	21ae <_scanf_i+0xb6>
    219e:	f8d4 3180 	ldr.w	r3, [r4, #384]	; 0x180
    21a2:	4631      	mov	r1, r6
    21a4:	4658      	mov	r0, fp
    21a6:	4798      	blx	r3
    21a8:	2800      	cmp	r0, #0
    21aa:	f040 8088 	bne.w	22be <_scanf_i+0x1c6>
    21ae:	462b      	mov	r3, r5
    21b0:	f108 0801 	add.w	r8, r8, #1
    21b4:	f1b8 0f03 	cmp.w	r8, #3
    21b8:	d1c8      	bne.n	214c <_scanf_i+0x54>
    21ba:	6862      	ldr	r2, [r4, #4]
    21bc:	b90a      	cbnz	r2, 21c2 <_scanf_i+0xca>
    21be:	220a      	movs	r2, #10
    21c0:	6062      	str	r2, [r4, #4]
    21c2:	6862      	ldr	r2, [r4, #4]
    21c4:	f04f 0800 	mov.w	r8, #0
    21c8:	4945      	ldr	r1, [pc, #276]	; (22e0 <_scanf_i+0x1e8>)
    21ca:	6960      	ldr	r0, [r4, #20]
    21cc:	1a89      	subs	r1, r1, r2
    21ce:	9301      	str	r3, [sp, #4]
    21d0:	f000 f99a 	bl	2508 <__sccl>
    21d4:	9b01      	ldr	r3, [sp, #4]
    21d6:	461d      	mov	r5, r3
    21d8:	68a3      	ldr	r3, [r4, #8]
    21da:	6822      	ldr	r2, [r4, #0]
    21dc:	2b00      	cmp	r3, #0
    21de:	d03b      	beq.n	2258 <_scanf_i+0x160>
    21e0:	6831      	ldr	r1, [r6, #0]
    21e2:	6960      	ldr	r0, [r4, #20]
    21e4:	f891 c000 	ldrb.w	ip, [r1]
    21e8:	f810 000c 	ldrb.w	r0, [r0, ip]
    21ec:	2800      	cmp	r0, #0
    21ee:	d033      	beq.n	2258 <_scanf_i+0x160>
    21f0:	f1bc 0f30 	cmp.w	ip, #48	; 0x30
    21f4:	d121      	bne.n	223a <_scanf_i+0x142>
    21f6:	0510      	lsls	r0, r2, #20
    21f8:	d51f      	bpl.n	223a <_scanf_i+0x142>
    21fa:	f108 0801 	add.w	r8, r8, #1
    21fe:	b117      	cbz	r7, 2206 <_scanf_i+0x10e>
    2200:	3f01      	subs	r7, #1
    2202:	3301      	adds	r3, #1
    2204:	60a3      	str	r3, [r4, #8]
    2206:	6873      	ldr	r3, [r6, #4]
    2208:	3b01      	subs	r3, #1
    220a:	6073      	str	r3, [r6, #4]
    220c:	2b00      	cmp	r3, #0
    220e:	dd1c      	ble.n	224a <_scanf_i+0x152>
    2210:	6833      	ldr	r3, [r6, #0]
    2212:	3301      	adds	r3, #1
    2214:	6033      	str	r3, [r6, #0]
    2216:	68a3      	ldr	r3, [r4, #8]
    2218:	3b01      	subs	r3, #1
    221a:	60a3      	str	r3, [r4, #8]
    221c:	e7dc      	b.n	21d8 <_scanf_i+0xe0>
    221e:	f1b8 0f02 	cmp.w	r8, #2
    2222:	d1ad      	bne.n	2180 <_scanf_i+0x88>
    2224:	6822      	ldr	r2, [r4, #0]
    2226:	f402 61c0 	and.w	r1, r2, #1536	; 0x600
    222a:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
    222e:	d1bf      	bne.n	21b0 <_scanf_i+0xb8>
    2230:	2110      	movs	r1, #16
    2232:	f442 7280 	orr.w	r2, r2, #256	; 0x100
    2236:	6061      	str	r1, [r4, #4]
    2238:	e7a1      	b.n	217e <_scanf_i+0x86>
    223a:	f422 6210 	bic.w	r2, r2, #2304	; 0x900
    223e:	6022      	str	r2, [r4, #0]
    2240:	780b      	ldrb	r3, [r1, #0]
    2242:	3501      	adds	r5, #1
    2244:	f805 3c01 	strb.w	r3, [r5, #-1]
    2248:	e7dd      	b.n	2206 <_scanf_i+0x10e>
    224a:	f8d4 3180 	ldr.w	r3, [r4, #384]	; 0x180
    224e:	4631      	mov	r1, r6
    2250:	4658      	mov	r0, fp
    2252:	4798      	blx	r3
    2254:	2800      	cmp	r0, #0
    2256:	d0de      	beq.n	2216 <_scanf_i+0x11e>
    2258:	6823      	ldr	r3, [r4, #0]
    225a:	05d9      	lsls	r1, r3, #23
    225c:	d50c      	bpl.n	2278 <_scanf_i+0x180>
    225e:	454d      	cmp	r5, r9
    2260:	d908      	bls.n	2274 <_scanf_i+0x17c>
    2262:	f815 1c01 	ldrb.w	r1, [r5, #-1]
    2266:	4632      	mov	r2, r6
    2268:	f8d4 317c 	ldr.w	r3, [r4, #380]	; 0x17c
    226c:	4658      	mov	r0, fp
    226e:	4798      	blx	r3
    2270:	1e6f      	subs	r7, r5, #1
    2272:	463d      	mov	r5, r7
    2274:	454d      	cmp	r5, r9
    2276:	d02a      	beq.n	22ce <_scanf_i+0x1d6>
    2278:	6822      	ldr	r2, [r4, #0]
    227a:	f012 0210 	ands.w	r2, r2, #16
    227e:	d114      	bne.n	22aa <_scanf_i+0x1b2>
    2280:	702a      	strb	r2, [r5, #0]
    2282:	4649      	mov	r1, r9
    2284:	6863      	ldr	r3, [r4, #4]
    2286:	4658      	mov	r0, fp
    2288:	9e00      	ldr	r6, [sp, #0]
    228a:	47b0      	blx	r6
    228c:	6821      	ldr	r1, [r4, #0]
    228e:	f8da 3000 	ldr.w	r3, [sl]
    2292:	f011 0f20 	tst.w	r1, #32
    2296:	f103 0204 	add.w	r2, r3, #4
    229a:	f8ca 2000 	str.w	r2, [sl]
    229e:	681b      	ldr	r3, [r3, #0]
    22a0:	d010      	beq.n	22c4 <_scanf_i+0x1cc>
    22a2:	6018      	str	r0, [r3, #0]
    22a4:	68e3      	ldr	r3, [r4, #12]
    22a6:	3301      	adds	r3, #1
    22a8:	60e3      	str	r3, [r4, #12]
    22aa:	eba5 0509 	sub.w	r5, r5, r9
    22ae:	2000      	movs	r0, #0
    22b0:	44a8      	add	r8, r5
    22b2:	6925      	ldr	r5, [r4, #16]
    22b4:	4445      	add	r5, r8
    22b6:	6125      	str	r5, [r4, #16]
    22b8:	b007      	add	sp, #28
    22ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    22be:	f04f 0800 	mov.w	r8, #0
    22c2:	e7c9      	b.n	2258 <_scanf_i+0x160>
    22c4:	07ca      	lsls	r2, r1, #31
    22c6:	bf4c      	ite	mi
    22c8:	8018      	strhmi	r0, [r3, #0]
    22ca:	6018      	strpl	r0, [r3, #0]
    22cc:	e7ea      	b.n	22a4 <_scanf_i+0x1ac>
    22ce:	2001      	movs	r0, #1
    22d0:	e7f2      	b.n	22b8 <_scanf_i+0x1c0>
    22d2:	bf00      	nop
    22d4:	000035dc 	ldrdeq	r3, [r0], -ip
    22d8:	00002675 	andeq	r2, r0, r5, ror r6
    22dc:	000027e1 	andeq	r2, r0, r1, ror #15
    22e0:	000035f8 	strdeq	r3, [r0], -r8

000022e4 <_read_r>:
    22e4:	b538      	push	{r3, r4, r5, lr}
    22e6:	4605      	mov	r5, r0
    22e8:	4c06      	ldr	r4, [pc, #24]	; (2304 <_read_r+0x20>)
    22ea:	4608      	mov	r0, r1
    22ec:	4611      	mov	r1, r2
    22ee:	2200      	movs	r2, #0
    22f0:	6022      	str	r2, [r4, #0]
    22f2:	461a      	mov	r2, r3
    22f4:	f7fd ef9a 	blx	22c <_read>
    22f8:	1c43      	adds	r3, r0, #1
    22fa:	d102      	bne.n	2302 <_read_r+0x1e>
    22fc:	6823      	ldr	r3, [r4, #0]
    22fe:	b103      	cbz	r3, 2302 <_read_r+0x1e>
    2300:	602b      	str	r3, [r5, #0]
    2302:	bd38      	pop	{r3, r4, r5, pc}
    2304:	000037ec 	andeq	r3, r0, ip, ror #15

00002308 <cleanup_glue>:
    2308:	b538      	push	{r3, r4, r5, lr}
    230a:	460c      	mov	r4, r1
    230c:	6809      	ldr	r1, [r1, #0]
    230e:	4605      	mov	r5, r0
    2310:	b109      	cbz	r1, 2316 <cleanup_glue+0xe>
    2312:	f7ff fff9 	bl	2308 <cleanup_glue>
    2316:	4621      	mov	r1, r4
    2318:	4628      	mov	r0, r5
    231a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    231e:	f7fe bc6b 	b.w	bf8 <_free_r>
	...

00002324 <_reclaim_reent>:
    2324:	4b2c      	ldr	r3, [pc, #176]	; (23d8 <_reclaim_reent+0xb4>)
    2326:	b570      	push	{r4, r5, r6, lr}
    2328:	4604      	mov	r4, r0
    232a:	681b      	ldr	r3, [r3, #0]
    232c:	4283      	cmp	r3, r0
    232e:	d051      	beq.n	23d4 <_reclaim_reent+0xb0>
    2330:	6a43      	ldr	r3, [r0, #36]	; 0x24
    2332:	b143      	cbz	r3, 2346 <_reclaim_reent+0x22>
    2334:	68db      	ldr	r3, [r3, #12]
    2336:	2b00      	cmp	r3, #0
    2338:	d14a      	bne.n	23d0 <_reclaim_reent+0xac>
    233a:	6a63      	ldr	r3, [r4, #36]	; 0x24
    233c:	6819      	ldr	r1, [r3, #0]
    233e:	b111      	cbz	r1, 2346 <_reclaim_reent+0x22>
    2340:	4620      	mov	r0, r4
    2342:	f7fe fc59 	bl	bf8 <_free_r>
    2346:	6961      	ldr	r1, [r4, #20]
    2348:	b111      	cbz	r1, 2350 <_reclaim_reent+0x2c>
    234a:	4620      	mov	r0, r4
    234c:	f7fe fc54 	bl	bf8 <_free_r>
    2350:	6a61      	ldr	r1, [r4, #36]	; 0x24
    2352:	b111      	cbz	r1, 235a <_reclaim_reent+0x36>
    2354:	4620      	mov	r0, r4
    2356:	f7fe fc4f 	bl	bf8 <_free_r>
    235a:	6ba1      	ldr	r1, [r4, #56]	; 0x38
    235c:	b111      	cbz	r1, 2364 <_reclaim_reent+0x40>
    235e:	4620      	mov	r0, r4
    2360:	f7fe fc4a 	bl	bf8 <_free_r>
    2364:	6be1      	ldr	r1, [r4, #60]	; 0x3c
    2366:	b111      	cbz	r1, 236e <_reclaim_reent+0x4a>
    2368:	4620      	mov	r0, r4
    236a:	f7fe fc45 	bl	bf8 <_free_r>
    236e:	6c21      	ldr	r1, [r4, #64]	; 0x40
    2370:	b111      	cbz	r1, 2378 <_reclaim_reent+0x54>
    2372:	4620      	mov	r0, r4
    2374:	f7fe fc40 	bl	bf8 <_free_r>
    2378:	6de1      	ldr	r1, [r4, #92]	; 0x5c
    237a:	b111      	cbz	r1, 2382 <_reclaim_reent+0x5e>
    237c:	4620      	mov	r0, r4
    237e:	f7fe fc3b 	bl	bf8 <_free_r>
    2382:	6da1      	ldr	r1, [r4, #88]	; 0x58
    2384:	b111      	cbz	r1, 238c <_reclaim_reent+0x68>
    2386:	4620      	mov	r0, r4
    2388:	f7fe fc36 	bl	bf8 <_free_r>
    238c:	6b61      	ldr	r1, [r4, #52]	; 0x34
    238e:	b111      	cbz	r1, 2396 <_reclaim_reent+0x72>
    2390:	4620      	mov	r0, r4
    2392:	f7fe fc31 	bl	bf8 <_free_r>
    2396:	69a3      	ldr	r3, [r4, #24]
    2398:	b1e3      	cbz	r3, 23d4 <_reclaim_reent+0xb0>
    239a:	6aa3      	ldr	r3, [r4, #40]	; 0x28
    239c:	4620      	mov	r0, r4
    239e:	4798      	blx	r3
    23a0:	6ca1      	ldr	r1, [r4, #72]	; 0x48
    23a2:	b1b9      	cbz	r1, 23d4 <_reclaim_reent+0xb0>
    23a4:	4620      	mov	r0, r4
    23a6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    23aa:	f7ff bfad 	b.w	2308 <cleanup_glue>
    23ae:	5949      	ldr	r1, [r1, r5]
    23b0:	b941      	cbnz	r1, 23c4 <_reclaim_reent+0xa0>
    23b2:	3504      	adds	r5, #4
    23b4:	6a63      	ldr	r3, [r4, #36]	; 0x24
    23b6:	2d80      	cmp	r5, #128	; 0x80
    23b8:	68d9      	ldr	r1, [r3, #12]
    23ba:	d1f8      	bne.n	23ae <_reclaim_reent+0x8a>
    23bc:	4620      	mov	r0, r4
    23be:	f7fe fc1b 	bl	bf8 <_free_r>
    23c2:	e7ba      	b.n	233a <_reclaim_reent+0x16>
    23c4:	680e      	ldr	r6, [r1, #0]
    23c6:	4620      	mov	r0, r4
    23c8:	f7fe fc16 	bl	bf8 <_free_r>
    23cc:	4631      	mov	r1, r6
    23ce:	e7ef      	b.n	23b0 <_reclaim_reent+0x8c>
    23d0:	2500      	movs	r5, #0
    23d2:	e7ef      	b.n	23b4 <_reclaim_reent+0x90>
    23d4:	bd70      	pop	{r4, r5, r6, pc}
    23d6:	bf00      	nop
    23d8:	00003168 	andeq	r3, r0, r8, ror #2

000023dc <lflush>:
    23dc:	8983      	ldrh	r3, [r0, #12]
    23de:	f003 0309 	and.w	r3, r3, #9
    23e2:	2b09      	cmp	r3, #9
    23e4:	d101      	bne.n	23ea <lflush+0xe>
    23e6:	f7ff ba47 	b.w	1878 <fflush>
    23ea:	2000      	movs	r0, #0
    23ec:	4770      	bx	lr
	...

000023f0 <__srefill_r>:
    23f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    23f2:	460c      	mov	r4, r1
    23f4:	4605      	mov	r5, r0
    23f6:	b118      	cbz	r0, 2400 <__srefill_r+0x10>
    23f8:	6983      	ldr	r3, [r0, #24]
    23fa:	b90b      	cbnz	r3, 2400 <__srefill_r+0x10>
    23fc:	f7fe fae2 	bl	9c4 <__sinit>
    2400:	4b3c      	ldr	r3, [pc, #240]	; (24f4 <__srefill_r+0x104>)
    2402:	429c      	cmp	r4, r3
    2404:	d10a      	bne.n	241c <__srefill_r+0x2c>
    2406:	686c      	ldr	r4, [r5, #4]
    2408:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    240c:	2300      	movs	r3, #0
    240e:	6063      	str	r3, [r4, #4]
    2410:	b293      	uxth	r3, r2
    2412:	069e      	lsls	r6, r3, #26
    2414:	d50c      	bpl.n	2430 <__srefill_r+0x40>
    2416:	f04f 30ff 	mov.w	r0, #4294967295
    241a:	e067      	b.n	24ec <__srefill_r+0xfc>
    241c:	4b36      	ldr	r3, [pc, #216]	; (24f8 <__srefill_r+0x108>)
    241e:	429c      	cmp	r4, r3
    2420:	d101      	bne.n	2426 <__srefill_r+0x36>
    2422:	68ac      	ldr	r4, [r5, #8]
    2424:	e7f0      	b.n	2408 <__srefill_r+0x18>
    2426:	4b35      	ldr	r3, [pc, #212]	; (24fc <__srefill_r+0x10c>)
    2428:	429c      	cmp	r4, r3
    242a:	bf08      	it	eq
    242c:	68ec      	ldreq	r4, [r5, #12]
    242e:	e7eb      	b.n	2408 <__srefill_r+0x18>
    2430:	0758      	lsls	r0, r3, #29
    2432:	d449      	bmi.n	24c8 <__srefill_r+0xd8>
    2434:	06d9      	lsls	r1, r3, #27
    2436:	d405      	bmi.n	2444 <__srefill_r+0x54>
    2438:	2309      	movs	r3, #9
    243a:	f042 0240 	orr.w	r2, r2, #64	; 0x40
    243e:	602b      	str	r3, [r5, #0]
    2440:	81a2      	strh	r2, [r4, #12]
    2442:	e7e8      	b.n	2416 <__srefill_r+0x26>
    2444:	071a      	lsls	r2, r3, #28
    2446:	d50b      	bpl.n	2460 <__srefill_r+0x70>
    2448:	4621      	mov	r1, r4
    244a:	4628      	mov	r0, r5
    244c:	f7ff f9ea 	bl	1824 <_fflush_r>
    2450:	2800      	cmp	r0, #0
    2452:	d1e0      	bne.n	2416 <__srefill_r+0x26>
    2454:	89a3      	ldrh	r3, [r4, #12]
    2456:	60a0      	str	r0, [r4, #8]
    2458:	f023 0308 	bic.w	r3, r3, #8
    245c:	61a0      	str	r0, [r4, #24]
    245e:	81a3      	strh	r3, [r4, #12]
    2460:	89a3      	ldrh	r3, [r4, #12]
    2462:	f043 0304 	orr.w	r3, r3, #4
    2466:	81a3      	strh	r3, [r4, #12]
    2468:	6923      	ldr	r3, [r4, #16]
    246a:	b91b      	cbnz	r3, 2474 <__srefill_r+0x84>
    246c:	4621      	mov	r1, r4
    246e:	4628      	mov	r0, r5
    2470:	f7ff fb9c 	bl	1bac <__smakebuf_r>
    2474:	f9b4 700c 	ldrsh.w	r7, [r4, #12]
    2478:	b2be      	uxth	r6, r7
    247a:	07b3      	lsls	r3, r6, #30
    247c:	d00f      	beq.n	249e <__srefill_r+0xae>
    247e:	2301      	movs	r3, #1
    2480:	81a3      	strh	r3, [r4, #12]
    2482:	4b1f      	ldr	r3, [pc, #124]	; (2500 <__srefill_r+0x110>)
    2484:	f006 0609 	and.w	r6, r6, #9
    2488:	491e      	ldr	r1, [pc, #120]	; (2504 <__srefill_r+0x114>)
    248a:	6818      	ldr	r0, [r3, #0]
    248c:	f7fe fb3e 	bl	b0c <_fwalk>
    2490:	2e09      	cmp	r6, #9
    2492:	81a7      	strh	r7, [r4, #12]
    2494:	d103      	bne.n	249e <__srefill_r+0xae>
    2496:	4621      	mov	r1, r4
    2498:	4628      	mov	r0, r5
    249a:	f7ff f93d 	bl	1718 <__sflush_r>
    249e:	6922      	ldr	r2, [r4, #16]
    24a0:	4628      	mov	r0, r5
    24a2:	6a66      	ldr	r6, [r4, #36]	; 0x24
    24a4:	6963      	ldr	r3, [r4, #20]
    24a6:	6022      	str	r2, [r4, #0]
    24a8:	6a21      	ldr	r1, [r4, #32]
    24aa:	47b0      	blx	r6
    24ac:	2800      	cmp	r0, #0
    24ae:	6060      	str	r0, [r4, #4]
    24b0:	dc1d      	bgt.n	24ee <__srefill_r+0xfe>
    24b2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    24b6:	bf1b      	ittet	ne
    24b8:	2200      	movne	r2, #0
    24ba:	6062      	strne	r2, [r4, #4]
    24bc:	f043 0320 	orreq.w	r3, r3, #32
    24c0:	f043 0340 	orrne.w	r3, r3, #64	; 0x40
    24c4:	81a3      	strh	r3, [r4, #12]
    24c6:	e7a6      	b.n	2416 <__srefill_r+0x26>
    24c8:	6b61      	ldr	r1, [r4, #52]	; 0x34
    24ca:	2900      	cmp	r1, #0
    24cc:	d0cc      	beq.n	2468 <__srefill_r+0x78>
    24ce:	f104 0344 	add.w	r3, r4, #68	; 0x44
    24d2:	4299      	cmp	r1, r3
    24d4:	d002      	beq.n	24dc <__srefill_r+0xec>
    24d6:	4628      	mov	r0, r5
    24d8:	f7fe fb8e 	bl	bf8 <_free_r>
    24dc:	6c23      	ldr	r3, [r4, #64]	; 0x40
    24de:	2000      	movs	r0, #0
    24e0:	6360      	str	r0, [r4, #52]	; 0x34
    24e2:	6063      	str	r3, [r4, #4]
    24e4:	2b00      	cmp	r3, #0
    24e6:	d0bf      	beq.n	2468 <__srefill_r+0x78>
    24e8:	6be3      	ldr	r3, [r4, #60]	; 0x3c
    24ea:	6023      	str	r3, [r4, #0]
    24ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    24ee:	2000      	movs	r0, #0
    24f0:	e7fc      	b.n	24ec <__srefill_r+0xfc>
    24f2:	bf00      	nop
    24f4:	00003564 	andeq	r3, r0, r4, ror #10
    24f8:	00003584 	andeq	r3, r0, r4, lsl #11
    24fc:	00003544 	andeq	r3, r0, r4, asr #10
    2500:	000035a4 	andeq	r3, r0, r4, lsr #11
    2504:	000023dd 	ldrdeq	r2, [r0], -sp

00002508 <__sccl>:
    2508:	b570      	push	{r4, r5, r6, lr}
    250a:	1e44      	subs	r4, r0, #1
    250c:	780b      	ldrb	r3, [r1, #0]
    250e:	f100 05ff 	add.w	r5, r0, #255	; 0xff
    2512:	2b5e      	cmp	r3, #94	; 0x5e
    2514:	bf13      	iteet	ne
    2516:	1c4a      	addne	r2, r1, #1
    2518:	1c8a      	addeq	r2, r1, #2
    251a:	784b      	ldrbeq	r3, [r1, #1]
    251c:	2100      	movne	r1, #0
    251e:	bf08      	it	eq
    2520:	2101      	moveq	r1, #1
    2522:	f804 1f01 	strb.w	r1, [r4, #1]!
    2526:	42ac      	cmp	r4, r5
    2528:	d1fb      	bne.n	2522 <__sccl+0x1a>
    252a:	b913      	cbnz	r3, 2532 <__sccl+0x2a>
    252c:	3a01      	subs	r2, #1
    252e:	4610      	mov	r0, r2
    2530:	bd70      	pop	{r4, r5, r6, pc}
    2532:	f081 0401 	eor.w	r4, r1, #1
    2536:	1c51      	adds	r1, r2, #1
    2538:	54c4      	strb	r4, [r0, r3]
    253a:	f811 5c01 	ldrb.w	r5, [r1, #-1]
    253e:	1e4e      	subs	r6, r1, #1
    2540:	460a      	mov	r2, r1
    2542:	2d2d      	cmp	r5, #45	; 0x2d
    2544:	d006      	beq.n	2554 <__sccl+0x4c>
    2546:	2d5d      	cmp	r5, #93	; 0x5d
    2548:	d0f1      	beq.n	252e <__sccl+0x26>
    254a:	b90d      	cbnz	r5, 2550 <__sccl+0x48>
    254c:	4632      	mov	r2, r6
    254e:	e7ee      	b.n	252e <__sccl+0x26>
    2550:	462b      	mov	r3, r5
    2552:	e7f0      	b.n	2536 <__sccl+0x2e>
    2554:	780e      	ldrb	r6, [r1, #0]
    2556:	2e5d      	cmp	r6, #93	; 0x5d
    2558:	d0fa      	beq.n	2550 <__sccl+0x48>
    255a:	42b3      	cmp	r3, r6
    255c:	dcf8      	bgt.n	2550 <__sccl+0x48>
    255e:	3301      	adds	r3, #1
    2560:	429e      	cmp	r6, r3
    2562:	54c4      	strb	r4, [r0, r3]
    2564:	dcfb      	bgt.n	255e <__sccl+0x56>
    2566:	3102      	adds	r1, #2
    2568:	e7e7      	b.n	253a <__sccl+0x32>

0000256a <_strtol_l.isra.0>:
    256a:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    256e:	4681      	mov	r9, r0
    2570:	4688      	mov	r8, r1
    2572:	4692      	mov	sl, r2
    2574:	461f      	mov	r7, r3
    2576:	468b      	mov	fp, r1
    2578:	465d      	mov	r5, fp
    257a:	980a      	ldr	r0, [sp, #40]	; 0x28
    257c:	f815 4b01 	ldrb.w	r4, [r5], #1
    2580:	f000 fa62 	bl	2a48 <__locale_ctype_ptr_l>
    2584:	4420      	add	r0, r4
    2586:	7846      	ldrb	r6, [r0, #1]
    2588:	f016 0608 	ands.w	r6, r6, #8
    258c:	d137      	bne.n	25fe <_strtol_l.isra.0+0x94>
    258e:	2c2d      	cmp	r4, #45	; 0x2d
    2590:	d137      	bne.n	2602 <_strtol_l.isra.0+0x98>
    2592:	f89b 4001 	ldrb.w	r4, [fp, #1]
    2596:	f10b 0502 	add.w	r5, fp, #2
    259a:	2601      	movs	r6, #1
    259c:	2f00      	cmp	r7, #0
    259e:	d065      	beq.n	266c <_strtol_l.isra.0+0x102>
    25a0:	2f10      	cmp	r7, #16
    25a2:	d109      	bne.n	25b8 <_strtol_l.isra.0+0x4e>
    25a4:	2c30      	cmp	r4, #48	; 0x30
    25a6:	d107      	bne.n	25b8 <_strtol_l.isra.0+0x4e>
    25a8:	782b      	ldrb	r3, [r5, #0]
    25aa:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    25ae:	2b58      	cmp	r3, #88	; 0x58
    25b0:	d157      	bne.n	2662 <_strtol_l.isra.0+0xf8>
    25b2:	786c      	ldrb	r4, [r5, #1]
    25b4:	3502      	adds	r5, #2
    25b6:	2710      	movs	r7, #16
    25b8:	2e00      	cmp	r6, #0
    25ba:	4639      	mov	r1, r7
    25bc:	bf14      	ite	ne
    25be:	f04f 4b00 	movne.w	fp, #2147483648	; 0x80000000
    25c2:	f06f 4b00 	mvneq.w	fp, #2147483648	; 0x80000000
    25c6:	4658      	mov	r0, fp
    25c8:	f000 fbdc 	bl	2d84 <__aeabi_uidivmod>
    25cc:	f04f 0c00 	mov.w	ip, #0
    25d0:	4663      	mov	r3, ip
    25d2:	f1a4 0230 	sub.w	r2, r4, #48	; 0x30
    25d6:	2a09      	cmp	r2, #9
    25d8:	d81a      	bhi.n	2610 <_strtol_l.isra.0+0xa6>
    25da:	4614      	mov	r4, r2
    25dc:	42a7      	cmp	r7, r4
    25de:	dd26      	ble.n	262e <_strtol_l.isra.0+0xc4>
    25e0:	f1bc 3fff 	cmp.w	ip, #4294967295
    25e4:	d008      	beq.n	25f8 <_strtol_l.isra.0+0x8e>
    25e6:	4298      	cmp	r0, r3
    25e8:	d31e      	bcc.n	2628 <_strtol_l.isra.0+0xbe>
    25ea:	d101      	bne.n	25f0 <_strtol_l.isra.0+0x86>
    25ec:	42a1      	cmp	r1, r4
    25ee:	db1b      	blt.n	2628 <_strtol_l.isra.0+0xbe>
    25f0:	fb03 4307 	mla	r3, r3, r7, r4
    25f4:	f04f 0c01 	mov.w	ip, #1
    25f8:	f815 4b01 	ldrb.w	r4, [r5], #1
    25fc:	e7e9      	b.n	25d2 <_strtol_l.isra.0+0x68>
    25fe:	46ab      	mov	fp, r5
    2600:	e7ba      	b.n	2578 <_strtol_l.isra.0+0xe>
    2602:	2c2b      	cmp	r4, #43	; 0x2b
    2604:	bf04      	itt	eq
    2606:	f10b 0502 	addeq.w	r5, fp, #2
    260a:	f89b 4001 	ldrbeq.w	r4, [fp, #1]
    260e:	e7c5      	b.n	259c <_strtol_l.isra.0+0x32>
    2610:	f1a4 0241 	sub.w	r2, r4, #65	; 0x41
    2614:	2a19      	cmp	r2, #25
    2616:	d801      	bhi.n	261c <_strtol_l.isra.0+0xb2>
    2618:	3c37      	subs	r4, #55	; 0x37
    261a:	e7df      	b.n	25dc <_strtol_l.isra.0+0x72>
    261c:	f1a4 0261 	sub.w	r2, r4, #97	; 0x61
    2620:	2a19      	cmp	r2, #25
    2622:	d804      	bhi.n	262e <_strtol_l.isra.0+0xc4>
    2624:	3c57      	subs	r4, #87	; 0x57
    2626:	e7d9      	b.n	25dc <_strtol_l.isra.0+0x72>
    2628:	f04f 3cff 	mov.w	ip, #4294967295
    262c:	e7e4      	b.n	25f8 <_strtol_l.isra.0+0x8e>
    262e:	f1bc 3fff 	cmp.w	ip, #4294967295
    2632:	d109      	bne.n	2648 <_strtol_l.isra.0+0xde>
    2634:	2322      	movs	r3, #34	; 0x22
    2636:	f8c9 3000 	str.w	r3, [r9]
    263a:	465b      	mov	r3, fp
    263c:	f1ba 0f00 	cmp.w	sl, #0
    2640:	d10a      	bne.n	2658 <_strtol_l.isra.0+0xee>
    2642:	4618      	mov	r0, r3
    2644:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2648:	b106      	cbz	r6, 264c <_strtol_l.isra.0+0xe2>
    264a:	425b      	negs	r3, r3
    264c:	f1ba 0f00 	cmp.w	sl, #0
    2650:	d0f7      	beq.n	2642 <_strtol_l.isra.0+0xd8>
    2652:	f1bc 0f00 	cmp.w	ip, #0
    2656:	d001      	beq.n	265c <_strtol_l.isra.0+0xf2>
    2658:	f105 38ff 	add.w	r8, r5, #4294967295
    265c:	f8ca 8000 	str.w	r8, [sl]
    2660:	e7ef      	b.n	2642 <_strtol_l.isra.0+0xd8>
    2662:	2430      	movs	r4, #48	; 0x30
    2664:	2f00      	cmp	r7, #0
    2666:	d1a7      	bne.n	25b8 <_strtol_l.isra.0+0x4e>
    2668:	2708      	movs	r7, #8
    266a:	e7a5      	b.n	25b8 <_strtol_l.isra.0+0x4e>
    266c:	2c30      	cmp	r4, #48	; 0x30
    266e:	d09b      	beq.n	25a8 <_strtol_l.isra.0+0x3e>
    2670:	270a      	movs	r7, #10
    2672:	e7a1      	b.n	25b8 <_strtol_l.isra.0+0x4e>

00002674 <_strtol_r>:
    2674:	b537      	push	{r0, r1, r2, r4, r5, lr}
    2676:	4c06      	ldr	r4, [pc, #24]	; (2690 <_strtol_r+0x1c>)
    2678:	4d06      	ldr	r5, [pc, #24]	; (2694 <_strtol_r+0x20>)
    267a:	6824      	ldr	r4, [r4, #0]
    267c:	6a24      	ldr	r4, [r4, #32]
    267e:	2c00      	cmp	r4, #0
    2680:	bf08      	it	eq
    2682:	462c      	moveq	r4, r5
    2684:	9400      	str	r4, [sp, #0]
    2686:	f7ff ff70 	bl	256a <_strtol_l.isra.0>
    268a:	b003      	add	sp, #12
    268c:	bd30      	pop	{r4, r5, pc}
    268e:	bf00      	nop
    2690:	00003168 	andeq	r3, r0, r8, ror #2
    2694:	000031cc 	andeq	r3, r0, ip, asr #3

00002698 <strtol_l>:
    2698:	b507      	push	{r0, r1, r2, lr}
    269a:	9300      	str	r3, [sp, #0]
    269c:	4613      	mov	r3, r2
    269e:	460a      	mov	r2, r1
    26a0:	4601      	mov	r1, r0
    26a2:	4803      	ldr	r0, [pc, #12]	; (26b0 <strtol_l+0x18>)
    26a4:	6800      	ldr	r0, [r0, #0]
    26a6:	f7ff ff60 	bl	256a <_strtol_l.isra.0>
    26aa:	b003      	add	sp, #12
    26ac:	f85d fb04 	ldr.w	pc, [sp], #4
    26b0:	00003168 	andeq	r3, r0, r8, ror #2

000026b4 <strtol>:
    26b4:	4b08      	ldr	r3, [pc, #32]	; (26d8 <strtol+0x24>)
    26b6:	b537      	push	{r0, r1, r2, r4, r5, lr}
    26b8:	681c      	ldr	r4, [r3, #0]
    26ba:	4d08      	ldr	r5, [pc, #32]	; (26dc <strtol+0x28>)
    26bc:	6a23      	ldr	r3, [r4, #32]
    26be:	2b00      	cmp	r3, #0
    26c0:	bf08      	it	eq
    26c2:	462b      	moveq	r3, r5
    26c4:	9300      	str	r3, [sp, #0]
    26c6:	4613      	mov	r3, r2
    26c8:	460a      	mov	r2, r1
    26ca:	4601      	mov	r1, r0
    26cc:	4620      	mov	r0, r4
    26ce:	f7ff ff4c 	bl	256a <_strtol_l.isra.0>
    26d2:	b003      	add	sp, #12
    26d4:	bd30      	pop	{r4, r5, pc}
    26d6:	bf00      	nop
    26d8:	00003168 	andeq	r3, r0, r8, ror #2
    26dc:	000031cc 	andeq	r3, r0, ip, asr #3

000026e0 <_strtoul_l.isra.0>:
    26e0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    26e4:	4681      	mov	r9, r0
    26e6:	4688      	mov	r8, r1
    26e8:	4692      	mov	sl, r2
    26ea:	461e      	mov	r6, r3
    26ec:	468b      	mov	fp, r1
    26ee:	465d      	mov	r5, fp
    26f0:	980a      	ldr	r0, [sp, #40]	; 0x28
    26f2:	f815 4b01 	ldrb.w	r4, [r5], #1
    26f6:	f000 f9a7 	bl	2a48 <__locale_ctype_ptr_l>
    26fa:	4420      	add	r0, r4
    26fc:	7847      	ldrb	r7, [r0, #1]
    26fe:	f017 0708 	ands.w	r7, r7, #8
    2702:	d135      	bne.n	2770 <_strtoul_l.isra.0+0x90>
    2704:	2c2d      	cmp	r4, #45	; 0x2d
    2706:	d135      	bne.n	2774 <_strtoul_l.isra.0+0x94>
    2708:	f89b 4001 	ldrb.w	r4, [fp, #1]
    270c:	f10b 0502 	add.w	r5, fp, #2
    2710:	2701      	movs	r7, #1
    2712:	2e00      	cmp	r6, #0
    2714:	d060      	beq.n	27d8 <_strtoul_l.isra.0+0xf8>
    2716:	2e10      	cmp	r6, #16
    2718:	d109      	bne.n	272e <_strtoul_l.isra.0+0x4e>
    271a:	2c30      	cmp	r4, #48	; 0x30
    271c:	d107      	bne.n	272e <_strtoul_l.isra.0+0x4e>
    271e:	782b      	ldrb	r3, [r5, #0]
    2720:	f003 03df 	and.w	r3, r3, #223	; 0xdf
    2724:	2b58      	cmp	r3, #88	; 0x58
    2726:	d152      	bne.n	27ce <_strtoul_l.isra.0+0xee>
    2728:	786c      	ldrb	r4, [r5, #1]
    272a:	3502      	adds	r5, #2
    272c:	2610      	movs	r6, #16
    272e:	4631      	mov	r1, r6
    2730:	f04f 30ff 	mov.w	r0, #4294967295
    2734:	f000 f9f8 	bl	2b28 <__udivsi3>
    2738:	4631      	mov	r1, r6
    273a:	4683      	mov	fp, r0
    273c:	f04f 30ff 	mov.w	r0, #4294967295
    2740:	f000 fb20 	bl	2d84 <__aeabi_uidivmod>
    2744:	2300      	movs	r3, #0
    2746:	4618      	mov	r0, r3
    2748:	f1a4 0230 	sub.w	r2, r4, #48	; 0x30
    274c:	2a09      	cmp	r2, #9
    274e:	d818      	bhi.n	2782 <_strtoul_l.isra.0+0xa2>
    2750:	4614      	mov	r4, r2
    2752:	42a6      	cmp	r6, r4
    2754:	dd24      	ble.n	27a0 <_strtoul_l.isra.0+0xc0>
    2756:	2b00      	cmp	r3, #0
    2758:	db1f      	blt.n	279a <_strtoul_l.isra.0+0xba>
    275a:	4583      	cmp	fp, r0
    275c:	d31d      	bcc.n	279a <_strtoul_l.isra.0+0xba>
    275e:	d101      	bne.n	2764 <_strtoul_l.isra.0+0x84>
    2760:	42a1      	cmp	r1, r4
    2762:	db1a      	blt.n	279a <_strtoul_l.isra.0+0xba>
    2764:	fb00 4006 	mla	r0, r0, r6, r4
    2768:	2301      	movs	r3, #1
    276a:	f815 4b01 	ldrb.w	r4, [r5], #1
    276e:	e7eb      	b.n	2748 <_strtoul_l.isra.0+0x68>
    2770:	46ab      	mov	fp, r5
    2772:	e7bc      	b.n	26ee <_strtoul_l.isra.0+0xe>
    2774:	2c2b      	cmp	r4, #43	; 0x2b
    2776:	bf04      	itt	eq
    2778:	f10b 0502 	addeq.w	r5, fp, #2
    277c:	f89b 4001 	ldrbeq.w	r4, [fp, #1]
    2780:	e7c7      	b.n	2712 <_strtoul_l.isra.0+0x32>
    2782:	f1a4 0241 	sub.w	r2, r4, #65	; 0x41
    2786:	2a19      	cmp	r2, #25
    2788:	d801      	bhi.n	278e <_strtoul_l.isra.0+0xae>
    278a:	3c37      	subs	r4, #55	; 0x37
    278c:	e7e1      	b.n	2752 <_strtoul_l.isra.0+0x72>
    278e:	f1a4 0261 	sub.w	r2, r4, #97	; 0x61
    2792:	2a19      	cmp	r2, #25
    2794:	d804      	bhi.n	27a0 <_strtoul_l.isra.0+0xc0>
    2796:	3c57      	subs	r4, #87	; 0x57
    2798:	e7db      	b.n	2752 <_strtoul_l.isra.0+0x72>
    279a:	f04f 33ff 	mov.w	r3, #4294967295
    279e:	e7e4      	b.n	276a <_strtoul_l.isra.0+0x8a>
    27a0:	2b00      	cmp	r3, #0
    27a2:	da09      	bge.n	27b8 <_strtoul_l.isra.0+0xd8>
    27a4:	2322      	movs	r3, #34	; 0x22
    27a6:	f04f 30ff 	mov.w	r0, #4294967295
    27aa:	f8c9 3000 	str.w	r3, [r9]
    27ae:	f1ba 0f00 	cmp.w	sl, #0
    27b2:	d107      	bne.n	27c4 <_strtoul_l.isra.0+0xe4>
    27b4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    27b8:	b107      	cbz	r7, 27bc <_strtoul_l.isra.0+0xdc>
    27ba:	4240      	negs	r0, r0
    27bc:	f1ba 0f00 	cmp.w	sl, #0
    27c0:	d0f8      	beq.n	27b4 <_strtoul_l.isra.0+0xd4>
    27c2:	b10b      	cbz	r3, 27c8 <_strtoul_l.isra.0+0xe8>
    27c4:	f105 38ff 	add.w	r8, r5, #4294967295
    27c8:	f8ca 8000 	str.w	r8, [sl]
    27cc:	e7f2      	b.n	27b4 <_strtoul_l.isra.0+0xd4>
    27ce:	2430      	movs	r4, #48	; 0x30
    27d0:	2e00      	cmp	r6, #0
    27d2:	d1ac      	bne.n	272e <_strtoul_l.isra.0+0x4e>
    27d4:	2608      	movs	r6, #8
    27d6:	e7aa      	b.n	272e <_strtoul_l.isra.0+0x4e>
    27d8:	2c30      	cmp	r4, #48	; 0x30
    27da:	d0a0      	beq.n	271e <_strtoul_l.isra.0+0x3e>
    27dc:	260a      	movs	r6, #10
    27de:	e7a6      	b.n	272e <_strtoul_l.isra.0+0x4e>

000027e0 <_strtoul_r>:
    27e0:	b537      	push	{r0, r1, r2, r4, r5, lr}
    27e2:	4c06      	ldr	r4, [pc, #24]	; (27fc <_strtoul_r+0x1c>)
    27e4:	4d06      	ldr	r5, [pc, #24]	; (2800 <_strtoul_r+0x20>)
    27e6:	6824      	ldr	r4, [r4, #0]
    27e8:	6a24      	ldr	r4, [r4, #32]
    27ea:	2c00      	cmp	r4, #0
    27ec:	bf08      	it	eq
    27ee:	462c      	moveq	r4, r5
    27f0:	9400      	str	r4, [sp, #0]
    27f2:	f7ff ff75 	bl	26e0 <_strtoul_l.isra.0>
    27f6:	b003      	add	sp, #12
    27f8:	bd30      	pop	{r4, r5, pc}
    27fa:	bf00      	nop
    27fc:	00003168 	andeq	r3, r0, r8, ror #2
    2800:	000031cc 	andeq	r3, r0, ip, asr #3

00002804 <strtoul_l>:
    2804:	b507      	push	{r0, r1, r2, lr}
    2806:	9300      	str	r3, [sp, #0]
    2808:	4613      	mov	r3, r2
    280a:	460a      	mov	r2, r1
    280c:	4601      	mov	r1, r0
    280e:	4803      	ldr	r0, [pc, #12]	; (281c <strtoul_l+0x18>)
    2810:	6800      	ldr	r0, [r0, #0]
    2812:	f7ff ff65 	bl	26e0 <_strtoul_l.isra.0>
    2816:	b003      	add	sp, #12
    2818:	f85d fb04 	ldr.w	pc, [sp], #4
    281c:	00003168 	andeq	r3, r0, r8, ror #2

00002820 <strtoul>:
    2820:	4b08      	ldr	r3, [pc, #32]	; (2844 <strtoul+0x24>)
    2822:	b537      	push	{r0, r1, r2, r4, r5, lr}
    2824:	681c      	ldr	r4, [r3, #0]
    2826:	4d08      	ldr	r5, [pc, #32]	; (2848 <strtoul+0x28>)
    2828:	6a23      	ldr	r3, [r4, #32]
    282a:	2b00      	cmp	r3, #0
    282c:	bf08      	it	eq
    282e:	462b      	moveq	r3, r5
    2830:	9300      	str	r3, [sp, #0]
    2832:	4613      	mov	r3, r2
    2834:	460a      	mov	r2, r1
    2836:	4601      	mov	r1, r0
    2838:	4620      	mov	r0, r4
    283a:	f7ff ff51 	bl	26e0 <_strtoul_l.isra.0>
    283e:	b003      	add	sp, #12
    2840:	bd30      	pop	{r4, r5, pc}
    2842:	bf00      	nop
    2844:	00003168 	andeq	r3, r0, r8, ror #2
    2848:	000031cc 	andeq	r3, r0, ip, asr #3

0000284c <__submore>:
    284c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    2850:	460c      	mov	r4, r1
    2852:	6b49      	ldr	r1, [r1, #52]	; 0x34
    2854:	f104 0344 	add.w	r3, r4, #68	; 0x44
    2858:	4299      	cmp	r1, r3
    285a:	d11a      	bne.n	2892 <__submore+0x46>
    285c:	f44f 6180 	mov.w	r1, #1024	; 0x400
    2860:	f7fe fa16 	bl	c90 <_malloc_r>
    2864:	b918      	cbnz	r0, 286e <__submore+0x22>
    2866:	f04f 30ff 	mov.w	r0, #4294967295
    286a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    286e:	f44f 6380 	mov.w	r3, #1024	; 0x400
    2872:	63a3      	str	r3, [r4, #56]	; 0x38
    2874:	f894 3046 	ldrb.w	r3, [r4, #70]	; 0x46
    2878:	6360      	str	r0, [r4, #52]	; 0x34
    287a:	f200 30fd 	addw	r0, r0, #1021	; 0x3fd
    287e:	7083      	strb	r3, [r0, #2]
    2880:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
    2884:	7043      	strb	r3, [r0, #1]
    2886:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
    288a:	7003      	strb	r3, [r0, #0]
    288c:	6020      	str	r0, [r4, #0]
    288e:	2000      	movs	r0, #0
    2890:	e7eb      	b.n	286a <__submore+0x1e>
    2892:	6ba6      	ldr	r6, [r4, #56]	; 0x38
    2894:	0077      	lsls	r7, r6, #1
    2896:	463a      	mov	r2, r7
    2898:	f7ff f9fc 	bl	1c94 <_realloc_r>
    289c:	4605      	mov	r5, r0
    289e:	2800      	cmp	r0, #0
    28a0:	d0e1      	beq.n	2866 <__submore+0x1a>
    28a2:	eb00 0806 	add.w	r8, r0, r6
    28a6:	4601      	mov	r1, r0
    28a8:	4632      	mov	r2, r6
    28aa:	4640      	mov	r0, r8
    28ac:	f7ff f9cc 	bl	1c48 <memcpy>
    28b0:	f8c4 8000 	str.w	r8, [r4]
    28b4:	e9c4 570d 	strd	r5, r7, [r4, #52]	; 0x34
    28b8:	e7e9      	b.n	288e <__submore+0x42>
	...

000028bc <_ungetc_r>:
    28bc:	1c4b      	adds	r3, r1, #1
    28be:	b570      	push	{r4, r5, r6, lr}
    28c0:	4606      	mov	r6, r0
    28c2:	460d      	mov	r5, r1
    28c4:	4614      	mov	r4, r2
    28c6:	d103      	bne.n	28d0 <_ungetc_r+0x14>
    28c8:	f04f 35ff 	mov.w	r5, #4294967295
    28cc:	4628      	mov	r0, r5
    28ce:	bd70      	pop	{r4, r5, r6, pc}
    28d0:	b118      	cbz	r0, 28da <_ungetc_r+0x1e>
    28d2:	6983      	ldr	r3, [r0, #24]
    28d4:	b90b      	cbnz	r3, 28da <_ungetc_r+0x1e>
    28d6:	f7fe f875 	bl	9c4 <__sinit>
    28da:	4b2e      	ldr	r3, [pc, #184]	; (2994 <_ungetc_r+0xd8>)
    28dc:	429c      	cmp	r4, r3
    28de:	d12c      	bne.n	293a <_ungetc_r+0x7e>
    28e0:	6874      	ldr	r4, [r6, #4]
    28e2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    28e6:	f023 0320 	bic.w	r3, r3, #32
    28ea:	81a3      	strh	r3, [r4, #12]
    28ec:	b29b      	uxth	r3, r3
    28ee:	0759      	lsls	r1, r3, #29
    28f0:	d413      	bmi.n	291a <_ungetc_r+0x5e>
    28f2:	06da      	lsls	r2, r3, #27
    28f4:	d5e8      	bpl.n	28c8 <_ungetc_r+0xc>
    28f6:	071b      	lsls	r3, r3, #28
    28f8:	d50b      	bpl.n	2912 <_ungetc_r+0x56>
    28fa:	4621      	mov	r1, r4
    28fc:	4630      	mov	r0, r6
    28fe:	f7fe ff91 	bl	1824 <_fflush_r>
    2902:	2800      	cmp	r0, #0
    2904:	d1e0      	bne.n	28c8 <_ungetc_r+0xc>
    2906:	89a3      	ldrh	r3, [r4, #12]
    2908:	60a0      	str	r0, [r4, #8]
    290a:	f023 0308 	bic.w	r3, r3, #8
    290e:	61a0      	str	r0, [r4, #24]
    2910:	81a3      	strh	r3, [r4, #12]
    2912:	89a3      	ldrh	r3, [r4, #12]
    2914:	f043 0304 	orr.w	r3, r3, #4
    2918:	81a3      	strh	r3, [r4, #12]
    291a:	6b63      	ldr	r3, [r4, #52]	; 0x34
    291c:	b2ed      	uxtb	r5, r5
    291e:	6862      	ldr	r2, [r4, #4]
    2920:	b1e3      	cbz	r3, 295c <_ungetc_r+0xa0>
    2922:	6ba3      	ldr	r3, [r4, #56]	; 0x38
    2924:	4293      	cmp	r3, r2
    2926:	dd12      	ble.n	294e <_ungetc_r+0x92>
    2928:	6823      	ldr	r3, [r4, #0]
    292a:	1e5a      	subs	r2, r3, #1
    292c:	6022      	str	r2, [r4, #0]
    292e:	f803 5c01 	strb.w	r5, [r3, #-1]
    2932:	6863      	ldr	r3, [r4, #4]
    2934:	3301      	adds	r3, #1
    2936:	6063      	str	r3, [r4, #4]
    2938:	e7c8      	b.n	28cc <_ungetc_r+0x10>
    293a:	4b17      	ldr	r3, [pc, #92]	; (2998 <_ungetc_r+0xdc>)
    293c:	429c      	cmp	r4, r3
    293e:	d101      	bne.n	2944 <_ungetc_r+0x88>
    2940:	68b4      	ldr	r4, [r6, #8]
    2942:	e7ce      	b.n	28e2 <_ungetc_r+0x26>
    2944:	4b15      	ldr	r3, [pc, #84]	; (299c <_ungetc_r+0xe0>)
    2946:	429c      	cmp	r4, r3
    2948:	bf08      	it	eq
    294a:	68f4      	ldreq	r4, [r6, #12]
    294c:	e7c9      	b.n	28e2 <_ungetc_r+0x26>
    294e:	4621      	mov	r1, r4
    2950:	4630      	mov	r0, r6
    2952:	f7ff ff7b 	bl	284c <__submore>
    2956:	2800      	cmp	r0, #0
    2958:	d0e6      	beq.n	2928 <_ungetc_r+0x6c>
    295a:	e7b5      	b.n	28c8 <_ungetc_r+0xc>
    295c:	6921      	ldr	r1, [r4, #16]
    295e:	6823      	ldr	r3, [r4, #0]
    2960:	b151      	cbz	r1, 2978 <_ungetc_r+0xbc>
    2962:	4299      	cmp	r1, r3
    2964:	d208      	bcs.n	2978 <_ungetc_r+0xbc>
    2966:	f813 1c01 	ldrb.w	r1, [r3, #-1]
    296a:	42a9      	cmp	r1, r5
    296c:	d104      	bne.n	2978 <_ungetc_r+0xbc>
    296e:	3b01      	subs	r3, #1
    2970:	3201      	adds	r2, #1
    2972:	6023      	str	r3, [r4, #0]
    2974:	6062      	str	r2, [r4, #4]
    2976:	e7a9      	b.n	28cc <_ungetc_r+0x10>
    2978:	e9c4 320f 	strd	r3, r2, [r4, #60]	; 0x3c
    297c:	f104 0344 	add.w	r3, r4, #68	; 0x44
    2980:	6363      	str	r3, [r4, #52]	; 0x34
    2982:	2303      	movs	r3, #3
    2984:	63a3      	str	r3, [r4, #56]	; 0x38
    2986:	4623      	mov	r3, r4
    2988:	f803 5f46 	strb.w	r5, [r3, #70]!
    298c:	6023      	str	r3, [r4, #0]
    298e:	2301      	movs	r3, #1
    2990:	e7d1      	b.n	2936 <_ungetc_r+0x7a>
    2992:	bf00      	nop
    2994:	00003564 	andeq	r3, r0, r4, ror #10
    2998:	00003584 	andeq	r3, r0, r4, lsl #11
    299c:	00003544 	andeq	r3, r0, r4, asr #10

000029a0 <ungetc>:
    29a0:	4b02      	ldr	r3, [pc, #8]	; (29ac <ungetc+0xc>)
    29a2:	460a      	mov	r2, r1
    29a4:	4601      	mov	r1, r0
    29a6:	6818      	ldr	r0, [r3, #0]
    29a8:	f7ff bf88 	b.w	28bc <_ungetc_r>
    29ac:	00003168 	andeq	r3, r0, r8, ror #2

000029b0 <_fstat_r>:
    29b0:	b538      	push	{r3, r4, r5, lr}
    29b2:	4605      	mov	r5, r0
    29b4:	4c06      	ldr	r4, [pc, #24]	; (29d0 <_fstat_r+0x20>)
    29b6:	4608      	mov	r0, r1
    29b8:	4611      	mov	r1, r2
    29ba:	2300      	movs	r3, #0
    29bc:	6023      	str	r3, [r4, #0]
    29be:	f000 fb53 	bl	3068 <_fstat>
    29c2:	1c43      	adds	r3, r0, #1
    29c4:	d102      	bne.n	29cc <_fstat_r+0x1c>
    29c6:	6823      	ldr	r3, [r4, #0]
    29c8:	b103      	cbz	r3, 29cc <_fstat_r+0x1c>
    29ca:	602b      	str	r3, [r5, #0]
    29cc:	bd38      	pop	{r3, r4, r5, pc}
    29ce:	bf00      	nop
    29d0:	000037ec 	andeq	r3, r0, ip, ror #15

000029d4 <_isatty_r>:
    29d4:	b538      	push	{r3, r4, r5, lr}
    29d6:	4605      	mov	r5, r0
    29d8:	4c05      	ldr	r4, [pc, #20]	; (29f0 <_isatty_r+0x1c>)
    29da:	4608      	mov	r0, r1
    29dc:	2300      	movs	r3, #0
    29de:	6023      	str	r3, [r4, #0]
    29e0:	f000 fb4c 	bl	307c <_isatty>
    29e4:	1c43      	adds	r3, r0, #1
    29e6:	d102      	bne.n	29ee <_isatty_r+0x1a>
    29e8:	6823      	ldr	r3, [r4, #0]
    29ea:	b103      	cbz	r3, 29ee <_isatty_r+0x1a>
    29ec:	602b      	str	r3, [r5, #0]
    29ee:	bd38      	pop	{r3, r4, r5, pc}
    29f0:	000037ec 	andeq	r3, r0, ip, ror #15

000029f4 <_setlocale_r>:
    29f4:	b510      	push	{r4, lr}
    29f6:	4614      	mov	r4, r2
    29f8:	b172      	cbz	r2, 2a18 <_setlocale_r+0x24>
    29fa:	4909      	ldr	r1, [pc, #36]	; (2a20 <_setlocale_r+0x2c>)
    29fc:	4610      	mov	r0, r2
    29fe:	f000 f869 	bl	2ad4 <strcmp>
    2a02:	b148      	cbz	r0, 2a18 <_setlocale_r+0x24>
    2a04:	4907      	ldr	r1, [pc, #28]	; (2a24 <_setlocale_r+0x30>)
    2a06:	4620      	mov	r0, r4
    2a08:	f000 f864 	bl	2ad4 <strcmp>
    2a0c:	b120      	cbz	r0, 2a18 <_setlocale_r+0x24>
    2a0e:	4906      	ldr	r1, [pc, #24]	; (2a28 <_setlocale_r+0x34>)
    2a10:	4620      	mov	r0, r4
    2a12:	f000 f85f 	bl	2ad4 <strcmp>
    2a16:	b908      	cbnz	r0, 2a1c <_setlocale_r+0x28>
    2a18:	4802      	ldr	r0, [pc, #8]	; (2a24 <_setlocale_r+0x30>)
    2a1a:	bd10      	pop	{r4, pc}
    2a1c:	2000      	movs	r0, #0
    2a1e:	e7fc      	b.n	2a1a <_setlocale_r+0x26>
    2a20:	00003605 	andeq	r3, r0, r5, lsl #12
    2a24:	00003603 	andeq	r3, r0, r3, lsl #12
    2a28:	000035ad 	andeq	r3, r0, sp, lsr #11

00002a2c <__locale_mb_cur_max>:
    2a2c:	4b04      	ldr	r3, [pc, #16]	; (2a40 <__locale_mb_cur_max+0x14>)
    2a2e:	4a05      	ldr	r2, [pc, #20]	; (2a44 <__locale_mb_cur_max+0x18>)
    2a30:	681b      	ldr	r3, [r3, #0]
    2a32:	6a1b      	ldr	r3, [r3, #32]
    2a34:	2b00      	cmp	r3, #0
    2a36:	bf08      	it	eq
    2a38:	4613      	moveq	r3, r2
    2a3a:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
    2a3e:	4770      	bx	lr
    2a40:	00003168 	andeq	r3, r0, r8, ror #2
    2a44:	000031cc 	andeq	r3, r0, ip, asr #3

00002a48 <__locale_ctype_ptr_l>:
    2a48:	f8d0 00ec 	ldr.w	r0, [r0, #236]	; 0xec
    2a4c:	4770      	bx	lr
	...

00002a50 <__locale_ctype_ptr>:
    2a50:	4b04      	ldr	r3, [pc, #16]	; (2a64 <__locale_ctype_ptr+0x14>)
    2a52:	4a05      	ldr	r2, [pc, #20]	; (2a68 <__locale_ctype_ptr+0x18>)
    2a54:	681b      	ldr	r3, [r3, #0]
    2a56:	6a1b      	ldr	r3, [r3, #32]
    2a58:	2b00      	cmp	r3, #0
    2a5a:	bf08      	it	eq
    2a5c:	4613      	moveq	r3, r2
    2a5e:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
    2a62:	4770      	bx	lr
    2a64:	00003168 	andeq	r3, r0, r8, ror #2
    2a68:	000031cc 	andeq	r3, r0, ip, asr #3

00002a6c <setlocale>:
    2a6c:	4b02      	ldr	r3, [pc, #8]	; (2a78 <setlocale+0xc>)
    2a6e:	460a      	mov	r2, r1
    2a70:	4601      	mov	r1, r0
    2a72:	6818      	ldr	r0, [r3, #0]
    2a74:	f7ff bfbe 	b.w	29f4 <_setlocale_r>
    2a78:	00003168 	andeq	r3, r0, r8, ror #2

00002a7c <_mbtowc_r>:
    2a7c:	b430      	push	{r4, r5}
    2a7e:	4c06      	ldr	r4, [pc, #24]	; (2a98 <_mbtowc_r+0x1c>)
    2a80:	4d06      	ldr	r5, [pc, #24]	; (2a9c <_mbtowc_r+0x20>)
    2a82:	6824      	ldr	r4, [r4, #0]
    2a84:	6a24      	ldr	r4, [r4, #32]
    2a86:	2c00      	cmp	r4, #0
    2a88:	bf08      	it	eq
    2a8a:	462c      	moveq	r4, r5
    2a8c:	f8d4 40e4 	ldr.w	r4, [r4, #228]	; 0xe4
    2a90:	46a4      	mov	ip, r4
    2a92:	bc30      	pop	{r4, r5}
    2a94:	4760      	bx	ip
    2a96:	bf00      	nop
    2a98:	00003168 	andeq	r3, r0, r8, ror #2
    2a9c:	000031cc 	andeq	r3, r0, ip, asr #3

00002aa0 <__ascii_mbtowc>:
    2aa0:	b082      	sub	sp, #8
    2aa2:	b901      	cbnz	r1, 2aa6 <__ascii_mbtowc+0x6>
    2aa4:	a901      	add	r1, sp, #4
    2aa6:	b142      	cbz	r2, 2aba <__ascii_mbtowc+0x1a>
    2aa8:	b14b      	cbz	r3, 2abe <__ascii_mbtowc+0x1e>
    2aaa:	7813      	ldrb	r3, [r2, #0]
    2aac:	600b      	str	r3, [r1, #0]
    2aae:	7812      	ldrb	r2, [r2, #0]
    2ab0:	1c10      	adds	r0, r2, #0
    2ab2:	bf18      	it	ne
    2ab4:	2001      	movne	r0, #1
    2ab6:	b002      	add	sp, #8
    2ab8:	4770      	bx	lr
    2aba:	4610      	mov	r0, r2
    2abc:	e7fb      	b.n	2ab6 <__ascii_mbtowc+0x16>
    2abe:	f06f 0001 	mvn.w	r0, #1
    2ac2:	e7f8      	b.n	2ab6 <__ascii_mbtowc+0x16>

00002ac4 <_malloc_usable_size_r>:
    2ac4:	f851 3c04 	ldr.w	r3, [r1, #-4]
    2ac8:	1f18      	subs	r0, r3, #4
    2aca:	2b00      	cmp	r3, #0
    2acc:	bfbc      	itt	lt
    2ace:	580b      	ldrlt	r3, [r1, r0]
    2ad0:	18c0      	addlt	r0, r0, r3
    2ad2:	4770      	bx	lr

00002ad4 <strcmp>:
    2ad4:	f810 2b01 	ldrb.w	r2, [r0], #1
    2ad8:	f811 3b01 	ldrb.w	r3, [r1], #1
    2adc:	2a01      	cmp	r2, #1
    2ade:	bf28      	it	cs
    2ae0:	429a      	cmpcs	r2, r3
    2ae2:	d0f7      	beq.n	2ad4 <strcmp>
    2ae4:	1ad0      	subs	r0, r2, r3
    2ae6:	4770      	bx	lr

00002ae8 <_wctomb_r>:
    2ae8:	b430      	push	{r4, r5}
    2aea:	4c06      	ldr	r4, [pc, #24]	; (2b04 <_wctomb_r+0x1c>)
    2aec:	4d06      	ldr	r5, [pc, #24]	; (2b08 <_wctomb_r+0x20>)
    2aee:	6824      	ldr	r4, [r4, #0]
    2af0:	6a24      	ldr	r4, [r4, #32]
    2af2:	2c00      	cmp	r4, #0
    2af4:	bf08      	it	eq
    2af6:	462c      	moveq	r4, r5
    2af8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
    2afc:	46a4      	mov	ip, r4
    2afe:	bc30      	pop	{r4, r5}
    2b00:	4760      	bx	ip
    2b02:	bf00      	nop
    2b04:	00003168 	andeq	r3, r0, r8, ror #2
    2b08:	000031cc 	andeq	r3, r0, ip, asr #3

00002b0c <__ascii_wctomb>:
    2b0c:	b149      	cbz	r1, 2b22 <__ascii_wctomb+0x16>
    2b0e:	2aff      	cmp	r2, #255	; 0xff
    2b10:	bf95      	itete	ls
    2b12:	700a      	strbls	r2, [r1, #0]
    2b14:	238a      	movhi	r3, #138	; 0x8a
    2b16:	2001      	movls	r0, #1
    2b18:	6003      	strhi	r3, [r0, #0]
    2b1a:	bf88      	it	hi
    2b1c:	f04f 30ff 	movhi.w	r0, #4294967295
    2b20:	4770      	bx	lr
    2b22:	4608      	mov	r0, r1
    2b24:	4770      	bx	lr
	...

00002b28 <__udivsi3>:
    2b28:	1e4a      	subs	r2, r1, #1
    2b2a:	bf08      	it	eq
    2b2c:	4770      	bxeq	lr
    2b2e:	f0c0 8124 	bcc.w	2d7a <__udivsi3+0x252>
    2b32:	4288      	cmp	r0, r1
    2b34:	f240 8116 	bls.w	2d64 <__udivsi3+0x23c>
    2b38:	4211      	tst	r1, r2
    2b3a:	f000 8117 	beq.w	2d6c <__udivsi3+0x244>
    2b3e:	fab0 f380 	clz	r3, r0
    2b42:	fab1 f281 	clz	r2, r1
    2b46:	eba2 0303 	sub.w	r3, r2, r3
    2b4a:	f1c3 031f 	rsb	r3, r3, #31
    2b4e:	a204      	add	r2, pc, #16	; (adr r2, 2b60 <__udivsi3+0x38>)
    2b50:	eb02 1303 	add.w	r3, r2, r3, lsl #4
    2b54:	f04f 0200 	mov.w	r2, #0
    2b58:	469f      	mov	pc, r3
    2b5a:	bf00      	nop
    2b5c:	f3af 8000 	nop.w
    2b60:	ebb0 7fc1 	cmp.w	r0, r1, lsl #31
    2b64:	bf00      	nop
    2b66:	eb42 0202 	adc.w	r2, r2, r2
    2b6a:	bf28      	it	cs
    2b6c:	eba0 70c1 	subcs.w	r0, r0, r1, lsl #31
    2b70:	ebb0 7f81 	cmp.w	r0, r1, lsl #30
    2b74:	bf00      	nop
    2b76:	eb42 0202 	adc.w	r2, r2, r2
    2b7a:	bf28      	it	cs
    2b7c:	eba0 7081 	subcs.w	r0, r0, r1, lsl #30
    2b80:	ebb0 7f41 	cmp.w	r0, r1, lsl #29
    2b84:	bf00      	nop
    2b86:	eb42 0202 	adc.w	r2, r2, r2
    2b8a:	bf28      	it	cs
    2b8c:	eba0 7041 	subcs.w	r0, r0, r1, lsl #29
    2b90:	ebb0 7f01 	cmp.w	r0, r1, lsl #28
    2b94:	bf00      	nop
    2b96:	eb42 0202 	adc.w	r2, r2, r2
    2b9a:	bf28      	it	cs
    2b9c:	eba0 7001 	subcs.w	r0, r0, r1, lsl #28
    2ba0:	ebb0 6fc1 	cmp.w	r0, r1, lsl #27
    2ba4:	bf00      	nop
    2ba6:	eb42 0202 	adc.w	r2, r2, r2
    2baa:	bf28      	it	cs
    2bac:	eba0 60c1 	subcs.w	r0, r0, r1, lsl #27
    2bb0:	ebb0 6f81 	cmp.w	r0, r1, lsl #26
    2bb4:	bf00      	nop
    2bb6:	eb42 0202 	adc.w	r2, r2, r2
    2bba:	bf28      	it	cs
    2bbc:	eba0 6081 	subcs.w	r0, r0, r1, lsl #26
    2bc0:	ebb0 6f41 	cmp.w	r0, r1, lsl #25
    2bc4:	bf00      	nop
    2bc6:	eb42 0202 	adc.w	r2, r2, r2
    2bca:	bf28      	it	cs
    2bcc:	eba0 6041 	subcs.w	r0, r0, r1, lsl #25
    2bd0:	ebb0 6f01 	cmp.w	r0, r1, lsl #24
    2bd4:	bf00      	nop
    2bd6:	eb42 0202 	adc.w	r2, r2, r2
    2bda:	bf28      	it	cs
    2bdc:	eba0 6001 	subcs.w	r0, r0, r1, lsl #24
    2be0:	ebb0 5fc1 	cmp.w	r0, r1, lsl #23
    2be4:	bf00      	nop
    2be6:	eb42 0202 	adc.w	r2, r2, r2
    2bea:	bf28      	it	cs
    2bec:	eba0 50c1 	subcs.w	r0, r0, r1, lsl #23
    2bf0:	ebb0 5f81 	cmp.w	r0, r1, lsl #22
    2bf4:	bf00      	nop
    2bf6:	eb42 0202 	adc.w	r2, r2, r2
    2bfa:	bf28      	it	cs
    2bfc:	eba0 5081 	subcs.w	r0, r0, r1, lsl #22
    2c00:	ebb0 5f41 	cmp.w	r0, r1, lsl #21
    2c04:	bf00      	nop
    2c06:	eb42 0202 	adc.w	r2, r2, r2
    2c0a:	bf28      	it	cs
    2c0c:	eba0 5041 	subcs.w	r0, r0, r1, lsl #21
    2c10:	ebb0 5f01 	cmp.w	r0, r1, lsl #20
    2c14:	bf00      	nop
    2c16:	eb42 0202 	adc.w	r2, r2, r2
    2c1a:	bf28      	it	cs
    2c1c:	eba0 5001 	subcs.w	r0, r0, r1, lsl #20
    2c20:	ebb0 4fc1 	cmp.w	r0, r1, lsl #19
    2c24:	bf00      	nop
    2c26:	eb42 0202 	adc.w	r2, r2, r2
    2c2a:	bf28      	it	cs
    2c2c:	eba0 40c1 	subcs.w	r0, r0, r1, lsl #19
    2c30:	ebb0 4f81 	cmp.w	r0, r1, lsl #18
    2c34:	bf00      	nop
    2c36:	eb42 0202 	adc.w	r2, r2, r2
    2c3a:	bf28      	it	cs
    2c3c:	eba0 4081 	subcs.w	r0, r0, r1, lsl #18
    2c40:	ebb0 4f41 	cmp.w	r0, r1, lsl #17
    2c44:	bf00      	nop
    2c46:	eb42 0202 	adc.w	r2, r2, r2
    2c4a:	bf28      	it	cs
    2c4c:	eba0 4041 	subcs.w	r0, r0, r1, lsl #17
    2c50:	ebb0 4f01 	cmp.w	r0, r1, lsl #16
    2c54:	bf00      	nop
    2c56:	eb42 0202 	adc.w	r2, r2, r2
    2c5a:	bf28      	it	cs
    2c5c:	eba0 4001 	subcs.w	r0, r0, r1, lsl #16
    2c60:	ebb0 3fc1 	cmp.w	r0, r1, lsl #15
    2c64:	bf00      	nop
    2c66:	eb42 0202 	adc.w	r2, r2, r2
    2c6a:	bf28      	it	cs
    2c6c:	eba0 30c1 	subcs.w	r0, r0, r1, lsl #15
    2c70:	ebb0 3f81 	cmp.w	r0, r1, lsl #14
    2c74:	bf00      	nop
    2c76:	eb42 0202 	adc.w	r2, r2, r2
    2c7a:	bf28      	it	cs
    2c7c:	eba0 3081 	subcs.w	r0, r0, r1, lsl #14
    2c80:	ebb0 3f41 	cmp.w	r0, r1, lsl #13
    2c84:	bf00      	nop
    2c86:	eb42 0202 	adc.w	r2, r2, r2
    2c8a:	bf28      	it	cs
    2c8c:	eba0 3041 	subcs.w	r0, r0, r1, lsl #13
    2c90:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
    2c94:	bf00      	nop
    2c96:	eb42 0202 	adc.w	r2, r2, r2
    2c9a:	bf28      	it	cs
    2c9c:	eba0 3001 	subcs.w	r0, r0, r1, lsl #12
    2ca0:	ebb0 2fc1 	cmp.w	r0, r1, lsl #11
    2ca4:	bf00      	nop
    2ca6:	eb42 0202 	adc.w	r2, r2, r2
    2caa:	bf28      	it	cs
    2cac:	eba0 20c1 	subcs.w	r0, r0, r1, lsl #11
    2cb0:	ebb0 2f81 	cmp.w	r0, r1, lsl #10
    2cb4:	bf00      	nop
    2cb6:	eb42 0202 	adc.w	r2, r2, r2
    2cba:	bf28      	it	cs
    2cbc:	eba0 2081 	subcs.w	r0, r0, r1, lsl #10
    2cc0:	ebb0 2f41 	cmp.w	r0, r1, lsl #9
    2cc4:	bf00      	nop
    2cc6:	eb42 0202 	adc.w	r2, r2, r2
    2cca:	bf28      	it	cs
    2ccc:	eba0 2041 	subcs.w	r0, r0, r1, lsl #9
    2cd0:	ebb0 2f01 	cmp.w	r0, r1, lsl #8
    2cd4:	bf00      	nop
    2cd6:	eb42 0202 	adc.w	r2, r2, r2
    2cda:	bf28      	it	cs
    2cdc:	eba0 2001 	subcs.w	r0, r0, r1, lsl #8
    2ce0:	ebb0 1fc1 	cmp.w	r0, r1, lsl #7
    2ce4:	bf00      	nop
    2ce6:	eb42 0202 	adc.w	r2, r2, r2
    2cea:	bf28      	it	cs
    2cec:	eba0 10c1 	subcs.w	r0, r0, r1, lsl #7
    2cf0:	ebb0 1f81 	cmp.w	r0, r1, lsl #6
    2cf4:	bf00      	nop
    2cf6:	eb42 0202 	adc.w	r2, r2, r2
    2cfa:	bf28      	it	cs
    2cfc:	eba0 1081 	subcs.w	r0, r0, r1, lsl #6
    2d00:	ebb0 1f41 	cmp.w	r0, r1, lsl #5
    2d04:	bf00      	nop
    2d06:	eb42 0202 	adc.w	r2, r2, r2
    2d0a:	bf28      	it	cs
    2d0c:	eba0 1041 	subcs.w	r0, r0, r1, lsl #5
    2d10:	ebb0 1f01 	cmp.w	r0, r1, lsl #4
    2d14:	bf00      	nop
    2d16:	eb42 0202 	adc.w	r2, r2, r2
    2d1a:	bf28      	it	cs
    2d1c:	eba0 1001 	subcs.w	r0, r0, r1, lsl #4
    2d20:	ebb0 0fc1 	cmp.w	r0, r1, lsl #3
    2d24:	bf00      	nop
    2d26:	eb42 0202 	adc.w	r2, r2, r2
    2d2a:	bf28      	it	cs
    2d2c:	eba0 00c1 	subcs.w	r0, r0, r1, lsl #3
    2d30:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
    2d34:	bf00      	nop
    2d36:	eb42 0202 	adc.w	r2, r2, r2
    2d3a:	bf28      	it	cs
    2d3c:	eba0 0081 	subcs.w	r0, r0, r1, lsl #2
    2d40:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
    2d44:	bf00      	nop
    2d46:	eb42 0202 	adc.w	r2, r2, r2
    2d4a:	bf28      	it	cs
    2d4c:	eba0 0041 	subcs.w	r0, r0, r1, lsl #1
    2d50:	ebb0 0f01 	cmp.w	r0, r1
    2d54:	bf00      	nop
    2d56:	eb42 0202 	adc.w	r2, r2, r2
    2d5a:	bf28      	it	cs
    2d5c:	eba0 0001 	subcs.w	r0, r0, r1
    2d60:	4610      	mov	r0, r2
    2d62:	4770      	bx	lr
    2d64:	bf0c      	ite	eq
    2d66:	2001      	moveq	r0, #1
    2d68:	2000      	movne	r0, #0
    2d6a:	4770      	bx	lr
    2d6c:	fab1 f281 	clz	r2, r1
    2d70:	f1c2 021f 	rsb	r2, r2, #31
    2d74:	fa20 f002 	lsr.w	r0, r0, r2
    2d78:	4770      	bx	lr
    2d7a:	b108      	cbz	r0, 2d80 <__udivsi3+0x258>
    2d7c:	f04f 30ff 	mov.w	r0, #4294967295
    2d80:	f000 b966 	b.w	3050 <__aeabi_idiv0>

00002d84 <__aeabi_uidivmod>:
    2d84:	2900      	cmp	r1, #0
    2d86:	d0f8      	beq.n	2d7a <__udivsi3+0x252>
    2d88:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
    2d8c:	f7ff fecc 	bl	2b28 <__udivsi3>
    2d90:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
    2d94:	fb02 f300 	mul.w	r3, r2, r0
    2d98:	eba1 0103 	sub.w	r1, r1, r3
    2d9c:	4770      	bx	lr
    2d9e:	bf00      	nop

00002da0 <__divsi3>:
    2da0:	2900      	cmp	r1, #0
    2da2:	f000 813e 	beq.w	3022 <.divsi3_skip_div0_test+0x27c>

00002da6 <.divsi3_skip_div0_test>:
    2da6:	ea80 0c01 	eor.w	ip, r0, r1
    2daa:	bf48      	it	mi
    2dac:	4249      	negmi	r1, r1
    2dae:	1e4a      	subs	r2, r1, #1
    2db0:	f000 811f 	beq.w	2ff2 <.divsi3_skip_div0_test+0x24c>
    2db4:	0003      	movs	r3, r0
    2db6:	bf48      	it	mi
    2db8:	4243      	negmi	r3, r0
    2dba:	428b      	cmp	r3, r1
    2dbc:	f240 811e 	bls.w	2ffc <.divsi3_skip_div0_test+0x256>
    2dc0:	4211      	tst	r1, r2
    2dc2:	f000 8123 	beq.w	300c <.divsi3_skip_div0_test+0x266>
    2dc6:	fab3 f283 	clz	r2, r3
    2dca:	fab1 f081 	clz	r0, r1
    2dce:	eba0 0202 	sub.w	r2, r0, r2
    2dd2:	f1c2 021f 	rsb	r2, r2, #31
    2dd6:	a004      	add	r0, pc, #16	; (adr r0, 2de8 <.divsi3_skip_div0_test+0x42>)
    2dd8:	eb00 1202 	add.w	r2, r0, r2, lsl #4
    2ddc:	f04f 0000 	mov.w	r0, #0
    2de0:	4697      	mov	pc, r2
    2de2:	bf00      	nop
    2de4:	f3af 8000 	nop.w
    2de8:	ebb3 7fc1 	cmp.w	r3, r1, lsl #31
    2dec:	bf00      	nop
    2dee:	eb40 0000 	adc.w	r0, r0, r0
    2df2:	bf28      	it	cs
    2df4:	eba3 73c1 	subcs.w	r3, r3, r1, lsl #31
    2df8:	ebb3 7f81 	cmp.w	r3, r1, lsl #30
    2dfc:	bf00      	nop
    2dfe:	eb40 0000 	adc.w	r0, r0, r0
    2e02:	bf28      	it	cs
    2e04:	eba3 7381 	subcs.w	r3, r3, r1, lsl #30
    2e08:	ebb3 7f41 	cmp.w	r3, r1, lsl #29
    2e0c:	bf00      	nop
    2e0e:	eb40 0000 	adc.w	r0, r0, r0
    2e12:	bf28      	it	cs
    2e14:	eba3 7341 	subcs.w	r3, r3, r1, lsl #29
    2e18:	ebb3 7f01 	cmp.w	r3, r1, lsl #28
    2e1c:	bf00      	nop
    2e1e:	eb40 0000 	adc.w	r0, r0, r0
    2e22:	bf28      	it	cs
    2e24:	eba3 7301 	subcs.w	r3, r3, r1, lsl #28
    2e28:	ebb3 6fc1 	cmp.w	r3, r1, lsl #27
    2e2c:	bf00      	nop
    2e2e:	eb40 0000 	adc.w	r0, r0, r0
    2e32:	bf28      	it	cs
    2e34:	eba3 63c1 	subcs.w	r3, r3, r1, lsl #27
    2e38:	ebb3 6f81 	cmp.w	r3, r1, lsl #26
    2e3c:	bf00      	nop
    2e3e:	eb40 0000 	adc.w	r0, r0, r0
    2e42:	bf28      	it	cs
    2e44:	eba3 6381 	subcs.w	r3, r3, r1, lsl #26
    2e48:	ebb3 6f41 	cmp.w	r3, r1, lsl #25
    2e4c:	bf00      	nop
    2e4e:	eb40 0000 	adc.w	r0, r0, r0
    2e52:	bf28      	it	cs
    2e54:	eba3 6341 	subcs.w	r3, r3, r1, lsl #25
    2e58:	ebb3 6f01 	cmp.w	r3, r1, lsl #24
    2e5c:	bf00      	nop
    2e5e:	eb40 0000 	adc.w	r0, r0, r0
    2e62:	bf28      	it	cs
    2e64:	eba3 6301 	subcs.w	r3, r3, r1, lsl #24
    2e68:	ebb3 5fc1 	cmp.w	r3, r1, lsl #23
    2e6c:	bf00      	nop
    2e6e:	eb40 0000 	adc.w	r0, r0, r0
    2e72:	bf28      	it	cs
    2e74:	eba3 53c1 	subcs.w	r3, r3, r1, lsl #23
    2e78:	ebb3 5f81 	cmp.w	r3, r1, lsl #22
    2e7c:	bf00      	nop
    2e7e:	eb40 0000 	adc.w	r0, r0, r0
    2e82:	bf28      	it	cs
    2e84:	eba3 5381 	subcs.w	r3, r3, r1, lsl #22
    2e88:	ebb3 5f41 	cmp.w	r3, r1, lsl #21
    2e8c:	bf00      	nop
    2e8e:	eb40 0000 	adc.w	r0, r0, r0
    2e92:	bf28      	it	cs
    2e94:	eba3 5341 	subcs.w	r3, r3, r1, lsl #21
    2e98:	ebb3 5f01 	cmp.w	r3, r1, lsl #20
    2e9c:	bf00      	nop
    2e9e:	eb40 0000 	adc.w	r0, r0, r0
    2ea2:	bf28      	it	cs
    2ea4:	eba3 5301 	subcs.w	r3, r3, r1, lsl #20
    2ea8:	ebb3 4fc1 	cmp.w	r3, r1, lsl #19
    2eac:	bf00      	nop
    2eae:	eb40 0000 	adc.w	r0, r0, r0
    2eb2:	bf28      	it	cs
    2eb4:	eba3 43c1 	subcs.w	r3, r3, r1, lsl #19
    2eb8:	ebb3 4f81 	cmp.w	r3, r1, lsl #18
    2ebc:	bf00      	nop
    2ebe:	eb40 0000 	adc.w	r0, r0, r0
    2ec2:	bf28      	it	cs
    2ec4:	eba3 4381 	subcs.w	r3, r3, r1, lsl #18
    2ec8:	ebb3 4f41 	cmp.w	r3, r1, lsl #17
    2ecc:	bf00      	nop
    2ece:	eb40 0000 	adc.w	r0, r0, r0
    2ed2:	bf28      	it	cs
    2ed4:	eba3 4341 	subcs.w	r3, r3, r1, lsl #17
    2ed8:	ebb3 4f01 	cmp.w	r3, r1, lsl #16
    2edc:	bf00      	nop
    2ede:	eb40 0000 	adc.w	r0, r0, r0
    2ee2:	bf28      	it	cs
    2ee4:	eba3 4301 	subcs.w	r3, r3, r1, lsl #16
    2ee8:	ebb3 3fc1 	cmp.w	r3, r1, lsl #15
    2eec:	bf00      	nop
    2eee:	eb40 0000 	adc.w	r0, r0, r0
    2ef2:	bf28      	it	cs
    2ef4:	eba3 33c1 	subcs.w	r3, r3, r1, lsl #15
    2ef8:	ebb3 3f81 	cmp.w	r3, r1, lsl #14
    2efc:	bf00      	nop
    2efe:	eb40 0000 	adc.w	r0, r0, r0
    2f02:	bf28      	it	cs
    2f04:	eba3 3381 	subcs.w	r3, r3, r1, lsl #14
    2f08:	ebb3 3f41 	cmp.w	r3, r1, lsl #13
    2f0c:	bf00      	nop
    2f0e:	eb40 0000 	adc.w	r0, r0, r0
    2f12:	bf28      	it	cs
    2f14:	eba3 3341 	subcs.w	r3, r3, r1, lsl #13
    2f18:	ebb3 3f01 	cmp.w	r3, r1, lsl #12
    2f1c:	bf00      	nop
    2f1e:	eb40 0000 	adc.w	r0, r0, r0
    2f22:	bf28      	it	cs
    2f24:	eba3 3301 	subcs.w	r3, r3, r1, lsl #12
    2f28:	ebb3 2fc1 	cmp.w	r3, r1, lsl #11
    2f2c:	bf00      	nop
    2f2e:	eb40 0000 	adc.w	r0, r0, r0
    2f32:	bf28      	it	cs
    2f34:	eba3 23c1 	subcs.w	r3, r3, r1, lsl #11
    2f38:	ebb3 2f81 	cmp.w	r3, r1, lsl #10
    2f3c:	bf00      	nop
    2f3e:	eb40 0000 	adc.w	r0, r0, r0
    2f42:	bf28      	it	cs
    2f44:	eba3 2381 	subcs.w	r3, r3, r1, lsl #10
    2f48:	ebb3 2f41 	cmp.w	r3, r1, lsl #9
    2f4c:	bf00      	nop
    2f4e:	eb40 0000 	adc.w	r0, r0, r0
    2f52:	bf28      	it	cs
    2f54:	eba3 2341 	subcs.w	r3, r3, r1, lsl #9
    2f58:	ebb3 2f01 	cmp.w	r3, r1, lsl #8
    2f5c:	bf00      	nop
    2f5e:	eb40 0000 	adc.w	r0, r0, r0
    2f62:	bf28      	it	cs
    2f64:	eba3 2301 	subcs.w	r3, r3, r1, lsl #8
    2f68:	ebb3 1fc1 	cmp.w	r3, r1, lsl #7
    2f6c:	bf00      	nop
    2f6e:	eb40 0000 	adc.w	r0, r0, r0
    2f72:	bf28      	it	cs
    2f74:	eba3 13c1 	subcs.w	r3, r3, r1, lsl #7
    2f78:	ebb3 1f81 	cmp.w	r3, r1, lsl #6
    2f7c:	bf00      	nop
    2f7e:	eb40 0000 	adc.w	r0, r0, r0
    2f82:	bf28      	it	cs
    2f84:	eba3 1381 	subcs.w	r3, r3, r1, lsl #6
    2f88:	ebb3 1f41 	cmp.w	r3, r1, lsl #5
    2f8c:	bf00      	nop
    2f8e:	eb40 0000 	adc.w	r0, r0, r0
    2f92:	bf28      	it	cs
    2f94:	eba3 1341 	subcs.w	r3, r3, r1, lsl #5
    2f98:	ebb3 1f01 	cmp.w	r3, r1, lsl #4
    2f9c:	bf00      	nop
    2f9e:	eb40 0000 	adc.w	r0, r0, r0
    2fa2:	bf28      	it	cs
    2fa4:	eba3 1301 	subcs.w	r3, r3, r1, lsl #4
    2fa8:	ebb3 0fc1 	cmp.w	r3, r1, lsl #3
    2fac:	bf00      	nop
    2fae:	eb40 0000 	adc.w	r0, r0, r0
    2fb2:	bf28      	it	cs
    2fb4:	eba3 03c1 	subcs.w	r3, r3, r1, lsl #3
    2fb8:	ebb3 0f81 	cmp.w	r3, r1, lsl #2
    2fbc:	bf00      	nop
    2fbe:	eb40 0000 	adc.w	r0, r0, r0
    2fc2:	bf28      	it	cs
    2fc4:	eba3 0381 	subcs.w	r3, r3, r1, lsl #2
    2fc8:	ebb3 0f41 	cmp.w	r3, r1, lsl #1
    2fcc:	bf00      	nop
    2fce:	eb40 0000 	adc.w	r0, r0, r0
    2fd2:	bf28      	it	cs
    2fd4:	eba3 0341 	subcs.w	r3, r3, r1, lsl #1
    2fd8:	ebb3 0f01 	cmp.w	r3, r1
    2fdc:	bf00      	nop
    2fde:	eb40 0000 	adc.w	r0, r0, r0
    2fe2:	bf28      	it	cs
    2fe4:	eba3 0301 	subcs.w	r3, r3, r1
    2fe8:	f1bc 0f00 	cmp.w	ip, #0
    2fec:	bf48      	it	mi
    2fee:	4240      	negmi	r0, r0
    2ff0:	4770      	bx	lr
    2ff2:	ea9c 0f00 	teq	ip, r0
    2ff6:	bf48      	it	mi
    2ff8:	4240      	negmi	r0, r0
    2ffa:	4770      	bx	lr
    2ffc:	bf38      	it	cc
    2ffe:	2000      	movcc	r0, #0
    3000:	bf04      	itt	eq
    3002:	ea4f 70ec 	moveq.w	r0, ip, asr #31
    3006:	f040 0001 	orreq.w	r0, r0, #1
    300a:	4770      	bx	lr
    300c:	fab1 f281 	clz	r2, r1
    3010:	f1c2 021f 	rsb	r2, r2, #31
    3014:	f1bc 0f00 	cmp.w	ip, #0
    3018:	fa23 f002 	lsr.w	r0, r3, r2
    301c:	bf48      	it	mi
    301e:	4240      	negmi	r0, r0
    3020:	4770      	bx	lr
    3022:	2800      	cmp	r0, #0
    3024:	bfc8      	it	gt
    3026:	f06f 4000 	mvngt.w	r0, #2147483648	; 0x80000000
    302a:	bfb8      	it	lt
    302c:	f04f 4000 	movlt.w	r0, #2147483648	; 0x80000000
    3030:	f000 b80e 	b.w	3050 <__aeabi_idiv0>

00003034 <__aeabi_idivmod>:
    3034:	2900      	cmp	r1, #0
    3036:	d0f4      	beq.n	3022 <.divsi3_skip_div0_test+0x27c>
    3038:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
    303c:	f7ff feb3 	bl	2da6 <.divsi3_skip_div0_test>
    3040:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
    3044:	fb02 f300 	mul.w	r3, r2, r0
    3048:	eba1 0103 	sub.w	r1, r1, r3
    304c:	4770      	bx	lr
    304e:	bf00      	nop

00003050 <__aeabi_idiv0>:
    3050:	4770      	bx	lr
    3052:	bf00      	nop

00003054 <_close>:
    3054:	f243 73ec 	movw	r3, #14316	; 0x37ec
    3058:	f2c0 0300 	movt	r3, #0
    305c:	2258      	movs	r2, #88	; 0x58
    305e:	f04f 30ff 	mov.w	r0, #4294967295
    3062:	601a      	str	r2, [r3, #0]
    3064:	4770      	bx	lr
    3066:	bf00      	nop

00003068 <_fstat>:
    3068:	f243 73ec 	movw	r3, #14316	; 0x37ec
    306c:	f2c0 0300 	movt	r3, #0
    3070:	2258      	movs	r2, #88	; 0x58
    3072:	f04f 30ff 	mov.w	r0, #4294967295
    3076:	601a      	str	r2, [r3, #0]
    3078:	4770      	bx	lr
    307a:	bf00      	nop

0000307c <_isatty>:
    307c:	f243 73ec 	movw	r3, #14316	; 0x37ec
    3080:	f2c0 0300 	movt	r3, #0
    3084:	2258      	movs	r2, #88	; 0x58
    3086:	2000      	movs	r0, #0
    3088:	601a      	str	r2, [r3, #0]
    308a:	4770      	bx	lr

0000308c <_lseek>:
    308c:	f243 73ec 	movw	r3, #14316	; 0x37ec
    3090:	f2c0 0300 	movt	r3, #0
    3094:	2258      	movs	r2, #88	; 0x58
    3096:	f04f 30ff 	mov.w	r0, #4294967295
    309a:	601a      	str	r2, [r3, #0]
    309c:	4770      	bx	lr
    309e:	bf00      	nop

000030a0 <_sbrk>:
    30a0:	f243 7244 	movw	r2, #14148	; 0x3744
    30a4:	f2c0 0200 	movt	r2, #0
    30a8:	f240 0100 	movw	r1, #0
    30ac:	f2c0 1100 	movt	r1, #256	; 0x100
    30b0:	6813      	ldr	r3, [r2, #0]
    30b2:	2b00      	cmp	r3, #0
    30b4:	bf08      	it	eq
    30b6:	460b      	moveq	r3, r1
    30b8:	4418      	add	r0, r3
    30ba:	6010      	str	r0, [r2, #0]
    30bc:	4618      	mov	r0, r3
    30be:	4770      	bx	lr

000030c0 <_exit>:
    30c0:	e7fe      	b.n	30c0 <_exit>
    30c2:	bf00      	nop

Disassembly of section .init:

000030c4 <_init>:
    30c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    30c6:	bf00      	nop
    30c8:	bcf8      	pop	{r3, r4, r5, r6, r7}
    30ca:	bc08      	pop	{r3}
    30cc:	469e      	mov	lr, r3
    30ce:	4770      	bx	lr

Disassembly of section .fini:

000030d0 <_fini>:
    30d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    30d2:	bf00      	nop
    30d4:	bcf8      	pop	{r3, r4, r5, r6, r7}
    30d6:	bc08      	pop	{r3}
    30d8:	469e      	mov	lr, r3
    30da:	4770      	bx	lr

Disassembly of section .data:

000030dc <__dso_handle>:
    30dc:	00000000 	andeq	r0, r0, r0

000030e0 <colorMsgInfo>:
    30e0:	36335b1b 			; <UNDEFINED> instruction: 0x36335b1b
    30e4:	464e496d 	strbmi	r4, [lr], -sp, ror #18
    30e8:	00203a4f 	eoreq	r3, r0, pc, asr #20

000030ec <colorMsgWarning>:
    30ec:	35335b1b 	ldrcc	r5, [r3, #-2843]!	; 0xfffff4e5
    30f0:	5241576d 	subpl	r5, r1, #28573696	; 0x1b40000
    30f4:	474e494e 	strbmi	r4, [lr, -lr, asr #18]
    30f8:	0000203a 	andeq	r2, r0, sl, lsr r0

000030fc <colorMsgSuccess>:
    30fc:	32335b1b 	eorscc	r5, r3, #27648	; 0x6c00
    3100:	4355536d 	cmpmi	r5, #-1275068415	; 0xb4000001
    3104:	53534543 	cmppl	r3, #281018368	; 0x10c00000
    3108:	0000203a 	andeq	r2, r0, sl, lsr r0

0000310c <colorMsgDanger>:
    310c:	31335b1b 	teqcc	r3, fp, lsl fp
    3110:	4e41446d 	cdpmi	4, 4, cr4, cr1, cr13, {3}
    3114:	3a524547 	bcc	1494638 <_end+0x494638>
    3118:	00000020 	andeq	r0, r0, r0, lsr #32

0000311c <colorMsgDefault>:
    311c:	37335b1b 			; <UNDEFINED> instruction: 0x37335b1b
    3120:	0000006d 	andeq	r0, r0, sp, rrx

00003124 <colorMsgInfo>:
    3124:	36335b1b 			; <UNDEFINED> instruction: 0x36335b1b
    3128:	464e496d 	strbmi	r4, [lr], -sp, ror #18
    312c:	00203a4f 	eoreq	r3, r0, pc, asr #20

00003130 <colorMsgWarning>:
    3130:	35335b1b 	ldrcc	r5, [r3, #-2843]!	; 0xfffff4e5
    3134:	5241576d 	subpl	r5, r1, #28573696	; 0x1b40000
    3138:	474e494e 	strbmi	r4, [lr, -lr, asr #18]
    313c:	0000203a 	andeq	r2, r0, sl, lsr r0

00003140 <colorMsgSuccess>:
    3140:	32335b1b 	eorscc	r5, r3, #27648	; 0x6c00
    3144:	4355536d 	cmpmi	r5, #-1275068415	; 0xb4000001
    3148:	53534543 	cmppl	r3, #281018368	; 0x10c00000
    314c:	0000203a 	andeq	r2, r0, sl, lsr r0

00003150 <colorMsgDanger>:
    3150:	31335b1b 	teqcc	r3, fp, lsl fp
    3154:	4e41446d 	cdpmi	4, 4, cr4, cr1, cr13, {3}
    3158:	3a524547 	bcc	149467c <_end+0x49467c>
    315c:	00000020 	andeq	r0, r0, r0, lsr #32

00003160 <colorMsgDefault>:
    3160:	37335b1b 			; <UNDEFINED> instruction: 0x37335b1b
    3164:	0000006d 	andeq	r0, r0, sp, rrx

00003168 <_impure_ptr>:
    3168:	0000316c 	andeq	r3, r0, ip, ror #2

0000316c <impure_data>:
    316c:	00000000 	andeq	r0, r0, r0
    3170:	00003564 	andeq	r3, r0, r4, ror #10
    3174:	00003584 	andeq	r3, r0, r4, lsl #11
    3178:	00003544 	andeq	r3, r0, r4, asr #10
	...

000031cc <__global_locale>:
    31cc:	00000043 	andeq	r0, r0, r3, asr #32
	...
    31ec:	00000043 	andeq	r0, r0, r3, asr #32
	...
    320c:	00000043 	andeq	r0, r0, r3, asr #32
	...
    322c:	00000043 	andeq	r0, r0, r3, asr #32
	...
    324c:	00000043 	andeq	r0, r0, r3, asr #32
	...
    326c:	00000043 	andeq	r0, r0, r3, asr #32
	...
    328c:	00000043 	andeq	r0, r0, r3, asr #32
	...
    32ac:	00002b0d 	andeq	r2, r0, sp, lsl #22
    32b0:	00002aa1 	andeq	r2, r0, r1, lsr #21
    32b4:	00000000 	andeq	r0, r0, r0
    32b8:	0000360d 	andeq	r3, r0, sp, lsl #12
    32bc:	0000360b 	andeq	r3, r0, fp, lsl #12
    32c0:	000035ad 	andeq	r3, r0, sp, lsr #11
    32c4:	000035ad 	andeq	r3, r0, sp, lsr #11
    32c8:	000035ad 	andeq	r3, r0, sp, lsr #11
    32cc:	000035ad 	andeq	r3, r0, sp, lsr #11
    32d0:	000035ad 	andeq	r3, r0, sp, lsr #11
    32d4:	000035ad 	andeq	r3, r0, sp, lsr #11
    32d8:	000035ad 	andeq	r3, r0, sp, lsr #11
    32dc:	000035ad 	andeq	r3, r0, sp, lsr #11
    32e0:	000035ad 	andeq	r3, r0, sp, lsr #11
    32e4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    32e8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    32ec:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    32f0:	0000ffff 	strdeq	pc, [r0], -pc	; <UNPREDICTABLE>
    32f4:	53410001 	movtpl	r0, #4097	; 0x1001
    32f8:	00494943 	subeq	r4, r9, r3, asr #18
	...
    3314:	53410000 	movtpl	r0, #4096	; 0x1000
    3318:	00494943 	subeq	r4, r9, r3, asr #18
	...

Disassembly of section .init_array:

00003338 <__frame_dummy_init_array_entry>:
    3338:	000000ad 	andeq	r0, r0, sp, lsr #1

Disassembly of section .fini_array:

0000333c <__do_global_dtors_aux_fini_array_entry>:
    333c:	00000081 	andeq	r0, r0, r1, lsl #1

Disassembly of section .rodata:

00003340 <__sf_fake_stderr-0x204>:
    3340:	6d305b1b 	fldmdbxvs	r0!, {d5-d17}	;@ Deprecated
    3344:	00000000 	andeq	r0, r0, r0
    3348:	4f464e49 	svcmi	0x00464e49
    334c:	55203a20 	strpl	r3, [r0, #-2592]!	; 0xfffff5e0
    3350:	30545241 	subscc	r5, r4, r1, asr #4
    3354:	41455220 	cmpmi	r5, r0, lsr #4
    3358:	6f205944 	svcvs	0x00205944
    335c:	7473206e 	ldrbtvc	r2, [r3], #-110	; 0xffffff92
    3360:	74756f64 	ldrbtvc	r6, [r5], #-3940	; 0xfffff09c
    3364:	0000000a 	andeq	r0, r0, sl
    3368:	4f464e49 	svcmi	0x00464e49
    336c:	55203a20 	strpl	r3, [r0, #-2592]!	; 0xfffff5e0
    3370:	31545241 	cmpcc	r4, r1, asr #4
    3374:	41455220 	cmpmi	r5, r0, lsr #4
    3378:	6f205944 	svcvs	0x00205944
    337c:	7473206e 	ldrbtvc	r2, [r3], #-110	; 0xffffff92
    3380:	72726564 	rsbsvc	r6, r2, #100, 10	; 0x19000000
    3384:	0000000a 	andeq	r0, r0, sl
    3388:	4f464e49 	svcmi	0x00464e49
    338c:	48203a20 	stmdami	r0!, {r5, r9, fp, ip, sp}
    3390:	6c204c41 	stcvs	12, cr4, [r0], #-260	; 0xfffffefc
    3394:	6c657665 	stclvs	6, cr7, [r5], #-404	; 0xfffffe6c
    3398:	61747320 	cmnvs	r4, r0, lsr #6
    339c:	20737574 	rsbscs	r7, r3, r4, ror r5
    33a0:	203e2d2d 	eorscs	r2, lr, sp, lsr #26
    33a4:	61205055 	qsubvs	r5, r5, r0
    33a8:	5220646e 	eorpl	r6, r0, #1845493760	; 0x6e000000
    33ac:	696e6e75 	stmdbvs	lr!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    33b0:	000a676e 	andeq	r6, sl, lr, ror #14
    33b4:	3b305b1b 	blcc	c1a028 <heap_size+0xbfa028>
    33b8:	006d3133 	rsbeq	r3, sp, r3, lsr r1
    33bc:	202a2a2a 	eorcs	r2, sl, sl, lsr #20
    33c0:	666c6553 			; <UNDEFINED> instruction: 0x666c6553
    33c4:	74736574 	ldrbtvc	r6, [r3], #-1396	; 0xfffffa8c
    33c8:	20746120 	rsbscs	r6, r4, r0, lsr #2
    33cc:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    33d0:	2a207075 	bcs	81f5ac <heap_size+0x7ff5ac>
    33d4:	000a2a2a 	andeq	r2, sl, sl, lsr #20
    33d8:	3b315b1b 	blcc	c5a04c <heap_size+0xc3a04c>
    33dc:	006d3433 	rsbeq	r3, sp, r3, lsr r4
    33e0:	4f464e49 	svcmi	0x00464e49
    33e4:	25203e20 	strcs	r3, [r0, #-3616]!	; 0xfffff1e0
    33e8:	73692073 	cmnvc	r9, #115	; 0x73
    33ec:	74206120 	strtvc	r6, [r0], #-288	; 0xfffffee0
    33f0:	696d7265 	stmdbvs	sp!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    33f4:	0a6c616e 	beq	1b1b9b4 <_end+0xb1b9b4>
    33f8:	00000000 	andeq	r0, r0, r0
    33fc:	31305b1b 	teqcc	r0, fp, lsl fp
    3400:	6d33333b 	ldcvs	3, cr3, [r3, #-236]!	; 0xffffff14
    3404:	00000000 	andeq	r0, r0, r0
    3408:	4f464e49 	svcmi	0x00464e49
    340c:	25203e20 	strcs	r3, [r0, #-3616]!	; 0xfffff1e0
    3410:	73692073 	cmnvc	r9, #115	; 0x73
    3414:	544f4e20 	strbpl	r4, [pc], #-3616	; 341c <__do_global_dtors_aux_fini_array_entry+0xe0>
    3418:	74206120 	strtvc	r6, [r0], #-288	; 0xfffffee0
    341c:	696d7265 	stmdbvs	sp!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    3420:	206c616e 	rsbcs	r6, ip, lr, ror #2
    3424:	5420726f 	strtpl	r7, [r0], #-623	; 0xfffffd91
    3428:	000a5954 	andeq	r5, sl, r4, asr r9
    342c:	202a2a2a 	eorcs	r2, sl, sl, lsr #20
    3430:	20444e45 	subcs	r4, r4, r5, asr #28
    3434:	3e20464f 	cfmadda32cc	mvax2, mvax4, mvfx0, mvfx15
    3438:	6c655320 	stclvs	3, cr5, [r5], #-128	; 0xffffff80
    343c:	73657466 	cmnvc	r5, #1711276032	; 0x66000000
    3440:	74612074 	strbtvc	r2, [r1], #-116	; 0xffffff8c
    3444:	61747320 	cmnvs	r4, r0, lsr #6
    3448:	20707574 	rsbscs	r7, r0, r4, ror r5
    344c:	0a2a2a2a 	beq	a8dcfc <heap_size+0xa6dcfc>
    3450:	00000000 	andeq	r0, r0, r0
    3454:	6d305b1b 	fldmdbxvs	r0!, {d5-d17}	;@ Deprecated
    3458:	00000000 	andeq	r0, r0, r0
    345c:	65746e45 	ldrbvs	r6, [r4, #-3653]!	; 0xfffff1bb
    3460:	20612072 	rsbcs	r2, r1, r2, ror r0
    3464:	72657375 	rsbvc	r7, r5, #-738197503	; 0xd4000001
    3468:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
    346c:	00000a3a 	andeq	r0, r0, sl, lsr sl
    3470:	00007325 	andeq	r7, r0, r5, lsr #6
    3474:	65746e45 	ldrbvs	r6, [r4, #-3653]!	; 0xfffff1bb
    3478:	6f792072 	svcvs	0x00792072
    347c:	4e207275 	mcrmi	2, 1, r7, cr0, cr5, {3}
    3480:	6e6b6369 	cdpvs	3, 6, cr6, cr11, cr9, {3}
    3484:	3a656d61 	bcc	195ea10 <_end+0x95ea10>
    3488:	0000000a 	andeq	r0, r0, sl
    348c:	25207325 	strcs	r7, [r0, #-805]!	; 0xfffffcdb
    3490:	61772073 	cmnvs	r7, r3, ror r0
    3494:	65722073 	ldrbvs	r2, [r2, #-115]!	; 0xffffff8d
    3498:	746e6563 	strbtvc	r6, [lr], #-1379	; 0xfffffa9d
    349c:	6120796c 			; <UNDEFINED> instruction: 0x6120796c
    34a0:	6f687475 	svcvs	0x00687475
    34a4:	657a6972 	ldrbvs	r6, [sl, #-2418]!	; 0xfffff68e
    34a8:	6f742064 	svcvs	0x00742064
    34ac:	63636120 	cmnvs	r3, #32, 2
    34b0:	20737365 	rsbscs	r7, r3, r5, ror #6
    34b4:	72756f79 	rsbsvc	r6, r5, #484	; 0x1e4
    34b8:	72657420 	rsbvc	r7, r5, #32, 8	; 0x20000000
    34bc:	616e696d 	cmnvs	lr, sp, ror #18
    34c0:	000a0d6c 	andeq	r0, sl, ip, ror #26
    34c4:	65646e75 	strbvs	r6, [r4, #-3701]!	; 0xfffff18b
    34c8:	6f632072 	svcvs	0x00632072
    34cc:	7274736e 	rsbsvc	r7, r4, #-1207959551	; 0xb8000001
    34d0:	69746375 	ldmdbvs	r4!, {r0, r2, r4, r5, r6, r8, r9, sp, lr}^
    34d4:	0a0d6e6f 	beq	35ee98 <heap_size+0x33ee98>
    34d8:	00000000 	andeq	r0, r0, r0
    34dc:	6c6c6548 	cfstr64vs	mvdx6, [ip], #-288	; 0xfffffee0
    34e0:	6f77206f 	svcvs	0x0077206f
    34e4:	21646c72 	smccs	18114	; 0x46c2
    34e8:	646e6120 	strbtvs	r6, [lr], #-288	; 0xfffffee0
    34ec:	65796220 	ldrbvs	r6, [r9, #-544]!	; 0xfffffde0
    34f0:	000a2121 	andeq	r2, sl, r1, lsr #2
    34f4:	20646e61 	rsbcs	r6, r4, r1, ror #28
    34f8:	21657962 	cmncs	r5, r2, ror #18
    34fc:	00000a21 	andeq	r0, r0, r1, lsr #20
    3500:	21657962 	cmncs	r5, r2, ror #18
    3504:	00000a21 	andeq	r0, r0, r1, lsr #20
    3508:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    350c:	0000004e 	andeq	r0, r0, lr, asr #32
	...
    351c:	4f445453 	svcmi	0x00445453
    3520:	00005455 	andeq	r5, r0, r5, asr r4
	...
    3530:	45445453 	strbmi	r5, [r4, #-1107]	; 0xfffffbad
    3534:	00005252 	andeq	r5, r0, r2, asr r2
	...

00003544 <__sf_fake_stderr>:
	...

00003564 <__sf_fake_stdin>:
	...

00003584 <__sf_fake_stdout>:
	...

000035a4 <_global_impure_ptr>:
    35a4:	0000316c 	andeq	r3, r0, ip, ror #2
    35a8:	2b302d23 	blcs	c0ea3c <heap_size+0xbeea3c>
    35ac:	6c680020 	stclvs	0, cr0, [r8], #-128	; 0xffffff80
    35b0:	6665004c 	strbtvs	r0, [r5], -ip, asr #32
    35b4:	47464567 	strbmi	r4, [r6, -r7, ror #10]
    35b8:	32313000 	eorscc	r3, r1, #0
    35bc:	36353433 			; <UNDEFINED> instruction: 0x36353433
    35c0:	41393837 	teqmi	r9, r7, lsr r8
    35c4:	45444342 	strbmi	r4, [r4, #-834]	; 0xfffffcbe
    35c8:	31300046 	teqcc	r0, r6, asr #32
    35cc:	35343332 	ldrcc	r3, [r4, #-818]!	; 0xfffffcce
    35d0:	39383736 	ldmdbcc	r8!, {r1, r2, r4, r5, r8, r9, sl, ip, sp}
    35d4:	64636261 	strbtvs	r6, [r3], #-609	; 0xfffffd9f
    35d8:	00006665 	andeq	r6, r0, r5, ror #12
    35dc:	000035fa 	strdeq	r3, [r0], -sl
    35e0:	000035fd 	strdeq	r3, [r0], -sp
    35e4:	00003600 	andeq	r3, r0, r0, lsl #12
    35e8:	61462d41 	cmpvs	r6, r1, asr #26
    35ec:	3938662d 	ldmdbcc	r8!, {r0, r2, r3, r5, r9, sl, sp, lr}
    35f0:	33323130 	teqcc	r2, #48, 2
    35f4:	37363534 			; <UNDEFINED> instruction: 0x37363534
    35f8:	2d2b005d 	stccs	0, cr0, [fp, #-372]!	; 0xfffffe8c
    35fc:	00303000 	eorseq	r3, r0, r0
    3600:	43005878 	movwmi	r5, #2168	; 0x878
    3604:	534f5000 	movtpl	r5, #61440	; 0xf000
    3608:	2e005849 	cdpcs	8, 0, cr5, cr0, cr9, {2}
	...

0000360d <_ctype_>:
    360d:	20202000 	eorcs	r2, r0, r0
    3611:	20202020 	eorcs	r2, r0, r0, lsr #32
    3615:	28282020 	stmdacs	r8!, {r5, sp}
    3619:	20282828 	eorcs	r2, r8, r8, lsr #16
    361d:	20202020 	eorcs	r2, r0, r0, lsr #32
    3621:	20202020 	eorcs	r2, r0, r0, lsr #32
    3625:	20202020 	eorcs	r2, r0, r0, lsr #32
    3629:	20202020 	eorcs	r2, r0, r0, lsr #32
    362d:	10108820 	andsne	r8, r0, r0, lsr #16
    3631:	10101010 	andsne	r1, r0, r0, lsl r0
    3635:	10101010 	andsne	r1, r0, r0, lsl r0
    3639:	10101010 	andsne	r1, r0, r0, lsl r0
    363d:	04040410 	streq	r0, [r4], #-1040	; 0xfffffbf0
    3641:	04040404 	streq	r0, [r4], #-1028	; 0xfffffbfc
    3645:	10040404 	andne	r0, r4, r4, lsl #8
    3649:	10101010 	andsne	r1, r0, r0, lsl r0
    364d:	41411010 	cmpmi	r1, r0, lsl r0
    3651:	41414141 	cmpmi	r1, r1, asr #2
    3655:	01010101 	tsteq	r1, r1, lsl #2
    3659:	01010101 	tsteq	r1, r1, lsl #2
    365d:	01010101 	tsteq	r1, r1, lsl #2
    3661:	01010101 	tsteq	r1, r1, lsl #2
    3665:	01010101 	tsteq	r1, r1, lsl #2
    3669:	10101010 	andsne	r1, r0, r0, lsl r0
    366d:	42421010 	submi	r1, r2, #16
    3671:	42424242 	submi	r4, r2, #536870916	; 0x20000004
    3675:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    3679:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    367d:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    3681:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    3685:	02020202 	andeq	r0, r2, #536870912	; 0x20000000
    3689:	10101010 	andsne	r1, r0, r0, lsl r0
    368d:	00000020 	andeq	r0, r0, r0, lsr #32
	...

Disassembly of section .eh_frame:

00003710 <__FRAME_END__>:
    3710:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.exidx:

00003714 <.ARM.exidx>:
    3714:	7fffc9bc 	svcvc	0x00ffc9bc
    3718:	00000001 	andeq	r0, r0, r1

Disassembly of section .bss:

0000371c <completed.9930>:
    371c:	00000000 	andeq	r0, r0, r0

00003720 <object.9935>:
	...

00003738 <__malloc_free_list>:
    3738:	00000000 	andeq	r0, r0, r0

0000373c <__malloc_sbrk_start>:
    373c:	00000000 	andeq	r0, r0, r0

00003740 <_PathLocale>:
    3740:	00000000 	andeq	r0, r0, r0

00003744 <heap_end.5377>:
    3744:	00000000 	andeq	r0, r0, r0

00003748 <buffer>:
    3748:	00000000 	andeq	r0, r0, r0

0000374c <sNickname>:
	...

0000379c <sUsername>:
	...

000037ec <errno>:
    37ec:	00000000 	andeq	r0, r0, r0

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
       0:	00000c12 	andeq	r0, r0, r2, lsl ip
       4:	00000004 	andeq	r0, r0, r4
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	00001e9a 	muleq	r0, sl, lr
      10:	001e390c 	andseq	r3, lr, ip, lsl #18
      14:	00904500 	addseq	r4, r0, r0, lsl #10
      18:	00014400 	andeq	r4, r1, r0, lsl #8
      1c:	00032c00 	andeq	r2, r3, r0, lsl #24
	...
      28:	06010200 	streq	r0, [r1], -r0, lsl #4
      2c:	000079dc 	ldrdeq	r7, [r0], -ip
      30:	19080102 	stmdbne	r8, {r1, r8}
      34:	02000012 	andeq	r0, r0, #18
      38:	386b0502 	stmdacc	fp!, {r1, r8, sl}^
      3c:	02020000 	andeq	r0, r2, #0
      40:	008fd707 	addeq	sp, pc, r7, lsl #14
      44:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
      48:	00006e1c 	andeq	r6, r0, ip, lsl lr
      4c:	00292703 	eoreq	r2, r9, r3, lsl #14
      50:	574f0200 	strbpl	r0, [pc, -r0, lsl #4]
      54:	02000000 	andeq	r0, r0, #0
      58:	62bb0704 	adcsvs	r0, fp, #4, 14	; 0x100000
      5c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
      60:	0085cf05 	addeq	ip, r5, r5, lsl #30
      64:	07080200 	streq	r0, [r8, -r0, lsl #4]
      68:	00000656 	andeq	r0, r0, r6, asr r6
      6c:	69050404 	stmdbvs	r5, {r2, sl}
      70:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
      74:	6d360704 	ldcvs	7, cr0, [r6, #-16]!
      78:	30030000 	andcc	r0, r3, r0
      7c:	03000008 	movweq	r0, #8
      80:	00008528 	andeq	r8, r0, r8, lsr #10
      84:	08140500 	ldmdaeq	r4, {r8, sl}
      88:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>
      8c:	00009c00 	andeq	r9, r0, r0, lsl #24
      90:	84ce0600 	strbhi	r0, [lr], #1536	; 0x600
      94:	009c0000 	addseq	r0, ip, r0
      98:	00000000 	andeq	r0, r0, r0
      9c:	75030407 	strvc	r0, [r3, #-1031]	; 0xfffffbf9
      a0:	0400005c 	streq	r0, [r0], #-92	; 0xffffffa4
      a4:	00006c0c 	andeq	r6, r0, ip, lsl #24
      a8:	38750300 	ldmdacc	r5!, {r8, r9}^
      ac:	2c050000 	stccs	0, cr0, [r5], {-0}
      b0:	00000045 	andeq	r0, r0, r5, asr #32
      b4:	00439903 	subeq	r9, r3, r3, lsl #18
      b8:	45720500 	ldrbmi	r0, [r2, #-1280]!	; 0xfffffb00
      bc:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
      c0:	00004409 	andeq	r4, r0, r9, lsl #8
      c4:	73016506 	movwvc	r6, #5382	; 0x1506
      c8:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
      cc:	eaa60504 	b	fe9814e4 <__stack+0xf69814ec>
      d0:	0a000000 	beq	d8 <_mainCRTStartup+0x8>
      d4:	00005b4a 	andeq	r5, r0, sl, asr #22
      d8:	00bfa805 	adcseq	sl, pc, r5, lsl #16
      dc:	110a0000 	mrsne	r0, (UNDEF: 10)
      e0:	0500003e 	streq	r0, [r0, #-62]	; 0xffffffc2
      e4:	0000eaa9 	andeq	lr, r0, r9, lsr #21
      e8:	300b0000 	andcc	r0, fp, r0
      ec:	fa000000 	blx	f4 <_mainCRTStartup+0x24>
      f0:	0c000000 	stceq	0, cr0, [r0], {-0}
      f4:	00000073 	andeq	r0, r0, r3, ror r0
      f8:	080d0003 	stmdaeq	sp, {r0, r1}
      fc:	011ba305 	tsteq	fp, r5, lsl #6
     100:	e80e0000 	stmda	lr, {}	; <UNPREDICTABLE>
     104:	05000039 	streq	r0, [r0, #-57]	; 0xffffffc7
     108:	00006ca5 	andeq	r6, r0, r5, lsr #25
     10c:	090e0000 	stmdbeq	lr, {}	; <UNPREDICTABLE>
     110:	05000077 	streq	r0, [r0, #-119]	; 0xffffff89
     114:	0000cbaa 	andeq	ip, r0, sl, lsr #23
     118:	03000400 	movweq	r0, #1024	; 0x400
     11c:	0000745b 	andeq	r7, r0, fp, asr r4
     120:	00faab05 	rscseq	sl, sl, r5, lsl #22
     124:	9e030000 	cdpls	0, 0, cr0, cr3, cr0, {0}
     128:	05000085 	streq	r0, [r0, #-133]	; 0xffffff7b
     12c:	00009eaf 	andeq	r9, r0, pc, lsr #29
     130:	4f630300 	svcmi	0x00630300
     134:	16070000 	strne	r0, [r7], -r0
     138:	00000057 	andeq	r0, r0, r7, asr r0
     13c:	006a6905 	rsbeq	r6, sl, r5, lsl #18
     140:	2f071800 	svccs	0x00071800
     144:	0000018f 	andeq	r0, r0, pc, lsl #3
     148:	00613d0e 	rsbeq	r3, r1, lr, lsl #26
     14c:	8f310700 	svchi	0x00310700
     150:	00000001 	andeq	r0, r0, r1
     154:	006b5f0f 	rsbeq	r5, fp, pc, lsl #30
     158:	006c3207 	rsbeq	r3, ip, r7, lsl #4
     15c:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
     160:	000062ef 	andeq	r6, r0, pc, ror #5
     164:	006c3207 	rsbeq	r3, ip, r7, lsl #4
     168:	0e080000 	cdpeq	0, 0, cr0, cr8, cr0, {0}
     16c:	00008e10 	andeq	r8, r0, r0, lsl lr
     170:	006c3207 	rsbeq	r3, ip, r7, lsl #4
     174:	0e0c0000 	cdpeq	0, 0, cr0, cr12, cr0, {0}
     178:	00002932 	andeq	r2, r0, r2, lsr r9
     17c:	006c3207 	rsbeq	r3, ip, r7, lsl #4
     180:	0f100000 	svceq	0x00100000
     184:	0700785f 	smlsdeq	r0, pc, r8, r7	; <UNPREDICTABLE>
     188:	00019533 	andeq	r9, r1, r3, lsr r5
     18c:	10001400 	andne	r1, r0, r0, lsl #8
     190:	00013c04 	andeq	r3, r1, r4, lsl #24
     194:	01310b00 	teqeq	r1, r0, lsl #22
     198:	01a50000 			; <UNDEFINED> instruction: 0x01a50000
     19c:	730c0000 	movwvc	r0, #49152	; 0xc000
     1a0:	00000000 	andeq	r0, r0, r0
     1a4:	1e870500 	cdpne	5, 8, cr0, cr7, cr0, {0}
     1a8:	07240000 	streq	r0, [r4, -r0]!
     1ac:	00021e37 	andeq	r1, r2, r7, lsr lr
     1b0:	48fd0e00 	ldmmi	sp!, {r9, sl, fp}^
     1b4:	39070000 	stmdbcc	r7, {}	; <UNPREDICTABLE>
     1b8:	0000006c 	andeq	r0, r0, ip, rrx
     1bc:	5f8d0e00 	svcpl	0x008d0e00
     1c0:	3a070000 	bcc	1c01c8 <heap_size+0x1a01c8>
     1c4:	0000006c 	andeq	r0, r0, ip, rrx
     1c8:	3e760e04 	cdpcc	14, 7, cr0, cr6, cr4, {0}
     1cc:	3b070000 	blcc	1c01d4 <heap_size+0x1a01d4>
     1d0:	0000006c 	andeq	r0, r0, ip, rrx
     1d4:	40c20e08 	sbcmi	r0, r2, r8, lsl #28
     1d8:	3c070000 	stccc	0, cr0, [r7], {-0}
     1dc:	0000006c 	andeq	r0, r0, ip, rrx
     1e0:	08040e0c 	stmdaeq	r4, {r2, r3, r9, sl, fp}
     1e4:	3d070000 	stccc	0, cr0, [r7, #-0]
     1e8:	0000006c 	andeq	r0, r0, ip, rrx
     1ec:	30070e10 	andcc	r0, r7, r0, lsl lr
     1f0:	3e070000 	cdpcc	0, 0, cr0, cr7, cr0, {0}
     1f4:	0000006c 	andeq	r0, r0, ip, rrx
     1f8:	25890e14 	strcs	r0, [r9, #3604]	; 0xe14
     1fc:	3f070000 	svccc	0x00070000
     200:	0000006c 	andeq	r0, r0, ip, rrx
     204:	20610e18 	rsbcs	r0, r1, r8, lsl lr
     208:	40070000 	andmi	r0, r7, r0
     20c:	0000006c 	andeq	r0, r0, ip, rrx
     210:	25b00e1c 	ldrcs	r0, [r0, #3612]!	; 0xe1c
     214:	41070000 	mrsmi	r0, (UNDEF: 7)
     218:	0000006c 	andeq	r0, r0, ip, rrx
     21c:	d4110020 	ldrle	r0, [r1], #-32	; 0xffffffe0
     220:	08000049 	stmdaeq	r0, {r0, r3, r6}
     224:	5e4a0701 	cdppl	7, 4, cr0, cr10, cr1, {0}
     228:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
     22c:	00004193 	muleq	r0, r3, r1
     230:	025e4b07 	subseq	r4, lr, #7168	; 0x1c00
     234:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     238:	000024d4 	ldrdeq	r2, [r0], -r4
     23c:	025e4c07 	subseq	r4, lr, #1792	; 0x700
     240:	12800000 	addne	r0, r0, #0
     244:	0000081e 	andeq	r0, r0, lr, lsl r8
     248:	01314e07 	teqeq	r1, r7, lsl #28
     24c:	01000000 	mrseq	r0, (UNDEF: 0)
     250:	00778812 	rsbseq	r8, r7, r2, lsl r8
     254:	31510700 	cmpcc	r1, r0, lsl #14
     258:	04000001 	streq	r0, [r0], #-1
     25c:	9c0b0001 	stcls	0, cr0, [fp], {1}
     260:	6e000000 	cdpvs	0, 0, cr0, cr0, cr0, {0}
     264:	0c000002 	stceq	0, cr0, [r0], {2}
     268:	00000073 	andeq	r0, r0, r3, ror r0
     26c:	7c05001f 	stcvc	0, cr0, [r5], {31}
     270:	8c00000f 	stchi	0, cr0, [r0], {15}
     274:	02ab5507 	adceq	r5, fp, #29360128	; 0x1c00000
     278:	3d0e0000 	stccc	0, cr0, [lr, #-0]
     27c:	07000061 	streq	r0, [r0, -r1, rrx]
     280:	0002ab56 	andeq	sl, r2, r6, asr fp
     284:	790e0000 	stmdbvc	lr, {}	; <UNPREDICTABLE>
     288:	07000048 	streq	r0, [r0, -r8, asr #32]
     28c:	00006c57 	andeq	r6, r0, r7, asr ip
     290:	dd0e0400 	cfstrsle	mvf0, [lr, #-0]
     294:	07000073 	smlsdxeq	r0, r3, r0, r0
     298:	0002b158 	andeq	fp, r2, r8, asr r1
     29c:	000e0800 	andeq	r0, lr, r0, lsl #16
     2a0:	07000000 	streq	r0, [r0, -r0]
     2a4:	0002c859 	andeq	ip, r2, r9, asr r8
     2a8:	10008800 	andne	r8, r0, r0, lsl #16
     2ac:	00026e04 	andeq	r6, r2, r4, lsl #28
     2b0:	02c10b00 	sbceq	r0, r1, #0, 22
     2b4:	02c10000 	sbceq	r0, r1, #0
     2b8:	730c0000 	movwvc	r0, #49152	; 0xc000
     2bc:	1f000000 	svcne	0x00000000
     2c0:	c7041000 	strgt	r1, [r4, -r0]
     2c4:	13000002 	movwne	r0, #2
     2c8:	021e0410 	andseq	r0, lr, #16, 8	; 0x10000000
     2cc:	e3050000 	movw	r0, #20480	; 0x5000
     2d0:	08000058 	stmdaeq	r0, {r3, r4, r6}
     2d4:	02f37507 	rscseq	r7, r3, #29360128	; 0x1c00000
     2d8:	8c0e0000 	stchi	0, cr0, [lr], {-0}
     2dc:	0700004a 	streq	r0, [r0, -sl, asr #32]
     2e0:	0002f376 	andeq	pc, r2, r6, ror r3	; <UNPREDICTABLE>
     2e4:	ca0e0000 	bgt	3802ec <heap_size+0x3602ec>
     2e8:	0700002a 	streq	r0, [r0, -sl, lsr #32]
     2ec:	00006c77 	andeq	r6, r0, r7, ror ip
     2f0:	10000400 	andne	r0, r0, r0, lsl #8
     2f4:	00003004 	andeq	r3, r0, r4
     2f8:	10d20500 	sbcsne	r0, r2, r0, lsl #10
     2fc:	07200000 	streq	r0, [r0, -r0]!
     300:	00036399 	muleq	r3, r9, r3
     304:	705f0f00 	subsvc	r0, pc, r0, lsl #30
     308:	f39a0700 	vabdl.u16	q0, d10, d0
     30c:	00000002 	andeq	r0, r0, r2
     310:	00725f0f 	rsbseq	r5, r2, pc, lsl #30
     314:	006c9b07 	rsbeq	r9, ip, r7, lsl #22
     318:	0f040000 	svceq	0x00040000
     31c:	0700775f 	smlsdeq	r0, pc, r7, r7	; <UNPREDICTABLE>
     320:	00006c9c 	muleq	r0, ip, ip
     324:	150e0800 	strne	r0, [lr, #-2048]	; 0xfffff800
     328:	0700000a 	streq	r0, [r0, -sl]
     32c:	0000379d 	muleq	r0, sp, r7
     330:	fa0e0c00 	blx	383338 <heap_size+0x363338>
     334:	07000072 	smlsdxeq	r0, r2, r0, r0
     338:	0000379e 	muleq	r0, lr, r7
     33c:	5f0f0e00 	svcpl	0x000f0e00
     340:	07006662 	streq	r6, [r0, -r2, ror #12]
     344:	0002ce9f 	muleq	r2, pc, lr	; <UNPREDICTABLE>
     348:	0e0e1000 	cdpeq	0, 0, cr1, cr14, cr0, {0}
     34c:	07000013 	smladeq	r0, r3, r0, r0
     350:	00006ca0 	andeq	r6, r0, r0, lsr #25
     354:	e70e1800 	str	r1, [lr, -r0, lsl #16]
     358:	07000017 	smladeq	r0, r7, r0, r0
     35c:	000494a2 	andeq	r9, r4, r2, lsr #9
     360:	14001c00 	strne	r1, [r0], #-3072	; 0xfffff400
     364:	000002f9 	strdeq	r0, [r0], -r9
     368:	006aaf15 	rsbeq	sl, sl, r5, lsl pc
     36c:	74076000 	strvc	r6, [r7], #-0
     370:	00049401 	andeq	r9, r4, r1, lsl #8
     374:	405c1600 	subsmi	r1, ip, r0, lsl #12
     378:	78070000 	stmdavc	r7, {}	; <UNPREDICTABLE>
     37c:	00006c01 	andeq	r6, r0, r1, lsl #24
     380:	29160000 	ldmdbcs	r6, {}	; <UNPREDICTABLE>
     384:	0700002a 	streq	r0, [r0, -sl, lsr #32]
     388:	06d3017d 			; <UNDEFINED> instruction: 0x06d3017d
     38c:	16040000 	strne	r0, [r4], -r0
     390:	000085b8 			; <UNDEFINED> instruction: 0x000085b8
     394:	d3017d07 	movwle	r7, #7431	; 0x1d07
     398:	08000006 	stmdaeq	r0, {r1, r2}
     39c:	0082fe16 	addeq	pc, r2, r6, lsl lr	; <UNPREDICTABLE>
     3a0:	017d0700 	cmneq	sp, r0, lsl #14
     3a4:	000006d3 	ldrdeq	r0, [r0], -r3
     3a8:	0849160c 	stmdaeq	r9, {r2, r3, r9, sl, ip}^
     3ac:	7f070000 	svcvc	0x00070000
     3b0:	00006c01 	andeq	r6, r0, r1, lsl #24
     3b4:	e8161000 	ldmda	r6, {ip}
     3b8:	07000060 	streq	r0, [r0, -r0, rrx]
     3bc:	05e70181 	strbeq	r0, [r7, #385]!	; 0x181
     3c0:	16140000 	ldrne	r0, [r4], -r0
     3c4:	00008461 	andeq	r8, r0, r1, ror #8
     3c8:	6c018307 	stcvs	3, cr8, [r1], {7}
     3cc:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     3d0:	0082dc16 	addeq	sp, r2, r6, lsl ip
     3d4:	01850700 	orreq	r0, r5, r0, lsl #14
     3d8:	0000006c 	andeq	r0, r0, ip, rrx
     3dc:	895b161c 	ldmdbhi	fp, {r2, r3, r4, r9, sl, ip}^
     3e0:	86070000 	strhi	r0, [r7], -r0
     3e4:	00082501 	andeq	r2, r8, r1, lsl #10
     3e8:	5f172000 	svcpl	0x00172000
     3ec:	0700706d 	streq	r7, [r0, -sp, rrx]
     3f0:	082b0188 	stmdaeq	fp!, {r3, r7, r8}
     3f4:	16240000 	strtne	r0, [r4], -r0
     3f8:	00007175 	andeq	r7, r0, r5, ror r1
     3fc:	3c018a07 			; <UNDEFINED> instruction: 0x3c018a07
     400:	28000008 	stmdacs	r0, {r3}
     404:	007fd216 	rsbseq	sp, pc, r6, lsl r2	; <UNPREDICTABLE>
     408:	018c0700 	orreq	r0, ip, r0, lsl #14
     40c:	0000006c 	andeq	r0, r0, ip, rrx
     410:	865d162c 	ldrbhi	r1, [sp], -ip, lsr #12
     414:	8f070000 	svchi	0x00070000
     418:	00006c01 	andeq	r6, r0, r1, lsl #24
     41c:	b7163000 	ldrlt	r3, [r6, -r0]
     420:	0700003b 	smladxeq	r0, fp, r0, r0
     424:	05e70190 	strbeq	r0, [r7, #400]!	; 0x190
     428:	16340000 	ldrtne	r0, [r4], -r0
     42c:	00008c35 	andeq	r8, r0, r5, lsr ip
     430:	42019207 	andmi	r9, r1, #1879048192	; 0x70000000
     434:	38000008 	stmdacc	r0, {r3}
     438:	00396216 	eorseq	r6, r9, r6, lsl r2
     43c:	01930700 	orrseq	r0, r3, r0, lsl #14
     440:	00000848 	andeq	r0, r0, r8, asr #16
     444:	5b0e163c 	blpl	385d3c <heap_size+0x365d3c>
     448:	94070000 	strls	r0, [r7], #-0
     44c:	0005e701 	andeq	lr, r5, r1, lsl #14
     450:	08164000 	ldmdaeq	r6, {lr}
     454:	0700000b 	streq	r0, [r0, -fp]
     458:	08590197 	ldmdaeq	r9, {r0, r1, r2, r4, r7, r8}^
     45c:	16440000 	strbne	r0, [r4], -r0
     460:	0000712c 	andeq	r7, r0, ip, lsr #2
     464:	98019f07 	stmdals	r1, {r0, r1, r2, r8, r9, sl, fp, ip, pc}
     468:	48000006 	stmdami	r0, {r1, r2}
     46c:	001bf616 	andseq	pc, fp, r6, lsl r6	; <UNPREDICTABLE>
     470:	01a00700 	lsleq	r0, r0, #14
     474:	000006d3 	ldrdeq	r0, [r0], -r3
     478:	29371654 	ldmdbcs	r7!, {r2, r4, r6, r9, sl, ip}
     47c:	a1070000 	mrsge	r0, (UNDEF: 7)
     480:	00086501 	andeq	r6, r8, r1, lsl #10
     484:	00165800 	andseq	r5, r6, r0, lsl #16
     488:	07000045 	streq	r0, [r0, -r5, asr #32]
     48c:	05e701a2 	strbeq	r0, [r7, #418]!	; 0x1a2
     490:	005c0000 	subseq	r0, ip, r0
     494:	03680410 	cmneq	r8, #16, 8	; 0x10000000
     498:	94140000 	ldrls	r0, [r4], #-0
     49c:	05000004 	streq	r0, [r0, #-4]
     4a0:	000073c8 	andeq	r7, r0, r8, asr #7
     4a4:	c9b50768 	ldmibgt	r5!, {r3, r5, r6, r8, r9, sl}
     4a8:	0f000005 	svceq	0x00000005
     4ac:	0700705f 	smlsdeq	r0, pc, r0, r7	; <UNPREDICTABLE>
     4b0:	0002f3b6 			; <UNDEFINED> instruction: 0x0002f3b6
     4b4:	5f0f0000 	svcpl	0x000f0000
     4b8:	b7070072 	smlsdxlt	r7, r2, r0, r0
     4bc:	0000006c 	andeq	r0, r0, ip, rrx
     4c0:	775f0f04 	ldrbvc	r0, [pc, -r4, lsl #30]
     4c4:	6cb80700 	ldcvs	7, cr0, [r8]
     4c8:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     4cc:	000a150e 	andeq	r1, sl, lr, lsl #10
     4d0:	37b90700 	ldrcc	r0, [r9, r0, lsl #14]!
     4d4:	0c000000 	stceq	0, cr0, [r0], {-0}
     4d8:	0072fa0e 	rsbseq	pc, r2, lr, lsl #20
     4dc:	37ba0700 	ldrcc	r0, [sl, r0, lsl #14]!
     4e0:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     4e4:	66625f0f 	strbtvs	r5, [r2], -pc, lsl #30
     4e8:	cebb0700 	cdpgt	7, 11, cr0, cr11, cr0, {0}
     4ec:	10000002 	andne	r0, r0, r2
     4f0:	00130e0e 	andseq	r0, r3, lr, lsl #28
     4f4:	6cbc0700 	ldcvs	7, cr0, [ip]
     4f8:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     4fc:	0017e70e 	andseq	lr, r7, lr, lsl #14
     500:	94bf0700 	ldrtls	r0, [pc], #1792	; 508 <Zynq7000_UART_GETCHAR+0x10>
     504:	1c000004 	stcne	0, cr0, [r0], {4}
     508:	00451f0e 	subeq	r1, r5, lr, lsl #30
     50c:	9cc30700 	stclls	7, cr0, [r3], {0}
     510:	20000000 	andcs	r0, r0, r0
     514:	0092ae0e 	addseq	sl, r2, lr, lsl #28
     518:	f9c50700 			; <UNDEFINED> instruction: 0xf9c50700
     51c:	24000005 	strcs	r0, [r0], #-5
     520:	002bcf0e 	eoreq	ip, fp, lr, lsl #30
     524:	28c70700 	stmiacs	r7, {r8, r9, sl}^
     528:	28000006 	stmdacs	r0, {r1, r2}
     52c:	00795b0e 	rsbseq	r5, r9, lr, lsl #22
     530:	4cca0700 	stclmi	7, cr0, [sl], {0}
     534:	2c000006 	stccs	0, cr0, [r0], {6}
     538:	0067e20e 	rsbeq	lr, r7, lr, lsl #4
     53c:	66cb0700 	strbvs	r0, [fp], r0, lsl #14
     540:	30000006 	andcc	r0, r0, r6
     544:	62755f0f 	rsbsvs	r5, r5, #15, 30	; 0x3c
     548:	cece0700 	cdpgt	7, 12, cr0, cr14, cr0, {0}
     54c:	34000002 	strcc	r0, [r0], #-2
     550:	70755f0f 	rsbsvc	r5, r5, pc, lsl #30
     554:	f3cf0700 	vabdl.u8	q8, d15, d0
     558:	3c000002 	stccc	0, cr0, [r0], {2}
     55c:	72755f0f 	rsbsvc	r5, r5, #15, 30	; 0x3c
     560:	6cd00700 	ldclvs	7, cr0, [r0], {0}
     564:	40000000 	andmi	r0, r0, r0
     568:	0070c40e 	rsbseq	ip, r0, lr, lsl #8
     56c:	6cd30700 	ldclvs	7, cr0, [r3], {0}
     570:	44000006 	strmi	r0, [r0], #-6
     574:	000c960e 	andeq	r9, ip, lr, lsl #12
     578:	7cd40700 	ldclvc	7, cr0, [r4], {0}
     57c:	47000006 	strmi	r0, [r0, -r6]
     580:	626c5f0f 	rsbvs	r5, ip, #15, 30	; 0x3c
     584:	ced70700 	cdpgt	7, 13, cr0, cr7, cr0, {0}
     588:	48000002 	stmdami	r0, {r1}
     58c:	0070880e 	rsbseq	r8, r0, lr, lsl #16
     590:	6cda0700 	ldclvs	7, cr0, [sl], {0}
     594:	50000000 	andpl	r0, r0, r0
     598:	0057e10e 	subseq	lr, r7, lr, lsl #2
     59c:	a9db0700 	ldmibge	fp, {r8, r9, sl}^
     5a0:	54000000 	strpl	r0, [r0], #-0
     5a4:	000c900e 	andeq	r9, ip, lr
     5a8:	26e20700 	strbtcs	r0, [r2], r0, lsl #14
     5ac:	58000001 	stmdapl	r0, {r0}
     5b0:	004eb20e 	subeq	fp, lr, lr, lsl #4
     5b4:	1be40700 	blne	ff9021bc <__stack+0xf79021c4>
     5b8:	5c000001 	stcpl	0, cr0, [r0], {1}
     5bc:	0088290e 	addeq	r2, r8, lr, lsl #18
     5c0:	6ce50700 	stclvs	7, cr0, [r5]
     5c4:	64000000 	strvs	r0, [r0], #-0
     5c8:	006c1800 	rsbeq	r1, ip, r0, lsl #16
     5cc:	05e70000 	strbeq	r0, [r7, #0]!
     5d0:	94190000 	ldrls	r0, [r9], #-0
     5d4:	19000004 	stmdbne	r0, {r2}
     5d8:	0000009c 	muleq	r0, ip, r0
     5dc:	0005e719 	andeq	lr, r5, r9, lsl r7
     5e0:	006c1900 	rsbeq	r1, ip, r0, lsl #18
     5e4:	10000000 	andne	r0, r0, r0
     5e8:	0005ed04 	andeq	lr, r5, r4, lsl #26
     5ec:	08010200 	stmdaeq	r1, {r9}
     5f0:	000079e3 	andeq	r7, r0, r3, ror #19
     5f4:	0005ed14 	andeq	lr, r5, r4, lsl sp
     5f8:	c9041000 	stmdbgt	r4, {ip}
     5fc:	18000005 	stmdane	r0, {r0, r2}
     600:	0000006c 	andeq	r0, r0, ip, rrx
     604:	0000061d 	andeq	r0, r0, sp, lsl r6
     608:	00049419 	andeq	r9, r4, r9, lsl r4
     60c:	009c1900 	addseq	r1, ip, r0, lsl #18
     610:	1d190000 	ldcne	0, cr0, [r9, #-0]
     614:	19000006 	stmdbne	r0, {r1, r2}
     618:	0000006c 	andeq	r0, r0, ip, rrx
     61c:	f4041000 	vst4.8	{d1-d4}, [r4], r0
     620:	14000005 	strne	r0, [r0], #-5
     624:	0000061d 	andeq	r0, r0, sp, lsl r6
     628:	05ff0410 	ldrbeq	r0, [pc, #1040]!	; a40 <__sfp+0x1c>
     62c:	b4180000 	ldrlt	r0, [r8], #-0
     630:	4c000000 	stcmi	0, cr0, [r0], {-0}
     634:	19000006 	stmdbne	r0, {r1, r2}
     638:	00000494 	muleq	r0, r4, r4
     63c:	00009c19 	andeq	r9, r0, r9, lsl ip
     640:	00b41900 	adcseq	r1, r4, r0, lsl #18
     644:	6c190000 	ldcvs	0, cr0, [r9], {-0}
     648:	00000000 	andeq	r0, r0, r0
     64c:	062e0410 			; <UNDEFINED> instruction: 0x062e0410
     650:	6c180000 	ldcvs	0, cr0, [r8], {-0}
     654:	66000000 	strvs	r0, [r0], -r0
     658:	19000006 	stmdbne	r0, {r1, r2}
     65c:	00000494 	muleq	r0, r4, r4
     660:	00009c19 	andeq	r9, r0, r9, lsl ip
     664:	04100000 	ldreq	r0, [r0], #-0
     668:	00000652 	andeq	r0, r0, r2, asr r6
     66c:	0000300b 	andeq	r3, r0, fp
     670:	00067c00 	andeq	r7, r6, r0, lsl #24
     674:	00730c00 	rsbseq	r0, r3, r0, lsl #24
     678:	00020000 	andeq	r0, r2, r0
     67c:	0000300b 	andeq	r3, r0, fp
     680:	00068c00 	andeq	r8, r6, r0, lsl #24
     684:	00730c00 	rsbseq	r0, r3, r0, lsl #24
     688:	00000000 	andeq	r0, r0, r0
     68c:	008d8e08 	addeq	r8, sp, r8, lsl #28
     690:	011f0700 	tsteq	pc, r0, lsl #14
     694:	0000049f 	muleq	r0, pc, r4	; <UNPREDICTABLE>
     698:	00683915 	rsbeq	r3, r8, r5, lsl r9
     69c:	23070c00 	movwcs	r0, #31744	; 0x7c00
     6a0:	0006cd01 	andeq	ip, r6, r1, lsl #26
     6a4:	613d1600 	teqvs	sp, r0, lsl #12
     6a8:	25070000 	strcs	r0, [r7, #-0]
     6ac:	0006cd01 	andeq	ip, r6, r1, lsl #26
     6b0:	e1160000 	tst	r6, r0
     6b4:	0700003f 	smladxeq	r0, pc, r0, r0	; <UNPREDICTABLE>
     6b8:	006c0126 	rsbeq	r0, ip, r6, lsr #2
     6bc:	16040000 	strne	r0, [r4], -r0
     6c0:	000060e2 	andeq	r6, r0, r2, ror #1
     6c4:	d3012707 	movwle	r2, #5895	; 0x1707
     6c8:	08000006 	stmdaeq	r0, {r1, r2}
     6cc:	98041000 	stmdals	r4, {ip}
     6d0:	10000006 	andne	r0, r0, r6
     6d4:	00068c04 	andeq	r8, r6, r4, lsl #24
     6d8:	934c1500 	movtls	r1, #50432	; 0xc500
     6dc:	07180000 	ldreq	r0, [r8, -r0]
     6e0:	071b013f 			; <UNDEFINED> instruction: 0x071b013f
     6e4:	a6160000 	ldrge	r0, [r6], -r0
     6e8:	07000053 	smlsdeq	r0, r3, r0, r0
     6ec:	071b0140 	ldreq	r0, [fp, -r0, asr #2]
     6f0:	16000000 	strne	r0, [r0], -r0
     6f4:	0000317c 	andeq	r3, r0, ip, ror r1
     6f8:	1b014107 	blne	50b1c <heap_size+0x30b1c>
     6fc:	06000007 	streq	r0, [r0], -r7
     700:	0010cd16 	andseq	ip, r0, r6, lsl sp
     704:	01420700 	cmpeq	r2, r0, lsl #14
     708:	0000003e 	andeq	r0, r0, lr, lsr r0
     70c:	6138160c 	teqvs	r8, ip, lsl #12
     710:	45070000 	strmi	r0, [r7, #-0]
     714:	00006501 	andeq	r6, r0, r1, lsl #10
     718:	0b001000 	bleq	4720 <__bss_end__+0xf30>
     71c:	0000003e 	andeq	r0, r0, lr, lsr r0
     720:	0000072b 	andeq	r0, r0, fp, lsr #14
     724:	0000730c 	andeq	r7, r0, ip, lsl #6
     728:	15000200 	strne	r0, [r0, #-512]	; 0xfffffe00
     72c:	00007825 	andeq	r7, r0, r5, lsr #16
     730:	01580710 	cmpeq	r8, r0, lsl r7
     734:	0000076d 	andeq	r0, r0, sp, ror #14
     738:	00247416 	eoreq	r7, r4, r6, lsl r4
     73c:	015b0700 	cmpeq	fp, r0, lsl #14
     740:	0000018f 	andeq	r0, r0, pc, lsl #3
     744:	24601600 	strbtcs	r1, [r0], #-1536	; 0xfffffa00
     748:	5c070000 	stcpl	0, cr0, [r7], {-0}
     74c:	00006c01 	andeq	r6, r0, r1, lsl #24
     750:	96160400 	ldrls	r0, [r6], -r0, lsl #8
     754:	0700008f 	streq	r0, [r0, -pc, lsl #1]
     758:	018f015d 	orreq	r0, pc, sp, asr r1	; <UNPREDICTABLE>
     75c:	16080000 	strne	r0, [r8], -r0
     760:	00005674 	andeq	r5, r0, r4, ror r6
     764:	6d015e07 	stcvs	14, cr5, [r1, #-28]	; 0xffffffe4
     768:	0c000007 	stceq	0, cr0, [r0], {7}
     76c:	8f041000 	svchi	0x00041000
     770:	15000001 	strne	r0, [r0, #-1]
     774:	00006aaa 	andeq	r6, r0, sl, lsr #21
     778:	01620750 	cmneq	r2, r0, asr r7
     77c:	00000810 	andeq	r0, r0, r0, lsl r8
     780:	0051da16 	subseq	sp, r1, r6, lsl sl
     784:	01650700 	cmneq	r5, r0, lsl #14
     788:	000005e7 	andeq	r0, r0, r7, ror #11
     78c:	48d71600 	ldmmi	r7, {r9, sl, ip}^
     790:	66070000 	strvs	r0, [r7], -r0
     794:	00011b01 	andeq	r1, r1, r1, lsl #22
     798:	b6160400 	ldrlt	r0, [r6], -r0, lsl #8
     79c:	0700005e 	smlsdeq	r0, lr, r0, r0
     7a0:	011b0167 	tsteq	fp, r7, ror #2
     7a4:	160c0000 	strne	r0, [ip], -r0
     7a8:	00001d04 	andeq	r1, r0, r4, lsl #26
     7ac:	1b016807 	blne	5a7d0 <heap_size+0x3a7d0>
     7b0:	14000001 	strne	r0, [r0], #-1
     7b4:	0058fa16 	subseq	pc, r8, r6, lsl sl	; <UNPREDICTABLE>
     7b8:	01690700 	cmneq	r9, r0, lsl #14
     7bc:	00000810 	andeq	r0, r0, r0, lsl r8
     7c0:	6cc4161c 	stclvs	6, cr1, [r4], {28}
     7c4:	6a070000 	bvs	1c07cc <heap_size+0x1a07cc>
     7c8:	00006c01 	andeq	r6, r0, r1, lsl #24
     7cc:	5b162400 	blpl	5897d4 <heap_size+0x5697d4>
     7d0:	07000032 	smladxeq	r0, r2, r0, r0
     7d4:	011b016b 	tsteq	fp, fp, ror #2
     7d8:	16280000 	strtne	r0, [r8], -r0
     7dc:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
     7e0:	1b016c07 	blne	5b804 <heap_size+0x3b804>
     7e4:	30000001 	andcc	r0, r0, r1
     7e8:	0028fe16 	eoreq	pc, r8, r6, lsl lr	; <UNPREDICTABLE>
     7ec:	016d0700 	cmneq	sp, r0, lsl #14
     7f0:	0000011b 	andeq	r0, r0, fp, lsl r1
     7f4:	4b001638 	blmi	60dc <__bss_end__+0x28ec>
     7f8:	6e070000 	cdpvs	0, 0, cr0, cr7, cr0, {0}
     7fc:	00011b01 	andeq	r1, r1, r1, lsl #22
     800:	e0164000 	ands	r4, r6, r0
     804:	0700005b 	smlsdeq	r0, fp, r0, r0
     808:	011b016f 	tsteq	fp, pc, ror #2
     80c:	00480000 	subeq	r0, r8, r0
     810:	0005ed0b 	andeq	lr, r5, fp, lsl #26
     814:	00082000 	andeq	r2, r8, r0
     818:	00730c00 	rsbseq	r0, r3, r0, lsl #24
     81c:	00070000 	andeq	r0, r7, r0
     820:	0071341a 	rsbseq	r3, r1, sl, lsl r4
     824:	20041000 	andcs	r1, r4, r0
     828:	10000008 	andne	r0, r0, r8
     82c:	00072b04 	andeq	r2, r7, r4, lsl #22
     830:	083c1b00 	ldmdaeq	ip!, {r8, r9, fp, ip}
     834:	94190000 	ldrls	r0, [r9], #-0
     838:	00000004 	andeq	r0, r0, r4
     83c:	08310410 	ldmdaeq	r1!, {r4, sl}
     840:	04100000 	ldreq	r0, [r0], #-0
     844:	000006d9 	ldrdeq	r0, [r0], -r9
     848:	01a50410 			; <UNDEFINED> instruction: 0x01a50410
     84c:	591b0000 	ldmdbpl	fp, {}	; <UNPREDICTABLE>
     850:	19000008 	stmdbne	r0, {r3}
     854:	0000006c 	andeq	r0, r0, ip, rrx
     858:	5f041000 	svcpl	0x00041000
     85c:	10000008 	andne	r0, r0, r8
     860:	00084e04 	andeq	r4, r8, r4, lsl #28
     864:	73041000 	movwvc	r1, #16384	; 0x4000
     868:	1c000007 	stcne	0, cr0, [r0], {7}
     86c:	00002a20 	andeq	r2, r0, r0, lsr #20
     870:	6301ca07 	movwvs	ip, #6663	; 0x1a07
     874:	1c000003 	stcne	0, cr0, [r0], {3}
     878:	000085af 	andeq	r8, r0, pc, lsr #11
     87c:	6301cb07 	movwvs	ip, #6919	; 0x1b07
     880:	1c000003 	stcne	0, cr0, [r0], {3}
     884:	000082f5 	strdeq	r8, [r0], -r5
     888:	6301cc07 	movwvs	ip, #7175	; 0x1c07
     88c:	1c000003 	stcne	0, cr0, [r0], {3}
     890:	00004f91 	muleq	r0, r1, pc	; <UNPREDICTABLE>
     894:	94032e07 	strls	r2, [r3], #-3591	; 0xfffff1f9
     898:	1c000004 	stcne	0, cr0, [r0], {4}
     89c:	000036bf 			; <UNDEFINED> instruction: 0x000036bf
     8a0:	9a032f07 	bls	cc4c4 <heap_size+0xac4c4>
     8a4:	1c000004 	stcne	0, cr0, [r0], {4}
     8a8:	00000f75 	andeq	r0, r0, r5, ror pc
     8ac:	ab034107 	blge	d0cd0 <heap_size+0xb0cd0>
     8b0:	03000002 	movweq	r0, #2
     8b4:	00002929 	andeq	r2, r0, r9, lsr #18
     8b8:	004c3009 	subeq	r3, ip, r9
     8bc:	b31d0000 	tstlt	sp, #0
     8c0:	03000008 	movweq	r0, #8
     8c4:	00000816 	andeq	r0, r0, r6, lsl r8
     8c8:	007a6303 	rsbseq	r6, sl, r3, lsl #6
     8cc:	9b1e0000 	blls	7808d4 <heap_size+0x7608d4>
     8d0:	0a00003d 	beq	9cc <__sinit+0x8>
     8d4:	0008d910 	andeq	sp, r8, r0, lsl r9
     8d8:	e7041000 	str	r1, [r4, -r0]
     8dc:	1e000005 	cdpne	0, 0, cr0, cr0, cr5, {0}
     8e0:	0000561d 	andeq	r5, r0, sp, lsl r6
     8e4:	05e7fc0a 	strbeq	pc, [r7, #3082]!	; 0xc0a	; <UNPREDICTABLE>
     8e8:	8d1e0000 	ldchi	0, cr0, [lr, #-0]
     8ec:	0a000087 	beq	b10 <_fwalk+0x4>
     8f0:	00006cfd 	strdeq	r6, [r0], -sp
     8f4:	593e1e00 	ldmdbpl	lr!, {r9, sl, fp, ip}
     8f8:	fd0a0000 	stc2	0, cr0, [sl, #-0]
     8fc:	0000006c 	andeq	r0, r0, ip, rrx
     900:	0051541e 	subseq	r5, r1, lr, lsl r4
     904:	6cfd0a00 	vpopvs	{s1-s0}
     908:	1e000000 	cdpne	0, 0, cr0, cr0, cr0, {0}
     90c:	00001d72 	andeq	r1, r0, r2, ror sp
     910:	006cff0a 	rsbeq	pc, ip, sl, lsl #30
     914:	230b0000 	movwcs	r0, #45056	; 0xb000
     918:	21000006 	tstcs	r0, r6
     91c:	1f000009 	svcne	0x00000009
     920:	09161400 	ldmdbeq	r6, {sl, ip}
     924:	591e0000 	ldmdbpl	lr, {}	; <UNPREDICTABLE>
     928:	0b00007a 	bleq	b18 <_fwalk+0xc>
     92c:	00092114 	andeq	r2, r9, r4, lsl r1
     930:	84e91e00 	strbthi	r1, [r9], #3584	; 0xe00
     934:	150b0000 	strne	r0, [fp, #-0]
     938:	0000006c 	andeq	r0, r0, ip, rrx
     93c:	0005ed0b 	andeq	lr, r5, fp, lsl #26
     940:	00094c00 	andeq	r4, r9, r0, lsl #24
     944:	00730c00 	rsbseq	r0, r3, r0, lsl #24
     948:	000b0000 	andeq	r0, fp, r0
     94c:	00256d20 	eoreq	r6, r5, r0, lsr #26
     950:	3c2c0c00 	stccc	12, cr0, [ip], #-0
     954:	05000009 	streq	r0, [r0, #-9]
     958:	0030e003 	eorseq	lr, r0, r3
     95c:	05ed0b00 	strbeq	r0, [sp, #2816]!	; 0xb00
     960:	096d0000 	stmdbeq	sp!, {}^	; <UNPREDICTABLE>
     964:	730c0000 	movwvc	r0, #49152	; 0xc000
     968:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     96c:	520a2000 	andpl	r2, sl, #0
     970:	2d0c0000 	stccs	0, cr0, [ip, #-0]
     974:	0000095d 	andeq	r0, r0, sp, asr r9
     978:	30ec0305 	rsccc	r0, ip, r5, lsl #6
     97c:	3e200000 	cdpcc	0, 2, cr0, cr0, cr0, {0}
     980:	0c000060 	stceq	0, cr0, [r0], {96}	; 0x60
     984:	00095d2e 	andeq	r5, r9, lr, lsr #26
     988:	fc030500 	stc2	5, cr0, [r3], {-0}
     98c:	0b000030 	bleq	a54 <__sfp+0x30>
     990:	000005ed 	andeq	r0, r0, sp, ror #11
     994:	0000099f 	muleq	r0, pc, r9	; <UNPREDICTABLE>
     998:	0000730c 	andeq	r7, r0, ip, lsl #6
     99c:	20000d00 	andcs	r0, r0, r0, lsl #26
     9a0:	00007e62 	andeq	r7, r0, r2, ror #28
     9a4:	098f2f0c 	stmibeq	pc, {r2, r3, r8, r9, sl, fp, sp}	; <UNPREDICTABLE>
     9a8:	03050000 	movweq	r0, #20480	; 0x5000
     9ac:	0000310c 	andeq	r3, r0, ip, lsl #2
     9b0:	0005ed0b 	andeq	lr, r5, fp, lsl #26
     9b4:	0009c000 	andeq	ip, r9, r0
     9b8:	00730c00 	rsbseq	r0, r3, r0, lsl #24
     9bc:	00050000 	andeq	r0, r5, r0
     9c0:	00468920 	subeq	r8, r6, r0, lsr #18
     9c4:	b0300c00 	eorslt	r0, r0, r0, lsl #24
     9c8:	05000009 	streq	r0, [r0, #-9]
     9cc:	00311c03 	eorseq	r1, r1, r3, lsl #24
     9d0:	0d480d00 	stcleq	13, cr0, [r8, #-0]
     9d4:	000aaf0b 	andeq	sl, sl, fp, lsl #30
     9d8:	52430f00 	subpl	r0, r3, #0, 30
     9dc:	be0d0d00 	cdplt	13, 0, cr0, cr13, cr0, {0}
     9e0:	00000008 	andeq	r0, r0, r8
     9e4:	00524d0f 	subseq	r4, r2, pc, lsl #26
     9e8:	08be0e0d 	ldmeq	lr!, {r0, r2, r3, r9, sl, fp}
     9ec:	0f040000 	svceq	0x00040000
     9f0:	00524549 	subseq	r4, r2, r9, asr #10
     9f4:	08be0f0d 	ldmeq	lr!, {r0, r2, r3, r8, r9, sl, fp}
     9f8:	0f080000 	svceq	0x00080000
     9fc:	00524449 	subseq	r4, r2, r9, asr #8
     a00:	08be100d 	ldmeq	lr!, {r0, r2, r3, ip}
     a04:	0f0c0000 	svceq	0x000c0000
     a08:	00524d49 	subseq	r4, r2, r9, asr #26
     a0c:	08be110d 	ldmeq	lr!, {r0, r2, r3, r8, ip}
     a10:	0f100000 	svceq	0x00100000
     a14:	00525349 	subseq	r5, r2, r9, asr #6
     a18:	08be120d 	ldmeq	lr!, {r0, r2, r3, r9, ip}
     a1c:	0e140000 	cdpeq	0, 1, cr0, cr4, cr0, {0}
     a20:	00000ed8 	ldrdeq	r0, [r0], -r8
     a24:	08be130d 	ldmeq	lr!, {r0, r2, r3, r8, r9, ip}
     a28:	0e180000 	cdpeq	0, 1, cr0, cr8, cr0, {0}
     a2c:	00004f1f 	andeq	r4, r0, pc, lsl pc
     a30:	08be140d 	ldmeq	lr!, {r0, r2, r3, sl, ip}
     a34:	0e1c0000 	cdpeq	0, 1, cr0, cr12, cr0, {0}
     a38:	00007286 	andeq	r7, r0, r6, lsl #5
     a3c:	08be150d 	ldmeq	lr!, {r0, r2, r3, r8, sl, ip}
     a40:	0e200000 	cdpeq	0, 2, cr0, cr0, cr0, {0}
     a44:	0000167a 	andeq	r1, r0, sl, ror r6
     a48:	08be160d 	ldmeq	lr!, {r0, r2, r3, r9, sl, ip}
     a4c:	0e240000 	cdpeq	0, 2, cr0, cr4, cr0, {0}
     a50:	0000401c 	andeq	r4, r0, ip, lsl r0
     a54:	08be170d 	ldmeq	lr!, {r0, r2, r3, r8, r9, sl, ip}
     a58:	0f280000 	svceq	0x00280000
     a5c:	0d005253 	sfmeq	f5, 4, [r0, #-332]	; 0xfffffeb4
     a60:	0008be18 	andeq	fp, r8, r8, lsl lr
     a64:	ba0e2c00 	blt	38ba6c <heap_size+0x36ba6c>
     a68:	0d000026 	stceq	0, cr0, [r0, #-152]	; 0xffffff68
     a6c:	0008be19 	andeq	fp, r8, r9, lsl lr
     a70:	a70e3000 	strge	r3, [lr, -r0]
     a74:	0d000085 	stceq	0, cr0, [r0, #-532]	; 0xfffffdec
     a78:	0008be1a 	andeq	fp, r8, sl, lsl lr
     a7c:	c70e3400 	strgt	r3, [lr, -r0, lsl #8]
     a80:	0d000038 	stceq	0, cr0, [r0, #-224]	; 0xffffff20
     a84:	0008be1b 	andeq	fp, r8, fp, lsl lr
     a88:	3b0e3800 	blcc	38ea90 <heap_size+0x36ea90>
     a8c:	0d00007b 	stceq	0, cr0, [r0, #-492]	; 0xfffffe14
     a90:	0008be1c 	andeq	fp, r8, ip, lsl lr
     a94:	450e3c00 	strmi	r3, [lr, #-3072]	; 0xfffff400
     a98:	0d00007b 	stceq	0, cr0, [r0, #-492]	; 0xfffffe14
     a9c:	0008be1d 	andeq	fp, r8, sp, lsl lr
     aa0:	810e4000 	mrshi	r4, (UNDEF: 14)
     aa4:	0d00006d 	stceq	0, cr0, [r0, #-436]	; 0xfffffe4c
     aa8:	0008be1e 	andeq	fp, r8, lr, lsl lr
     aac:	03004400 	movweq	r4, #1024	; 0x400
     ab0:	000046f8 	strdeq	r4, [r0], -r8
     ab4:	09d11f0d 	ldmibeq	r1, {r0, r2, r3, r8, r9, sl, fp, ip}^
     ab8:	97210000 	strls	r0, [r1, -r0]!
     abc:	01000024 	tsteq	r0, r4, lsr #32
     ac0:	00036c4a 	andeq	r6, r3, sl, asr #24
     ac4:	00010400 	andeq	r0, r1, r0, lsl #8
     ac8:	099c0100 	ldmibeq	ip, {r8}
     acc:	2200000b 	andcs	r0, r0, #11
     ad0:	00004e10 	andeq	r4, r0, r0, lsl lr
     ad4:	006c4a01 	rsbeq	r4, ip, r1, lsl #20
     ad8:	91020000 	mrsls	r0, (UNDEF: 2)
     adc:	31602264 	cmncc	r0, r4, ror #4
     ae0:	4a010000 	bmi	40ae8 <heap_size+0x20ae8>
     ae4:	0000061d 	andeq	r0, r0, sp, lsl r6
     ae8:	23749102 	cmncs	r4, #-2147483648	; 0x80000000
     aec:	005ff820 	subseq	pc, pc, r0, lsr #16
     af0:	c34c0100 	movtgt	r0, #49408	; 0xc100
     af4:	02000008 	andeq	r0, r0, #8
     af8:	11206891 			; <UNDEFINED> instruction: 0x11206891
     afc:	01000032 	tsteq	r0, r2, lsr r0
     b00:	0005e74e 	andeq	lr, r5, lr, asr #14
     b04:	6c910200 	lfmvs	f0, 4, [r1], {0}
     b08:	92ae2400 	adcls	r2, lr, #0, 8
     b0c:	22010000 	andcs	r0, r1, #0
     b10:	0000006c 	andeq	r0, r0, ip, rrx
     b14:	0000022c 	andeq	r0, r0, ip, lsr #4
     b18:	00000140 	andeq	r0, r0, r0, asr #2
     b1c:	0b979c01 	bleq	fe5e7b28 <__stack+0xf65e7b30>
     b20:	fb220000 	blx	880b2a <heap_size+0x860b2a>
     b24:	01000072 	tsteq	r0, r2, ror r0
     b28:	00006c22 	andeq	r6, r0, r2, lsr #24
     b2c:	64910200 	ldrvs	r0, [r1], #512	; 0x200
     b30:	72747025 	rsbsvc	r7, r4, #37	; 0x25
     b34:	e7220100 	str	r0, [r2, -r0, lsl #2]!
     b38:	02000005 	andeq	r0, r0, #5
     b3c:	6c256091 	stcvs	0, cr6, [r5], #-580	; 0xfffffdbc
     b40:	01006e65 	tsteq	r0, r5, ror #28
     b44:	00006c22 	andeq	r6, r0, r2, lsr #24
     b48:	5c910200 	lfmpl	f0, 4, [r1], {0}
     b4c:	01006e26 	tsteq	r0, r6, lsr #28
     b50:	00006c24 	andeq	r6, r0, r4, lsr #24
     b54:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     b58:	6d756e26 	ldclvs	14, cr6, [r5, #-152]!	; 0xffffff68
     b5c:	6c250100 	stfvss	f0, [r5], #-0
     b60:	02000000 	andeq	r0, r0, #0
     b64:	00277091 	mlaeq	r7, r1, r0, r7
     b68:	26000000 	strcs	r0, [r0], -r0
     b6c:	2b010063 	blcs	40d00 <heap_size+0x20d00>
     b70:	000005ed 	andeq	r0, r0, sp, ror #11
     b74:	286f9102 	stmdacs	pc!, {r1, r8, ip, pc}^	; <UNPREDICTABLE>
     b78:	00001242 	andeq	r1, r0, r2, asr #4
     b7c:	006c2c01 	rsbeq	r2, ip, r1, lsl #24
     b80:	0b880000 	bleq	fe200b88 <__stack+0xf6200b90>
     b84:	00230000 	eoreq	r0, r3, r0
     b88:	00337629 	eorseq	r7, r3, r9, lsr #12
     b8c:	6c120100 	ldfvss	f0, [r2], {-0}
     b90:	23000000 	movwcs	r0, #0
     b94:	2a000000 	bcs	b9c <__libc_init_array+0x1c>
     b98:	00002bcf 	andeq	r2, r0, pc, asr #23
     b9c:	006c0a01 	rsbeq	r0, ip, r1, lsl #20
     ba0:	01440000 	mrseq	r0, (UNDEF: 68)
     ba4:	00e80000 	rsceq	r0, r8, r0
     ba8:	9c010000 	stcls	0, cr0, [r1], {-0}
     bac:	0072fb22 	rsbseq	pc, r2, r2, lsr #22
     bb0:	6c0a0100 	stfvss	f0, [sl], {-0}
     bb4:	02000000 	andeq	r0, r0, #0
     bb8:	70256c91 	mlavc	r5, r1, ip, r6
     bbc:	01007274 	tsteq	r0, r4, ror r2
     bc0:	0005e70a 	andeq	lr, r5, sl, lsl #14
     bc4:	68910200 	ldmvs	r1, {r9}
     bc8:	6e656c25 	cdpvs	12, 6, cr6, cr5, cr5, {1}
     bcc:	6c0a0100 	stfvss	f0, [sl], {-0}
     bd0:	02000000 	andeq	r0, r0, #0
     bd4:	6e266491 	mcrvs	4, 1, r6, cr6, cr1, {4}
     bd8:	6c0c0100 	stfvss	f0, [ip], {-0}
     bdc:	02000000 	andeq	r0, r0, #0
     be0:	7c2b7491 	cfstrsvc	mvf7, [fp], #-580	; 0xfffffdbc
     be4:	1c000001 	stcne	0, cr0, [r0], {1}
     be8:	fd000000 	stc2	0, cr0, [r0, #-0]
     bec:	2900000b 	stmdbcs	r0, {r0, r1, r3}
     bf0:	00003376 	andeq	r3, r0, r6, ror r3
     bf4:	006c1201 	rsbeq	r1, ip, r1, lsl #4
     bf8:	00230000 	eoreq	r0, r3, r0
     bfc:	01c42c00 	biceq	r2, r4, r0, lsl #24
     c00:	00200000 	eoreq	r0, r0, r0
     c04:	76290000 	strtvc	r0, [r9], -r0
     c08:	01000033 	tsteq	r0, r3, lsr r0
     c0c:	00006c12 	andeq	r6, r0, r2, lsl ip
     c10:	00002300 	andeq	r2, r0, r0, lsl #6
     c14:	022f0000 	eoreq	r0, pc, #0
     c18:	00040000 	andeq	r0, r4, r0
     c1c:	00000245 	andeq	r0, r0, r5, asr #4
     c20:	1e9a0104 	fmlnee	f0, f2, f4
     c24:	600c0000 	andvs	r0, ip, r0
     c28:	45000095 	strmi	r0, [r0, #-149]	; 0xffffff6b
     c2c:	70000090 	mulvc	r0, r0, r0
     c30:	f8000004 			; <UNDEFINED> instruction: 0xf8000004
     c34:	cf000000 	svcgt	0x00000000
     c38:	b1000003 	tstlt	r0, r3
     c3c:	02000025 	andeq	r0, r0, #37	; 0x25
     c40:	79dc0601 	ldmibvc	ip, {r0, r9, sl}^
     c44:	02020000 	andeq	r0, r2, #0
     c48:	00386b05 	eorseq	r6, r8, r5, lsl #22
     c4c:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
     c50:	00006e1c 	andeq	r6, r0, ip, lsl lr
     c54:	cf050802 	svcgt	0x00050802
     c58:	02000085 	andeq	r0, r0, #133	; 0x85
     c5c:	12190801 	andsne	r0, r9, #65536	; 0x10000
     c60:	02020000 	andeq	r0, r2, #0
     c64:	008fd707 	addeq	sp, pc, r7, lsl #14
     c68:	29290300 	stmdbcs	r9!, {r8, r9}
     c6c:	34030000 	strcc	r0, [r3], #-0
     c70:	00000063 	andeq	r0, r0, r3, rrx
     c74:	00005304 	andeq	r5, r0, r4, lsl #6
     c78:	07040200 	streq	r0, [r4, -r0, lsl #4]
     c7c:	000062bb 			; <UNDEFINED> instruction: 0x000062bb
     c80:	56070802 	strpl	r0, [r7], -r2, lsl #16
     c84:	05000006 	streq	r0, [r0, #-6]
     c88:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
     c8c:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
     c90:	006d3607 	rsbeq	r3, sp, r7, lsl #12
     c94:	02480600 	subeq	r0, r8, #0, 12
     c98:	00015d0b 	andeq	r5, r1, fp, lsl #26
     c9c:	52430700 	subpl	r0, r3, #0, 14
     ca0:	5e0d0200 	cdppl	2, 0, cr0, cr13, cr0, {0}
     ca4:	00000000 	andeq	r0, r0, r0
     ca8:	00524d07 	subseq	r4, r2, r7, lsl #26
     cac:	005e0e02 	subseq	r0, lr, r2, lsl #28
     cb0:	07040000 	streq	r0, [r4, -r0]
     cb4:	00524549 	subseq	r4, r2, r9, asr #10
     cb8:	005e0f02 	subseq	r0, lr, r2, lsl #30
     cbc:	07080000 	streq	r0, [r8, -r0]
     cc0:	00524449 	subseq	r4, r2, r9, asr #8
     cc4:	005e1002 	subseq	r1, lr, r2
     cc8:	070c0000 	streq	r0, [ip, -r0]
     ccc:	00524d49 	subseq	r4, r2, r9, asr #26
     cd0:	005e1102 	subseq	r1, lr, r2, lsl #2
     cd4:	07100000 	ldreq	r0, [r0, -r0]
     cd8:	00525349 	subseq	r5, r2, r9, asr #6
     cdc:	005e1202 	subseq	r1, lr, r2, lsl #4
     ce0:	08140000 	ldmdaeq	r4, {}	; <UNPREDICTABLE>
     ce4:	00000ed8 	ldrdeq	r0, [r0], -r8
     ce8:	005e1302 	subseq	r1, lr, r2, lsl #6
     cec:	08180000 	ldmdaeq	r8, {}	; <UNPREDICTABLE>
     cf0:	00004f1f 	andeq	r4, r0, pc, lsl pc
     cf4:	005e1402 	subseq	r1, lr, r2, lsl #8
     cf8:	081c0000 	ldmdaeq	ip, {}	; <UNPREDICTABLE>
     cfc:	00007286 	andeq	r7, r0, r6, lsl #5
     d00:	005e1502 	subseq	r1, lr, r2, lsl #10
     d04:	08200000 	stmdaeq	r0!, {}	; <UNPREDICTABLE>
     d08:	0000167a 	andeq	r1, r0, sl, ror r6
     d0c:	005e1602 	subseq	r1, lr, r2, lsl #12
     d10:	08240000 	stmdaeq	r4!, {}	; <UNPREDICTABLE>
     d14:	0000401c 	andeq	r4, r0, ip, lsl r0
     d18:	005e1702 	subseq	r1, lr, r2, lsl #14
     d1c:	07280000 	streq	r0, [r8, -r0]!
     d20:	02005253 	andeq	r5, r0, #805306373	; 0x30000005
     d24:	00005e18 	andeq	r5, r0, r8, lsl lr
     d28:	ba082c00 	blt	20bd30 <heap_size+0x1ebd30>
     d2c:	02000026 	andeq	r0, r0, #38	; 0x26
     d30:	00005e19 	andeq	r5, r0, r9, lsl lr
     d34:	a7083000 	strge	r3, [r8, -r0]
     d38:	02000085 	andeq	r0, r0, #133	; 0x85
     d3c:	00005e1a 	andeq	r5, r0, sl, lsl lr
     d40:	c7083400 	strgt	r3, [r8, -r0, lsl #8]
     d44:	02000038 	andeq	r0, r0, #56	; 0x38
     d48:	00005e1b 	andeq	r5, r0, fp, lsl lr
     d4c:	3b083800 	blcc	20ed54 <heap_size+0x1eed54>
     d50:	0200007b 	andeq	r0, r0, #123	; 0x7b
     d54:	00005e1c 	andeq	r5, r0, ip, lsl lr
     d58:	45083c00 	strmi	r3, [r8, #-3072]	; 0xfffff400
     d5c:	0200007b 	andeq	r0, r0, #123	; 0x7b
     d60:	00005e1d 	andeq	r5, r0, sp, lsl lr
     d64:	81084000 	mrshi	r4, (UNDEF: 8)
     d68:	0200006d 	andeq	r0, r0, #109	; 0x6d
     d6c:	00005e1e 	andeq	r5, r0, lr, lsl lr
     d70:	03004400 	movweq	r4, #1024	; 0x400
     d74:	000046f8 	strdeq	r4, [r0], -r8
     d78:	007f1f02 	rsbseq	r1, pc, r2, lsl #30
     d7c:	42090000 	andmi	r0, r9, #0
     d80:	01000012 	tsteq	r0, r2, lsl r0
     d84:	0001c215 	andeq	ip, r1, r5, lsl r2
     d88:	0004f800 	andeq	pc, r4, r0, lsl #16
     d8c:	00007000 	andeq	r7, r0, r0
     d90:	c29c0100 	addsgt	r0, ip, #0, 2
     d94:	0a000001 	beq	da0 <__sprint_r+0xa>
     d98:	0000954f 	andeq	r9, r0, pc, asr #10
     d9c:	01c91501 	biceq	r1, r9, r1, lsl #10
     da0:	91020000 	mrsls	r0, (UNDEF: 2)
     da4:	05140b74 	ldreq	r0, [r4, #-2932]	; 0xfffff48c
     da8:	00200000 	eoreq	r0, r0, r0
     dac:	01aa0000 			; <UNDEFINED> instruction: 0x01aa0000
     db0:	630c0000 	movwvs	r0, #49152	; 0xc000
     db4:	1a010068 	bne	40f5c <heap_size+0x20f5c>
     db8:	000001c2 	andeq	r0, r0, r2, asr #3
     dbc:	007e9102 	rsbseq	r9, lr, r2, lsl #2
     dc0:	0005340d 	andeq	r3, r5, sp, lsl #8
     dc4:	00002800 	andeq	r2, r0, r0, lsl #16
     dc8:	68630c00 	stmdavs	r3!, {sl, fp}^
     dcc:	c2220100 	eorgt	r0, r2, #0, 2
     dd0:	02000001 	andeq	r0, r0, #1
     dd4:	00007f91 	muleq	r0, r1, pc	; <UNPREDICTABLE>
     dd8:	e3080102 	movw	r0, #33026	; 0x8102
     ddc:	0e000079 	mcreq	0, 0, r0, cr0, cr9, {3}
     de0:	00015d04 	andeq	r5, r1, r4, lsl #26
     de4:	33760900 	cmncc	r6, #0, 18
     de8:	0b010000 	bleq	40df0 <heap_size+0x20df0>
     dec:	000001c2 	andeq	r0, r0, r2, asr #3
     df0:	000004b4 			; <UNDEFINED> instruction: 0x000004b4
     df4:	00000044 	andeq	r0, r0, r4, asr #32
     df8:	02049c01 	andeq	r9, r4, #256	; 0x100
     dfc:	4f0a0000 	svcmi	0x000a0000
     e00:	01000095 	swpeq	r0, r5, [r0]	; <UNPREDICTABLE>
     e04:	0001c90b 	andeq	ip, r1, fp, lsl #18
     e08:	7c910200 	lfmvc	f0, 4, [r1], {0}
     e0c:	0068630f 	rsbeq	r6, r8, pc, lsl #6
     e10:	01c20b01 	biceq	r0, r2, r1, lsl #22
     e14:	91020000 	mrsls	r0, (UNDEF: 2)
     e18:	5510007b 	ldrpl	r0, [r0, #-123]	; 0xffffff85
     e1c:	01000095 	swpeq	r0, r5, [r0]	; <UNPREDICTABLE>
     e20:	00047003 	andeq	r7, r4, r3
     e24:	00004400 	andeq	r4, r0, r0, lsl #8
     e28:	0a9c0100 	beq	fe701230 <__stack+0xf6701238>
     e2c:	0000954a 	andeq	r9, r0, sl, asr #10
     e30:	01c90301 	biceq	r0, r9, r1, lsl #6
     e34:	91020000 	mrsls	r0, (UNDEF: 2)
     e38:	6d740c74 	ldclvs	12, cr0, [r4, #-464]!	; 0xfffffe30
     e3c:	05010070 	streq	r0, [r1, #-112]	; 0xffffff90
     e40:	00000053 	andeq	r0, r0, r3, asr r0
     e44:	007c9102 	rsbseq	r9, ip, r2, lsl #2
     e48:	000b6f00 	andeq	r6, fp, r0, lsl #30
     e4c:	2f000400 	svccs	0x00000400
     e50:	04000003 	streq	r0, [r0], #-3
     e54:	001e9a01 	andseq	r9, lr, r1, lsl #20
     e58:	96030c00 	strls	r0, [r3], -r0, lsl #24
     e5c:	90450000 	subls	r0, r5, r0
     e60:	05680000 	strbeq	r0, [r8, #-0]!
     e64:	033c0000 	teqeq	ip, #0
     e68:	04ad0000 	strteq	r0, [sp], #0
     e6c:	25e40000 	strbcs	r0, [r4, #0]!
     e70:	01020000 	mrseq	r0, (UNDEF: 2)
     e74:	0079dc06 	rsbseq	sp, r9, r6, lsl #24
     e78:	08010200 	stmdaeq	r1, {r9}
     e7c:	00001219 	andeq	r1, r0, r9, lsl r2
     e80:	6b050202 	blvs	141690 <heap_size+0x121690>
     e84:	02000038 	andeq	r0, r0, #56	; 0x38
     e88:	8fd70702 	svchi	0x00d70702
     e8c:	04020000 	streq	r0, [r2], #-0
     e90:	006e1c05 	rsbeq	r1, lr, r5, lsl #24
     e94:	29270300 	stmdbcs	r7!, {r8, r9}
     e98:	4f020000 	svcmi	0x00020000
     e9c:	00000057 	andeq	r0, r0, r7, asr r0
     ea0:	bb070402 	bllt	1c1eb0 <heap_size+0x1a1eb0>
     ea4:	02000062 	andeq	r0, r0, #98	; 0x62
     ea8:	85cf0508 	strbhi	r0, [pc, #1288]	; 13b8 <_puts_r+0x44>
     eac:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     eb0:	00065607 	andeq	r5, r6, r7, lsl #12
     eb4:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
     eb8:	00746e69 	rsbseq	r6, r4, r9, ror #28
     ebc:	36070402 	strcc	r0, [r7], -r2, lsl #8
     ec0:	0500006d 	streq	r0, [r0, #-109]	; 0xffffff93
     ec4:	5c750304 	ldclpl	3, cr0, [r5], #-16
     ec8:	0c030000 	stceq	0, cr0, [r3], {-0}
     ecc:	0000006c 	andeq	r0, r0, ip, rrx
     ed0:	00387503 	eorseq	r7, r8, r3, lsl #10
     ed4:	452c0400 	strmi	r0, [ip, #-1024]!	; 0xfffffc00
     ed8:	03000000 	movweq	r0, #0
     edc:	00004399 	muleq	r0, r9, r3
     ee0:	00457204 	subeq	r7, r5, r4, lsl #4
     ee4:	09060000 	stmdbeq	r6, {}	; <UNPREDICTABLE>
     ee8:	05000044 	streq	r0, [r0, #-68]	; 0xffffffbc
     eec:	00730165 	rsbseq	r0, r3, r5, ror #2
     ef0:	04070000 	streq	r0, [r7], #-0
     ef4:	00c8a604 	sbceq	sl, r8, r4, lsl #12
     ef8:	4a080000 	bmi	200f00 <heap_size+0x1e0f00>
     efc:	0400005b 	streq	r0, [r0], #-91	; 0xffffffa5
     f00:	00009da8 	andeq	r9, r0, r8, lsr #27
     f04:	3e110800 	cdpcc	8, 1, cr0, cr1, cr0, {0}
     f08:	a9040000 	stmdbge	r4, {}	; <UNPREDICTABLE>
     f0c:	000000c8 	andeq	r0, r0, r8, asr #1
     f10:	00300900 	eorseq	r0, r0, r0, lsl #18
     f14:	00d80000 	sbcseq	r0, r8, r0
     f18:	730a0000 	movwvc	r0, #40960	; 0xa000
     f1c:	03000000 	movweq	r0, #0
     f20:	04080b00 	streq	r0, [r8], #-2816	; 0xfffff500
     f24:	0000f9a3 	andeq	pc, r0, r3, lsr #19
     f28:	39e80c00 	stmibcc	r8!, {sl, fp}^
     f2c:	a5040000 	strge	r0, [r4, #-0]
     f30:	0000006c 	andeq	r0, r0, ip, rrx
     f34:	77090c00 	strvc	r0, [r9, -r0, lsl #24]
     f38:	aa040000 	bge	100f40 <heap_size+0xe0f40>
     f3c:	000000a9 	andeq	r0, r0, r9, lsr #1
     f40:	5b030004 	blpl	c0f58 <heap_size+0xa0f58>
     f44:	04000074 	streq	r0, [r0], #-116	; 0xffffff8c
     f48:	0000d8ab 	andeq	sp, r0, fp, lsr #17
     f4c:	859e0300 	ldrhi	r0, [lr, #768]	; 0x300
     f50:	af040000 	svcge	0x00040000
     f54:	0000007c 	andeq	r0, r0, ip, ror r0
     f58:	004f6303 	subeq	r6, pc, r3, lsl #6
     f5c:	57160600 	ldrpl	r0, [r6, -r0, lsl #12]
     f60:	0d000000 	stceq	0, cr0, [r0, #-0]
     f64:	00006a69 	andeq	r6, r0, r9, ror #20
     f68:	6d2f0618 	stcvs	6, cr0, [pc, #-96]!	; f10 <_vfiprintf_r+0x160>
     f6c:	0c000001 	stceq	0, cr0, [r0], {1}
     f70:	0000613d 	andeq	r6, r0, sp, lsr r1
     f74:	016d3106 	cmneq	sp, r6, lsl #2
     f78:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     f7c:	06006b5f 			; <UNDEFINED> instruction: 0x06006b5f
     f80:	00006c32 	andeq	r6, r0, r2, lsr ip
     f84:	ef0c0400 	svc	0x000c0400
     f88:	06000062 	streq	r0, [r0], -r2, rrx
     f8c:	00006c32 	andeq	r6, r0, r2, lsr ip
     f90:	100c0800 	andne	r0, ip, r0, lsl #16
     f94:	0600008e 	streq	r0, [r0], -lr, lsl #1
     f98:	00006c32 	andeq	r6, r0, r2, lsr ip
     f9c:	320c0c00 	andcc	r0, ip, #0, 24
     fa0:	06000029 	streq	r0, [r0], -r9, lsr #32
     fa4:	00006c32 	andeq	r6, r0, r2, lsr ip
     fa8:	5f0e1000 	svcpl	0x000e1000
     fac:	33060078 	movwcc	r0, #24696	; 0x6078
     fb0:	00000173 	andeq	r0, r0, r3, ror r1
     fb4:	040f0014 	streq	r0, [pc], #-20	; fbc <_vfiprintf_r+0x20c>
     fb8:	0000011a 	andeq	r0, r0, sl, lsl r1
     fbc:	00010f09 	andeq	r0, r1, r9, lsl #30
     fc0:	00018300 	andeq	r8, r1, r0, lsl #6
     fc4:	00730a00 	rsbseq	r0, r3, r0, lsl #20
     fc8:	00000000 	andeq	r0, r0, r0
     fcc:	001e870d 	andseq	r8, lr, sp, lsl #14
     fd0:	37062400 	strcc	r2, [r6, -r0, lsl #8]
     fd4:	000001fc 	strdeq	r0, [r0], -ip
     fd8:	0048fd0c 	subeq	pc, r8, ip, lsl #26
     fdc:	6c390600 	ldcvs	6, cr0, [r9], #-0
     fe0:	00000000 	andeq	r0, r0, r0
     fe4:	005f8d0c 	subseq	r8, pc, ip, lsl #26
     fe8:	6c3a0600 	ldcvs	6, cr0, [sl], #-0
     fec:	04000000 	streq	r0, [r0], #-0
     ff0:	003e760c 	eorseq	r7, lr, ip, lsl #12
     ff4:	6c3b0600 	ldcvs	6, cr0, [fp], #-0
     ff8:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     ffc:	0040c20c 	subeq	ip, r0, ip, lsl #4
    1000:	6c3c0600 	ldcvs	6, cr0, [ip], #-0
    1004:	0c000000 	stceq	0, cr0, [r0], {-0}
    1008:	0008040c 	andeq	r0, r8, ip, lsl #8
    100c:	6c3d0600 	ldcvs	6, cr0, [sp], #-0
    1010:	10000000 	andne	r0, r0, r0
    1014:	0030070c 	eorseq	r0, r0, ip, lsl #14
    1018:	6c3e0600 	ldcvs	6, cr0, [lr], #-0
    101c:	14000000 	strne	r0, [r0], #-0
    1020:	0025890c 	eoreq	r8, r5, ip, lsl #18
    1024:	6c3f0600 	ldcvs	6, cr0, [pc], #-0	; 102c <__STACK_SIZE+0x2c>
    1028:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    102c:	0020610c 	eoreq	r6, r0, ip, lsl #2
    1030:	6c400600 	mcrrvs	6, 0, r0, r0, cr0
    1034:	1c000000 	stcne	0, cr0, [r0], {-0}
    1038:	0025b00c 	eoreq	fp, r5, ip
    103c:	6c410600 	mcrrvs	6, 0, r0, r1, cr0
    1040:	20000000 	andcs	r0, r0, r0
    1044:	49d41000 	ldmibmi	r4, {ip}^
    1048:	01080000 	mrseq	r0, (UNDEF: 8)
    104c:	023c4a06 	eorseq	r4, ip, #24576	; 0x6000
    1050:	930c0000 	movwls	r0, #49152	; 0xc000
    1054:	06000041 	streq	r0, [r0], -r1, asr #32
    1058:	00023c4b 	andeq	r3, r2, fp, asr #24
    105c:	d40c0000 	strle	r0, [ip], #-0
    1060:	06000024 	streq	r0, [r0], -r4, lsr #32
    1064:	00023c4c 	andeq	r3, r2, ip, asr #24
    1068:	1e118000 	cdpne	0, 1, cr8, cr1, cr0, {0}
    106c:	06000008 	streq	r0, [r0], -r8
    1070:	00010f4e 	andeq	r0, r1, lr, asr #30
    1074:	11010000 	mrsne	r0, (UNDEF: 1)
    1078:	00007788 	andeq	r7, r0, r8, lsl #15
    107c:	010f5106 	tsteq	pc, r6, lsl #2
    1080:	01040000 	mrseq	r0, (UNDEF: 4)
    1084:	007a0900 	rsbseq	r0, sl, r0, lsl #18
    1088:	024c0000 	subeq	r0, ip, #0
    108c:	730a0000 	movwvc	r0, #40960	; 0xa000
    1090:	1f000000 	svcne	0x00000000
    1094:	0f7c0d00 	svceq	0x007c0d00
    1098:	068c0000 	streq	r0, [ip], r0
    109c:	00028955 	andeq	r8, r2, r5, asr r9
    10a0:	613d0c00 	teqvs	sp, r0, lsl #24
    10a4:	56060000 	strpl	r0, [r6], -r0
    10a8:	00000289 	andeq	r0, r0, r9, lsl #5
    10ac:	48790c00 	ldmdami	r9!, {sl, fp}^
    10b0:	57060000 	strpl	r0, [r6, -r0]
    10b4:	0000006c 	andeq	r0, r0, ip, rrx
    10b8:	73dd0c04 	bicsvc	r0, sp, #4, 24	; 0x400
    10bc:	58060000 	stmdapl	r6, {}	; <UNPREDICTABLE>
    10c0:	0000028f 	andeq	r0, r0, pc, lsl #5
    10c4:	00000c08 	andeq	r0, r0, r8, lsl #24
    10c8:	59060000 	stmdbpl	r6, {}	; <UNPREDICTABLE>
    10cc:	000002a6 	andeq	r0, r0, r6, lsr #5
    10d0:	040f0088 	streq	r0, [pc], #-136	; 10d8 <__STACK_SIZE+0xd8>
    10d4:	0000024c 	andeq	r0, r0, ip, asr #4
    10d8:	00029f09 	andeq	r9, r2, r9, lsl #30
    10dc:	00029f00 	andeq	r9, r2, r0, lsl #30
    10e0:	00730a00 	rsbseq	r0, r3, r0, lsl #20
    10e4:	001f0000 	andseq	r0, pc, r0
    10e8:	02a5040f 	adceq	r0, r5, #251658240	; 0xf000000
    10ec:	0f120000 	svceq	0x00120000
    10f0:	0001fc04 	andeq	pc, r1, r4, lsl #24
    10f4:	58e30d00 	stmiapl	r3!, {r8, sl, fp}^
    10f8:	06080000 	streq	r0, [r8], -r0
    10fc:	0002d175 	andeq	sp, r2, r5, ror r1
    1100:	4a8c0c00 	bmi	fe304108 <__stack+0xf6304110>
    1104:	76060000 	strvc	r0, [r6], -r0
    1108:	000002d1 	ldrdeq	r0, [r0], -r1
    110c:	2aca0c00 	bcs	ff284114 <__stack+0xf728411c>
    1110:	77060000 	strvc	r0, [r6, -r0]
    1114:	0000006c 	andeq	r0, r0, ip, rrx
    1118:	040f0004 	streq	r0, [pc], #-4	; 1120 <_printf_i+0x3c>
    111c:	00000030 	andeq	r0, r0, r0, lsr r0
    1120:	0010d20d 	andseq	sp, r0, sp, lsl #4
    1124:	99062000 	stmdbls	r6, {sp}
    1128:	00000341 	andeq	r0, r0, r1, asr #6
    112c:	00705f0e 	rsbseq	r5, r0, lr, lsl #30
    1130:	02d19a06 	sbcseq	r9, r1, #24576	; 0x6000
    1134:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    1138:	0600725f 			; <UNDEFINED> instruction: 0x0600725f
    113c:	00006c9b 	muleq	r0, fp, ip
    1140:	5f0e0400 	svcpl	0x000e0400
    1144:	9c060077 	stcls	0, cr0, [r6], {119}	; 0x77
    1148:	0000006c 	andeq	r0, r0, ip, rrx
    114c:	0a150c08 	beq	544174 <heap_size+0x524174>
    1150:	9d060000 	stcls	0, cr0, [r6, #-0]
    1154:	00000037 	andeq	r0, r0, r7, lsr r0
    1158:	72fa0c0c 	rscsvc	r0, sl, #12, 24	; 0xc00
    115c:	9e060000 	cdpls	0, 0, cr0, cr6, cr0, {0}
    1160:	00000037 	andeq	r0, r0, r7, lsr r0
    1164:	625f0e0e 	subsvs	r0, pc, #14, 28	; 0xe0
    1168:	9f060066 	svcls	0x00060066
    116c:	000002ac 	andeq	r0, r0, ip, lsr #5
    1170:	130e0c10 	movwne	r0, #60432	; 0xec10
    1174:	a0060000 	andge	r0, r6, r0
    1178:	0000006c 	andeq	r0, r0, ip, rrx
    117c:	17e70c18 			; <UNDEFINED> instruction: 0x17e70c18
    1180:	a2060000 	andge	r0, r6, #0
    1184:	00000472 	andeq	r0, r0, r2, ror r4
    1188:	d713001c 			; <UNDEFINED> instruction: 0xd713001c
    118c:	14000002 	strne	r0, [r0], #-2
    1190:	00006aaf 	andeq	r6, r0, pc, lsr #21
    1194:	01740660 	cmneq	r4, r0, ror #12
    1198:	00000472 	andeq	r0, r0, r2, ror r4
    119c:	00405c15 	subeq	r5, r0, r5, lsl ip
    11a0:	01780600 	cmneq	r8, r0, lsl #12
    11a4:	0000006c 	andeq	r0, r0, ip, rrx
    11a8:	2a291500 	bcs	a465b0 <heap_size+0xa265b0>
    11ac:	7d060000 	stcvc	0, cr0, [r6, #-0]
    11b0:	0006ac01 	andeq	sl, r6, r1, lsl #24
    11b4:	b8150400 	ldmdalt	r5, {sl}
    11b8:	06000085 	streq	r0, [r0], -r5, lsl #1
    11bc:	06ac017d 			; <UNDEFINED> instruction: 0x06ac017d
    11c0:	15080000 	strne	r0, [r8, #-0]
    11c4:	000082fe 	strdeq	r8, [r0], -lr
    11c8:	ac017d06 	stcge	13, cr7, [r1], {6}
    11cc:	0c000006 	stceq	0, cr0, [r0], {6}
    11d0:	00084915 	andeq	r4, r8, r5, lsl r9
    11d4:	017f0600 	cmneq	pc, r0, lsl #12
    11d8:	0000006c 	andeq	r0, r0, ip, rrx
    11dc:	60e81510 	rscvs	r1, r8, r0, lsl r5
    11e0:	81060000 	mrshi	r0, (UNDEF: 6)
    11e4:	0005c501 	andeq	ip, r5, r1, lsl #10
    11e8:	61151400 	tstvs	r5, r0, lsl #8
    11ec:	06000084 	streq	r0, [r0], -r4, lsl #1
    11f0:	006c0183 	rsbeq	r0, ip, r3, lsl #3
    11f4:	15180000 	ldrne	r0, [r8, #-0]
    11f8:	000082dc 	ldrdeq	r8, [r0], -ip
    11fc:	6c018506 	cfstr32vs	mvfx8, [r1], {6}
    1200:	1c000000 	stcne	0, cr0, [r0], {-0}
    1204:	00895b15 	addeq	r5, r9, r5, lsl fp
    1208:	01860600 	orreq	r0, r6, r0, lsl #12
    120c:	000007fe 	strdeq	r0, [r0], -lr
    1210:	6d5f1620 	ldclvs	6, cr1, [pc, #-128]	; 1198 <_printf_i+0xb4>
    1214:	88060070 	stmdahi	r6, {r4, r5, r6}
    1218:	00080401 	andeq	r0, r8, r1, lsl #8
    121c:	75152400 	ldrvc	r2, [r5, #-1024]	; 0xfffffc00
    1220:	06000071 			; <UNDEFINED> instruction: 0x06000071
    1224:	0815018a 	ldmdaeq	r5, {r1, r3, r7, r8}
    1228:	15280000 	strne	r0, [r8, #-0]!
    122c:	00007fd2 	ldrdeq	r7, [r0], -r2
    1230:	6c018c06 	stcvs	12, cr8, [r1], {6}
    1234:	2c000000 	stccs	0, cr0, [r0], {-0}
    1238:	00865d15 	addeq	r5, r6, r5, lsl sp
    123c:	018f0600 	orreq	r0, pc, r0, lsl #12
    1240:	0000006c 	andeq	r0, r0, ip, rrx
    1244:	3bb71530 	blcc	fedc670c <__stack+0xf6dc6714>
    1248:	90060000 	andls	r0, r6, r0
    124c:	0005c501 	andeq	ip, r5, r1, lsl #10
    1250:	35153400 	ldrcc	r3, [r5, #-1024]	; 0xfffffc00
    1254:	0600008c 	streq	r0, [r0], -ip, lsl #1
    1258:	081b0192 	ldmdaeq	fp, {r1, r4, r7, r8}
    125c:	15380000 	ldrne	r0, [r8, #-0]!
    1260:	00003962 	andeq	r3, r0, r2, ror #18
    1264:	21019306 	tstcs	r1, r6, lsl #6
    1268:	3c000008 	stccc	0, cr0, [r0], {8}
    126c:	005b0e15 	subseq	r0, fp, r5, lsl lr
    1270:	01940600 	orrseq	r0, r4, r0, lsl #12
    1274:	000005c5 	andeq	r0, r0, r5, asr #11
    1278:	0b081540 	bleq	206780 <heap_size+0x1e6780>
    127c:	97060000 	strls	r0, [r6, -r0]
    1280:	00083201 	andeq	r3, r8, r1, lsl #4
    1284:	2c154400 	cfldrscs	mvf4, [r5], {-0}
    1288:	06000071 			; <UNDEFINED> instruction: 0x06000071
    128c:	0671019f 			; <UNDEFINED> instruction: 0x0671019f
    1290:	15480000 	strbne	r0, [r8, #-0]
    1294:	00001bf6 	strdeq	r1, [r0], -r6
    1298:	ac01a006 	stcge	0, cr10, [r1], {6}
    129c:	54000006 	strpl	r0, [r0], #-6
    12a0:	00293715 	eoreq	r3, r9, r5, lsl r7
    12a4:	01a10600 			; <UNDEFINED> instruction: 0x01a10600
    12a8:	0000083e 	andeq	r0, r0, lr, lsr r8
    12ac:	45001558 	strmi	r1, [r0, #-1368]	; 0xfffffaa8
    12b0:	a2060000 	andge	r0, r6, #0
    12b4:	0005c501 	andeq	ip, r5, r1, lsl #10
    12b8:	0f005c00 	svceq	0x00005c00
    12bc:	00034604 	andeq	r4, r3, r4, lsl #12
    12c0:	04721300 	ldrbteq	r1, [r2], #-768	; 0xfffffd00
    12c4:	c80d0000 	stmdagt	sp, {}	; <UNPREDICTABLE>
    12c8:	68000073 	stmdavs	r0, {r0, r1, r4, r5, r6}
    12cc:	05a7b506 	streq	fp, [r7, #1286]!	; 0x506
    12d0:	5f0e0000 	svcpl	0x000e0000
    12d4:	b6060070 			; <UNDEFINED> instruction: 0xb6060070
    12d8:	000002d1 	ldrdeq	r0, [r0], -r1
    12dc:	725f0e00 	subsvc	r0, pc, #0, 28
    12e0:	6cb70600 	ldcvs	6, cr0, [r7]
    12e4:	04000000 	streq	r0, [r0], #-0
    12e8:	00775f0e 	rsbseq	r5, r7, lr, lsl #30
    12ec:	006cb806 	rsbeq	fp, ip, r6, lsl #16
    12f0:	0c080000 	stceq	0, cr0, [r8], {-0}
    12f4:	00000a15 	andeq	r0, r0, r5, lsl sl
    12f8:	0037b906 	eorseq	fp, r7, r6, lsl #18
    12fc:	0c0c0000 	stceq	0, cr0, [ip], {-0}
    1300:	000072fa 	strdeq	r7, [r0], -sl
    1304:	0037ba06 	eorseq	fp, r7, r6, lsl #20
    1308:	0e0e0000 	cdpeq	0, 0, cr0, cr14, cr0, {0}
    130c:	0066625f 	rsbeq	r6, r6, pc, asr r2
    1310:	02acbb06 	adceq	fp, ip, #6144	; 0x1800
    1314:	0c100000 	ldceq	0, cr0, [r0], {-0}
    1318:	0000130e 	andeq	r1, r0, lr, lsl #6
    131c:	006cbc06 	rsbeq	fp, ip, r6, lsl #24
    1320:	0c180000 	ldceq	0, cr0, [r8], {-0}
    1324:	000017e7 	andeq	r1, r0, r7, ror #15
    1328:	0472bf06 	ldrbteq	fp, [r2], #-3846	; 0xfffff0fa
    132c:	0c1c0000 	ldceq	0, cr0, [ip], {-0}
    1330:	0000451f 	andeq	r4, r0, pc, lsl r5
    1334:	007ac306 	rsbseq	ip, sl, r6, lsl #6
    1338:	0c200000 	stceq	0, cr0, [r0], #-0
    133c:	000092ae 	andeq	r9, r0, lr, lsr #5
    1340:	05d7c506 	ldrbeq	ip, [r7, #1286]	; 0x506
    1344:	0c240000 	stceq	0, cr0, [r4], #-0
    1348:	00002bcf 	andeq	r2, r0, pc, asr #23
    134c:	0601c706 	streq	ip, [r1], -r6, lsl #14
    1350:	0c280000 	stceq	0, cr0, [r8], #-0
    1354:	0000795b 	andeq	r7, r0, fp, asr r9
    1358:	0625ca06 	strteq	ip, [r5], -r6, lsl #20
    135c:	0c2c0000 	stceq	0, cr0, [ip], #-0
    1360:	000067e2 	andeq	r6, r0, r2, ror #15
    1364:	063fcb06 	ldrteq	ip, [pc], -r6, lsl #22
    1368:	0e300000 	cdpeq	0, 3, cr0, cr0, cr0, {0}
    136c:	0062755f 	rsbeq	r7, r2, pc, asr r5
    1370:	02acce06 	adceq	ip, ip, #6, 28	; 0x60
    1374:	0e340000 	cdpeq	0, 3, cr0, cr4, cr0, {0}
    1378:	0070755f 	rsbseq	r7, r0, pc, asr r5
    137c:	02d1cf06 	sbcseq	ip, r1, #6, 30
    1380:	0e3c0000 	cdpeq	0, 3, cr0, cr12, cr0, {0}
    1384:	0072755f 	rsbseq	r7, r2, pc, asr r5
    1388:	006cd006 	rsbeq	sp, ip, r6
    138c:	0c400000 	mareq	acc0, r0, r0
    1390:	000070c4 	andeq	r7, r0, r4, asr #1
    1394:	0645d306 	strbeq	sp, [r5], -r6, lsl #6
    1398:	0c440000 	mareq	acc0, r0, r4
    139c:	00000c96 	muleq	r0, r6, ip
    13a0:	0655d406 	ldrbeq	sp, [r5], -r6, lsl #8
    13a4:	0e470000 	cdpeq	0, 4, cr0, cr7, cr0, {0}
    13a8:	00626c5f 	rsbeq	r6, r2, pc, asr ip
    13ac:	02acd706 	adceq	sp, ip, #1572864	; 0x180000
    13b0:	0c480000 	mareq	acc0, r0, r8
    13b4:	00007088 	andeq	r7, r0, r8, lsl #1
    13b8:	006cda06 	rsbeq	sp, ip, r6, lsl #20
    13bc:	0c500000 	mraeq	r0, r0, acc0
    13c0:	000057e1 	andeq	r5, r0, r1, ror #15
    13c4:	0087db06 	addeq	sp, r7, r6, lsl #22
    13c8:	0c540000 	mraeq	r0, r4, acc0
    13cc:	00000c90 	muleq	r0, r0, ip
    13d0:	0104e206 	tsteq	r4, r6, lsl #4
    13d4:	0c580000 	mraeq	r0, r8, acc0
    13d8:	00004eb2 			; <UNDEFINED> instruction: 0x00004eb2
    13dc:	00f9e406 	rscseq	lr, r9, r6, lsl #8
    13e0:	0c5c0000 	mraeq	r0, ip, acc0
    13e4:	00008829 	andeq	r8, r0, r9, lsr #16
    13e8:	006ce506 	rsbeq	lr, ip, r6, lsl #10
    13ec:	00640000 	rsbeq	r0, r4, r0
    13f0:	00006c17 	andeq	r6, r0, r7, lsl ip
    13f4:	0005c500 	andeq	ip, r5, r0, lsl #10
    13f8:	04721800 	ldrbteq	r1, [r2], #-2048	; 0xfffff800
    13fc:	7a180000 	bvc	601404 <heap_size+0x5e1404>
    1400:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    1404:	000005c5 	andeq	r0, r0, r5, asr #11
    1408:	00006c18 	andeq	r6, r0, r8, lsl ip
    140c:	040f0000 	streq	r0, [pc], #-0	; 1414 <_puts_r+0xa0>
    1410:	000005cb 	andeq	r0, r0, fp, asr #11
    1414:	e3080102 	movw	r0, #33026	; 0x8102
    1418:	13000079 	movwne	r0, #121	; 0x79
    141c:	000005cb 	andeq	r0, r0, fp, asr #11
    1420:	05a7040f 	streq	r0, [r7, #1039]!	; 0x40f
    1424:	6c170000 	ldcvs	0, cr0, [r7], {-0}
    1428:	fb000000 	blx	1432 <puts+0x6>
    142c:	18000005 	stmdane	r0, {r0, r2}
    1430:	00000472 	andeq	r0, r0, r2, ror r4
    1434:	00007a18 	andeq	r7, r0, r8, lsl sl
    1438:	05fb1800 	ldrbeq	r1, [fp, #2048]!	; 0x800
    143c:	6c180000 	ldcvs	0, cr0, [r8], {-0}
    1440:	00000000 	andeq	r0, r0, r0
    1444:	05d2040f 	ldrbeq	r0, [r2, #1039]	; 0x40f
    1448:	040f0000 	streq	r0, [pc], #-0	; 1450 <_sbrk_r+0x14>
    144c:	000005dd 	ldrdeq	r0, [r0], -sp
    1450:	00009217 	andeq	r9, r0, r7, lsl r2
    1454:	00062500 	andeq	r2, r6, r0, lsl #10
    1458:	04721800 	ldrbteq	r1, [r2], #-2048	; 0xfffff800
    145c:	7a180000 	bvc	601464 <heap_size+0x5e1464>
    1460:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    1464:	00000092 	muleq	r0, r2, r0
    1468:	00006c18 	andeq	r6, r0, r8, lsl ip
    146c:	040f0000 	streq	r0, [pc], #-0	; 1474 <iscanf+0x18>
    1470:	00000607 	andeq	r0, r0, r7, lsl #12
    1474:	00006c17 	andeq	r6, r0, r7, lsl ip
    1478:	00063f00 	andeq	r3, r6, r0, lsl #30
    147c:	04721800 	ldrbteq	r1, [r2], #-2048	; 0xfffff800
    1480:	7a180000 	bvc	601488 <heap_size+0x5e1488>
    1484:	00000000 	andeq	r0, r0, r0
    1488:	062b040f 	strteq	r0, [fp], -pc, lsl #8
    148c:	30090000 	andcc	r0, r9, r0
    1490:	55000000 	strpl	r0, [r0, #-0]
    1494:	0a000006 	beq	14b4 <__sread>
    1498:	00000073 	andeq	r0, r0, r3, ror r0
    149c:	30090002 	andcc	r0, r9, r2
    14a0:	65000000 	strvs	r0, [r0, #-0]
    14a4:	0a000006 	beq	14c4 <__sread+0x10>
    14a8:	00000073 	andeq	r0, r0, r3, ror r0
    14ac:	8e060000 	cdphi	0, 0, cr0, cr6, cr0, {0}
    14b0:	0600008d 	streq	r0, [r0], -sp, lsl #1
    14b4:	047d011f 	ldrbteq	r0, [sp], #-287	; 0xfffffee1
    14b8:	39140000 	ldmdbcc	r4, {}	; <UNPREDICTABLE>
    14bc:	0c000068 	stceq	0, cr0, [r0], {104}	; 0x68
    14c0:	a6012306 	strge	r2, [r1], -r6, lsl #6
    14c4:	15000006 	strne	r0, [r0, #-6]
    14c8:	0000613d 	andeq	r6, r0, sp, lsr r1
    14cc:	a6012506 	strge	r2, [r1], -r6, lsl #10
    14d0:	00000006 	andeq	r0, r0, r6
    14d4:	003fe115 	eorseq	lr, pc, r5, lsl r1	; <UNPREDICTABLE>
    14d8:	01260600 			; <UNDEFINED> instruction: 0x01260600
    14dc:	0000006c 	andeq	r0, r0, ip, rrx
    14e0:	60e21504 	rscvs	r1, r2, r4, lsl #10
    14e4:	27060000 	strcs	r0, [r6, -r0]
    14e8:	0006ac01 	andeq	sl, r6, r1, lsl #24
    14ec:	0f000800 	svceq	0x00000800
    14f0:	00067104 	andeq	r7, r6, r4, lsl #2
    14f4:	65040f00 	strvs	r0, [r4, #-3840]	; 0xfffff100
    14f8:	14000006 	strne	r0, [r0], #-6
    14fc:	0000934c 	andeq	r9, r0, ip, asr #6
    1500:	013f0618 	teqeq	pc, r8, lsl r6	; <UNPREDICTABLE>
    1504:	000006f4 	strdeq	r0, [r0], -r4
    1508:	0053a615 	subseq	sl, r3, r5, lsl r6
    150c:	01400600 	cmpeq	r0, r0, lsl #12
    1510:	000006f4 	strdeq	r0, [r0], -r4
    1514:	317c1500 	cmncc	ip, r0, lsl #10
    1518:	41060000 	mrsmi	r0, (UNDEF: 6)
    151c:	0006f401 	andeq	pc, r6, r1, lsl #8
    1520:	cd150600 	ldcgt	6, cr0, [r5, #-0]
    1524:	06000010 			; <UNDEFINED> instruction: 0x06000010
    1528:	003e0142 	eorseq	r0, lr, r2, asr #2
    152c:	150c0000 	strne	r0, [ip, #-0]
    1530:	00006138 	andeq	r6, r0, r8, lsr r1
    1534:	65014506 	strvs	r4, [r1, #-1286]	; 0xfffffafa
    1538:	10000000 	andne	r0, r0, r0
    153c:	003e0900 	eorseq	r0, lr, r0, lsl #18
    1540:	07040000 	streq	r0, [r4, -r0]
    1544:	730a0000 	movwvc	r0, #40960	; 0xa000
    1548:	02000000 	andeq	r0, r0, #0
    154c:	78251400 	stmdavc	r5!, {sl, ip}
    1550:	06100000 	ldreq	r0, [r0], -r0
    1554:	07460158 	smlsldeq	r0, r6, r8, r1
    1558:	74150000 	ldrvc	r0, [r5], #-0
    155c:	06000024 	streq	r0, [r0], -r4, lsr #32
    1560:	016d015b 	cmneq	sp, fp, asr r1
    1564:	15000000 	strne	r0, [r0, #-0]
    1568:	00002460 	andeq	r2, r0, r0, ror #8
    156c:	6c015c06 	stcvs	12, cr5, [r1], {6}
    1570:	04000000 	streq	r0, [r0], #-0
    1574:	008f9615 	addeq	r9, pc, r5, lsl r6	; <UNPREDICTABLE>
    1578:	015d0600 	cmpeq	sp, r0, lsl #12
    157c:	0000016d 	andeq	r0, r0, sp, ror #2
    1580:	56741508 	ldrbtpl	r1, [r4], -r8, lsl #10
    1584:	5e060000 	cdppl	0, 0, cr0, cr6, cr0, {0}
    1588:	00074601 	andeq	r4, r7, r1, lsl #12
    158c:	0f000c00 	svceq	0x00000c00
    1590:	00016d04 	andeq	r6, r1, r4, lsl #26
    1594:	6aaa1400 	bvs	fea8659c <__stack+0xf6a865a4>
    1598:	06500000 	ldrbeq	r0, [r0], -r0
    159c:	07e90162 	strbeq	r0, [r9, r2, ror #2]!
    15a0:	da150000 	ble	5415a8 <heap_size+0x5215a8>
    15a4:	06000051 			; <UNDEFINED> instruction: 0x06000051
    15a8:	05c50165 	strbeq	r0, [r5, #357]	; 0x165
    15ac:	15000000 	strne	r0, [r0, #-0]
    15b0:	000048d7 	ldrdeq	r4, [r0], -r7
    15b4:	f9016606 			; <UNDEFINED> instruction: 0xf9016606
    15b8:	04000000 	streq	r0, [r0], #-0
    15bc:	005eb615 	subseq	fp, lr, r5, lsl r6
    15c0:	01670600 	cmneq	r7, r0, lsl #12
    15c4:	000000f9 	strdeq	r0, [r0], -r9
    15c8:	1d04150c 	cfstr32ne	mvfx1, [r4, #-48]	; 0xffffffd0
    15cc:	68060000 	stmdavs	r6, {}	; <UNPREDICTABLE>
    15d0:	0000f901 	andeq	pc, r0, r1, lsl #18
    15d4:	fa151400 	blx	5465dc <heap_size+0x5265dc>
    15d8:	06000058 			; <UNDEFINED> instruction: 0x06000058
    15dc:	07e90169 	strbeq	r0, [r9, r9, ror #2]!
    15e0:	151c0000 	ldrne	r0, [ip, #-0]
    15e4:	00006cc4 	andeq	r6, r0, r4, asr #25
    15e8:	6c016a06 			; <UNDEFINED> instruction: 0x6c016a06
    15ec:	24000000 	strcs	r0, [r0], #-0
    15f0:	00325b15 	eorseq	r5, r2, r5, lsl fp
    15f4:	016b0600 	cmneq	fp, r0, lsl #12
    15f8:	000000f9 	strdeq	r0, [r0], -r9
    15fc:	00df1528 	sbcseq	r1, pc, r8, lsr #10
    1600:	6c060000 	stcvs	0, cr0, [r6], {-0}
    1604:	0000f901 	andeq	pc, r0, r1, lsl #18
    1608:	fe153000 	cdp2	0, 1, cr3, cr5, cr0, {0}
    160c:	06000028 	streq	r0, [r0], -r8, lsr #32
    1610:	00f9016d 	rscseq	r0, r9, sp, ror #2
    1614:	15380000 	ldrne	r0, [r8, #-0]!
    1618:	00004b00 	andeq	r4, r0, r0, lsl #22
    161c:	f9016e06 			; <UNDEFINED> instruction: 0xf9016e06
    1620:	40000000 	andmi	r0, r0, r0
    1624:	005be015 	subseq	lr, fp, r5, lsl r0
    1628:	016f0600 	cmneq	pc, r0, lsl #12
    162c:	000000f9 	strdeq	r0, [r0], -r9
    1630:	cb090048 	blgt	241758 <heap_size+0x221758>
    1634:	f9000005 			; <UNDEFINED> instruction: 0xf9000005
    1638:	0a000007 	beq	165c <__swsetup_r+0x40>
    163c:	00000073 	andeq	r0, r0, r3, ror r0
    1640:	34190007 	ldrcc	r0, [r9], #-7
    1644:	0f000071 	svceq	0x00000071
    1648:	0007f904 	andeq	pc, r7, r4, lsl #18
    164c:	04040f00 	streq	r0, [r4], #-3840	; 0xfffff100
    1650:	1a000007 	bne	1674 <__swsetup_r+0x58>
    1654:	00000815 	andeq	r0, r0, r5, lsl r8
    1658:	00047218 	andeq	r7, r4, r8, lsl r2
    165c:	040f0000 	streq	r0, [pc], #-0	; 1664 <__swsetup_r+0x48>
    1660:	0000080a 	andeq	r0, r0, sl, lsl #16
    1664:	06b2040f 	ldrteq	r0, [r2], pc, lsl #8
    1668:	040f0000 	streq	r0, [pc], #-0	; 1670 <__swsetup_r+0x54>
    166c:	00000183 	andeq	r0, r0, r3, lsl #3
    1670:	0008321a 	andeq	r3, r8, sl, lsl r2
    1674:	006c1800 	rsbeq	r1, ip, r0, lsl #16
    1678:	0f000000 	svceq	0x00000000
    167c:	00083804 	andeq	r3, r8, r4, lsl #16
    1680:	27040f00 	strcs	r0, [r4, -r0, lsl #30]
    1684:	0f000008 	svceq	0x00000008
    1688:	00074c04 	andeq	r4, r7, r4, lsl #24
    168c:	2a201b00 	bcs	808294 <heap_size+0x7e8294>
    1690:	ca060000 	bgt	181698 <heap_size+0x161698>
    1694:	00034101 	andeq	r4, r3, r1, lsl #2
    1698:	85af1b00 	strhi	r1, [pc, #2816]!	; 21a0 <_scanf_i+0xa8>
    169c:	cb060000 	blgt	1816a4 <heap_size+0x1616a4>
    16a0:	00034101 	andeq	r4, r3, r1, lsl #2
    16a4:	82f51b00 	rscshi	r1, r5, #0, 22
    16a8:	cc060000 	stcgt	0, cr0, [r6], {-0}
    16ac:	00034101 	andeq	r4, r3, r1, lsl #2
    16b0:	4f911b00 	svcmi	0x00911b00
    16b4:	2e060000 	cdpcs	0, 0, cr0, cr6, cr0, {0}
    16b8:	00047203 	andeq	r7, r4, r3, lsl #4
    16bc:	36bf1b00 	ldrtcc	r1, [pc], r0, lsl #22
    16c0:	2f060000 	svccs	0x00060000
    16c4:	00047803 	andeq	r7, r4, r3, lsl #16
    16c8:	0f751b00 	svceq	0x00751b00
    16cc:	41060000 	mrsmi	r0, (UNDEF: 6)
    16d0:	00028903 	andeq	r8, r2, r3, lsl #18
    16d4:	29290300 	stmdbcs	r9!, {r8, r9}
    16d8:	30070000 	andcc	r0, r7, r0
    16dc:	0000004c 	andeq	r0, r0, ip, asr #32
    16e0:	00088c1c 	andeq	r8, r8, ip, lsl ip
    16e4:	8d900300 	ldchi	3, cr0, [r0]
    16e8:	42080000 	andmi	r0, r8, #0
    16ec:	00000665 	andeq	r0, r0, r5, ror #12
    16f0:	003d9b1d 	eorseq	r9, sp, sp, lsl fp
    16f4:	b2100900 	andslt	r0, r0, #0, 18
    16f8:	0f000008 	svceq	0x00000008
    16fc:	0005c504 	andeq	ip, r5, r4, lsl #10
    1700:	561d1d00 	ldrpl	r1, [sp], -r0, lsl #26
    1704:	fc090000 	stc2	0, cr0, [r9], {-0}
    1708:	000005c5 	andeq	r0, r0, r5, asr #11
    170c:	00878d1d 	addeq	r8, r7, sp, lsl sp
    1710:	6cfd0900 			; <UNDEFINED> instruction: 0x6cfd0900
    1714:	1d000000 	stcne	0, cr0, [r0, #-0]
    1718:	0000593e 	andeq	r5, r0, lr, lsr r9
    171c:	006cfd09 	rsbeq	pc, ip, r9, lsl #26
    1720:	541d0000 	ldrpl	r0, [sp], #-0
    1724:	09000051 	stmdbeq	r0, {r0, r4, r6}
    1728:	00006cfd 	strdeq	r6, [r0], -sp
    172c:	1d721d00 	ldclne	13, cr1, [r2, #-0]
    1730:	ff090000 			; <UNDEFINED> instruction: 0xff090000
    1734:	0000006c 	andeq	r0, r0, ip, rrx
    1738:	0b0a480b 	bleq	29376c <heap_size+0x27376c>
    173c:	000009cd 	andeq	r0, r0, sp, asr #19
    1740:	0052430e 	subseq	r4, r2, lr, lsl #6
    1744:	08970d0a 	ldmeq	r7, {r1, r3, r8, sl, fp}
    1748:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    174c:	0a00524d 	beq	16088 <__bss_end__+0x12898>
    1750:	0008970e 	andeq	r9, r8, lr, lsl #14
    1754:	490e0400 	stmdbmi	lr, {sl}
    1758:	0a005245 	beq	16074 <__bss_end__+0x12884>
    175c:	0008970f 	andeq	r9, r8, pc, lsl #14
    1760:	490e0800 	stmdbmi	lr, {fp}
    1764:	0a005244 	beq	1607c <__bss_end__+0x1288c>
    1768:	00089710 	andeq	r9, r8, r0, lsl r7
    176c:	490e0c00 	stmdbmi	lr, {sl, fp}
    1770:	0a00524d 	beq	160ac <__bss_end__+0x128bc>
    1774:	00089711 	andeq	r9, r8, r1, lsl r7
    1778:	490e1000 	stmdbmi	lr, {ip}
    177c:	0a005253 	beq	160d0 <__bss_end__+0x128e0>
    1780:	00089712 	andeq	r9, r8, r2, lsl r7
    1784:	d80c1400 	stmdale	ip, {sl, ip}
    1788:	0a00000e 	beq	17c8 <__sflush_r+0xb0>
    178c:	00089713 	andeq	r9, r8, r3, lsl r7
    1790:	1f0c1800 	svcne	0x000c1800
    1794:	0a00004f 	beq	18d8 <__sfvwrite_r+0x3c>
    1798:	00089714 	andeq	r9, r8, r4, lsl r7
    179c:	860c1c00 	strhi	r1, [ip], -r0, lsl #24
    17a0:	0a000072 	beq	1970 <__sfvwrite_r+0xd4>
    17a4:	00089715 	andeq	r9, r8, r5, lsl r7
    17a8:	7a0c2000 	bvc	3097b0 <heap_size+0x2e97b0>
    17ac:	0a000016 	beq	180c <__sflush_r+0xf4>
    17b0:	00089716 	andeq	r9, r8, r6, lsl r7
    17b4:	1c0c2400 	cfstrsne	mvf2, [ip], {-0}
    17b8:	0a000040 	beq	18c0 <__sfvwrite_r+0x24>
    17bc:	00089717 	andeq	r9, r8, r7, lsl r7
    17c0:	530e2800 	movwpl	r2, #59392	; 0xe800
    17c4:	180a0052 	stmdane	sl, {r1, r4, r6}
    17c8:	00000897 	muleq	r0, r7, r8
    17cc:	26ba0c2c 	ldrtcs	r0, [sl], ip, lsr #24
    17d0:	190a0000 	stmdbne	sl, {}	; <UNPREDICTABLE>
    17d4:	00000897 	muleq	r0, r7, r8
    17d8:	85a70c30 	strhi	r0, [r7, #3120]!	; 0xc30
    17dc:	1a0a0000 	bne	2817e4 <heap_size+0x2617e4>
    17e0:	00000897 	muleq	r0, r7, r8
    17e4:	38c70c34 	stmiacc	r7, {r2, r4, r5, sl, fp}^
    17e8:	1b0a0000 	blne	2817f0 <heap_size+0x2617f0>
    17ec:	00000897 	muleq	r0, r7, r8
    17f0:	7b3b0c38 	blvc	ec48d8 <heap_size+0xea48d8>
    17f4:	1c0a0000 	stcne	0, cr0, [sl], {-0}
    17f8:	00000897 	muleq	r0, r7, r8
    17fc:	7b450c3c 	blvc	11448f4 <_end+0x1448f4>
    1800:	1d0a0000 	stcne	0, cr0, [sl, #-0]
    1804:	00000897 	muleq	r0, r7, r8
    1808:	6d810c40 	stcvs	12, cr0, [r1, #256]	; 0x100
    180c:	1e0a0000 	cdpne	0, 0, cr0, cr10, cr0, {0}
    1810:	00000897 	muleq	r0, r7, r8
    1814:	f8030044 			; <UNDEFINED> instruction: 0xf8030044
    1818:	0a000046 	beq	1938 <__sfvwrite_r+0x9c>
    181c:	0008ef1f 	andeq	lr, r8, pc, lsl pc
    1820:	05cb0900 	strbeq	r0, [fp, #2304]	; 0x900
    1824:	09e80000 	stmibeq	r8!, {}^	; <UNPREDICTABLE>
    1828:	730a0000 	movwvc	r0, #40960	; 0xa000
    182c:	0b000000 	bleq	1834 <_fflush_r+0x10>
    1830:	256d1e00 	strbcs	r1, [sp, #-3584]!	; 0xfffff200
    1834:	2c0b0000 	stccs	0, cr0, [fp], {-0}
    1838:	000009d8 	ldrdeq	r0, [r0], -r8
    183c:	31240305 			; <UNDEFINED> instruction: 0x31240305
    1840:	cb090000 	blgt	241848 <heap_size+0x221848>
    1844:	09000005 	stmdbeq	r0, {r0, r2}
    1848:	0a00000a 	beq	1878 <fflush>
    184c:	00000073 	andeq	r0, r0, r3, ror r0
    1850:	0a1e000e 	beq	781890 <heap_size+0x761890>
    1854:	0b000052 	bleq	19a4 <__sfvwrite_r+0x108>
    1858:	0009f92d 	andeq	pc, r9, sp, lsr #18
    185c:	30030500 	andcc	r0, r3, r0, lsl #10
    1860:	1e000031 	mcrne	0, 0, r0, cr0, cr1, {1}
    1864:	0000603e 	andeq	r6, r0, lr, lsr r0
    1868:	09f92e0b 	ldmibeq	r9!, {r0, r1, r3, r9, sl, fp, sp}^
    186c:	03050000 	movweq	r0, #20480	; 0x5000
    1870:	00003140 	andeq	r3, r0, r0, asr #2
    1874:	0005cb09 	andeq	ip, r5, r9, lsl #22
    1878:	000a3b00 	andeq	r3, sl, r0, lsl #22
    187c:	00730a00 	rsbseq	r0, r3, r0, lsl #20
    1880:	000d0000 	andeq	r0, sp, r0
    1884:	007e621e 	rsbseq	r6, lr, lr, lsl r2
    1888:	2b2f0b00 	blcs	bc4490 <heap_size+0xba4490>
    188c:	0500000a 	streq	r0, [r0, #-10]
    1890:	00315003 	eorseq	r5, r1, r3
    1894:	05cb0900 	strbeq	r0, [fp, #2304]	; 0x900
    1898:	0a5c0000 	beq	17018a0 <_end+0x7018a0>
    189c:	730a0000 	movwvc	r0, #40960	; 0xa000
    18a0:	05000000 	streq	r0, [r0, #-0]
    18a4:	46891e00 	strmi	r1, [r9], r0, lsl #28
    18a8:	300b0000 	andcc	r0, fp, r0
    18ac:	00000a4c 	andeq	r0, r0, ip, asr #20
    18b0:	31600305 	cmncc	r0, r5, lsl #6
    18b4:	cb090000 	blgt	2418bc <heap_size+0x2218bc>
    18b8:	7d000005 	stcvc	0, cr0, [r0, #-20]	; 0xffffffec
    18bc:	0a00000a 	beq	18ec <__sfvwrite_r+0x50>
    18c0:	00000073 	andeq	r0, r0, r3, ror r0
    18c4:	6e1f004f 	cdpvs	0, 1, cr0, cr15, cr15, {2}
    18c8:	01000095 	swpeq	r0, r5, [r0]	; <UNPREDICTABLE>
    18cc:	000a6d22 	andeq	r6, sl, r2, lsr #26
    18d0:	9c030500 	cfstr32ls	mvfx0, [r3], {-0}
    18d4:	1f000037 	svcne	0x00000037
    18d8:	00009625 	andeq	r9, r0, r5, lsr #12
    18dc:	0a6d2301 	beq	1b4a4e8 <_end+0xb4a4e8>
    18e0:	03050000 	movweq	r0, #20480	; 0x5000
    18e4:	0000374c 	andeq	r3, r0, ip, asr #14
    18e8:	0095cc1f 	addseq	ip, r5, pc, lsl ip
    18ec:	c5250100 	strgt	r0, [r5, #-256]!	; 0xffffff00
    18f0:	05000005 	streq	r0, [r0, #-5]
    18f4:	00374803 	eorseq	r4, r7, r3, lsl #16
    18f8:	95fe2000 	ldrbls	r2, [lr, #0]!
    18fc:	27010000 	strcs	r0, [r1, -r0]
    1900:	000005c4 	andeq	r0, r0, r4, asr #11
    1904:	000002e0 	andeq	r0, r0, r0, ror #5
    1908:	0b2a9c01 	bleq	aa8914 <heap_size+0xa88914>
    190c:	780d0000 	stmdavc	sp, {}	; <UNPREDICTABLE>
    1910:	18000095 	stmdane	r0, {r0, r2, r4, r7}
    1914:	0aea2f01 	beq	ffa8d520 <__stack+0xf7a8d528>
    1918:	e80c0000 	stmda	ip, {}	; <UNPREDICTABLE>
    191c:	01000095 	swpeq	r0, r5, [r0]	; <UNPREDICTABLE>
    1920:	000b2a30 	andeq	r2, fp, r0, lsr sl
    1924:	740c0000 	strvc	r0, [ip], #-0
    1928:	0100004c 	tsteq	r0, ip, asr #32
    192c:	000b3031 	andeq	r3, fp, r1, lsr r0
    1930:	1e000400 	cfcpysne	mvf0, mvf0
    1934:	000095d3 	ldrdeq	r9, [r0], -r3
    1938:	0b403201 	bleq	100e144 <_end+0xe144>
    193c:	91030000 	mrsls	r0, (UNDEF: 3)
    1940:	ec217fa8 	stc	15, cr7, [r1], #-672	; 0xfffffd60
    1944:	e4000006 	str	r0, [r0], #-6
    1948:	13000000 	movwne	r0, #0
    194c:	2200000b 	andcs	r0, r0, #11
    1950:	33010069 	movwcc	r0, #4201	; 0x1069
    1954:	0000006c 	andeq	r0, r0, ip, rrx
    1958:	00749102 	rsbseq	r9, r4, r2, lsl #2
    195c:	0007e823 	andeq	lr, r7, r3, lsr #16
    1960:	0000a000 	andeq	sl, r0, r0
    1964:	00692200 	rsbeq	r2, r9, r0, lsl #4
    1968:	006c4701 	rsbeq	r4, ip, r1, lsl #14
    196c:	91020000 	mrsls	r0, (UNDEF: 2)
    1970:	0f000070 	svceq	0x00000070
    1974:	00089c04 	andeq	r9, r8, r4, lsl #24
    1978:	05cb0900 	strbeq	r0, [fp, #2304]	; 0x900
    197c:	0b400000 	bleq	1001984 <_end+0x1984>
    1980:	730a0000 	movwvc	r0, #40960	; 0xa000
    1984:	13000000 	movwne	r0, #0
    1988:	0ac50900 	beq	ff143d90 <__stack+0xf7143d98>
    198c:	0b500000 	bleq	1401994 <_end+0x401994>
    1990:	730a0000 	movwvc	r0, #40960	; 0xa000
    1994:	02000000 	andeq	r0, r0, #0
    1998:	957f2400 	ldrbls	r2, [pc, #-1024]!	; 15a0 <__swbuf_r+0x5c>
    199c:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
    19a0:	000005ac 	andeq	r0, r0, ip, lsr #11
    19a4:	00000018 	andeq	r0, r0, r8, lsl r0
    19a8:	92249c01 	eorls	r9, r4, #256	; 0x100
    19ac:	01000095 	swpeq	r0, r5, [r0]	; <UNPREDICTABLE>
    19b0:	00056809 	andeq	r6, r5, r9, lsl #16
    19b4:	00004400 	andeq	r4, r0, r0, lsl #8
    19b8:	009c0100 	addseq	r0, ip, r0, lsl #2
    19bc:	00000022 	andeq	r0, r0, r2, lsr #32
    19c0:	05070002 	streq	r0, [r7, #-2]
    19c4:	01040000 	mrseq	r0, (UNDEF: 4)
    19c8:	00000854 	andeq	r0, r0, r4, asr r8
    19cc:	00000000 	andeq	r0, r0, r0
    19d0:	00000080 	andeq	r0, r0, r0, lsl #1
    19d4:	0000965a 	andeq	r9, r0, sl, asr r6
    19d8:	00009045 	andeq	r9, r0, r5, asr #32
    19dc:	00009666 	andeq	r9, r0, r6, ror #12
    19e0:	Address 0x000019e0 is out of bounds.


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
  38:	01130500 	tsteq	r3, r0, lsl #10
  3c:	0b0b0e03 	bleq	2c3850 <heap_size+0x2a3850>
  40:	0b3b0b3a 	bleq	ec2d30 <heap_size+0xea2d30>
  44:	00001301 	andeq	r1, r0, r1, lsl #6
  48:	03000d06 	movweq	r0, #3334	; 0xd06
  4c:	3813490e 	ldmdacc	r3, {r1, r2, r3, r8, fp, lr}
  50:	0019340b 	andseq	r3, r9, fp, lsl #8
  54:	000f0700 	andeq	r0, pc, r0, lsl #14
  58:	00000b0b 	andeq	r0, r0, fp, lsl #22
  5c:	03001608 	movweq	r1, #1544	; 0x608
  60:	3b0b3a0e 	blcc	2ce8a0 <heap_size+0x2ae8a0>
  64:	00134905 	andseq	r4, r3, r5, lsl #18
  68:	01170900 	tsteq	r7, r0, lsl #18
  6c:	0b3a0b0b 	bleq	e82ca0 <heap_size+0xe62ca0>
  70:	13010b3b 	movwne	r0, #6971	; 0x1b3b
  74:	0d0a0000 	stceq	0, cr0, [sl, #-0]
  78:	3a0e0300 	bcc	380c80 <heap_size+0x360c80>
  7c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  80:	0b000013 	bleq	d4 <_mainCRTStartup+0x4>
  84:	13490101 	movtne	r0, #37121	; 0x9101
  88:	00001301 	andeq	r1, r0, r1, lsl #6
  8c:	4900210c 	stmdbmi	r0, {r2, r3, r8, sp}
  90:	000b2f13 	andeq	r2, fp, r3, lsl pc
  94:	01130d00 	tsteq	r3, r0, lsl #26
  98:	0b3a0b0b 	bleq	e82ccc <heap_size+0xe62ccc>
  9c:	13010b3b 	movwne	r0, #6971	; 0x1b3b
  a0:	0d0e0000 	stceq	0, cr0, [lr, #-0]
  a4:	3a0e0300 	bcc	380cac <heap_size+0x360cac>
  a8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  ac:	000b3813 	andeq	r3, fp, r3, lsl r8
  b0:	000d0f00 	andeq	r0, sp, r0, lsl #30
  b4:	0b3a0803 	bleq	e820c8 <heap_size+0xe620c8>
  b8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  bc:	00000b38 	andeq	r0, r0, r8, lsr fp
  c0:	0b000f10 	bleq	3d08 <__bss_end__+0x518>
  c4:	0013490b 	andseq	r4, r3, fp, lsl #18
  c8:	01131100 	tsteq	r3, r0, lsl #2
  cc:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
  d0:	0b3b0b3a 	bleq	ec2dc0 <heap_size+0xea2dc0>
  d4:	00001301 	andeq	r1, r0, r1, lsl #6
  d8:	03000d12 	movweq	r0, #3346	; 0xd12
  dc:	3b0b3a0e 	blcc	2ce91c <heap_size+0x2ae91c>
  e0:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
  e4:	13000005 	movwne	r0, #5
  e8:	19270015 	stmdbne	r7!, {r0, r2, r4}
  ec:	26140000 	ldrcs	r0, [r4], -r0
  f0:	00134900 	andseq	r4, r3, r0, lsl #18
  f4:	01131500 	tsteq	r3, r0, lsl #10
  f8:	0b0b0e03 	bleq	2c390c <heap_size+0x2a390c>
  fc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 100:	00001301 	andeq	r1, r0, r1, lsl #6
 104:	03000d16 	movweq	r0, #3350	; 0xd16
 108:	3b0b3a0e 	blcc	2ce948 <heap_size+0x2ae948>
 10c:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 110:	1700000b 	strne	r0, [r0, -fp]
 114:	0803000d 	stmdaeq	r3, {r0, r2, r3}
 118:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 11c:	0b381349 	bleq	e04e48 <heap_size+0xde4e48>
 120:	15180000 	ldrne	r0, [r8, #-0]
 124:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
 128:	00130113 	andseq	r0, r3, r3, lsl r1
 12c:	00051900 	andeq	r1, r5, r0, lsl #18
 130:	00001349 	andeq	r1, r0, r9, asr #6
 134:	0300131a 	movweq	r1, #794	; 0x31a
 138:	00193c0e 	andseq	r3, r9, lr, lsl #24
 13c:	01151b00 	tsteq	r5, r0, lsl #22
 140:	13011927 	movwne	r1, #6439	; 0x1927
 144:	341c0000 	ldrcc	r0, [ip], #-0
 148:	3a0e0300 	bcc	380d50 <heap_size+0x360d50>
 14c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 150:	3c193f13 	ldccc	15, cr3, [r9], {19}
 154:	1d000019 	stcne	0, cr0, [r0, #-100]	; 0xffffff9c
 158:	13490035 	movtne	r0, #36917	; 0x9035
 15c:	341e0000 	ldrcc	r0, [lr], #-0
 160:	3a0e0300 	bcc	380d68 <heap_size+0x360d68>
 164:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 168:	3c193f13 	ldccc	15, cr3, [r9], {19}
 16c:	1f000019 	svcne	0x00000019
 170:	00000021 	andeq	r0, r0, r1, lsr #32
 174:	03003420 	movweq	r3, #1056	; 0x420
 178:	3b0b3a0e 	blcc	2ce9b8 <heap_size+0x2ae9b8>
 17c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 180:	21000018 	tstcs	r0, r8, lsl r0
 184:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
 188:	0b3a0e03 	bleq	e8399c <heap_size+0xe6399c>
 18c:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
 190:	06120111 			; <UNDEFINED> instruction: 0x06120111
 194:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 198:	00130119 	andseq	r0, r3, r9, lsl r1
 19c:	00052200 	andeq	r2, r5, r0, lsl #4
 1a0:	0b3a0e03 	bleq	e839b4 <heap_size+0xe639b4>
 1a4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 1a8:	00001802 	andeq	r1, r0, r2, lsl #16
 1ac:	00001823 	andeq	r1, r0, r3, lsr #16
 1b0:	012e2400 			; <UNDEFINED> instruction: 0x012e2400
 1b4:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
 1b8:	0b3b0b3a 	bleq	ec2ea8 <heap_size+0xea2ea8>
 1bc:	13491927 	movtne	r1, #39207	; 0x9927
 1c0:	06120111 			; <UNDEFINED> instruction: 0x06120111
 1c4:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 1c8:	00130119 	andseq	r0, r3, r9, lsl r1
 1cc:	00052500 	andeq	r2, r5, r0, lsl #10
 1d0:	0b3a0803 	bleq	e821e4 <heap_size+0xe621e4>
 1d4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 1d8:	00001802 	andeq	r1, r0, r2, lsl #16
 1dc:	03003426 	movweq	r3, #1062	; 0x426
 1e0:	3b0b3a08 	blcc	2cea08 <heap_size+0x2aea08>
 1e4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 1e8:	27000018 	smladcs	r0, r8, r0, r0
 1ec:	1755010b 	ldrbne	r0, [r5, -fp, lsl #2]
 1f0:	2e280000 	cdpcs	0, 2, cr0, cr8, cr0, {0}
 1f4:	03193f01 	tsteq	r9, #1, 30
 1f8:	3b0b3a0e 	blcc	2cea38 <heap_size+0x2aea38>
 1fc:	3c13490b 			; <UNDEFINED> instruction: 0x3c13490b
 200:	00130119 	andseq	r0, r3, r9, lsl r1
 204:	012e2900 			; <UNDEFINED> instruction: 0x012e2900
 208:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
 20c:	0b3b0b3a 	bleq	ec2efc <heap_size+0xea2efc>
 210:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
 214:	2e2a0000 	cdpcs	0, 2, cr0, cr10, cr0, {0}
 218:	03193f01 	tsteq	r9, #1, 30
 21c:	3b0b3a0e 	blcc	2cea5c <heap_size+0x2aea5c>
 220:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 224:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 228:	96184006 	ldrls	r4, [r8], -r6
 22c:	00001942 	andeq	r1, r0, r2, asr #18
 230:	11010b2b 	tstne	r1, fp, lsr #22
 234:	01061201 	tsteq	r6, r1, lsl #4
 238:	2c000013 	stccs	0, cr0, [r0], {19}
 23c:	0111010b 	tsteq	r1, fp, lsl #2
 240:	00000612 	andeq	r0, r0, r2, lsl r6
 244:	01110100 	tsteq	r1, r0, lsl #2
 248:	0b130e25 	bleq	4c3ae4 <heap_size+0x4a3ae4>
 24c:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 250:	06120111 			; <UNDEFINED> instruction: 0x06120111
 254:	42991710 	addsmi	r1, r9, #16, 14	; 0x400000
 258:	02000017 	andeq	r0, r0, #23
 25c:	0b0b0024 	bleq	2c02f4 <heap_size+0x2a02f4>
 260:	0e030b3e 	vmoveq.16	d3[0], r0
 264:	16030000 	strne	r0, [r3], -r0
 268:	3a0e0300 	bcc	380e70 <heap_size+0x360e70>
 26c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 270:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
 274:	13490035 	movtne	r0, #36917	; 0x9035
 278:	24050000 	strcs	r0, [r5], #-0
 27c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 280:	0008030b 	andeq	r0, r8, fp, lsl #6
 284:	01130600 	tsteq	r3, r0, lsl #12
 288:	0b3a0b0b 	bleq	e82ebc <heap_size+0xe62ebc>
 28c:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 290:	0d070000 	stceq	0, cr0, [r7, #-0]
 294:	3a080300 	bcc	200e9c <heap_size+0x1e0e9c>
 298:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 29c:	000b3813 	andeq	r3, fp, r3, lsl r8
 2a0:	000d0800 	andeq	r0, sp, r0, lsl #16
 2a4:	0b3a0e03 	bleq	e83ab8 <heap_size+0xe63ab8>
 2a8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 2ac:	00000b38 	andeq	r0, r0, r8, lsr fp
 2b0:	3f012e09 	svccc	0x00012e09
 2b4:	3a0e0319 	bcc	380f20 <heap_size+0x360f20>
 2b8:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 2bc:	11134919 	tstne	r3, r9, lsl r9
 2c0:	40061201 	andmi	r1, r6, r1, lsl #4
 2c4:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 2c8:	00001301 	andeq	r1, r0, r1, lsl #6
 2cc:	0300050a 	movweq	r0, #1290	; 0x50a
 2d0:	3b0b3a0e 	blcc	2ceb10 <heap_size+0x2aeb10>
 2d4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 2d8:	0b000018 	bleq	340 <_read+0x114>
 2dc:	0111010b 	tsteq	r1, fp, lsl #2
 2e0:	13010612 	movwne	r0, #5650	; 0x1612
 2e4:	340c0000 	strcc	r0, [ip], #-0
 2e8:	3a080300 	bcc	200ef0 <heap_size+0x1e0ef0>
 2ec:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 2f0:	00180213 	andseq	r0, r8, r3, lsl r2
 2f4:	010b0d00 	tsteq	fp, r0, lsl #26
 2f8:	06120111 			; <UNDEFINED> instruction: 0x06120111
 2fc:	0f0e0000 	svceq	0x000e0000
 300:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 304:	0f000013 	svceq	0x00000013
 308:	08030005 	stmdaeq	r3, {r0, r2}
 30c:	0b3b0b3a 	bleq	ec2ffc <heap_size+0xea2ffc>
 310:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 314:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
 318:	03193f01 	tsteq	r9, #1, 30
 31c:	3b0b3a0e 	blcc	2ceb5c <heap_size+0x2aeb5c>
 320:	1119270b 	tstne	r9, fp, lsl #14
 324:	40061201 	andmi	r1, r6, r1, lsl #4
 328:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 32c:	01000000 	mrseq	r0, (UNDEF: 0)
 330:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 334:	0e030b13 	vmoveq.32	d3[0], r0
 338:	01110e1b 	tsteq	r1, fp, lsl lr
 33c:	17100612 			; <UNDEFINED> instruction: 0x17100612
 340:	00174299 	mulseq	r7, r9, r2
 344:	00240200 	eoreq	r0, r4, r0, lsl #4
 348:	0b3e0b0b 	bleq	f82f7c <heap_size+0xf62f7c>
 34c:	00000e03 	andeq	r0, r0, r3, lsl #28
 350:	03001603 	movweq	r1, #1539	; 0x603
 354:	3b0b3a0e 	blcc	2ceb94 <heap_size+0x2aeb94>
 358:	0013490b 	andseq	r4, r3, fp, lsl #18
 35c:	00240400 	eoreq	r0, r4, r0, lsl #8
 360:	0b3e0b0b 	bleq	f82f94 <heap_size+0xf62f94>
 364:	00000803 	andeq	r0, r0, r3, lsl #16
 368:	0b000f05 	bleq	3f84 <__bss_end__+0x794>
 36c:	0600000b 	streq	r0, [r0], -fp
 370:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 374:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 378:	00001349 	andeq	r1, r0, r9, asr #6
 37c:	0b011707 	bleq	45fa0 <heap_size+0x25fa0>
 380:	3b0b3a0b 	blcc	2cebb4 <heap_size+0x2aebb4>
 384:	0013010b 	andseq	r0, r3, fp, lsl #2
 388:	000d0800 	andeq	r0, sp, r0, lsl #16
 38c:	0b3a0e03 	bleq	e83ba0 <heap_size+0xe63ba0>
 390:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 394:	01090000 	mrseq	r0, (UNDEF: 9)
 398:	01134901 	tsteq	r3, r1, lsl #18
 39c:	0a000013 	beq	3f0 <Console+0x84>
 3a0:	13490021 	movtne	r0, #36897	; 0x9021
 3a4:	00000b2f 	andeq	r0, r0, pc, lsr #22
 3a8:	0b01130b 	bleq	44fdc <heap_size+0x24fdc>
 3ac:	3b0b3a0b 	blcc	2cebe0 <heap_size+0x2aebe0>
 3b0:	0013010b 	andseq	r0, r3, fp, lsl #2
 3b4:	000d0c00 	andeq	r0, sp, r0, lsl #24
 3b8:	0b3a0e03 	bleq	e83bcc <heap_size+0xe63bcc>
 3bc:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 3c0:	00000b38 	andeq	r0, r0, r8, lsr fp
 3c4:	0301130d 	movweq	r1, #4877	; 0x130d
 3c8:	3a0b0b0e 	bcc	2c3008 <heap_size+0x2a3008>
 3cc:	010b3b0b 	tsteq	fp, fp, lsl #22
 3d0:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 3d4:	0803000d 	stmdaeq	r3, {r0, r2, r3}
 3d8:	0b3b0b3a 	bleq	ec30c8 <heap_size+0xea30c8>
 3dc:	0b381349 	bleq	e05108 <heap_size+0xde5108>
 3e0:	0f0f0000 	svceq	0x000f0000
 3e4:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 3e8:	10000013 	andne	r0, r0, r3, lsl r0
 3ec:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 3f0:	0b3a050b 	bleq	e81824 <heap_size+0xe61824>
 3f4:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 3f8:	0d110000 	ldceq	0, cr0, [r1, #-0]
 3fc:	3a0e0300 	bcc	381004 <heap_size+0x361004>
 400:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 404:	00053813 	andeq	r3, r5, r3, lsl r8
 408:	00151200 	andseq	r1, r5, r0, lsl #4
 40c:	00001927 	andeq	r1, r0, r7, lsr #18
 410:	49002613 	stmdbmi	r0, {r0, r1, r4, r9, sl, sp}
 414:	14000013 	strne	r0, [r0], #-19	; 0xffffffed
 418:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 41c:	0b3a0b0b 	bleq	e83050 <heap_size+0xe63050>
 420:	1301053b 	movwne	r0, #5435	; 0x153b
 424:	0d150000 	ldceq	0, cr0, [r5, #-0]
 428:	3a0e0300 	bcc	381030 <heap_size+0x361030>
 42c:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 430:	000b3813 	andeq	r3, fp, r3, lsl r8
 434:	000d1600 	andeq	r1, sp, r0, lsl #12
 438:	0b3a0803 	bleq	e8244c <heap_size+0xe6244c>
 43c:	1349053b 	movtne	r0, #38203	; 0x953b
 440:	00000b38 	andeq	r0, r0, r8, lsr fp
 444:	27011517 	smladcs	r1, r7, r5, r1
 448:	01134919 	tsteq	r3, r9, lsl r9
 44c:	18000013 	stmdane	r0, {r0, r1, r4}
 450:	13490005 	movtne	r0, #36869	; 0x9005
 454:	13190000 	tstne	r9, #0
 458:	3c0e0300 	stccc	3, cr0, [lr], {-0}
 45c:	1a000019 	bne	4c8 <Zynq7000_UART_SENDCHAR+0x14>
 460:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
 464:	00001301 	andeq	r1, r0, r1, lsl #6
 468:	0300341b 	movweq	r3, #1051	; 0x41b
 46c:	3b0b3a0e 	blcc	2cecac <heap_size+0x2aecac>
 470:	3f134905 	svccc	0x00134905
 474:	00193c19 	andseq	r3, r9, r9, lsl ip
 478:	00351c00 	eorseq	r1, r5, r0, lsl #24
 47c:	00001349 	andeq	r1, r0, r9, asr #6
 480:	0300341d 	movweq	r3, #1053	; 0x41d
 484:	3b0b3a0e 	blcc	2cecc4 <heap_size+0x2aecc4>
 488:	3f13490b 	svccc	0x0013490b
 48c:	00193c19 	andseq	r3, r9, r9, lsl ip
 490:	00341e00 	eorseq	r1, r4, r0, lsl #28
 494:	0b3a0e03 	bleq	e83ca8 <heap_size+0xe63ca8>
 498:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 49c:	00001802 	andeq	r1, r0, r2, lsl #16
 4a0:	0300341f 	movweq	r3, #1055	; 0x41f
 4a4:	3b0b3a0e 	blcc	2cece4 <heap_size+0x2aece4>
 4a8:	3f13490b 	svccc	0x0013490b
 4ac:	00180219 	andseq	r0, r8, r9, lsl r2
 4b0:	012e2000 			; <UNDEFINED> instruction: 0x012e2000
 4b4:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
 4b8:	0b3b0b3a 	bleq	ec31a8 <heap_size+0xea31a8>
 4bc:	01111927 	tsteq	r1, r7, lsr #18
 4c0:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 4c4:	01194296 			; <UNDEFINED> instruction: 0x01194296
 4c8:	21000013 	tstcs	r0, r3, lsl r0
 4cc:	0111010b 	tsteq	r1, fp, lsl #2
 4d0:	13010612 	movwne	r0, #5650	; 0x1612
 4d4:	34220000 	strtcc	r0, [r2], #-0
 4d8:	3a080300 	bcc	2010e0 <heap_size+0x1e10e0>
 4dc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 4e0:	00180213 	andseq	r0, r8, r3, lsl r2
 4e4:	010b2300 	mrseq	r2, (UNDEF: 59)
 4e8:	06120111 			; <UNDEFINED> instruction: 0x06120111
 4ec:	2e240000 	cdpcs	0, 2, cr0, cr4, cr0, {0}
 4f0:	03193f00 	tsteq	r9, #0, 30
 4f4:	3b0b3a0e 	blcc	2ced34 <heap_size+0x2aed34>
 4f8:	1119270b 	tstne	r9, fp, lsl #14
 4fc:	40061201 	andmi	r1, r6, r1, lsl #4
 500:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 504:	01000000 	mrseq	r0, (UNDEF: 0)
 508:	06100011 			; <UNDEFINED> instruction: 0x06100011
 50c:	01120111 	tsteq	r2, r1, lsl r1
 510:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 514:	05130e25 	ldreq	r0, [r3, #-3621]	; 0xfffff1db
 518:	Address 0x00000518 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00000144 	andeq	r0, r0, r4, asr #2
  14:	0000032c 	andeq	r0, r0, ip, lsr #6
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	0c160002 	ldceq	0, cr0, [r6], {2}
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00000470 	andeq	r0, r0, r0, ror r4
  34:	000000f8 	strdeq	r0, [r0], -r8
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	0e490002 	cdpeq	0, 4, cr0, cr9, cr2, {0}
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	00000568 	andeq	r0, r0, r8, ror #10
  54:	0000033c 	andeq	r0, r0, ip, lsr r3
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	19bc0002 	ldmibne	ip!, {r1}
  68:	00040000 	andeq	r0, r4, r0
	...
  74:	00000080 	andeq	r0, r0, r0, lsl #1
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	0000011c 	andeq	r0, r0, ip, lsl r1
   4:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
   8:	000001f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
   c:	000001fc 	strdeq	r0, [r0], -ip
	...

Disassembly of section .debug_macro:

00000000 <.debug_macro>:
       0:	00020004 	andeq	r0, r2, r4
       4:	07000000 	streq	r0, [r0, -r0]
       8:	000001c1 	andeq	r0, r0, r1, asr #3
       c:	03010003 	movweq	r0, #4099	; 0x1003
      10:	1b050e01 	blne	14381c <heap_size+0x12381c>
      14:	00003653 	andeq	r3, r0, r3, asr r6
      18:	050f1d03 	streq	r1, [pc, #-3331]	; fffff31d <__stack+0xf7fff325>
      1c:	0016a108 	andseq	sl, r6, r8, lsl #2
      20:	100a0300 	andne	r0, sl, r0, lsl #6
      24:	683f0805 	ldmdavs	pc!, {r0, r2, fp}	; <UNPREDICTABLE>
      28:	0e030000 	cdpeq	0, 0, cr0, cr3, cr0, {0}
      2c:	0c090711 	stceq	7, cr0, [r9], {17}
      30:	07040000 	streq	r0, [r4, -r0]
      34:	00000c2b 	andeq	r0, r0, fp, lsr #24
      38:	120b0304 	andne	r0, fp, #4, 6	; 0x10000000
      3c:	5dd70205 	lfmpl	f0, 2, [r7, #20]
      40:	04030000 	streq	r0, [r3], #-0
      44:	0c6b0713 	stcleq	7, cr0, [fp], #-76	; 0xffffffb4
      48:	03040000 	movweq	r0, #16384	; 0x4000
      4c:	82071405 	andhi	r1, r7, #83886080	; 0x5000000
      50:	0400000c 	streq	r0, [r0], #-12
      54:	000cde07 	andeq	sp, ip, r7, lsl #28
      58:	1a070400 	bne	1c1060 <heap_size+0x1a1060>
      5c:	0400000d 	streq	r0, [r0], #-13
      60:	000d4e07 	andeq	r4, sp, r7, lsl #28
      64:	15230300 	strne	r0, [r3, #-768]!	; 0xfffffd00
      68:	6dbe2905 			; <UNDEFINED> instruction: 0x6dbe2905
      6c:	2b030000 	blcs	c0074 <heap_size+0xa0074>
      70:	0d640702 	stcleq	7, cr0, [r4, #-8]!
      74:	03040000 	movweq	r0, #16384	; 0x4000
      78:	bb07062d 	bllt	1c1934 <heap_size+0x1a1934>
      7c:	0400000d 	streq	r0, [r0], #-13
      80:	000e5207 	andeq	r5, lr, r7, lsl #4
      84:	24030400 	strcs	r0, [r3], #-1024	; 0xfffffc00
      88:	11a50706 			; <UNDEFINED> instruction: 0x11a50706
      8c:	05040000 	streq	r0, [r4, #-0]
      90:	008cd627 	addeq	sp, ip, r7, lsr #12
      94:	03280300 			; <UNDEFINED> instruction: 0x03280300
      98:	00129b07 	andseq	r9, r2, r7, lsl #22
      9c:	3c030400 	cfstrscc	mvf0, [r3], {-0}
      a0:	4a0b0507 	bmi	2c14c4 <heap_size+0x2a14c4>
      a4:	0300007c 	movweq	r0, #124	; 0x7c
      a8:	03040f0d 	movweq	r0, #20237	; 0x4f0d
      ac:	0304060e 	movweq	r0, #17934	; 0x460e
      b0:	1405050f 	strne	r0, [r5], #-1295	; 0xfffffaf1
      b4:	0000523d 	andeq	r5, r0, sp, lsr r2
      b8:	05161803 	ldreq	r1, [r6, #-2051]	; 0xfffff7fd
      bc:	00925a06 	addseq	r5, r2, r6, lsl #20
      c0:	19030400 	stmdbne	r3, {sl}
      c4:	12ab0704 	adcne	r0, fp, #4, 14	; 0x100000
      c8:	07040000 	streq	r0, [r4, -r0]
      cc:	000012fd 	strdeq	r1, [r0], -sp
      d0:	06019f03 	streq	r9, [r1], -r3, lsl #30
      d4:	00131c07 	andseq	r1, r3, r7, lsl #24
      d8:	5f070400 	svcpl	0x00070400
      dc:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
      e0:	00137f07 	andseq	r7, r3, r7, lsl #30
      e4:	3d030400 	cfstrscc	mvf0, [r3, #-0]
      e8:	15220717 	strne	r0, [r2, #-1815]!	; 0xfffff8e9
      ec:	3e030000 	cdpcc	0, 0, cr0, cr3, cr0, {0}
      f0:	40030406 	andmi	r0, r3, r6, lsl #8
      f4:	15320709 	ldrne	r0, [r2, #-1801]!	; 0xfffff8f7
      f8:	07040000 	streq	r0, [r4, -r0]
      fc:	0000159c 	muleq	r0, ip, r5
     100:	1801ef03 	stmdane	r1, {r0, r1, r8, r9, sl, fp, sp, lr, pc}
     104:	7ae41305 	bvc	ff904d20 <__stack+0xf7904d28>
     108:	03040000 	movweq	r0, #16384	; 0x4000
     10c:	041901f0 	ldreq	r0, [r9], #-496	; 0xfffffe10
     110:	6d01f406 	cfstrsvs	mvf15, [r1, #-24]	; 0xffffffe8
     114:	0400002c 	streq	r0, [r0], #-44	; 0xffffffd4
     118:	46994305 	ldrmi	r4, [r9], r5, lsl #6
     11c:	4f030000 	svcmi	0x00030000
     120:	1652071a 			; <UNDEFINED> instruction: 0x1652071a
     124:	07040000 	streq	r0, [r4, -r0]
     128:	00001668 	andeq	r1, r0, r8, ror #12
     12c:	1b020304 	blne	80d44 <heap_size+0x60d44>
     130:	0ad80805 	beq	ff60214c <__stack+0xf7602154>
     134:	0a030000 	beq	c013c <heap_size+0xa013c>
     138:	7c070413 	cfstrsvc	mvf0, [r7], {19}
     13c:	03000017 	movweq	r0, #23
     140:	92070610 	andls	r0, r7, #16, 12	; 0x1000000
     144:	04000017 	streq	r0, [r0], #-23	; 0xffffffe9
     148:	051c1403 	ldreq	r1, [ip, #-1027]	; 0xfffffbfd
     14c:	0012fe02 	andseq	pc, r2, r2, lsl #28
     150:	c7070400 	strgt	r0, [r7, -r0, lsl #8]
     154:	04000017 	streq	r0, [r0], #-23	; 0xffffffe9
     158:	07030303 	streq	r0, [r3, -r3, lsl #6]
     15c:	000017e9 	andeq	r1, r0, r9, ror #15
     160:	1d040304 	stcne	3, cr0, [r4, #-16]
     164:	26ae0205 	strtcs	r0, [lr], r5, lsl #4
     168:	04030000 	streq	r0, [r3], #-0
     16c:	183b070a 	ldmdane	fp!, {r1, r3, r8, r9, sl}
     170:	0e030000 	cdpeq	0, 0, cr0, cr3, cr0, {0}
     174:	17920706 	ldrne	r0, [r2, r6, lsl #14]
     178:	07040000 	streq	r0, [r4, -r0]
     17c:	00001851 	andeq	r1, r0, r1, asr r8
     180:	05030404 	streq	r0, [r3, #-1028]	; 0xfffffbfc
     184:	1d4f071e 	stclne	7, cr0, [pc, #-120]	; 114 <_mainCRTStartup+0x44>
     188:	09030000 	stmdbeq	r3, {}	; <UNPREDICTABLE>
     18c:	1d5f070b 	ldclne	7, cr0, [pc, #-44]	; 168 <_write+0x24>
     190:	04040000 	streq	r0, [r4], #-0
     194:	070c0603 	streq	r0, [ip, -r3, lsl #12]
     198:	00001fa0 	andeq	r1, r0, r0, lsr #31
     19c:	0d070304 	stceq	3, cr0, [r7, #-16]
     1a0:	64160205 	ldrvs	r0, [r6], #-517	; 0xfffffdfb
     1a4:	04030000 	streq	r0, [r3], #-0
     1a8:	200b031f 	andcs	r0, fp, pc, lsl r3
     1ac:	00203407 	eoreq	r3, r0, r7, lsl #8
     1b0:	0d050400 	cfstrseq	mvf0, [r5, #-0]
     1b4:	00003fbb 			; <UNDEFINED> instruction: 0x00003fbb
     1b8:	23820704 	orrcs	r0, r2, #4, 14	; 0x100000
     1bc:	04040000 	streq	r0, [r4], #-0
     1c0:	00000400 	andeq	r0, r0, r0, lsl #8
     1c4:	05540005 	ldrbeq	r0, [r4, #-5]
     1c8:	00050000 	andeq	r0, r5, r0
     1cc:	0000660a 	andeq	r6, r0, sl, lsl #12
     1d0:	5c870005 	stcpl	0, cr0, [r7], {5}
     1d4:	00050000 	andeq	r0, r5, r0
     1d8:	00009354 	andeq	r9, r0, r4, asr r3
     1dc:	926d0005 	rsbls	r0, sp, #5
     1e0:	00050000 	andeq	r0, r5, r0
     1e4:	00001fe0 	andeq	r1, r0, r0, ror #31
     1e8:	55080005 	strpl	r0, [r8, #-5]
     1ec:	00050000 	andeq	r0, r5, r0
     1f0:	00004439 	andeq	r4, r0, r9, lsr r4
     1f4:	19e10005 	stmibne	r1!, {r0, r2}^
     1f8:	00050000 	andeq	r0, r5, r0
     1fc:	0000407d 	andeq	r4, r0, sp, ror r0
     200:	48150005 	ldmdami	r5, {r0, r2}
     204:	00050000 	andeq	r0, r5, r0
     208:	00007948 	andeq	r7, r0, r8, asr #18
     20c:	80f40005 	rscshi	r0, r4, r5
     210:	00050000 	andeq	r0, r5, r0
     214:	0000703b 	andeq	r7, r0, fp, lsr r0
     218:	0e260005 	cdpeq	0, 2, cr0, cr6, cr5, {0}
     21c:	00050000 	andeq	r0, r5, r0
     220:	00000753 	andeq	r0, r0, r3, asr r7
     224:	2c940005 	ldccs	0, cr0, [r4], {5}
     228:	00050000 	andeq	r0, r5, r0
     22c:	00007e44 	andeq	r7, r0, r4, asr #28
     230:	8e500005 	cdphi	0, 5, cr0, cr0, cr5, {0}
     234:	00050000 	andeq	r0, r5, r0
     238:	00007497 	muleq	r0, r7, r4
     23c:	8cfa0005 	ldclhi	0, cr0, [sl], #20
     240:	00050000 	andeq	r0, r5, r0
     244:	00002aae 	andeq	r2, r0, lr, lsr #21
     248:	558e0005 	strpl	r0, [lr, #5]
     24c:	00050000 	andeq	r0, r5, r0
     250:	000011db 	ldrdeq	r1, [r0], -fp
     254:	28cc0005 	stmiacs	ip, {r0, r2}^
     258:	00050000 	andeq	r0, r5, r0
     25c:	00006c8e 	andeq	r6, r0, lr, lsl #25
     260:	40630005 	rsbmi	r0, r3, r5
     264:	00050000 	andeq	r0, r5, r0
     268:	00003269 	andeq	r3, r0, r9, ror #4
     26c:	00b20005 	adcseq	r0, r2, r5
     270:	00050000 	andeq	r0, r5, r0
     274:	00006396 	muleq	r0, r6, r3
     278:	8e930005 	cdphi	0, 9, cr0, cr3, cr5, {0}
     27c:	00050000 	andeq	r0, r5, r0
     280:	0000842f 	andeq	r8, r0, pc, lsr #8
     284:	06c20005 	strbeq	r0, [r2], r5
     288:	00050000 	andeq	r0, r5, r0
     28c:	00002e4b 	andeq	r2, r0, fp, asr #28
     290:	55a80005 	strpl	r0, [r8, #5]!
     294:	00050000 	andeq	r0, r5, r0
     298:	00001bce 	andeq	r1, r0, lr, asr #23
     29c:	8fc70005 	svchi	0x00c70005
     2a0:	00050000 	andeq	r0, r5, r0
     2a4:	000062ab 	andeq	r6, r0, fp, lsr #5
     2a8:	0e970005 	cdpeq	0, 9, cr0, cr7, cr5, {0}
     2ac:	00050000 	andeq	r0, r5, r0
     2b0:	000079ce 	andeq	r7, r0, lr, asr #19
     2b4:	385c0005 	ldmdacc	ip, {r0, r2}^
     2b8:	00050000 	andeq	r0, r5, r0
     2bc:	00006e0d 	andeq	r6, r0, sp, lsl #28
     2c0:	85c00005 	strbhi	r0, [r0, #5]
     2c4:	00050000 	andeq	r0, r5, r0
     2c8:	0000120a 	andeq	r1, r0, sl, lsl #4
     2cc:	16af0005 	strtne	r0, [pc], r5
     2d0:	00050000 	andeq	r0, r5, r0
     2d4:	00002504 	andeq	r2, r0, r4, lsl #10
     2d8:	06460005 	strbeq	r0, [r6], -r5
     2dc:	00050000 	andeq	r0, r5, r0
     2e0:	00004ab6 			; <UNDEFINED> instruction: 0x00004ab6
     2e4:	81500005 	cmphi	r0, r5
     2e8:	00050000 	andeq	r0, r5, r0
     2ec:	00000b99 	muleq	r0, r9, fp
     2f0:	0fe70005 	svceq	0x00e70005
     2f4:	00050000 	andeq	r0, r5, r0
     2f8:	00008f06 	andeq	r8, r0, r6, lsl #30
     2fc:	92ce0005 	sbcls	r0, lr, #5
     300:	00050000 	andeq	r0, r5, r0
     304:	00007eca 	andeq	r7, r0, sl, asr #29
     308:	81750005 	cmnhi	r5, r5
     30c:	00050000 	andeq	r0, r5, r0
     310:	00005c01 	andeq	r5, r0, r1, lsl #24
     314:	487e0005 	ldmdami	lr!, {r0, r2}^
     318:	00050000 	andeq	r0, r5, r0
     31c:	000070ca 	andeq	r7, r0, sl, asr #1
     320:	40e40005 	rscmi	r0, r4, r5
     324:	00050000 	andeq	r0, r5, r0
     328:	00001b4e 	andeq	r1, r0, lr, asr #22
     32c:	0dd10005 	ldcleq	0, cr0, [r1, #20]
     330:	00050000 	andeq	r0, r5, r0
     334:	00006d21 	andeq	r6, r0, r1, lsr #26
     338:	4dd40005 	ldclmi	0, cr0, [r4, #20]
     33c:	00050000 	andeq	r0, r5, r0
     340:	00000894 	muleq	r0, r4, r8
     344:	701d0005 	andsvc	r0, sp, r5
     348:	00050000 	andeq	r0, r5, r0
     34c:	00003ea3 	andeq	r3, r0, r3, lsr #29
     350:	567e0005 	ldrbtpl	r0, [lr], -r5
     354:	00050000 	andeq	r0, r5, r0
     358:	00004a75 	andeq	r4, r0, r5, ror sl
     35c:	3d6c0005 	stclcc	0, cr0, [ip, #-20]!	; 0xffffffec
     360:	00050000 	andeq	r0, r5, r0
     364:	00000c64 	andeq	r0, r0, r4, ror #24
     368:	4a5e0005 	bmi	1780384 <_end+0x780384>
     36c:	00050000 	andeq	r0, r5, r0
     370:	000031e5 	andeq	r3, r0, r5, ror #3
     374:	65cf0005 	strbvs	r0, [pc, #5]	; 381 <Console+0x15>
     378:	00050000 	andeq	r0, r5, r0
     37c:	00006914 	andeq	r6, r0, r4, lsl r9
     380:	3b2e0005 	blcc	b8039c <heap_size+0xb6039c>
     384:	00050000 	andeq	r0, r5, r0
     388:	00002404 	andeq	r2, r0, r4, lsl #8
     38c:	3a060005 	bcc	1803a8 <heap_size+0x1603a8>
     390:	00050000 	andeq	r0, r5, r0
     394:	00000416 	andeq	r0, r0, r6, lsl r4
     398:	4ebb0005 	cdpmi	0, 11, cr0, cr11, cr5, {0}
     39c:	00050000 	andeq	r0, r5, r0
     3a0:	0000404a 	andeq	r4, r0, sl, asr #32
     3a4:	085d0005 	ldmdaeq	sp, {r0, r2}^
     3a8:	00050000 	andeq	r0, r5, r0
     3ac:	00003642 	andeq	r3, r0, r2, asr #12
     3b0:	769a0005 	ldrvc	r0, [sl], r5
     3b4:	00050000 	andeq	r0, r5, r0
     3b8:	00006750 	andeq	r6, r0, r0, asr r7
     3bc:	600c0005 	andvs	r0, ip, r5
     3c0:	00050000 	andeq	r0, r5, r0
     3c4:	00005884 	andeq	r5, r0, r4, lsl #17
     3c8:	22d30005 	sbcscs	r0, r3, #5
     3cc:	00050000 	andeq	r0, r5, r0
     3d0:	000029c8 	andeq	r2, r0, r8, asr #19
     3d4:	75db0005 	ldrbvc	r0, [fp, #5]
     3d8:	00050000 	andeq	r0, r5, r0
     3dc:	00004d60 	andeq	r4, r0, r0, ror #26
     3e0:	33f00005 	mvnscc	r0, #5
     3e4:	00050000 	andeq	r0, r5, r0
     3e8:	00005caf 	andeq	r5, r0, pc, lsr #25
     3ec:	43700005 	cmnmi	r0, #5
     3f0:	00050000 	andeq	r0, r5, r0
     3f4:	000002c2 	andeq	r0, r0, r2, asr #5
     3f8:	6d430005 	stclvs	0, cr0, [r3, #-20]	; 0xffffffec
     3fc:	00050000 	andeq	r0, r5, r0
     400:	00006b0e 	andeq	r6, r0, lr, lsl #22
     404:	4ba40005 	blmi	fe900420 <__stack+0xf6900428>
     408:	00050000 	andeq	r0, r5, r0
     40c:	00002ff2 	strdeq	r2, [r0], -r2	; <UNPREDICTABLE>
     410:	3d0b0005 	stccc	0, cr0, [fp, #-20]	; 0xffffffec
     414:	00050000 	andeq	r0, r5, r0
     418:	00001977 	andeq	r1, r0, r7, ror r9
     41c:	7ef20005 	cdpvc	0, 15, cr0, cr2, cr5, {0}
     420:	00050000 	andeq	r0, r5, r0
     424:	000089b2 			; <UNDEFINED> instruction: 0x000089b2
     428:	94440005 	strbls	r0, [r4], #-5
     42c:	00050000 	andeq	r0, r5, r0
     430:	00000e01 	andeq	r0, r0, r1, lsl #28
     434:	94600005 	strbtls	r0, [r0], #-5
     438:	00050000 	andeq	r0, r5, r0
     43c:	0000184b 	andeq	r1, r0, fp, asr #16
     440:	483d0005 	ldmdami	sp!, {r0, r2}
     444:	00050000 	andeq	r0, r5, r0
     448:	000012c7 	andeq	r1, r0, r7, asr #5
     44c:	7dae0005 	stcvc	0, cr0, [lr, #20]!
     450:	00050000 	andeq	r0, r5, r0
     454:	00000b44 	andeq	r0, r0, r4, asr #22
     458:	4bb60005 	blmi	fed80474 <__stack+0xf6d8047c>
     45c:	00050000 	andeq	r0, r5, r0
     460:	000052f9 	strdeq	r5, [r0], -r9
     464:	48be0005 	ldmmi	lr!, {r0, r2}
     468:	00050000 	andeq	r0, r5, r0
     46c:	0000416a 	andeq	r4, r0, sl, ror #2
     470:	719b0005 	orrsvc	r0, fp, r5
     474:	00050000 	andeq	r0, r5, r0
     478:	000043b9 			; <UNDEFINED> instruction: 0x000043b9
     47c:	85040005 	strhi	r0, [r4, #-5]
     480:	00050000 	andeq	r0, r5, r0
     484:	0000257a 	andeq	r2, r0, sl, ror r5
     488:	29ac0005 	stmibcs	ip!, {r0, r2}
     48c:	00050000 	andeq	r0, r5, r0
     490:	00000fbb 			; <UNDEFINED> instruction: 0x00000fbb
     494:	6c2a0005 	stcvs	0, cr0, [sl], #-20	; 0xffffffec
     498:	00050000 	andeq	r0, r5, r0
     49c:	000041b0 			; <UNDEFINED> instruction: 0x000041b0
     4a0:	18200005 	stmdane	r0!, {r0, r2}
     4a4:	00050000 	andeq	r0, r5, r0
     4a8:	00003290 	muleq	r0, r0, r2
     4ac:	1da90005 	stcne	0, cr0, [r9, #20]!
     4b0:	00050000 	andeq	r0, r5, r0
     4b4:	0000201b 	andeq	r2, r0, fp, lsl r0
     4b8:	021f0005 	andseq	r0, pc, #5
     4bc:	00050000 	andeq	r0, r5, r0
     4c0:	000008d4 	ldrdeq	r0, [r0], -r4
     4c4:	72c00005 	sbcvc	r0, r0, #5
     4c8:	00050000 	andeq	r0, r5, r0
     4cc:	000040cc 	andeq	r4, r0, ip, asr #1
     4d0:	0d430005 	stcleq	0, cr0, [r3, #-20]	; 0xffffffec
     4d4:	00050000 	andeq	r0, r5, r0
     4d8:	00003c3d 	andeq	r3, r0, sp, lsr ip
     4dc:	4f6b0005 	svcmi	0x006b0005
     4e0:	00050000 	andeq	r0, r5, r0
     4e4:	00004d9a 	muleq	r0, sl, sp
     4e8:	74ab0005 	strtvc	r0, [fp], #5
     4ec:	00050000 	andeq	r0, r5, r0
     4f0:	00008ad7 	ldrdeq	r8, [r0], -r7
     4f4:	570a0005 	strpl	r0, [sl, -r5]
     4f8:	00050000 	andeq	r0, r5, r0
     4fc:	00006423 	andeq	r6, r0, r3, lsr #8
     500:	80950005 	addshi	r0, r5, r5
     504:	00050000 	andeq	r0, r5, r0
     508:	00004614 	andeq	r4, r0, r4, lsl r6
     50c:	1d5a0005 	ldclne	0, cr0, [sl, #-20]	; 0xffffffec
     510:	00050000 	andeq	r0, r5, r0
     514:	000087bc 			; <UNDEFINED> instruction: 0x000087bc
     518:	33b60005 			; <UNDEFINED> instruction: 0x33b60005
     51c:	00050000 	andeq	r0, r5, r0
     520:	00008c3a 	andeq	r8, r0, sl, lsr ip
     524:	345a0005 	ldrbcc	r0, [sl], #-5
     528:	00050000 	andeq	r0, r5, r0
     52c:	00003030 	andeq	r3, r0, r0, lsr r0
     530:	0c9c0005 	ldceq	0, cr0, [ip], {5}
     534:	00050000 	andeq	r0, r5, r0
     538:	00003244 	andeq	r3, r0, r4, asr #4
     53c:	21c80005 	biccs	r0, r8, r5
     540:	00050000 	andeq	r0, r5, r0
     544:	0000194a 	andeq	r1, r0, sl, asr #18
     548:	029f0005 	addseq	r0, pc, #5
     54c:	00050000 	andeq	r0, r5, r0
     550:	00006de9 	andeq	r6, r0, r9, ror #27
     554:	4a920005 	bmi	fe480570 <__stack+0xf6480578>
     558:	00050000 	andeq	r0, r5, r0
     55c:	0000812c 	andeq	r8, r0, ip, lsr #2
     560:	287c0005 	ldmdacs	ip!, {r0, r2}^
     564:	00050000 	andeq	r0, r5, r0
     568:	0000935f 	andeq	r9, r0, pc, asr r3
     56c:	8d470005 	stclhi	0, cr0, [r7, #-20]	; 0xffffffec
     570:	00050000 	andeq	r0, r5, r0
     574:	000008fd 	strdeq	r0, [r0], -sp
     578:	3f740005 	svccc	0x00740005
     57c:	00050000 	andeq	r0, r5, r0
     580:	00008d95 	muleq	r0, r5, sp
     584:	7ca60005 	stcvc	0, cr0, [r6], #20
     588:	00050000 	andeq	r0, r5, r0
     58c:	0000846c 	andeq	r8, r0, ip, ror #8
     590:	21710005 	cmncs	r1, r5
     594:	00050000 	andeq	r0, r5, r0
     598:	00002974 	andeq	r2, r0, r4, ror r9
     59c:	06870005 	streq	r0, [r7], r5
     5a0:	00050000 	andeq	r0, r5, r0
     5a4:	00002c7d 	andeq	r2, r0, sp, ror ip
     5a8:	56370005 	ldrtpl	r0, [r7], -r5
     5ac:	00050000 	andeq	r0, r5, r0
     5b0:	00007fe1 	andeq	r7, r0, r1, ror #31
     5b4:	013d0005 	teqeq	sp, r5
     5b8:	00050000 	andeq	r0, r5, r0
     5bc:	00004539 	andeq	r4, r0, r9, lsr r5
     5c0:	5e050005 	cdppl	0, 0, cr0, cr5, cr5, {0}
     5c4:	00050000 	andeq	r0, r5, r0
     5c8:	00000bd8 	ldrdeq	r0, [r0], -r8
     5cc:	8a390005 	bhi	e405e8 <heap_size+0xe205e8>
     5d0:	00050000 	andeq	r0, r5, r0
     5d4:	000069f9 	strdeq	r6, [r0], -r9
     5d8:	629b0005 	addsvs	r0, fp, #5
     5dc:	00050000 	andeq	r0, r5, r0
     5e0:	00002158 	andeq	r2, r0, r8, asr r1
     5e4:	8a510005 	bhi	1440600 <_end+0x440600>
     5e8:	00050000 	andeq	r0, r5, r0
     5ec:	000074cb 	andeq	r7, r0, fp, asr #9
     5f0:	85680005 	strbhi	r0, [r8, #-5]!
     5f4:	00050000 	andeq	r0, r5, r0
     5f8:	00001c10 	andeq	r1, r0, r0, lsl ip
     5fc:	362a0005 	strtcc	r0, [sl], -r5
     600:	00050000 	andeq	r0, r5, r0
     604:	0000206b 	andeq	r2, r0, fp, rrx
     608:	446c0005 	strbtmi	r0, [ip], #-5
     60c:	00050000 	andeq	r0, r5, r0
     610:	0000338d 	andeq	r3, r0, sp, lsl #7
     614:	4d330005 	ldcmi	0, cr0, [r3, #-20]!	; 0xffffffec
     618:	00050000 	andeq	r0, r5, r0
     61c:	000058cd 	andeq	r5, r0, sp, asr #17
     620:	8c500005 	mrrchi	0, 0, r0, r0, cr5	; <UNPREDICTABLE>
     624:	00050000 	andeq	r0, r5, r0
     628:	000068af 	andeq	r6, r0, pc, lsr #17
     62c:	1b380005 	blne	e00648 <heap_size+0xde0648>
     630:	00050000 	andeq	r0, r5, r0
     634:	0000012d 	andeq	r0, r0, sp, lsr #2
     638:	20e90005 	rsccs	r0, r9, r5
     63c:	00050000 	andeq	r0, r5, r0
     640:	00001227 	andeq	r1, r0, r7, lsr #4
     644:	05be0005 	ldreq	r0, [lr, #5]!
     648:	00050000 	andeq	r0, r5, r0
     64c:	000057f7 	strdeq	r5, [r0], -r7
     650:	2d7c0005 	ldclcs	0, cr0, [ip, #-20]!	; 0xffffffec
     654:	00050000 	andeq	r0, r5, r0
     658:	00005ae6 	andeq	r5, r0, r6, ror #21
     65c:	71fc0005 	mvnsvc	r0, r5
     660:	00050000 	andeq	r0, r5, r0
     664:	000018c9 	andeq	r1, r0, r9, asr #17
     668:	90fc0005 	rscsls	r0, ip, r5
     66c:	00050000 	andeq	r0, r5, r0
     670:	00006143 	andeq	r6, r0, r3, asr #2
     674:	03ae0005 			; <UNDEFINED> instruction: 0x03ae0005
     678:	00050000 	andeq	r0, r5, r0
     67c:	00008794 	muleq	r0, r4, r7
     680:	024b0005 	subeq	r0, fp, #5
     684:	00050000 	andeq	r0, r5, r0
     688:	000036d2 	ldrdeq	r3, [r0], -r2
     68c:	7b210005 	blvc	8406a8 <heap_size+0x8206a8>
     690:	00050000 	andeq	r0, r5, r0
     694:	00000477 	andeq	r0, r0, r7, ror r4
     698:	59d50005 	ldmibpl	r5, {r0, r2}^
     69c:	00050000 	andeq	r0, r5, r0
     6a0:	00005e67 	andeq	r5, r0, r7, ror #28
     6a4:	807c0005 	rsbshi	r0, ip, r5
     6a8:	00050000 	andeq	r0, r5, r0
     6ac:	00006a81 	andeq	r6, r0, r1, lsl #21
     6b0:	56e10005 	strbtpl	r0, [r1], r5
     6b4:	00050000 	andeq	r0, r5, r0
     6b8:	0000680d 	andeq	r6, r0, sp, lsl #16
     6bc:	868f0005 	strhi	r0, [pc], r5
     6c0:	00050000 	andeq	r0, r5, r0
     6c4:	00008d21 	andeq	r8, r0, r1, lsr #26
     6c8:	658f0005 	strvs	r0, [pc, #5]	; 6d5 <main+0x111>
     6cc:	00050000 	andeq	r0, r5, r0
     6d0:	000030ff 	strdeq	r3, [r0], -pc	; <UNPREDICTABLE>
     6d4:	35c10005 	strbcc	r0, [r1, #5]
     6d8:	00050000 	andeq	r0, r5, r0
     6dc:	00000e85 	andeq	r0, r0, r5, lsl #29
     6e0:	7c590005 	mrrcvc	0, 0, r0, r9, cr5
     6e4:	00050000 	andeq	r0, r5, r0
     6e8:	00008b01 	andeq	r8, r0, r1, lsl #22
     6ec:	1b080005 	blne	200708 <heap_size+0x1e0708>
     6f0:	00050000 	andeq	r0, r5, r0
     6f4:	00000e6b 	andeq	r0, r0, fp, ror #28
     6f8:	37ff0005 	ldrbcc	r0, [pc, r5]!
     6fc:	00050000 	andeq	r0, r5, r0
     700:	00000f3b 	andeq	r0, r0, fp, lsr pc
     704:	8e160005 	cdphi	0, 1, cr0, cr6, cr5, {0}
     708:	00050000 	andeq	r0, r5, r0
     70c:	00004624 	andeq	r4, r0, r4, lsr #12
     710:	119c0005 	orrsne	r0, ip, r5
     714:	00050000 	andeq	r0, r5, r0
     718:	00001dc6 	andeq	r1, r0, r6, asr #27
     71c:	17840005 	strne	r0, [r4, r5]
     720:	00050000 	andeq	r0, r5, r0
     724:	000083e0 	andeq	r8, r0, r0, ror #7
     728:	8a6c0005 	bhi	1b00744 <_end+0xb00744>
     72c:	00050000 	andeq	r0, r5, r0
     730:	0000513c 	andeq	r5, r0, ip, lsr r1
     734:	53c80005 	bicpl	r0, r8, #5
     738:	00050000 	andeq	r0, r5, r0
     73c:	0000321f 	andeq	r3, r0, pc, lsl r2
     740:	86110005 	ldrhi	r0, [r1], -r5
     744:	00050000 	andeq	r0, r5, r0
     748:	00002399 	muleq	r0, r9, r3
     74c:	34f90005 	ldrbtcc	r0, [r9], #5
     750:	00050000 	andeq	r0, r5, r0
     754:	00003f5e 	andeq	r3, r0, lr, asr pc
     758:	09140005 	ldmdbeq	r4, {r0, r2}
     75c:	00050000 	andeq	r0, r5, r0
     760:	0000586e 	andeq	r5, r0, lr, ror #16
     764:	7d970005 	ldcvc	0, cr0, [r7, #20]
     768:	00050000 	andeq	r0, r5, r0
     76c:	0000729a 	muleq	r0, sl, r2
     770:	538c0005 	orrpl	r0, ip, #5
     774:	00050000 	andeq	r0, r5, r0
     778:	00005cc7 	andeq	r5, r0, r7, asr #25
     77c:	0c4d0005 	mcrreq	0, 0, r0, sp, cr5
     780:	00050000 	andeq	r0, r5, r0
     784:	000005e3 	andeq	r0, r0, r3, ror #11
     788:	34980005 	ldrcc	r0, [r8], #5
     78c:	00050000 	andeq	r0, r5, r0
     790:	00008027 	andeq	r8, r0, r7, lsr #32
     794:	2ad80005 	bcs	ff6007b0 <__stack+0xf76007b8>
     798:	00050000 	andeq	r0, r5, r0
     79c:	00008e6c 	andeq	r8, r0, ip, ror #28
     7a0:	88b00005 	ldmhi	r0!, {r0, r2}
     7a4:	00050000 	andeq	r0, r5, r0
     7a8:	00002c06 	andeq	r2, r0, r6, lsl #24
     7ac:	286a0005 	stmdacs	sl!, {r0, r2}^
     7b0:	00050000 	andeq	r0, r5, r0
     7b4:	0000516d 	andeq	r5, r0, sp, ror #2
     7b8:	8cae0005 	stchi	0, cr0, [lr], #20
     7bc:	00050000 	andeq	r0, r5, r0
     7c0:	000080d8 	ldrdeq	r8, [r0], -r8	; <UNPREDICTABLE>
     7c4:	821c0005 	andshi	r0, ip, #5
     7c8:	00050000 	andeq	r0, r5, r0
     7cc:	00008ac4 	andeq	r8, r0, r4, asr #21
     7d0:	0b770005 	bleq	1dc07ec <_end+0xdc07ec>
     7d4:	00050000 	andeq	r0, r5, r0
     7d8:	00005a8d 	andeq	r5, r0, sp, lsl #21
     7dc:	6c5d0005 	mrrcvs	0, 0, r0, sp, cr5
     7e0:	00050000 	andeq	r0, r5, r0
     7e4:	00003c55 	andeq	r3, r0, r5, asr ip
     7e8:	32e00005 	rsccc	r0, r0, #5
     7ec:	00050000 	andeq	r0, r5, r0
     7f0:	0000387c 	andeq	r3, r0, ip, ror r8
     7f4:	457c0005 	ldrbmi	r0, [ip, #-5]!
     7f8:	00050000 	andeq	r0, r5, r0
     7fc:	000035a6 	andeq	r3, r0, r6, lsr #11
     800:	901a0005 	andsls	r0, sl, r5
     804:	00050000 	andeq	r0, r5, r0
     808:	00004652 	andeq	r4, r0, r2, asr r6
     80c:	21a30005 			; <UNDEFINED> instruction: 0x21a30005
     810:	00050000 	andeq	r0, r5, r0
     814:	00006ca8 	andeq	r6, r0, r8, lsr #25
     818:	4e7a0005 	cdpmi	0, 7, cr0, cr10, cr5, {0}
     81c:	00050000 	andeq	r0, r5, r0
     820:	00004ad6 	ldrdeq	r4, [r0], -r6
     824:	1df40005 	ldclne	0, cr0, [r4, #20]!
     828:	00050000 	andeq	r0, r5, r0
     82c:	00002690 	muleq	r0, r0, r6
     830:	444c0005 	strbmi	r0, [ip], #-5
     834:	00050000 	andeq	r0, r5, r0
     838:	00000095 	muleq	r0, r5, r0
     83c:	38970005 	ldmcc	r7, {r0, r2}
     840:	00050000 	andeq	r0, r5, r0
     844:	000073f5 	strdeq	r7, [r0], -r5
     848:	6f630005 	svcvs	0x00630005
     84c:	00050000 	andeq	r0, r5, r0
     850:	00006361 	andeq	r6, r0, r1, ror #6
     854:	67050005 	strvs	r0, [r5, -r5]
     858:	00050000 	andeq	r0, r5, r0
     85c:	00006287 	andeq	r6, r0, r7, lsl #5
     860:	29990005 	ldmibcs	r9, {r0, r2}
     864:	00050000 	andeq	r0, r5, r0
     868:	00006f26 	andeq	r6, r0, r6, lsr #30
     86c:	91ad0005 			; <UNDEFINED> instruction: 0x91ad0005
     870:	00050000 	andeq	r0, r5, r0
     874:	00003c1e 	andeq	r3, r0, lr, lsl ip
     878:	6a0e0005 	bvs	380894 <heap_size+0x360894>
     87c:	00050000 	andeq	r0, r5, r0
     880:	00000572 	andeq	r0, r0, r2, ror r5
     884:	3df80005 	ldclcc	0, cr0, [r8, #20]!
     888:	00050000 	andeq	r0, r5, r0
     88c:	00003e4a 	andeq	r3, r0, sl, asr #28
     890:	888f0005 	stmhi	pc, {r0, r2}	; <UNPREDICTABLE>
     894:	00050000 	andeq	r0, r5, r0
     898:	00004527 	andeq	r4, r0, r7, lsr #10
     89c:	23870005 	orrcs	r0, r7, #5
     8a0:	00050000 	andeq	r0, r5, r0
     8a4:	0000226b 	andeq	r2, r0, fp, ror #4
     8a8:	42310005 	eorsmi	r0, r1, #5
     8ac:	00050000 	andeq	r0, r5, r0
     8b0:	00003ddc 	ldrdeq	r3, [r0], -ip
     8b4:	016f0005 	cmneq	pc, r5
     8b8:	00050000 	andeq	r0, r5, r0
     8bc:	00006ed9 	ldrdeq	r6, [r0], -r9
     8c0:	01020005 	tsteq	r2, r5
     8c4:	00050000 	andeq	r0, r5, r0
     8c8:	00004b24 	andeq	r4, r0, r4, lsr #22
     8cc:	4c850005 	stcmi	0, cr0, [r5], {5}
     8d0:	00050000 	andeq	r0, r5, r0
     8d4:	00004130 	andeq	r4, r0, r0, lsr r1
     8d8:	42850005 	addmi	r0, r5, #5
     8dc:	00050000 	andeq	r0, r5, r0
     8e0:	0000840e 	andeq	r8, r0, lr, lsl #8
     8e4:	85800005 	strhi	r0, [r0, #5]
     8e8:	00050000 	andeq	r0, r5, r0
     8ec:	00003a3d 	andeq	r3, r0, sp, lsr sl
     8f0:	00620005 	rsbeq	r0, r2, r5
     8f4:	00050000 	andeq	r0, r5, r0
     8f8:	00000182 	andeq	r0, r0, r2, lsl #3
     8fc:	3e8e0005 	cdpcc	0, 8, cr0, cr14, cr5, {0}
     900:	00050000 	andeq	r0, r5, r0
     904:	00001fc0 	andeq	r1, r0, r0, asr #31
     908:	08b70005 	ldmeq	r7!, {r0, r2}
     90c:	00050000 	andeq	r0, r5, r0
     910:	000051b0 			; <UNDEFINED> instruction: 0x000051b0
     914:	7d280005 	stcvc	0, cr0, [r8, #-20]!	; 0xffffffec
     918:	00050000 	andeq	r0, r5, r0
     91c:	00004d76 	andeq	r4, r0, r6, ror sp
     920:	07650005 	strbeq	r0, [r5, -r5]!
     924:	00050000 	andeq	r0, r5, r0
     928:	00000012 	andeq	r0, r0, r2, lsl r0
     92c:	309d0005 	addscc	r0, sp, r5
     930:	00050000 	andeq	r0, r5, r0
     934:	0000319e 	muleq	r0, lr, r1
     938:	51c30005 	bicpl	r0, r3, r5
     93c:	00050000 	andeq	r0, r5, r0
     940:	00003ce1 	andeq	r3, r0, r1, ror #25
     944:	30110005 	andscc	r0, r1, r5
     948:	00050000 	andeq	r0, r5, r0
     94c:	00008d5c 	andeq	r8, r0, ip, asr sp
     950:	625e0005 	subsvs	r0, lr, #5
     954:	00050000 	andeq	r0, r5, r0
     958:	00000d8c 	andeq	r0, r0, ip, lsl #27
     95c:	05fe0005 	ldrbeq	r0, [lr, #5]!
     960:	00050000 	andeq	r0, r5, r0
     964:	00002c2f 	andeq	r2, r0, pc, lsr #24
     968:	688c0005 	stmvs	ip, {r0, r2}
     96c:	00050000 	andeq	r0, r5, r0
     970:	000069e4 	andeq	r6, r0, r4, ror #19
     974:	23310005 	teqcs	r1, #5
     978:	00050000 	andeq	r0, r5, r0
     97c:	0000126d 	andeq	r1, r0, sp, ror #4
     980:	556d0005 	strbpl	r0, [sp, #-5]!
     984:	00050000 	andeq	r0, r5, r0
     988:	0000117c 	andeq	r1, r0, ip, ror r1
     98c:	1e8c0005 	cdpne	0, 8, cr0, cr12, cr5, {0}
     990:	00050000 	andeq	r0, r5, r0
     994:	00006247 	andeq	r6, r0, r7, asr #4
     998:	87ae0005 	strhi	r0, [lr, r5]!
     99c:	00050000 	andeq	r0, r5, r0
     9a0:	000033d7 	ldrdeq	r3, [r0], -r7
     9a4:	4f9d0005 	svcmi	0x009d0005
     9a8:	00050000 	andeq	r0, r5, r0
     9ac:	000008a8 	andeq	r0, r0, r8, lsr #17
     9b0:	6a400005 	bvs	10009cc <_end+0x9cc>
     9b4:	00050000 	andeq	r0, r5, r0
     9b8:	0000737b 	andeq	r7, r0, fp, ror r3
     9bc:	8e020005 	cdphi	0, 0, cr0, cr2, cr5, {0}
     9c0:	00050000 	andeq	r0, r5, r0
     9c4:	00003235 	andeq	r3, r0, r5, lsr r2
     9c8:	6ad20005 	bvs	ff4809e4 <__stack+0xf74809ec>
     9cc:	00050000 	andeq	r0, r5, r0
     9d0:	00001cf4 	strdeq	r1, [r0], -r4
     9d4:	50720005 	rsbspl	r0, r2, r5
     9d8:	00050000 	andeq	r0, r5, r0
     9dc:	00005bf1 	strdeq	r5, [r0], -r1
     9e0:	53360005 	teqpl	r6, #5
     9e4:	00050000 	andeq	r0, r5, r0
     9e8:	00007078 	andeq	r7, r0, r8, ror r0
     9ec:	224c0005 	subcs	r0, ip, #5
     9f0:	00050000 	andeq	r0, r5, r0
     9f4:	0000604e 	andeq	r6, r0, lr, asr #32
     9f8:	48e40005 	stmiami	r4!, {r0, r2}^
     9fc:	00050000 	andeq	r0, r5, r0
     a00:	00003e80 	andeq	r3, r0, r0, lsl #29
     a04:	6f7a0005 	svcvs	0x007a0005
     a08:	00050000 	andeq	r0, r5, r0
     a0c:	000005d4 	ldrdeq	r0, [r0], -r4
     a10:	06f40005 	ldrbteq	r0, [r4], r5
     a14:	00050000 	andeq	r0, r5, r0
     a18:	000071ed 	andeq	r7, r0, sp, ror #3
     a1c:	73570005 	cmpvc	r7, #5
     a20:	00050000 	andeq	r0, r5, r0
     a24:	00008602 	andeq	r8, r0, r2, lsl #12
     a28:	87650005 	strbhi	r0, [r5, -r5]!
     a2c:	00050000 	andeq	r0, r5, r0
     a30:	00008867 	andeq	r8, r0, r7, ror #16
     a34:	91890005 	orrls	r0, r9, r5
     a38:	00050000 	andeq	r0, r5, r0
     a3c:	00001ade 	ldrdeq	r1, [r0], -lr
     a40:	34340005 	ldrtcc	r0, [r4], #-5
     a44:	00050000 	andeq	r0, r5, r0
     a48:	00000628 	andeq	r0, r0, r8, lsr #12
     a4c:	76d30005 	ldrbvc	r0, [r3], r5
     a50:	00050000 	andeq	r0, r5, r0
     a54:	00001b6f 	andeq	r1, r0, pc, ror #22
     a58:	1d2b0005 	stcne	0, cr0, [fp, #-20]!	; 0xffffffec
     a5c:	00050000 	andeq	r0, r5, r0
     a60:	00005e2d 	andeq	r5, r0, sp, lsr #28
     a64:	1e220005 	cdpne	0, 2, cr0, cr2, cr5, {0}
     a68:	00050000 	andeq	r0, r5, r0
     a6c:	00005f46 	andeq	r5, r0, r6, asr #30
     a70:	8a810005 	bhi	fe040a8c <__stack+0xf6040a94>
     a74:	00050000 	andeq	r0, r5, r0
     a78:	0000086f 	andeq	r0, r0, pc, ror #16
     a7c:	3d3d0005 	ldccc	0, cr0, [sp, #-20]!	; 0xffffffec
     a80:	00050000 	andeq	r0, r5, r0
     a84:	0000518b 	andeq	r5, r0, fp, lsl #3
     a88:	5e420005 	cdppl	0, 4, cr0, cr2, cr5, {0}
     a8c:	00050000 	andeq	r0, r5, r0
     a90:	00006b9d 	muleq	r0, sp, fp
     a94:	1ff60005 	svcne	0x00f60005
     a98:	00050000 	andeq	r0, r5, r0
     a9c:	00004664 	andeq	r4, r0, r4, ror #12
     aa0:	0db30005 	ldceq	0, cr0, [r3, #20]!
     aa4:	00050000 	andeq	r0, r5, r0
     aa8:	00005f12 	andeq	r5, r0, r2, lsl pc
     aac:	382d0005 	stmdacc	sp!, {r0, r2}
     ab0:	00050000 	andeq	r0, r5, r0
     ab4:	00008268 	andeq	r8, r0, r8, ror #4
     ab8:	63260005 			; <UNDEFINED> instruction: 0x63260005
     abc:	00050000 	andeq	r0, r5, r0
     ac0:	000059b8 			; <UNDEFINED> instruction: 0x000059b8
     ac4:	39710005 	ldmdbcc	r1!, {r0, r2}^
     ac8:	00050000 	andeq	r0, r5, r0
     acc:	000066e6 	andeq	r6, r0, r6, ror #13
     ad0:	24e00005 	strbtcs	r0, [r0], #5
     ad4:	00050000 	andeq	r0, r5, r0
     ad8:	00005763 	andeq	r5, r0, r3, ror #14
     adc:	3d7f0005 	ldclcc	0, cr0, [pc, #-20]!	; ad0 <_fiprintf_r+0x4>
     ae0:	00050000 	andeq	r0, r5, r0
     ae4:	00000fcb 	andeq	r0, r0, fp, asr #31
     ae8:	4b0f0005 	blmi	3c0b04 <heap_size+0x3a0b04>
     aec:	00050000 	andeq	r0, r5, r0
     af0:	000049e2 	andeq	r4, r0, r2, ror #19
     af4:	829c0005 	addshi	r0, ip, #5
     af8:	00050000 	andeq	r0, r5, r0
     afc:	0000610f 	andeq	r6, r0, pc, lsl #2
     b00:	419b0005 	orrsmi	r0, fp, r5
     b04:	00050000 	andeq	r0, r5, r0
     b08:	00004a4a 	andeq	r4, r0, sl, asr #20
     b0c:	61230006 			; <UNDEFINED> instruction: 0x61230006
     b10:	00050000 	andeq	r0, r5, r0
     b14:	000041ed 	andeq	r4, r0, sp, ror #3
     b18:	26bf0006 	ldrtcs	r0, [pc], r6
     b1c:	00050000 	andeq	r0, r5, r0
     b20:	00004425 	andeq	r4, r0, r5, lsr #8
     b24:	1a9f0005 	bne	fe7c0b40 <__stack+0xf67c0b48>
     b28:	00050000 	andeq	r0, r5, r0
     b2c:	0000890e 	andeq	r8, r0, lr, lsl #18
     b30:	25930006 	ldrcs	r0, [r3, #6]
     b34:	00050000 	andeq	r0, r5, r0
     b38:	00004fe0 	andeq	r4, r0, r0, ror #31
     b3c:	717f0005 	cmnvc	pc, r5
     b40:	00050000 	andeq	r0, r5, r0
     b44:	00007466 	andeq	r7, r0, r6, ror #8
     b48:	2dee0005 	stclcs	0, cr0, [lr, #20]!
     b4c:	00050000 	andeq	r0, r5, r0
     b50:	0000246a 	andeq	r2, r0, sl, ror #8
     b54:	89e20005 	stmibhi	r2!, {r0, r2}^
     b58:	00050000 	andeq	r0, r5, r0
     b5c:	00004707 	andeq	r4, r0, r7, lsl #14
     b60:	00750005 	rsbseq	r0, r5, r5
     b64:	00060000 	andeq	r0, r6, r0
     b68:	00006af0 	strdeq	r6, [r0], -r0
     b6c:	777d0006 	ldrbvc	r0, [sp, -r6]!
     b70:	00060000 	andeq	r0, r6, r0
     b74:	00004c79 	andeq	r4, r0, r9, ror ip
     b78:	942d0005 	strtls	r0, [sp], #-5
     b7c:	00050000 	andeq	r0, r5, r0
     b80:	00000e37 	andeq	r0, r0, r7, lsr lr
     b84:	738b0005 	orrvc	r0, fp, #5
     b88:	00050000 	andeq	r0, r5, r0
     b8c:	00003044 	andeq	r3, r0, r4, asr #32
     b90:	75b00006 	ldrvc	r0, [r0, #6]!
     b94:	00060000 	andeq	r0, r6, r0
     b98:	000025bb 			; <UNDEFINED> instruction: 0x000025bb
     b9c:	20aa0006 	adccs	r0, sl, r6
     ba0:	00060000 	andeq	r0, r6, r0
     ba4:	000061d6 	ldrdeq	r6, [r0], -r6	; <UNPREDICTABLE>
     ba8:	75530006 	ldrbvc	r0, [r3, #-6]
     bac:	00060000 	andeq	r0, r6, r0
     bb0:	000016d2 	ldrdeq	r1, [r0], -r2
     bb4:	7ba90006 	blvc	fea40bd4 <__stack+0xf6a40bdc>
     bb8:	00060000 	andeq	r0, r6, r0
     bbc:	000036e3 	andeq	r3, r0, r3, ror #13
     bc0:	89630006 	stmdbhi	r3!, {r1, r2}^
     bc4:	00050000 	andeq	r0, r5, r0
     bc8:	000044ea 	andeq	r4, r0, sl, ror #9
     bcc:	7a140005 	bvc	500be8 <heap_size+0x4e0be8>
     bd0:	00050000 	andeq	r0, r5, r0
     bd4:	0000038e 	andeq	r0, r0, lr, lsl #7
     bd8:	18590005 	ldmdane	r9, {r0, r2}^
     bdc:	00060000 	andeq	r0, r6, r0
     be0:	00003fa5 	andeq	r3, r0, r5, lsr #31
     be4:	592b0006 	stmdbpl	fp!, {r1, r2}
     be8:	00060000 	andeq	r0, r6, r0
     bec:	00001710 	andeq	r1, r0, r0, lsl r7
     bf0:	31cd0005 	biccc	r0, sp, r5
     bf4:	00050000 	andeq	r0, r5, r0
     bf8:	000056b0 			; <UNDEFINED> instruction: 0x000056b0
     bfc:	07390005 	ldreq	r0, [r9, -r5]!
     c00:	00050000 	andeq	r0, r5, r0
     c04:	00005961 	andeq	r5, r0, r1, ror #18
     c08:	00000400 	andeq	r0, r0, r0, lsl #8
     c0c:	43ec0405 	mvnmi	r0, #83886080	; 0x5000000
     c10:	06050000 	streq	r0, [r5], -r0
     c14:	000001a3 	andeq	r0, r0, r3, lsr #3
     c18:	456f0705 	strbmi	r0, [pc, #-1797]!	; 51b <Zynq7000_UART_GETCHAR+0x23>
     c1c:	08050000 	stmdaeq	r5, {}	; <UNPREDICTABLE>
     c20:	00002d94 	muleq	r0, r4, sp
     c24:	35d80905 	ldrbcc	r0, [r8, #2309]	; 0x905
     c28:	04000000 	streq	r0, [r0], #-0
     c2c:	22050000 	andcs	r0, r5, #0
     c30:	00003484 	andeq	r3, r0, r4, lsl #9
     c34:	0bef2805 	bleq	ffbcac50 <__stack+0xf7bcac58>
     c38:	32050000 	andcc	r0, r5, #0
     c3c:	00002b6d 	andeq	r2, r0, sp, ror #22
     c40:	2f523605 	svccs	0x00523605
     c44:	39050000 	stmdbcc	r5, {}	; <UNPREDICTABLE>
     c48:	00004156 	andeq	r4, r0, r6, asr r1
     c4c:	665a3c05 	ldrbvs	r3, [sl], -r5, lsl #24
     c50:	3f050000 	svccc	0x00050000
     c54:	00009315 	andeq	r9, r0, r5, lsl r3
     c58:	44a34e05 	strtmi	r4, [r3], #3589	; 0xe05
     c5c:	51050000 	mrspl	r0, (UNDEF: 5)
     c60:	0000548e 	andeq	r5, r0, lr, lsl #9
     c64:	69925905 	ldmibvs	r2, {r0, r2, r8, fp, ip, lr}
     c68:	04000000 	streq	r0, [r0], #-0
     c6c:	4d050000 	stcmi	0, cr0, [r5, #-0]
     c70:	000053eb 	andeq	r5, r0, fp, ror #7
     c74:	2e175205 	cdpcs	2, 1, cr5, cr7, cr5, {0}
     c78:	c8050000 	stmdagt	r5, {}	; <UNPREDICTABLE>
     c7c:	00872503 	addeq	r2, r7, r3, lsl #10
     c80:	00040000 	andeq	r0, r4, r0
     c84:	11160500 	tstne	r6, r0, lsl #10
     c88:	05000077 	streq	r0, [r0, #-119]	; 0xffffff89
     c8c:	00652221 	rsbeq	r2, r5, r1, lsr #4
     c90:	a4280500 	strtge	r0, [r8], #-1280	; 0xfffffb00
     c94:	0500007a 	streq	r0, [r0, #-122]	; 0xffffff86
     c98:	5e1a01f9 	mrcpl	1, 0, r0, cr10, cr9, {7}
     c9c:	ff050000 			; <UNDEFINED> instruction: 0xff050000
     ca0:	000a1c01 	andeq	r1, sl, r1, lsl #24
     ca4:	02850500 	addeq	r0, r5, #0, 10
     ca8:	00007543 	andeq	r7, r0, r3, asr #10
     cac:	a9028d05 	stmdbge	r2, {r0, r2, r8, sl, fp, pc}
     cb0:	05000066 	streq	r0, [r0, #-102]	; 0xffffff9a
     cb4:	5c990295 	lfmpl	f0, 4, [r9], {149}	; 0x95
     cb8:	9b050000 	blls	140cc0 <heap_size+0x120cc0>
     cbc:	0001d802 	andeq	sp, r1, r2, lsl #16
     cc0:	02ab0500 	adceq	r0, fp, #0, 10
     cc4:	00008922 	andeq	r8, r0, r2, lsr #18
     cc8:	0d02b105 	stfeqd	f3, [r2, #-20]	; 0xffffffec
     ccc:	0500003b 	streq	r0, [r0, #-59]	; 0xffffffc5
     cd0:	65bf02bf 	ldrvs	r0, [pc, #703]!	; f97 <_vfiprintf_r+0x1e7>
     cd4:	ca050000 	bgt	140cdc <heap_size+0x120cdc>
     cd8:	0076f302 	rsbseq	pc, r6, r2, lsl #6
     cdc:	00040000 	andeq	r0, r4, r0
     ce0:	01dc0500 	bicseq	r0, ip, r0, lsl #10
     ce4:	000055cf 	andeq	r5, r0, pc, asr #11
     ce8:	8101e206 	tsthi	r1, r6, lsl #4
     cec:	05000068 	streq	r0, [r0, #-104]	; 0xffffff98
     cf0:	1d3b01e6 	ldfnes	f0, [fp, #-920]!	; 0xfffffc68
     cf4:	f6050000 			; <UNDEFINED> instruction: 0xf6050000
     cf8:	005fe201 	subseq	lr, pc, r1, lsl #4
     cfc:	01fa0500 	mvnseq	r0, r0, lsl #10
     d00:	00003a16 	andeq	r3, r0, r6, lsl sl
     d04:	47028105 	strmi	r8, [r2, -r5, lsl #2]
     d08:	0500006f 	streq	r0, [r0, #-111]	; 0xffffff91
     d0c:	05860287 	streq	r0, [r6, #647]	; 0x287
     d10:	94050000 	strls	r0, [r5], #-0
     d14:	006dff02 	rsbeq	pc, sp, r2, lsl #30
     d18:	00040000 	andeq	r0, r4, r0
     d1c:	461f0500 	ldrmi	r0, [pc], -r0, lsl #10
     d20:	05000054 	streq	r0, [r0, #-84]	; 0xffffffac
     d24:	0046c520 	subeq	ip, r6, r0, lsr #10
     d28:	b6210500 	strtlt	r0, [r1], -r0, lsl #10
     d2c:	0500007b 	streq	r0, [r0, #-123]	; 0xffffff85
     d30:	00574a25 	subseq	r4, r7, r5, lsr #20
     d34:	1b2b0500 	blne	ac213c <heap_size+0xaa213c>
     d38:	05000083 	streq	r0, [r0, #-131]	; 0xffffff7d
     d3c:	00792545 	rsbseq	r2, r9, r5, asr #10
     d40:	1a490500 	bne	1242148 <_end+0x242148>
     d44:	0500000d 	streq	r0, [r0, #-13]
     d48:	0086cd4a 	addeq	ip, r6, sl, asr #26
     d4c:	00040000 	andeq	r0, r4, r0
     d50:	e41f0500 	ldr	r0, [pc], #-1280	; d58 <__sfputc_r+0x14>
     d54:	0500000a 	streq	r0, [r0, #-10]
     d58:	003cac21 	eorseq	sl, ip, r1, lsr #24
     d5c:	ef220500 	svc	0x00220500
     d60:	0000006b 	andeq	r0, r0, fp, rrx
     d64:	05000004 	streq	r0, [r0, #-4]
     d68:	006cf406 	rsbeq	pc, ip, r6, lsl #8
     d6c:	fb0f0500 	blx	3c2176 <heap_size+0x3a2176>
     d70:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
     d74:	008c871a 	addeq	r8, ip, sl, lsl r7
     d78:	a3210500 			; <UNDEFINED> instruction: 0xa3210500
     d7c:	0500007e 	streq	r0, [r0, #-126]	; 0xffffff82
     d80:	006afa2f 	rsbeq	pc, sl, pc, lsr #20
     d84:	673d0500 	ldrvs	r0, [sp, -r0, lsl #10]!
     d88:	05000031 	streq	r0, [r0, #-49]	; 0xffffffcf
     d8c:	00830653 	addeq	r0, r3, r3, asr r6
     d90:	726d0500 	rsbvc	r0, sp, #0, 10
     d94:	05000037 	streq	r0, [r0, #-55]	; 0xffffffc9
     d98:	64c2018c 	strbvs	r0, [r2], #396	; 0x18c
     d9c:	a6050000 	strge	r0, [r5], -r0
     da0:	004ca301 	subeq	sl, ip, r1, lsl #6
     da4:	01bc0500 			; <UNDEFINED> instruction: 0x01bc0500
     da8:	000039cd 	andeq	r3, r0, sp, asr #19
     dac:	6001ce05 	andvs	ip, r1, r5, lsl #28
     db0:	06000053 			; <UNDEFINED> instruction: 0x06000053
     db4:	582901f4 	stmdapl	r9!, {r2, r4, r5, r6, r7, r8}
     db8:	04000000 	streq	r0, [r0], #-0
     dbc:	bb050000 	bllt	140dc4 <heap_size+0x120dc4>
     dc0:	00546c01 	subseq	r6, r4, r1, lsl #24
     dc4:	01bc0500 			; <UNDEFINED> instruction: 0x01bc0500
     dc8:	00008e87 	andeq	r8, r0, r7, lsl #29
     dcc:	c901bd05 	stmdbgt	r1, {r0, r2, r8, sl, fp, ip, sp, pc}
     dd0:	0500006a 	streq	r0, [r0, #-106]	; 0xffffff96
     dd4:	4d2401be 	stfmis	f0, [r4, #-760]!	; 0xfffffd08
     dd8:	bf050000 	svclt	0x00050000
     ddc:	00174b01 	andseq	r4, r7, r1, lsl #22
     de0:	01c00500 	biceq	r0, r0, r0, lsl #10
     de4:	0000640d 	andeq	r6, r0, sp, lsl #8
     de8:	7201c105 	andvc	ip, r1, #1073741825	; 0x40000001
     dec:	05000062 	streq	r0, [r0, #-98]	; 0xffffff9e
     df0:	566a01c2 	strbtpl	r0, [sl], -r2, asr #3
     df4:	c3050000 	movwgt	r0, #20480	; 0x5000
     df8:	00566601 	subseq	r6, r6, r1, lsl #12
     dfc:	01c40500 	biceq	r0, r4, r0, lsl #10
     e00:	00000eb3 			; <UNDEFINED> instruction: 0x00000eb3
     e04:	2c01c505 	cfstr32cs	mvfx12, [r1], {5}
     e08:	0500000a 	streq	r0, [r0, #-10]
     e0c:	0eaf01c6 	fdveq<illegal precision>m	f0, f7, f6
     e10:	c7050000 	strgt	r0, [r5, -r0]
     e14:	001e5e01 	andseq	r5, lr, r1, lsl #28
     e18:	01c80500 	biceq	r0, r8, r0, lsl #10
     e1c:	000038cf 	andeq	r3, r0, pc, asr #17
     e20:	c501c905 	strgt	ip, [r1, #-2309]	; 0xfffff6fb
     e24:	0500006a 	streq	r0, [r0, #-106]	; 0xffffff96
     e28:	79c501ca 	stmibvc	r5, {r1, r3, r6, r7, r8}^
     e2c:	d2050000 	andle	r0, r5, #0
     e30:	0023fa01 	eoreq	pc, r3, r1, lsl #20
     e34:	01ee0600 	mvneq	r0, r0, lsl #12
     e38:	00003e3c 	andeq	r3, r0, ip, lsr lr
     e3c:	fe039106 	cdp2	1, 0, cr9, cr3, cr6, {0}
     e40:	0500004f 	streq	r0, [r0, #-79]	; 0xffffffb1
     e44:	6c4c0396 	mcrrvs	3, 9, r0, ip, cr6
     e48:	9c060000 	stcls	0, cr0, [r6], {-0}
     e4c:	004ff703 	subeq	pc, pc, r3, lsl #14
     e50:	00040000 	andeq	r0, r4, r0
     e54:	ec2f0500 	cfstr32	mvfx0, [pc], #-0	; e5c <_vfiprintf_r+0xac>
     e58:	0500005f 	streq	r0, [r0, #-95]	; 0xffffffa1
     e5c:	0063ab30 	rsbeq	sl, r3, r0, lsr fp
     e60:	f3310500 	vrshl.u64	d0, d0, d1
     e64:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
     e68:	004c4034 	subeq	r4, ip, r4, lsr r0
     e6c:	5d370500 	cfldr32pl	mvfx0, [r7, #-0]
     e70:	0500005c 	streq	r0, [r0, #-92]	; 0xffffffa4
     e74:	001c6638 	andseq	r6, ip, r8, lsr r6
     e78:	483a0500 	ldmdami	sl!, {r8, sl}
     e7c:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
     e80:	0041423b 	subeq	r4, r1, fp, lsr r2
     e84:	213c0500 	teqcs	ip, r0, lsl #10
     e88:	0500007e 	streq	r0, [r0, #-126]	; 0xffffff82
     e8c:	0026313d 	eoreq	r3, r6, sp, lsr r1
     e90:	40400500 	submi	r0, r0, r0, lsl #10
     e94:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
     e98:	000b3741 	andeq	r3, fp, r1, asr #14
     e9c:	79420500 	stmdbvc	r2, {r8, sl}^
     ea0:	05000042 	streq	r0, [r0, #-66]	; 0xffffffbe
     ea4:	005a114c 	subseq	r1, sl, ip, asr #2
     ea8:	e14f0500 	cmp	pc, r0, lsl #10
     eac:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
     eb0:	00562455 	subseq	r2, r6, r5, asr r4
     eb4:	515c0500 	cmppl	ip, r0, lsl #10
     eb8:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
     ebc:	0053295d 	subseq	r2, r3, sp, asr r9
     ec0:	17690500 	strbne	r0, [r9, -r0, lsl #10]!
     ec4:	0500003f 	streq	r0, [r0, #-63]	; 0xffffffc1
     ec8:	0078b76a 	rsbseq	fp, r8, sl, ror #14
     ecc:	de6e0500 	cdple	5, 6, cr0, cr14, cr0, {0}
     ed0:	05000006 	streq	r0, [r0, #-6]
     ed4:	0025266f 	eoreq	r2, r5, pc, ror #12
     ed8:	5a700500 	bpl	1c022e0 <_end+0xc022e0>
     edc:	0500002a 	streq	r0, [r0, #-42]	; 0xffffffd6
     ee0:	004f4073 	subeq	r4, pc, r3, ror r0	; <UNPREDICTABLE>
     ee4:	93760500 	cmnls	r6, #0, 10
     ee8:	05000004 	streq	r0, [r0, #-4]
     eec:	004c067d 	subeq	r0, ip, sp, ror r6
     ef0:	ac7e0500 	cfldr64ge	mvdx0, [lr], #-0
     ef4:	05000053 	streq	r0, [r0, #-83]	; 0xffffffad
     ef8:	004e5d7f 	subeq	r5, lr, pc, ror sp
     efc:	01830500 	orreq	r0, r3, r0, lsl #10
     f00:	00005eda 	ldrdeq	r5, [r0], -sl
     f04:	d4018a05 	strle	r8, [r1], #-2565	; 0xfffff5fb
     f08:	0500003a 	streq	r0, [r0, #-58]	; 0xffffffc6
     f0c:	37a3018e 	strcc	r0, [r3, lr, lsl #3]!
     f10:	8f050000 	svchi	0x00050000
     f14:	00764a01 	rsbseq	r4, r6, r1, lsl #20
     f18:	01920500 	orrseq	r0, r2, r0, lsl #10
     f1c:	000038ab 	andeq	r3, r0, fp, lsr #17
     f20:	18019505 	stmdane	r1, {r0, r2, r8, sl, ip, pc}
     f24:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
     f28:	19c80196 	stmibne	r8, {r1, r2, r4, r7, r8}^
     f2c:	97050000 	strls	r0, [r5, -r0]
     f30:	007bc001 	rsbseq	ip, fp, r1
     f34:	01990500 	orrseq	r0, r9, r0, lsl #10
     f38:	00007cb5 			; <UNDEFINED> instruction: 0x00007cb5
     f3c:	20019a05 	andcs	r9, r1, r5, lsl #20
     f40:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
     f44:	5945019c 	stmdbpl	r5, {r2, r3, r4, r7, r8}^
     f48:	9e050000 	cdpls	0, 0, cr0, cr5, cr0, {0}
     f4c:	00852801 	addeq	r2, r5, r1, lsl #16
     f50:	01af0500 			; <UNDEFINED> instruction: 0x01af0500
     f54:	00000881 	andeq	r0, r0, r1, lsl #17
     f58:	ac01b005 	stcge	0, cr11, [r1], {5}
     f5c:	05000064 	streq	r0, [r0, #-100]	; 0xffffff9c
     f60:	8a1c01b1 	bhi	70162c <heap_size+0x6e162c>
     f64:	b2050000 	andlt	r0, r5, #0
     f68:	008f7201 	addeq	r7, pc, r1, lsl #4
     f6c:	01b30500 			; <UNDEFINED> instruction: 0x01b30500
     f70:	00007253 	andeq	r7, r0, r3, asr r2
     f74:	e201b505 	and	fp, r1, #20971520	; 0x1400000
     f78:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
     f7c:	76e301b6 			; <UNDEFINED> instruction: 0x76e301b6
     f80:	b7050000 	strlt	r0, [r5, -r0]
     f84:	00938a01 	addseq	r8, r3, r1, lsl #20
     f88:	01ef0500 	mvneq	r0, r0, lsl #10
     f8c:	00002609 	andeq	r2, r0, r9, lsl #12
     f90:	8601fc05 	strhi	pc, [r1], -r5, lsl #24
     f94:	0500003c 	streq	r0, [r0, #-60]	; 0xffffffc4
     f98:	630301fd 	movwvs	r0, #12797	; 0x31fd
     f9c:	fe050000 	cdp2	0, 0, cr0, cr5, cr0, {0}
     fa0:	00810701 	addeq	r0, r1, r1, lsl #14
     fa4:	01ff0500 	mvnseq	r0, r0, lsl #10
     fa8:	000086fa 	strdeq	r8, [r0], -sl
     fac:	af028005 	svcge	0x00028005
     fb0:	0500003a 	streq	r0, [r0, #-58]	; 0xffffffc6
     fb4:	0a3d0281 	beq	f419c0 <heap_size+0xf219c0>
     fb8:	82050000 	andhi	r0, r5, #0
     fbc:	00424c02 	subeq	r4, r2, r2, lsl #24
     fc0:	02850500 	addeq	r0, r5, #0, 10
     fc4:	00004784 	andeq	r4, r0, r4, lsl #15
     fc8:	61028a05 	tstvs	r2, r5, lsl #20
     fcc:	05000079 	streq	r0, [r0, #-121]	; 0xffffff87
     fd0:	102d02a0 	eorne	r0, sp, r0, lsr #5
     fd4:	a7050000 	strge	r0, [r5, -r0]
     fd8:	008eae02 	addeq	sl, lr, r2, lsl #28
     fdc:	02b00500 	adcseq	r0, r0, #0, 10
     fe0:	00008db7 			; <UNDEFINED> instruction: 0x00008db7
     fe4:	0f02b605 	svceq	0x0002b605
     fe8:	0500006d 	streq	r0, [r0, #-109]	; 0xffffff93
     fec:	043102d3 	ldrteq	r0, [r1], #-723	; 0xfffffd2d
     ff0:	e7050000 	str	r0, [r5, -r0]
     ff4:	007f4c02 	rsbseq	r4, pc, r2, lsl #24
     ff8:	02f60500 	rscseq	r0, r6, #0, 10
     ffc:	00005224 	andeq	r5, r0, r4, lsr #4
    1000:	6502fc05 	strvs	pc, [r2, #-3077]	; 0xfffff3fb
    1004:	05000086 	streq	r0, [r0, #-134]	; 0xffffff7a
    1008:	5ab702fd 	bpl	fedc1c04 <__stack+0xf6dc1c0c>
    100c:	84050000 	strhi	r0, [r5], #-0
    1010:	0061fb03 	rsbeq	pc, r1, r3, lsl #22
    1014:	038a0500 	orreq	r0, sl, #0, 10
    1018:	00004106 	andeq	r4, r0, r6, lsl #2
    101c:	44039005 	strmi	r9, [r3], #-5
    1020:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
    1024:	78da0391 	ldmvc	sl, {r0, r4, r7, r8, r9}^
    1028:	98050000 	stmdals	r5, {}	; <UNPREDICTABLE>
    102c:	000cdf03 	andeq	sp, ip, r3, lsl #30
    1030:	03990500 	orrseq	r0, r9, #0, 10
    1034:	000064e7 	andeq	r6, r0, r7, ror #9
    1038:	9603a005 	strls	sl, [r3], -r5
    103c:	05000045 	streq	r0, [r0, #-69]	; 0xffffffbb
    1040:	8f4103a6 	svchi	0x004103a6
    1044:	ba050000 	blt	14104c <heap_size+0x12104c>
    1048:	00780103 	rsbseq	r0, r8, r3, lsl #2
    104c:	03db0500 	bicseq	r0, fp, #0, 10
    1050:	000009e6 	andeq	r0, r0, r6, ror #19
    1054:	b803dc05 	stmdalt	r3, {r0, r2, sl, fp, ip, lr, pc}
    1058:	05000054 	streq	r0, [r0, #-84]	; 0xffffffac
    105c:	29da03e3 	ldmibcs	sl, {r0, r1, r5, r6, r7, r8, r9}^
    1060:	e4050000 	str	r0, [r5], #-0
    1064:	00848403 	addeq	r8, r4, r3, lsl #8
    1068:	03e70500 	mvneq	r0, #0, 10
    106c:	00007a26 	andeq	r7, r0, r6, lsr #20
    1070:	c703f105 	strgt	pc, [r3, -r5, lsl #2]
    1074:	0500008e 	streq	r0, [r0, #-142]	; 0xffffff72
    1078:	68c803f2 	stmiavs	r8, {r1, r4, r5, r6, r7, r8, r9}^
    107c:	fc050000 	stc2	0, cr0, [r5], {-0}
    1080:	00508103 	subseq	r8, r0, r3, lsl #2
    1084:	04920500 	ldreq	r0, [r2], #1280	; 0x500
    1088:	000004f5 	strdeq	r0, [r0], -r5
    108c:	ab049405 	blge	1260a8 <heap_size+0x1060a8>
    1090:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
    1094:	2b830496 	blcs	fe0c22f4 <__stack+0xf60c22fc>
    1098:	97050000 	strls	r0, [r5, -r0]
    109c:	00615a04 	rsbeq	r5, r1, r4, lsl #20
    10a0:	04990500 	ldreq	r0, [r9], #1280	; 0x500
    10a4:	0000607f 	andeq	r6, r0, pc, ror r0
    10a8:	6804a305 	stmdavs	r4, {r0, r2, r8, r9, sp, pc}
    10ac:	05000018 	streq	r0, [r0, #-24]	; 0xffffffe8
    10b0:	4b4104a8 	blmi	1042358 <_end+0x42358>
    10b4:	ad050000 	stcge	0, cr0, [r5, #-0]
    10b8:	0036ee04 	eorseq	lr, r6, r4, lsl #28
    10bc:	04b00500 	ldrteq	r0, [r0], #1280	; 0x500
    10c0:	00005b69 	andeq	r5, r0, r9, ror #22
    10c4:	7504b405 	strvc	fp, [r4, #-1029]	; 0xfffffbfb
    10c8:	05000010 	streq	r0, [r0, #-16]
    10cc:	38e004b6 	stmiacc	r0!, {r1, r2, r4, r5, r7, sl}^
    10d0:	d9050000 	stmdble	r5, {}	; <UNPREDICTABLE>
    10d4:	0022e804 	eoreq	lr, r2, r4, lsl #16
    10d8:	04dd0500 	ldrbeq	r0, [sp], #1280	; 0x500
    10dc:	000052bc 			; <UNDEFINED> instruction: 0x000052bc
    10e0:	8904e105 	stmdbhi	r4, {r0, r2, r8, sp, lr, pc}
    10e4:	05000066 	streq	r0, [r0, #-102]	; 0xffffff9a
    10e8:	726c04e5 	rsbvc	r0, ip, #-452984832	; 0xe5000000
    10ec:	e9050000 	stmdb	r5, {}	; <UNPREDICTABLE>
    10f0:	00880c04 	addeq	r0, r8, r4, lsl #24
    10f4:	04ed0500 	strbteq	r0, [sp], #1280	; 0x500
    10f8:	00001f83 	andeq	r1, r0, r3, lsl #31
    10fc:	7504f105 	strvc	pc, [r4, #-261]	; 0xfffffefb
    1100:	05000059 	streq	r0, [r0, #-89]	; 0xffffffa7
    1104:	1c9904f5 	cfldrsne	mvf0, [r9], {245}	; 0xf5
    1108:	fc050000 	stc2	0, cr0, [r5], {-0}
    110c:	00578404 	subseq	r8, r7, r4, lsl #8
    1110:	04fd0500 	ldrbteq	r0, [sp], #1280	; 0x500
    1114:	00007b82 	andeq	r7, r0, r2, lsl #23
    1118:	5f04fe05 	svcpl	0x0004fe05
    111c:	05000005 	streq	r0, [r0, #-5]
    1120:	31b204ff 			; <UNDEFINED> instruction: 0x31b204ff
    1124:	80050000 	andhi	r0, r5, r0
    1128:	0043d205 	subeq	sp, r3, r5, lsl #4
    112c:	05950500 	ldreq	r0, [r5, #1280]	; 0x500
    1130:	00002f23 	andeq	r2, r0, r3, lsr #30
    1134:	2b059605 	blcs	166950 <heap_size+0x146950>
    1138:	05000091 	streq	r0, [r0, #-145]	; 0xffffff6f
    113c:	253e05a8 	ldrcs	r0, [lr, #-1448]!	; 0xfffffa58
    1140:	ae050000 	cdpge	0, 0, cr0, cr5, cr0, {0}
    1144:	0059ec05 	subseq	lr, r9, r5, lsl #24
    1148:	05b10500 	ldreq	r0, [r1, #1280]!	; 0x500
    114c:	000081a2 	andeq	r8, r0, r2, lsr #3
    1150:	1605b305 	strne	fp, [r5], -r5, lsl #6
    1154:	0500004e 	streq	r0, [r0, #-78]	; 0xffffffb2
    1158:	91d705b7 	ldrhls	r0, [r7, #87]	; 0x57
    115c:	b9050000 	stmdblt	r5, {}	; <UNPREDICTABLE>
    1160:	00645f05 	rsbeq	r5, r4, r5, lsl #30
    1164:	05bd0500 	ldreq	r0, [sp, #1280]!	; 0x500
    1168:	00005a50 	andeq	r5, r0, r0, asr sl
    116c:	5005c005 	andpl	ip, r5, r5
    1170:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
    1174:	311905c2 	tstcc	r9, r2, asr #11
    1178:	c6050000 	strgt	r0, [r5], -r0
    117c:	005d3305 	subseq	r3, sp, r5, lsl #6
    1180:	05c80500 	strbeq	r0, [r8, #1280]	; 0x500
    1184:	000075ff 	strdeq	r7, [r0], -pc	; <UNPREDICTABLE>
    1188:	df05ca05 	svcle	0x0005ca05
    118c:	05000010 	streq	r0, [r0, #-16]
    1190:	0bfd05ce 	bleq	fff428d0 <__stack+0xf7f428d8>
    1194:	d1050000 	mrsle	r0, (UNDEF: 5)
    1198:	005fa405 	subseq	sl, pc, r5, lsl #8
    119c:	05d20500 	ldrbeq	r0, [r2, #1280]	; 0x500
    11a0:	00003b3f 	andeq	r3, r0, pc, lsr fp
    11a4:	00000400 	andeq	r0, r0, r0, lsl #8
    11a8:	58ef2705 	stmiapl	pc!, {r0, r2, r8, r9, sl, sp}^	; <UNPREDICTABLE>
    11ac:	28050000 	stmdacs	r5, {}	; <UNPREDICTABLE>
    11b0:	00007a66 	andeq	r7, r0, r6, ror #20
    11b4:	58ea2a05 	stmiapl	sl!, {r0, r2, r9, fp, sp}^
    11b8:	89050000 	stmdbhi	r5, {}	; <UNPREDICTABLE>
    11bc:	0021bc01 	eoreq	fp, r1, r1, lsl #24
    11c0:	018a0500 	orreq	r0, sl, r0, lsl #10
    11c4:	00000ab2 			; <UNDEFINED> instruction: 0x00000ab2
    11c8:	25018b05 	strcs	r8, [r1, #-2821]	; 0xfffff4fb
    11cc:	0500006e 	streq	r0, [r0, #-110]	; 0xffffff92
    11d0:	60f3018c 	rscsvs	r0, r3, ip, lsl #3
    11d4:	8d050000 	stchi	0, cr0, [r5, #-0]
    11d8:	007c7801 	rsbseq	r7, ip, r1, lsl #16
    11dc:	018e0500 	orreq	r0, lr, r0, lsl #10
    11e0:	00007c74 	andeq	r7, r0, r4, ror ip
    11e4:	bd018f05 	stclt	15, cr8, [r1, #-20]	; 0xffffffec
    11e8:	0500007d 	streq	r0, [r0, #-125]	; 0xffffff83
    11ec:	21b80190 			; <UNDEFINED> instruction: 0x21b80190
    11f0:	91050000 	mrsls	r0, (UNDEF: 5)
    11f4:	0028e901 	eoreq	lr, r8, r1, lsl #18
    11f8:	01a10600 			; <UNDEFINED> instruction: 0x01a10600
    11fc:	00005d0f 	andeq	r5, r0, pc, lsl #26
    1200:	3c01ee06 	stccc	14, cr14, [r1], {6}
    1204:	0500003e 	streq	r0, [r0, #-62]	; 0xffffffc2
    1208:	0c78028b 	lfmeq	f0, 2, [r8], #-556	; 0xfffffdd4
    120c:	8c050000 	stchi	0, cr0, [r5], {-0}
    1210:	0007f702 	andeq	pc, r7, r2, lsl #14
    1214:	028d0500 	addeq	r0, sp, #0, 10
    1218:	00003bc3 	andeq	r3, r0, r3, asr #23
    121c:	ff028e05 			; <UNDEFINED> instruction: 0xff028e05
    1220:	05000065 	streq	r0, [r0, #-101]	; 0xffffff9b
    1224:	7996028f 	ldmibvc	r6, {r0, r1, r2, r3, r7, r9}
    1228:	90050000 	andls	r0, r5, r0
    122c:	007c8502 	rsbseq	r8, ip, r2, lsl #10
    1230:	02910500 	addseq	r0, r1, #0, 10
    1234:	00007538 	andeq	r7, r0, r8, lsr r5
    1238:	34029205 	strcc	r9, [r2], #-517	; 0xfffffdfb
    123c:	05000075 	streq	r0, [r0, #-117]	; 0xffffff8b
    1240:	2e040293 	mcrcs	2, 0, r0, cr4, cr3, {4}
    1244:	94050000 	strls	r0, [r5], #-0
    1248:	005ea402 	subseq	sl, lr, r2, lsl #8
    124c:	02950500 	addseq	r0, r5, #0, 10
    1250:	0000234f 	andeq	r2, r0, pc, asr #6
    1254:	25029605 	strcs	r9, [r2, #-1541]	; 0xfffff9fb
    1258:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
    125c:	234a0297 	movtcs	r0, #41623	; 0xa297
    1260:	98050000 	stmdals	r5, {}	; <UNPREDICTABLE>
    1264:	003bbf02 	eorseq	fp, fp, r2, lsl #30
    1268:	02990500 	addseq	r0, r9, #0, 10
    126c:	00006383 	andeq	r6, r0, r3, lsl #7
    1270:	5e02a606 	cfmadd32pl	mvax0, mvfx10, mvfx2, mvfx6
    1274:	0600003d 			; <UNDEFINED> instruction: 0x0600003d
    1278:	6dda02db 	lfmvs	f0, 2, [sl, #876]	; 0x36c
    127c:	91060000 	mrsls	r0, (UNDEF: 6)
    1280:	004ffe03 	subeq	pc, pc, r3, lsl #28
    1284:	03960500 	orrseq	r0, r6, #0, 10
    1288:	00006c4c 	andeq	r6, r0, ip, asr #24
    128c:	f7039c06 			; <UNDEFINED> instruction: 0xf7039c06
    1290:	0500004f 	streq	r0, [r0, #-79]	; 0xffffffb1
    1294:	500303a1 	andpl	r0, r3, r1, lsr #7
    1298:	04000000 	streq	r0, [r0], #-0
    129c:	22060000 	andcs	r0, r6, #0
    12a0:	0000080d 	andeq	r0, r0, sp, lsl #16
    12a4:	692e2705 	stmdbvs	lr!, {r0, r2, r8, r9, sl, sp}
    12a8:	04000000 	streq	r0, [r0], #-0
    12ac:	02050000 	andeq	r0, r5, #0
    12b0:	00001137 	andeq	r1, r0, r7, lsr r1
    12b4:	3bcd0e05 	blcc	ff344ad0 <__stack+0xf7344ad8>
    12b8:	0f050000 	svceq	0x00050000
    12bc:	0000949c 	muleq	r0, ip, r4
    12c0:	7b651005 	blvc	19452dc <_end+0x9452dc>
    12c4:	11050000 	mrsne	r0, (UNDEF: 5)
    12c8:	000035f0 	strdeq	r3, [r0], -r0
    12cc:	5b2c1205 	blpl	b05ae8 <heap_size+0xae5ae8>
    12d0:	13050000 	movwne	r0, #20480	; 0x5000
    12d4:	00001ab6 			; <UNDEFINED> instruction: 0x00001ab6
    12d8:	10461405 	subne	r1, r6, r5, lsl #8
    12dc:	15050000 	strne	r0, [r5, #-0]
    12e0:	00007cce 	andeq	r7, r0, lr, asr #25
    12e4:	52d51605 	sbcspl	r1, r5, #5242880	; 0x500000
    12e8:	17050000 	strne	r0, [r5, -r0]
    12ec:	0000199a 	muleq	r0, sl, r9
    12f0:	28ac1805 	stmiacs	ip!, {r0, r2, fp, ip}
    12f4:	19050000 	stmdbne	r5, {}	; <UNPREDICTABLE>
    12f8:	000094e0 	andeq	r9, r0, r0, ror #9
    12fc:	00000400 	andeq	r0, r0, r0, lsl #8
    1300:	78647d06 	stmdavc	r4!, {r1, r2, r8, sl, fp, ip, sp, lr}^
    1304:	90050000 	andls	r0, r5, r0
    1308:	00298901 	eoreq	r8, r9, r1, lsl #18
    130c:	01920600 	orrseq	r0, r2, r0, lsl #12
    1310:	00005c6c 	andeq	r5, r0, ip, ror #24
    1314:	8d019e05 	stchi	14, cr9, [r1, #-20]	; 0xffffffec
    1318:	00000007 	andeq	r0, r0, r7
    131c:	06000004 	streq	r0, [r0], -r4
    1320:	5d0f01a1 	stfpls	f0, [pc, #-644]	; 10a4 <__STACK_SIZE+0xa4>
    1324:	ee060000 	cdp	0, 0, cr0, cr6, cr0, {0}
    1328:	003e3c01 	eorseq	r3, lr, r1, lsl #24
    132c:	02db0600 	sbcseq	r0, fp, #0, 12
    1330:	00006dda 	ldrdeq	r6, [r0], -sl
    1334:	e002e005 	and	lr, r2, r5
    1338:	06000002 	streq	r0, [r0], -r2
    133c:	440202e7 	strmi	r0, [r2], #-743	; 0xfffffd19
    1340:	91060000 	mrsls	r0, (UNDEF: 6)
    1344:	004ffe03 	subeq	pc, pc, r3, lsl #28
    1348:	03960500 	orrseq	r0, r6, #0, 10
    134c:	00006c4c 	andeq	r6, r0, ip, asr #24
    1350:	f7039c06 			; <UNDEFINED> instruction: 0xf7039c06
    1354:	0500004f 	streq	r0, [r0, #-79]	; 0xffffffb1
    1358:	500303a1 	andpl	r0, r3, r1, lsr #7
    135c:	04000000 	streq	r0, [r0], #-0
    1360:	b8050000 	stmdalt	r5, {}	; <UNPREDICTABLE>
    1364:	0003e801 	andeq	lr, r3, r1, lsl #16
    1368:	01c00500 	biceq	r0, r0, r0, lsl #10
    136c:	00009241 	andeq	r9, r0, r1, asr #4
    1370:	1701c505 	strne	ip, [r1, -r5, lsl #10]
    1374:	05000042 	streq	r0, [r0, #-66]	; 0xffffffbe
    1378:	510d01ca 	smlabtpl	sp, sl, r1, r0
    137c:	04000000 	streq	r0, [r0], #-0
    1380:	11050000 	mrsne	r0, (UNDEF: 5)
    1384:	00002ad0 	ldrdeq	r2, [r0], -r0
    1388:	62f71505 	rscsvs	r1, r7, #20971520	; 0x1400000
    138c:	48050000 	stmdami	r5, {}	; <UNPREDICTABLE>
    1390:	0000179e 	muleq	r0, lr, r7
    1394:	241d5b05 	ldrcs	r5, [sp], #-2821	; 0xfffff4fb
    1398:	68050000 	stmdavs	r5, {}	; <UNPREDICTABLE>
    139c:	00007313 	andeq	r7, r0, r3, lsl r3
    13a0:	b701aa05 	strlt	sl, [r1, -r5, lsl #20]
    13a4:	05000047 	streq	r0, [r0, #-71]	; 0xffffffb9
    13a8:	759802b8 	ldrvc	r0, [r8, #696]	; 0x2b8
    13ac:	b9050000 	stmdblt	r5, {}	; <UNPREDICTABLE>
    13b0:	008f2902 	addeq	r2, pc, r2, lsl #18
    13b4:	02ba0500 	adcseq	r0, sl, #0, 10
    13b8:	0000524c 	andeq	r5, r0, ip, asr #4
    13bc:	d402bb05 	strle	fp, [r2], #-2821	; 0xfffff4fb
    13c0:	0500004e 	streq	r0, [r0, #-78]	; 0xffffffb2
    13c4:	57bd02bc 			; <UNDEFINED> instruction: 0x57bd02bc
    13c8:	bd050000 	stclt	0, cr0, [r5, #-0]
    13cc:	00591302 	subseq	r1, r9, r2, lsl #6
    13d0:	02be0500 	adcseq	r0, lr, #0, 10
    13d4:	00004828 	andeq	r4, r0, r8, lsr #16
    13d8:	1202ca05 	andne	ip, r2, #20480	; 0x5000
    13dc:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
    13e0:	11f302cb 	mvnsne	r0, fp, asr #5
    13e4:	cc050000 	stcgt	0, cr0, [r5], {-0}
    13e8:	007c3402 	rsbseq	r3, ip, r2, lsl #8
    13ec:	03ce0500 	biceq	r0, lr, #0, 10
    13f0:	00008b1e 	andeq	r8, r0, lr, lsl fp
    13f4:	3103e805 	tstcc	r3, r5, lsl #16
    13f8:	0500006e 	streq	r0, [r0, #-110]	; 0xffffff92
    13fc:	697603f5 	ldmdbvs	r6!, {r0, r2, r4, r5, r6, r7, r8, r9}^
    1400:	fd050000 	stc2	0, cr0, [r5, #-0]
    1404:	0019f403 	andseq	pc, r9, r3, lsl #8
    1408:	04860500 	streq	r0, [r6], #1280	; 0x500
    140c:	00000935 	andeq	r0, r0, r5, lsr r9
    1410:	93048a05 	movwls	r8, #18949	; 0x4a05
    1414:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
    1418:	26d3048f 	ldrbcs	r0, [r3], pc, lsl #9
    141c:	9a050000 	bls	141424 <heap_size+0x121424>
    1420:	006f9204 	rsbeq	r9, pc, r4, lsl #4
    1424:	049d0500 	ldreq	r0, [sp], #1280	; 0x500
    1428:	000042a5 	andeq	r4, r0, r5, lsr #5
    142c:	1c04a305 	stcne	3, cr10, [r4], {5}
    1430:	05000047 	streq	r0, [r0, #-71]	; 0xffffffb9
    1434:	909804a6 	addsls	r0, r8, r6, lsr #9
    1438:	a9050000 	stmdbge	r5, {}	; <UNPREDICTABLE>
    143c:	00132704 	andseq	r2, r3, r4, lsl #14
    1440:	04bf0500 	ldrteq	r0, [pc], #1280	; 1448 <_sbrk_r+0xc>
    1444:	00004906 	andeq	r4, r0, r6, lsl #18
    1448:	6a04c205 	bvs	131c64 <heap_size+0x111c64>
    144c:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
    1450:	6b5b04c5 	blvs	16c276c <_end+0x6c276c>
    1454:	c6050000 	strgt	r0, [r5], -r0
    1458:	000ef904 	andeq	pc, lr, r4, lsl #18
    145c:	04c70500 	strbeq	r0, [r7], #1280	; 0x500
    1460:	00004cde 	ldrdeq	r4, [r0], -lr
    1464:	c204c805 	andgt	ip, r4, #327680	; 0x50000
    1468:	0500006b 	streq	r0, [r0, #-107]	; 0xffffff95
    146c:	55f204c9 	ldrbpl	r0, [r2, #1225]!	; 0x4c9
    1470:	ca050000 	bgt	141478 <heap_size+0x121478>
    1474:	00374604 	eorseq	r4, r7, r4, lsl #12
    1478:	04cb0500 	strbeq	r0, [fp], #1280	; 0x500
    147c:	00007cf8 	strdeq	r7, [r0], -r8
    1480:	0204cc05 	andeq	ip, r4, #1280	; 0x500
    1484:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
    1488:	4bd604cd 	blmi	ff5827c4 <__stack+0xf75827cc>
    148c:	ce050000 	cdpgt	0, 0, cr0, cr5, cr0, {0}
    1490:	001d7b04 	andseq	r7, sp, r4, lsl #22
    1494:	04cf0500 	strbeq	r0, [pc], #1280	; 149c <_iscanf_r+0x10>
    1498:	00008831 	andeq	r8, r0, r1, lsr r8
    149c:	f504d005 			; <UNDEFINED> instruction: 0xf504d005
    14a0:	0500004e 	streq	r0, [r0, #-78]	; 0xffffffb2
    14a4:	6b2604d1 	blvs	9827f0 <heap_size+0x9627f0>
    14a8:	d2050000 	andle	r0, r5, #0
    14ac:	00772204 	rsbseq	r2, r7, r4, lsl #4
    14b0:	04d30500 	ldrbeq	r0, [r3], #1280	; 0x500
    14b4:	0000293d 	andeq	r2, r0, sp, lsr r9
    14b8:	7104d405 	tstvc	r4, r5, lsl #8
    14bc:	05000089 	streq	r0, [r0, #-137]	; 0xffffff77
    14c0:	662304d5 			; <UNDEFINED> instruction: 0x662304d5
    14c4:	d6050000 	strle	r0, [r5], -r0
    14c8:	007f1304 	rsbseq	r1, pc, r4, lsl #6
    14cc:	04d70500 	ldrbeq	r0, [r7], #1280	; 0x500
    14d0:	0000282d 	andeq	r2, r0, sp, lsr #16
    14d4:	9a04d805 	bls	1374f0 <heap_size+0x1174f0>
    14d8:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
    14dc:	2a7104d9 	bcs	1c42848 <_end+0xc42848>
    14e0:	da050000 	ble	1414e8 <heap_size+0x1214e8>
    14e4:	0020ba04 	eoreq	fp, r0, r4, lsl #20
    14e8:	04db0500 	ldrbeq	r0, [fp], #1280	; 0x500
    14ec:	000087d2 	ldrdeq	r8, [r0], -r2
    14f0:	5b04dc05 	blpl	13850c <heap_size+0x11850c>
    14f4:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
    14f8:	3520069b 	strcc	r0, [r0, #-1691]!	; 0xfffff965
    14fc:	a3050000 	movwge	r0, #20480	; 0x5000
    1500:	004c2306 	subeq	r2, ip, r6, lsl #6
    1504:	06ab0500 	strteq	r0, [fp], r0, lsl #10
    1508:	0000733d 	andeq	r7, r0, sp, lsr r3
    150c:	8a06bb05 	bhi	1b0128 <heap_size+0x190128>
    1510:	0500004f 	streq	r0, [r0, #-79]	; 0xffffffb1
    1514:	36b106be 			; <UNDEFINED> instruction: 0x36b106be
    1518:	c2050000 	andgt	r0, r5, #0
    151c:	000f6606 	andeq	r6, pc, r6, lsl #12
    1520:	00040000 	andeq	r0, r4, r0
    1524:	99280500 	stmdbls	r8!, {r8, sl}
    1528:	05000036 	streq	r0, [r0, #-54]	; 0xffffffca
    152c:	005ad83c 	subseq	sp, sl, ip, lsr r8
    1530:	00040000 	andeq	r0, r4, r0
    1534:	430a0500 	movwmi	r0, #42240	; 0xa500
    1538:	05000072 	streq	r0, [r0, #-114]	; 0xffffff8e
    153c:	008ef415 	addeq	pc, lr, r5, lsl r4	; <UNPREDICTABLE>
    1540:	21190500 	tstcs	r9, r0, lsl #10
    1544:	05000034 	streq	r0, [r0, #-52]	; 0xffffffcc
    1548:	006afb1b 	rsbeq	pc, sl, fp, lsl fp	; <UNPREDICTABLE>
    154c:	00210500 	eoreq	r0, r1, r0, lsl #10
    1550:	05000073 	streq	r0, [r0, #-115]	; 0xffffff8d
    1554:	00318225 	eorseq	r8, r1, r5, lsr #4
    1558:	68270500 	stmdavs	r7!, {r8, sl}
    155c:	05000031 	streq	r0, [r0, #-49]	; 0xffffffcf
    1560:	0036172d 	eorseq	r1, r6, sp, lsr #14
    1564:	43310500 	teqmi	r1, #0, 10
    1568:	05000083 	streq	r0, [r0, #-131]	; 0xffffff7d
    156c:	00830733 	addeq	r0, r3, r3, lsr r7
    1570:	9b390500 	blls	e42978 <heap_size+0xe22978>
    1574:	0500008f 	streq	r0, [r0, #-143]	; 0xffffff71
    1578:	0037c13d 	eorseq	ip, r7, sp, lsr r1
    157c:	733f0500 	teqvc	pc, #0, 10
    1580:	05000037 	streq	r0, [r0, #-55]	; 0xffffffc9
    1584:	00046344 	andeq	r6, r4, r4, asr #6
    1588:	66490500 	strbvs	r0, [r9], -r0, lsl #10
    158c:	05000073 	streq	r0, [r0, #-115]	; 0xffffff8d
    1590:	006c164e 	rsbeq	r1, ip, lr, asr #12
    1594:	d1530500 	cmple	r3, r0, lsl #10
    1598:	00000046 	andeq	r0, r0, r6, asr #32
    159c:	05000004 	streq	r0, [r0, #-4]
    15a0:	00381972 	eorseq	r1, r8, r2, ror r9
    15a4:	22770500 	rsbscs	r0, r7, #0, 10
    15a8:	0500000b 	streq	r0, [r0, #-11]
    15ac:	0057247c 	subseq	r2, r7, ip, ror r4
    15b0:	2d7d0500 	cfldr64cs	mvdx0, [sp, #-0]
    15b4:	0500006a 	streq	r0, [r0, #-106]	; 0xffffff96
    15b8:	118a0182 	orrne	r0, sl, r2, lsl #3
    15bc:	83050000 	movwhi	r0, #20480	; 0x5000
    15c0:	00175501 	andseq	r5, r7, r1, lsl #10
    15c4:	01880500 	orreq	r0, r8, r0, lsl #10
    15c8:	00007162 	andeq	r7, r0, r2, ror #2
    15cc:	37018c05 	strcc	r8, [r1, -r5, lsl #24]
    15d0:	05000057 	streq	r0, [r0, #-87]	; 0xffffffa9
    15d4:	1dde0192 	ldfnee	f0, [lr, #584]	; 0x248
    15d8:	97050000 	strls	r0, [r5, -r0]
    15dc:	001b8c01 	andseq	r8, fp, r1, lsl #24
    15e0:	019c0500 	orrseq	r0, ip, r0, lsl #10
    15e4:	00000f84 	andeq	r0, r0, r4, lsl #31
    15e8:	db01ae05 	blle	6ce04 <heap_size+0x4ce04>
    15ec:	0500007d 	streq	r0, [r0, #-125]	; 0xffffff83
    15f0:	5b1b01b2 	blpl	6c1cc0 <heap_size+0x6a1cc0>
    15f4:	b6050000 	strlt	r0, [r5], -r0
    15f8:	005c2901 	subseq	r2, ip, r1, lsl #18
    15fc:	01ba0500 			; <UNDEFINED> instruction: 0x01ba0500
    1600:	00006d70 	andeq	r6, r0, r0, ror sp
    1604:	e101bf05 	tst	r1, r5, lsl #30
    1608:	05000055 	streq	r0, [r0, #-85]	; 0xffffffab
    160c:	3a5801c4 	bcc	1601d24 <_end+0x601d24>
    1610:	c9050000 	stmdbgt	r5, {}	; <UNPREDICTABLE>
    1614:	00758501 	rsbseq	r8, r5, r1, lsl #10
    1618:	01ce0500 	biceq	r0, lr, r0, lsl #10
    161c:	000063fb 	strdeq	r6, [r0], -fp
    1620:	f101d305 			; <UNDEFINED> instruction: 0xf101d305
    1624:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
    1628:	919801d8 			; <UNDEFINED> instruction: 0x919801d8
    162c:	d9050000 	stmdble	r5, {}	; <UNPREDICTABLE>
    1630:	004cc901 	subeq	ip, ip, r1, lsl #18
    1634:	01de0500 	bicseq	r0, lr, r0, lsl #10
    1638:	00008289 	andeq	r8, r0, r9, lsl #5
    163c:	7b01df05 	blvc	79258 <heap_size+0x59258>
    1640:	0500006c 	streq	r0, [r0, #-108]	; 0xffffff94
    1644:	09c001e4 	stmibeq	r0, {r2, r5, r6, r7, r8}^
    1648:	e9050000 	stmdb	r5, {}	; <UNPREDICTABLE>
    164c:	001e7001 	andseq	r7, lr, r1
    1650:	00040000 	andeq	r0, r4, r0
    1654:	0a020500 	beq	82a5c <heap_size+0x62a5c>
    1658:	05000095 	streq	r0, [r0, #-149]	; 0xffffff6b
    165c:	0083720d 	addeq	r7, r3, sp, lsl #4
    1660:	1f150500 	svcne	0x00150500
    1664:	00000033 	andeq	r0, r0, r3, lsr r0
    1668:	05000004 	streq	r0, [r0, #-4]
    166c:	0053dd51 	subseq	sp, r3, r1, asr sp
    1670:	97520500 	ldrbls	r0, [r2, -r0, lsl #10]
    1674:	05000042 	streq	r0, [r0, #-66]	; 0xffffffbe
    1678:	00228d53 	eoreq	r8, r2, r3, asr sp
    167c:	c6540500 	ldrbgt	r0, [r4], -r0, lsl #10
    1680:	05000041 	streq	r0, [r0, #-65]	; 0xffffffbf
    1684:	00908056 	addseq	r8, r0, r6, asr r0
    1688:	f0570500 			; <UNDEFINED> instruction: 0xf0570500
    168c:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
    1690:	00526458 	subseq	r6, r2, r8, asr r4
    1694:	05590500 	ldrbeq	r0, [r9, #-1280]	; 0xfffffb00
    1698:	0500007f 	streq	r0, [r0, #-127]	; 0xffffff81
    169c:	0051fc5a 	subseq	pc, r1, sl, asr ip	; <UNPREDICTABLE>
    16a0:	6a5b0500 	bvs	16c2aa8 <_end+0x6c2aa8>
    16a4:	05000070 	streq	r0, [r0, #-112]	; 0xffffff90
    16a8:	0068a15c 	rsbeq	sl, r8, ip, asr r1
    16ac:	bf5d0500 	svclt	0x005d0500
    16b0:	05000086 	streq	r0, [r0, #-134]	; 0xffffff7a
    16b4:	0057af5e 	subseq	sl, r7, lr, asr pc
    16b8:	385f0500 	ldmdacc	pc, {r8, sl}^	; <UNPREDICTABLE>
    16bc:	05000006 	streq	r0, [r0, #-6]
    16c0:	002bc163 	eoreq	ip, fp, r3, ror #2
    16c4:	f6660500 			; <UNDEFINED> instruction: 0xf6660500
    16c8:	05000049 	streq	r0, [r0, #-73]	; 0xffffffb7
    16cc:	00023d67 	andeq	r3, r2, r7, ror #26
    16d0:	9b720500 	blls	1c82ad8 <_end+0xc82ad8>
    16d4:	0500008c 	streq	r0, [r0, #-140]	; 0xffffff74
    16d8:	008a9173 	addeq	r9, sl, r3, ror r1
    16dc:	16740500 	ldrbtne	r0, [r4], -r0, lsl #10
    16e0:	05000045 	streq	r0, [r0, #-69]	; 0xffffffbb
    16e4:	0055c676 	subseq	ip, r5, r6, ror r6
    16e8:	707b0500 	rsbsvc	r0, fp, r0, lsl #10
    16ec:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
    16f0:	6dcd0181 	stfvse	f0, [sp, #516]	; 0x204
    16f4:	87050000 	strhi	r0, [r5, -r0]
    16f8:	00906e01 	addseq	r6, r0, r1, lsl #28
    16fc:	018d0500 	orreq	r0, sp, r0, lsl #10
    1700:	0000188b 	andeq	r1, r0, fp, lsl #17
    1704:	8e019505 	cfsh32hi	mvfx9, mvfx1, #5
    1708:	0500000b 	streq	r0, [r0, #-11]
    170c:	5b500198 	blpl	1401d74 <_end+0x401d74>
    1710:	9b050000 	blls	141718 <heap_size+0x121718>
    1714:	004cbe01 	subeq	fp, ip, r1, lsl #28
    1718:	019e0500 	orrseq	r0, lr, r0, lsl #10
    171c:	00000cd4 	ldrdeq	r0, [r0], -r4
    1720:	2a01a005 	bcs	6973c <heap_size+0x4973c>
    1724:	05000092 	streq	r0, [r0, #-146]	; 0xffffff6e
    1728:	16f701a1 	ldrbtne	r0, [r7], r1, lsr #3
    172c:	a2050000 	andge	r0, r5, #0
    1730:	00004901 	andeq	r4, r0, r1, lsl #18
    1734:	01a40500 			; <UNDEFINED> instruction: 0x01a40500
    1738:	00009478 	andeq	r9, r0, r8, ror r4
    173c:	db01a505 	blle	6ab58 <heap_size+0x4ab58>
    1740:	0500007b 	streq	r0, [r0, #-123]	; 0xffffff85
    1744:	46a901a6 	strtmi	r0, [r9], r6, lsr #3
    1748:	ae050000 	cdpge	0, 0, cr0, cr5, cr0, {0}
    174c:	00082701 	andeq	r2, r8, r1, lsl #14
    1750:	058e0500 	streq	r0, [lr, #1280]	; 0x500
    1754:	0000497b 	andeq	r4, r0, fp, ror r9
    1758:	1b05ab05 	blne	16c374 <heap_size+0x14c374>
    175c:	05000095 	streq	r0, [r0, #-149]	; 0xffffff6b
    1760:	70f205cf 	rscsvc	r0, r2, pc, asr #11
    1764:	d0050000 	andle	r0, r5, r0
    1768:	00034705 	andeq	r4, r3, r5, lsl #14
    176c:	05d10500 	ldrbeq	r0, [r1, #1280]	; 0x500
    1770:	000032a7 	andeq	r3, r0, r7, lsr #5
    1774:	7905d205 	stmdbvc	r5, {r0, r2, r9, ip, lr, pc}
    1778:	0000007a 	andeq	r0, r0, sl, ror r0
    177c:	05000004 	streq	r0, [r0, #-4]
    1780:	003cac0d 	eorseq	sl, ip, sp, lsl #24
    1784:	540e0500 	strpl	r0, [lr], #-1280	; 0xfffffb00
    1788:	05000078 	streq	r0, [r0, #-120]	; 0xffffff88
    178c:	006bef0f 	rsbeq	lr, fp, pc, lsl #30
    1790:	00040000 	andeq	r0, r4, r0
    1794:	01a10600 			; <UNDEFINED> instruction: 0x01a10600
    1798:	00005d0f 	andeq	r5, r0, pc, lsl #26
    179c:	3c01ee06 	stccc	14, cr14, [r1], {6}
    17a0:	0600003e 			; <UNDEFINED> instruction: 0x0600003e
    17a4:	6dda02db 	lfmvs	f0, 2, [sl, #876]	; 0x36c
    17a8:	91060000 	mrsls	r0, (UNDEF: 6)
    17ac:	004ffe03 	subeq	pc, pc, r3, lsl #28
    17b0:	03960500 	orrseq	r0, r6, #0, 10
    17b4:	00006c4c 	andeq	r6, r0, ip, asr #24
    17b8:	f7039c06 			; <UNDEFINED> instruction: 0xf7039c06
    17bc:	0500004f 	streq	r0, [r0, #-79]	; 0xffffffb1
    17c0:	500303a1 	andpl	r0, r3, r1, lsr #7
    17c4:	04000000 	streq	r0, [r0], #-0
    17c8:	38050000 	stmdacc	r5, {}	; <UNPREDICTABLE>
    17cc:	00005e80 	andeq	r5, r0, r0, lsl #29
    17d0:	88583c05 	ldmdahi	r8, {r0, r2, sl, fp, ip, sp}^
    17d4:	3d050000 	stccc	0, cr0, [r5, #-0]
    17d8:	00006100 	andeq	r6, r0, r0, lsl #2
    17dc:	68783f05 	ldmdavs	r8!, {r0, r2, r8, r9, sl, fp, ip, sp}^
    17e0:	43050000 	movwmi	r0, #20480	; 0x5000
    17e4:	00000bb7 			; <UNDEFINED> instruction: 0x00000bb7
    17e8:	00000400 	andeq	r0, r0, r0, lsl #8
    17ec:	07031f05 	streq	r1, [r3, -r5, lsl #30]
    17f0:	20050000 	andcs	r0, r5, r0
    17f4:	0000330e 	andeq	r3, r0, lr, lsl #6
    17f8:	080d2206 	stmdaeq	sp, {r1, r2, r9, sp}
    17fc:	2f050000 	svccs	0x00050000
    1800:	00003cbb 			; <UNDEFINED> instruction: 0x00003cbb
    1804:	69583005 	ldmdbvs	r8, {r0, r2, ip, sp}^
    1808:	31050000 	mrscc	r0, (UNDEF: 5)
    180c:	00006eec 	andeq	r6, r0, ip, ror #29
    1810:	30db3405 	sbcscc	r3, fp, r5, lsl #8
    1814:	36050000 	strcc	r0, [r5], -r0
    1818:	000030d9 	ldrdeq	r3, [r0], -r9
    181c:	7e576905 	vnmlsvc.f16	s13, s14, s10	; <UNPREDICTABLE>
    1820:	6c050000 	stcvs	0, cr0, [r5], {-0}
    1824:	00006934 	andeq	r6, r0, r4, lsr r9
    1828:	0c3b6f05 	ldceq	15, cr6, [fp], #-20	; 0xffffffec
    182c:	72050000 	andvc	r0, r5, #0
    1830:	000083c7 	andeq	r8, r0, r7, asr #7
    1834:	11ce7505 	bicne	r7, lr, r5, lsl #10
    1838:	04000000 	streq	r0, [r0], #-0
    183c:	02050000 	andeq	r0, r5, #0
    1840:	00008cc7 	andeq	r8, r0, r7, asr #25
    1844:	3cac0905 			; <UNDEFINED> instruction: 0x3cac0905
    1848:	0a050000 	beq	141850 <heap_size+0x121850>
    184c:	00000083 	andeq	r0, r0, r3, lsl #1
    1850:	00000400 	andeq	r0, r0, r0, lsl #8
    1854:	8202c405 	andhi	ip, r2, #83886080	; 0x5000000
    1858:	05000046 	streq	r0, [r0, #-70]	; 0xffffffba
    185c:	03e102c5 	mvneq	r0, #1342177292	; 0x5000000c
    1860:	c6050000 	strgt	r0, [r5], -r0
    1864:	003e1802 	eorseq	r1, lr, r2, lsl #16
    1868:	02c70500 	sbceq	r0, r7, #0, 10
    186c:	00007a72 	andeq	r7, r0, r2, ror sl
    1870:	8e02c905 	vmlahi.f16	s24, s4, s10	; <UNPREDICTABLE>
    1874:	0500000b 	streq	r0, [r0, #-11]
    1878:	5b5002ca 	blpl	14023a8 <_end+0x4023a8>
    187c:	cb050000 	blgt	141884 <heap_size+0x121884>
    1880:	004cbe02 	subeq	fp, ip, r2, lsl #28
    1884:	02cf0500 	sbceq	r0, pc, #0, 10
    1888:	00005aa8 	andeq	r5, r0, r8, lsr #21
    188c:	8e02d005 	cdphi	0, 0, cr13, cr2, cr5, {0}
    1890:	05000057 	streq	r0, [r0, #-87]	; 0xffffffa9
    1894:	6a7102d1 	bvs	1c423e0 <_end+0xc423e0>
    1898:	d7050000 	strle	r0, [r5, -r0]
    189c:	008d8002 	addeq	r8, sp, r2
    18a0:	02d80500 	sbcseq	r0, r8, #0, 10
    18a4:	000009d6 	ldrdeq	r0, [r0], -r6
    18a8:	e902d905 	stmdb	r2, {r0, r2, r8, fp, ip, lr, pc}
    18ac:	05000057 	streq	r0, [r0, #-87]	; 0xffffffa9
    18b0:	0d0802da 	sfmeq	f0, 4, [r8, #-872]	; 0xfffffc98
    18b4:	db050000 	blle	1418bc <heap_size+0x1218bc>
    18b8:	006ae102 	rsbeq	lr, sl, r2, lsl #2
    18bc:	02dc0500 	sbcseq	r0, ip, #0, 10
    18c0:	000046e6 	andeq	r4, r0, r6, ror #13
    18c4:	5b02dd05 	blpl	b8ce0 <heap_size+0x98ce0>
    18c8:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
    18cc:	019502de 			; <UNDEFINED> instruction: 0x019502de
    18d0:	df050000 	svcle	0x00050000
    18d4:	008c7802 	addeq	r7, ip, r2, lsl #16
    18d8:	02e00500 	rsceq	r0, r0, #0, 10
    18dc:	000005a3 	andeq	r0, r0, r3, lsr #11
    18e0:	1d02e305 	stcne	3, cr14, [r2, #-20]	; 0xffffffec
    18e4:	05000075 	streq	r0, [r0, #-117]	; 0xffffff8b
    18e8:	290f02e4 	stmdbcs	pc, {r2, r5, r6, r7, r9}	; <UNPREDICTABLE>
    18ec:	e5050000 	str	r0, [r5, #-0]
    18f0:	0021e102 	eoreq	lr, r1, r2, lsl #2
    18f4:	02e60500 	rsceq	r0, r6, #0, 10
    18f8:	000000ee 	andeq	r0, r0, lr, ror #1
    18fc:	0802e805 	stmdaeq	r2, {r0, r2, fp, sp, lr, pc}
    1900:	05000074 	streq	r0, [r0, #-116]	; 0xffffff8c
    1904:	5d2002e9 	sfmpl	f0, 4, [r0, #-932]!	; 0xfffffc5c
    1908:	ea050000 	b	141910 <heap_size+0x121910>
    190c:	00212802 	eoreq	r2, r1, r2, lsl #16
    1910:	02eb0500 	rsceq	r0, fp, #0, 10
    1914:	000081ef 	andeq	r8, r0, pc, ror #3
    1918:	6502ec05 	strvs	lr, [r2, #-3077]	; 0xfffff3fb
    191c:	05000016 	streq	r0, [r0, #-22]	; 0xffffffea
    1920:	011902ed 	tsteq	r9, sp, ror #5
    1924:	ee050000 	cdp	0, 0, cr0, cr5, cr0, {0}
    1928:	00449202 	subeq	r9, r4, r2, lsl #4
    192c:	02ef0500 	rsceq	r0, pc, #0, 10
    1930:	0000515b 	andeq	r5, r0, fp, asr r1
    1934:	f802f005 			; <UNDEFINED> instruction: 0xf802f005
    1938:	0500005c 	streq	r0, [r0, #-92]	; 0xffffffa4
    193c:	94d302f1 	ldrbls	r0, [r3], #753	; 0x2f1
    1940:	f2050000 	vhadd.s8	d0, d5, d0
    1944:	001c5202 	andseq	r5, ip, r2, lsl #4
    1948:	02f30500 	rscseq	r0, r3, #0, 10
    194c:	00001066 	andeq	r1, r0, r6, rrx
    1950:	e702f405 	str	pc, [r2, -r5, lsl #8]
    1954:	05000051 	streq	r0, [r0, #-81]	; 0xffffffaf
    1958:	887602f5 	ldmdahi	r6!, {r0, r2, r4, r5, r6, r7, r9}^
    195c:	f6050000 			; <UNDEFINED> instruction: 0xf6050000
    1960:	00528b02 	subseq	r8, r2, r2, lsl #22
    1964:	02f70500 	rscseq	r0, r7, #0, 10
    1968:	00006b87 	andeq	r6, r0, r7, lsl #23
    196c:	2f02f805 	svccs	0x0002f805
    1970:	05000058 	streq	r0, [r0, #-88]	; 0xffffffa8
    1974:	643702f9 	ldrtvs	r0, [r7], #-761	; 0xfffffd07
    1978:	fa050000 	blx	141980 <heap_size+0x121980>
    197c:	0080bb02 	addeq	fp, r0, r2, lsl #22
    1980:	02fb0500 	rscseq	r0, fp, #0, 10
    1984:	00008010 	andeq	r8, r0, r0, lsl r0
    1988:	c602fc05 	strgt	pc, [r2], -r5, lsl #24
    198c:	0500000c 	streq	r0, [r0, #-12]
    1990:	3a6902fd 	bcc	1a4258c <_end+0xa4258c>
    1994:	fe050000 	cdp2	0, 0, cr0, cr5, cr0, {0}
    1998:	005fd302 	subseq	sp, pc, r2, lsl #6
    199c:	02ff0500 	rscseq	r0, pc, #0, 10
    19a0:	0000693e 	andeq	r6, r0, lr, lsr r9
    19a4:	07038005 	streq	r8, [r3, -r5]
    19a8:	05000070 	streq	r0, [r0, #-112]	; 0xffffff90
    19ac:	2fdb0381 	svccs	0x00db0381
    19b0:	82050000 	andhi	r0, r5, #0
    19b4:	003d2503 	eorseq	r2, sp, r3, lsl #10
    19b8:	03830500 	orreq	r0, r3, #0, 10
    19bc:	00000b5d 	andeq	r0, r0, sp, asr fp
    19c0:	74038405 	strvc	r8, [r3], #-1029	; 0xfffffbfb
    19c4:	0500003b 	streq	r0, [r0, #-59]	; 0xffffffc5
    19c8:	24880385 	strcs	r0, [r8], #901	; 0x385
    19cc:	86050000 	strhi	r0, [r5], -r0
    19d0:	0024b703 	eoreq	fp, r4, r3, lsl #14
    19d4:	03870500 	orreq	r0, r7, #0, 10
    19d8:	00001767 	andeq	r1, r0, r7, ror #14
    19dc:	c3038805 	movwgt	r8, #14341	; 0x3805
    19e0:	05000004 	streq	r0, [r0, #-4]
    19e4:	685d0389 	ldmdavs	sp, {r0, r3, r7, r8, r9}^
    19e8:	8b050000 	blhi	1419f0 <heap_size+0x1219f0>
    19ec:	004e9703 	subeq	r9, lr, r3, lsl #14
    19f0:	038c0500 	orreq	r0, ip, #0, 10
    19f4:	00007398 	muleq	r0, r8, r3
    19f8:	90038d05 	andls	r8, r3, r5, lsl #26
    19fc:	05000077 	streq	r0, [r0, #-119]	; 0xffffff89
    1a00:	7dec038e 	stclvc	3, cr0, [ip, #568]!	; 0x238
    1a04:	8f050000 	svchi	0x00050000
    1a08:	002a0803 	eoreq	r0, sl, r3, lsl #16
    1a0c:	03900500 	orrseq	r0, r0, #0, 10
    1a10:	00007c1c 	andeq	r7, r0, ip, lsl ip
    1a14:	78039105 	stmdavc	r3, {r0, r2, r8, ip, pc}
    1a18:	05000054 	streq	r0, [r0, #-84]	; 0xffffffac
    1a1c:	69c00392 	stmibvs	r0, {r1, r4, r7, r8, r9}^
    1a20:	93050000 	movwls	r0, #20480	; 0x5000
    1a24:	0030b103 	eorseq	fp, r0, r3, lsl #2
    1a28:	03940500 	orrseq	r0, r4, #0, 10
    1a2c:	00008ce8 	andeq	r8, r0, r8, ror #25
    1a30:	12039505 	andne	r9, r3, #20971520	; 0x1400000
    1a34:	0500000b 	streq	r0, [r0, #-11]
    1a38:	30c60396 	smullcc	r0, r6, r6, r3
    1a3c:	97050000 	strls	r0, [r5, -r0]
    1a40:	003fcf03 	eorseq	ip, pc, r3, lsl #30
    1a44:	03980500 	orrseq	r0, r8, #0, 10
    1a48:	000021f3 	strdeq	r2, [r0], -r3
    1a4c:	81039905 	tsthi	r3, r5, lsl #18
    1a50:	0500008f 	streq	r0, [r0, #-143]	; 0xffffff71
    1a54:	1734039a 			; <UNDEFINED> instruction: 0x1734039a
    1a58:	9b050000 	blls	141a60 <heap_size+0x121a60>
    1a5c:	00902d03 	addseq	r2, r0, r3, lsl #26
    1a60:	039c0500 	orrseq	r0, ip, #0, 10
    1a64:	00005f67 	andeq	r5, r0, r7, ror #30
    1a68:	10039d05 	andne	r9, r3, r5, lsl #26
    1a6c:	05000044 	streq	r0, [r0, #-68]	; 0xffffffbc
    1a70:	7bf7039e 	blvc	ffdc28f0 <__stack+0xf7dc28f8>
    1a74:	9f050000 	svcls	0x00050000
    1a78:	002e3103 	eoreq	r3, lr, r3, lsl #2
    1a7c:	03a00500 	moveq	r0, #0, 10
    1a80:	000006ae 	andeq	r0, r0, lr, lsr #13
    1a84:	0003a105 	andeq	sl, r3, r5, lsl #2
    1a88:	0500004e 	streq	r0, [r0, #-78]	; 0xffffffb2
    1a8c:	893403a2 	ldmdbhi	r4!, {r1, r5, r7, r8, r9}
    1a90:	a3050000 	movwge	r0, #20480	; 0x5000
    1a94:	0016e403 	andseq	lr, r6, r3, lsl #8
    1a98:	03a40500 			; <UNDEFINED> instruction: 0x03a40500
    1a9c:	000023df 	ldrdeq	r2, [r0], -pc	; <UNPREDICTABLE>
    1aa0:	e103a505 	tst	r3, r5, lsl #10
    1aa4:	05000074 	streq	r0, [r0, #-116]	; 0xffffff8c
    1aa8:	45c903a6 	strbmi	r0, [r9, #934]	; 0x3a6
    1aac:	a7050000 	strge	r0, [r5, -r0]
    1ab0:	007fb603 	rsbseq	fp, pc, r3, lsl #12
    1ab4:	03a80500 			; <UNDEFINED> instruction: 0x03a80500
    1ab8:	000073d0 	ldrdeq	r7, [r0], -r0
    1abc:	2903a905 	stmdbcs	r3, {r0, r2, r8, fp, sp, pc}
    1ac0:	0500000f 	streq	r0, [r0, #-15]
    1ac4:	7eb303aa 	cdpvc	3, 11, cr0, cr3, cr10, {5}
    1ac8:	ab050000 	blge	141ad0 <heap_size+0x121ad0>
    1acc:	00672403 	rsbeq	r2, r7, r3, lsl #8
    1ad0:	03ac0500 			; <UNDEFINED> instruction: 0x03ac0500
    1ad4:	000073e2 	andeq	r7, r0, r2, ror #7
    1ad8:	8803ad05 	stmdahi	r3, {r0, r2, r8, sl, fp, sp, pc}
    1adc:	0500003b 	streq	r0, [r0, #-59]	; 0xffffffc5
    1ae0:	2e6603ae 	cdpcs	3, 6, cr0, cr6, cr14, {5}
    1ae4:	af050000 	svcge	0x00050000
    1ae8:	007c0c03 	rsbseq	r0, ip, r3, lsl #24
    1aec:	03b00500 	movseq	r0, #0, 10
    1af0:	00003955 	andeq	r3, r0, r5, asr r9
    1af4:	0f03b105 	svceq	0x0003b105
    1af8:	05000058 	streq	r0, [r0, #-88]	; 0xffffffa8
    1afc:	505603b2 	ldrhpl	r0, [r6], #-50	; 0xffffffce
    1b00:	b3050000 	movwlt	r0, #20480	; 0x5000
    1b04:	00037903 	andeq	r7, r3, r3, lsl #18
    1b08:	03b40500 			; <UNDEFINED> instruction: 0x03b40500
    1b0c:	000084f3 	strdeq	r8, [r0], -r3
    1b10:	4f03b505 	svcmi	0x0003b505
    1b14:	0500007b 	streq	r0, [r0, #-123]	; 0xffffff85
    1b18:	125803b6 	subsne	r0, r8, #-671088638	; 0xd8000002
    1b1c:	b7050000 	strlt	r0, [r5, -r0]
    1b20:	006da203 	rsbeq	sl, sp, r3, lsl #4
    1b24:	03b80500 			; <UNDEFINED> instruction: 0x03b80500
    1b28:	0000402e 	andeq	r4, r0, lr, lsr #32
    1b2c:	ef03b905 	svc	0x0003b905
    1b30:	05000074 	streq	r0, [r0, #-116]	; 0xffffff8c
    1b34:	0f9503ba 	svceq	0x009503ba
    1b38:	bb050000 	bllt	141b40 <heap_size+0x121b40>
    1b3c:	0018a103 	andseq	sl, r8, r3, lsl #2
    1b40:	03bc0500 			; <UNDEFINED> instruction: 0x03bc0500
    1b44:	00005f76 	andeq	r5, r0, r6, ror pc
    1b48:	4303bd05 	movwmi	fp, #15621	; 0x3d05
    1b4c:	0500000e 	streq	r0, [r0, #-14]
    1b50:	1f5903be 	svcne	0x005903be
    1b54:	bf050000 	svclt	0x00050000
    1b58:	0070af03 	rsbseq	sl, r0, r3, lsl #30
    1b5c:	03c00500 	biceq	r0, r0, #0, 10
    1b60:	000067e9 	andeq	r6, r0, r9, ror #15
    1b64:	5703c105 	strpl	ip, [r3, -r5, lsl #2]
    1b68:	05000077 	streq	r0, [r0, #-119]	; 0xffffff89
    1b6c:	2fc403c2 	svccs	0x00c403c2
    1b70:	c3050000 	movwgt	r0, #20480	; 0x5000
    1b74:	001b9c03 	andseq	r9, fp, r3, lsl #24
    1b78:	03c40500 	biceq	r0, r4, #0, 10
    1b7c:	00002a30 	andeq	r2, r0, r0, lsr sl
    1b80:	a503c505 	strge	ip, [r3, #-1285]	; 0xfffffafb
    1b84:	05000054 	streq	r0, [r0, #-84]	; 0xffffffac
    1b88:	39f003c6 	ldmibcc	r0!, {r1, r2, r6, r7, r8, r9}^
    1b8c:	c7050000 	strgt	r0, [r5, -r0]
    1b90:	0034b003 	eorseq	fp, r4, r3
    1b94:	03c80500 	biceq	r0, r8, #0, 10
    1b98:	00000a6a 	andeq	r0, r0, sl, ror #20
    1b9c:	5d03c905 	vstrpl.16	s24, [r3, #-10]	; <UNPREDICTABLE>
    1ba0:	05000043 	streq	r0, [r0, #-67]	; 0xffffffbd
    1ba4:	5de903ca 	stclpl	3, cr0, [r9, #808]!	; 0x328
    1ba8:	cb050000 	blgt	141bb0 <heap_size+0x121bb0>
    1bac:	00743c03 	rsbseq	r3, r4, r3, lsl #24
    1bb0:	03cc0500 	biceq	r0, ip, #0, 10
    1bb4:	00003fe8 	andeq	r3, r0, r8, ror #31
    1bb8:	4903cd05 	stmdbmi	r3, {r0, r2, r8, sl, fp, lr, pc}
    1bbc:	05000064 	streq	r0, [r0, #-100]	; 0xffffff9c
    1bc0:	7ad103ce 	bvc	ff442b00 <__stack+0xf7442b08>
    1bc4:	cf050000 	svcgt	0x00050000
    1bc8:	00862d03 	addeq	r2, r6, r3, lsl #26
    1bcc:	03d00500 	bicseq	r0, r0, #0, 10
    1bd0:	00004896 	muleq	r0, r6, r8
    1bd4:	9e03d105 	mvflss	f5, f5
    1bd8:	05000057 	streq	r0, [r0, #-87]	; 0xffffffa9
    1bdc:	205103d2 	ldrsbcs	r0, [r1], #-50	; 0xffffffce
    1be0:	d3050000 	movwle	r0, #20480	; 0x5000
    1be4:	0083fb03 	addeq	pc, r3, r3, lsl #22
    1be8:	03d40500 	bicseq	r0, r4, #0, 10
    1bec:	000031fe 	strdeq	r3, [r0], -lr
    1bf0:	aa03d505 	bge	f700c <heap_size+0xd700c>
    1bf4:	05000048 	streq	r0, [r0, #-72]	; 0xffffffb8
    1bf8:	8d1303d6 	ldchi	3, cr0, [r3, #-856]	; 0xfffffca8
    1bfc:	d7050000 	strle	r0, [r5, -r0]
    1c00:	004d0b03 	subeq	r0, sp, r3, lsl #22
    1c04:	03d80500 	bicseq	r0, r8, #0, 10
    1c08:	00003f8c 	andeq	r3, r0, ip, lsl #31
    1c0c:	ae03d905 	vmlage.f16	s26, s6, s10	; <UNPREDICTABLE>
    1c10:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
    1c14:	040003da 	streq	r0, [r0], #-986	; 0xfffffc26
    1c18:	db050000 	blle	141c20 <heap_size+0x121c20>
    1c1c:	0023b203 	eoreq	fp, r3, r3, lsl #4
    1c20:	03dc0500 	bicseq	r0, ip, #0, 10
    1c24:	00003a7f 	andeq	r3, r0, pc, ror sl
    1c28:	9603dd05 	strls	sp, [r3], -r5, lsl #26
    1c2c:	0500005f 	streq	r0, [r0, #-95]	; 0xffffffa1
    1c30:	77ad03de 	sbfxvc	r0, lr, #7, #14
    1c34:	df050000 	svcle	0x00050000
    1c38:	0077de03 	rsbseq	sp, r7, r3, lsl #28
    1c3c:	03e00500 	mvneq	r0, #0, 10
    1c40:	00006cd1 	ldrdeq	r6, [r0], -r1
    1c44:	0e03e105 	mvfeqs	f6, f5
    1c48:	05000007 	streq	r0, [r0, #-7]
    1c4c:	2d1103e2 	ldccs	3, cr0, [r1, #-904]	; 0xfffffc78
    1c50:	e3050000 	movw	r0, #20480	; 0x5000
    1c54:	00916d03 	addseq	r6, r1, r3, lsl #26
    1c58:	03e40500 	mvneq	r0, #0, 10
    1c5c:	00002139 	andeq	r2, r0, r9, lsr r1
    1c60:	5203e505 	andpl	lr, r3, #20971520	; 0x1400000
    1c64:	05000025 	streq	r0, [r0, #-37]	; 0xffffffdb
    1c68:	378703e6 	strcc	r0, [r7, r6, ror #7]
    1c6c:	e7050000 	str	r0, [r5, -r0]
    1c70:	003a9003 	eorseq	r9, sl, r3
    1c74:	03e80500 	mvneq	r0, #0, 10
    1c78:	0000346a 	andeq	r3, r0, sl, ror #8
    1c7c:	ed03e905 	vstr.16	s28, [r3, #-10]
    1c80:	0500000a 	streq	r0, [r0, #-10]
    1c84:	031003ea 	tsteq	r0, #-1476395005	; 0xa8000003
    1c88:	eb050000 	bl	141c90 <heap_size+0x121c90>
    1c8c:	000a8003 	andeq	r8, sl, r3
    1c90:	03ec0500 	mvneq	r0, #0, 10
    1c94:	00000204 	andeq	r0, r0, r4, lsl #4
    1c98:	f703ed05 			; <UNDEFINED> instruction: 0xf703ed05
    1c9c:	05000092 	streq	r0, [r0, #-146]	; 0xffffff6e
    1ca0:	2b2f03ee 	blcs	bc2c60 <heap_size+0xba2c60>
    1ca4:	ef050000 	svc	0x00050000
    1ca8:	00503b03 	subseq	r3, r0, r3, lsl #22
    1cac:	03f00500 	mvnseq	r0, #0, 10
    1cb0:	00007091 	muleq	r0, r1, r0
    1cb4:	e003f105 	and	pc, r3, r5, lsl #2
    1cb8:	0500000e 	streq	r0, [r0, #-14]
    1cbc:	37f003f7 			; <UNDEFINED> instruction: 0x37f003f7
    1cc0:	f8050000 			; <UNDEFINED> instruction: 0xf8050000
    1cc4:	008c6803 	addeq	r6, ip, r3, lsl #16
    1cc8:	03f90500 	mvnseq	r0, #0, 10
    1ccc:	000070e2 	andeq	r7, r0, r2, ror #1
    1cd0:	3803fa05 	stmdacc	r3, {r0, r2, r9, fp, ip, sp, lr, pc}
    1cd4:	0500008d 	streq	r0, [r0, #-141]	; 0xffffff73
    1cd8:	545d03fb 	ldrbpl	r0, [sp], #-1019	; 0xfffffc05
    1cdc:	fc050000 	stc2	0, cr0, [r5], {-0}
    1ce0:	002e8403 	eoreq	r8, lr, r3, lsl #8
    1ce4:	03fd0500 	mvnseq	r0, #0, 10
    1ce8:	00002da7 	andeq	r2, r0, r7, lsr #27
    1cec:	c903fe05 	stmdbgt	r3, {r0, r2, r9, sl, fp, ip, sp, lr, pc}
    1cf0:	0500000a 	streq	r0, [r0, #-10]
    1cf4:	79e803ff 	stmibvc	r8!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9}^
    1cf8:	80050000 	andhi	r0, r5, r0
    1cfc:	00684e04 	rsbeq	r4, r8, r4, lsl #28
    1d00:	04810500 	streq	r0, [r1], #1280	; 0x500
    1d04:	00007149 	andeq	r7, r0, r9, asr #2
    1d08:	3f048205 	svccc	0x00048205
    1d0c:	05000082 	streq	r0, [r0, #-130]	; 0xffffff7e
    1d10:	22140483 	andscs	r0, r4, #-2097152000	; 0x83000000
    1d14:	84050000 	strhi	r0, [r5], #-0
    1d18:	004a2e04 	subeq	r2, sl, r4, lsl #28
    1d1c:	04850500 	streq	r0, [r5], #1280	; 0x500
    1d20:	00000ec5 	andeq	r0, r0, r5, asr #29
    1d24:	44048605 	strmi	r8, [r4], #-1541	; 0xfffff9fb
    1d28:	05000034 	streq	r0, [r0, #-52]	; 0xffffffcc
    1d2c:	824e0487 	subhi	r0, lr, #-2030043136	; 0x87000000
    1d30:	88050000 	stmdahi	r5, {}	; <UNPREDICTABLE>
    1d34:	00209104 	eoreq	r9, r0, r4, lsl #2
    1d38:	04890500 	streq	r0, [r9], #1280	; 0x500
    1d3c:	00005272 	andeq	r5, r0, r2, ror r2
    1d40:	d3048a05 	movwle	r8, #18949	; 0x4a05
    1d44:	05000084 	streq	r0, [r0, #-132]	; 0xffffff7c
    1d48:	7d3b048b 	cfldrsvc	mvf0, [fp, #-556]!	; 0xfffffdd4
    1d4c:	04000000 	streq	r0, [r0], #-0
    1d50:	02050000 	andeq	r0, r5, #0
    1d54:	000040b5 	strheq	r4, [r0], -r5
    1d58:	58960605 	ldmpl	r6, {r0, r2, r9, sl}
    1d5c:	04000000 	streq	r0, [r0], #-0
    1d60:	09050000 	stmdbeq	r5, {}	; <UNPREDICTABLE>
    1d64:	00005904 	andeq	r5, r0, r4, lsl #18
    1d68:	34e60e05 	strbtcc	r0, [r6], #3589	; 0xe05
    1d6c:	1d050000 	stcne	0, cr0, [r5, #-0]
    1d70:	00007d57 	andeq	r7, r0, r7, asr sp
    1d74:	43911f05 	orrsmi	r1, r1, #5, 30
    1d78:	20050000 	andcs	r0, r5, r0
    1d7c:	00001024 	andeq	r1, r0, r4, lsr #32
    1d80:	1c822105 	stfnes	f2, [r2], {5}
    1d84:	22050000 	andcs	r0, r5, #0
    1d88:	000089ef 	andeq	r8, r0, pc, ror #19
    1d8c:	816f2305 	cmnhi	pc, r5, lsl #6
    1d90:	24050000 	strcs	r0, [r5], #-0
    1d94:	00002ac2 	andeq	r2, r0, r2, asr #21
    1d98:	092d2505 	pusheq	{r0, r2, r8, sl, sp}
    1d9c:	26050000 	strcs	r0, [r5], -r0
    1da0:	000048f3 	strdeq	r4, [r0], -r3
    1da4:	06ba2705 	ldrteq	r2, [sl], r5, lsl #14
    1da8:	28050000 	stmdacs	r5, {}	; <UNPREDICTABLE>
    1dac:	000033e6 	andeq	r3, r0, r6, ror #7
    1db0:	713f2905 	teqvc	pc, r5, lsl #18
    1db4:	2a050000 	bcs	141dbc <heap_size+0x121dbc>
    1db8:	00004854 	andeq	r4, r0, r4, asr r8
    1dbc:	94922b05 	ldrls	r2, [r2], #2821	; 0xb05
    1dc0:	2c050000 	stccs	0, cr0, [r5], {-0}
    1dc4:	00007158 	andeq	r7, r0, r8, asr r1
    1dc8:	65f63005 	ldrbvs	r3, [r6, #5]!
    1dcc:	31050000 	mrscc	r0, (UNDEF: 5)
    1dd0:	00001147 	andeq	r1, r0, r7, asr #2
    1dd4:	02723205 	rsbseq	r3, r2, #1342177280	; 0x50000000
    1dd8:	33050000 	movwcc	r0, #20480	; 0x5000
    1ddc:	00005f5d 	andeq	r5, r0, sp, asr pc
    1de0:	86ef3405 	strbthi	r3, [pc], r5, lsl #8
    1de4:	35050000 	strcc	r0, [r5, #-0]
    1de8:	0000786d 	andeq	r7, r0, sp, ror #16
    1dec:	18f43605 	ldmne	r4!, {r0, r2, r9, sl, ip, sp}^
    1df0:	37050000 	strcc	r0, [r5, -r0]
    1df4:	00000abf 			; <UNDEFINED> instruction: 0x00000abf
    1df8:	083f3805 	ldmdaeq	pc!, {r0, r2, fp, ip, sp}	; <UNPREDICTABLE>
    1dfc:	39050000 	stmdbcc	r5, {}	; <UNPREDICTABLE>
    1e00:	00006f88 	andeq	r6, r0, r8, lsl #31
    1e04:	0c853a05 	vstmiaeq	r5, {s6-s10}
    1e08:	3b050000 	blcc	141e10 <heap_size+0x121e10>
    1e0c:	000079f7 	strdeq	r7, [r0], -r7	; <UNPREDICTABLE>
    1e10:	4a403c05 	bmi	1010e2c <_end+0x10e2c>
    1e14:	3d050000 	stccc	0, cr0, [r5, #-0]
    1e18:	00008ca4 	andeq	r8, r0, r4, lsr #25
    1e1c:	75d23e05 	ldrbvc	r3, [r2, #3589]	; 0xe05
    1e20:	3f050000 	svccc	0x00050000
    1e24:	000082b3 			; <UNDEFINED> instruction: 0x000082b3
    1e28:	8e634005 	cdphi	0, 6, cr4, cr3, cr5, {0}
    1e2c:	41050000 	mrsmi	r0, (UNDEF: 5)
    1e30:	00003196 	muleq	r0, r6, r1
    1e34:	39c34205 	stmibcc	r3, {r0, r2, r9, lr}^
    1e38:	43050000 	movwmi	r0, #20480	; 0x5000
    1e3c:	00009324 	andeq	r9, r0, r4, lsr #6
    1e40:	172b4405 	strne	r4, [fp, -r5, lsl #8]!
    1e44:	4f050000 	svcmi	0x00050000
    1e48:	00003416 	andeq	r3, r0, r6, lsl r4
    1e4c:	80b15005 	adcshi	r5, r1, r5
    1e50:	5b050000 	blpl	141e58 <heap_size+0x121e58>
    1e54:	0000450c 	andeq	r4, r0, ip, lsl #10
    1e58:	908d5c05 	addls	r5, sp, r5, lsl #24
    1e5c:	5d050000 	stcpl	0, cr0, [r5, #-0]
    1e60:	000039ba 			; <UNDEFINED> instruction: 0x000039ba
    1e64:	58c45e05 	stmiapl	r4, {r0, r2, r9, sl, fp, ip, lr}^
    1e68:	64050000 	strvs	r0, [r5], #-0
    1e6c:	00007b16 	andeq	r7, r0, r6, lsl fp
    1e70:	33046a05 	movwcc	r6, #18949	; 0x4a05
    1e74:	6b050000 	blvs	141e7c <heap_size+0x121e7c>
    1e78:	00005e97 	muleq	r0, r7, lr
    1e7c:	89f77005 	ldmibhi	r7!, {r0, r2, ip, sp, lr}^
    1e80:	71050000 	mrsvc	r0, (UNDEF: 5)
    1e84:	00001bc4 	andeq	r1, r0, r4, asr #23
    1e88:	521a7c05 	andspl	r7, sl, #1280	; 0x500
    1e8c:	80050000 	andhi	r0, r5, r0
    1e90:	00220701 	eoreq	r0, r2, r1, lsl #14
    1e94:	01810500 	orreq	r0, r1, r0, lsl #10
    1e98:	00007815 	andeq	r7, r0, r5, lsl r8
    1e9c:	7e018205 	cdpvc	2, 0, cr8, cr1, cr5, {0}
    1ea0:	05000092 	streq	r0, [r0, #-146]	; 0xffffff6e
    1ea4:	78460183 	stmdavc	r6, {r0, r1, r7, r8}^
    1ea8:	84050000 	strhi	r0, [r5], #-0
    1eac:	004fab01 	subeq	sl, pc, r1, lsl #22
    1eb0:	01850500 	orreq	r0, r5, r0, lsl #10
    1eb4:	00001c8a 	andeq	r1, r0, sl, lsl #25
    1eb8:	eb018605 	bl	636d4 <heap_size+0x436d4>
    1ebc:	05000007 	streq	r0, [r0, #-7]
    1ec0:	537b0187 	cmnpl	fp, #-1073741791	; 0xc0000021
    1ec4:	88050000 	stmdahi	r5, {}	; <UNPREDICTABLE>
    1ec8:	008e4101 	addeq	r4, lr, r1, lsl #2
    1ecc:	01890500 	orreq	r0, r9, r0, lsl #10
    1ed0:	000002b5 			; <UNDEFINED> instruction: 0x000002b5
    1ed4:	17018a05 	strne	r8, [r1, -r5, lsl #20]
    1ed8:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
    1edc:	5c18018e 	ldfpls	f0, [r8], {142}	; 0x8e
    1ee0:	8f050000 	svchi	0x00050000
    1ee4:	007fc301 	rsbseq	ip, pc, r1, lsl #6
    1ee8:	01900500 	orrseq	r0, r0, r0, lsl #10
    1eec:	00005401 	andeq	r5, r0, r1, lsl #8
    1ef0:	1e019105 	mvfnes	f1, f5
    1ef4:	0500003b 	streq	r0, [r0, #-59]	; 0xffffffc5
    1ef8:	1b7f0192 	blne	1fc2548 <_end+0xfc2548>
    1efc:	93050000 	movwls	r0, #20480	; 0x5000
    1f00:	005b5b01 	subseq	r5, fp, r1, lsl #22
    1f04:	01940500 	orrseq	r0, r4, r0, lsl #10
    1f08:	00006239 	andeq	r6, r0, r9, lsr r2
    1f0c:	01019505 	tsteq	r1, r5, lsl #10
    1f10:	05000094 	streq	r0, [r0, #-148]	; 0xffffff6c
    1f14:	822f0196 	eorhi	r0, pc, #-2147483611	; 0x80000025
    1f18:	97050000 	strls	r0, [r5, -r0]
    1f1c:	00757801 	rsbseq	r7, r5, r1, lsl #16
    1f20:	01980500 	orrseq	r0, r8, r0, lsl #10
    1f24:	00002ddd 	ldrdeq	r2, [r0], -sp
    1f28:	84019905 	strhi	r9, [r1], #-2309	; 0xfffff6fb
    1f2c:	05000043 	streq	r0, [r0, #-67]	; 0xffffffbd
    1f30:	7a00019a 	bvc	25a0 <_strtol_l.isra.0+0x36>
    1f34:	9e050000 	cdpls	0, 0, cr0, cr5, cr0, {0}
    1f38:	005f3401 	subseq	r3, pc, r1, lsl #8
    1f3c:	019f0500 	orrseq	r0, pc, r0, lsl #10
    1f40:	0000392e 	andeq	r3, r0, lr, lsr #18
    1f44:	d501a005 	strle	sl, [r1, #-5]
    1f48:	05000057 	streq	r0, [r0, #-87]	; 0xffffffa9
    1f4c:	384f01a1 	stmdacc	pc, {r0, r5, r7, r8}^	; <UNPREDICTABLE>
    1f50:	a2050000 	andge	r0, r5, #0
    1f54:	0008ec01 	andeq	lr, r8, r1, lsl #24
    1f58:	01a70500 			; <UNDEFINED> instruction: 0x01a70500
    1f5c:	00006bfc 	strdeq	r6, [r0], -ip
    1f60:	c701a805 	strgt	sl, [r1, -r5, lsl #16]
    1f64:	05000075 	streq	r0, [r0, #-117]	; 0xffffff8b
    1f68:	928701a9 	addls	r0, r7, #1073741866	; 0x4000002a
    1f6c:	b1050000 	mrslt	r0, (UNDEF: 5)
    1f70:	00627c01 	rsbeq	r7, r2, r1, lsl #24
    1f74:	01b20500 			; <UNDEFINED> instruction: 0x01b20500
    1f78:	00002bd6 	ldrdeq	r2, [r0], -r6
    1f7c:	6001b305 	andvs	fp, r1, r5, lsl #6
    1f80:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
    1f84:	84ba01b4 	ldrthi	r0, [sl], #436	; 0x1b4
    1f88:	b5050000 	strlt	r0, [r5, #-0]
    1f8c:	0071b001 	rsbseq	fp, r1, r1
    1f90:	01b90500 			; <UNDEFINED> instruction: 0x01b90500
    1f94:	000007b6 			; <UNDEFINED> instruction: 0x000007b6
    1f98:	b501bb05 	strlt	fp, [r1, #-2821]	; 0xfffff4fb
    1f9c:	00000012 	andeq	r0, r0, r2, lsl r0
    1fa0:	05000004 	streq	r0, [r0, #-4]
    1fa4:	00192002 	andseq	r2, r9, r2
    1fa8:	40050500 	andmi	r0, r5, r0, lsl #10
    1fac:	05000080 	streq	r0, [r0, #-128]	; 0xffffff80
    1fb0:	008da906 	addeq	sl, sp, r6, lsl #18
    1fb4:	f3070500 	vrshl.u8	d0, d0, d7
    1fb8:	0500000d 	streq	r0, [r0, #-13]
    1fbc:	003d5108 	eorseq	r5, sp, r8, lsl #2
    1fc0:	050b0500 	streq	r0, [fp, #-1280]	; 0xfffffb00
    1fc4:	05000090 	streq	r0, [r0, #-144]	; 0xffffff70
    1fc8:	0089c814 	addeq	ip, r9, r4, lsl r8
    1fcc:	ff150500 			; <UNDEFINED> instruction: 0xff150500
    1fd0:	0500003e 	streq	r0, [r0, #-62]	; 0xffffffc2
    1fd4:	00747d16 	rsbseq	r7, r4, r6, lsl sp
    1fd8:	12170500 	andsne	r0, r7, #0, 10
    1fdc:	05000094 	streq	r0, [r0, #-148]	; 0xffffff6c
    1fe0:	003b9e18 	eorseq	r9, fp, r8, lsl lr
    1fe4:	f8190500 			; <UNDEFINED> instruction: 0xf8190500
    1fe8:	05000045 	streq	r0, [r0, #-69]	; 0xffffffbb
    1fec:	005ef91a 	subseq	pc, lr, sl, lsl r9	; <UNPREDICTABLE>
    1ff0:	431b0500 	tstmi	fp, #0, 10
    1ff4:	05000086 	streq	r0, [r0, #-134]	; 0xffffff7a
    1ff8:	00230229 	eoreq	r0, r3, r9, lsr #4
    1ffc:	bf2a0500 	svclt	0x002a0500
    2000:	05000071 	streq	r0, [r0, #-113]	; 0xffffff8f
    2004:	006c0732 	rsbeq	r0, ip, r2, lsr r7
    2008:	ef330500 	svc	0x00330500
    200c:	0500003e 	streq	r0, [r0, #-62]	; 0xffffffc2
    2010:	00543634 	subseq	r3, r4, r4, lsr r6
    2014:	d1350500 	teqle	r5, r0, lsl #10
    2018:	05000056 	streq	r0, [r0, #-86]	; 0xffffffaa
    201c:	0066be36 	rsbeq	fp, r6, r6, lsr lr
    2020:	b3370500 	teqlt	r7, #0, 10
    2024:	05000004 	streq	r0, [r0, #-4]
    2028:	00420738 	subeq	r0, r2, r8, lsr r7
    202c:	4b390500 	blmi	e43434 <heap_size+0xe23434>
    2030:	00000089 	andeq	r0, r0, r9, lsl #1
    2034:	05000004 	streq	r0, [r0, #-4]
    2038:	00398f1d 	eorseq	r8, r9, sp, lsl pc
    203c:	23640600 	cmncs	r4, #0, 12
    2040:	05000071 	streq	r0, [r0, #-113]	; 0xffffff8f
    2044:	007e8d65 	rsbseq	r8, lr, r5, ror #26
    2048:	3a660600 	bcc	1983850 <_end+0x983850>
    204c:	05000072 	streq	r0, [r0, #-114]	; 0xffffff8e
    2050:	00877467 	addeq	r7, r7, r7, ror #8
    2054:	226a0600 	rsbcs	r0, sl, #0, 12
    2058:	05000071 	streq	r0, [r0, #-113]	; 0xffffff8f
    205c:	0070526b 	rsbseq	r5, r0, fp, ror #4
    2060:	1e6e0600 	cdpne	6, 6, cr0, cr14, cr0, {0}
    2064:	05000085 	streq	r0, [r0, #-133]	; 0xffffff7b
    2068:	003dc46f 	eorseq	ip, sp, pc, ror #8
    206c:	d1700600 	cmnle	r0, r0, lsl #12
    2070:	0500007d 	streq	r0, [r0, #-125]	; 0xffffff83
    2074:	008fea71 	addeq	lr, pc, r1, ror sl	; <UNPREDICTABLE>
    2078:	1d740600 	ldclne	6, cr0, [r4, #-0]
    207c:	05000085 	streq	r0, [r0, #-133]	; 0xffffff7b
    2080:	0025ef75 	eoreq	lr, r5, r5, ror pc
    2084:	53780600 	cmnpl	r8, #0, 12
    2088:	0500005c 	streq	r0, [r0, #-92]	; 0xffffffa4
    208c:	00820479 	addeq	r0, r2, r9, ror r4
    2090:	1b7a0600 	blne	1e83898 <_end+0xe83898>
    2094:	05000087 	streq	r0, [r0, #-135]	; 0xffffff79
    2098:	0061bb7b 	rsbeq	fp, r1, fp, ror fp
    209c:	527e0600 	rsbspl	r0, lr, #0, 12
    20a0:	0500005c 	streq	r0, [r0, #-92]	; 0xffffffa4
    20a4:	00782c7f 	rsbseq	r2, r8, pc, ror ip
    20a8:	01820600 	orreq	r0, r2, r0, lsl #12
    20ac:	000083d6 	ldrdeq	r8, [r0], -r6
    20b0:	0e018305 	cdpeq	3, 0, cr8, cr1, cr5, {0}
    20b4:	0600006f 	streq	r0, [r0], -pc, rrx
    20b8:	89a80184 	stmibhi	r8!, {r2, r7, r8}
    20bc:	85050000 	strhi	r0, [r5, #-0]
    20c0:	00044801 	andeq	r4, r4, r1, lsl #16
    20c4:	01880600 	orreq	r0, r8, r0, lsl #12
    20c8:	000083d5 	ldrdeq	r8, [r0], -r5
    20cc:	43018905 	movwmi	r8, #6405	; 0x1905
    20d0:	06000043 	streq	r0, [r0], -r3, asr #32
    20d4:	8d71018c 	ldfhie	f0, [r1, #-560]!	; 0xfffffdd0
    20d8:	8d050000 	stchi	0, cr0, [r5, #-0]
    20dc:	0018fe01 	andseq	pc, r8, r1, lsl #28
    20e0:	018e0600 	orreq	r0, lr, r0, lsl #12
    20e4:	00006ab6 			; <UNDEFINED> instruction: 0x00006ab6
    20e8:	dd018f05 	stcle	15, cr8, [r1, #-20]	; 0xffffffec
    20ec:	06000085 	streq	r0, [r0], -r5, lsl #1
    20f0:	8d700190 	ldfhie	f0, [r0, #-576]!	; 0xfffffdc0
    20f4:	91050000 	mrsls	r0, (UNDEF: 5)
    20f8:	00027b01 	andeq	r7, r2, r1, lsl #22
    20fc:	01920600 	orrseq	r0, r2, r0, lsl #12
    2100:	00000262 	andeq	r0, r0, r2, ror #4
    2104:	49019305 	stmdbmi	r1, {r0, r2, r8, r9, ip, pc}
    2108:	0600002b 	streq	r0, [r0], -fp, lsr #32
    210c:	039e0194 	orrseq	r0, lr, #148, 2	; 0x25
    2110:	95050000 	strls	r0, [r5, #-0]
    2114:	0002e901 	andeq	lr, r2, r1, lsl #18
    2118:	01960600 	orrseq	r0, r6, r0, lsl #12
    211c:	00000261 	andeq	r0, r0, r1, ror #4
    2120:	74019705 	strvc	r9, [r1], #-1797	; 0xfffff8fb
    2124:	06000076 			; <UNDEFINED> instruction: 0x06000076
    2128:	7a940198 	bvc	fe502790 <__stack+0xf6502798>
    212c:	99050000 	stmdbls	r5, {}	; <UNPREDICTABLE>
    2130:	003ecb01 	eorseq	ip, lr, r1, lsl #22
    2134:	019a0600 	orrseq	r0, sl, r0, lsl #12
    2138:	0000069e 	muleq	r0, lr, r6
    213c:	47019b05 	strmi	r9, [r1, -r5, lsl #22]
    2140:	06000058 			; <UNDEFINED> instruction: 0x06000058
    2144:	7a93019c 	bvc	fe4c27bc <__stack+0xf64c27c4>
    2148:	9d050000 	stcls	0, cr0, [r5, #-0]
    214c:	00789101 	rsbseq	r9, r8, r1, lsl #2
    2150:	019e0600 	orrseq	r0, lr, r0, lsl #12
    2154:	00001f49 	andeq	r1, r0, r9, asr #30
    2158:	28019f05 	stmdacs	r1, {r0, r2, r8, r9, sl, fp, ip, pc}
    215c:	06000022 	streq	r0, [r0], -r2, lsr #32
    2160:	676701a0 	strbvs	r0, [r7, -r0, lsr #3]!
    2164:	a1050000 	mrsge	r0, (UNDEF: 5)
    2168:	0076ac01 	rsbseq	sl, r6, r1, lsl #24
    216c:	01a20600 			; <UNDEFINED> instruction: 0x01a20600
    2170:	00001f48 	andeq	r1, r0, r8, asr #30
    2174:	d501a305 	strle	sl, [r1, #-773]	; 0xfffffcfb
    2178:	06000063 	streq	r0, [r0], -r3, rrx
    217c:	5ffe01a5 	svcpl	0x00fe01a5
    2180:	a6050000 	strge	r0, [r5], -r0
    2184:	001c3201 	andseq	r3, ip, r1, lsl #4
    2188:	01a70600 			; <UNDEFINED> instruction: 0x01a70600
    218c:	00004a20 	andeq	r4, r0, r0, lsr #20
    2190:	df01a805 	svcle	0x0001a805
    2194:	0600008d 	streq	r0, [r0], -sp, lsl #1
    2198:	5ffd01a9 	svcpl	0x00fd01a9
    219c:	aa050000 	bge	1421a4 <heap_size+0x1221a4>
    21a0:	002be401 	eoreq	lr, fp, r1, lsl #8
    21a4:	01ab0600 			; <UNDEFINED> instruction: 0x01ab0600
    21a8:	0000806d 	andeq	r8, r0, sp, rrx
    21ac:	4b01ac05 	blmi	6d1c8 <heap_size+0x4d1c8>
    21b0:	06000091 			; <UNDEFINED> instruction: 0x06000091
    21b4:	1c2301ad 	stfnes	f0, [r3], #-692	; 0xfffffd4c
    21b8:	ae050000 	cdpge	0, 0, cr0, cr5, cr0, {0}
    21bc:	004fbb01 	subeq	fp, pc, r1, lsl #22
    21c0:	01af0600 			; <UNDEFINED> instruction: 0x01af0600
    21c4:	0000806c 	andeq	r8, r0, ip, rrx
    21c8:	c601b005 	strgt	fp, [r1], -r5
    21cc:	06000044 	streq	r0, [r0], -r4, asr #32
    21d0:	074401b1 			; <UNDEFINED> instruction: 0x074401b1
    21d4:	b2050000 	andlt	r0, r5, #0
    21d8:	00939e01 	addseq	r9, r3, r1, lsl #28
    21dc:	01b30600 			; <UNDEFINED> instruction: 0x01b30600
    21e0:	00003597 	muleq	r0, r7, r5
    21e4:	a001b405 	andge	fp, r1, r5, lsl #8
    21e8:	06000079 			; <UNDEFINED> instruction: 0x06000079
    21ec:	074301b5 			; <UNDEFINED> instruction: 0x074301b5
    21f0:	b6050000 	strlt	r0, [r5], -r0
    21f4:	00541201 	subseq	r1, r4, r1, lsl #4
    21f8:	01b70600 			; <UNDEFINED> instruction: 0x01b70600
    21fc:	000004e6 	andeq	r0, r0, r6, ror #9
    2200:	9e01b805 	cdpls	8, 0, cr11, cr1, cr5, {0}
    2204:	06000009 	streq	r0, [r0], -r9
    2208:	728b01b9 	addvc	r0, fp, #1073741870	; 0x4000002e
    220c:	ba050000 	blt	142214 <heap_size+0x122214>
    2210:	0093dc01 	addseq	sp, r3, r1, lsl #24
    2214:	01bb0600 			; <UNDEFINED> instruction: 0x01bb0600
    2218:	000004e5 	andeq	r0, r0, r5, ror #9
    221c:	fa01bc05 	blx	71238 <heap_size+0x51238>
    2220:	0600003b 			; <UNDEFINED> instruction: 0x0600003b
    2224:	247d01bf 	ldrbtcs	r0, [sp], #-447	; 0xfffffe41
    2228:	c0050000 	andgt	r0, r5, r0
    222c:	0052a201 	subseq	sl, r2, r1, lsl #4
    2230:	01c10600 	biceq	r0, r1, r0, lsl #12
    2234:	000064dc 	ldrdeq	r6, [r0], -ip
    2238:	bb01c205 	bllt	72a54 <heap_size+0x52a54>
    223c:	06000001 	streq	r0, [r0], -r1
    2240:	247c01c5 	ldrbtcs	r0, [ip], #-453	; 0xfffffe3b
    2244:	c6050000 	strgt	r0, [r5], -r0
    2248:	007e7101 	rsbseq	r7, lr, r1, lsl #2
    224c:	01c90600 	biceq	r0, r9, r0, lsl #12
    2250:	000010c2 	andeq	r1, r0, r2, asr #1
    2254:	b401ca05 	strlt	ip, [r1], #-2565	; 0xfffff5fb
    2258:	06000092 			; <UNDEFINED> instruction: 0x06000092
    225c:	559d01cb 	ldrpl	r0, [sp, #459]	; 0x1cb
    2260:	cc050000 	stcgt	0, cr0, [r5], {-0}
    2264:	003a2001 	eorseq	r2, sl, r1
    2268:	01cd0600 	biceq	r0, sp, r0, lsl #12
    226c:	000010c1 	andeq	r1, r0, r1, asr #1
    2270:	c001ce05 	andgt	ip, r1, r5, lsl #28
    2274:	06000093 			; <UNDEFINED> instruction: 0x06000093
    2278:	667d01d2 			; <UNDEFINED> instruction: 0x667d01d2
    227c:	d3050000 	movwle	r0, #20480	; 0x5000
    2280:	00399e01 	eorseq	r9, r9, r1, lsl #28
    2284:	01d40600 	bicseq	r0, r4, r0, lsl #12
    2288:	00004090 	muleq	r0, r0, r0
    228c:	4e01d505 	cfsh32mi	mvfx13, mvfx1, #5
    2290:	0600002c 	streq	r0, [r0], -ip, lsr #32
    2294:	8ab501d7 	bhi	fed429f8 <__stack+0xf6d42a00>
    2298:	d8050000 	stmdale	r5, {}	; <UNPREDICTABLE>
    229c:	003ffa01 	eorseq	pc, pc, r1, lsl #20
    22a0:	01d90600 	bicseq	r0, r9, r0, lsl #12
    22a4:	0000084e 	andeq	r0, r0, lr, asr #16
    22a8:	cd01da05 	vstrgt	s26, [r1, #-20]	; 0xffffffec
    22ac:	06000062 	streq	r0, [r0], -r2, rrx
    22b0:	2d0801dc 	stfcss	f0, [r8, #-880]	; 0xfffffc90
    22b4:	dd050000 	stcle	0, cr0, [r5, #-0]
    22b8:	00722401 	rsbseq	r2, r2, r1, lsl #8
    22bc:	01df0600 	bicseq	r0, pc, r0, lsl #12
    22c0:	00006a23 	andeq	r6, r0, r3, lsr #20
    22c4:	2c01e005 	stccs	0, cr14, [r1], {5}
    22c8:	0600002d 	streq	r0, [r0], -sp, lsr #32
    22cc:	766a01e1 	strbtvc	r0, [sl], -r1, ror #3
    22d0:	e2050000 	and	r0, r5, #0
    22d4:	007e0901 	rsbseq	r0, lr, r1, lsl #18
    22d8:	01e40600 	mvneq	r0, r0, lsl #12
    22dc:	000028a3 	andeq	r2, r0, r3, lsr #17
    22e0:	5701e505 	strpl	lr, [r1, -r5, lsl #10]
    22e4:	06000055 			; <UNDEFINED> instruction: 0x06000055
    22e8:	4eec01e6 	cdpmi	1, 14, cr0, cr12, cr6, {7}
    22ec:	e7050000 	str	r0, [r5, -r0]
    22f0:	00732701 	rsbseq	r2, r3, r1, lsl #14
    22f4:	01ef0600 	mvneq	r0, r0, lsl #12
    22f8:	00006257 	andeq	r6, r0, r7, asr r2
    22fc:	d901f005 	stmdble	r1, {r0, r2, ip, sp, lr, pc}
    2300:	06000025 	streq	r0, [r0], -r5, lsr #32
    2304:	8f6a01f1 	svchi	0x006a01f1
    2308:	f2050000 	vhadd.s8	d0, d5, d0
    230c:	00874d01 	addeq	r4, r7, r1, lsl #26
    2310:	01f30600 	mvnseq	r0, r0, lsl #12
    2314:	00005455 	andeq	r5, r0, r5, asr r4
    2318:	9f01f405 	svcls	0x0001f405
    231c:	06000024 	streq	r0, [r0], -r4, lsr #32
    2320:	1d5201f5 	ldfnee	f0, [r2, #-980]	; 0xfffffc2c
    2324:	f6050000 			; <UNDEFINED> instruction: 0xf6050000
    2328:	0066ce01 	rsbeq	ip, r6, r1, lsl #28
    232c:	01f70600 	mvnseq	r0, r0, lsl #12
    2330:	00006256 	andeq	r6, r0, r6, asr r2
    2334:	3a01f805 	bcc	80350 <heap_size+0x60350>
    2338:	0600005c 			; <UNDEFINED> instruction: 0x0600005c
    233c:	8f6901f9 	svchi	0x006901f9
    2340:	fa050000 	blx	142348 <heap_size+0x122348>
    2344:	00002f01 	andeq	r2, r0, r1, lsl #30
    2348:	01fb0600 	mvnseq	r0, r0, lsl #12
    234c:	00005454 	andeq	r5, r0, r4, asr r4
    2350:	d301fc05 	movwle	pc, #7173	; 0x1c05	; <UNPREDICTABLE>
    2354:	06000041 	streq	r0, [r0], -r1, asr #32
    2358:	1d5101fd 	ldfnee	f0, [r1, #-1012]	; 0xfffffc0c
    235c:	fe050000 	cdp2	0, 0, cr0, cr5, cr0, {0}
    2360:	008a0201 	addeq	r0, sl, r1, lsl #4
    2364:	01ff0600 	mvnseq	r0, r0, lsl #12
    2368:	00004025 	andeq	r4, r0, r5, lsr #32
    236c:	77028005 	strvc	r8, [r2, -r5]
    2370:	06000078 			; <UNDEFINED> instruction: 0x06000078
    2374:	40240281 	eormi	r0, r4, r1, lsl #5
    2378:	82050000 	andhi	r0, r5, #0
    237c:	00116002 	andseq	r6, r1, r2
    2380:	00040000 	andeq	r0, r4, r0
    2384:	45280500 	strmi	r0, [r8, #-1280]!	; 0xfffffb00
    2388:	05000024 	streq	r0, [r0, #-36]	; 0xffffffdc
    238c:	00180429 	andseq	r0, r8, r9, lsr #8
    2390:	ae2a0500 	cfsh64ge	mvdx0, mvdx10, #0
    2394:	0500008f 	streq	r0, [r0, #-143]	; 0xffffff71
    2398:	00066d2b 	andeq	r6, r6, fp, lsr #26
    239c:	a72c0500 	strge	r0, [ip, -r0, lsl #10]!
    23a0:	05000069 	streq	r0, [r0, #-105]	; 0xffffff97
    23a4:	0058aa2d 	subseq	sl, r8, sp, lsr #20
    23a8:	3c2e0500 	cfstr32cc	mvfx0, [lr], #-0
    23ac:	05000039 	streq	r0, [r0, #-57]	; 0xffffffc7
    23b0:	0082bd2f 	addeq	fp, r2, pc, lsr #26
    23b4:	5e300500 	cfabs32pl	mvfx0, mvfx0
    23b8:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
    23bc:	0023c631 	eoreq	ip, r3, r1, lsr r6
    23c0:	9a3e0500 	bls	f837c8 <heap_size+0xf637c8>
    23c4:	0500000a 	streq	r0, [r0, #-10]
    23c8:	008c143f 	addeq	r1, ip, pc, lsr r4
    23cc:	6b400500 	blvs	10037d4 <_end+0x37d4>
    23d0:	0500000d 	streq	r0, [r0, #-13]
    23d4:	0077bf41 	rsbseq	fp, r7, r1, asr #30
    23d8:	1f420500 	svcne	0x00420500
    23dc:	05000060 	streq	r0, [r0, #-96]	; 0xffffffa0
    23e0:	004ae943 	subeq	lr, sl, r3, asr #18
    23e4:	82440500 	subhi	r0, r4, #0, 10
    23e8:	05000016 	streq	r0, [r0, #-22]	; 0xffffffea
    23ec:	0007c945 	andeq	ip, r7, r5, asr #18
    23f0:	c3460500 	movtgt	r0, #25856	; 0x6500
    23f4:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
    23f8:	0034c447 	eorseq	ip, r4, r7, asr #8
    23fc:	28480500 	stmdacs	r8, {r8, sl}^
    2400:	0500003f 	streq	r0, [r0, #-63]	; 0xffffffc1
    2404:	003da349 	eorseq	sl, sp, r9, asr #6
    2408:	be4a0500 	cdplt	5, 4, cr0, cr10, cr0, {0}
    240c:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
    2410:	003c674b 	eorseq	r6, ip, fp, asr #14
    2414:	054c0500 	strbeq	r0, [ip, #-1280]	; 0xfffffb00
    2418:	05000079 	streq	r0, [r0, #-121]	; 0xffffff87
    241c:	00932e4d 	addseq	r2, r3, sp, asr #28
    2420:	784e0500 	stmdavc	lr, {r8, sl}^
    2424:	05000035 	streq	r0, [r0, #-53]	; 0xffffffcb
    2428:	0065a84f 	rsbeq	sl, r5, pc, asr #16
    242c:	32500500 	subscc	r0, r0, #0, 10
    2430:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
    2434:	007d7651 	rsbseq	r7, sp, r1, asr r6
    2438:	2f520500 	svccs	0x00520500
    243c:	0500005a 	streq	r0, [r0, #-90]	; 0xffffffa6
    2440:	00741b53 	rsbseq	r1, r4, r3, asr fp
    2444:	21540500 	cmpcs	r4, r0, lsl #10
    2448:	05000007 	streq	r0, [r0, #-7]
    244c:	0054e855 	subseq	lr, r4, r5, asr r8
    2450:	26560500 	ldrbcs	r0, [r6], -r0, lsl #10
    2454:	0500004f 	streq	r0, [r0, #-79]	; 0xffffffb1
    2458:	0043a168 	subeq	sl, r3, r8, ror #2
    245c:	f5690500 			; <UNDEFINED> instruction: 0xf5690500
    2460:	05000088 	streq	r0, [r0, #-136]	; 0xffffff78
    2464:	008a9a6a 	addeq	r9, sl, sl, ror #20
    2468:	2e6b0500 	cdpcs	5, 6, cr0, cr11, cr0, {0}
    246c:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
    2470:	0065766c 	rsbeq	r7, r5, ip, ror #12
    2474:	5e6d0500 	cdppl	5, 6, cr0, cr13, cr0, {0}
    2478:	05000048 	streq	r0, [r0, #-72]	; 0xffffffb8
    247c:	006d866e 	rsbeq	r8, sp, lr, ror #12
    2480:	e96f0500 	stmdb	pc!, {r8, sl}^	; <UNPREDICTABLE>
    2484:	05000001 	streq	r0, [r0, #-1]
    2488:	00530d70 	subseq	r0, r3, r0, ror sp
    248c:	c7710500 	ldrbgt	r0, [r1, -r0, lsl #10]!
    2490:	05000003 	streq	r0, [r0, #-3]
    2494:	00032e72 	andeq	r2, r3, r2, ror lr
    2498:	5f7f0500 	svcpl	0x007f0500
    249c:	05000060 	streq	r0, [r0, #-96]	; 0xffffffa0
    24a0:	63b80180 			; <UNDEFINED> instruction: 0x63b80180
    24a4:	8d050000 	stchi	0, cr0, [r5, #-0]
    24a8:	002b1201 	eoreq	r1, fp, r1, lsl #4
    24ac:	019d0500 	orrseq	r0, sp, r0, lsl #10
    24b0:	000017ed 	andeq	r1, r0, sp, ror #15
    24b4:	b0019f05 	andlt	r9, r1, r5, lsl #30
    24b8:	05000044 	streq	r0, [r0, #-68]	; 0xffffffbc
    24bc:	365e01a7 	ldrbcc	r0, [lr], -r7, lsr #3
    24c0:	a8050000 	stmdage	r5, {}	; <UNPREDICTABLE>
    24c4:	00129901 	andseq	r9, r2, r1, lsl #18
    24c8:	01b00500 	lslseq	r0, r0, #10
    24cc:	00003e1f 	andeq	r3, r0, pc, lsl lr
    24d0:	ee01b105 	mvfs	f3, f5
    24d4:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
    24d8:	367d01ba 			; <UNDEFINED> instruction: 0x367d01ba
    24dc:	bb050000 	bllt	1424e4 <heap_size+0x1224e4>
    24e0:	007b8d01 	rsbseq	r8, fp, r1, lsl #26
    24e4:	01bc0500 			; <UNDEFINED> instruction: 0x01bc0500
    24e8:	00001e06 	andeq	r1, r0, r6, lsl #28
    24ec:	4401cc05 	strmi	ip, [r1], #-3077	; 0xfffff3fb
    24f0:	05000084 	streq	r0, [r0, #-132]	; 0xffffff7c
    24f4:	0caa01cd 	stfeqs	f0, [sl], #820	; 0x334
    24f8:	ce050000 	cdpgt	0, 0, cr0, cr5, cr0, {0}
    24fc:	007afb01 	rsbseq	pc, sl, r1, lsl #22
    2500:	01cf0500 	biceq	r0, pc, r0, lsl #10
    2504:	000072de 	ldrdeq	r7, [r0], -lr
    2508:	0401d005 	streq	sp, [r1], #-5
    250c:	0500004a 	streq	r0, [r0, #-74]	; 0xffffffb6
    2510:	3f4101d1 	svccc	0x004101d1
    2514:	d2050000 	andle	r0, r5, #0
    2518:	00634501 	rsbeq	r4, r3, r1, lsl #10
    251c:	01d30500 	bicseq	r0, r3, r0, lsl #10
    2520:	000045db 	ldrdeq	r4, [r0], -fp
    2524:	4b01d405 	blmi	77540 <heap_size+0x57540>
    2528:	05000085 	streq	r0, [r0, #-133]	; 0xffffff7b
    252c:	929301de 	addsls	r0, r3, #-2147483593	; 0x80000037
    2530:	df050000 	svcle	0x00050000
    2534:	006a4e01 	rsbeq	r4, sl, r1, lsl #28
    2538:	01e00500 	mvneq	r0, r0, lsl #10
    253c:	00005345 	andeq	r5, r0, r5, asr #6
    2540:	2501e105 	strcs	lr, [r1, #-261]	; 0xfffffefb
    2544:	05000051 	streq	r0, [r0, #-81]	; 0xffffffaf
    2548:	218b01e2 	orrcs	r0, fp, r2, ror #3
    254c:	e3050000 	movw	r0, #20480	; 0x5000
    2550:	00100a01 	andseq	r0, r0, r1, lsl #20
    2554:	01e40500 	mvneq	r0, r0, lsl #10
    2558:	00006737 	andeq	r6, r0, r7, lsr r7
    255c:	0501e505 	streq	lr, [r1, #-1285]	; 0xfffffafb
    2560:	05000075 	streq	r0, [r0, #-117]	; 0xffffff8b
    2564:	4dba01e6 	ldfmis	f0, [sl, #920]!	; 0x398
    2568:	e7050000 	str	r0, [r5, -r0]
    256c:	0037d501 	eorseq	sp, r7, r1, lsl #10
    2570:	01e80500 	mvneq	r0, r0, lsl #10
    2574:	0000079c 	muleq	r0, ip, r7
    2578:	5701e905 	strpl	lr, [r1, -r5, lsl #18]
    257c:	05000083 	streq	r0, [r0, #-131]	; 0xffffff7d
    2580:	409c01ea 	addsmi	r0, ip, sl, ror #3
    2584:	f8050000 			; <UNDEFINED> instruction: 0xf8050000
    2588:	00804b01 	addeq	r4, r0, r1, lsl #22
    258c:	01fc0500 	mvnseq	r0, r0, lsl #10
    2590:	00007c90 	muleq	r0, r0, ip
    2594:	c401fd05 	strgt	pc, [r1], #-3333	; 0xfffff2fb
    2598:	0500005e 	streq	r0, [r0, #-94]	; 0xffffffa2
    259c:	6777028c 	ldrbvs	r0, [r7, -ip, lsl #5]!
    25a0:	90050000 	andls	r0, r5, r0
    25a4:	005d8402 	subseq	r8, sp, r2, lsl #8
    25a8:	02920500 	addseq	r0, r2, #0, 10
    25ac:	0000263f 	andeq	r2, r0, pc, lsr r6
    25b0:	02000400 	andeq	r0, r0, #0, 8
    25b4:	000003cf 	andeq	r0, r0, pc, asr #7
    25b8:	0001c107 	andeq	ip, r1, r7, lsl #2
    25bc:	01000300 	mrseq	r0, LR_irq
    25c0:	05020103 	streq	r0, [r2, #-259]	; 0xfffffefd
    25c4:	00641602 	rsbeq	r1, r4, r2, lsl #12
    25c8:	04040300 	streq	r0, [r4], #-768	; 0xfffffd00
    25cc:	07030b03 	streq	r0, [r3, -r3, lsl #22]
    25d0:	00002034 	andeq	r2, r0, r4, lsr r0
    25d4:	bb0d0504 	bllt	3439ec <heap_size+0x3239ec>
    25d8:	0400003f 	streq	r0, [r0], #-63	; 0xffffffc1
    25dc:	00238207 	eoreq	r8, r3, r7, lsl #4
    25e0:	00040400 	andeq	r0, r4, r0, lsl #8
    25e4:	ad020004 	stcge	0, cr0, [r2, #-16]
    25e8:	07000004 	streq	r0, [r0, -r4]
    25ec:	000001c1 	andeq	r0, r0, r1, asr #3
    25f0:	05010003 	streq	r0, [r1, #-3]
    25f4:	0095ef01 	addseq	lr, r5, r1, lsl #30
    25f8:	08030300 	stmdaeq	r3, {r8, r9}
    25fc:	36531b05 	ldrbcc	r1, [r3], -r5, lsl #22
    2600:	1d030000 	stcne	0, cr0, [r3, #-0]
    2604:	a108050c 	tstge	r8, ip, lsl #10
    2608:	03000016 	movweq	r0, #22
    260c:	08050d0a 	stmdaeq	r5, {r1, r3, r8, sl, fp}
    2610:	0000683f 	andeq	r6, r0, pc, lsr r8
    2614:	070e0e03 	streq	r0, [lr, -r3, lsl #28]
    2618:	00000c09 	andeq	r0, r0, r9, lsl #24
    261c:	0c2b0704 	stceq	7, cr0, [fp], #-16
    2620:	03040000 	movweq	r0, #16384	; 0x4000
    2624:	02050f0b 	andeq	r0, r5, #11, 30	; 0x2c
    2628:	00005dd7 	ldrdeq	r5, [r0], -r7
    262c:	07100403 	ldreq	r0, [r0, -r3, lsl #8]
    2630:	00000c6b 	andeq	r0, r0, fp, ror #24
    2634:	11050304 	tstne	r5, r4, lsl #6
    2638:	00279007 	eoreq	r9, r7, r7
    263c:	de070400 	cfcpysle	mvf0, mvf7
    2640:	0400000c 	streq	r0, [r0], #-12
    2644:	000d1a07 	andeq	r1, sp, r7, lsl #20
    2648:	4e070400 	cfcpysmi	mvf0, mvf7
    264c:	0300000d 	movweq	r0, #13
    2650:	29051223 	stmdbcs	r5, {r0, r1, r5, r9, ip}
    2654:	00006dbe 			; <UNDEFINED> instruction: 0x00006dbe
    2658:	07022b03 	streq	r2, [r2, -r3, lsl #22]
    265c:	00000d64 	andeq	r0, r0, r4, ror #26
    2660:	052d0304 	streq	r0, [sp, #-772]!	; 0xfffffcfc
    2664:	000dbb07 	andeq	fp, sp, r7, lsl #22
    2668:	52070400 	andpl	r0, r7, #0, 8
    266c:	0400000e 	streq	r0, [r0], #-14
    2670:	07052403 	streq	r2, [r5, -r3, lsl #8]
    2674:	000011a5 	andeq	r1, r0, r5, lsr #3
    2678:	d6270504 	strtle	r0, [r7], -r4, lsl #10
    267c:	0300008c 	movweq	r0, #140	; 0x8c
    2680:	9b071328 	blls	1c7328 <heap_size+0x1a7328>
    2684:	04000012 	streq	r0, [r0], #-18	; 0xffffffee
    2688:	05063c03 	streq	r3, [r6, #-3075]	; 0xfffff3fd
    268c:	007c4a0b 	rsbseq	r4, ip, fp, lsl #20
    2690:	0c0d0300 	stceq	3, cr0, [sp], {-0}
    2694:	050e0304 	streq	r0, [lr, #-772]	; 0xfffffcfc
    2698:	040f0304 	streq	r0, [pc], #-772	; 26a0 <strtol_l+0x8>
    269c:	523d1405 	eorspl	r1, sp, #83886080	; 0x5000000
    26a0:	18030000 	stmdane	r3, {}	; <UNPREDICTABLE>
    26a4:	5a060514 	bpl	183afc <heap_size+0x163afc>
    26a8:	04000092 	streq	r0, [r0], #-146	; 0xffffff6e
    26ac:	07031903 	streq	r1, [r3, -r3, lsl #18]
    26b0:	000012ab 	andeq	r1, r0, fp, lsr #5
    26b4:	12fd0704 	rscsne	r0, sp, #4, 14	; 0x100000
    26b8:	9f030000 	svcls	0x00030000
    26bc:	1c070501 	cfstr32ne	mvfx0, [r7], {1}
    26c0:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
    26c4:	00135f07 	andseq	r5, r3, r7, lsl #30
    26c8:	7f070400 	svcvc	0x00070400
    26cc:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
    26d0:	07153d03 	ldreq	r3, [r5, -r3, lsl #26]
    26d4:	00001522 	andeq	r1, r0, r2, lsr #10
    26d8:	04053e03 	streq	r3, [r5], #-3587	; 0xfffff1fd
    26dc:	07074003 	streq	r4, [r7, -r3]
    26e0:	00001532 	andeq	r1, r0, r2, lsr r5
    26e4:	159c0704 	ldrne	r0, [ip, #1796]	; 0x704
    26e8:	ef030000 	svc	0x00030000
    26ec:	13051601 	movwne	r1, #22017	; 0x5601
    26f0:	00007ae4 	andeq	r7, r0, r4, ror #21
    26f4:	01f00304 	mvnseq	r0, r4, lsl #6
    26f8:	f4060417 	vst3.8	{d0-d2}, [r6 :64], r7
    26fc:	002c6d01 	eoreq	r6, ip, r1, lsl #26
    2700:	43050400 	movwmi	r0, #21504	; 0x5400
    2704:	00004699 	muleq	r0, r9, r6
    2708:	07184f03 	ldreq	r4, [r8, -r3, lsl #30]
    270c:	00001652 	andeq	r1, r0, r2, asr r6
    2710:	27ec0704 	strbcs	r0, [ip, r4, lsl #14]!
    2714:	03040000 	movweq	r0, #16384	; 0x4000
    2718:	08051904 	stmdaeq	r5, {r2, r8, fp, ip}
    271c:	00000ad8 	ldrdeq	r0, [r0], -r8
    2720:	04100a03 	ldreq	r0, [r0], #-2563	; 0xfffff5fd
    2724:	00177c07 	andseq	r7, r7, r7, lsl #24
    2728:	05100300 	ldreq	r0, [r0, #-768]	; 0xfffffd00
    272c:	00179207 	andseq	r9, r7, r7, lsl #4
    2730:	14030400 	strne	r0, [r3], #-1024	; 0xfffffc00
    2734:	fe02051a 	mcr2	5, 0, r0, cr2, cr10, {0}
    2738:	04000012 	streq	r0, [r0], #-18	; 0xffffffee
    273c:	0017c707 	andseq	ip, r7, r7, lsl #14
    2740:	05030400 	streq	r0, [r3, #-1024]	; 0xfffffc00
    2744:	ae02051b 	mcrge	5, 0, r0, cr2, cr11, {0}
    2748:	03000026 	movweq	r0, #38	; 0x26
    274c:	3b070904 	blcc	1c4b64 <heap_size+0x1a4b64>
    2750:	03000018 	movweq	r0, #24
    2754:	9207050e 	andls	r0, r7, #58720256	; 0x3800000
    2758:	04000017 	streq	r0, [r0], #-23	; 0xffffffe9
    275c:	00185107 	andseq	r5, r8, r7, lsl #2
    2760:	03040400 	movweq	r0, #17408	; 0x4400
    2764:	02050a06 	andeq	r0, r5, #24576	; 0x6000
    2768:	00006416 	andeq	r6, r0, r6, lsl r4
    276c:	031c0403 	tsteq	ip, #50331648	; 0x3000000
    2770:	34071d0b 	strcc	r1, [r7], #-3339	; 0xfffff2f5
    2774:	04000020 	streq	r0, [r0], #-32	; 0xffffffe0
    2778:	3fbb0d05 	svccc	0x00bb0d05
    277c:	07040000 	streq	r0, [r4, -r0]
    2780:	00002382 	andeq	r2, r0, r2, lsl #7
    2784:	0b070304 	bleq	1c339c <heap_size+0x1a339c>
    2788:	001fa007 	andseq	sl, pc, r7
    278c:	00040400 	andeq	r0, r4, r0, lsl #8
    2790:	05000004 	streq	r0, [r0, #-4]
    2794:	00771116 	rsbseq	r1, r7, r6, lsl r1
    2798:	22210500 	eorcs	r0, r1, #0, 10
    279c:	05000065 	streq	r0, [r0, #-101]	; 0xffffff9b
    27a0:	007aa428 	rsbseq	sl, sl, r8, lsr #8
    27a4:	01f90500 	mvnseq	r0, r0, lsl #10
    27a8:	00005e1a 	andeq	r5, r0, sl, lsl lr
    27ac:	1c01ff05 	stcne	15, cr15, [r1], {5}
    27b0:	0500000a 	streq	r0, [r0, #-10]
    27b4:	75430285 	strbvc	r0, [r3, #-645]	; 0xfffffd7b
    27b8:	8d050000 	stchi	0, cr0, [r5, #-0]
    27bc:	0066a902 	rsbeq	sl, r6, r2, lsl #18
    27c0:	02950500 	addseq	r0, r5, #0, 10
    27c4:	00005c99 	muleq	r0, r9, ip
    27c8:	d8029b05 	stmdale	r2, {r0, r2, r8, r9, fp, ip, pc}
    27cc:	05000001 	streq	r0, [r0, #-1]
    27d0:	960e02a9 	strls	r0, [lr], -r9, lsr #5
    27d4:	b1050000 	mrslt	r0, (UNDEF: 5)
    27d8:	003b0d02 	eorseq	r0, fp, r2, lsl #26
    27dc:	02bf0500 	adcseq	r0, pc, #0, 10
    27e0:	000065bf 			; <UNDEFINED> instruction: 0x000065bf
    27e4:	f302ca05 	vpmax.u8	d12, d2, d5
    27e8:	00000076 	andeq	r0, r0, r6, ror r0
    27ec:	05000004 	streq	r0, [r0, #-4]
    27f0:	0053dd51 	subseq	sp, r3, r1, asr sp
    27f4:	97520500 	ldrbls	r0, [r2, -r0, lsl #10]
    27f8:	05000042 	streq	r0, [r0, #-66]	; 0xffffffbe
    27fc:	00228d53 	eoreq	r8, r2, r3, asr sp
    2800:	c6540500 	ldrbgt	r0, [r4], -r0, lsl #10
    2804:	05000041 	streq	r0, [r0, #-65]	; 0xffffffbf
    2808:	00908056 	addseq	r8, r0, r6, asr r0
    280c:	f0570500 			; <UNDEFINED> instruction: 0xf0570500
    2810:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
    2814:	00526458 	subseq	r6, r2, r8, asr r4
    2818:	05590500 	ldrbeq	r0, [r9, #-1280]	; 0xfffffb00
    281c:	0500007f 	streq	r0, [r0, #-127]	; 0xffffff81
    2820:	0051fc5a 	subseq	pc, r1, sl, asr ip	; <UNPREDICTABLE>
    2824:	6a5b0500 	bvs	16c3c2c <_end+0x6c3c2c>
    2828:	05000070 	streq	r0, [r0, #-112]	; 0xffffff90
    282c:	0068a15c 	rsbeq	sl, r8, ip, asr r1
    2830:	bf5d0500 	svclt	0x005d0500
    2834:	05000086 	streq	r0, [r0, #-134]	; 0xffffff7a
    2838:	0057af5e 	subseq	sl, r7, lr, asr pc
    283c:	385f0500 	ldmdacc	pc, {r8, sl}^	; <UNPREDICTABLE>
    2840:	05000006 	streq	r0, [r0, #-6]
    2844:	002bc163 	eoreq	ip, fp, r3, ror #2
    2848:	f6660500 			; <UNDEFINED> instruction: 0xf6660500
    284c:	05000049 	streq	r0, [r0, #-73]	; 0xffffffb7
    2850:	00023d67 	andeq	r3, r2, r7, ror #26
    2854:	9b720500 	blls	1c83c5c <_end+0xc83c5c>
    2858:	0500008c 	streq	r0, [r0, #-140]	; 0xffffff74
    285c:	008a9173 	addeq	r9, sl, r3, ror r1
    2860:	16740500 	ldrbtne	r0, [r4], -r0, lsl #10
    2864:	05000045 	streq	r0, [r0, #-69]	; 0xffffffbb
    2868:	0055c676 	subseq	ip, r5, r6, ror r6
    286c:	707b0500 	rsbsvc	r0, fp, r0, lsl #10
    2870:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
    2874:	6dcd0181 	stfvse	f0, [sp, #516]	; 0x204
    2878:	87050000 	strhi	r0, [r5, -r0]
    287c:	00906e01 	addseq	r6, r0, r1, lsl #28
    2880:	018d0500 	orreq	r0, sp, r0, lsl #10
    2884:	0000188b 	andeq	r1, r0, fp, lsl #17
    2888:	8e019505 	cfsh32hi	mvfx9, mvfx1, #5
    288c:	0500000b 	streq	r0, [r0, #-11]
    2890:	5b500198 	blpl	1402ef8 <_end+0x402ef8>
    2894:	9b050000 	blls	14289c <heap_size+0x12289c>
    2898:	004cbe01 	subeq	fp, ip, r1, lsl #28
    289c:	019e0500 	orrseq	r0, lr, r0, lsl #10
    28a0:	00000cd4 	ldrdeq	r0, [r0], -r4
    28a4:	2a01a005 	bcs	6a8c0 <heap_size+0x4a8c0>
    28a8:	05000092 	streq	r0, [r0, #-146]	; 0xffffff6e
    28ac:	16f701a1 	ldrbtne	r0, [r7], r1, lsr #3
    28b0:	a2050000 	andge	r0, r5, #0
    28b4:	00004901 	andeq	r4, r0, r1, lsl #18
    28b8:	01a40500 			; <UNDEFINED> instruction: 0x01a40500
    28bc:	00009478 	andeq	r9, r0, r8, ror r4
    28c0:	db01a505 	blle	6bcdc <heap_size+0x4bcdc>
    28c4:	0500007b 	streq	r0, [r0, #-123]	; 0xffffff85
    28c8:	46a901a6 	strtmi	r0, [r9], r6, lsr #3
    28cc:	ae050000 	cdpge	0, 0, cr0, cr5, cr0, {0}
    28d0:	00082701 	andeq	r2, r8, r1, lsl #14
    28d4:	058e0500 	streq	r0, [lr, #1280]	; 0x500
    28d8:	0000497b 	andeq	r4, r0, fp, ror r9
    28dc:	1b05ab05 	blne	16d4f8 <heap_size+0x14d4f8>
    28e0:	05000095 	streq	r0, [r0, #-149]	; 0xffffff6b
    28e4:	70f205cf 	rscsvc	r0, r2, pc, asr #11
    28e8:	d0050000 	andle	r0, r5, r0
    28ec:	00034705 	andeq	r4, r3, r5, lsl #14
    28f0:	05d10500 	ldrbeq	r0, [r1, #1280]	; 0x500
    28f4:	000032a7 	andeq	r3, r0, r7, lsr #5
    28f8:	7905d205 	stmdbvc	r5, {r0, r2, r9, ip, lr, pc}
    28fc:	0500007a 	streq	r0, [r0, #-122]	; 0xffffff86
    2900:	95a505ff 	strls	r0, [r5, #1535]!	; 0x5ff
    2904:	80050000 	andhi	r0, r5, r0
    2908:	00962f06 	addseq	r2, r6, r6, lsl #30
    290c:	068e0500 	streq	r0, [lr], r0, lsl #10
    2910:	000095db 	ldrdeq	r9, [r0], -fp
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000003cb 	andeq	r0, r0, fp, asr #7
   4:	034f0002 	movteq	r0, #61442	; 0xf002
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
  a4:	6c5c736c 	mrrcvs	3, 6, r7, ip, cr12
  a8:	675c6269 	ldrbvs	r6, [ip, -r9, ror #4]
  ac:	615c6363 	cmpvs	ip, r3, ror #6
  b0:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
  b4:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
  b8:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
  bc:	332e375c 			; <UNDEFINED> instruction: 0x332e375c
  c0:	695c312e 	ldmdbvs	ip, {r1, r2, r3, r5, r8, ip, sp}^
  c4:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
  c8:	63006564 	movwvs	r6, #1380	; 0x564
  cc:	72705c3a 	rsbsvc	r5, r0, #14848	; 0x3a00
  d0:	6172676f 	cmnvs	r2, pc, ror #14
  d4:	7461646d 	strbtvc	r6, [r1], #-1133	; 0xfffffb93
  d8:	68635c61 	stmdavs	r3!, {r0, r5, r6, sl, fp, ip, lr}^
  dc:	6c6f636f 	stclvs	3, cr6, [pc], #-444	; ffffff28 <__stack+0xf7ffff30>
  e0:	79657461 	stmdbvc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
  e4:	62696c5c 	rsbvs	r6, r9, #92, 24	; 0x5c00
  e8:	6363675c 	cmnvs	r3, #92, 14	; 0x1700000
  ec:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
  f0:	626d652d 	rsbvs	r6, sp, #188743680	; 0xb400000
  f4:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  f8:	6f745c64 	svcvs	0x00745c64
  fc:	5c736c6f 	ldclpl	12, cr6, [r3], #-444	; 0xfffffe44
 100:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 104:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 108:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 10c:	6e695c69 	cdpvs	12, 6, cr5, cr9, cr9, {3}
 110:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 114:	79735c65 	ldmdbvc	r3!, {r0, r2, r5, r6, sl, fp, ip, lr}^
 118:	3a630073 	bcc	18c02ec <_end+0x8c02ec>
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
 1bc:	59545400 	ldmdbpl	r4, {sl, ip, lr}^
 1c0:	6e6f635f 	mcrvs	3, 3, r6, cr15, cr15, {2}
 1c4:	00632e66 	rsbeq	r2, r3, r6, ror #28
 1c8:	5f000001 	svcpl	0x00000001
 1cc:	61666564 	cmnvs	r6, r4, ror #10
 1d0:	5f746c75 	svcpl	0x00746c75
 1d4:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 1d8:	00682e73 	rsbeq	r2, r8, r3, ror lr
 1dc:	73000002 	movwvc	r0, #2
 1e0:	72616474 	rsbvc	r6, r1, #116, 8	; 0x74000000
 1e4:	00682e67 	rsbeq	r2, r8, r7, ror #28
 1e8:	6c000003 	stcvs	0, cr0, [r0], {3}
 1ec:	2e6b636f 	cdpcs	3, 6, cr6, cr11, cr15, {3}
 1f0:	00040068 	andeq	r0, r4, r8, rrx
 1f4:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
 1f8:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
 1fc:	00040068 	andeq	r0, r4, r8, rrx
 200:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 204:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
 208:	00030068 	andeq	r0, r3, r8, rrx
 20c:	65657200 	strbvs	r7, [r5, #-512]!	; 0xfffffe00
 210:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 214:	00000400 	andeq	r0, r0, r0, lsl #8
 218:	6975623c 	ldmdbvs	r5!, {r2, r3, r4, r5, r9, sp, lr}^
 21c:	692d746c 	pushvs	{r2, r3, r5, r6, sl, ip, sp, lr}
 220:	00003e6e 	andeq	r3, r0, lr, ror #28
 224:	735f0000 	cmpvc	pc, #0
 228:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 22c:	00682e74 	rsbeq	r2, r8, r4, ror lr
 230:	75000004 	strvc	r0, [r0, #-4]
 234:	7473696e 	ldrbtvc	r6, [r3], #-2414	; 0xfffff692
 238:	00682e64 	rsbeq	r2, r8, r4, ror #28
 23c:	65000004 	strvs	r0, [r0, #-4]
 240:	6f6e7272 	svcvs	0x006e7272
 244:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
 248:	54540000 	ldrbpl	r0, [r4], #-0
 24c:	6f635f59 	svcvs	0x00635f59
 250:	682e666e 	stmdavs	lr!, {r1, r2, r3, r5, r6, r9, sl, sp, lr}
 254:	00000100 	andeq	r0, r0, r0, lsl #2
 258:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
 25c:	2e57485f 	mrccs	8, 2, r4, cr7, cr15, {2}
 260:	00010068 	andeq	r0, r1, r8, rrx
 264:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 268:	682e6f69 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}
 26c:	00000500 	andeq	r0, r0, r0, lsl #10
 270:	736e615f 	cmnvc	lr, #-1073741801	; 0xc0000017
 274:	00682e69 	rsbeq	r2, r8, r9, ror #28
 278:	6e000005 	cdpvs	0, 0, cr0, cr0, cr5, {0}
 27c:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 280:	00682e62 	rsbeq	r2, r8, r2, ror #28
 284:	5f000006 	svcpl	0x00000006
 288:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 28c:	765f6269 	ldrbvc	r6, [pc], -r9, ror #4
 290:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
 294:	682e6e6f 	stmdavs	lr!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}
 298:	00000500 	andeq	r0, r0, r0, lsl #10
 29c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 2a0:	682e6769 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, sp, lr}
 2a4:	00000400 	andeq	r0, r0, r0, lsl #8
 2a8:	65656569 	strbvs	r6, [r5, #-1385]!	; 0xfffffa97
 2ac:	682e7066 	stmdavs	lr!, {r1, r2, r5, r6, ip, sp, lr}
 2b0:	00000200 	andeq	r0, r0, r0, lsl #4
 2b4:	74616566 	strbtvc	r6, [r1], #-1382	; 0xfffffa9a
 2b8:	73657275 	cmnvc	r5, #1342177287	; 0x50000007
 2bc:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
 2c0:	64630000 	strbtvs	r0, [r3], #-0
 2c4:	2e736665 	cdpcs	6, 7, cr6, cr3, cr5, {3}
 2c8:	00040068 	andeq	r0, r4, r8, rrx
 2cc:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
 2d0:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
 2d4:	00020068 	andeq	r0, r2, r8, rrx
 2d8:	70797400 	rsbsvc	r7, r9, r0, lsl #8
 2dc:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 2e0:	00000400 	andeq	r0, r0, r0, lsl #8
 2e4:	6874705f 	ldmdavs	r4!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^
 2e8:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
 2ec:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 2f0:	00682e73 	rsbeq	r2, r8, r3, ror lr
 2f4:	74000004 	strvc	r0, [r0], #-4
 2f8:	73657079 	cmnvc	r5, #121	; 0x79
 2fc:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 300:	74730000 	ldrbtvc	r0, [r3], #-0
 304:	2e6f6964 	vnmulcs.f16	s13, s30, s9	; <UNPREDICTABLE>
 308:	00040068 	andeq	r0, r4, r8, rrx
 30c:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 310:	2e62696c 	vnmulcs.f16	s13, s4, s25	; <UNPREDICTABLE>
 314:	00050068 	andeq	r0, r5, r8, rrx
 318:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 31c:	2e62696c 	vnmulcs.f16	s13, s4, s25	; <UNPREDICTABLE>
 320:	00020068 	andeq	r0, r2, r8, rrx
 324:	696e7500 	stmdbvs	lr!, {r8, sl, ip, sp, lr}^
 328:	2e647473 	mcrcs	4, 3, r7, cr4, cr3, {3}
 32c:	00050068 	andeq	r0, r5, r8, rrx
 330:	72726500 	rsbsvc	r6, r2, #0, 10
 334:	682e6f6e 	stmdavs	lr!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}
 338:	00000500 	andeq	r0, r0, r0, lsl #10
 33c:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 340:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 344:	00000300 	andeq	r0, r0, r0, lsl #6
 348:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 34c:	672d746e 	strvs	r7, [sp, -lr, ror #8]!
 350:	682e6363 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, sp, lr}
 354:	00000300 	andeq	r0, r0, r0, lsl #6
 358:	02050000 	andeq	r0, r5, #0
 35c:	00000144 	andeq	r0, r0, r4, asr #2
 360:	a0010a03 	andge	r0, r1, r3, lsl #20
 364:	040200bd 	streq	r0, [r2], #-189	; 0xffffff43
 368:	02006803 	andeq	r6, r0, #196608	; 0x30000
 36c:	00d40304 	sbcseq	r0, r4, r4, lsl #6
 370:	06010402 	streq	r0, [r1], -r2, lsl #8
 374:	30860666 	addcc	r0, r6, r6, ror #12
 378:	03040200 	movweq	r0, #16896	; 0x4200
 37c:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
 380:	0200f003 	andeq	pc, r0, #3
 384:	66060104 	strvs	r0, [r6], -r4, lsl #2
 388:	83308606 	teqhi	r0, #6291456	; 0x600000
 38c:	a0692f4c 	rsbge	r2, r9, ip, asr #30
 390:	8469694b 	strbthi	r6, [r9], #-2379	; 0xfffff6b5
 394:	67689f83 	strbvs	r9, [r8, -r3, lsl #31]!
 398:	9f834bd7 	svcls	0x00834bd7
 39c:	6f033068 	svcvs	0x00033068
 3a0:	02002d66 	andeq	r2, r0, #6528	; 0x1980
 3a4:	66060104 	strvs	r0, [r6], -r4, lsl #2
 3a8:	82170306 	andshi	r0, r7, #402653184	; 0x18000000
 3ac:	4e2e7903 	vmulmi.f16	s14, s28, s6	; <UNPREDICTABLE>
 3b0:	4c833031 	stcmi	0, cr3, [r3], {49}	; 0x31
 3b4:	4b846b2f 	blmi	fe11b078 <__stack+0xf611b080>
 3b8:	6723084b 	strvs	r0, [r3, -fp, asr #16]!
 3bc:	67306730 			; <UNDEFINED> instruction: 0x67306730
 3c0:	67306730 			; <UNDEFINED> instruction: 0x67306730
 3c4:	d60b0330 			; <UNDEFINED> instruction: 0xd60b0330
 3c8:	0a02f3f4 	beq	bd3a0 <heap_size+0x9d3a0>
 3cc:	da010100 	ble	407d4 <heap_size+0x207d4>
 3d0:	02000000 	andeq	r0, r0, #0
 3d4:	0000a600 	andeq	sl, r0, r0, lsl #12
 3d8:	fb010200 	blx	40be2 <heap_size+0x20be2>
 3dc:	01000d0e 	tsteq	r0, lr, lsl #26
 3e0:	00010101 	andeq	r0, r1, r1, lsl #2
 3e4:	00010000 	andeq	r0, r1, r0
 3e8:	72730100 	rsbsvc	r0, r3, #0, 2
 3ec:	3a630063 	bcc	18c0580 <_end+0x8c0580>
 3f0:	6f72705c 	svcvs	0x0072705c
 3f4:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
 3f8:	61746164 	cmnvs	r4, r4, ror #2
 3fc:	6f68635c 	svcvs	0x0068635c
 400:	616c6f63 	cmnvs	ip, r3, ror #30
 404:	5c796574 	cfldr64pl	mvdx6, [r9], #-464	; 0xfffffe30
 408:	5c62696c 			; <UNDEFINED> instruction: 0x5c62696c
 40c:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 410:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 414:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
 418:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
 41c:	6f6f745c 	svcvs	0x006f745c
 420:	6c5c736c 	mrrcvs	3, 6, r7, ip, cr12
 424:	675c6269 	ldrbvs	r6, [ip, -r9, ror #4]
 428:	615c6363 	cmpvs	ip, r3, ror #6
 42c:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 430:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 434:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 438:	332e375c 			; <UNDEFINED> instruction: 0x332e375c
 43c:	695c312e 	ldmdbvs	ip, {r1, r2, r3, r5, r8, ip, sp}^
 440:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 444:	00006564 	andeq	r6, r0, r4, ror #10
 448:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
 44c:	2e57485f 	mrccs	8, 2, r4, cr7, cr15, {2}
 450:	00010063 	andeq	r0, r1, r3, rrx
 454:	52415500 	subpl	r5, r1, #0, 10
 458:	57485f54 	smlsldpl	r5, r8, r4, pc	; <UNPREDICTABLE>
 45c:	0100682e 	tsteq	r0, lr, lsr #16
 460:	74730000 	ldrbtvc	r0, [r3], #-0
 464:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 468:	6363672d 	cmnvs	r3, #11796480	; 0xb40000
 46c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 470:	74730000 	ldrbtvc	r0, [r3], #-0
 474:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 478:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 47c:	00000000 	andeq	r0, r0, r0
 480:	04700205 	ldrbteq	r0, [r0], #-517	; 0xfffffdfb
 484:	4b150000 	blmi	54048c <heap_size+0x52048c>
 488:	67676767 	strbvs	r6, [r7, -r7, ror #14]!
 48c:	02008369 	andeq	r8, r0, #-1543503871	; 0xa4000001
 490:	2e060104 	adfcss	f0, f6, f4
 494:	2f69a006 	svccs	0x0069a006
 498:	67a04c69 	strvs	r4, [r0, r9, ror #24]!
 49c:	02004e67 	andeq	r4, r0, #1648	; 0x670
 4a0:	2e060104 	adfcss	f0, f6, f4
 4a4:	3167a006 	cmncc	r7, r6
 4a8:	01000602 	tsteq	r0, r2, lsl #12
 4ac:	0003a301 	andeq	sl, r3, r1, lsl #6
 4b0:	27000200 	strcs	r0, [r0, -r0, lsl #4]
 4b4:	02000003 	andeq	r0, r0, #3
 4b8:	0d0efb01 	vstreq	d15, [lr, #-4]
 4bc:	01010100 	mrseq	r0, (UNDEF: 17)
 4c0:	00000001 	andeq	r0, r0, r1
 4c4:	01000001 	tsteq	r0, r1
 4c8:	00637273 	rsbeq	r7, r3, r3, ror r2
 4cc:	705c3a63 	subsvc	r3, ip, r3, ror #20
 4d0:	72676f72 	rsbvc	r6, r7, #456	; 0x1c8
 4d4:	61646d61 	cmnvs	r4, r1, ror #26
 4d8:	635c6174 	cmpvs	ip, #116, 2
 4dc:	6f636f68 	svcvs	0x00636f68
 4e0:	6574616c 	ldrbvs	r6, [r4, #-364]!	; 0xfffffe94
 4e4:	696c5c79 	stmdbvs	ip!, {r0, r3, r4, r5, r6, sl, fp, ip, lr}^
 4e8:	63675c62 	cmnvs	r7, #25088	; 0x6200
 4ec:	72612d63 	rsbvc	r2, r1, #6336	; 0x18c0
 4f0:	6d652d6d 	stclvs	13, cr2, [r5, #-436]!	; 0xfffffe4c
 4f4:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
 4f8:	745c6465 	ldrbvc	r6, [ip], #-1125	; 0xfffffb9b
 4fc:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
 500:	6d72615c 	ldfvse	f6, [r2, #-368]!	; 0xfffffe90
 504:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 508:	61652d65 	cmnvs	r5, r5, ror #26
 50c:	695c6962 	ldmdbvs	ip, {r1, r5, r6, r8, fp, sp, lr}^
 510:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 514:	6d5c6564 	cfldr64vs	mvdx6, [ip, #-400]	; 0xfffffe70
 518:	69686361 	stmdbvs	r8!, {r0, r5, r6, r8, r9, sp, lr}^
 51c:	6300656e 	movwvs	r6, #1390	; 0x56e
 520:	72705c3a 	rsbsvc	r5, r0, #14848	; 0x3a00
 524:	6172676f 	cmnvs	r2, pc, ror #14
 528:	7461646d 	strbtvc	r6, [r1], #-1133	; 0xfffffb93
 52c:	68635c61 	stmdavs	r3!, {r0, r5, r6, sl, fp, ip, lr}^
 530:	6c6f636f 	stclvs	3, cr6, [pc], #-444	; 37c <Console+0x10>
 534:	79657461 	stmdbvc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
 538:	62696c5c 	rsbvs	r6, r9, #92, 24	; 0x5c00
 53c:	6363675c 	cmnvs	r3, #92, 14	; 0x1700000
 540:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
 544:	626d652d 	rsbvs	r6, sp, #188743680	; 0xb400000
 548:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
 54c:	6f745c64 	svcvs	0x00745c64
 550:	5c736c6f 	ldclpl	12, cr6, [r3], #-444	; 0xfffffe44
 554:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 558:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 55c:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 560:	6e695c69 	cdpvs	12, 6, cr5, cr9, cr9, {3}
 564:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 568:	79735c65 	ldmdbvc	r3!, {r0, r2, r5, r6, sl, fp, ip, lr}^
 56c:	3a630073 	bcc	18c0740 <_end+0x8c0740>
 570:	6f72705c 	svcvs	0x0072705c
 574:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
 578:	61746164 	cmnvs	r4, r4, ror #2
 57c:	6f68635c 	svcvs	0x0068635c
 580:	616c6f63 	cmnvs	ip, r3, ror #30
 584:	5c796574 	cfldr64pl	mvdx6, [r9], #-464	; 0xfffffe30
 588:	5c62696c 			; <UNDEFINED> instruction: 0x5c62696c
 58c:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 590:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 594:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
 598:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
 59c:	6f6f745c 	svcvs	0x006f745c
 5a0:	6c5c736c 	mrrcvs	3, 6, r7, ip, cr12
 5a4:	675c6269 	ldrbvs	r6, [ip, -r9, ror #4]
 5a8:	615c6363 	cmpvs	ip, r3, ror #6
 5ac:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 5b0:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 5b4:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 5b8:	332e375c 			; <UNDEFINED> instruction: 0x332e375c
 5bc:	695c312e 	ldmdbvs	ip, {r1, r2, r3, r5, r8, ip, sp}^
 5c0:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 5c4:	63006564 	movwvs	r6, #1380	; 0x564
 5c8:	72705c3a 	rsbsvc	r5, r0, #14848	; 0x3a00
 5cc:	6172676f 	cmnvs	r2, pc, ror #14
 5d0:	7461646d 	strbtvc	r6, [r1], #-1133	; 0xfffffb93
 5d4:	68635c61 	stmdavs	r3!, {r0, r5, r6, sl, fp, ip, lr}^
 5d8:	6c6f636f 	stclvs	3, cr6, [pc], #-444	; 424 <Console+0xb8>
 5dc:	79657461 	stmdbvc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
 5e0:	62696c5c 	rsbvs	r6, r9, #92, 24	; 0x5c00
 5e4:	6363675c 	cmnvs	r3, #92, 14	; 0x1700000
 5e8:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
 5ec:	626d652d 	rsbvs	r6, sp, #188743680	; 0xb400000
 5f0:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
 5f4:	6f745c64 	svcvs	0x00745c64
 5f8:	5c736c6f 	ldclpl	12, cr6, [r3], #-444	; 0xfffffe44
 5fc:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 600:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 604:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 608:	6e695c69 	cdpvs	12, 6, cr5, cr9, cr9, {3}
 60c:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 610:	3a630065 	bcc	18c07ac <_end+0x8c07ac>
 614:	6f72705c 	svcvs	0x0072705c
 618:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
 61c:	61746164 	cmnvs	r4, r4, ror #2
 620:	6f68635c 	svcvs	0x0068635c
 624:	616c6f63 	cmnvs	ip, r3, ror #30
 628:	5c796574 	cfldr64pl	mvdx6, [r9], #-464	; 0xfffffe30
 62c:	5c62696c 			; <UNDEFINED> instruction: 0x5c62696c
 630:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 634:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 638:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
 63c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
 640:	6f6f745c 	svcvs	0x006f745c
 644:	615c736c 	cmpvs	ip, ip, ror #6
 648:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 64c:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 650:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 654:	636e695c 	cmnvs	lr, #92, 18	; 0x170000
 658:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 65c:	77656e5c 			; <UNDEFINED> instruction: 0x77656e5c
 660:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
 664:	6f6e616e 	svcvs	0x006e616e
 668:	616d0000 	cmnvs	sp, r0
 66c:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
 670:	00000100 	andeq	r0, r0, r0, lsl #2
 674:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
 678:	746c7561 	strbtvc	r7, [ip], #-1377	; 0xfffffa9f
 67c:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 680:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 684:	00000200 	andeq	r0, r0, r0, lsl #4
 688:	6b636f6c 	blvs	18dc440 <_end+0x8dc440>
 68c:	0300682e 	movweq	r6, #2094	; 0x82e
 690:	745f0000 	ldrbvc	r0, [pc], #-0	; 698 <main+0xd4>
 694:	73657079 	cmnvc	r5, #121	; 0x79
 698:	0300682e 	movweq	r6, #2094	; 0x82e
 69c:	74730000 	ldrbtvc	r0, [r3], #-0
 6a0:	66656464 	strbtvs	r6, [r5], -r4, ror #8
 6a4:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
 6a8:	65720000 	ldrbvs	r0, [r2, #-0]!
 6ac:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
 6b0:	00030068 	andeq	r0, r3, r8, rrx
 6b4:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xfffff100
 6b8:	746e6964 	strbtvc	r6, [lr], #-2404	; 0xfffff69c
 6bc:	0300682e 	movweq	r6, #2094	; 0x82e
 6c0:	74730000 	ldrbtvc	r0, [r3], #-0
 6c4:	2e6f6964 	vnmulcs.f16	s13, s30, s9	; <UNPREDICTABLE>
 6c8:	00050068 	andeq	r0, r5, r8, rrx
 6cc:	696e7500 	stmdbvs	lr!, {r8, sl, ip, sp, lr}^
 6d0:	2e647473 	mcrcs	4, 3, r7, cr4, cr3, {3}
 6d4:	00030068 	andeq	r0, r3, r8, rrx
 6d8:	52415500 	subpl	r5, r1, #0, 10
 6dc:	57485f54 	smlsldpl	r5, r8, r4, pc	; <UNPREDICTABLE>
 6e0:	0100682e 	tsteq	r0, lr, lsr #16
 6e4:	54540000 	ldrbpl	r0, [r4], #-0
 6e8:	6f635f59 	svcvs	0x00635f59
 6ec:	682e666e 	stmdavs	lr!, {r1, r2, r3, r5, r6, r9, sl, sp, lr}
 6f0:	00000100 	andeq	r0, r0, r0, lsl #2
 6f4:	736e615f 	cmnvc	lr, #-1073741801	; 0xc0000017
 6f8:	00682e69 	rsbeq	r2, r8, r9, ror #28
 6fc:	6e000005 	cdpvs	0, 0, cr0, cr0, cr5, {0}
 700:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 704:	00682e62 	rsbeq	r2, r8, r2, ror #28
 708:	5f000006 	svcpl	0x00000006
 70c:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 710:	765f6269 	ldrbvc	r6, [pc], -r9, ror #4
 714:	69737265 	ldmdbvs	r3!, {r0, r2, r5, r6, r9, ip, sp, lr}^
 718:	682e6e6f 	stmdavs	lr!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}
 71c:	00000500 	andeq	r0, r0, r0, lsl #10
 720:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 724:	682e6769 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, sp, lr}
 728:	00000300 	andeq	r0, r0, r0, lsl #6
 72c:	65656569 	strbvs	r6, [r5, #-1385]!	; 0xfffffa97
 730:	682e7066 	stmdavs	lr!, {r1, r2, r5, r6, ip, sp, lr}
 734:	00000200 	andeq	r0, r0, r0, lsl #4
 738:	74616566 	strbtvc	r6, [r1], #-1382	; 0xfffffa9a
 73c:	73657275 	cmnvc	r5, #1342177287	; 0x50000007
 740:	0300682e 	movweq	r6, #2094	; 0x82e
 744:	64630000 	strbtvs	r0, [r3], #-0
 748:	2e736665 	cdpcs	6, 7, cr6, cr3, cr5, {3}
 74c:	00030068 	andeq	r0, r3, r8, rrx
 750:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 754:	2e677261 	cdpcs	2, 6, cr7, cr7, cr1, {3}
 758:	00040068 	andeq	r0, r4, r8, rrx
 75c:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
 760:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
 764:	00020068 	andeq	r0, r2, r8, rrx
 768:	70797400 	rsbsvc	r7, r9, r0, lsl #8
 76c:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 770:	00000300 	andeq	r0, r0, r0, lsl #6
 774:	6874705f 	ldmdavs	r4!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^
 778:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
 77c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 780:	00682e73 	rsbeq	r2, r8, r3, ror lr
 784:	74000003 	strvc	r0, [r0], #-3
 788:	73657079 	cmnvc	r5, #121	; 0x79
 78c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 790:	74730000 	ldrbtvc	r0, [r3], #-0
 794:	2e6f6964 	vnmulcs.f16	s13, s30, s9	; <UNPREDICTABLE>
 798:	00030068 	andeq	r0, r3, r8, rrx
 79c:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 7a0:	2e62696c 	vnmulcs.f16	s13, s4, s25	; <UNPREDICTABLE>
 7a4:	00050068 	andeq	r0, r5, r8, rrx
 7a8:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 7ac:	2e62696c 	vnmulcs.f16	s13, s4, s25	; <UNPREDICTABLE>
 7b0:	00020068 	andeq	r0, r2, r8, rrx
 7b4:	696e7500 	stmdbvs	lr!, {r8, sl, ip, sp, lr}^
 7b8:	2e647473 	mcrcs	4, 3, r7, cr4, cr3, {3}
 7bc:	00050068 	andeq	r0, r5, r8, rrx
 7c0:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 7c4:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 7c8:	00040068 	andeq	r0, r4, r8, rrx
 7cc:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 7d0:	2d746e69 	ldclcs	14, cr6, [r4, #-420]!	; 0xfffffe5c
 7d4:	2e636367 	cdpcs	3, 6, cr6, cr3, cr7, {3}
 7d8:	00040068 	andeq	r0, r4, r8, rrx
 7dc:	05000000 	streq	r0, [r0, #-0]
 7e0:	00056802 	andeq	r6, r5, r2, lsl #16
 7e4:	01090300 	mrseq	r0, (UNDEF: 57)
 7e8:	67684b2f 	strbvs	r4, [r8, -pc, lsr #22]!
 7ec:	344d676c 	strbcc	r6, [sp], #-1900	; 0xfffff894
 7f0:	bd4c5267 	sfmlt	f5, 2, [ip, #-412]	; 0xfffffe64
 7f4:	78026a67 	stmdavc	r2, {r0, r1, r2, r5, r6, r9, fp, sp, lr}
 7f8:	22026813 	andcs	r6, r2, #1245184	; 0x130000
 7fc:	94086714 	strls	r6, [r8], #-1812	; 0xfffff8ec
 800:	04020067 	streq	r0, [r2], #-103	; 0xffffff99
 804:	08760302 	ldmdaeq	r6!, {r1, r8, r9}^
 808:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
 80c:	06660601 	strbteq	r0, [r6], -r1, lsl #12
 810:	67660d03 	strbvs	r0, [r6, -r3, lsl #26]!
 814:	0402006c 	streq	r0, [r2], #-108	; 0xffffff94
 818:	02006803 	andeq	r6, r0, #196608	; 0x30000
 81c:	00670304 	rsbeq	r0, r7, r4, lsl #6
 820:	9f030402 	svcls	0x00030402
 824:	03040200 	movweq	r0, #16896	; 0x4200
 828:	04020067 	streq	r0, [r2], #-103	; 0xffffff99
 82c:	02009f03 	andeq	r9, r0, #3, 30
 830:	00f30304 	rscseq	r0, r3, r4, lsl #6
 834:	83030402 	movwhi	r0, #13314	; 0x3402
 838:	03040200 	movweq	r0, #16896	; 0x4200
 83c:	00667803 	rsbeq	r7, r6, r3, lsl #16
 840:	06010402 	streq	r0, [r1], -r2, lsl #8
 844:	0c030666 	stceq	6, cr0, [r3], {102}	; 0x66
 848:	02006766 	andeq	r6, r0, #26738688	; 0x1980000
 84c:	02670104 	rsbeq	r0, r7, #4, 2
 850:	01010002 	tsteq	r1, r2
 854:	00000051 	andeq	r0, r0, r1, asr r0
 858:	00220002 	eoreq	r0, r2, r2
 85c:	01020000 	mrseq	r0, (UNDEF: 2)
 860:	000d0efb 	strdeq	r0, [sp], -fp
 864:	01010101 	tsteq	r1, r1, lsl #2
 868:	01000000 	mrseq	r0, (UNDEF: 0)
 86c:	73010000 	movwvc	r0, #4096	; 0x1000
 870:	00006372 	andeq	r6, r0, r2, ror r3
 874:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
 878:	00732e74 	rsbseq	r2, r3, r4, ror lr
 87c:	00000001 	andeq	r0, r0, r1
 880:	00020500 	andeq	r0, r2, r0, lsl #10
 884:	03000000 	movweq	r0, #0
 888:	2f2f0121 	svccs	0x002f0121
 88c:	2f2f2f2f 	svccs	0x002f2f2f
 890:	f223032f 	vcgt.s32	d0, d3, d31
 894:	2f2f352f 	svccs	0x002f352f
 898:	2f302f2f 	svccs	0x00302f2f
 89c:	2f2f2f2f 	svccs	0x002f2f2f
 8a0:	3330302f 	teqcc	r0, #47	; 0x2f
 8a4:	01000202 	tsteq	r0, r2, lsl #4
 8a8:	Address 0x000008a8 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
       0:	5f6e6f5f 	svcpl	0x006e6f5f
       4:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
       8:	6772615f 			; <UNDEFINED> instruction: 0x6772615f
       c:	74705f73 	ldrbtvc	r5, [r0], #-3955	; 0xfffff08d
      10:	5f5f0072 	svcpl	0x005f0072
      14:	4343414c 	movtmi	r4, #12620	; 0x314c
      18:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; fffff2cb <__stack+0xf7fff2d3>
      1c:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
      20:	5f5f4e4f 	svcpl	0x005f4e4f
      24:	31783020 	cmncc	r8, r0, lsr #32
      28:	31332d50 	teqcc	r3, r0, asr sp
      2c:	55004b4c 	strpl	r4, [r0, #-2892]	; 0xfffff4b4
      30:	31544e49 	cmpcc	r4, r9, asr #28
      34:	28435f36 	stmdacs	r3, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
      38:	5f202963 	svcpl	0x00202963
      3c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
      40:	5f363154 	svcpl	0x00363154
      44:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
      48:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
      4c:	20727265 	rsbscs	r7, r2, r5, ror #4
      50:	45525f28 	ldrbmi	r5, [r2, #-3880]	; 0xfffff0d8
      54:	2d544e45 	ldclcs	14, cr4, [r4, #-276]	; 0xfffffeec
      58:	74735f3e 	ldrbtvc	r5, [r3], #-3902	; 0xfffff0c2
      5c:	72726564 	rsbsvc	r6, r2, #100, 10	; 0x19000000
      60:	5f5f0029 	svcpl	0x005f0029
      64:	43434155 	movtmi	r4, #12629	; 0x3155
      68:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
      6c:	5f544942 	svcpl	0x00544942
      70:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
      74:	415f5f00 	cmpmi	pc, r0, lsl #30
      78:	5f534350 	svcpl	0x00534350
      7c:	5f5f3233 	svcpl	0x005f3233
      80:	5f003120 	svcpl	0x00003120
      84:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
      88:	74705f64 	ldrbtvc	r5, [r0], #-3940	; 0xfffff09c
      8c:	66696472 			; <UNDEFINED> instruction: 0x66696472
      90:	20745f66 	rsbscs	r5, r4, r6, ror #30
      94:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
      98:	43415246 	movtmi	r5, #4678	; 0x1246
      9c:	50455f54 	subpl	r5, r5, r4, asr pc
      a0:	4f4c4953 	svcmi	0x004c4953
      a4:	205f5f4e 	subscs	r5, pc, lr, asr #30
      a8:	50317830 	eorspl	r7, r1, r0, lsr r8
      ac:	4c31332d 	ldcmi	3, cr3, [r1], #-180	; 0xffffff4c
      b0:	5f5f0052 	svcpl	0x005f0052
      b4:	414f4c46 	cmpmi	pc, r6, asr #24
      b8:	4f575f54 	svcmi	0x00575f54
      bc:	4f5f4452 	svcmi	0x005f4452
      c0:	52454452 	subpl	r4, r5, #1375731712	; 0x52000000
      c4:	5f205f5f 	svcpl	0x00205f5f
      c8:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
      cc:	4c5f5245 	lfmmi	f5, 2, [pc], {69}	; 0x45
      d0:	4c545449 	cfldrdmi	mvd5, [r4], {73}	; 0x49
      d4:	4e455f45 	cdpmi	15, 4, cr5, cr5, cr5, {2}
      d8:	4e414944 	vmlsmi.f16	s9, s2, s8	; <UNPREDICTABLE>
      dc:	5f005f5f 	svcpl	0x00005f5f
      e0:	7472626d 	ldrbtvc	r6, [r2], #-621	; 0xfffffd93
      e4:	5f63776f 	svcpl	0x0063776f
      e8:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
      ec:	535f0065 	cmppl	pc, #101	; 0x65
      f0:	56415f43 	strbpl	r5, [r1], -r3, asr #30
      f4:	53594850 	cmppl	r9, #80, 16	; 0x500000
      f8:	4741505f 	smlsldmi	r5, r1, pc, r0	; <UNPREDICTABLE>
      fc:	31205345 			; <UNDEFINED> instruction: 0x31205345
     100:	5f5f0032 	svcpl	0x005f0032
     104:	43415355 	movtmi	r5, #4949	; 0x1355
     108:	5f4d5543 	svcpl	0x004d5543
     10c:	5f4e494d 	svcpl	0x004e494d
     110:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
     114:	4b485530 	blmi	12155dc <_end+0x2155dc>
     118:	43535f00 	cmpmi	r3, #0, 30
     11c:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
     120:	55455551 	strbpl	r5, [r5, #-1361]	; 0xfffffaaf
     124:	414d5f45 	cmpmi	sp, r5, asr #30
     128:	38312058 	ldmdacc	r1!, {r3, r4, r6, sp}
     12c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     130:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
     134:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
     138:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
     13c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 144 <_write>
     140:	455f4c42 	ldrbmi	r4, [pc, #-3138]	; fffff506 <__stack+0xf7fff50e>
     144:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
     148:	5f5f4e4f 	svcpl	0x005f4e4f
     14c:	64282820 	strtvs	r2, [r8], #-2080	; 0xfffff7e0
     150:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
     154:	2e322965 	vsubcs.f16	s4, s4, s11	; <UNPREDICTABLE>
     158:	34303232 	ldrtcc	r3, [r0], #-562	; 0xfffffdce
     15c:	34303634 	ldrtcc	r3, [r0], #-1588	; 0xfffff9cc
     160:	30353239 	eorscc	r3, r5, r9, lsr r2
     164:	31333133 	teqcc	r3, r3, lsr r1
     168:	36312d65 	ldrtcc	r2, [r1], -r5, ror #26
     16c:	5f00294c 	svcpl	0x0000294c
     170:	4153555f 	cmpmi	r3, pc, asr r5
     174:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
     178:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
     17c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     180:	5f5f0038 	svcpl	0x005f0038
     184:	43434155 	movtmi	r4, #12629	; 0x3155
     188:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
     18c:	5f544942 	svcpl	0x00544942
     190:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
     194:	43535f00 	cmpmi	r3, #0, 30
     198:	5245565f 	subpl	r5, r5, #99614720	; 0x5f00000
     19c:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
     1a0:	5f003720 	svcpl	0x00003720
     1a4:	4c57454e 	cfldr64mi	mvdx4, [r7], {78}	; 0x4e
     1a8:	565f4249 	ldrbpl	r4, [pc], -r9, asr #4
     1ac:	49535245 	ldmdbmi	r3, {r0, r2, r6, r9, ip, lr}^
     1b0:	22204e4f 	eorcs	r4, r0, #1264	; 0x4f0
     1b4:	2e302e33 	mrccs	14, 1, r2, cr0, cr3, {1}
     1b8:	49002230 	stmdbmi	r0, {r4, r5, r9, sp}
     1bc:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
     1c0:	494d5f52 	stmdbmi	sp, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
     1c4:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
     1c8:	50544e49 	subspl	r4, r4, r9, asr #28
     1cc:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 84 <__do_global_dtors_aux+0x4>
     1d0:	2d205841 	stccs	8, cr5, [r0, #-260]!	; 0xfffffefc
     1d4:	00293120 	eoreq	r3, r9, r0, lsr #2
     1d8:	494d5f5f 	stmdbmi	sp, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     1dc:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
     1e0:	42495349 	submi	r5, r9, #603979777	; 0x24000001
     1e4:	3020454c 	eorcc	r4, r0, ip, asr #10
     1e8:	52415500 	subpl	r5, r1, #0, 10
     1ec:	58495f54 	stmdapl	r9, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
     1f0:	58525f52 	ldmdapl	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
     1f4:	4c4c5546 	cfstr64mi	mvdx5, [ip], {70}	; 0x46
     1f8:	30783020 	rsbscc	r3, r8, r0, lsr #32
     1fc:	30303030 	eorscc	r3, r0, r0, lsr r0
     200:	00343030 	eorseq	r3, r4, r0, lsr r0
     204:	5f43535f 	svcpl	0x0043535f
     208:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
     20c:	435f334c 	cmpmi	pc, #76, 6	; 0x30000001
     210:	45484341 	strbmi	r4, [r8, #-833]	; 0xfffffcbf
     214:	5353415f 	cmppl	r3, #-1073741801	; 0xc0000017
     218:	3120434f 			; <UNDEFINED> instruction: 0x3120434f
     21c:	5f003533 	svcpl	0x00003533
     220:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     224:	5341465f 	movtpl	r4, #5727	; 0x165f
     228:	5f363154 	svcpl	0x00363154
     22c:	5f58414d 	svcpl	0x0058414d
     230:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     234:	66666637 			; <UNDEFINED> instruction: 0x66666637
     238:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     23c:	535f5f00 	cmppl	pc, #0, 30
     240:	20444957 	subcs	r4, r4, r7, asr r9
     244:	30327830 	eorscc	r7, r2, r0, lsr r8
     248:	5f003030 	svcpl	0x00003030
     24c:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     250:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 180 <_write+0x3c>
     254:	5f544e41 	svcpl	0x00544e41
     258:	5f474944 	svcpl	0x00474944
     25c:	3335205f 	teqcc	r5, #95	; 0x5f
     260:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
     264:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
     268:	31545341 	cmpcc	r4, r1, asr #6
     26c:	414d5f36 	cmpmi	sp, r6, lsr pc
     270:	58450058 	stmdapl	r5, {r3, r4, r6}^
     274:	20564544 	subscs	r4, r6, r4, asr #10
     278:	55003831 	strpl	r3, [r0, #-2097]	; 0xfffff7cf
     27c:	5f544e49 	svcpl	0x00544e49
     280:	5341454c 	movtpl	r4, #5452	; 0x154c
     284:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 13c <_mainCRTStartup+0x6c>
     288:	5f205841 	svcpl	0x00205841
     28c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     290:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
     294:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
     298:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     29c:	5f005f5f 	svcpl	0x00005f5f
     2a0:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     2a4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     2a8:	5f30315f 	svcpl	0x0030315f
     2ac:	5f505845 	svcpl	0x00505845
     2b0:	3833205f 	ldmdacc	r3!, {r0, r1, r2, r3, r4, r6, sp}
     2b4:	4f4e4500 	svcmi	0x004e4500
     2b8:	434f5354 	movtmi	r5, #62292	; 0xf354
     2bc:	3031204b 	eorscc	r2, r1, fp, asr #32
     2c0:	5f5f0038 	svcpl	0x005f0038
     2c4:	5f474953 	svcpl	0x00474953
     2c8:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 1cc <_write+0x88>
     2cc:	4d5f4349 	ldclmi	3, cr4, [pc, #-292]	; 1b0 <_write+0x6c>
     2d0:	5f5f5841 	svcpl	0x005f5841
     2d4:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     2d8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     2dc:	00666666 	rsbeq	r6, r6, r6, ror #12
     2e0:	4e49575f 	mcrmi	7, 2, r5, cr9, cr15, {2}
     2e4:	20545f54 	subscs	r5, r4, r4, asr pc
     2e8:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
     2ec:	41454c5f 	cmpmi	r5, pc, asr ip
     2f0:	36315453 			; <UNDEFINED> instruction: 0x36315453
     2f4:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     2f8:	492d2820 	pushmi	{r5, fp, sp}
     2fc:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     300:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     304:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 248 <_read+0x1c>
     308:	2d205841 	stccs	8, cr5, [r0, #-260]!	; 0xfffffefc
     30c:	00293120 	eoreq	r3, r9, r0, lsr #2
     310:	5f43535f 	svcpl	0x0043535f
     314:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
     318:	435f324c 	cmpmi	pc, #76, 4	; 0xc0000004
     31c:	45484341 	strbmi	r4, [r8, #-833]	; 0xfffffcbf
     320:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
     324:	5a495345 	bpl	1255040 <_end+0x255040>
     328:	33312045 	teqcc	r1, #69	; 0x45
     32c:	41550033 	cmpmi	r5, r3, lsr r0
     330:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
     334:	4d5f5258 	lfmmi	f5, 2, [pc, #-352]	; 1dc <_write+0x98>
     338:	204b5341 	subcs	r5, fp, r1, asr #6
     33c:	30307830 	eorscc	r7, r0, r0, lsr r8
     340:	33303030 	teqcc	r0, #48	; 0x30
     344:	5f004646 	svcpl	0x00004646
     348:	6566735f 	strbvs	r7, [r6, #-863]!	; 0xfffffca1
     34c:	726f7272 	rsbvc	r7, pc, #536870919	; 0x20000007
     350:	20297028 	eorcs	r7, r9, r8, lsr #32
     354:	6e692828 	cdpvs	8, 6, cr2, cr9, cr8, {1}
     358:	28282974 	stmdacs	r8!, {r2, r4, r5, r6, r8, fp, sp}
     35c:	2d297028 	stccs	0, cr7, [r9, #-160]!	; 0xffffff60
     360:	6c665f3e 	stclvs	15, cr5, [r6], #-248	; 0xffffff08
     364:	20736761 	rsbscs	r6, r3, r1, ror #14
     368:	5f5f2026 	svcpl	0x005f2026
     36c:	52524553 	subspl	r4, r2, #348127232	; 0x14c00000
     370:	3d212029 	stccc	0, cr2, [r1, #-164]!	; 0xffffff5c
     374:	29293020 	stmdbcs	r9!, {r5, ip, sp}
     378:	43535f00 	cmpmi	r3, #0, 30
     37c:	4152545f 	cmpmi	r2, pc, asr r4
     380:	495f4543 	ldmdbmi	pc, {r0, r1, r6, r8, sl, lr}^	; <UNPREDICTABLE>
     384:	5245484e 	subpl	r4, r5, #5111808	; 0x4e0000
     388:	38205449 	stmdacc	r0!, {r0, r3, r6, sl, ip, lr}
     38c:	5f5f0036 	svcpl	0x005f0036
     390:	5f4d5241 	svcpl	0x004d5241
     394:	5f534350 	svcpl	0x00534350
     398:	20504656 	subscs	r4, r0, r6, asr r6
     39c:	4e490031 	mcrmi	0, 2, r0, cr9, cr1, {1}
     3a0:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
     3a4:	31545341 	cmpcc	r4, r1, asr #6
     3a8:	494d5f36 	stmdbmi	sp, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     3ac:	5f5f004e 	svcpl	0x005f004e
     3b0:	33544c46 	cmpcc	r4, #17920	; 0x4600
     3b4:	41485f32 	cmpmi	r8, r2, lsr pc
     3b8:	4e495f53 	mcrmi	15, 2, r5, cr9, cr3, {2}
     3bc:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
     3c0:	5f5f5954 	svcpl	0x005f5954
     3c4:	55003120 	strpl	r3, [r0, #-288]	; 0xfffffee0
     3c8:	5f545241 	svcpl	0x00545241
     3cc:	5f525849 	svcpl	0x00525849
     3d0:	564f5852 			; <UNDEFINED> instruction: 0x564f5852
     3d4:	78302052 	ldmdavc	r0!, {r1, r4, r6, sp}
     3d8:	30303030 	eorscc	r3, r0, r0, lsr r0
     3dc:	31303030 	teqcc	r0, r0, lsr r0
     3e0:	4f5f5200 	svcmi	0x005f5200
     3e4:	0034204b 	eorseq	r2, r4, fp, asr #32
     3e8:	4f4c435f 	svcmi	0x004c435f
     3ec:	545f4b43 	ldrbpl	r4, [pc], #-2883	; 3f4 <Console+0x88>
     3f0:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
     3f4:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     3f8:	6c206465 	cfstrsvs	mvf6, [r0], #-404	; 0xfffffe6c
     3fc:	00676e6f 	rsbeq	r6, r7, pc, ror #28
     400:	5f43535f 	svcpl	0x0043535f
     404:	42505f32 	subsmi	r5, r0, #50, 30	; 0xc8
     408:	454d5f53 	strbmi	r5, [sp, #-3923]	; 0xfffff0ad
     40c:	47415353 	smlsldmi	r5, r1, r3, r3
     410:	31312045 	teqcc	r1, r5, asr #32
     414:	5f5f0037 	svcpl	0x005f0037
     418:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
     41c:	5f464649 	svcpl	0x00464649
     420:	5f58414d 	svcpl	0x0058414d
     424:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     428:	66666637 			; <UNDEFINED> instruction: 0x66666637
     42c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     430:	68545f00 	ldmdavs	r4, {r8, r9, sl, fp, ip, lr}^
     434:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
     438:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
     43c:	5f206c61 	svcpl	0x00206c61
     440:	7268745f 	rsbvc	r7, r8, #1593835520	; 0x5f000000
     444:	00646165 	rsbeq	r6, r4, r5, ror #2
     448:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
     44c:	494d5f34 	stmdbmi	sp, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     450:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
     454:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
     458:	414d5f34 	cmpmi	sp, r4, lsr pc
     45c:	202d2058 	eorcs	r2, sp, r8, asr r0
     460:	5f002931 	svcpl	0x00002931
     464:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
     468:	545f5841 	ldrbpl	r5, [pc], #-2113	; 470 <UartEnable>
     46c:	4345445f 	movtmi	r4, #21599	; 0x545f
     470:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
     474:	5f002044 	svcpl	0x00002044
     478:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     47c:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 3ac <Console+0x40>
     480:	315f4e49 	cmpcc	pc, r9, asr #28
     484:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
     488:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
     48c:	30332d28 	eorscc	r2, r3, r8, lsr #26
     490:	5f002937 	svcpl	0x00002937
     494:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
     498:	4b494c43 	blmi	12535ac <_end+0x2535ac>
     49c:	55425f45 	strbpl	r5, [r2, #-3909]	; 0xfffff0bb
     4a0:	49544c49 	ldmdbmi	r4, {r0, r3, r6, sl, fp, lr}^
     4a4:	4f435f4e 	svcmi	0x00435f4e
     4a8:	4154534e 	cmpmi	r4, lr, asr #6
     4ac:	505f544e 	subspl	r5, pc, lr, asr #8
     4b0:	4b003120 	blmi	c938 <__bss_end__+0x9148>
     4b4:	2047414d 	subcs	r4, r7, sp, asr #2
     4b8:	31785c22 	cmncc	r8, r2, lsr #24
     4bc:	35335b42 	ldrcc	r5, [r3, #-2882]!	; 0xfffff4be
     4c0:	5f00226d 	svcpl	0x0000226d
     4c4:	545f4353 	ldrbpl	r4, [pc], #-851	; 4cc <Zynq7000_UART_SENDCHAR+0x18>
     4c8:	41455248 	cmpmi	r5, r8, asr #4
     4cc:	52505f44 	subspl	r5, r0, #68, 30	; 0x110
     4d0:	49524f49 	ldmdbmi	r2, {r0, r3, r6, r8, r9, sl, fp, lr}^
     4d4:	535f5954 	cmppl	pc, #84, 18	; 0x150000
     4d8:	44454843 	strbmi	r4, [r5], #-2115	; 0xfffff7bd
     4dc:	4e494c55 	mcrmi	12, 2, r4, cr9, cr5, {2}
     4e0:	35342047 	ldrcc	r2, [r4, #-71]!	; 0xffffffb9
     4e4:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
     4e8:	41465f54 	cmpmi	r6, r4, asr pc
     4ec:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     4f0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     4f4:	705f5f00 	subsvc	r5, pc, r0, lsl #30
     4f8:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
     4fc:	6b696c66 	blvs	1a5b69c <_end+0xa5b69c>
     500:	6d662865 	stclvs	8, cr2, [r6, #-404]!	; 0xfffffe6c
     504:	67726174 			; <UNDEFINED> instruction: 0x67726174
     508:	7269662c 	rsbvc	r6, r9, #44, 12	; 0x2c00000
     50c:	61767473 	cmnvs	r6, r3, ror r4
     510:	67726172 			; <UNDEFINED> instruction: 0x67726172
     514:	5f5f2029 	svcpl	0x005f2029
     518:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
     51c:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
     520:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     524:	665f5f28 	ldrbvs	r5, [pc], -r8, lsr #30
     528:	616d726f 	cmnvs	sp, pc, ror #4
     52c:	205f5f74 	subscs	r5, pc, r4, ror pc	; <UNPREDICTABLE>
     530:	705f5f28 	subsvc	r5, pc, r8, lsr #30
     534:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
     538:	2c5f5f66 	mrrccs	15, 6, r5, pc, cr6	; <UNPREDICTABLE>
     53c:	746d6620 	strbtvc	r6, [sp], #-1568	; 0xfffff9e0
     540:	2c677261 	sfmcs	f7, 2, [r7], #-388	; 0xfffffe7c
     544:	72696620 	rsbvc	r6, r9, #32, 12	; 0x2000000
     548:	61767473 	cmnvs	r6, r3, ror r4
     54c:	67726172 			; <UNDEFINED> instruction: 0x67726172
     550:	00292929 	eoreq	r2, r9, r9, lsr #18
     554:	54535f5f 	ldrbpl	r5, [r3], #-3935	; 0xfffff0a1
     558:	5f5f4344 	svcpl	0x005f4344
     55c:	5f003120 	svcpl	0x00003120
     560:	6c6c754e 	cfstr64vs	mvdx7, [ip], #-312	; 0xfffffec8
     564:	736e755f 	cmnvc	lr, #398458880	; 0x17c00000
     568:	69636570 	stmdbvs	r3!, {r4, r5, r6, r8, sl, sp, lr}^
     56c:	64656966 	strbtvs	r6, [r5], #-2406	; 0xfffff69a
     570:	5f5f0020 	svcpl	0x005f0020
     574:	464c4c55 			; <UNDEFINED> instruction: 0x464c4c55
     578:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
     57c:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
     580:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     584:	525f0030 	subspl	r0, pc, #48	; 0x30
     588:	5f444145 	svcpl	0x00444145
     58c:	54495257 	strbpl	r5, [r9], #-599	; 0xfffffda9
     590:	55425f45 	strbpl	r5, [r2, #-3909]	; 0xfffff0bb
     594:	5a495346 	bpl	12552b4 <_end+0x2552b4>
     598:	59545f45 	ldmdbpl	r4, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
     59c:	69204550 	stmdbvs	r0!, {r4, r6, r8, sl, lr}
     5a0:	5f00746e 	svcpl	0x0000746e
     5a4:	505f4353 	subspl	r4, pc, r3, asr r3	; <UNPREDICTABLE>
     5a8:	5f454741 	svcpl	0x00454741
     5ac:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     5b0:	43535f20 	cmpmi	r3, #32, 30	; 0x80
     5b4:	4741505f 	smlsldmi	r5, r1, pc, r0	; <UNPREDICTABLE>
     5b8:	5a495345 	bpl	12552d4 <_end+0x2552d4>
     5bc:	5f5f0045 	svcpl	0x005f0045
     5c0:	33544c46 	cmpcc	r4, #17920	; 0x4600
     5c4:	414d5f32 	cmpmi	sp, r2, lsr pc
     5c8:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     5cc:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
     5d0:	00383231 	eorseq	r3, r8, r1, lsr r2
     5d4:	41535f5f 	cmpmi	r3, pc, asr pc
     5d8:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
     5dc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     5e0:	5f003531 	svcpl	0x00003531
     5e4:	4345445f 	movtmi	r4, #21599	; 0x545f
     5e8:	5f383231 	svcpl	0x00383231
     5ec:	5f4e494d 	svcpl	0x004e494d
     5f0:	5f505845 	svcpl	0x00505845
     5f4:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
     5f8:	32343136 	eorscc	r3, r4, #-2147483635	; 0x8000000d
     5fc:	5f5f0029 	svcpl	0x005f0029
     600:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
     604:	5f4d5543 	svcpl	0x004d5543
     608:	5f58414d 	svcpl	0x0058414d
     60c:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
     610:	46464637 			; <UNDEFINED> instruction: 0x46464637
     614:	46464646 	strbmi	r4, [r6], -r6, asr #12
     618:	46464646 	strbmi	r4, [r6], -r6, asr #12
     61c:	46464646 	strbmi	r4, [r6], -r6, asr #12
     620:	31332d50 	teqcc	r3, r0, asr sp
     624:	004b4c4c 	subeq	r4, fp, ip, asr #24
     628:	44555f5f 	ldrbmi	r5, [r5], #-3935	; 0xfffff0a1
     62c:	42465f41 	submi	r5, r6, #260	; 0x104
     630:	5f5f5449 	svcpl	0x005f5449
     634:	00323320 	eorseq	r3, r2, r0, lsr #6
     638:	4f535f5f 	svcmi	0x00535f5f
     63c:	30204452 	eorcc	r4, r0, r2, asr r4
     640:	30303278 	eorscc	r3, r0, r8, ror r2
     644:	5f5f0030 	svcpl	0x005f0030
     648:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     64c:	545f3436 	ldrbpl	r3, [pc], #-1078	; 654 <main+0x90>
     650:	5f455059 	svcpl	0x00455059
     654:	6f6c205f 	svcvs	0x006c205f
     658:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
     65c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     660:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     664:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     668:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     66c:	52415500 	subpl	r5, r1, #0, 10
     670:	52435f54 	subpl	r5, r3, #84, 30	; 0x150
     674:	5f58545f 	svcpl	0x0058545f
     678:	20534944 	subscs	r4, r3, r4, asr #18
     67c:	30307830 	eorscc	r7, r0, r0, lsr r8
     680:	30303030 	eorscc	r3, r0, r0, lsr r0
     684:	5f003032 	svcpl	0x00003032
     688:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
     68c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     690:	5f30315f 	svcpl	0x0030315f
     694:	5f505845 	svcpl	0x00505845
     698:	3033205f 	eorscc	r2, r3, pc, asr r0
     69c:	4e490038 	mcrmi	0, 2, r0, cr9, cr8, {1}
     6a0:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
     6a4:	33545341 	cmpcc	r4, #67108865	; 0x4000001
     6a8:	494d5f32 	stmdbmi	sp, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
     6ac:	535f004e 	cmppl	pc, #78	; 0x4e
     6b0:	50495f43 	subpl	r5, r9, r3, asr #30
     6b4:	36203656 			; <UNDEFINED> instruction: 0x36203656
     6b8:	42450037 	submi	r0, r5, #55	; 0x37
     6bc:	20464441 	subcs	r4, r6, r1, asr #8
     6c0:	5f5f0039 	svcpl	0x005f0039
     6c4:	41484357 	cmpmi	r8, r7, asr r3
     6c8:	59545f52 	ldmdbpl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
     6cc:	5f5f4550 	svcpl	0x005f4550
     6d0:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
     6d4:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
     6d8:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
     6dc:	5f5f0074 	svcpl	0x005f0074
     6e0:	43554e47 	cmpmi	r5, #1136	; 0x470
     6e4:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
     6e8:	545f5f5f 	ldrbpl	r5, [pc], #-3935	; 6f0 <main+0x12c>
     6ec:	4f455059 	svcmi	0x00455059
     6f0:	00312046 	eorseq	r2, r1, r6, asr #32
     6f4:	41535f5f 	cmpmi	r3, pc, asr pc
     6f8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
     6fc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     700:	5f003631 	svcpl	0x00003631
     704:	41445453 	cmpmi	r4, r3, asr r4
     708:	485f4752 	ldmdami	pc, {r1, r4, r6, r8, r9, sl, lr}^	; <UNPREDICTABLE>
     70c:	535f0020 	cmppl	pc, #32
     710:	4f585f43 	svcmi	0x00585f43
     714:	5f4e4550 	svcpl	0x004e4550
     718:	50435555 	subpl	r5, r3, r5, asr r5
     71c:	34323120 	ldrtcc	r3, [r2], #-288	; 0xfffffee0
     720:	52415500 	subpl	r5, r1, #0, 10
     724:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
     728:	4148435f 	cmpmi	r8, pc, asr r3
     72c:	4e454c52 	mcrmi	12, 2, r4, cr5, cr2, {2}
     730:	4948535f 	stmdbmi	r8, {r0, r1, r2, r3, r4, r6, r8, r9, ip, lr}^
     734:	31205446 			; <UNDEFINED> instruction: 0x31205446
     738:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; fffff840 <__stack+0xf7fff848>
     73c:	5f5f464c 	svcpl	0x005f464c
     740:	55003120 	strpl	r3, [r0, #-288]	; 0xfffffee0
     744:	5f544e49 	svcpl	0x00544e49
     748:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     74c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 688 <main+0xc4>
     750:	5f005841 	svcpl	0x00005841
     754:	5a49535f 	bpl	12554d8 <_end+0x2554d8>
     758:	5f464f45 	svcpl	0x00464f45
     75c:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
     760:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
     764:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     768:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
     76c:	414d5f4d 	cmpmi	sp, sp, asr #30
     770:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     774:	46375830 			; <UNDEFINED> instruction: 0x46375830
     778:	46464646 	strbmi	r4, [r6], -r6, asr #12
     77c:	46464646 	strbmi	r4, [r6], -r6, asr #12
     780:	46464646 	strbmi	r4, [r6], -r6, asr #12
     784:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
     788:	4b4c3133 	blmi	130cc5c <_end+0x30cc5c>
     78c:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
     790:	5f646565 	svcpl	0x00646565
     794:	746e6977 	strbtvc	r6, [lr], #-2423	; 0xfffff689
     798:	0020745f 	eoreq	r7, r0, pc, asr r4
     79c:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
     7a0:	5f52535f 	svcpl	0x0052535f
     7a4:	55465852 	strbpl	r5, [r6, #-2130]	; 0xfffff7ae
     7a8:	30204c4c 	eorcc	r4, r0, ip, asr #24
     7ac:	30303078 	eorscc	r3, r0, r8, ror r0
     7b0:	30303030 	eorscc	r3, r0, r0, lsr r0
     7b4:	57450034 	smlaldxpl	r0, r5, r4, r0
     7b8:	444c554f 	strbmi	r5, [ip], #-1359	; 0xfffffab1
     7bc:	434f4c42 	movtmi	r4, #64578	; 0xfc42
     7c0:	4145204b 	cmpmi	r5, fp, asr #32
     7c4:	4e494147 	dvfmiem	f4, f1, f7
     7c8:	52415500 	subpl	r5, r1, #0, 10
     7cc:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
     7d0:	4f54535f 	svcmi	0x0054535f
     7d4:	444f4d50 	strbmi	r4, [pc], #-3408	; 7dc <main+0x218>
     7d8:	5f325f45 	svcpl	0x00325f45
     7dc:	20544942 	subscs	r4, r4, r2, asr #18
     7e0:	30307830 	eorscc	r7, r0, r0, lsr r8
     7e4:	30303030 	eorscc	r3, r0, r0, lsr r0
     7e8:	45003038 	strmi	r3, [r0, #-56]	; 0xffffffc8
     7ec:	55424f4e 	strbpl	r4, [r2, #-3918]	; 0xfffff0b2
     7f0:	31205346 			; <UNDEFINED> instruction: 0x31205346
     7f4:	5f003530 	svcpl	0x00003530
     7f8:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
     7fc:	545f5241 	ldrbpl	r5, [pc], #-577	; 804 <main+0x240>
     800:	00205f5f 	eoreq	r5, r0, pc, asr pc
     804:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
     808:	6e6f6d5f 	mcrvs	13, 3, r6, cr15, cr15, {2}
     80c:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
     810:	5f646565 	svcpl	0x00646565
     814:	61765f5f 	cmnvs	r6, pc, asr pc
     818:	73696c5f 	cmnvc	r9, #24320	; 0x5f00
     81c:	665f0074 			; <UNDEFINED> instruction: 0x665f0074
     820:	7079746e 	rsbsvc	r7, r9, lr, ror #8
     824:	5f007365 	svcpl	0x00007365
     828:	4c41565f 	mcrrmi	6, 5, r5, r1, cr15
     82c:	20545349 	subscs	r5, r4, r9, asr #6
     830:	6e675f5f 	mcrvs	15, 3, r5, cr7, cr15, {2}
     834:	765f6375 			; <UNDEFINED> instruction: 0x765f6375
     838:	696c5f61 	stmdbvs	ip!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     83c:	45007473 	strmi	r7, [r0, #-1139]	; 0xfffffb8d
     840:	4c49464d 	mcrrmi	6, 4, r4, r9, cr13
     844:	34322045 	ldrtcc	r2, [r2], #-69	; 0xffffffbb
     848:	6e695f00 	cdpvs	15, 6, cr5, cr9, cr0, {0}
     84c:	49530063 	ldmdbmi	r3, {r0, r1, r5, r6}^
     850:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
     854:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
     858:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     85c:	535f5f00 	cmppl	pc, #0, 30
     860:	5f545248 	svcpl	0x00545248
     864:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
     868:	205f5f48 	subscs	r5, pc, r8, asr #30
     86c:	5f003631 	svcpl	0x00003631
     870:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
     874:	5f544349 	svcpl	0x00544349
     878:	49534e41 	ldmdbmi	r3, {r0, r6, r9, sl, fp, lr}^
     87c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     880:	505f5f00 	subspl	r5, pc, r0, lsl #30
     884:	6f727028 	svcvs	0x00727028
     888:	29736f74 	ldmdbcs	r3!, {r2, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
     88c:	6f727020 	svcvs	0x00727020
     890:	00736f74 	rsbseq	r6, r3, r4, ror pc
     894:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     898:	52545054 	subspl	r5, r4, #84	; 0x54
     89c:	5059545f 	subspl	r5, r9, pc, asr r4
     8a0:	205f5f45 	subscs	r5, pc, r5, asr #30
     8a4:	00746e69 	rsbseq	r6, r4, r9, ror #28
     8a8:	51445f5f 	cmppl	r4, pc, asr pc
     8ac:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
     8b0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     8b4:	5f003336 	svcpl	0x00003336
     8b8:	4341555f 	movtmi	r5, #5471	; 0x155f
     8bc:	5f4d5543 	svcpl	0x004d5543
     8c0:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
     8c4:	5f4e4f4c 	svcpl	0x004e4f4c
     8c8:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     8cc:	312d5031 			; <UNDEFINED> instruction: 0x312d5031
     8d0:	004b5536 	subeq	r5, fp, r6, lsr r5
     8d4:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     8d8:	41465f54 	cmpmi	r6, r4, asr pc
     8dc:	36315453 			; <UNDEFINED> instruction: 0x36315453
     8e0:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
     8e4:	5f5f4854 	svcpl	0x005f4854
     8e8:	00323320 	eorseq	r3, r2, r0, lsr #6
     8ec:	4f4f5445 	svcmi	0x004f5445
     8f0:	594e414d 	stmdbpl	lr, {r0, r2, r3, r6, r8, lr}^
     8f4:	53464552 	movtpl	r4, #25938	; 0x6552
     8f8:	39323120 	ldmdbcc	r2!, {r5, r8, ip, sp}
     8fc:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     900:	485f544c 	ldmdami	pc, {r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
     904:	495f5341 	ldmdbmi	pc, {r0, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
     908:	4e49464e 	cdpmi	6, 4, cr4, cr9, cr14, {2}
     90c:	5f595449 	svcpl	0x00595449
     910:	0031205f 	eorseq	r2, r1, pc, asr r0
     914:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
     918:	5f343643 	svcpl	0x00343643
     91c:	5f4e494d 	svcpl	0x004e494d
     920:	5f505845 	svcpl	0x00505845
     924:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
     928:	29323833 	ldmdbcs	r2!, {r0, r1, r4, r5, fp, ip, sp}
     92c:	42324500 	eorsmi	r4, r2, #0, 10
     930:	37204749 	strcc	r4, [r0, -r9, asr #14]!
     934:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
     938:	5f544e45 	svcpl	0x00544e45
     93c:	43454843 	movtmi	r4, #22595	; 0x5843
     940:	4d545f4b 	ldclmi	15, cr5, [r4, #-300]	; 0xfffffed4
     944:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
     948:	525f2029 	subspl	r2, pc, #41	; 0x29
     94c:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
     950:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
     954:	76284b43 	strtvc	r4, [r8], -r3, asr #22
     958:	202c7261 	eorcs	r7, ip, r1, ror #4
     95c:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
     960:	69746c61 	ldmdbvs	r4!, {r0, r5, r6, sl, fp, sp, lr}^
     964:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
     968:	202c6675 	eorcs	r6, ip, r5, ror r6
     96c:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
     970:	5f207463 	svcpl	0x00207463
     974:	206d745f 	rsbcs	r7, sp, pc, asr r4
     978:	73202c2a 			; <UNDEFINED> instruction: 0x73202c2a
     97c:	6f657a69 	svcvs	0x00657a69
     980:	282a2066 	stmdacs	sl!, {r1, r2, r5, r6, sp}
     984:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
     988:	5f3e2d29 	svcpl	0x003e2d29
     98c:	61636f6c 	cmnvs	r3, ip, ror #30
     990:	6d69746c 	cfstrdvs	mvd7, [r9, #-432]!	; 0xfffffe50
     994:	75625f65 	strbvc	r5, [r2, #-3941]!	; 0xfffff09b
     998:	202c2966 	eorcs	r2, ip, r6, ror #18
     99c:	4e490029 	cdpmi	0, 4, cr0, cr9, cr9, {1}
     9a0:	41465f54 	cmpmi	r6, r4, asr pc
     9a4:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     9a8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     9ac:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     9b0:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
     9b4:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
     9b8:	414d5f34 	cmpmi	sp, r4, lsr pc
     9bc:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     9c0:	4553555f 	ldrbmi	r5, [r3, #-1375]	; 0xfffffaa1
     9c4:	444e4f43 	strbmi	r4, [lr], #-3907	; 0xfffff0bd
     9c8:	5f545f53 	svcpl	0x00545f53
     9cc:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
     9d0:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
     9d4:	535f0020 	cmppl	pc, #32
     9d8:	48435f43 	stmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
     9dc:	5f444c49 	svcpl	0x00444c49
     9e0:	2058414d 	subscs	r4, r8, sp, asr #2
     9e4:	5f5f0031 	svcpl	0x005f0031
     9e8:	64657270 	strbtvs	r7, [r5], #-624	; 0xfffffd90
     9ec:	5f746369 	svcpl	0x00746369
     9f0:	65757274 	ldrbvs	r7, [r5, #-628]!	; 0xfffffd8c
     9f4:	70786528 	rsbsvc	r6, r8, r8, lsr #10
     9f8:	5f5f2029 	svcpl	0x005f2029
     9fc:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     a00:	5f6e6974 	svcpl	0x006e6974
     a04:	65707865 	ldrbvs	r7, [r0, #-2149]!	; 0xfffff79b
     a08:	28287463 	stmdacs	r8!, {r0, r1, r5, r6, sl, ip, sp, lr}
     a0c:	29707865 	ldmdbcs	r0!, {r0, r2, r5, r6, fp, ip, sp, lr}^
     a10:	2931202c 	ldmdbcs	r1!, {r2, r3, r5, sp}
     a14:	6c665f00 	stclvs	15, cr5, [r6], #-0
     a18:	00736761 	rsbseq	r6, r3, r1, ror #14
     a1c:	53425f5f 	movtpl	r5, #12127	; 0x2f5f
     a20:	49565f44 	ldmdbmi	r6, {r2, r6, r8, r9, sl, fp, ip, lr}^
     a24:	4c424953 	mcrrmi	9, 5, r4, r2, cr3	; <UNPREDICTABLE>
     a28:	00302045 	eorseq	r2, r0, r5, asr #32
     a2c:	5a49535f 	bpl	12557b0 <_end+0x2557b0>
     a30:	5f545f45 	svcpl	0x00545f45
     a34:	49464544 	stmdbmi	r6, {r2, r6, r8, sl, lr}^
     a38:	2044454e 	subcs	r4, r4, lr, asr #10
     a3c:	615f5f00 	cmpvs	pc, r0, lsl #30
     a40:	6e67696c 	vnmulvs.f16	s13, s14, s25	; <UNPREDICTABLE>
     a44:	78286465 	stmdavc	r8!, {r0, r2, r5, r6, sl, sp, lr}
     a48:	5f5f2029 	svcpl	0x005f2029
     a4c:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
     a50:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
     a54:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     a58:	615f5f28 	cmpvs	pc, r8, lsr #30
     a5c:	6e67696c 	vnmulvs.f16	s13, s14, s25	; <UNPREDICTABLE>
     a60:	5f5f6465 	svcpl	0x005f6465
     a64:	29297828 	stmdbcs	r9!, {r3, r5, fp, ip, sp, lr}
     a68:	535f0029 	cmppl	pc, #41	; 0x29
     a6c:	4f585f43 	svcmi	0x00585f43
     a70:	5f4e4550 	svcpl	0x004e4550
     a74:	4c414552 	cfstr64mi	mvdx4, [r1], {82}	; 0x52
     a78:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
     a7c:	00393920 	eorseq	r3, r9, r0, lsr #18
     a80:	5f43535f 	svcpl	0x0043535f
     a84:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
     a88:	435f334c 	cmpmi	pc, #76, 6	; 0x30000001
     a8c:	45484341 	strbmi	r4, [r8, #-833]	; 0xfffffcbf
     a90:	5a49535f 	bpl	1255814 <_end+0x255814>
     a94:	33312045 	teqcc	r1, #69	; 0x45
     a98:	41550034 	cmpmi	r5, r4, lsr r0
     a9c:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 95c <std+0x28>
     aa0:	43435f52 	movtmi	r5, #16210	; 0x3f52
     aa4:	30204b4c 	eorcc	r4, r0, ip, asr #22
     aa8:	30303078 	eorscc	r3, r0, r8, ror r0
     aac:	30343030 	eorscc	r3, r4, r0, lsr r0
     ab0:	545f0030 	ldrbpl	r0, [pc], #-48	; ab8 <__fp_unlock_all>
     ab4:	5254505f 	subspl	r5, r4, #95	; 0x5f
     ab8:	46464944 	strbmi	r4, [r6], -r4, asr #18
     abc:	4500205f 	strmi	r2, [r0, #-95]	; 0xffffffa1
     ac0:	4c49464e 	mcrrmi	6, 4, r4, r9, cr14
     ac4:	33322045 	teqcc	r2, #69	; 0x45
     ac8:	43505f00 	cmpmi	r0, #0, 30
     acc:	5f4f4e5f 	svcpl	0x004f4e5f
     ad0:	4e555254 	mrcmi	2, 2, r5, cr5, cr4, {2}
     ad4:	00372043 	eorseq	r2, r7, r3, asr #32
     ad8:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
     adc:	5f42494c 	svcpl	0x0042494c
     ae0:	00205f48 	eoreq	r5, r0, r8, asr #30
     ae4:	5453465f 	ldrbpl	r4, [r3], #-1631	; 0xfffff9a1
     ae8:	204f4944 	subcs	r4, pc, r4, asr #18
     aec:	43535f00 	cmpmi	r3, #0, 30
     af0:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
     af4:	5f324c45 	svcpl	0x00324c45
     af8:	48434143 	stmdami	r3, {r0, r1, r6, r8, lr}^
     afc:	53415f45 	movtpl	r5, #8005	; 0x1f45
     b00:	20434f53 	subcs	r4, r3, r3, asr pc
     b04:	00323331 	eorseq	r3, r2, r1, lsr r3
     b08:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
     b0c:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
     b10:	535f0063 	cmppl	pc, #99	; 0x63
     b14:	41425f43 	cmpmi	r2, r3, asr #30
     b18:	45495252 	strbmi	r5, [r9, #-594]	; 0xfffffdae
     b1c:	35205352 	strcc	r5, [r0, #-850]!	; 0xfffffcae
     b20:	425f0036 	subsmi	r0, pc, #54	; 0x36
     b24:	49534b4c 	ldmdbmi	r3, {r2, r3, r6, r8, r9, fp, lr}^
     b28:	545f455a 	ldrbpl	r4, [pc], #-1370	; b30 <_fwalk+0x24>
     b2c:	4345445f 	movtmi	r4, #21599	; 0x545f
     b30:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
     b34:	5f002044 	svcpl	0x00002044
     b38:	626e755f 	rsbvs	r7, lr, #398458880	; 0x17c00000
     b3c:	646e756f 	strbtvs	r7, [lr], #-1391	; 0xfffffa91
     b40:	00206465 	eoreq	r6, r0, r5, ror #8
     b44:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     b48:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
     b4c:	31545341 	cmpcc	r4, r1, asr #6
     b50:	49575f36 	ldmdbmi	r7, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     b54:	5f485444 	svcpl	0x00485444
     b58:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
     b5c:	43535f00 	cmpmi	r3, #0, 30
     b60:	5248545f 	subpl	r5, r8, #1593835520	; 0x5f000000
     b64:	5f444145 	svcpl	0x00444145
     b68:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
     b6c:	5f534441 	svcpl	0x00534441
     b70:	2058414d 	subscs	r4, r8, sp, asr #2
     b74:	5f003034 	svcpl	0x00003034
     b78:	4653555f 			; <UNDEFINED> instruction: 0x4653555f
     b7c:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
     b80:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     b84:	30205f5f 	eorcc	r5, r0, pc, asr pc
     b88:	4855302e 	ldmdami	r5, {r1, r2, r3, r5, ip, sp}^
     b8c:	45530052 	ldrbmi	r0, [r3, #-82]	; 0xffffffae
     b90:	535f4b45 	cmppl	pc, #70656	; 0x11400
     b94:	30205445 	eorcc	r5, r0, r5, asr #8
     b98:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     b9c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     ba0:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     ba4:	545f3233 	ldrbpl	r3, [pc], #-563	; bac <__libc_init_array+0x2c>
     ba8:	5f455059 	svcpl	0x00455059
     bac:	6f6c205f 	svcvs	0x006c205f
     bb0:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
     bb4:	4d00746e 	cfstrsmi	mvf7, [r0, #-440]	; 0xfffffe48
     bb8:	55435f42 	strbpl	r5, [r3, #-3906]	; 0xfffff0be
     bbc:	414d5f52 	cmpmi	sp, r2, asr pc
     bc0:	5f5f2058 	svcpl	0x005f2058
     bc4:	61636f6c 	cmnvs	r3, ip, ror #30
     bc8:	6d5f656c 	cfldr64vs	mvdx6, [pc, #-432]	; a20 <__sinit+0x5c>
     bcc:	75635f62 	strbvc	r5, [r3, #-3938]!	; 0xfffff09e
     bd0:	616d5f72 	smcvs	54770	; 0xd5f2
     bd4:	00292878 	eoreq	r2, r9, r8, ror r8
     bd8:	42445f5f 	submi	r5, r4, #380	; 0x17c
     bdc:	41485f4c 	cmpmi	r8, ip, asr #30
     be0:	4e495f53 	mcrmi	15, 2, r5, cr9, cr3, {2}
     be4:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
     be8:	5f5f5954 	svcpl	0x005f5954
     bec:	5f003120 	svcpl	0x00003120
     bf0:	4c5f424d 	lfmmi	f4, 2, [pc], {77}	; 0x4d
     bf4:	4d5f4e45 	ldclmi	14, cr4, [pc, #-276]	; ae8 <fiprintf>
     bf8:	31205841 			; <UNDEFINED> instruction: 0x31205841
     bfc:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
     c00:	6f6c5f6f 	svcvs	0x006c5f6f
     c04:	615f6b63 	cmpvs	pc, r3, ror #22
     c08:	796c616e 	stmdbvc	ip!, {r1, r2, r3, r5, r6, r8, sp, lr}^
     c0c:	20736973 	rsbscs	r6, r3, r3, ror r9
     c10:	6f6c5f5f 	svcvs	0x006c5f5f
     c14:	615f6b63 	cmpvs	pc, r3, ror #22
     c18:	746f6e6e 	strbtvc	r6, [pc], #-3694	; c20 <_free_r+0x28>
     c1c:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
     c20:	745f6f6e 	ldrbvc	r6, [pc], #-3950	; c28 <_free_r+0x30>
     c24:	61657268 	cmnvs	r5, r8, ror #4
     c28:	61735f64 	cmnvs	r3, r4, ror #30
     c2c:	79746566 	ldmdbvc	r4!, {r1, r2, r5, r6, r8, sl, sp, lr}^
     c30:	616e615f 	cmnvs	lr, pc, asr r1
     c34:	6973796c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, fp, ip, sp, lr}^
     c38:	5f002973 	svcpl	0x00002973
     c3c:	4c5f4156 	ldfmie	f4, [pc], {86}	; 0x56
     c40:	5f545349 	svcpl	0x00545349
     c44:	49464544 	stmdbmi	r6, {r2, r6, r8, sl, lr}^
     c48:	2044454e 	subcs	r4, r4, lr, asr #10
     c4c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; c54 <_free_r+0x5c>
     c50:	32314345 	eorscc	r4, r1, #335544321	; 0x14000001
     c54:	414d5f38 	cmpmi	sp, r8, lsr pc
     c58:	445f544e 	ldrbmi	r5, [pc], #-1102	; c60 <_free_r+0x68>
     c5c:	5f5f4749 	svcpl	0x005f4749
     c60:	00343320 	eorseq	r3, r4, r0, lsr #6
     c64:	48535f5f 	ldmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     c68:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; b28 <_fwalk+0x1c>
     c6c:	5f5f5841 	svcpl	0x005f5841
     c70:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     c74:	00666666 	rsbeq	r6, r6, r6, ror #12
     c78:	63775f5f 	cmnvs	r7, #380	; 0x17c
     c7c:	5f726168 	svcpl	0x00726168
     c80:	205f5f74 	subscs	r5, pc, r4, ror pc	; <UNPREDICTABLE>
     c84:	58544500 	ldmdapl	r4, {r8, sl, lr}^
     c88:	59534254 	ldmdbpl	r3, {r2, r4, r6, r9, lr}^
     c8c:	00363220 	eorseq	r3, r6, r0, lsr #4
     c90:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
     c94:	6e5f006b 	cdpvs	0, 5, cr0, cr15, cr11, {3}
     c98:	00667562 	rsbeq	r7, r6, r2, ror #10
     c9c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     ca0:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
     ca4:	205f5f47 	subscs	r5, pc, r7, asr #30
     ca8:	41550036 	cmpmi	r5, r6, lsr r0
     cac:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; b6c <_fwalk_reent+0x28>
     cb0:	4d45444f 	cfstrdmi	mvd4, [r5, #-316]	; 0xfffffec4
     cb4:	445f5253 	ldrbmi	r5, [pc], #-595	; cbc <_malloc_r+0x2c>
     cb8:	30204443 	eorcc	r4, r0, r3, asr #8
     cbc:	30303078 	eorscc	r3, r0, r8, ror r0
     cc0:	38303030 	ldmdacc	r0!, {r4, r5, ip, sp}
     cc4:	535f0030 	cmppl	pc, #48	; 0x30
     cc8:	49545f43 	ldmdbmi	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
     ccc:	5352454d 	cmppl	r2, #322961408	; 0x13400000
     cd0:	00333320 	eorseq	r3, r3, r0, lsr #6
     cd4:	5f504d54 	svcpl	0x00504d54
     cd8:	2058414d 	subscs	r4, r8, sp, asr #2
     cdc:	5f003632 	svcpl	0x00003632
     ce0:	7361665f 	cmnvc	r1, #99614720	; 0x5f00000
     ce4:	6c616374 	stclvs	3, cr6, [r1], #-464	; 0xfffffe30
     ce8:	5f5f206c 	svcpl	0x005f206c
     cec:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
     cf0:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
     cf4:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     cf8:	665f5f28 	ldrbvs	r5, [pc], -r8, lsr #30
     cfc:	63747361 	cmnvs	r4, #-2080374783	; 0x84000001
     d00:	5f6c6c61 	svcpl	0x006c6c61
     d04:	0029295f 	eoreq	r2, r9, pc, asr r9
     d08:	5f43535f 	svcpl	0x0043535f
     d0c:	4f52474e 	svcmi	0x0052474e
     d10:	5f535055 	svcpl	0x00535055
     d14:	2058414d 	subscs	r4, r8, sp, asr #2
     d18:	4e5f0033 	mrcmi	0, 2, r0, cr15, cr3, {1}
     d1c:	4c4e494f 	mcrrmi	9, 4, r4, lr, cr15	; <UNPREDICTABLE>
     d20:	20454e49 	subcs	r4, r5, r9, asr #28
     d24:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
     d28:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
     d2c:	5f657475 	svcpl	0x00657475
     d30:	2828205f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, sp}
     d34:	6f6e5f5f 	svcvs	0x006e5f5f
     d38:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
     d3c:	5f5f656e 	svcpl	0x005f656e
     d40:	5f002929 	svcpl	0x00002929
     d44:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     d48:	5341465f 	movtpl	r4, #5727	; 0x165f
     d4c:	5f343654 	svcpl	0x00343654
     d50:	5f58414d 	svcpl	0x0058414d
     d54:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     d58:	66666637 			; <UNDEFINED> instruction: 0x66666637
     d5c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d60:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d64:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d68:	55004c4c 	strpl	r4, [r0, #-3148]	; 0xfffff3b4
     d6c:	5f545241 	svcpl	0x00545241
     d70:	435f524d 	cmpmi	pc, #-805306364	; 0xd0000004
     d74:	444f4d48 	strbmi	r4, [pc], #-3400	; d7c <__sfputs_r+0xa>
     d78:	5f4c5f45 	svcpl	0x004c5f45
     d7c:	504f4f4c 	subpl	r4, pc, ip, asr #30
     d80:	30783020 	rsbscc	r3, r8, r0, lsr #32
     d84:	30303030 	eorscc	r3, r0, r0, lsr r0
     d88:	00303032 	eorseq	r3, r0, r2, lsr r0
     d8c:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
     d90:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
     d94:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     d98:	205f5f4e 	subscs	r5, pc, lr, asr #30
     d9c:	58302d28 	ldmdapl	r0!, {r3, r5, r8, sl, fp, sp}
     da0:	31335031 	teqcc	r3, r1, lsr r0
     da4:	2d4b4c4c 	stclcs	12, cr4, [fp, #-304]	; 0xfffffed0
     da8:	50315830 	eorspl	r5, r1, r0, lsr r8
     dac:	4c4c3133 	stfmie	f3, [ip], {51}	; 0x33
     db0:	5f00294b 	svcpl	0x0000294b
     db4:	4343475f 	movtmi	r4, #14175	; 0x375f
     db8:	4f54415f 	svcmi	0x0054415f
     dbc:	5f43494d 	svcpl	0x0043494d
     dc0:	52414843 	subpl	r4, r1, #4390912	; 0x430000
     dc4:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
     dc8:	52465f4b 	subpl	r5, r6, #300	; 0x12c
     dcc:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
     dd0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffed8 <__stack+0xf7fffee0>
     dd4:	5f544e49 	svcpl	0x00544e49
     dd8:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     ddc:	545f3631 	ldrbpl	r3, [pc], #-1585	; de4 <_vfiprintf_r+0x34>
     de0:	5f455059 	svcpl	0x00455059
     de4:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
     de8:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     dec:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
     df0:	4c00746e 	cfstrsmi	mvf7, [r0], {110}	; 0x6e
     df4:	575f4c56 			; <UNDEFINED> instruction: 0x575f4c56
     df8:	494e5241 	stmdbmi	lr, {r0, r6, r9, ip, lr}^
     dfc:	3320474e 			; <UNDEFINED> instruction: 0x3320474e
     e00:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; ffffff08 <__stack+0xf7ffff10>
     e04:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
     e08:	414d5f34 	cmpmi	sp, r4, lsr pc
     e0c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     e10:	66667830 			; <UNDEFINED> instruction: 0x66667830
     e14:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e18:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e1c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e20:	4c556666 	mrrcmi	6, 6, r6, r5, cr6
     e24:	5f5f004c 	svcpl	0x005f004c
     e28:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     e2c:	495f464f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, r9, sl, lr}^	; <UNPREDICTABLE>
     e30:	5f5f544e 	svcpl	0x005f544e
     e34:	5f003420 	svcpl	0x00003420
     e38:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     e3c:	5f5f4c45 	svcpl	0x005f4c45
     e40:	5f003120 	svcpl	0x00003120
     e44:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
     e48:	4c495f36 	mcrrmi	15, 3, r5, r9, cr6
     e4c:	5f323350 	svcpl	0x00323350
     e50:	4246464f 	submi	r4, r6, #82837504	; 0x4f00000
     e54:	5f204749 	svcpl	0x00204749
     e58:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
     e5c:	4c495f37 	mcrrmi	15, 3, r5, r9, cr7
     e60:	5f323350 	svcpl	0x00323350
     e64:	4246464f 	submi	r4, r6, #82837504	; 0x4f00000
     e68:	5f004749 	svcpl	0x00004749
     e6c:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     e70:	5f583233 	svcpl	0x00583233
     e74:	5f58414d 	svcpl	0x0058414d
     e78:	455f3031 	ldrbmi	r3, [pc, #-49]	; e4f <_vfiprintf_r+0x9f>
     e7c:	5f5f5058 	svcpl	0x005f5058
     e80:	38303320 	ldmdacc	r0!, {r5, r8, r9, ip, sp}
     e84:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     e88:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
     e8c:	49445f58 	stmdbmi	r4, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     e90:	205f5f47 	subscs	r5, pc, r7, asr #30
     e94:	5f003531 	svcpl	0x00003531
     e98:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
     e9c:	4f54415f 	svcmi	0x0054415f
     ea0:	5f43494d 	svcpl	0x0043494d
     ea4:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     ea8:	69205f5f 	stmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     eac:	5f00746e 	svcpl	0x0000746e
     eb0:	5f445342 	svcpl	0x00445342
     eb4:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     eb8:	445f545f 	ldrbmi	r5, [pc], #-1119	; ec0 <_vfiprintf_r+0x110>
     ebc:	4e494645 	cdpmi	6, 4, cr4, cr9, cr5, {2}
     ec0:	205f4445 	subscs	r4, pc, r5, asr #8
     ec4:	43505f00 	cmpmi	r0, #0, 30
     ec8:	4d59535f 	ldclmi	3, cr5, [r9, #-380]	; 0xfffffe84
     ecc:	4b4e494c 	blmi	1393404 <_end+0x393404>
     ed0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     ed4:	00343120 	eorseq	r3, r4, r0, lsr #2
     ed8:	44554142 	ldrbmi	r4, [r5], #-322	; 0xfffffebe
     edc:	004e4547 	subeq	r4, lr, r7, asr #10
     ee0:	5f43535f 	svcpl	0x0043535f
     ee4:	49534f50 	ldmdbmi	r3, {r4, r6, r8, r9, sl, fp, lr}^
     ee8:	36325f58 	shsaxcc	r5, r2, r8
     eec:	5245565f 	subpl	r5, r5, #99614720	; 0x5f00000
     ef0:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
     ef4:	30343120 	eorscc	r3, r4, r0, lsr #2
     ef8:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
     efc:	5f544e45 	svcpl	0x00544e45
     f00:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
     f04:	58454e5f 	stmdapl	r5, {r0, r1, r2, r3, r4, r6, r9, sl, fp, lr}^
     f08:	74702854 	ldrbtvc	r2, [r0], #-2132	; 0xfffff7ac
     f0c:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
     f10:	72747028 	rsbsvc	r7, r4, #40	; 0x28
     f14:	5f3e2d29 	svcpl	0x003e2d29
     f18:	2d383472 	cfldrscs	mvf3, [r8, #-456]!	; 0xfffffe38
     f1c:	61725f3e 	cmnvs	r2, lr, lsr pc
     f20:	6e5f646e 	cdpvs	4, 5, cr6, cr15, cr14, {3}
     f24:	29747865 	ldmdbcs	r4!, {r0, r2, r5, r6, fp, ip, sp, lr}^
     f28:	43535f00 	cmpmi	r3, #0, 30
     f2c:	4950535f 	ldmdbmi	r0, {r0, r1, r2, r3, r4, r6, r8, r9, ip, lr}^
     f30:	4f4c5f4e 	svcmi	0x004c5f4e
     f34:	20534b43 	subscs	r4, r3, r3, asr #22
     f38:	5f003637 	svcpl	0x00003637
     f3c:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     f40:	5f583233 	svcpl	0x00583233
     f44:	5f58414d 	svcpl	0x0058414d
     f48:	2e31205f 	mrccs	0, 1, r2, cr1, cr15, {2}
     f4c:	36373937 			; <UNDEFINED> instruction: 0x36373937
     f50:	33313339 	teqcc	r1, #-469762048	; 0xe4000000
     f54:	32363834 	eorscc	r3, r6, #52, 16	; 0x340000
     f58:	37353133 			; <UNDEFINED> instruction: 0x37353133
     f5c:	30332b65 	eorscc	r2, r3, r5, ror #22
     f60:	32334638 	eorscc	r4, r3, #56, 12	; 0x3800000
     f64:	475f0078 			; <UNDEFINED> instruction: 0x475f0078
     f68:	41424f4c 	cmpmi	r2, ip, asr #30
     f6c:	54415f4c 	strbpl	r5, [r1], #-3916	; 0xfffff0b4
     f70:	54495845 	strbpl	r5, [r9], #-2117	; 0xfffff7bb
     f74:	6c675f20 	stclvs	15, cr5, [r7], #-128	; 0xffffff80
     f78:	6c61626f 	sfmvs	f6, 2, [r1], #-444	; 0xfffffe44
     f7c:	6574615f 	ldrbvs	r6, [r4, #-351]!	; 0xfffffea1
     f80:	00746978 	rsbseq	r6, r4, r8, ror r9
     f84:	4f4e495f 	svcmi	0x004e495f
     f88:	445f545f 	ldrbmi	r5, [pc], #-1119	; f90 <_vfiprintf_r+0x1e0>
     f8c:	414c4345 	cmpmi	ip, r5, asr #6
     f90:	20444552 	subcs	r4, r4, r2, asr r5
     f94:	43535f00 	cmpmi	r3, #0, 30
     f98:	5f36565f 	svcpl	0x0036565f
     f9c:	33504c49 	cmpcc	r0, #18688	; 0x4900
     fa0:	464f5f32 			; <UNDEFINED> instruction: 0x464f5f32
     fa4:	20323346 	eorscs	r3, r2, r6, asr #6
     fa8:	5f43535f 	svcpl	0x0043535f
     fac:	495f3756 	ldmdbmi	pc, {r1, r2, r4, r6, r8, r9, sl, ip, sp}^	; <UNPREDICTABLE>
     fb0:	3233504c 	eorscc	r5, r3, #76	; 0x4c
     fb4:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
     fb8:	5f003233 	svcpl	0x00003233
     fbc:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     fc0:	5f363154 	svcpl	0x00363154
     fc4:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
     fc8:	5f006320 	svcpl	0x00006320
     fcc:	4152505f 	cmpmi	r2, pc, asr r0
     fd0:	5f414d47 	svcpl	0x00414d47
     fd4:	45444552 	strbmi	r4, [r4, #-1362]	; 0xfffffaae
     fd8:	454e4946 	strbmi	r4, [lr, #-2374]	; 0xfffff6ba
     fdc:	5458455f 	ldrbpl	r4, [r8], #-1375	; 0xfffffaa1
     fe0:	454d414e 	strbmi	r4, [sp, #-334]	; 0xfffffeb2
     fe4:	5f003120 	svcpl	0x00003120
     fe8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     fec:	41454c5f 	cmpmi	r5, pc, asr ip
     ff0:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     ff4:	5059545f 	subspl	r5, r9, pc, asr r4
     ff8:	205f5f45 	subscs	r5, pc, r5, asr #30
     ffc:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    1000:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    1004:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
    1008:	41550074 	cmpmi	r5, r4, ror r0
    100c:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    1010:	41505f52 	cmpmi	r0, r2, asr pc
    1014:	59544952 	ldmdbpl	r4, {r1, r4, r6, r8, fp, lr}^
    1018:	30783020 	rsbscc	r3, r8, r0, lsr #32
    101c:	30303030 	eorscc	r3, r0, r0, lsr r0
    1020:	00303830 	eorseq	r3, r0, r0, lsr r8
    1024:	454f4e45 	strbmi	r4, [pc, #-3653]	; 1e7 <_write+0xa3>
    1028:	3220544e 	eorcc	r5, r0, #1308622848	; 0x4e000000
    102c:	6c415f00 	mcrrvs	15, 0, r5, r1, cr0
    1030:	616e6769 	cmnvs	lr, r9, ror #14
    1034:	29782873 	ldmdbcs	r8!, {r0, r1, r4, r5, r6, fp, sp}^
    1038:	615f5f20 	cmpvs	pc, r0, lsr #30
    103c:	6e67696c 	vnmulvs.f16	s13, s14, s25	; <UNPREDICTABLE>
    1040:	78286465 	stmdavc	r8!, {r0, r2, r5, r6, sl, sp, lr}
    1044:	5f5f0029 	svcpl	0x005f0029
    1048:	6b636f6c 	blvs	18dce00 <_end+0x8dce00>
    104c:	7163615f 	cmnvc	r3, pc, asr r1
    1050:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    1054:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    1058:	2820296b 	stmdacs	r0!, {r0, r1, r3, r5, r6, r8, fp, sp}
    105c:	696f7628 	stmdbvs	pc!, {r3, r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    1060:	30202964 	eorcc	r2, r0, r4, ror #18
    1064:	535f0029 	cmppl	pc, #41	; 0x29
    1068:	454d5f43 	strbmi	r5, [sp, #-3907]	; 0xfffff0bd
    106c:	434f4c4d 	movtmi	r4, #64589	; 0xfc4d
    1070:	3432204b 	ldrtcc	r2, [r2], #-75	; 0xffffffb5
    1074:	735f5f00 	cmpvc	pc, #0, 30
    1078:	635f6d79 	cmpvs	pc, #7744	; 0x1e40
    107c:	61706d6f 	cmnvs	r0, pc, ror #26
    1080:	79732874 	ldmdbvc	r3!, {r2, r4, r5, r6, fp, sp}^
    1084:	6d692c6d 	stclvs	12, cr2, [r9, #-436]!	; 0xfffffe4c
    1088:	762c6c70 			; <UNDEFINED> instruction: 0x762c6c70
    108c:	64697265 	strbtvs	r7, [r9], #-613	; 0xfffffd9b
    1090:	5f5f2029 	svcpl	0x005f2029
    1094:	5f6d7361 	svcpl	0x006d7361
    1098:	2e22285f 	mcrcs	8, 1, r2, cr2, cr15, {2}
    109c:	766d7973 			; <UNDEFINED> instruction: 0x766d7973
    10a0:	22207265 	eorcs	r7, r0, #1342177286	; 0x50000006
    10a4:	6d692320 	stclvs	3, cr2, [r9, #-128]!	; 0xffffff80
    10a8:	22206c70 	eorcs	r6, r0, #112, 24	; 0x7000
    10ac:	2022202c 	eorcs	r2, r2, ip, lsr #32
    10b0:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    10b4:	22402220 	subcs	r2, r0, #32, 4
    10b8:	65762320 	ldrbvs	r2, [r6, #-800]!	; 0xfffffce0
    10bc:	29646972 	stmdbcs	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
    10c0:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    10c4:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    10c8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    10cc:	64615f00 	strbtvs	r5, [r1], #-3840	; 0xfffff100
    10d0:	5f5f0064 	svcpl	0x005f0064
    10d4:	4c494673 	mcrrmi	6, 7, r4, r9, cr3
    10d8:	61665f45 	cmnvs	r6, r5, asr #30
    10dc:	5f00656b 	svcpl	0x0000656b
    10e0:	7165725f 	cmnvc	r5, pc, asr r2
    10e4:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    10e8:	6e755f73 	mrcvs	15, 3, r5, cr5, cr3, {3}
    10ec:	6b636f6c 	blvs	18dcea4 <_end+0x8dcea4>
    10f0:	2e286465 	cdpcs	4, 2, cr6, cr8, cr5, {3}
    10f4:	20292e2e 	eorcs	r2, r9, lr, lsr #28
    10f8:	6f6c5f5f 	svcvs	0x006c5f5f
    10fc:	615f6b63 	cmpvs	pc, r3, ror #22
    1100:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 1108 <_printf_i+0x24>
    1104:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    1108:	6b636f6c 	blvs	18dcec0 <_end+0x8dcec0>
    110c:	78655f73 	stmdavc	r5!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    1110:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    1114:	5f286465 	svcpl	0x00286465
    1118:	5f41565f 	svcpl	0x0041565f
    111c:	53475241 	movtpl	r5, #29249	; 0x7241
    1120:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    1124:	5f5f5f00 	svcpl	0x005f5f00
    1128:	5f746e69 	svcpl	0x00746e69
    112c:	61686377 	smcvs	34359	; 0x8637
    1130:	5f745f72 	svcpl	0x00745f72
    1134:	5f002068 	svcpl	0x00002068
    1138:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    113c:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    1140:	5f485f4b 	svcpl	0x00485f4b
    1144:	4500205f 	strmi	r2, [r0, #-95]	; 0xffffffa1
    1148:	53495845 	movtpl	r5, #38981	; 0x9845
    114c:	37312054 			; <UNDEFINED> instruction: 0x37312054
    1150:	425f5f00 	subsmi	r5, pc, #0, 30
    1154:	4e494745 	cdpmi	7, 4, cr4, cr9, cr5, {2}
    1158:	4345445f 	movtmi	r4, #21599	; 0x545f
    115c:	0020534c 	eoreq	r5, r0, ip, asr #6
    1160:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    1164:	5f58414d 	svcpl	0x0058414d
    1168:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    116c:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 254 <_read+0x28>
    1170:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    1174:	435f5841 	cmpmi	pc, #4259840	; 0x410000
    1178:	00296328 	eoreq	r6, r9, r8, lsr #6
    117c:	51515f5f 	cmppl	r1, pc, asr pc
    1180:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1184:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1188:	5f5f0037 	svcpl	0x005f0037
    118c:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    1190:	645f745f 	ldrbvs	r7, [pc], #-1119	; 1198 <_printf_i+0xb4>
    1194:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    1198:	00206465 	eoreq	r6, r0, r5, ror #8
    119c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    11a0:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    11a4:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    11a8:	5f4d524f 	svcpl	0x004d524f
    11ac:	5f4e494d 	svcpl	0x004e494d
    11b0:	2e34205f 	mrccs	0, 1, r2, cr4, cr15, {2}
    11b4:	36303439 			; <UNDEFINED> instruction: 0x36303439
    11b8:	35343635 	ldrcc	r3, [r4, #-1589]!	; 0xfffff9cb
    11bc:	32313438 	eorscc	r3, r1, #56, 8	; 0x38000000
    11c0:	34353634 	ldrtcc	r3, [r5], #-1588	; 0xfffff9cc
    11c4:	32332d65 	eorscc	r2, r3, #6464	; 0x1940
    11c8:	32334634 	eorscc	r4, r3, #52, 12	; 0x3400000
    11cc:	5f5f0078 	svcpl	0x005f0078
    11d0:	6c5f6176 	ldfvse	f6, [pc], {118}	; 0x76
    11d4:	5f747369 	svcpl	0x00747369
    11d8:	5f00205f 	svcpl	0x0000205f
    11dc:	4749425f 	smlsldmi	r4, r9, pc, r2	; <UNPREDICTABLE>
    11e0:	54534547 	ldrbpl	r4, [r3], #-1351	; 0xfffffab9
    11e4:	494c415f 	stmdbmi	ip, {r0, r1, r2, r3, r4, r6, r8, lr}^
    11e8:	454d4e47 	strbmi	r4, [sp, #-3655]	; 0xfffff1b9
    11ec:	5f5f544e 	svcpl	0x005f544e
    11f0:	5f003820 	svcpl	0x00003820
    11f4:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    11f8:	53415f54 	movtpl	r5, #8020	; 0x1f54
    11fc:	4d495443 	cfstrdmi	mvd5, [r9, #-268]	; 0xfffffef4
    1200:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    1204:	3220455a 	eorcc	r4, r0, #377487360	; 0x16800000
    1208:	5f5f0036 	svcpl	0x005f0036
    120c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    1210:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1214:	5f5f4550 	svcpl	0x005f4550
    1218:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    121c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    1220:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
    1224:	5f007261 	svcpl	0x00007261
    1228:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    122c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 1168 <_printf_i+0x84>
    1230:	315f4e49 	cmpcc	pc, r9, asr #28
    1234:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    1238:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    123c:	37332d28 	ldrcc	r2, [r3, -r8, lsr #26]!
    1240:	795a0029 	ldmdbvc	sl, {r0, r3, r5}^
    1244:	3037716e 	eorscc	r7, r7, lr, ror #2
    1248:	555f3030 	ldrbpl	r3, [pc, #-48]	; 1220 <_printf_i+0x13c>
    124c:	5f545241 	svcpl	0x00545241
    1250:	43544547 	cmpmi	r4, #297795584	; 0x11c00000
    1254:	00524148 	subseq	r4, r2, r8, asr #2
    1258:	5f43535f 	svcpl	0x0043535f
    125c:	43415254 	movtmi	r5, #4692	; 0x1254
    1260:	59535f45 	ldmdbpl	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    1264:	414d5f53 	cmpmi	sp, r3, asr pc
    1268:	39382058 	ldmdbcc	r8!, {r3, r4, r6, sp}
    126c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 374 <Console+0x8>
    1270:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    1274:	5f4d5543 	svcpl	0x004d5543
    1278:	5f58414d 	svcpl	0x0058414d
    127c:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1280:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1284:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1288:	46464646 	strbmi	r4, [r6], -r6, asr #12
    128c:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1290:	32332d50 	eorscc	r2, r3, #80, 26	; 0x1400
    1294:	4b4c4c55 	blmi	13143f0 <_end+0x3143f0>
    1298:	52415500 	subpl	r5, r1, #0, 10
    129c:	58525f54 	ldmdapl	r2, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    12a0:	54554f54 	ldrbpl	r4, [r5], #-3924	; 0xfffff0ac
    12a4:	53414d5f 	movtpl	r4, #7519	; 0x1d5f
    12a8:	7830204b 	ldmdavc	r0!, {r0, r1, r3, r6, sp}
    12ac:	30303030 	eorscc	r3, r0, r0, lsr r0
    12b0:	46463030 			; <UNDEFINED> instruction: 0x46463030
    12b4:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; 3bc <Console+0x50>
    12b8:	5453414c 	ldrbpl	r4, [r3], #-332	; 0xfffffeb4
    12bc:	4f525245 	svcmi	0x00525245
    12c0:	30322052 	eorscc	r2, r2, r2, asr r0
    12c4:	5f003030 	svcpl	0x00003030
    12c8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    12cc:	41454c5f 	cmpmi	r5, pc, asr ip
    12d0:	36315453 			; <UNDEFINED> instruction: 0x36315453
    12d4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    12d8:	30205f5f 	eorcc	r5, r0, pc, asr pc
    12dc:	66663778 			; <UNDEFINED> instruction: 0x66663778
    12e0:	5f5f0066 	svcpl	0x005f0066
    12e4:	736e6f63 	cmnvc	lr, #396	; 0x18c
    12e8:	6f632074 	svcvs	0x00632074
    12ec:	0074736e 	rsbseq	r7, r4, lr, ror #6
    12f0:	45535f5f 	ldrbmi	r5, [r3, #-3935]	; 0xfffff0a1
    12f4:	3020464f 	eorcc	r4, r0, pc, asr #12
    12f8:	32303078 	eorscc	r3, r0, #120	; 0x78
    12fc:	4d5f0030 	ldclmi	0, cr0, [pc, #-192]	; 1244 <_printf_i+0x160>
    1300:	53484341 	movtpl	r4, #33601	; 0x8341
    1304:	494c4454 	stmdbmi	ip, {r2, r4, r6, sl, lr}^
    1308:	5f485f42 	svcpl	0x00485f42
    130c:	6c5f0020 	mrrcvs	0, 2, r0, pc, cr0	; <UNPREDICTABLE>
    1310:	69736662 	ldmdbvs	r3!, {r1, r5, r6, r9, sl, sp, lr}^
    1314:	4500657a 	strmi	r6, [r0, #-1402]	; 0xfffffa86
    1318:	52504f4e 	subspl	r4, r0, #312	; 0x138
    131c:	4f4f544f 	svcmi	0x004f544f
    1320:	31205450 			; <UNDEFINED> instruction: 0x31205450
    1324:	5f003930 	svcpl	0x00003930
    1328:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    132c:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
    1330:	4d5f5449 	cfldrdmi	mvd5, [pc, #-292]	; 1214 <_printf_i+0x130>
    1334:	28435349 	stmdacs	r3, {r0, r3, r6, r8, r9, ip, lr}^
    1338:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    133c:	206f6420 	rsbcs	r6, pc, r0, lsr #8
    1340:	7473207b 	ldrbtvc	r2, [r3], #-123	; 0xffffff85
    1344:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
    1348:	65725f20 	ldrbvs	r5, [r2, #-3872]!	; 0xfffff0e0
    134c:	20746e65 	rsbscs	r6, r4, r5, ror #28
    1350:	20725f2a 	rsbscs	r5, r2, sl, lsr #30
    1354:	7628203d 			; <UNDEFINED> instruction: 0x7628203d
    1358:	3b297261 	blcc	a5dce4 <heap_size+0xa3dce4>
    135c:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    1360:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1364:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    1368:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
    136c:	5f6b6f74 	svcpl	0x006b6f74
    1370:	7473616c 	ldrbtvc	r6, [r3], #-364	; 0xfffffe94
    1374:	5f203d20 	svcpl	0x00203d20
    1378:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    137c:	725f203b 	subsvc	r2, pc, #59	; 0x3b
    1380:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 12d4 <_printf_i+0x1f0>
    1384:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    1388:	626d5f3e 	rsbvs	r5, sp, #62, 30	; 0xf8
    138c:	5f6e656c 	svcpl	0x006e656c
    1390:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    1394:	5f5f2e65 	svcpl	0x005f2e65
    1398:	6e756f63 	cdpvs	15, 7, cr6, cr5, cr3, {3}
    139c:	203d2074 	eorscs	r2, sp, r4, ror r0
    13a0:	5f203b30 	svcpl	0x00203b30
    13a4:	5f3e2d72 	svcpl	0x003e2d72
    13a8:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    13ac:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 1300 <_printf_i+0x21c>
    13b0:	6e656c62 	cdpvs	12, 6, cr6, cr5, cr2, {3}
    13b4:	6174735f 	cmnvs	r4, pc, asr r3
    13b8:	5f2e6574 	svcpl	0x002e6574
    13bc:	6c61765f 	stclvs	6, cr7, [r1], #-380	; 0xfffffe84
    13c0:	5f2e6575 	svcpl	0x002e6575
    13c4:	6863775f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
    13c8:	30203d20 	eorcc	r3, r0, r0, lsr #26
    13cc:	725f203b 	subsvc	r2, pc, #59	; 0x3b
    13d0:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 1324 <_iprintf_r+0x8>
    13d4:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    13d8:	63775f3e 	cmnvs	r7, #62, 30	; 0xf8
    13dc:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
    13e0:	6174735f 	cmnvs	r4, pc, asr r3
    13e4:	5f2e6574 	svcpl	0x002e6574
    13e8:	756f635f 	strbvc	r6, [pc, #-863]!	; 1091 <__STACK_SIZE+0x91>
    13ec:	3d20746e 	cfstrscc	mvf7, [r0, #-440]!	; 0xfffffe48
    13f0:	203b3020 	eorscs	r3, fp, r0, lsr #32
    13f4:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    13f8:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    13fc:	5f3e2d63 	svcpl	0x003e2d63
    1400:	6f746377 	svcvs	0x00746377
    1404:	735f626d 	cmpvc	pc, #-805306362	; 0xd0000006
    1408:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    140c:	765f5f2e 	ldrbvc	r5, [pc], -lr, lsr #30
    1410:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
    1414:	775f5f2e 	ldrbvc	r5, [pc, -lr, lsr #30]
    1418:	3d206863 	stccc	8, cr6, [r0, #-396]!	; 0xfffffe74
    141c:	203b3020 	eorscs	r3, fp, r0, lsr #32
    1420:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1424:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    1428:	5f3e2d63 	svcpl	0x003e2d63
    142c:	6f74626d 	svcvs	0x0074626d
    1430:	735f6377 	cmpvc	pc, #-603979775	; 0xdc000001
    1434:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    1438:	635f5f2e 	cmpvs	pc, #46, 30	; 0xb8
    143c:	746e756f 	strbtvc	r7, [lr], #-1391	; 0xfffffa91
    1440:	30203d20 	eorcc	r3, r0, r0, lsr #26
    1444:	725f203b 	subsvc	r2, pc, #59	; 0x3b
    1448:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 139c <_puts_r+0x28>
    144c:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    1450:	626d5f3e 	rsbvs	r5, sp, #62, 30	; 0xf8
    1454:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
    1458:	6174735f 	cmnvs	r4, pc, asr r3
    145c:	5f2e6574 	svcpl	0x002e6574
    1460:	6c61765f 	stclvs	6, cr7, [r1], #-380	; 0xfffffe84
    1464:	5f2e6575 	svcpl	0x002e6575
    1468:	6863775f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
    146c:	30203d20 	eorcc	r3, r0, r0, lsr #26
    1470:	725f203b 	subsvc	r2, pc, #59	; 0x3b
    1474:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 13c8 <_puts_r+0x54>
    1478:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    147c:	626d5f3e 	rsbvs	r5, sp, #62, 30	; 0xf8
    1480:	6e656c72 	mcrvs	12, 3, r6, cr5, cr2, {3}
    1484:	6174735f 	cmnvs	r4, pc, asr r3
    1488:	5f2e6574 	svcpl	0x002e6574
    148c:	756f635f 	strbvc	r6, [pc, #-863]!	; 1135 <_printf_i+0x51>
    1490:	3d20746e 	cfstrscc	mvf7, [r0, #-440]!	; 0xfffffe48
    1494:	203b3020 	eorscs	r3, fp, r0, lsr #32
    1498:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    149c:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    14a0:	5f3e2d63 	svcpl	0x003e2d63
    14a4:	6c72626d 	lfmvs	f6, 2, [r2], #-436	; 0xfffffe4c
    14a8:	735f6e65 	cmpvc	pc, #1616	; 0x650
    14ac:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    14b0:	765f5f2e 	ldrbvc	r5, [pc], -lr, lsr #30
    14b4:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
    14b8:	775f5f2e 	ldrbvc	r5, [pc, -lr, lsr #30]
    14bc:	3d206863 	stccc	8, cr6, [r0, #-396]!	; 0xfffffe74
    14c0:	203b3020 	eorscs	r3, fp, r0, lsr #32
    14c4:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    14c8:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    14cc:	5f3e2d63 	svcpl	0x003e2d63
    14d0:	7472626d 	ldrbtvc	r6, [r2], #-621	; 0xfffffd93
    14d4:	5f63776f 	svcpl	0x0063776f
    14d8:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    14dc:	5f5f2e65 	svcpl	0x005f2e65
    14e0:	6e756f63 	cdpvs	15, 7, cr6, cr5, cr3, {3}
    14e4:	203d2074 	eorscs	r2, sp, r4, ror r0
    14e8:	5f203b30 	svcpl	0x00203b30
    14ec:	5f3e2d72 	svcpl	0x003e2d72
    14f0:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    14f4:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 1448 <_sbrk_r+0xc>
    14f8:	6f747262 	svcvs	0x00747262
    14fc:	735f6377 	cmpvc	pc, #-603979775	; 0xdc000001
    1500:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    1504:	765f5f2e 	ldrbvc	r5, [pc], -lr, lsr #30
    1508:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
    150c:	775f5f2e 	ldrbvc	r5, [pc, -lr, lsr #30]
    1510:	3d206863 	stccc	8, cr6, [r0, #-396]!	; 0xfffffe74
    1514:	203b3020 	eorscs	r3, fp, r0, lsr #32
    1518:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    151c:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    1520:	5f3e2d63 	svcpl	0x003e2d63
    1524:	7273626d 	rsbsvc	r6, r3, #-805306362	; 0xd0000006
    1528:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
    152c:	74735f73 	ldrbtvc	r5, [r3], #-3955	; 0xfffff08d
    1530:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
    1534:	6f635f5f 	svcvs	0x00635f5f
    1538:	20746e75 	rsbscs	r6, r4, r5, ror lr
    153c:	3b30203d 	blcc	c09638 <heap_size+0xbe9638>
    1540:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    1544:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1548:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    154c:	73626d5f 	cmnvc	r2, #6080	; 0x17c0
    1550:	776f7472 			; <UNDEFINED> instruction: 0x776f7472
    1554:	735f7363 	cmpvc	pc, #-1946157055	; 0x8c000001
    1558:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    155c:	765f5f2e 	ldrbvc	r5, [pc], -lr, lsr #30
    1560:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
    1564:	775f5f2e 	ldrbvc	r5, [pc, -lr, lsr #30]
    1568:	3d206863 	stccc	8, cr6, [r0, #-396]!	; 0xfffffe74
    156c:	203b3020 	eorscs	r3, fp, r0, lsr #32
    1570:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1574:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    1578:	5f3e2d63 	svcpl	0x003e2d63
    157c:	74726377 	ldrbtvc	r6, [r2], #-887	; 0xfffffc89
    1580:	5f626d6f 	svcpl	0x00626d6f
    1584:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    1588:	5f5f2e65 	svcpl	0x005f2e65
    158c:	6e756f63 	cdpvs	15, 7, cr6, cr5, cr3, {3}
    1590:	203d2074 	eorscs	r2, sp, r4, ror r0
    1594:	5f203b30 	svcpl	0x00203b30
    1598:	5f3e2d72 	svcpl	0x003e2d72
    159c:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    15a0:	775f3e2d 	ldrbvc	r3, [pc, -sp, lsr #28]
    15a4:	6f747263 	svcvs	0x00747263
    15a8:	735f626d 	cmpvc	pc, #-805306362	; 0xd0000006
    15ac:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    15b0:	765f5f2e 	ldrbvc	r5, [pc], -lr, lsr #30
    15b4:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
    15b8:	775f5f2e 	ldrbvc	r5, [pc, -lr, lsr #30]
    15bc:	3d206863 	stccc	8, cr6, [r0, #-396]!	; 0xfffffe74
    15c0:	203b3020 	eorscs	r3, fp, r0, lsr #32
    15c4:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    15c8:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    15cc:	5f3e2d63 	svcpl	0x003e2d63
    15d0:	72736377 	rsbsvc	r6, r3, #-603979775	; 0xdc000001
    15d4:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
    15d8:	74735f73 	ldrbtvc	r5, [r3], #-3955	; 0xfffff08d
    15dc:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
    15e0:	6f635f5f 	svcvs	0x00635f5f
    15e4:	20746e75 	rsbscs	r6, r4, r5, ror lr
    15e8:	3b30203d 	blcc	c096e4 <heap_size+0xbe96e4>
    15ec:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    15f0:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    15f4:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    15f8:	7363775f 	cmnvc	r3, #24903680	; 0x17c0000
    15fc:	6d6f7472 	cfstrdvs	mvd7, [pc, #-456]!	; 143c <_sbrk_r>
    1600:	735f7362 	cmpvc	pc, #-2013265919	; 0x88000001
    1604:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    1608:	765f5f2e 	ldrbvc	r5, [pc], -lr, lsr #30
    160c:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
    1610:	775f5f2e 	ldrbvc	r5, [pc, -lr, lsr #30]
    1614:	3d206863 	stccc	8, cr6, [r0, #-396]!	; 0xfffffe74
    1618:	203b3020 	eorscs	r3, fp, r0, lsr #32
    161c:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1620:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    1624:	5f3e2d63 	svcpl	0x003e2d63
    1628:	6134366c 	teqvs	r4, ip, ror #12
    162c:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
    1630:	205d305b 	subscs	r3, sp, fp, asr r0
    1634:	5c27203d 	stcpl	0, cr2, [r7], #-244	; 0xffffff0c
    1638:	203b2730 	eorscs	r2, fp, r0, lsr r7
    163c:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1640:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    1644:	5f3e2d63 	svcpl	0x003e2d63
    1648:	64746567 	ldrbtvs	r6, [r4], #-1383	; 0xfffffa99
    164c:	5f657461 	svcpl	0x00657461
    1650:	20727265 	rsbscs	r7, r2, r5, ror #4
    1654:	3b30203d 	blcc	c09750 <heap_size+0xbe9750>
    1658:	77207d20 	strvc	r7, [r0, -r0, lsr #26]!
    165c:	656c6968 	strbvs	r6, [ip, #-2408]!	; 0xfffff698
    1660:	29302820 	ldmdbcs	r0!, {r5, fp, sp}
    1664:	43535f00 	cmpmi	r3, #0, 30
    1668:	4d45535f 	stclmi	3, cr5, [r5, #-380]	; 0xfffffe84
    166c:	4c41565f 	mcrrmi	6, 5, r5, r1, cr15
    1670:	4d5f4555 	cfldr64mi	mvdx4, [pc, #-340]	; 1524 <__sseek+0x12>
    1674:	31205841 			; <UNDEFINED> instruction: 0x31205841
    1678:	4f4d0037 	svcmi	0x004d0037
    167c:	434d4544 	movtmi	r4, #54596	; 0xd544
    1680:	41550052 	cmpmi	r5, r2, asr r0
    1684:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 1544 <__swbuf_r>
    1688:	48435f52 	stmdami	r3, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    168c:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    1690:	53414d5f 	movtpl	r4, #7519	; 0x1d5f
    1694:	7830204b 	ldmdavc	r0!, {r0, r1, r3, r6, sp}
    1698:	30303030 	eorscc	r3, r0, r0, lsr r0
    169c:	30303330 	eorscc	r3, r0, r0, lsr r3
    16a0:	4e415f00 	cdpmi	15, 4, cr5, cr1, cr0, {0}
    16a4:	45444953 	strbmi	r4, [r4, #-2387]	; 0xfffff6ad
    16a8:	485f4c43 	ldmdami	pc, {r0, r1, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    16ac:	5f00205f 	svcpl	0x0000205f
    16b0:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    16b4:	5f363154 	svcpl	0x00363154
    16b8:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    16bc:	73205f5f 			; <UNDEFINED> instruction: 0x73205f5f
    16c0:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
    16c4:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    16c8:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    16cc:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    16d0:	5f5f0074 	svcpl	0x005f0074
    16d4:	5f4d5241 	svcpl	0x004d5241
    16d8:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    16dc:	5f455255 	svcpl	0x00455255
    16e0:	00414d46 	subeq	r4, r1, r6, asr #26
    16e4:	5f43535f 	svcpl	0x0043535f
    16e8:	5f574152 	svcpl	0x00574152
    16ec:	4b434f53 	blmi	10d5440 <_end+0xd5440>
    16f0:	20535445 	subscs	r5, r3, r5, asr #8
    16f4:	73003037 	movwvc	r3, #55	; 0x37
    16f8:	756f6474 	strbvc	r6, [pc, #-1140]!	; 128c <_printf_i+0x1a8>
    16fc:	5f282074 	svcpl	0x00282074
    1700:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    1704:	5f3e2d54 	svcpl	0x003e2d54
    1708:	6f647473 	svcvs	0x00647473
    170c:	00297475 	eoreq	r7, r9, r5, ror r4
    1710:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    1714:	53415f4d 	movtpl	r5, #8013	; 0x1f4d
    1718:	59535f4d 	ldmdbpl	r3, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    171c:	5841544e 	stmdapl	r1, {r1, r2, r3, r6, sl, ip, lr}^
    1720:	494e555f 	stmdbmi	lr, {r0, r1, r2, r3, r4, r6, r8, sl, ip, lr}^
    1724:	44454946 	strbmi	r4, [r5], #-2374	; 0xfffff6ba
    1728:	45005f5f 	strmi	r5, [r0, #-3935]	; 0xfffff0a1
    172c:	4d524449 	cfldrdmi	mvd4, [r2, #-292]	; 0xfffffedc
    1730:	00363320 	eorseq	r3, r6, r0, lsr #6
    1734:	5f43535f 	svcpl	0x0043535f
    1738:	434f4c43 	movtmi	r4, #64579	; 0xfc43
    173c:	45535f4b 	ldrbmi	r5, [r3, #-3915]	; 0xfffff0b5
    1740:	5443454c 	strbpl	r4, [r3], #-1356	; 0xfffffab4
    1744:	204e4f49 	subcs	r4, lr, r9, asr #30
    1748:	5f003136 	svcpl	0x00003136
    174c:	49535f54 	ldmdbmi	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    1750:	205f455a 	subscs	r4, pc, sl, asr r5	; <UNPREDICTABLE>
    1754:	49545f00 	ldmdbmi	r4, {r8, r9, sl, fp, ip, lr}^
    1758:	545f454d 	ldrbpl	r4, [pc], #-1357	; 1760 <__sflush_r+0x48>
    175c:	4345445f 	movtmi	r4, #21599	; 0x545f
    1760:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    1764:	5f002044 	svcpl	0x00002044
    1768:	545f4353 	ldrbpl	r4, [pc], #-851	; 1770 <__sflush_r+0x58>
    176c:	41455248 	cmpmi	r5, r8, asr #4
    1770:	54415f44 	strbpl	r5, [r1], #-3908	; 0xfffff0bc
    1774:	535f5254 	cmppl	pc, #84, 4	; 0x40000005
    1778:	4b434154 	blmi	10d1cd0 <_end+0xd1cd0>
    177c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    1780:	00343420 	eorseq	r3, r4, r0, lsr #8
    1784:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1788:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    178c:	5341485f 	movtpl	r4, #6239	; 0x185f
    1790:	464e495f 			; <UNDEFINED> instruction: 0x464e495f
    1794:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    1798:	205f5f59 	subscs	r5, pc, r9, asr pc	; <UNPREDICTABLE>
    179c:	415f0031 	cmpmi	pc, r1, lsr r0	; <UNPREDICTABLE>
    17a0:	49584554 	ldmdbmi	r8, {r2, r4, r6, r8, sl, lr}^
    17a4:	49535f54 	ldmdbmi	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    17a8:	3320455a 			; <UNDEFINED> instruction: 0x3320455a
    17ac:	535f0032 	cmppl	pc, #50	; 0x32
    17b0:	5f325f43 	svcpl	0x00325f43
    17b4:	5f534250 	svcpl	0x00534250
    17b8:	41434f4c 	cmpmi	r3, ip, asr #30
    17bc:	31204554 			; <UNDEFINED> instruction: 0x31204554
    17c0:	55003631 	strpl	r3, [r0, #-1585]	; 0xfffff9cf
    17c4:	5f545241 	svcpl	0x00545241
    17c8:	535f524d 	cmppl	pc, #-805306364	; 0xd0000004
    17cc:	4d504f54 	ldclmi	15, cr4, [r0, #-336]	; 0xfffffeb0
    17d0:	5f45444f 	svcpl	0x0045444f
    17d4:	5f355f31 	svcpl	0x00355f31
    17d8:	20544942 	subscs	r4, r4, r2, asr #18
    17dc:	30307830 	eorscc	r7, r0, r0, lsr r8
    17e0:	30303030 	eorscc	r3, r0, r0, lsr r0
    17e4:	5f003034 	svcpl	0x00003034
    17e8:	61746164 	cmnvs	r4, r4, ror #2
    17ec:	52415500 	subpl	r5, r1, #0, 10
    17f0:	41425f54 	cmpmi	r2, r4, asr pc
    17f4:	45474455 	strbmi	r4, [r7, #-1109]	; 0xfffffbab
    17f8:	31315f4e 	teqcc	r1, lr, asr #30
    17fc:	30303235 	eorscc	r3, r0, r5, lsr r2
    1800:	00323620 	eorseq	r3, r2, r0, lsr #12
    1804:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    1808:	5f52435f 	svcpl	0x0052435f
    180c:	52415453 	subpl	r5, r1, #1392508928	; 0x53000000
    1810:	4b524254 	blmi	1492168 <_end+0x492168>
    1814:	30783020 	rsbscc	r3, r8, r0, lsr #32
    1818:	30303030 	eorscc	r3, r0, r0, lsr r0
    181c:	00303830 	eorseq	r3, r0, r0, lsr r8
    1820:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1824:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    1828:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    182c:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 175c <__sflush_r+0x44>
    1830:	5f5f5841 	svcpl	0x005f5841
    1834:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    1838:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    183c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1840:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1844:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    1848:	5f004c4c 	svcpl	0x00004c4c
    184c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1850:	28435f38 	stmdacs	r3, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1854:	63202963 			; <UNDEFINED> instruction: 0x63202963
    1858:	415f5f00 	cmpmi	pc, r0, lsl #30
    185c:	455f4d52 	ldrbmi	r4, [pc, #-3410]	; b12 <_fwalk+0x6>
    1860:	5f494241 	svcpl	0x00494241
    1864:	0031205f 	eorseq	r2, r1, pc, asr r0
    1868:	72705f5f 	rsbsvc	r5, r0, #380	; 0x17c
    186c:	66746e69 	ldrbtvs	r6, [r4], -r9, ror #28
    1870:	6b696c30 	blvs	1a5c938 <_end+0xa5c938>
    1874:	6d662865 	stclvs	8, cr2, [r6, #-404]!	; 0xfffffe6c
    1878:	67726174 			; <UNDEFINED> instruction: 0x67726174
    187c:	7269662c 	rsbvc	r6, r9, #44, 12	; 0x2c00000
    1880:	61767473 	cmnvs	r6, r3, ror r4
    1884:	67726172 			; <UNDEFINED> instruction: 0x67726172
    1888:	4c002029 	stcmi	0, cr2, [r0], {41}	; 0x29
    188c:	706d745f 	rsbvc	r7, sp, pc, asr r4
    1890:	206d616e 	rsbcs	r6, sp, lr, ror #2
    1894:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    1898:	454d414e 	strbmi	r4, [sp, #-334]	; 0xfffffeb2
    189c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    18a0:	43535f00 	cmpmi	r3, #0, 30
    18a4:	5342585f 	movtpl	r5, #10335	; 0x285f
    18a8:	4c495f35 	mcrrmi	15, 3, r5, r9, cr5
    18ac:	5f323350 	svcpl	0x00323350
    18b0:	3346464f 	movtcc	r4, #26191	; 0x664f
    18b4:	535f2032 	cmppl	pc, #50	; 0x32
    18b8:	37565f43 	ldrbcc	r5, [r6, -r3, asr #30]
    18bc:	504c495f 	subpl	r4, ip, pc, asr r9
    18c0:	4f5f3233 	svcmi	0x005f3233
    18c4:	32334646 	eorscc	r4, r3, #73400320	; 0x4600000
    18c8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    18cc:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    18d0:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    18d4:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    18d8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    18dc:	3239312e 	eorscc	r3, r9, #-2147483637	; 0x8000000b
    18e0:	38323930 	ldmdacc	r2!, {r4, r5, r8, fp, ip, sp}
    18e4:	30353539 	eorscc	r3, r5, r9, lsr r5
    18e8:	32313837 	eorscc	r3, r1, #3604480	; 0x370000
    18ec:	372d6535 			; <UNDEFINED> instruction: 0x372d6535
    18f0:	00323346 	eorseq	r3, r2, r6, asr #6
    18f4:	564e4945 	strbpl	r4, [lr], -r5, asr #18
    18f8:	32204c41 	eorcc	r4, r0, #16640	; 0x4100
    18fc:	4e490032 	mcrmi	0, 2, r0, cr9, cr2, {1}
    1900:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    1904:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    1908:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    190c:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1910:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    1914:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    1918:	414d5f38 	cmpmi	sp, r8, lsr pc
    191c:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1920:	5954545f 	ldmdbpl	r4, {r0, r1, r2, r3, r4, r6, sl, ip, lr}^
    1924:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    1928:	5f485f46 	svcpl	0x00485f46
    192c:	41550020 	cmpmi	r5, r0, lsr #32
    1930:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    1934:	465f5258 			; <UNDEFINED> instruction: 0x465f5258
    1938:	494d4152 	stmdbmi	sp, {r1, r4, r6, r8, lr}^
    193c:	3020474e 	eorcc	r4, r0, lr, asr #14
    1940:	30303078 	eorscc	r3, r0, r8, ror r0
    1944:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    1948:	5f5f0030 	svcpl	0x005f0030
    194c:	5f544c46 	svcpl	0x00544c46
    1950:	5f58414d 	svcpl	0x0058414d
    1954:	5f505845 	svcpl	0x00505845
    1958:	3231205f 	eorscc	r2, r1, #95	; 0x5f
    195c:	41550038 	cmpmi	r5, r8, lsr r0
    1960:	435f5452 	cmpmi	pc, #1375731712	; 0x52000000
    1964:	58545f52 	ldmdapl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    1968:	20545352 	subscs	r5, r4, r2, asr r3
    196c:	30307830 	eorscc	r7, r0, r0, lsr r8
    1970:	30303030 	eorscc	r3, r0, r0, lsr r0
    1974:	5f003230 	svcpl	0x00003230
    1978:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    197c:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 18ac <__sfvwrite_r+0x10>
    1980:	5f5f5841 	svcpl	0x005f5841
    1984:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    1988:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    198c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1990:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1994:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
    1998:	5f5f004c 	svcpl	0x005f004c
    199c:	6b636f6c 	blvs	18dd754 <_end+0x8dd754>
    19a0:	7972745f 	ldmdbvc	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    19a4:	7163615f 	cmnvc	r3, pc, asr r1
    19a8:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    19ac:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    19b0:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    19b4:	6c286576 	cfstr32vs	mvfx6, [r8], #-472	; 0xfffffe28
    19b8:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    19bc:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    19c0:	2964696f 	stmdbcs	r4!, {r0, r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    19c4:	00293020 	eoreq	r3, r9, r0, lsr #32
    19c8:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    19cc:	5055535f 	subspl	r5, r5, pc, asr r3
    19d0:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    19d4:	5f5f5f53 	svcpl	0x005f5f53
    19d8:	494c4e49 	stmdbmi	ip, {r0, r3, r6, r9, sl, fp, lr}^
    19dc:	3120454e 			; <UNDEFINED> instruction: 0x3120454e
    19e0:	415f5f00 	cmpmi	pc, r0, lsl #30
    19e4:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    19e8:	45535f43 	ldrbmi	r5, [r3, #-3907]	; 0xfffff0bd
    19ec:	53435f51 	movtpl	r5, #16209	; 0x3f51
    19f0:	00352054 	eorseq	r2, r5, r4, asr r0
    19f4:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    19f8:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    19fc:	4b434548 	blmi	10d2f24 <_end+0xd2f24>
    1a00:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    1a04:	6168772c 	cmnvs	r8, ip, lsr #14
    1a08:	79742c74 	ldmdbvc	r4!, {r2, r4, r5, r6, sl, fp, sp}^
    1a0c:	732c6570 			; <UNDEFINED> instruction: 0x732c6570
    1a10:	2c657a69 			; <UNDEFINED> instruction: 0x2c657a69
    1a14:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
    1a18:	6f642029 	svcvs	0x00642029
    1a1c:	73207b20 			; <UNDEFINED> instruction: 0x73207b20
    1a20:	63757274 	cmnvs	r5, #116, 4	; 0x40000007
    1a24:	725f2074 	subsvc	r2, pc, #116	; 0x74
    1a28:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    1a2c:	725f2a20 	subsvc	r2, pc, #32, 20	; 0x20000
    1a30:	28203d20 	stmdacs	r0!, {r5, r8, sl, fp, ip, sp}
    1a34:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    1a38:	6669203b 			; <UNDEFINED> instruction: 0x6669203b
    1a3c:	725f2820 	subsvc	r2, pc, #32, 16	; 0x200000
    1a40:	68773e2d 	ldmdavs	r7!, {r0, r2, r3, r5, r9, sl, fp, ip, sp}^
    1a44:	3d207461 	cfstrscc	mvf7, [r0, #-388]!	; 0xfffffe7c
    1a48:	554e203d 	strbpl	r2, [lr, #-61]	; 0xffffffc3
    1a4c:	20294c4c 	eorcs	r4, r9, ip, asr #24
    1a50:	725f207b 	subsvc	r2, pc, #123	; 0x7b
    1a54:	68773e2d 	ldmdavs	r7!, {r0, r2, r3, r5, r9, sl, fp, ip, sp}^
    1a58:	3d207461 	cfstrscc	mvf7, [r0, #-388]!	; 0xfffffe7c
    1a5c:	79742820 	ldmdbvc	r4!, {r5, fp, sp}^
    1a60:	6d296570 	cfstr32vs	mvfx6, [r9, #-448]!	; 0xfffffe40
    1a64:	6f6c6c61 	svcvs	0x006c6c61
    1a68:	69732863 	ldmdbvs	r3!, {r0, r1, r5, r6, fp, sp}^
    1a6c:	3b29657a 	blcc	a5b05c <heap_size+0xa3b05c>
    1a70:	725f5f20 	subsvc	r5, pc, #32, 30	; 0x80
    1a74:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    1a78:	7373615f 	cmnvc	r3, #-1073741801	; 0xc0000017
    1a7c:	28747265 	ldmdacs	r4!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    1a80:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    1a84:	74616877 	strbtvc	r6, [r1], #-2167	; 0xfffff789
    1a88:	69203b29 	stmdbvs	r0!, {r0, r3, r5, r8, r9, fp, ip, sp}
    1a8c:	3b74696e 	blcc	1d1c04c <_end+0xd1c04c>
    1a90:	7d207d20 	stcvc	13, cr7, [r0, #-128]!	; 0xffffff80
    1a94:	69687720 	stmdbvs	r8!, {r5, r8, r9, sl, ip, sp, lr}^
    1a98:	2820656c 	stmdacs	r0!, {r2, r3, r5, r6, r8, sl, sp, lr}
    1a9c:	5f002930 	svcpl	0x00002930
    1aa0:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    1aa4:	4145465f 	cmpmi	r5, pc, asr r6
    1aa8:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    1aac:	52444c5f 	subpl	r4, r4, #24320	; 0x5f00
    1ab0:	31205845 			; <UNDEFINED> instruction: 0x31205845
    1ab4:	5f5f0035 	svcpl	0x005f0035
    1ab8:	6b636f6c 	blvs	18dd870 <_end+0x8dd870>
    1abc:	6f6c635f 	svcvs	0x006c635f
    1ac0:	725f6573 	subsvc	r6, pc, #482344960	; 0x1cc00000
    1ac4:	72756365 	rsbsvc	r6, r5, #-1811939327	; 0x94000001
    1ac8:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    1acc:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    1ad0:	2820296b 	stmdacs	r0!, {r0, r1, r3, r5, r6, r8, fp, sp}
    1ad4:	696f7628 	stmdbvs	pc!, {r3, r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    1ad8:	30202964 	eorcc	r2, r0, r4, ror #18
    1adc:	5f5f0029 	svcpl	0x005f0029
    1ae0:	5f415355 	svcpl	0x00415355
    1ae4:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    1ae8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1aec:	41550036 	cmpmi	r5, r6, lsr r0
    1af0:	525f5452 	subspl	r5, pc, #1375731712	; 0x52000000
    1af4:	5f4d5758 	svcpl	0x004d5758
    1af8:	4b53414d 	blmi	14d2034 <_end+0x4d2034>
    1afc:	30783020 	rsbscc	r3, r8, r0, lsr #32
    1b00:	30303030 	eorscc	r3, r0, r0, lsr r0
    1b04:	00463330 	subeq	r3, r6, r0, lsr r3
    1b08:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1b0c:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    1b10:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1b14:	5058455f 	subspl	r4, r8, pc, asr r5
    1b18:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1b1c:	00343230 	eorseq	r3, r4, r0, lsr r2
    1b20:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    1b24:	5055535f 	subspl	r5, r5, pc, asr r3
    1b28:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    1b2c:	41575f53 	cmpmi	r7, r3, asr pc
    1b30:	4e494e52 	mcrmi	14, 2, r4, cr9, cr2, {2}
    1b34:	00312047 	eorseq	r2, r1, r7, asr #32
    1b38:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1b3c:	5f323354 	svcpl	0x00323354
    1b40:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
    1b44:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    1b48:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    1b4c:	5f5f0034 	svcpl	0x005f0034
    1b50:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    1b54:	5341465f 	movtpl	r4, #5727	; 0x165f
    1b58:	545f3854 	ldrbpl	r3, [pc], #-2132	; 1b60 <_lseek_r+0x20>
    1b5c:	5f455059 	svcpl	0x00455059
    1b60:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    1b64:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    1b68:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    1b6c:	5f00746e 	svcpl	0x0000746e
    1b70:	4154555f 	cmpmi	r4, pc, asr r5
    1b74:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1b78:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1b7c:	45003436 	strmi	r3, [r0, #-1078]	; 0xfffffbca
    1b80:	4454454e 	ldrbmi	r4, [r4], #-1358	; 0xfffffab2
    1b84:	204e574f 	subcs	r5, lr, pc, asr #14
    1b88:	00353131 	eorseq	r3, r5, r1, lsr r1
    1b8c:	5f44495f 	svcpl	0x0044495f
    1b90:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    1b94:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    1b98:	00204445 	eoreq	r4, r0, r5, asr #8
    1b9c:	5f43535f 	svcpl	0x0043535f
    1ba0:	4c5f3656 	mrrcmi	6, 5, r3, pc, cr6	; <UNPREDICTABLE>
    1ba4:	47494250 	smlsldmi	r4, r9, r0, r2
    1ba8:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    1bac:	20474942 	subcs	r4, r7, r2, asr #18
    1bb0:	5f43535f 	svcpl	0x0043535f
    1bb4:	4c5f3756 	mrrcmi	7, 5, r3, pc, cr6	; <UNPREDICTABLE>
    1bb8:	47494250 	smlsldmi	r4, r9, r0, r2
    1bbc:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    1bc0:	00474942 	subeq	r4, r7, r2, asr #18
    1bc4:	59544645 	ldmdbpl	r4, {r0, r2, r6, r9, sl, lr}^
    1bc8:	37204550 			; <UNDEFINED> instruction: 0x37204550
    1bcc:	5f5f0039 	svcpl	0x005f0039
    1bd0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    1bd4:	5f58414d 	svcpl	0x0058414d
    1bd8:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    1bdc:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    1be0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    1be4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    1be8:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    1bec:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    1bf0:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    1bf4:	5f5f0074 	svcpl	0x005f0074
    1bf8:	5f006673 	svcpl	0x00006673
    1bfc:	5058455f 	subspl	r4, r8, pc, asr r5
    1c00:	20297828 	eorcs	r7, r9, r8, lsr #16
    1c04:	23205f5f 			; <UNDEFINED> instruction: 0x23205f5f
    1c08:	23207823 			; <UNDEFINED> instruction: 0x23207823
    1c0c:	005f5f23 	subseq	r5, pc, r3, lsr #30
    1c10:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    1c14:	414d4943 	cmpmi	sp, r3, asr #18
    1c18:	49445f4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    1c1c:	205f5f47 	subscs	r5, pc, r7, asr #30
    1c20:	49003731 	stmdbmi	r0, {r0, r4, r5, r8, r9, sl, ip, sp}
    1c24:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    1c28:	31545341 	cmpcc	r4, r1, asr #6
    1c2c:	494d5f36 	stmdbmi	sp, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    1c30:	4e49004e 	cdpmi	0, 4, cr0, cr9, cr14, {2}
    1c34:	41465f54 	cmpmi	r6, r4, asr pc
    1c38:	5f385453 	svcpl	0x00385453
    1c3c:	2058414d 	subscs	r4, r8, sp, asr #2
    1c40:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    1c44:	41465f54 	cmpmi	r6, r4, asr pc
    1c48:	5f385453 	svcpl	0x00385453
    1c4c:	5f58414d 	svcpl	0x0058414d
    1c50:	535f005f 	cmppl	pc, #95	; 0x5f
    1c54:	414d5f43 	cmpmi	sp, r3, asr #30
    1c58:	44455050 	strbmi	r5, [r5], #-80	; 0xffffffb0
    1c5c:	4c49465f 	mcrrmi	6, 5, r4, r9, cr15
    1c60:	32205345 	eorcc	r5, r0, #335544321	; 0x14000001
    1c64:	5f5f0033 	svcpl	0x005f0033
    1c68:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    1c6c:	756f645f 	strbvc	r6, [pc, #-1119]!	; 1815 <__sflush_r+0xfd>
    1c70:	5f656c62 	svcpl	0x00656c62
    1c74:	6f6c2074 	svcvs	0x006c2074
    1c78:	6420676e 	strtvs	r6, [r0], #-1902	; 0xfffff892
    1c7c:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
    1c80:	53450065 	movtpl	r0, #20581	; 0x5065
    1c84:	20484352 	subcs	r4, r8, r2, asr r3
    1c88:	43450033 	movtmi	r0, #20531	; 0x5033
    1c8c:	524e4e4f 	subpl	r4, lr, #1264	; 0x4f0
    1c90:	54455345 	strbpl	r5, [r5], #-837	; 0xfffffcbb
    1c94:	34303120 	ldrtcc	r3, [r0], #-288	; 0xfffffee0
    1c98:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1ca0 <_realloc_r+0xc>
    1c9c:	41555145 	cmpmi	r5, r5, asr #2
    1ca0:	5946494c 	stmdbpl	r6, {r2, r3, r6, r8, fp, lr}^
    1ca4:	70797428 	rsbsvc	r7, r9, r8, lsr #8
    1ca8:	61762c65 	cmnvs	r6, r5, ror #24
    1cac:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    1cb0:	70797428 	rsbsvc	r7, r9, r8, lsr #8
    1cb4:	5f282965 	svcpl	0x00282965
    1cb8:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
    1cbc:	72747074 	rsbsvc	r7, r4, #116	; 0x74
    1cc0:	2829745f 	stmdacs	r9!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    1cc4:	736e6f63 	cmnvc	lr, #396	; 0x18c
    1cc8:	6f762074 	svcvs	0x00762074
    1ccc:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    1cd0:	7620656c 	strtvc	r6, [r0], -ip, ror #10
    1cd4:	2064696f 	rsbcs	r6, r4, pc, ror #18
    1cd8:	7628292a 	strtvc	r2, [r8], -sl, lsr #18
    1cdc:	29297261 	stmdbcs	r9!, {r0, r5, r6, r9, ip, sp, lr}
    1ce0:	685f5f00 	ldmdavs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1ce4:	665f7361 	ldrbvs	r7, [pc], -r1, ror #6
    1ce8:	75746165 	ldrbvc	r6, [r4, #-357]!	; 0xfffffe9b
    1cec:	78286572 	stmdavc	r8!, {r1, r4, r5, r6, r8, sl, sp, lr}
    1cf0:	00302029 	eorseq	r2, r0, r9, lsr #32
    1cf4:	48555f5f 	ldmdami	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1cf8:	42465f51 	submi	r5, r6, #324	; 0x144
    1cfc:	5f5f5449 	svcpl	0x005f5449
    1d00:	00363120 	eorseq	r3, r6, r0, lsr #2
    1d04:	74626d5f 	strbtvc	r6, [r2], #-3423	; 0xfffff2a1
    1d08:	5f63776f 	svcpl	0x0063776f
    1d0c:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    1d10:	525f0065 	subspl	r0, pc, #101	; 0x65
    1d14:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    1d18:	454d455f 	strbmi	r4, [sp, #-1375]	; 0xfffffaa1
    1d1c:	4e454752 	mcrmi	7, 2, r4, cr5, cr2, {2}
    1d20:	535f5943 	cmppl	pc, #1097728	; 0x10c000
    1d24:	20455a49 	subcs	r5, r5, r9, asr #20
    1d28:	5f003532 	svcpl	0x00003532
    1d2c:	4154555f 	cmpmi	r4, pc, asr r5
    1d30:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1d34:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1d38:	5f003436 	svcpl	0x00003436
    1d3c:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    1d40:	414d5f44 	cmpmi	sp, r4, asr #30
    1d44:	78302058 	ldmdavc	r0!, {r3, r4, r6, sp}
    1d48:	66666637 			; <UNDEFINED> instruction: 0x66666637
    1d4c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1d50:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    1d54:	5f343654 	svcpl	0x00343654
    1d58:	5f5f0043 	svcpl	0x005f0043
    1d5c:	5f434347 	svcpl	0x00434347
    1d60:	5f434549 	svcpl	0x00434549
    1d64:	5f393535 	svcpl	0x00393535
    1d68:	504d4f43 	subpl	r4, sp, r3, asr #30
    1d6c:	2058454c 	subscs	r4, r8, ip, asr #10
    1d70:	706f0032 	rsbvc	r0, pc, r2, lsr r0	; <UNPREDICTABLE>
    1d74:	73657274 	cmnvc	r5, #116, 4	; 0x40000007
    1d78:	5f007465 	svcpl	0x00007465
    1d7c:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    1d80:	53415f54 	movtpl	r5, #8020	; 0x1f54
    1d84:	4d495443 	cfstrdmi	mvd5, [r9, #-268]	; 0xfffffef4
    1d88:	55425f45 	strbpl	r5, [r2, #-3909]	; 0xfffff0bb
    1d8c:	74702846 	ldrbtvc	r2, [r0], #-2118	; 0xfffff7ba
    1d90:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    1d94:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    1d98:	5f3e2d29 	svcpl	0x003e2d29
    1d9c:	74637361 	strbtvc	r7, [r3], #-865	; 0xfffffc9f
    1da0:	5f656d69 	svcpl	0x00656d69
    1da4:	29667562 	stmdbcs	r6!, {r1, r5, r6, r8, sl, ip, sp, lr}^
    1da8:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1dac:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    1db0:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    1db4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1db8:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1dbc:	66663778 			; <UNDEFINED> instruction: 0x66663778
    1dc0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1dc4:	5f5f0066 	svcpl	0x005f0066
    1dc8:	33544c46 	cmpcc	r4, #17920	; 0x4600
    1dcc:	485f5832 	ldmdami	pc, {r1, r4, r5, fp, ip, lr}^	; <UNPREDICTABLE>
    1dd0:	445f5341 	ldrbmi	r5, [pc], #-833	; 1dd8 <__svfiscanf_r+0xf8>
    1dd4:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    1dd8:	205f5f4d 	subscs	r5, pc, sp, asr #30
    1ddc:	465f0031 			; <UNDEFINED> instruction: 0x465f0031
    1de0:	4b4c4253 	blmi	1312734 <_end+0x312734>
    1de4:	5f544e43 	svcpl	0x00544e43
    1de8:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    1dec:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    1df0:	00204445 	eoreq	r4, r0, r5, asr #8
    1df4:	464c5f5f 			; <UNDEFINED> instruction: 0x464c5f5f
    1df8:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1dfc:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1e00:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1e04:	41550030 	cmpmi	r5, r0, lsr r0
    1e08:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 1cc8 <_realloc_r+0x34>
    1e0c:	4d45444f 	cfstrdmi	mvd4, [r5, #-316]	; 0xfffffec4
    1e10:	445f5243 	ldrbmi	r5, [pc], #-579	; 1e18 <__svfiscanf_r+0x138>
    1e14:	30205254 	eorcc	r5, r0, r4, asr r2
    1e18:	30303078 	eorscc	r3, r0, r8, ror r0
    1e1c:	30303030 	eorscc	r3, r0, r0, lsr r0
    1e20:	5f5f0031 	svcpl	0x005f0031
    1e24:	52455355 	subpl	r5, r5, #1409286145	; 0x54000001
    1e28:	42414c5f 	submi	r4, r1, #24320	; 0x5f00
    1e2c:	505f4c45 	subspl	r4, pc, r5, asr #24
    1e30:	49464552 	stmdbmi	r6, {r1, r4, r6, r8, sl, lr}^
    1e34:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1e38:	63727300 	cmnvs	r2, #0, 6
    1e3c:	5954542f 	ldmdbpl	r4, {r0, r1, r2, r3, r5, sl, ip, lr}^
    1e40:	6e6f635f 	mcrvs	3, 3, r6, cr15, cr15, {2}
    1e44:	00632e66 	rsbeq	r2, r3, r6, ror #28
    1e48:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    1e4c:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    1e50:	5f657475 	svcpl	0x00657475
    1e54:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    1e58:	5f5f636f 	svcpl	0x005f636f
    1e5c:	535f0020 	cmppl	pc, #32
    1e60:	5f455a49 	svcpl	0x00455a49
    1e64:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    1e68:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    1e6c:	00204445 	eoreq	r4, r0, r5, asr #8
    1e70:	5355535f 	cmppl	r5, #2080374785	; 0x7c000001
    1e74:	4e4f4345 	cdpmi	3, 4, cr4, cr15, cr5, {2}
    1e78:	545f5344 	ldrbpl	r5, [pc], #-836	; 1e80 <__svfiscanf_r+0x1a0>
    1e7c:	4345445f 	movtmi	r4, #21599	; 0x545f
    1e80:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    1e84:	5f002044 	svcpl	0x00002044
    1e88:	006d745f 	rsbeq	r7, sp, pc, asr r4
    1e8c:	51515f5f 	cmppl	r1, pc, asr pc
    1e90:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1e94:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1e98:	4e470030 	mcrmi	0, 2, r0, cr7, cr0, {1}
    1e9c:	39432055 	stmdbcc	r3, {r0, r2, r4, r6, sp}^
    1ea0:	2e372039 	mrccs	0, 1, r2, cr7, cr9, {1}
    1ea4:	20312e33 	eorscs	r2, r1, r3, lsr lr
    1ea8:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
    1eac:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
    1eb0:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
    1eb4:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    1eb8:	5b202965 	blpl	80c454 <heap_size+0x7ec454>
    1ebc:	2f4d5241 	svccs	0x004d5241
    1ec0:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
    1ec4:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
    1ec8:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
    1ecc:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
    1ed0:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
    1ed4:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
    1ed8:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
    1edc:	30393136 	eorscc	r3, r9, r6, lsr r1
    1ee0:	2d205d37 	stccs	13, cr5, [r0, #-220]!	; 0xffffff24
    1ee4:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
    1ee8:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
    1eec:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
    1ef0:	2d203961 			; <UNDEFINED> instruction: 0x2d203961
    1ef4:	7570666d 	ldrbvc	r6, [r0, #-1645]!	; 0xfffff993
    1ef8:	7066763d 	rsbvc	r7, r6, sp, lsr r6
    1efc:	2d203376 	stccs	3, cr3, [r0, #-472]!	; 0xfffffe28
    1f00:	6f6c666d 	svcvs	0x006c666d
    1f04:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
    1f08:	683d6962 	ldmdavs	sp!, {r1, r5, r6, r8, fp, sp, lr}
    1f0c:	20647261 	rsbcs	r7, r4, r1, ror #4
    1f10:	6467672d 	strbtvs	r6, [r7], #-1837	; 0xfffff8d3
    1f14:	2d203362 	stccs	3, cr3, [r0, #-392]!	; 0xfffffe78
    1f18:	2d20304f 	stccs	0, cr3, [r0, #-316]!	; 0xfffffec4
    1f1c:	3d647473 	cfstrdcc	mvd7, [r4, #-460]!	; 0xfffffe34
    1f20:	20393963 	eorscs	r3, r9, r3, ror #18
    1f24:	6d6f662d 	stclvs	6, cr6, [pc, #-180]!	; 1e78 <__svfiscanf_r+0x198>
    1f28:	662d7469 	strtvs	r7, [sp], -r9, ror #8
    1f2c:	656d6172 	strbvs	r6, [sp, #-370]!	; 0xfffffe8e
    1f30:	696f702d 	stmdbvs	pc!, {r0, r2, r3, r5, ip, sp, lr}^	; <UNPREDICTABLE>
    1f34:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
    1f38:	66662d20 	strbtvs	r2, [r6], -r0, lsr #26
    1f3c:	73656572 	cmnvc	r5, #478150656	; 0x1c800000
    1f40:	646e6174 	strbtvs	r6, [lr], #-372	; 0xfffffe8c
    1f44:	00676e69 	rsbeq	r6, r7, r9, ror #28
    1f48:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    1f4c:	41454c5f 	cmpmi	r5, pc, asr ip
    1f50:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    1f54:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1f58:	43535f00 	cmpmi	r3, #0, 30
    1f5c:	5342585f 	movtpl	r5, #10335	; 0x285f
    1f60:	4c495f35 	mcrrmi	15, 3, r5, r9, cr5
    1f64:	5f323350 	svcpl	0x00323350
    1f68:	4246464f 	submi	r4, r6, #82837504	; 0x4f00000
    1f6c:	5f204749 	svcpl	0x00204749
    1f70:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
    1f74:	4c495f37 	mcrrmi	15, 3, r5, r9, cr7
    1f78:	5f323350 	svcpl	0x00323350
    1f7c:	4246464f 	submi	r4, r6, #82837504	; 0x4f00000
    1f80:	5f004749 	svcpl	0x00004749
    1f84:	4345445f 	movtmi	r4, #21599	; 0x545f
    1f88:	54534e4f 	ldrbpl	r4, [r3], #-3663	; 0xfffff1b1
    1f8c:	70797428 	rsbsvc	r7, r9, r8, lsr #8
    1f90:	61762c65 	cmnvs	r6, r5, ror #24
    1f94:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    1f98:	70797428 	rsbsvc	r7, r9, r8, lsr #8
    1f9c:	5f282965 	svcpl	0x00282965
    1fa0:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
    1fa4:	72747074 	rsbsvc	r7, r4, #116	; 0x74
    1fa8:	2829745f 	stmdacs	r9!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}
    1fac:	736e6f63 	cmnvc	lr, #396	; 0x18c
    1fb0:	6f762074 	svcvs	0x00762074
    1fb4:	2a206469 	bcs	81b160 <heap_size+0x7fb160>
    1fb8:	61762829 	cmnvs	r6, r9, lsr #16
    1fbc:	00292972 	eoreq	r2, r9, r2, ror r9
    1fc0:	41555f5f 	cmpmi	r5, pc, asr pc
    1fc4:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1fc8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1fcc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1fd0:	46464658 			; <UNDEFINED> instruction: 0x46464658
    1fd4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1fd8:	312d5046 			; <UNDEFINED> instruction: 0x312d5046
    1fdc:	004b5536 	subeq	r5, fp, r6, lsr r5
    1fe0:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    1fe4:	505f4355 	subspl	r4, pc, r5, asr r3	; <UNPREDICTABLE>
    1fe8:	48435441 	stmdami	r3, {r0, r6, sl, ip, lr}^
    1fec:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
    1ff0:	205f5f4c 	subscs	r5, pc, ip, asr #30
    1ff4:	5f5f0031 	svcpl	0x005f0031
    1ff8:	5f434347 	svcpl	0x00434347
    1ffc:	45564148 	ldrbmi	r4, [r6, #-328]	; 0xfffffeb8
    2000:	4e59535f 	mrcmi	3, 2, r5, cr9, cr15, {2}
    2004:	4f435f43 	svcmi	0x00435f43
    2008:	5241504d 	subpl	r5, r1, #77	; 0x4d
    200c:	4e415f45 	cdpmi	15, 4, cr5, cr1, cr5, {2}
    2010:	57535f44 	ldrbpl	r5, [r3, -r4, asr #30]
    2014:	385f5041 	ldmdacc	pc, {r0, r6, ip, lr}^	; <UNPREDICTABLE>
    2018:	5f003120 	svcpl	0x00003120
    201c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2020:	5341465f 	movtpl	r4, #5727	; 0x165f
    2024:	575f3854 			; <UNDEFINED> instruction: 0x575f3854
    2028:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    202c:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    2030:	41550032 	cmpmi	r5, r2, lsr r0
    2034:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 1ef4 <__svfiscanf_r+0x214>
    2038:	41505f52 	cmpmi	r0, r2, asr pc
    203c:	59544952 	ldmdbpl	r4, {r1, r4, r6, r8, fp, lr}^
    2040:	53414d5f 	movtpl	r4, #7519	; 0x1d5f
    2044:	7830204b 	ldmdavc	r0!, {r0, r1, r3, r6, sp}
    2048:	30303030 	eorscc	r3, r0, r0, lsr r0
    204c:	38333030 	ldmdacc	r3!, {r4, r5, ip, sp}
    2050:	43535f00 	cmpmi	r3, #0, 30
    2054:	435f325f 	cmpmi	pc, #-268435451	; 0xf0000005
    2058:	5645445f 			; <UNDEFINED> instruction: 0x5645445f
    205c:	39303120 	ldmdbcc	r0!, {r5, r8, ip, sp}
    2060:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 2068 <_scanf_chars+0x2c>
    2064:	64795f6d 	ldrbtvs	r5, [r9], #-3949	; 0xfffff093
    2068:	5f007961 	svcpl	0x00007961
    206c:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    2070:	414d5f4c 	cmpmi	sp, ip, asr #30
    2074:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2078:	39372e31 	ldmdbcc	r7!, {r0, r4, r5, r9, sl, fp, sp}
    207c:	33393637 	teqcc	r9, #57671680	; 0x3700000
    2080:	38343331 	ldmdacc	r4!, {r0, r4, r5, r8, r9, ip, sp}
    2084:	31333236 	teqcc	r3, r6, lsr r2
    2088:	2b653735 	blcs	194fd64 <_end+0x94fd64>
    208c:	4c383033 	ldcmi	0, cr3, [r8], #-204	; 0xffffff34
    2090:	43505f00 	cmpmi	r0, #0, 30
    2094:	4345525f 	movtmi	r5, #21087	; 0x525f
    2098:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    209c:	4546585f 	strbmi	r5, [r6, #-2143]	; 0xfffff7a1
    20a0:	49535f52 	ldmdbmi	r3, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    20a4:	3120455a 			; <UNDEFINED> instruction: 0x3120455a
    20a8:	5f5f0037 	svcpl	0x005f0037
    20ac:	5f4d5241 	svcpl	0x004d5241
    20b0:	36315046 	ldrtcc	r5, [r1], -r6, asr #32
    20b4:	4752415f 			; <UNDEFINED> instruction: 0x4752415f
    20b8:	525f0053 	subspl	r0, pc, #83	; 0x53
    20bc:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    20c0:	34364c5f 	ldrtcc	r4, [r6], #-3167	; 0xfffff3a1
    20c4:	55425f41 	strbpl	r5, [r2, #-3905]	; 0xfffff0bf
    20c8:	74702846 	ldrbtvc	r2, [r0], #-2118	; 0xfffff7ba
    20cc:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    20d0:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    20d4:	5f3e2d29 	svcpl	0x003e2d29
    20d8:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    20dc:	6c5f3e2d 	mrrcvs	14, 2, r3, pc, cr13	; <UNPREDICTABLE>
    20e0:	5f613436 	svcpl	0x00613436
    20e4:	29667562 	stmdbcs	r6!, {r1, r5, r6, r8, sl, ip, sp, lr}^
    20e8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    20ec:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    20f0:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    20f4:	5058455f 	subspl	r4, r8, pc, asr r5
    20f8:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    20fc:	3532312d 	ldrcc	r3, [r2, #-301]!	; 0xfffffed3
    2100:	525f0029 	subspl	r0, pc, #41	; 0x29
    2104:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    2108:	5f504d5f 	svcpl	0x00504d5f
    210c:	28533550 	ldmdacs	r3, {r4, r6, r8, sl, ip, sp}^
    2110:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    2114:	70282820 	eorvc	r2, r8, r0, lsr #16
    2118:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    211c:	706d5f3e 	rsbvc	r5, sp, lr, lsr pc
    2120:	705f3e2d 	subsvc	r3, pc, sp, lsr #28
    2124:	00297335 	eoreq	r7, r9, r5, lsr r3
    2128:	5f43535f 	svcpl	0x0043535f
    212c:	49535452 	ldmdbmi	r3, {r1, r4, r6, sl, ip, lr}^
    2130:	414d5f47 	cmpmi	sp, r7, asr #30
    2134:	35312058 	ldrcc	r2, [r1, #-88]!	; 0xffffffa8
    2138:	43535f00 	cmpmi	r3, #0, 30
    213c:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    2140:	5f314c45 	svcpl	0x00314c45
    2144:	43414349 	movtmi	r4, #4937	; 0x1349
    2148:	4c5f4548 	cfldr64mi	mvdx4, [pc], {72}	; 0x48
    214c:	53454e49 	movtpl	r4, #24137	; 0x5e49
    2150:	20455a49 	subcs	r5, r5, r9, asr #20
    2154:	00373231 	eorseq	r3, r7, r1, lsr r2
    2158:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    215c:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 205c <_scanf_chars+0x20>
    2160:	455f4e49 	ldrbmi	r4, [pc, #-3657]	; 131f <_iprintf_r+0x3>
    2164:	5f5f5058 	svcpl	0x005f5058
    2168:	312d2820 			; <UNDEFINED> instruction: 0x312d2820
    216c:	29313230 	ldmdbcs	r1!, {r4, r5, r9, ip, sp}
    2170:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 2178 <_scanf_i+0x80>
    2174:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 2074 <_scanf_chars+0x38>
    2178:	315f4e49 	cmpcc	pc, r9, asr #28
    217c:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    2180:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    2184:	30332d28 	eorscc	r2, r3, r8, lsr #26
    2188:	55002937 	strpl	r2, [r0, #-2359]	; 0xfffff6c9
    218c:	5f545241 	svcpl	0x00545241
    2190:	545f5253 	ldrbpl	r5, [pc], #-595	; 2198 <_scanf_i+0xa0>
    2194:	2054554f 	subscs	r5, r4, pc, asr #10
    2198:	30307830 	eorscc	r7, r0, r0, lsr r8
    219c:	31303030 	teqcc	r0, r0, lsr r0
    21a0:	5f003030 	svcpl	0x00003030
    21a4:	5246555f 	subpl	r5, r6, #398458880	; 0x17c00000
    21a8:	5f544341 	svcpl	0x00544341
    21ac:	5f4e494d 	svcpl	0x004e494d
    21b0:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
    21b4:	00525530 	subseq	r5, r2, r0, lsr r5
    21b8:	4343475f 	movtmi	r4, #14175	; 0x375f
    21bc:	5254505f 	subspl	r5, r4, #95	; 0x5f
    21c0:	46464944 	strbmi	r4, [r6], -r4, asr #18
    21c4:	0020545f 	eoreq	r5, r0, pc, asr r4
    21c8:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    21cc:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    21d0:	30315f4e 	eorscc	r5, r1, lr, asr #30
    21d4:	5058455f 	subspl	r4, r8, pc, asr r5
    21d8:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    21dc:	2937332d 	ldmdbcs	r7!, {r0, r2, r3, r5, r8, r9, ip, sp}
    21e0:	43535f00 	cmpmi	r3, #0, 30
    21e4:	5948505f 	stmdbpl	r8, {r0, r1, r2, r3, r4, r6, ip, lr}^
    21e8:	41505f53 	cmpmi	r0, r3, asr pc
    21ec:	20534547 	subscs	r4, r3, r7, asr #10
    21f0:	5f003131 	svcpl	0x00003131
    21f4:	425f4353 	subsmi	r4, pc, #1275068417	; 0x4c000001
    21f8:	43535f43 	cmpmi	r3, #268	; 0x10c
    21fc:	5f454c41 	svcpl	0x00454c41
    2200:	2058414d 	subscs	r4, r8, sp, asr #2
    2204:	45003935 	strmi	r3, [r0, #-2357]	; 0xfffff6cb
    2208:	45544f4e 	ldrbmi	r4, [r4, #-3918]	; 0xfffff0b2
    220c:	5954504d 	ldmdbpl	r4, {r0, r2, r3, r6, ip, lr}^
    2210:	00303920 	eorseq	r3, r0, r0, lsr #18
    2214:	5f43505f 	svcpl	0x0043505f
    2218:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    221c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2220:	53544942 	cmppl	r4, #1081344	; 0x108000
    2224:	00323120 	eorseq	r3, r2, r0, lsr #2
    2228:	5f544e49 	svcpl	0x00544e49
    222c:	5341454c 	movtpl	r4, #5452	; 0x154c
    2230:	5f343654 	svcpl	0x00343654
    2234:	2058414d 	subscs	r4, r8, sp, asr #2
    2238:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    223c:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    2240:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    2244:	414d5f34 	cmpmi	sp, r4, lsr pc
    2248:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    224c:	44555f5f 	ldrbmi	r5, [r5], #-3935	; 0xfffff0a1
    2250:	42495f51 	submi	r5, r9, #324	; 0x144
    2254:	5f5f5449 	svcpl	0x005f5449
    2258:	5f003020 	svcpl	0x00003020
    225c:	535f4353 	cmppl	pc, #1275068417	; 0x4c000001
    2260:	44455641 	strbmi	r5, [r5], #-1601	; 0xfffff9bf
    2264:	5344495f 	movtpl	r4, #18783	; 0x495f
    2268:	5f003620 	svcpl	0x00003620
    226c:	4341535f 	movtmi	r5, #4959	; 0x135f
    2270:	5f4d5543 	svcpl	0x004d5543
    2274:	5f4e494d 	svcpl	0x004e494d
    2278:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    227c:	50315830 	eorspl	r5, r1, r0, lsr r8
    2280:	2d4b4837 	stclcs	8, cr4, [fp, #-220]	; 0xffffff24
    2284:	50315830 	eorspl	r5, r1, r0, lsr r8
    2288:	294b4837 	stmdbcs	fp, {r0, r1, r2, r4, r5, fp, lr}^
    228c:	535f5f00 	cmppl	pc, #0, 30
    2290:	30204452 	eorcc	r4, r0, r2, asr r4
    2294:	30303078 	eorscc	r3, r0, r8, ror r0
    2298:	525f0034 	subspl	r0, pc, #52	; 0x34
    229c:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    22a0:	5243575f 	subpl	r5, r3, #24903680	; 0x17c0000
    22a4:	424d4f54 	submi	r4, sp, #84, 30	; 0x150
    22a8:	4154535f 	cmpmi	r4, pc, asr r3
    22ac:	70284554 	eorvc	r4, r8, r4, asr r5
    22b0:	20297274 	eorcs	r7, r9, r4, ror r2
    22b4:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    22b8:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    22bc:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    22c0:	5f3e2d63 	svcpl	0x003e2d63
    22c4:	74726377 	ldrbtvc	r6, [r2], #-887	; 0xfffffc89
    22c8:	5f626d6f 	svcpl	0x00626d6f
    22cc:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    22d0:	5f002965 	svcpl	0x00002965
    22d4:	5254505f 	subspl	r5, r4, #95	; 0x5f
    22d8:	46464944 	strbmi	r4, [r6], -r4, asr #18
    22dc:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    22e0:	5f5f4854 	svcpl	0x005f4854
    22e4:	00323320 	eorseq	r3, r2, r0, lsr #6
    22e8:	42465f5f 	submi	r5, r6, #380	; 0x17c
    22ec:	44494453 	strbmi	r4, [r9], #-1107	; 0xfffffbad
    22f0:	20297328 	eorcs	r7, r9, r8, lsr #6
    22f4:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
    22f8:	5f207463 	svcpl	0x00207463
    22fc:	6361685f 	cmnvs	r1, #6225920	; 0x5f0000
    2300:	4853006b 	ldmdami	r3, {r0, r1, r3, r5, r6}^
    2304:	5f4c4c45 	svcpl	0x004c4c45
    2308:	4f4c4f43 	svcmi	0x004c4f43
    230c:	53455f52 	movtpl	r5, #24402	; 0x5f52
    2310:	45504143 	ldrbmi	r4, [r0, #-323]	; 0xfffffebd
    2314:	5145535f 	cmppl	r5, pc, asr r3
    2318:	6d2c5828 	stcvs	8, cr5, [ip, #-160]!	; 0xffffff60
    231c:	29737365 	ldmdbcs	r3!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}^
    2320:	785c2220 	ldmdavc	ip, {r5, r9, sp}^
    2324:	225b6231 	subscs	r6, fp, #268435459	; 0x10000003
    2328:	226d2258 	rsbcs	r2, sp, #88, 4	; 0x80000005
    232c:	7373656d 	cmnvc	r3, #457179136	; 0x1b400000
    2330:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1438 <puts+0xc>
    2334:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    2338:	5f4d5543 	svcpl	0x004d5543
    233c:	5f4e494d 	svcpl	0x004e494d
    2340:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
    2344:	4c4c5530 	cfstr64mi	mvdx5, [ip], {48}	; 0x30
    2348:	5f5f004b 	svcpl	0x005f004b
    234c:	5f544e49 	svcpl	0x00544e49
    2350:	41484357 	cmpmi	r8, r7, asr r3
    2354:	5f545f52 	svcpl	0x00545f52
    2358:	5f002048 	svcpl	0x00002048
    235c:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    2360:	49535f54 	ldmdbmi	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2364:	4c414e47 	mcrrmi	14, 4, r4, r1, cr7
    2368:	4655425f 			; <UNDEFINED> instruction: 0x4655425f
    236c:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    2370:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    2374:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    2378:	735f3e2d 	cmpvc	pc, #720	; 0x2d0
    237c:	616e6769 	cmnvs	lr, r9, ror #14
    2380:	75625f6c 	strbvc	r5, [r2, #-3948]!	; 0xfffff094
    2384:	5f002966 	svcpl	0x00002966
    2388:	4341535f 	movtmi	r5, #4959	; 0x135f
    238c:	5f4d5543 	svcpl	0x004d5543
    2390:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    2394:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2398:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 23a0 <_reclaim_reent+0x7c>
    239c:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
    23a0:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    23a4:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    23a8:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    23ac:	44362d45 	ldrtmi	r2, [r6], #-3397	; 0xfffff2bb
    23b0:	535f0046 	cmppl	pc, #70	; 0x46
    23b4:	5f325f43 	svcpl	0x00325f43
    23b8:	5f534250 	svcpl	0x00534250
    23bc:	43415254 	movtmi	r5, #4692	; 0x1254
    23c0:	3131204b 	teqcc	r1, fp, asr #32
    23c4:	41550038 	cmpmi	r5, r8, lsr r0
    23c8:	435f5452 	cmpmi	pc, #1375731712	; 0x52000000
    23cc:	58525f52 	ldmdapl	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    23d0:	20545352 	subscs	r5, r4, r2, asr r3
    23d4:	30307830 	eorscc	r7, r0, r0, lsr r8
    23d8:	30303030 	eorscc	r3, r0, r0, lsr r0
    23dc:	5f003130 	svcpl	0x00003130
    23e0:	525f4353 	subspl	r4, pc, #1275068417	; 0x4c000001
    23e4:	45444145 	strbmi	r4, [r4, #-325]	; 0xfffffebb
    23e8:	52575f52 	subspl	r5, r7, #328	; 0x148
    23ec:	52455449 	subpl	r5, r5, #1224736768	; 0x49000000
    23f0:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    23f4:	3720534b 	strcc	r5, [r0, -fp, asr #6]!
    23f8:	5f5f0031 	svcpl	0x005f0031
    23fc:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    2400:	0020745f 	eoreq	r7, r0, pc, asr r4
    2404:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2408:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 22d8 <_scanf_i+0x1e0>
    240c:	5f5f5841 	svcpl	0x005f5841
    2410:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    2414:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2418:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    241c:	54415f00 	strbpl	r5, [r1], #-3840	; 0xfffff100
    2420:	54495845 	strbpl	r5, [r9], #-2117	; 0xfffff7bb
    2424:	494e495f 	stmdbmi	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    2428:	5f7b2054 	svcpl	0x007b2054
    242c:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    2430:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    2434:	4e5f7b20 	vnmlsmi.f64	d23, d15, d16
    2438:	7d4c4c55 	stclvc	12, cr4, [ip, #-340]	; 0xfffffeac
    243c:	4e5f202c 	cdpmi	0, 5, cr2, cr15, cr12, {1}
    2440:	7d4c4c55 	stclvc	12, cr4, [ip, #-340]	; 0xfffffeac
    2444:	52415500 	subpl	r5, r1, #0, 10
    2448:	52435f54 	subpl	r5, r3, #84, 30	; 0x150
    244c:	4f54535f 	svcmi	0x0054535f
    2450:	4b524250 	blmi	1492d98 <_end+0x492d98>
    2454:	30783020 	rsbscc	r3, r8, r0, lsr #32
    2458:	30303030 	eorscc	r3, r0, r0, lsr r0
    245c:	00303031 	eorseq	r3, r0, r1, lsr r0
    2460:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
    2464:	5f746c75 	svcpl	0x00746c75
    2468:	5f5f006b 	svcpl	0x005f006b
    246c:	5f6d7261 	svcpl	0x006d7261
    2470:	0031205f 	eorseq	r2, r1, pc, asr r0
    2474:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
    2478:	00746c75 	rsbseq	r6, r4, r5, ror ip
    247c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2480:	5f525450 	svcpl	0x00525450
    2484:	0058414d 	subseq	r4, r8, sp, asr #2
    2488:	5f43535f 	svcpl	0x0043535f
    248c:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    2490:	20534441 	subscs	r4, r3, r1, asr #8
    2494:	43003234 	movwmi	r3, #564	; 0x234
    2498:	6f736e6f 	svcvs	0x00736e6f
    249c:	4900656c 	stmdbmi	r0, {r2, r3, r5, r6, r8, sl, sp, lr}
    24a0:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    24a4:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    24a8:	5f5f2029 	svcpl	0x005f2029
    24ac:	33544e49 	cmpcc	r4, #1168	; 0x490
    24b0:	28435f32 	stmdacs	r3, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    24b4:	5f002963 	svcpl	0x00002963
    24b8:	545f4353 	ldrbpl	r4, [pc], #-851	; 24c0 <__srefill_r+0xd0>
    24bc:	41455248 	cmpmi	r5, r8, asr #4
    24c0:	54415f44 	strbpl	r5, [r1], #-3908	; 0xfffff0bc
    24c4:	535f5254 	cmppl	pc, #84, 4	; 0x40000005
    24c8:	4b434154 	blmi	10d2a20 <_end+0xd2a20>
    24cc:	52444441 	subpl	r4, r4, #1090519040	; 0x41000000
    24d0:	00333420 	eorseq	r3, r3, r0, lsr #8
    24d4:	6f73645f 	svcvs	0x0073645f
    24d8:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
    24dc:	00656c64 	rsbeq	r6, r5, r4, ror #24
    24e0:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    24e4:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    24e8:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    24ec:	5345545f 	movtpl	r5, #21599	; 0x545f
    24f0:	4e415f54 	mcrmi	15, 2, r5, cr1, cr4, {2}
    24f4:	45535f44 	ldrbmi	r5, [r3, #-3908]	; 0xfffff0bc
    24f8:	52545f54 	subspl	r5, r4, #84, 30	; 0x150
    24fc:	41564555 	cmpmi	r6, r5, asr r5
    2500:	0031204c 	eorseq	r2, r1, ip, asr #32
    2504:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2508:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    250c:	5059545f 	subspl	r5, r9, pc, asr r4
    2510:	205f5f45 	subscs	r5, pc, r5, asr #30
    2514:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    2518:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    251c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2520:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    2524:	5f5f0074 	svcpl	0x005f0074
    2528:	43554e47 	cmpmi	r5, #1136	; 0x470
    252c:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
    2530:	4f5f5f5f 	svcmi	0x005f5f5f
    2534:	45534646 	ldrbmi	r4, [r3, #-1606]	; 0xfffff9ba
    2538:	20464f54 	subcs	r4, r6, r4, asr pc
    253c:	5f5f0031 	svcpl	0x005f0031
    2540:	6b636f6c 	blvs	18de2f8 <_end+0x8de2f8>
    2544:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    2548:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    254c:	29782865 	ldmdbcs	r8!, {r0, r2, r5, r6, fp, sp}^
    2550:	535f0020 	cmppl	pc, #32
    2554:	454c5f43 	strbmi	r5, [ip, #-3907]	; 0xfffff0bd
    2558:	314c4556 	cmpcc	ip, r6, asr r5
    255c:	4143445f 	cmpmi	r3, pc, asr r4
    2560:	5f454843 	svcpl	0x00454843
    2564:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2568:	38323120 	ldmdacc	r2!, {r5, r8, ip, sp}
    256c:	6c6f6300 	stclvs	3, cr6, [pc], #-0	; 2574 <_strtol_l.isra.0+0xa>
    2570:	734d726f 	movtvc	r7, #53871	; 0xd26f
    2574:	666e4967 	strbtvs	r4, [lr], -r7, ror #18
    2578:	5f5f006f 	svcpl	0x005f006f
    257c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2580:	28435f38 	stmdacs	r3, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    2584:	63202963 			; <UNDEFINED> instruction: 0x63202963
    2588:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 2590 <_strtol_l.isra.0+0x26>
    258c:	64775f6d 	ldrbtvs	r5, [r7], #-3949	; 0xfffff093
    2590:	5f007961 	svcpl	0x00007961
    2594:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    2598:	4145465f 	cmpmi	r5, pc, asr r6
    259c:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    25a0:	4d554e5f 	ldclmi	14, cr4, [r5, #-380]	; 0xfffffe84
    25a4:	43495245 	movtmi	r5, #37445	; 0x9245
    25a8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    25ac:	004e494d 	subeq	r4, lr, sp, asr #18
    25b0:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
    25b4:	6473695f 	ldrbtvs	r6, [r3], #-2399	; 0xfffff6a1
    25b8:	5f007473 	svcpl	0x00007473
    25bc:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    25c0:	3150465f 	cmpcc	r0, pc, asr r6
    25c4:	4f465f36 	svcmi	0x00465f36
    25c8:	54414d52 	strbpl	r4, [r1], #-3410	; 0xfffff2ae
    25cc:	544c415f 	strbpl	r4, [ip], #-351	; 0xfffffea1
    25d0:	414e5245 	cmpmi	lr, r5, asr #4
    25d4:	45564954 	ldrbmi	r4, [r6, #-2388]	; 0xfffff6ac
    25d8:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    25dc:	28435f38 	stmdacs	r3, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    25e0:	5f202963 	svcpl	0x00202963
    25e4:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    25e8:	28435f38 	stmdacs	r3, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    25ec:	55002963 	strpl	r2, [r0, #-2403]	; 0xfffff69d
    25f0:	31544e49 	cmpcc	r4, r9, asr #28
    25f4:	414d5f36 	cmpmi	sp, r6, lsr pc
    25f8:	5f5f2058 	svcpl	0x005f2058
    25fc:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2600:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 2544 <__sccl+0x3c>
    2604:	5f5f5841 	svcpl	0x005f5841
    2608:	775f5f00 	ldrbvc	r5, [pc, -r0, lsl #30]
    260c:	5f6b6165 	svcpl	0x006b6165
    2610:	626d7973 	rsbvs	r7, sp, #1884160	; 0x1cc000
    2614:	5f206c6f 	svcpl	0x00206c6f
    2618:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    261c:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    2620:	5f5f6574 	svcpl	0x005f6574
    2624:	5f5f2828 	svcpl	0x005f2828
    2628:	6b616577 	blvs	185bc0c <_end+0x85bc0c>
    262c:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2630:	665f5f00 	ldrbvs	r5, [pc], -r0, lsl #30
    2634:	6178656c 	cmnvs	r8, ip, ror #10
    2638:	5b207272 	blpl	81f008 <heap_size+0x7ff008>
    263c:	5a005d30 	bpl	19b04 <__bss_end__+0x16314>
    2640:	37716e79 			; <UNDEFINED> instruction: 0x37716e79
    2644:	5f303030 	svcpl	0x00303030
    2648:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    264c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2650:	414e455f 	cmpmi	lr, pc, asr r5
    2654:	28454c42 	stmdacs	r5, {r1, r6, sl, fp, lr}^
    2658:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    265c:	55282029 	strpl	r2, [r8, #-41]!	; 0xffffffd7
    2660:	2d545241 	lfmcs	f5, 2, [r4, #-260]	; 0xfffffefc
    2664:	5245493e 	subpl	r4, r5, #1015808	; 0xf8000
    2668:	203d7c20 	eorscs	r7, sp, r0, lsr #24
    266c:	52415528 	subpl	r5, r1, #40, 10	; 0xa000000
    2670:	58495f54 	stmdapl	r9, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2674:	58525f52 	ldmdapl	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    2678:	2052564f 	subscs	r5, r2, pc, asr #12
    267c:	4155207c 	cmpmi	r5, ip, ror r0
    2680:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    2684:	525f5258 	subspl	r5, pc, #88, 4	; 0x80000005
    2688:	4c554658 	mrrcmi	6, 5, r4, r5, cr8
    268c:	0029294c 	eoreq	r2, r9, ip, asr #18
    2690:	464c5f5f 			; <UNDEFINED> instruction: 0x464c5f5f
    2694:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    2698:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    269c:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    26a0:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    26a4:	302d524c 	eorcc	r5, sp, ip, asr #4
    26a8:	524c352e 	subpl	r3, ip, #192937984	; 0xb800000
    26ac:	555f0029 	ldrbpl	r0, [pc, #-41]	; 268b <_strtol_r+0x17>
    26b0:	5453494e 	ldrbpl	r4, [r3], #-2382	; 0xfffff6b2
    26b4:	5f485f44 	svcpl	0x00485f44
    26b8:	49460020 	stmdbmi	r6, {r5}^
    26bc:	5f004f46 	svcpl	0x00004f46
    26c0:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    26c4:	4145465f 	cmpmi	r5, pc, asr r6
    26c8:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    26cc:	4452515f 	ldrbmi	r5, [r2], #-351	; 0xfffffea1
    26d0:	5f00584d 	svcpl	0x0000584d
    26d4:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    26d8:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
    26dc:	525f5449 	subspl	r5, pc, #1224736768	; 0x49000000
    26e0:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    26e4:	61762838 	cmnvs	r6, r8, lsr r8
    26e8:	64202972 	strtvs	r2, [r0], #-2418	; 0xfffff68e
    26ec:	207b206f 	rsbscs	r2, fp, pc, rrx
    26f0:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
    26f4:	5f207463 	svcpl	0x00207463
    26f8:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    26fc:	5f2a2074 	svcpl	0x002a2074
    2700:	203d2072 	eorscs	r2, sp, r2, ror r0
    2704:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    2708:	5f203b29 	svcpl	0x00203b29
    270c:	5f3e2d72 	svcpl	0x003e2d72
    2710:	2d383472 	cfldrscs	mvf3, [r8, #-456]!	; 0xfffffe38
    2714:	65735f3e 	ldrbvs	r5, [r3, #-3902]!	; 0xfffff0c2
    2718:	305b6465 	subscc	r6, fp, r5, ror #8
    271c:	203d205d 	eorscs	r2, sp, sp, asr r0
    2720:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    2724:	5f383444 	svcpl	0x00383444
    2728:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
    272c:	203b305f 	eorscs	r3, fp, pc, asr r0
    2730:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    2734:	3834725f 	ldmdacc	r4!, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
    2738:	735f3e2d 	cmpvc	pc, #720	; 0x2d0
    273c:	5b646565 	blpl	191bcd8 <_end+0x91bcd8>
    2740:	3d205d31 	stccc	13, cr5, [r0, #-196]!	; 0xffffff3c
    2744:	41525f20 	cmpmi	r2, r0, lsr #30
    2748:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    274c:	4545535f 	strbmi	r5, [r5, #-863]	; 0xfffffca1
    2750:	3b315f44 	blcc	c5a468 <heap_size+0xc3a468>
    2754:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    2758:	34725f3e 	ldrbtcc	r5, [r2], #-3902	; 0xfffff0c2
    275c:	5f3e2d38 	svcpl	0x003e2d38
    2760:	64656573 	strbtvs	r6, [r5], #-1395	; 0xfffffa8d
    2764:	205d325b 	subscs	r3, sp, fp, asr r2
    2768:	525f203d 	subspl	r2, pc, #61	; 0x3d
    276c:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    2770:	45535f38 	ldrbmi	r5, [r3, #-3896]	; 0xfffff0c8
    2774:	325f4445 	subscc	r4, pc, #1157627904	; 0x45000000
    2778:	725f203b 	subsvc	r2, pc, #59	; 0x3b
    277c:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
    2780:	3e2d3834 	mcrcc	8, 1, r3, cr13, cr4, {1}
    2784:	6c756d5f 	ldclvs	13, cr6, [r5], #-380	; 0xfffffe84
    2788:	5d305b74 	vldmdbpl	r0!, {d5-<overflow reg d62>}
    278c:	5f203d20 	svcpl	0x00203d20
    2790:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    2794:	4d5f3834 	ldclmi	8, cr3, [pc, #-208]	; 26cc <strtol+0x18>
    2798:	5f544c55 	svcpl	0x00544c55
    279c:	5f203b30 	svcpl	0x00203b30
    27a0:	5f3e2d72 	svcpl	0x003e2d72
    27a4:	2d383472 	cfldrscs	mvf3, [r8, #-456]!	; 0xfffffe38
    27a8:	756d5f3e 	strbvc	r5, [sp, #-3902]!	; 0xfffff0c2
    27ac:	315b746c 	cmpcc	fp, ip, ror #8
    27b0:	203d205d 	eorscs	r2, sp, sp, asr r0
    27b4:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    27b8:	5f383444 	svcpl	0x00383444
    27bc:	544c554d 	strbpl	r5, [ip], #-1357	; 0xfffffab3
    27c0:	203b315f 	eorscs	r3, fp, pc, asr r1
    27c4:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    27c8:	3834725f 	ldmdacc	r4!, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
    27cc:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 2720 <_strtoul_l.isra.0+0x40>
    27d0:	5b746c75 	blpl	1d1d9ac <_end+0xd1d9ac>
    27d4:	3d205d32 	stccc	13, cr5, [r0, #-200]!	; 0xffffff38
    27d8:	41525f20 	cmpmi	r2, r0, lsr #30
    27dc:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    27e0:	4c554d5f 	mrrcmi	13, 5, r4, r5, cr15
    27e4:	3b325f54 	blcc	c9a53c <heap_size+0xc7a53c>
    27e8:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    27ec:	34725f3e 	ldrbtcc	r5, [r2], #-3902	; 0xfffff0c2
    27f0:	5f3e2d38 	svcpl	0x003e2d38
    27f4:	20646461 	rsbcs	r6, r4, r1, ror #8
    27f8:	525f203d 	subspl	r2, pc, #61	; 0x3d
    27fc:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    2800:	44415f38 	strbmi	r5, [r1], #-3896	; 0xfffff0c8
    2804:	5f203b44 	svcpl	0x00203b44
    2808:	5f3e2d72 	svcpl	0x003e2d72
    280c:	2d383472 	cfldrscs	mvf3, [r8, #-456]!	; 0xfffffe38
    2810:	61725f3e 	cmnvs	r2, lr, lsr pc
    2814:	6e5f646e 	cdpvs	4, 5, cr6, cr15, cr14, {3}
    2818:	20747865 	rsbscs	r7, r4, r5, ror #16
    281c:	3b31203d 	blcc	c4a918 <heap_size+0xc2a918>
    2820:	77207d20 	strvc	r7, [r0, -r0, lsr #26]!
    2824:	656c6968 	strbvs	r6, [ip, #-2408]!	; 0xfffff698
    2828:	29302820 	ldmdbcs	r0!, {r5, fp, sp}
    282c:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    2830:	5f544e45 	svcpl	0x00544e45
    2834:	5253424d 	subspl	r4, r3, #-805306364	; 0xd0000004
    2838:	43574f54 	cmpmi	r7, #84, 30	; 0x150
    283c:	54535f53 	ldrbpl	r5, [r3], #-3923	; 0xfffff0ad
    2840:	28455441 	stmdacs	r5, {r0, r6, sl, ip, lr}^
    2844:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    2848:	70282820 	eorvc	r2, r8, r0, lsr #16
    284c:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    2850:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    2854:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    2858:	73626d5f 	cmnvc	r2, #6080	; 0x17c0
    285c:	776f7472 			; <UNDEFINED> instruction: 0x776f7472
    2860:	735f7363 	cmpvc	pc, #-1946157055	; 0x8c000001
    2864:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    2868:	5f5f0029 	svcpl	0x005f0029
    286c:	41524653 	cmpmi	r2, r3, asr r6
    2870:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    2874:	5f544942 	svcpl	0x00544942
    2878:	0030205f 	eorseq	r2, r0, pc, asr r0
    287c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2880:	50455f54 	subpl	r5, r5, r4, asr pc
    2884:	4f4c4953 	svcmi	0x004c4953
    2888:	205f5f4e 	subscs	r5, pc, lr, asr #30
    288c:	39312e31 	ldmdbcc	r1!, {r0, r4, r5, r9, sl, fp, sp}
    2890:	32393032 	eorscc	r3, r9, #50	; 0x32
    2894:	35353938 	ldrcc	r3, [r5, #-2360]!	; 0xfffff6c8
    2898:	31383730 	teqcc	r8, r0, lsr r7
    289c:	2d653532 	cfstr64cs	mvdx3, [r5, #-200]!	; 0xffffff38
    28a0:	57004637 	smladxpl	r0, r7, r6, r4
    28a4:	5f544e49 	svcpl	0x00544e49
    28a8:	0058414d 	subseq	r4, r8, sp, asr #2
    28ac:	6f6c5f5f 	svcvs	0x006c5f5f
    28b0:	725f6b63 	subsvc	r6, pc, #101376	; 0x18c00
    28b4:	61656c65 	cmnvs	r5, r5, ror #24
    28b8:	6c286573 	cfstr32vs	mvfx6, [r8], #-460	; 0xfffffe34
    28bc:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    28c0:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    28c4:	2964696f 	stmdbcs	r4!, {r0, r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    28c8:	00293020 	eoreq	r3, r9, r0, lsr #32
    28cc:	524f5f5f 	subpl	r5, pc, #380	; 0x17c
    28d0:	5f524544 	svcpl	0x00524544
    28d4:	5454494c 	ldrbpl	r4, [r4], #-2380	; 0xfffff6b4
    28d8:	455f454c 	ldrbmi	r4, [pc, #-1356]	; 2394 <_reclaim_reent+0x70>
    28dc:	4149444e 	cmpmi	r9, lr, asr #8
    28e0:	205f5f4e 	subscs	r5, pc, lr, asr #30
    28e4:	34333231 	ldrtcc	r3, [r3], #-561	; 0xfffffdcf
    28e8:	54505f00 	ldrbpl	r5, [r0], #-3840	; 0xfffff100
    28ec:	46494452 			; <UNDEFINED> instruction: 0x46494452
    28f0:	5f545f46 	svcpl	0x00545f46
    28f4:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    28f8:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    28fc:	6d5f0020 	ldclvs	0, cr0, [pc, #-128]	; 2884 <__submore+0x38>
    2900:	74727362 	ldrbtvc	r7, [r2], #-866	; 0xfffffc9e
    2904:	7363776f 	cmnvc	r3, #29097984	; 0x1bc0000
    2908:	6174735f 	cmnvs	r4, pc, asr r3
    290c:	5f006574 	svcpl	0x00006574
    2910:	4e5f4353 	mrcmi	3, 2, r4, cr15, cr3, {2}
    2914:	434f5250 	movtmi	r5, #62032	; 0xf250
    2918:	4f535345 	svcmi	0x00535345
    291c:	4f5f5352 	svcmi	0x005f5352
    2920:	204e4c4e 	subcs	r4, lr, lr, asr #24
    2924:	5f003031 	svcpl	0x00003031
    2928:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
    292c:	5f323374 	svcpl	0x00323374
    2930:	775f0074 			; <UNDEFINED> instruction: 0x775f0074
    2934:	5f007364 	svcpl	0x00007364
    2938:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    293c:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    2940:	5f544e45 	svcpl	0x00544e45
    2944:	4f54424d 	svcmi	0x0054424d
    2948:	535f4357 	cmppl	pc, #1543503873	; 0x5c000001
    294c:	45544154 	ldrbmi	r4, [r4, #-340]	; 0xfffffeac
    2950:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    2954:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    2958:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    295c:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 28b0 <__submore+0x64>
    2960:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    2964:	626d5f3e 	rsbvs	r5, sp, #62, 30	; 0xf8
    2968:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
    296c:	6174735f 	cmnvs	r4, pc, asr r3
    2970:	00296574 	eoreq	r6, r9, r4, ror r5
    2974:	42445f5f 	submi	r5, r4, #380	; 0x17c
    2978:	414d5f4c 	cmpmi	sp, ip, asr #30
    297c:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2980:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    2984:	34323031 	ldrtcc	r3, [r2], #-49	; 0xffffffcf
    2988:	736e7500 	cmnvc	lr, #0, 10
    298c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2990:	69732064 	ldmdbvs	r3!, {r2, r5, r6, sp}^
    2994:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    2998:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    299c:	4152464c 	cmpmi	r2, ip, asr #12
    29a0:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    29a4:	5f544942 	svcpl	0x00544942
    29a8:	0030205f 	eorseq	r2, r0, pc, asr r0
    29ac:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    29b0:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    29b4:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    29b8:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 28fc <_ungetc_r+0x40>
    29bc:	5f5f5841 	svcpl	0x005f5841
    29c0:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    29c4:	00666666 	rsbeq	r6, r6, r6, ror #12
    29c8:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    29cc:	575f455a 			; <UNDEFINED> instruction: 0x575f455a
    29d0:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    29d4:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    29d8:	5f5f0032 	svcpl	0x005f0032
    29dc:	6c6c756e 	cfstr64vs	mvdx7, [ip], #-440	; 0xfffffe48
    29e0:	6e65735f 	mcrvs	3, 3, r7, cr5, cr15, {2}
    29e4:	656e6974 	strbvs	r6, [lr, #-2420]!	; 0xfffff68c
    29e8:	5f5f206c 	svcpl	0x005f206c
    29ec:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    29f0:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    29f4:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    29f8:	735f5f28 	cmpvc	pc, #40, 30	; 0xa0
    29fc:	69746e65 	ldmdbvs	r4!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
    2a00:	5f6c656e 	svcpl	0x006c656e
    2a04:	0029295f 	eoreq	r2, r9, pc, asr r9
    2a08:	5f43535f 	svcpl	0x0043535f
    2a0c:	47544547 	ldrbmi	r4, [r4, -r7, asr #10]
    2a10:	5f525f52 	svcpl	0x00525f52
    2a14:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2a18:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2a1c:	00303520 	eorseq	r3, r0, r0, lsr #10
    2a20:	66735f5f 	uhsaxvs	r5, r3, pc	; <UNPREDICTABLE>
    2a24:	6b61665f 	blvs	185c3a8 <_end+0x85c3a8>
    2a28:	74735f65 	ldrbtvc	r5, [r3], #-3941	; 0xfffff09b
    2a2c:	006e6964 	rsbeq	r6, lr, r4, ror #18
    2a30:	5f43535f 	svcpl	0x0043535f
    2a34:	35534258 	ldrbcc	r4, [r3, #-600]	; 0xfffffda8
    2a38:	42504c5f 	subsmi	r4, r0, #24320	; 0x5f00
    2a3c:	4f5f4749 	svcmi	0x005f4749
    2a40:	49424646 	stmdbmi	r2, {r1, r2, r6, r9, sl, lr}^
    2a44:	535f2047 	cmppl	pc, #71	; 0x47
    2a48:	37565f43 	ldrbcc	r5, [r6, -r3, asr #30]
    2a4c:	42504c5f 	subsmi	r4, r0, #24320	; 0x5f00
    2a50:	4f5f4749 	svcmi	0x005f4749
    2a54:	49424646 	stmdbmi	r2, {r1, r2, r6, r9, sl, lr}^
    2a58:	5f5f0047 	svcpl	0x005f0047
    2a5c:	43554e47 	cmpmi	r5, #1136	; 0x470
    2a60:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
    2a64:	535f5f5f 	cmppl	pc, #380	; 0x17c
    2a68:	49544345 	ldmdbmi	r4, {r0, r2, r6, r8, r9, lr}^
    2a6c:	31204e4f 			; <UNDEFINED> instruction: 0x31204e4f
    2a70:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    2a74:	5f544e45 	svcpl	0x00544e45
    2a78:	52534357 	subspl	r4, r3, #1543503873	; 0x5c000001
    2a7c:	424d4f54 	submi	r4, sp, #84, 30	; 0x150
    2a80:	54535f53 	ldrbpl	r5, [r3], #-3923	; 0xfffff0ad
    2a84:	28455441 	stmdacs	r5, {r0, r6, sl, ip, lr}^
    2a88:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    2a8c:	70282820 	eorvc	r2, r8, r0, lsr #16
    2a90:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    2a94:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    2a98:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    2a9c:	7363775f 	cmnvc	r3, #24903680	; 0x17c0000
    2aa0:	6d6f7472 	cfstrdvs	mvd7, [pc, #-456]!	; 28e0 <_ungetc_r+0x24>
    2aa4:	735f7362 	cmpvc	pc, #-2013265919	; 0x88000001
    2aa8:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    2aac:	5f5f0029 	svcpl	0x005f0029
    2ab0:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2ab4:	535f464f 	cmppl	pc, #82837504	; 0x4f00000
    2ab8:	5f455a49 	svcpl	0x00455a49
    2abc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2ac0:	4e450034 	mcrmi	0, 2, r0, cr5, cr4, {1}
    2ac4:	204f4958 	subcs	r4, pc, r8, asr r9	; <UNPREDICTABLE>
    2ac8:	735f0036 	cmpvc	pc, #54	; 0x36
    2acc:	00657a69 	rsbeq	r7, r5, r9, ror #20
    2ad0:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    2ad4:	0030204c 	eorseq	r2, r0, ip, asr #32
    2ad8:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    2adc:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    2ae0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2ae4:	39205f5f 	stmdbcc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2ae8:	3939392e 	ldmdbcc	r9!, {r1, r2, r3, r5, r8, fp, ip, sp}
    2aec:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2af0:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2af4:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2af8:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2afc:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2b00:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2b04:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2b08:	36453939 			; <UNDEFINED> instruction: 0x36453939
    2b0c:	44343431 	ldrtmi	r3, [r4], #-1073	; 0xfffffbcf
    2b10:	4155004c 	cmpmi	r5, ip, asr #32
    2b14:	425f5452 	subsmi	r5, pc, #1375731712	; 0x52000000
    2b18:	44445541 	strbmi	r5, [r4], #-1345	; 0xfffffabf
    2b1c:	4d5f5649 	ldclmi	6, cr5, [pc, #-292]	; 2a00 <_setlocale_r+0xc>
    2b20:	204b5341 	subcs	r5, fp, r1, asr #6
    2b24:	30307830 	eorscc	r7, r0, r0, lsr r8
    2b28:	30303030 	eorscc	r3, r0, r0, lsr r0
    2b2c:	5f004646 	svcpl	0x00004646
    2b30:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
    2b34:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    2b38:	41435f34 	cmpmi	r3, r4, lsr pc
    2b3c:	5f454843 	svcpl	0x00454843
    2b40:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2b44:	37333120 	ldrcc	r3, [r3, -r0, lsr #2]!
    2b48:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    2b4c:	41454c5f 	cmpmi	r5, pc, asr ip
    2b50:	36315453 			; <UNDEFINED> instruction: 0x36315453
    2b54:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2b58:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2b5c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    2b60:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    2b64:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 2aa8 <__ascii_mbtowc+0x8>
    2b68:	5f5f5841 	svcpl	0x005f5841
    2b6c:	56414800 	strbpl	r4, [r1], -r0, lsl #16
    2b70:	4e495f45 	cdpmi	15, 4, cr5, cr9, cr5, {2}
    2b74:	49465449 	stmdbmi	r6, {r0, r3, r6, sl, ip, lr}^
    2b78:	415f494e 	cmpmi	pc, lr, asr #18
    2b7c:	59415252 	stmdbpl	r1, {r1, r4, r6, r9, ip, lr}^
    2b80:	5f003120 	svcpl	0x00003120
    2b84:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
    2b88:	5f74616d 	svcpl	0x0074616d
    2b8c:	28677261 	stmdacs	r7!, {r0, r5, r6, r9, ip, sp, lr}^
    2b90:	61746d66 	cmnvs	r4, r6, ror #26
    2b94:	20296772 	eorcs	r6, r9, r2, ror r7
    2b98:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    2b9c:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    2ba0:	5f657475 	svcpl	0x00657475
    2ba4:	5f28285f 	svcpl	0x0028285f
    2ba8:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
    2bac:	5f74616d 	svcpl	0x0074616d
    2bb0:	5f677261 	svcpl	0x00677261
    2bb4:	6628205f 			; <UNDEFINED> instruction: 0x6628205f
    2bb8:	7261746d 	rsbvc	r7, r1, #1828716544	; 0x6d000000
    2bbc:	29292967 	stmdbcs	r9!, {r0, r1, r2, r5, r6, r8, fp, sp}
    2bc0:	535f5f00 	cmppl	pc, #0, 30
    2bc4:	2034364c 	eorscs	r3, r4, ip, asr #12
    2bc8:	30387830 	eorscc	r7, r8, r0, lsr r8
    2bcc:	5f003030 	svcpl	0x00003030
    2bd0:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
    2bd4:	4f450065 	svcmi	0x00450065
    2bd8:	46524556 			; <UNDEFINED> instruction: 0x46524556
    2bdc:	20574f4c 	subscs	r4, r7, ip, asr #30
    2be0:	00393331 	eorseq	r3, r9, r1, lsr r3
    2be4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2be8:	5341465f 	movtpl	r4, #5727	; 0x165f
    2bec:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 2aa4 <__ascii_mbtowc+0x4>
    2bf0:	5f205841 	svcpl	0x00205841
    2bf4:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    2bf8:	41465f54 	cmpmi	r6, r4, asr pc
    2bfc:	5f385453 	svcpl	0x00385453
    2c00:	5f58414d 	svcpl	0x0058414d
    2c04:	5f5f005f 	svcpl	0x005f005f
    2c08:	41524653 	cmpmi	r2, r3, asr r6
    2c0c:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    2c10:	5f544942 	svcpl	0x00544942
    2c14:	0037205f 	eorseq	r2, r7, pc, asr r0
    2c18:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    2c1c:	5055535f 	subspl	r5, r5, pc, asr r3
    2c20:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    2c24:	4e495f53 	mcrmi	15, 2, r5, cr9, cr3, {2}
    2c28:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    2c2c:	5f003120 	svcpl	0x00003120
    2c30:	414c4c5f 	cmpmi	ip, pc, asr ip
    2c34:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    2c38:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    2c3c:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    2c40:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2c44:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    2c48:	4c4c3133 	stfmie	f3, [ip], {51}	; 0x33
    2c4c:	5450004b 	ldrbpl	r0, [r0], #-75	; 0xffffffb5
    2c50:	46494452 			; <UNDEFINED> instruction: 0x46494452
    2c54:	494d5f46 	stmdbmi	sp, {r1, r2, r6, r8, r9, sl, fp, ip, lr}^
    2c58:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    2c5c:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    2c60:	5f464649 	svcpl	0x00464649
    2c64:	2058414d 	subscs	r4, r8, sp, asr #2
    2c68:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    2c6c:	6e5f5f00 	cdpvs	15, 5, cr5, cr15, cr0, {0}
    2c70:	5f646565 	svcpl	0x00646565
    2c74:	74746e69 	ldrbtvc	r6, [r4], #-3689	; 0xfffff197
    2c78:	73657079 	cmnvc	r5, #121	; 0x79
    2c7c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 2c84 <__udivsi3+0x15c>
    2c80:	445f4c42 	ldrbmi	r4, [pc], #-3138	; 2c88 <__udivsi3+0x160>
    2c84:	4d494345 	stclmi	3, cr4, [r9, #-276]	; 0xfffffeec
    2c88:	445f4c41 	ldrbmi	r4, [pc], #-3137	; 2c90 <__udivsi3+0x168>
    2c8c:	5f5f4749 	svcpl	0x005f4749
    2c90:	00373120 	eorseq	r3, r7, r0, lsr #2
    2c94:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2c98:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
    2c9c:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    2ca0:	4f4c5f47 	svcmi	0x004c5f47
    2ca4:	5f5f474e 	svcpl	0x005f474e
    2ca8:	5f003820 	svcpl	0x00003820
    2cac:	6163735f 	cmnvs	r3, pc, asr r3
    2cb0:	696c666e 	stmdbvs	ip!, {r1, r2, r3, r5, r6, r9, sl, sp, lr}^
    2cb4:	6628656b 	strtvs	r6, [r8], -fp, ror #10
    2cb8:	7261746d 	rsbvc	r7, r1, #1828716544	; 0x6d000000
    2cbc:	69662c67 	stmdbvs	r6!, {r0, r1, r2, r5, r6, sl, fp, sp}^
    2cc0:	76747372 			; <UNDEFINED> instruction: 0x76747372
    2cc4:	72617261 	rsbvc	r7, r1, #268435462	; 0x10000006
    2cc8:	5f202967 	svcpl	0x00202967
    2ccc:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    2cd0:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    2cd4:	5f5f6574 	svcpl	0x005f6574
    2cd8:	5f5f2828 	svcpl	0x005f2828
    2cdc:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
    2ce0:	5f5f7461 	svcpl	0x005f7461
    2ce4:	5f5f2820 	svcpl	0x005f2820
    2ce8:	6e616373 	mcrvs	3, 3, r6, cr1, cr3, {3}
    2cec:	2c5f5f66 	mrrccs	15, 6, r5, pc, cr6	; <UNPREDICTABLE>
    2cf0:	746d6620 	strbtvc	r6, [sp], #-1568	; 0xfffff9e0
    2cf4:	2c677261 	sfmcs	f7, 2, [r7], #-388	; 0xfffffe7c
    2cf8:	72696620 	rsbvc	r6, r9, #32, 12	; 0x2000000
    2cfc:	61767473 	cmnvs	r6, r3, ror r4
    2d00:	67726172 			; <UNDEFINED> instruction: 0x67726172
    2d04:	00292929 	eoreq	r2, r9, r9, lsr #18
    2d08:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2d0c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2d10:	43535f00 	cmpmi	r3, #0, 30
    2d14:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    2d18:	5f314c45 	svcpl	0x00314c45
    2d1c:	43414349 	movtmi	r4, #4937	; 0x1349
    2d20:	535f4548 	cmppl	pc, #72, 10	; 0x12000000
    2d24:	20455a49 	subcs	r5, r5, r9, asr #20
    2d28:	00353231 	eorseq	r3, r5, r1, lsr r2
    2d2c:	41484357 	cmpmi	r8, r7, asr r3
    2d30:	414d5f52 	cmpmi	sp, r2, asr pc
    2d34:	5f5f2058 	svcpl	0x005f2058
    2d38:	41484357 	cmpmi	r8, r7, asr r3
    2d3c:	414d5f52 	cmpmi	sp, r2, asr pc
    2d40:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2d44:	6f6e5f5f 	svcvs	0x006e5f5f
    2d48:	6c756e6e 	ldclvs	14, cr6, [r5], #-440	; 0xfffffe48
    2d4c:	2978286c 	ldmdbcs	r8!, {r2, r3, r5, r6, fp, sp}^
    2d50:	615f5f20 	cmpvs	pc, r0, lsr #30
    2d54:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    2d58:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    2d5c:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2d60:	6f6e5f5f 	svcvs	0x006e5f5f
    2d64:	6c756e6e 	ldclvs	14, cr6, [r5], #-440	; 0xfffffe48
    2d68:	205f5f6c 	subscs	r5, pc, ip, ror #30
    2d6c:	00292978 	eoreq	r2, r9, r8, ror r9
    2d70:	53465542 	movtpl	r5, #25922	; 0x6542
    2d74:	31205a49 			; <UNDEFINED> instruction: 0x31205a49
    2d78:	00343230 	eorseq	r3, r4, r0, lsr r2
    2d7c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2d80:	5f323354 	svcpl	0x00323354
    2d84:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
    2d88:	5f4c414d 	svcpl	0x004c414d
    2d8c:	5f474944 	svcpl	0x00474944
    2d90:	0039205f 	eorseq	r2, r9, pc, asr r0
    2d94:	454e5f5f 	strbmi	r5, [lr, #-3935]	; 0xfffff0a1
    2d98:	42494c57 	submi	r4, r9, #22272	; 0x5700
    2d9c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2da0:	5f5f524f 	svcpl	0x005f524f
    2da4:	5f003020 	svcpl	0x00003020
    2da8:	435f4350 	cmpmi	pc, #80, 6	; 0x40000001
    2dac:	4e574f48 	cdpmi	15, 5, cr4, cr7, cr8, {2}
    2db0:	5345525f 	movtpl	r5, #21087	; 0x525f
    2db4:	43495254 	movtmi	r5, #37460	; 0x9254
    2db8:	20444554 	subcs	r4, r4, r4, asr r5
    2dbc:	41550036 	cmpmi	r5, r6, lsr r0
    2dc0:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 2c80 <__udivsi3+0x158>
    2dc4:	41505f52 	cmpmi	r0, r2, asr pc
    2dc8:	59544952 	ldmdbpl	r4, {r1, r4, r6, r8, fp, lr}^
    2dcc:	4e4f4e5f 	mcrmi	14, 2, r4, cr15, cr15, {2}
    2dd0:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
    2dd4:	30303030 	eorscc	r3, r0, r0, lsr r0
    2dd8:	30323030 	eorscc	r3, r2, r0, lsr r0
    2ddc:	45444500 	strbmi	r4, [r4, #-1280]	; 0xfffffb00
    2de0:	44415453 	strbmi	r5, [r1], #-1107	; 0xfffffbad
    2de4:	45525244 	ldrbmi	r5, [r2, #-580]	; 0xfffffdbc
    2de8:	32312051 	eorscc	r2, r1, #81	; 0x51
    2dec:	5f5f0031 	svcpl	0x005f0031
    2df0:	5f4d5241 	svcpl	0x004d5241
    2df4:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
    2df8:	4f52505f 	svcmi	0x0052505f
    2dfc:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    2e00:	00353620 	eorseq	r3, r5, r0, lsr #12
    2e04:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    2e08:	545f5241 	ldrbpl	r5, [pc], #-577	; 2e10 <.divsi3_skip_div0_test+0x6a>
    2e0c:	4645445f 			; <UNDEFINED> instruction: 0x4645445f
    2e10:	44454e49 	strbmi	r4, [r5], #-3657	; 0xfffff1b7
    2e14:	5f00205f 	svcpl	0x0000205f
    2e18:	53424f5f 	movtpl	r4, #12127	; 0x2f5f
    2e1c:	54454c4f 	strbpl	r4, [r5], #-3151	; 0xfffff3b1
    2e20:	414d5f45 	cmpmi	sp, r5, asr #30
    2e24:	445f4854 	ldrbmi	r4, [pc], #-2132	; 2e2c <.divsi3_skip_div0_test+0x86>
    2e28:	55414645 	strbpl	r4, [r1, #-1605]	; 0xfffff9bb
    2e2c:	3020544c 	eorcc	r5, r0, ip, asr #8
    2e30:	43535f00 	cmpmi	r3, #0, 30
    2e34:	564f495f 			; <UNDEFINED> instruction: 0x564f495f
    2e38:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2e3c:	00363620 	eorseq	r3, r6, r0, lsr #12
    2e40:	6f625f5f 	svcvs	0x00625f5f
    2e44:	65646e75 	strbvs	r6, [r4, #-3701]!	; 0xfffff18b
    2e48:	5f002064 	svcpl	0x00002064
    2e4c:	4e49575f 	mcrmi	7, 2, r5, cr9, cr15, {2}
    2e50:	59545f54 	ldmdbpl	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2e54:	5f5f4550 	svcpl	0x005f4550
    2e58:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    2e5c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2e60:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    2e64:	535f0074 	cmppl	pc, #116	; 0x74
    2e68:	48545f43 	ldmdami	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    2e6c:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
    2e70:	4f50535f 	svcmi	0x0050535f
    2e74:	49444152 	stmdbmi	r4, {r1, r4, r6, r8, lr}^
    2e78:	45535f43 	ldrbmi	r5, [r3, #-3907]	; 0xfffff0bd
    2e7c:	52455652 	subpl	r5, r5, #85983232	; 0x5200000
    2e80:	00313820 	eorseq	r3, r1, r0, lsr #16
    2e84:	5f43505f 	svcpl	0x0043505f
    2e88:	45504950 	ldrbmi	r4, [r0, #-2384]	; 0xfffff6b0
    2e8c:	4655425f 			; <UNDEFINED> instruction: 0x4655425f
    2e90:	5f003520 	svcpl	0x00003520
    2e94:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    2e98:	48435f54 	stmdami	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2e9c:	5f4b4345 	svcpl	0x004b4345
    2ea0:	54435341 	strbpl	r5, [r3], #-833	; 0xfffffcbf
    2ea4:	5f454d49 	svcpl	0x00454d49
    2ea8:	28465542 	stmdacs	r6, {r1, r6, r8, sl, ip, lr}^
    2eac:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    2eb0:	45525f20 	ldrbmi	r5, [r2, #-3872]	; 0xfffff0e0
    2eb4:	5f544e45 	svcpl	0x00544e45
    2eb8:	43454843 	movtmi	r4, #22595	; 0x5843
    2ebc:	6176284b 	cmnvs	r6, fp, asr #16
    2ec0:	5f202c72 	svcpl	0x00202c72
    2ec4:	74637361 	strbtvc	r7, [r3], #-865	; 0xfffffc9f
    2ec8:	5f656d69 	svcpl	0x00656d69
    2ecc:	2c667562 	cfstr64cs	mvdx7, [r6], #-392	; 0xfffffe78
    2ed0:	61686320 	cmnvs	r8, r0, lsr #6
    2ed4:	2c2a2072 	stccs	0, cr2, [sl], #-456	; 0xfffffe38
    2ed8:	45525f20 	ldrbmi	r5, [r2, #-3872]	; 0xfffff0e0
    2edc:	5f544e45 	svcpl	0x00544e45
    2ee0:	54435341 	strbpl	r5, [r3], #-833	; 0xfffffcbf
    2ee4:	5f454d49 	svcpl	0x00454d49
    2ee8:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2eec:	656d202c 	strbvs	r2, [sp, #-44]!	; 0xffffffd4
    2ef0:	7465736d 	strbtvc	r7, [r5], #-877	; 0xfffffc93
    2ef4:	61762828 	cmnvs	r6, r8, lsr #16
    2ef8:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    2efc:	6373615f 	cmnvs	r3, #-1073741801	; 0xc0000017
    2f00:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    2f04:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
    2f08:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    2f0c:	45525f20 	ldrbmi	r5, [r2, #-3872]	; 0xfffff0e0
    2f10:	5f544e45 	svcpl	0x00544e45
    2f14:	54435341 	strbpl	r5, [r3], #-833	; 0xfffffcbf
    2f18:	5f454d49 	svcpl	0x00454d49
    2f1c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2f20:	5f002929 	svcpl	0x00002929
    2f24:	6772615f 			; <UNDEFINED> instruction: 0x6772615f
    2f28:	7079745f 	rsbsvc	r7, r9, pc, asr r4
    2f2c:	61745f65 	cmnvs	r4, r5, ror #30
    2f30:	72612867 	rsbvc	r2, r1, #6750208	; 0x670000
    2f34:	696b5f67 	stmdbvs	fp!, {r0, r1, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    2f38:	612c646e 			; <UNDEFINED> instruction: 0x612c646e
    2f3c:	695f6772 	ldmdbvs	pc, {r1, r4, r5, r6, r8, r9, sl, sp, lr}^	; <UNPREDICTABLE>
    2f40:	742c7864 	strtvc	r7, [ip], #-2148	; 0xfffff79c
    2f44:	5f657079 	svcpl	0x00657079
    2f48:	5f676174 	svcpl	0x00676174
    2f4c:	29786469 	ldmdbcs	r8!, {r0, r3, r5, r6, sl, sp, lr}^
    2f50:	415f0020 	cmpmi	pc, r0, lsr #32
    2f54:	49584554 	ldmdbmi	r8, {r2, r4, r6, r8, sl, lr}^
    2f58:	59445f54 	stmdbpl	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2f5c:	494d414e 	stmdbmi	sp, {r1, r2, r3, r6, r8, lr}^
    2f60:	4c415f43 	mcrrmi	15, 4, r5, r1, cr3
    2f64:	20434f4c 	subcs	r4, r3, ip, asr #30
    2f68:	525f0031 	subspl	r0, pc, #49	; 0x31
    2f6c:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    2f70:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    2f74:	535f4b43 	cmppl	pc, #68608	; 0x10c00
    2f78:	414e4749 	cmpmi	lr, r9, asr #14
    2f7c:	55425f4c 	strbpl	r5, [r2, #-3916]	; 0xfffff0b4
    2f80:	61762846 	cmnvs	r6, r6, asr #16
    2f84:	5f202972 	svcpl	0x00202972
    2f88:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    2f8c:	48435f54 	stmdami	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2f90:	284b4345 	stmdacs	fp, {r0, r2, r6, r8, r9, lr}^
    2f94:	2c726176 	ldfcse	f6, [r2], #-472	; 0xfffffe28
    2f98:	69735f20 	ldmdbvs	r3!, {r5, r8, r9, sl, fp, ip, lr}^
    2f9c:	6c616e67 	stclvs	14, cr6, [r1], #-412	; 0xfffffe64
    2fa0:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
    2fa4:	6863202c 	stmdavs	r3!, {r2, r3, r5, sp}^
    2fa8:	2a207261 	bcs	81f934 <heap_size+0x7ff934>
    2fac:	525f202c 	subspl	r2, pc, #44	; 0x2c
    2fb0:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    2fb4:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    2fb8:	5f4c414e 	svcpl	0x004c414e
    2fbc:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2fc0:	0029202c 	eoreq	r2, r9, ip, lsr #32
    2fc4:	5f43535f 	svcpl	0x0043535f
    2fc8:	4c5f3756 	mrrcmi	7, 5, r3, pc, cr6	; <UNPREDICTABLE>
    2fcc:	47494250 	smlsldmi	r4, r9, r0, r2
    2fd0:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    2fd4:	20474942 	subcs	r4, r7, r2, asr #18
    2fd8:	5f003539 	svcpl	0x00003539
    2fdc:	545f4353 	ldrbpl	r4, [pc], #-851	; 2fe4 <.divsi3_skip_div0_test+0x23e>
    2fe0:	41455248 	cmpmi	r5, r8, asr #4
    2fe4:	454b5f44 	strbmi	r5, [fp, #-3908]	; 0xfffff0bc
    2fe8:	4d5f5359 	ldclmi	3, cr5, [pc, #-356]	; 2e8c <.divsi3_skip_div0_test+0xe6>
    2fec:	33205841 			; <UNDEFINED> instruction: 0x33205841
    2ff0:	5f5f0038 	svcpl	0x005f0038
    2ff4:	31544e49 	cmpcc	r4, r9, asr #28
    2ff8:	414d5f36 	cmpmi	sp, r6, lsr pc
    2ffc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3000:	66377830 			; <UNDEFINED> instruction: 0x66377830
    3004:	5f006666 	svcpl	0x00006666
    3008:	5f6d745f 	svcpl	0x006d745f
    300c:	72616579 	rsbvc	r6, r1, #507510784	; 0x1e400000
    3010:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 2118 <_scanf_i+0x20>
    3014:	4343414c 	movtmi	r4, #12620	; 0x314c
    3018:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; 22cb <_scanf_i+0x1d3>
    301c:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    3020:	5f5f4e4f 	svcpl	0x005f4e4f
    3024:	31783020 	cmncc	r8, r0, lsr #32
    3028:	32332d50 	eorscc	r2, r3, #80, 26	; 0x1400
    302c:	004b4c55 	subeq	r4, fp, r5, asr ip
    3030:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    3034:	414d5f54 	cmpmi	sp, r4, asr pc
    3038:	445f544e 	ldrbmi	r5, [pc], #-1102	; 3040 <__aeabi_idivmod+0xc>
    303c:	5f5f4749 	svcpl	0x005f4749
    3040:	00343220 	eorseq	r3, r4, r0, lsr #4
    3044:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    3048:	50465f4d 	subpl	r5, r6, sp, asr #30
    304c:	00323120 	eorseq	r3, r2, r0, lsr #2
    3050:	73615f5f 	cmnvc	r1, #380	; 0x17c
    3054:	74726573 	ldrbtvc	r6, [r2], #-1395	; 0xfffffa8d
    3058:	78655f73 	stmdavc	r5!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    305c:	73756c63 	cmnvc	r5, #25344	; 0x6300
    3060:	28657669 	stmdacs	r5!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
    3064:	292e2e2e 	stmdbcs	lr!, {r1, r2, r3, r5, r9, sl, fp, sp}
    3068:	6c5f5f20 	mrrcvs	15, 2, r5, pc, cr0	; <UNPREDICTABLE>
    306c:	5f6b636f 	svcpl	0x006b636f
    3070:	6f6e6e61 	svcvs	0x006e6e61
    3074:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    3078:	73736128 	cmnvc	r3, #40, 2
    307c:	5f747265 	svcpl	0x00747265
    3080:	6c637865 	stclvs	8, cr7, [r3], #-404	; 0xfffffe6c
    3084:	76697375 			; <UNDEFINED> instruction: 0x76697375
    3088:	6f6c5f65 	svcvs	0x006c5f65
    308c:	5f286b63 	svcpl	0x00286b63
    3090:	5f41565f 	svcpl	0x0041565f
    3094:	53475241 	movtpl	r5, #29249	; 0x7241
    3098:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    309c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 21a4 <_scanf_i+0xac>
    30a0:	4343414c 	movtmi	r4, #12620	; 0x314c
    30a4:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
    30a8:	5f544942 	svcpl	0x00544942
    30ac:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    30b0:	43535f00 	cmpmi	r3, #0, 30
    30b4:	5644415f 			; <UNDEFINED> instruction: 0x5644415f
    30b8:	524f5349 	subpl	r5, pc, #603979777	; 0x24000001
    30bc:	4e495f59 	mcrmi	15, 2, r5, cr9, cr9, {2}
    30c0:	35204f46 	strcc	r4, [r0, #-3910]!	; 0xfffff0ba
    30c4:	535f0034 	cmppl	pc, #52	; 0x34
    30c8:	43425f43 	movtmi	r5, #12099	; 0x2f43
    30cc:	5341425f 	movtpl	r4, #4703	; 0x125f
    30d0:	414d5f45 	cmpmi	sp, r5, asr #30
    30d4:	37352058 			; <UNDEFINED> instruction: 0x37352058
    30d8:	765f5f00 	ldrbvc	r5, [pc], -r0, lsl #30
    30dc:	6f635f61 	svcvs	0x00635f61
    30e0:	64287970 	strtvs	r7, [r8], #-2416	; 0xfffff690
    30e4:	2029732c 	eorcs	r7, r9, ip, lsr #6
    30e8:	75625f5f 	strbvc	r5, [r2, #-3935]!	; 0xfffff0a1
    30ec:	69746c69 	ldmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    30f0:	61765f6e 	cmnvs	r6, lr, ror #30
    30f4:	706f635f 	rsbvc	r6, pc, pc, asr r3	; <UNPREDICTABLE>
    30f8:	2c642879 	stclcs	8, cr2, [r4], #-484	; 0xfffffe1c
    30fc:	5f002973 	svcpl	0x00002973
    3100:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    3104:	485f3436 	ldmdami	pc, {r1, r2, r4, r5, sl, ip, sp}^	; <UNPREDICTABLE>
    3108:	515f5341 	cmppl	pc, r1, asr #6
    310c:	54454955 	strbpl	r4, [r5], #-2389	; 0xfffff6ab
    3110:	4e414e5f 	mcrmi	14, 2, r4, cr1, cr15, {2}
    3114:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    3118:	615f5f00 	cmpvs	pc, r0, lsl #30
    311c:	72657373 	rsbvc	r7, r5, #-872415231	; 0xcc000001
    3120:	735f7374 	cmpvc	pc, #116, 6	; 0xd0000001
    3124:	65726168 	ldrbvs	r6, [r2, #-360]!	; 0xfffffe98
    3128:	2e2e2864 	cdpcs	8, 2, cr2, cr14, cr4, {3}
    312c:	5f20292e 	svcpl	0x0020292e
    3130:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    3134:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    3138:	61746f6e 	cmnvs	r4, lr, ror #30
    313c:	61286574 			; <UNDEFINED> instruction: 0x61286574
    3140:	72657373 	rsbvc	r7, r5, #-872415231	; 0xcc000001
    3144:	68735f74 	ldmdavs	r3!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    3148:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    314c:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    3150:	5f5f286b 	svcpl	0x005f286b
    3154:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    3158:	5f534752 	svcpl	0x00534752
    315c:	0029295f 	eoreq	r2, r9, pc, asr r9
    3160:	654d7a73 	strbvs	r7, [sp, #-2675]	; 0xfffff58d
    3164:	5f007373 	svcpl	0x00007373
    3168:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    316c:	5f363174 	svcpl	0x00363174
    3170:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    3174:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    3178:	00312064 	eorseq	r2, r1, r4, rrx
    317c:	6c756d5f 	ldclvs	13, cr6, [r5], #-380	; 0xfffffe84
    3180:	555f0074 	ldrbpl	r0, [pc, #-116]	; 3114 <colorMsgDanger+0x8>
    3184:	31544e49 	cmpcc	r4, r9, asr #28
    3188:	5f545f36 	svcpl	0x00545f36
    318c:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    3190:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    3194:	44450020 	strbmi	r0, [r5], #-32	; 0xffffffe0
    3198:	33204d4f 			; <UNDEFINED> instruction: 0x33204d4f
    319c:	5f5f0033 	svcpl	0x005f0033
    31a0:	43414c55 	movtmi	r4, #7253	; 0x1c55
    31a4:	5f4d5543 	svcpl	0x004d5543
    31a8:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    31ac:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    31b0:	5f5f0032 	svcpl	0x005f0032
    31b4:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    31b8:	4c494241 	sfmmi	f4, 2, [r9], {65}	; 0x41
    31bc:	5f595449 	svcpl	0x00595449
    31c0:	47415250 	smlsldmi	r5, r1, r0, r2
    31c4:	505f414d 	subspl	r4, pc, sp, asr #2
    31c8:	20485355 	subcs	r5, r8, r5, asr r3
    31cc:	415f5f00 	cmpmi	pc, r0, lsl #30
    31d0:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    31d4:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    31d8:	435f4552 	cmpmi	pc, #343932928	; 0x14800000
    31dc:	4f52504f 	svcmi	0x0052504f
    31e0:	35312043 	ldrcc	r2, [r1, #-67]!	; 0xffffffbd
    31e4:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    31e8:	5f474e4f 	svcpl	0x00474e4f
    31ec:	5f58414d 	svcpl	0x0058414d
    31f0:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    31f4:	66666637 			; <UNDEFINED> instruction: 0x66666637
    31f8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    31fc:	535f004c 	cmppl	pc, #76	; 0x4c
    3200:	5f325f43 	svcpl	0x00325f43
    3204:	54524f46 	ldrbpl	r4, [r2], #-3910	; 0xfffff0ba
    3208:	4e55525f 	mrcmi	2, 2, r5, cr5, cr15, {2}
    320c:	31313120 	teqcc	r1, r0, lsr #2
    3210:	72747300 	rsbsvc	r7, r4, #0, 6
    3214:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
    3218:	6c6f4374 	stclvs	3, cr4, [pc], #-464	; 3050 <__aeabi_idiv0>
    321c:	5f00726f 	svcpl	0x0000726f
    3220:	4345445f 	movtmi	r4, #21599	; 0x545f
    3224:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 3160 <colorMsgDefault>
    3228:	5f5f4e49 	svcpl	0x005f4e49
    322c:	2d453120 	stfcse	f3, [r5, #-128]	; 0xffffff80
    3230:	46443539 			; <UNDEFINED> instruction: 0x46443539
    3234:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 233c <_reclaim_reent+0x18>
    3238:	465f5151 			; <UNDEFINED> instruction: 0x465f5151
    323c:	5f544942 	svcpl	0x00544942
    3240:	0038205f 	eorseq	r2, r8, pc, asr r0
    3244:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    3248:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    324c:	58455f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    3250:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    3254:	32312d28 	eorscc	r2, r1, #40, 26	; 0xa00
    3258:	5f002935 	svcpl	0x00002935
    325c:	6c72626d 	lfmvs	f6, 2, [r2], #-436	; 0xfffffe4c
    3260:	735f6e65 	cmpvc	pc, #1616	; 0x650
    3264:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    3268:	425f5f00 	subsmi	r5, pc, #0, 30
    326c:	5f455459 	svcpl	0x00455459
    3270:	4544524f 	strbmi	r5, [r4, #-591]	; 0xfffffdb1
    3274:	205f5f52 	subscs	r5, pc, r2, asr pc	; <UNPREDICTABLE>
    3278:	524f5f5f 	subpl	r5, pc, #380	; 0x17c
    327c:	5f524544 	svcpl	0x00524544
    3280:	5454494c 	ldrbpl	r4, [r4], #-2380	; 0xfffff6b4
    3284:	455f454c 	ldrbmi	r4, [pc, #-1356]	; 2d40 <__udivsi3+0x218>
    3288:	4149444e 	cmpmi	r9, lr, asr #8
    328c:	005f5f4e 	subseq	r5, pc, lr, asr #30
    3290:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    3294:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    3298:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    329c:	20632029 	rsbcs	r2, r3, r9, lsr #32
    32a0:	55202323 	strpl	r2, [r0, #-803]!	; 0xfffffcdd
    32a4:	5f004c4c 	svcpl	0x00004c4c
    32a8:	6c63735f 	stclvs	3, cr7, [r3], #-380	; 0xfffffe84
    32ac:	65726165 	ldrbvs	r6, [r2, #-357]!	; 0xfffffe9b
    32b0:	70287272 	eorvc	r7, r8, r2, ror r2
    32b4:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    32b8:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    32bc:	70282829 	eorvc	r2, r8, r9, lsr #16
    32c0:	5f3e2d29 	svcpl	0x003e2d29
    32c4:	67616c66 	strbvs	r6, [r1, -r6, ror #24]!
    32c8:	3d262073 	stccc	0, cr2, [r6, #-460]!	; 0xfffffe34
    32cc:	5f287e20 	svcpl	0x00287e20
    32d0:	5245535f 	subpl	r5, r5, #2080374785	; 0x7c000001
    32d4:	5f5f7c52 	svcpl	0x005f7c52
    32d8:	464f4553 			; <UNDEFINED> instruction: 0x464f4553
    32dc:	00292929 	eoreq	r2, r9, r9, lsr #18
    32e0:	52465f5f 	subpl	r5, r6, #380	; 0x17c
    32e4:	5f544341 	svcpl	0x00544341
    32e8:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    32ec:	30205f5f 	eorcc	r5, r0, pc, asr pc
    32f0:	4c4e5f00 	mcrrmi	15, 0, r5, lr, cr0
    32f4:	5f4b4e49 	svcpl	0x004b4e49
    32f8:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    32fc:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    3300:	00204445 	eoreq	r4, r0, r5, asr #8
    3304:	4f525045 	svcmi	0x00525045
    3308:	37204f54 			; <UNDEFINED> instruction: 0x37204f54
    330c:	415f0031 	cmpmi	pc, r1, lsr r0	; <UNPREDICTABLE>
    3310:	5f49534e 	svcpl	0x0049534e
    3314:	41445453 	cmpmi	r4, r3, asr r4
    3318:	485f4752 	ldmdami	pc, {r1, r4, r6, r8, r9, sl, lr}^	; <UNPREDICTABLE>
    331c:	5f00205f 	svcpl	0x0000205f
    3320:	6c6e7566 	cfstr64vs	mvdx7, [lr], #-408	; 0xfffffe68
    3324:	666b636f 	strbtvs	r6, [fp], -pc, ror #6
    3328:	28656c69 	stmdacs	r5!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    332c:	20297066 	eorcs	r7, r9, r6, rrx
    3330:	66282828 	strtvs	r2, [r8], -r8, lsr #16
    3334:	3e2d2970 			; <UNDEFINED> instruction: 0x3e2d2970
    3338:	616c665f 	cmnvs	ip, pc, asr r6
    333c:	26207367 	strtcs	r7, [r0], -r7, ror #6
    3340:	535f5f20 	cmppl	pc, #32, 30	; 0x80
    3344:	29525453 	ldmdbcs	r2, {r0, r1, r4, r6, sl, ip, lr}^
    3348:	30203f20 	eorcc	r3, r0, r0, lsr #30
    334c:	5f203a20 	svcpl	0x00203a20
    3350:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    3354:	65725f6b 	ldrbvs	r5, [r2, #-3947]!	; 0xfffff095
    3358:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    335c:	65725f65 	ldrbvs	r5, [r2, #-3941]!	; 0xfffff09b
    3360:	73727563 	cmnvc	r2, #415236096	; 0x18c00000
    3364:	28657669 	stmdacs	r5!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
    3368:	29706628 	ldmdbcs	r0!, {r3, r5, r9, sl, sp, lr}^
    336c:	6c5f3e2d 	mrrcvs	14, 2, r3, pc, cr13	; <UNPREDICTABLE>
    3370:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    3374:	795a0029 	ldmdbvc	sl, {r0, r3, r5}^
    3378:	3037716e 	eorscc	r7, r7, lr, ror #2
    337c:	555f3030 	ldrbpl	r3, [pc, #-48]	; 3354 <__do_global_dtors_aux_fini_array_entry+0x18>
    3380:	5f545241 	svcpl	0x00545241
    3384:	444e4553 	strbmi	r4, [lr], #-1363	; 0xfffffaad
    3388:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    338c:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    3390:	5f4c4244 	svcpl	0x004c4244
    3394:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    3398:	5f4e4f4c 	svcpl	0x004e4f4c
    339c:	2e32205f 	mrccs	0, 1, r2, cr2, cr15, {2}
    33a0:	34303232 	ldrtcc	r3, [r0], #-562	; 0xfffffdce
    33a4:	34303634 	ldrtcc	r3, [r0], #-1588	; 0xfffff9cc
    33a8:	30353239 	eorscc	r3, r5, r9, lsr r2
    33ac:	31333133 	teqcc	r3, r3, lsr r1
    33b0:	36312d65 	ldrtcc	r2, [r1], -r5, ror #26
    33b4:	5f5f004c 	svcpl	0x005f004c
    33b8:	5f544c46 	svcpl	0x00544c46
    33bc:	4c415645 	mcrrmi	6, 4, r5, r1, cr5
    33c0:	54454d5f 	strbpl	r4, [r5], #-3423	; 0xfffff2a1
    33c4:	5f444f48 	svcpl	0x00444f48
    33c8:	315f5354 	cmpcc	pc, r4, asr r3	; <UNPREDICTABLE>
    33cc:	31363638 	teqcc	r6, r8, lsr r6
    33d0:	5f5f335f 	svcpl	0x005f335f
    33d4:	5f003020 	svcpl	0x00003020
    33d8:	5f51535f 	svcpl	0x0051535f
    33dc:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    33e0:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    33e4:	43450031 	movtmi	r0, #20529	; 0x5031
    33e8:	444c4948 	strbmi	r4, [ip], #-2376	; 0xfffff6b8
    33ec:	00303120 	eorseq	r3, r0, r0, lsr #2
    33f0:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    33f4:	414d544e 	cmpmi	sp, lr, asr #8
    33f8:	414d5f58 	cmpmi	sp, r8, asr pc
    33fc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3400:	66667830 			; <UNDEFINED> instruction: 0x66667830
    3404:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3408:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    340c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3410:	4c556666 	mrrcmi	6, 6, r6, r5, cr6
    3414:	4445004c 	strbmi	r0, [r5], #-76	; 0xffffffb4
    3418:	4c444145 	stfmie	f4, [r4], {69}	; 0x45
    341c:	3534204b 	ldrcc	r2, [r4, #-75]!	; 0xffffffb5
    3420:	49555f00 	ldmdbmi	r5, {r8, r9, sl, fp, ip, lr}^
    3424:	5f38544e 	svcpl	0x0038544e
    3428:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    342c:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    3430:	00204445 	eoreq	r4, r0, r5, asr #8
    3434:	53555f5f 	cmppl	r5, #380	; 0x17c
    3438:	42495f41 	submi	r5, r9, #260	; 0x104
    343c:	5f5f5449 	svcpl	0x005f5449
    3440:	00363120 	eorseq	r3, r6, r0, lsr #2
    3444:	5f43505f 	svcpl	0x0043505f
    3448:	4f4c4c41 	svcmi	0x004c4c41
    344c:	49535f43 	ldmdbmi	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    3450:	4d5f455a 	cfldr64mi	mvdx4, [pc, #-360]	; 32f0 <__global_locale+0x124>
    3454:	31204e49 			; <UNDEFINED> instruction: 0x31204e49
    3458:	5f5f0035 	svcpl	0x005f0035
    345c:	5f544c46 	svcpl	0x00544c46
    3460:	49444152 	stmdbmi	r4, {r1, r4, r6, r8, lr}^
    3464:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3468:	535f0032 	cmppl	pc, #50	; 0x32
    346c:	454c5f43 	strbmi	r5, [ip, #-3907]	; 0xfffff0bd
    3470:	324c4556 	subcc	r4, ip, #360710144	; 0x15800000
    3474:	4341435f 	movtmi	r4, #4959	; 0x135f
    3478:	535f4548 	cmppl	pc, #72, 10	; 0x12000000
    347c:	20455a49 	subcs	r5, r5, r9, asr #20
    3480:	00313331 	eorseq	r3, r1, r1, lsr r3
    3484:	4e41575f 	mcrmi	7, 2, r5, cr1, cr15, {2}
    3488:	45525f54 	ldrbmi	r5, [r2, #-3924]	; 0xfffff0ac
    348c:	5f544e45 	svcpl	0x00544e45
    3490:	4c414d53 	mcrrmi	13, 5, r4, r1, cr3
    3494:	0031204c 	eorseq	r2, r1, ip, asr #32
    3498:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    349c:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    34a0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    34a4:	5058455f 	subspl	r4, r8, pc, asr r5
    34a8:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    34ac:	00353431 	eorseq	r3, r5, r1, lsr r4
    34b0:	5f43535f 	svcpl	0x0043535f
    34b4:	45504f58 	ldrbmi	r4, [r0, #-3928]	; 0xfffff0a8
    34b8:	454c5f4e 	strbmi	r5, [ip, #-3918]	; 0xfffff0b2
    34bc:	59434147 	stmdbpl	r3, {r0, r1, r2, r6, r8, lr}^
    34c0:	00383920 	eorseq	r3, r8, r0, lsr #18
    34c4:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    34c8:	5f524d5f 	svcpl	0x00524d5f
    34cc:	504f5453 	subpl	r5, pc, r3, asr r4	; <UNPREDICTABLE>
    34d0:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    34d4:	425f315f 	subsmi	r3, pc, #-1073741801	; 0xc0000017
    34d8:	30205449 	eorcc	r5, r0, r9, asr #8
    34dc:	30303078 	eorscc	r3, r0, r8, ror r0
    34e0:	30303030 	eorscc	r3, r0, r0, lsr r0
    34e4:	72650030 	rsbvc	r0, r5, #48	; 0x30
    34e8:	206f6e72 	rsbcs	r6, pc, r2, ror lr	; <UNPREDICTABLE>
    34ec:	5f5f2a28 	svcpl	0x005f2a28
    34f0:	6e727265 	cdpvs	2, 7, cr7, cr2, cr5, {3}
    34f4:	2929286f 	stmdbcs	r9!, {r0, r1, r2, r3, r5, r6, fp, sp}
    34f8:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 3500 <__do_global_dtors_aux_fini_array_entry+0x1c4>
    34fc:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
    3500:	4255535f 	subsmi	r5, r5, #2080374785	; 0x7c000001
    3504:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    3508:	4d5f4c41 	ldclmi	12, cr4, [pc, #-260]	; 340c <__do_global_dtors_aux_fini_array_entry+0xd0>
    350c:	5f5f4e49 	svcpl	0x005f4e49
    3510:	302e3020 	eorcc	r3, lr, r0, lsr #32
    3514:	30303030 	eorscc	r3, r0, r0, lsr r0
    3518:	392d4531 	pushcc	{r0, r4, r5, r8, sl, lr}
    351c:	00464435 	subeq	r4, r6, r5, lsr r4
    3520:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    3524:	495f544e 	ldmdbmi	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    3528:	5f54494e 	svcpl	0x0054494e
    352c:	28525450 	ldmdacs	r2, {r4, r6, sl, ip, lr}^
    3530:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    3534:	6d207b20 	vstmdbvs	r0!, {d7-d22}
    3538:	65736d65 	ldrbvs	r6, [r3, #-3429]!	; 0xfffff29b
    353c:	76282874 			; <UNDEFINED> instruction: 0x76282874
    3540:	2c297261 	sfmcs	f7, 4, [r9], #-388	; 0xfffffe7c
    3544:	202c3020 	eorcs	r3, ip, r0, lsr #32
    3548:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    354c:	2a28666f 	bcs	a1cf10 <heap_size+0x9fcf10>
    3550:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    3554:	3b292929 	blcc	a4da00 <heap_size+0xa2da00>
    3558:	45525f20 	ldrbmi	r5, [r2, #-3872]	; 0xfffff0e0
    355c:	5f544e45 	svcpl	0x00544e45
    3560:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    3564:	5254505f 	subspl	r5, r4, #95	; 0x5f
    3568:	52455a5f 	subpl	r5, r5, #389120	; 0x5f000
    356c:	2844454f 	stmdacs	r4, {r0, r1, r2, r3, r6, r8, sl, lr}^
    3570:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    3574:	007d203b 	rsbseq	r2, sp, fp, lsr r0
    3578:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    357c:	5f524d5f 	svcpl	0x00524d5f
    3580:	49524150 	ldmdbmi	r2, {r4, r6, r8, lr}^
    3584:	455f5954 	ldrbmi	r5, [pc, #-2388]	; 2c38 <__udivsi3+0x110>
    3588:	204e4556 	subcs	r4, lr, r6, asr r5
    358c:	30307830 	eorscc	r7, r0, r0, lsr r8
    3590:	30303030 	eorscc	r3, r0, r0, lsr r0
    3594:	49003030 	stmdbmi	r0, {r4, r5, ip, sp}
    3598:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    359c:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    35a0:	494d5f32 	stmdbmi	sp, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    35a4:	5f5f004e 	svcpl	0x005f004e
    35a8:	43415246 	movtmi	r5, #4678	; 0x1246
    35ac:	50455f54 	subpl	r5, r5, r4, asr pc
    35b0:	4f4c4953 	svcmi	0x004c4953
    35b4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    35b8:	50317830 	eorspl	r7, r1, r0, lsr r8
    35bc:	5235312d 	eorspl	r3, r5, #1073741835	; 0x4000000b
    35c0:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    35c4:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    35c8:	414d5f58 	cmpmi	sp, r8, asr pc
    35cc:	445f544e 	ldrbmi	r5, [pc], #-1102	; 35d4 <_global_impure_ptr+0x30>
    35d0:	5f5f4749 	svcpl	0x005f4749
    35d4:	00333520 	eorseq	r3, r3, r0, lsr #10
    35d8:	454e5f5f 	strbmi	r5, [lr, #-3935]	; 0xfffff0a1
    35dc:	42494c57 	submi	r4, r9, #22272	; 0x5700
    35e0:	5441505f 	strbpl	r5, [r1], #-95	; 0xffffffa1
    35e4:	454c4843 	strbmi	r4, [ip, #-2115]	; 0xfffff7bd
    35e8:	5f4c4556 	svcpl	0x004c4556
    35ec:	0030205f 	eorseq	r2, r0, pc, asr r0
    35f0:	6f6c5f5f 	svcvs	0x006c5f5f
    35f4:	695f6b63 	ldmdbvs	pc, {r0, r1, r5, r6, r8, r9, fp, sp, lr}^	; <UNPREDICTABLE>
    35f8:	5f74696e 	svcpl	0x0074696e
    35fc:	75636572 	strbvc	r6, [r3, #-1394]!	; 0xfffffa8e
    3600:	76697372 			; <UNDEFINED> instruction: 0x76697372
    3604:	6f6c2865 	svcvs	0x006c2865
    3608:	20296b63 	eorcs	r6, r9, r3, ror #22
    360c:	6f762828 	svcvs	0x00762828
    3610:	20296469 	eorcs	r6, r9, r9, ror #8
    3614:	5f002930 	svcpl	0x00002930
    3618:	33544e49 	cmpcc	r4, #1168	; 0x490
    361c:	5f545f32 	svcpl	0x00545f32
    3620:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    3624:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    3628:	5f5f0020 	svcpl	0x005f0020
    362c:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
    3630:	4345445f 	movtmi	r4, #21599	; 0x545f
    3634:	4c414d49 	mcrrmi	13, 4, r4, r1, cr9
    3638:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    363c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    3640:	5f5f0037 	svcpl	0x005f0037
    3644:	5f544e49 	svcpl	0x00544e49
    3648:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    364c:	205f5f48 	subscs	r5, pc, r8, asr #30
    3650:	5f003233 	svcpl	0x00003233
    3654:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    3658:	5f485f4f 	svcpl	0x00485f4f
    365c:	41550020 	cmpmi	r5, r0, lsr #32
    3660:	525f5452 	subspl	r5, pc, #1375731712	; 0x52000000
    3664:	554f5458 	strbpl	r5, [pc, #-1112]	; 3214 <__global_locale+0x48>
    3668:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    366c:	4c424153 	stfmie	f4, [r2], {83}	; 0x53
    3670:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
    3674:	30303030 	eorscc	r3, r0, r0, lsr r0
    3678:	30303030 	eorscc	r3, r0, r0, lsr r0
    367c:	52415500 	subpl	r5, r1, #0, 10
    3680:	4f4d5f54 	svcmi	0x004d5f54
    3684:	434d4544 	movtmi	r4, #54596	; 0xd544
    3688:	43465f52 	movtmi	r5, #28498	; 0x6f52
    368c:	7830204d 	ldmdavc	r0!, {r0, r2, r3, r6, sp}
    3690:	30303030 	eorscc	r3, r0, r0, lsr r0
    3694:	30313030 	eorscc	r3, r1, r0, lsr r0
    3698:	425f5f00 	subsmi	r5, pc, #0, 30
    369c:	545f5449 	ldrbpl	r5, [pc], #-1097	; 36a4 <_ctype_+0x97>
    36a0:	53455059 	movtpl	r5, #20569	; 0x5059
    36a4:	4645445f 			; <UNDEFINED> instruction: 0x4645445f
    36a8:	44454e49 	strbmi	r4, [r5], #-3657	; 0xfffff1b7
    36ac:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    36b0:	4c475f00 	mcrrmi	15, 0, r5, r7, cr0
    36b4:	4c41424f 	sfmmi	f4, 2, [r1], {79}	; 0x4f
    36b8:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    36bc:	5f20544e 	svcpl	0x0020544e
    36c0:	626f6c67 	rsbvs	r6, pc, #26368	; 0x6700
    36c4:	695f6c61 	ldmdbvs	pc, {r0, r5, r6, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    36c8:	7275706d 	rsbsvc	r7, r5, #109	; 0x6d
    36cc:	74705f65 	ldrbtvc	r5, [r0], #-3941	; 0xfffff09b
    36d0:	5f5f0072 	svcpl	0x005f0072
    36d4:	36544c46 	ldrbcc	r4, [r4], -r6, asr #24
    36d8:	49445f34 	stmdbmi	r4, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    36dc:	205f5f47 	subscs	r5, pc, r7, asr #30
    36e0:	5f003531 	svcpl	0x00003531
    36e4:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    36e8:	4f454e5f 	svcmi	0x00454e5f
    36ec:	5f5f004e 	svcpl	0x005f004e
    36f0:	6b616577 	blvs	185ccd4 <_end+0x85ccd4>
    36f4:	6665725f 			; <UNDEFINED> instruction: 0x6665725f
    36f8:	6e657265 	cdpvs	2, 6, cr7, cr5, cr5, {3}
    36fc:	73286563 			; <UNDEFINED> instruction: 0x73286563
    3700:	612c6d79 			; <UNDEFINED> instruction: 0x612c6d79
    3704:	7361696c 	cmnvc	r1, #108, 18	; 0x1b0000
    3708:	5f5f2029 	svcpl	0x005f2029
    370c:	5f6d7361 	svcpl	0x006d7361
    3710:	2e22285f 	mcrcs	8, 1, r2, cr2, cr15, {2}
    3714:	6b616577 	blvs	185ccf8 <_end+0x85ccf8>
    3718:	23202220 			; <UNDEFINED> instruction: 0x23202220
    371c:	61696c61 	cmnvs	r9, r1, ror #24
    3720:	203b2973 	eorscs	r2, fp, r3, ror r9
    3724:	73615f5f 	cmnvc	r1, #380	; 0x17c
    3728:	285f5f6d 	ldmdacs	pc, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    372c:	71652e22 	cmnvc	r5, r2, lsr #28
    3730:	20222075 	eorcs	r2, r2, r5, ror r0
    3734:	696c6123 	stmdbvs	ip!, {r0, r1, r5, r8, sp, lr}^
    3738:	22207361 	eorcs	r7, r0, #-2080374783	; 0x84000001
    373c:	2022202c 	eorcs	r2, r2, ip, lsr #32
    3740:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    3744:	525f0029 	subspl	r0, pc, #41	; 0x29
    3748:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    374c:	5f504d5f 	svcpl	0x00504d5f
    3750:	55534552 	ldrbpl	r4, [r3, #-1362]	; 0xfffffaae
    3754:	7028544c 	eorvc	r5, r8, ip, asr #8
    3758:	20297274 	eorcs	r7, r9, r4, ror r2
    375c:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    3760:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    3764:	2d706d5f 	ldclcs	13, cr6, [r0, #-380]!	; 0xfffffe84
    3768:	65725f3e 	ldrbvs	r5, [r2, #-3902]!	; 0xfffff0c2
    376c:	746c7573 	strbtvc	r7, [ip], #-1395	; 0xfffffa8d
    3770:	5f5f0029 	svcpl	0x005f0029
    3774:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    3778:	745f3436 	ldrbvc	r3, [pc], #-1078	; 3780 <sNickname+0x34>
    377c:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    3780:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    3784:	5f003120 	svcpl	0x00003120
    3788:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
    378c:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    3790:	43445f31 	movtmi	r5, #20273	; 0x4f31
    3794:	45484341 	strbmi	r4, [r8, #-833]	; 0xfffffcbf
    3798:	5353415f 	cmppl	r3, #-1073741801	; 0xc0000017
    379c:	3120434f 			; <UNDEFINED> instruction: 0x3120434f
    37a0:	5f003932 	svcpl	0x00003932
    37a4:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    37a8:	4b494c43 	blmi	12568bc <_end+0x2568bc>
    37ac:	55425f45 	strbpl	r5, [r2, #-3909]	; 0xfffff0bb
    37b0:	49544c49 	ldmdbmi	r4, {r0, r3, r6, sl, fp, lr}^
    37b4:	454e5f4e 	strbmi	r5, [lr, #-3918]	; 0xfffff0b2
    37b8:	415f5458 	cmpmi	pc, r8, asr r4	; <UNPREDICTABLE>
    37bc:	31204752 			; <UNDEFINED> instruction: 0x31204752
    37c0:	49555f00 	ldmdbmi	r5, {r8, r9, sl, fp, ip, lr}^
    37c4:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    37c8:	445f545f 	ldrbmi	r5, [pc], #-1119	; 37d0 <sUsername+0x34>
    37cc:	414c4345 	cmpmi	ip, r5, asr #6
    37d0:	20444552 	subcs	r4, r4, r2, asr r5
    37d4:	52415500 	subpl	r5, r1, #0, 10
    37d8:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    37dc:	4558545f 	ldrbmi	r5, [r8, #-1119]	; 0xfffffba1
    37e0:	5954504d 	ldmdbpl	r4, {r0, r2, r3, r6, ip, lr}^
    37e4:	30783020 	rsbscc	r3, r8, r0, lsr #32
    37e8:	30303030 	eorscc	r3, r0, r0, lsr r0
    37ec:	00383030 	eorseq	r3, r8, r0, lsr r0
    37f0:	5f43505f 	svcpl	0x0043505f
    37f4:	4b4e494c 	blmi	1395d2c <_end+0x395d2c>
    37f8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    37fc:	5f003020 	svcpl	0x00003020
    3800:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    3804:	5f583233 	svcpl	0x00583233
    3808:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
    380c:	5f4c414d 	svcpl	0x004c414d
    3810:	5f474944 	svcpl	0x00474944
    3814:	3731205f 			; <UNDEFINED> instruction: 0x3731205f
    3818:	4c425f00 	mcrrmi	15, 0, r5, r2, cr0
    381c:	544e434b 	strbpl	r4, [lr], #-843	; 0xfffffcb5
    3820:	445f545f 	ldrbmi	r5, [pc], #-1119	; 3828 <__bss_end__+0x38>
    3824:	414c4345 	cmpmi	ip, r5, asr #6
    3828:	20444552 	subcs	r4, r4, r2, asr r5
    382c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    3830:	415f4343 	cmpmi	pc, r3, asr #6
    3834:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    3838:	48435f43 	stmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    383c:	32335241 	eorscc	r5, r3, #268435460	; 0x10000004
    3840:	4c5f545f 	cfldrdmi	mvd5, [pc], {95}	; 0x5f
    3844:	5f4b434f 	svcpl	0x004b434f
    3848:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    384c:	45003220 	strmi	r3, [r0, #-544]	; 0xfffffde0
    3850:	43544f4e 	cmpmi	r4, #312	; 0x138
    3854:	204e4e4f 	subcs	r4, lr, pc, asr #28
    3858:	00383231 	eorseq	r3, r8, r1, lsr r2
    385c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    3860:	5f363154 	svcpl	0x00363154
    3864:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    3868:	73205f5f 			; <UNDEFINED> instruction: 0x73205f5f
    386c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
    3870:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    3874:	666f5f00 	strbtvs	r5, [pc], -r0, lsl #30
    3878:	00745f66 	rsbseq	r5, r4, r6, ror #30
    387c:	52465f5f 	subpl	r5, r6, #380	; 0x17c
    3880:	5f544341 	svcpl	0x00544341
    3884:	5f4e494d 	svcpl	0x004e494d
    3888:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    388c:	52352e30 	eorspl	r2, r5, #48, 28	; 0x300
    3890:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    3894:	5f002952 	svcpl	0x00002952
    3898:	464c555f 			; <UNDEFINED> instruction: 0x464c555f
    389c:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    38a0:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    38a4:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    38a8:	5f003233 	svcpl	0x00003233
    38ac:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    38b0:	4b494c43 	blmi	12569c4 <_end+0x2569c4>
    38b4:	55425f45 	strbpl	r5, [r2, #-3909]	; 0xfffff0bb
    38b8:	49544c49 	ldmdbmi	r4, {r0, r3, r6, sl, fp, lr}^
    38bc:	454d5f4e 	strbmi	r5, [sp, #-3918]	; 0xfffff0b2
    38c0:	5950434d 	ldmdbpl	r0, {r0, r2, r3, r6, r8, r9, lr}^
    38c4:	46003120 	strmi	r3, [r0], -r0, lsr #2
    38c8:	44574f4c 	ldrbmi	r4, [r7], #-3916	; 0xfffff0b4
    38cc:	5f004c45 	svcpl	0x00004c45
    38d0:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    38d4:	69735f74 	ldmdbvs	r3!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    38d8:	745f657a 	ldrbvc	r6, [pc], #-1402	; 38e0 <__bss_end__+0xf0>
    38dc:	0020685f 	eoreq	r6, r0, pc, asr r8
    38e0:	79735f5f 	ldmdbvc	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    38e4:	65645f6d 	strbvs	r5, [r4, #-3949]!	; 0xfffff093
    38e8:	6c756166 	ldfvse	f6, [r5], #-408	; 0xfffffe68
    38ec:	79732874 	ldmdbvc	r3!, {r2, r4, r5, r6, fp, sp}^
    38f0:	6d692c6d 	stclvs	12, cr2, [r9, #-436]!	; 0xfffffe4c
    38f4:	762c6c70 			; <UNDEFINED> instruction: 0x762c6c70
    38f8:	64697265 	strbtvs	r7, [r9], #-613	; 0xfffffd9b
    38fc:	5f5f2029 	svcpl	0x005f2029
    3900:	5f6d7361 	svcpl	0x006d7361
    3904:	2e22285f 	mcrcs	8, 1, r2, cr2, cr15, {2}
    3908:	766d7973 			; <UNDEFINED> instruction: 0x766d7973
    390c:	22207265 	eorcs	r7, r0, #1342177286	; 0x50000006
    3910:	6d692320 	stclvs	3, cr2, [r9, #-128]!	; 0xffffff80
    3914:	22206c70 	eorcs	r6, r0, #112, 24	; 0x7000
    3918:	2022202c 	eorcs	r2, r2, ip, lsr #32
    391c:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    3920:	40402220 	submi	r2, r0, r0, lsr #4
    3924:	76232022 	strtvc	r2, [r3], -r2, lsr #32
    3928:	64697265 	strbtvs	r7, [r9], #-613	; 0xfffffd9b
    392c:	4e450029 	cdpmi	0, 4, cr0, cr5, cr9, {1}
    3930:	45525445 	ldrbmi	r5, [r2, #-1093]	; 0xfffffbbb
    3934:	20544553 	subscs	r4, r4, r3, asr r5
    3938:	00363231 	eorseq	r3, r6, r1, lsr r2
    393c:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    3940:	5f52435f 	svcpl	0x0052435f
    3944:	455f5852 	ldrbmi	r5, [pc, #-2130]	; 30fa <colorMsgWarning+0xe>
    3948:	7830204e 	ldmdavc	r0!, {r1, r2, r3, r6, sp}
    394c:	30303030 	eorscc	r3, r0, r0, lsr r0
    3950:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    3954:	43535f00 	cmpmi	r3, #0, 30
    3958:	4152545f 	cmpmi	r2, pc, asr r4
    395c:	38204543 	stmdacc	r0!, {r0, r1, r6, r8, sl, lr}
    3960:	6c5f0033 	mrrcvs	0, 3, r0, pc, cr3	; <UNPREDICTABLE>
    3964:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
    3968:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    396c:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
    3970:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    3974:	415f4343 	cmpmi	pc, r3, asr #6
    3978:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    397c:	4f4c5f43 	svcmi	0x004c5f43
    3980:	4c5f474e 	mrrcmi	7, 4, r4, pc, cr14	; <UNPREDICTABLE>
    3984:	5f4b434f 	svcpl	0x004b434f
    3988:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    398c:	5f003220 	svcpl	0x00003220
    3990:	5f434347 	svcpl	0x00434347
    3994:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    3998:	485f544e 	ldmdami	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    399c:	54500020 	ldrbpl	r0, [r0], #-32	; 0xffffffe0
    39a0:	46494452 			; <UNDEFINED> instruction: 0x46494452
    39a4:	414d5f46 	cmpmi	sp, r6, asr #30
    39a8:	5f5f2058 	svcpl	0x005f2058
    39ac:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    39b0:	5f464649 	svcpl	0x00464649
    39b4:	5f58414d 	svcpl	0x0058414d
    39b8:	5445005f 	strbpl	r0, [r5], #-95	; 0xffffffa1
    39bc:	20454d49 	subcs	r4, r5, r9, asr #26
    39c0:	45003236 	strmi	r3, [r0, #-566]	; 0xfffffdca
    39c4:	474e4152 	smlsldmi	r4, lr, r2, r1
    39c8:	34332045 	ldrtcc	r2, [r3], #-69	; 0xffffffbb
    39cc:	5f5f5f00 	svcpl	0x005f5f00
    39d0:	5f746e69 	svcpl	0x00746e69
    39d4:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    39d8:	5f323374 	svcpl	0x00323374
    39dc:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    39e0:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    39e4:	00312064 	eorseq	r2, r1, r4, rrx
    39e8:	6f635f5f 	svcvs	0x00635f5f
    39ec:	00746e75 	rsbseq	r6, r4, r5, ror lr
    39f0:	5f43535f 	svcpl	0x0043535f
    39f4:	45504f58 	ldrbmi	r4, [r0, #-3928]	; 0xfffff0a8
    39f8:	4e455f4e 	cdpmi	15, 4, cr5, cr5, cr14, {2}
    39fc:	31495f48 	cmpcc	r9, r8, asr #30
    3a00:	39204e38 	stmdbcc	r0!, {r3, r4, r5, r9, sl, fp, lr}
    3a04:	5f5f0037 	svcpl	0x005f0037
    3a08:	544e4957 	strbpl	r4, [lr], #-2391	; 0xfffff6a9
    3a0c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    3a10:	30205f5f 	eorcc	r5, r0, pc, asr pc
    3a14:	5f5f0055 	svcpl	0x005f0055
    3a18:	4f504d49 	svcmi	0x00504d49
    3a1c:	00205452 	eoreq	r5, r0, r2, asr r4
    3a20:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    3a24:	4d5f5841 	ldclmi	8, cr5, [pc, #-260]	; 3928 <__bss_end__+0x138>
    3a28:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    3a2c:	544e492d 	strbpl	r4, [lr], #-2349	; 0xfffff6d3
    3a30:	5f58414d 	svcpl	0x0058414d
    3a34:	2058414d 	subscs	r4, r8, sp, asr #2
    3a38:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    3a3c:	415f5f00 	cmpmi	pc, r0, lsl #30
    3a40:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    3a44:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    3a48:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    3a4c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    3a50:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    3a54:	004b3531 	subeq	r3, fp, r1, lsr r5
    3a58:	59454b5f 	stmdbpl	r5, {r0, r1, r2, r3, r4, r6, r8, r9, fp, lr}^
    3a5c:	445f545f 	ldrbmi	r5, [pc], #-1119	; 3a64 <__bss_end__+0x274>
    3a60:	414c4345 	cmpmi	ip, r5, asr #6
    3a64:	20444552 	subcs	r4, r4, r2, asr r5
    3a68:	43535f00 	cmpmi	r3, #0, 30
    3a6c:	4f49415f 	svcmi	0x0049415f
    3a70:	53494c5f 	movtpl	r4, #40031	; 0x9c5f
    3a74:	5f4f4954 	svcpl	0x004f4954
    3a78:	2058414d 	subscs	r4, r8, sp, asr #2
    3a7c:	5f003433 	svcpl	0x00003433
    3a80:	325f4353 	subscc	r4, pc, #1275068417	; 0x4c000001
    3a84:	5f57535f 	svcpl	0x0057535f
    3a88:	20564544 	subscs	r4, r6, r4, asr #10
    3a8c:	00393131 	eorseq	r3, r9, r1, lsr r1
    3a90:	5f43535f 	svcpl	0x0043535f
    3a94:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
    3a98:	445f314c 	ldrbmi	r3, [pc], #-332	; 3aa0 <__bss_end__+0x2b0>
    3a9c:	48434143 	stmdami	r3, {r0, r1, r6, r8, lr}^
    3aa0:	494c5f45 	stmdbmi	ip, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    3aa4:	4953454e 	ldmdbmi	r3, {r1, r2, r3, r6, r8, sl, lr}^
    3aa8:	3120455a 			; <UNDEFINED> instruction: 0x3120455a
    3aac:	5f003033 	svcpl	0x00003033
    3ab0:	6361705f 	cmnvs	r1, #95	; 0x5f
    3ab4:	2064656b 	rsbcs	r6, r4, fp, ror #10
    3ab8:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    3abc:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    3ac0:	5f657475 	svcpl	0x00657475
    3ac4:	5f28285f 	svcpl	0x0028285f
    3ac8:	6361705f 	cmnvs	r1, #95	; 0x5f
    3acc:	5f64656b 	svcpl	0x0064656b
    3ad0:	0029295f 	eoreq	r2, r9, pc, asr r9
    3ad4:	6f635f5f 	svcvs	0x00635f5f
    3ad8:	6c69706d 	stclvs	0, cr7, [r9], #-436	; 0xfffffe4c
    3adc:	6d5f7265 	lfmvs	f7, 2, [pc, #-404]	; 3950 <__bss_end__+0x160>
    3ae0:	61626d65 	cmnvs	r2, r5, ror #26
    3ae4:	20292872 	eorcs	r2, r9, r2, ror r8
    3ae8:	73615f5f 	cmnvc	r1, #380	; 0x17c
    3aec:	5f5f206d 	svcpl	0x005f206d
    3af0:	616c6f76 	smcvs	50934	; 0xc6f6
    3af4:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    3af8:	22202228 	eorcs	r2, r0, #40, 4	; 0x80000002
    3afc:	3a203a20 	bcc	812384 <heap_size+0x7f2384>
    3b00:	22203a20 	eorcs	r3, r0, #32, 20	; 0x20000
    3b04:	6f6d656d 	svcvs	0x006d656d
    3b08:	29227972 	stmdbcs	r2!, {r1, r4, r5, r6, r8, fp, ip, sp, lr}
    3b0c:	535f5f00 	cmppl	pc, #0, 30
    3b10:	5f444956 	svcpl	0x00444956
    3b14:	49534956 	ldmdbmi	r3, {r1, r2, r4, r6, r8, fp, lr}^
    3b18:	20454c42 	subcs	r4, r5, r2, asr #24
    3b1c:	4e450030 	mcrmi	0, 2, r0, cr5, cr0, {1}
    3b20:	4e555445 	cdpmi	4, 5, cr5, cr5, cr5, {2}
    3b24:	43414552 	movtmi	r4, #5458	; 0x1552
    3b28:	31312048 	teqcc	r1, r8, asr #32
    3b2c:	5f5f0034 	svcpl	0x005f0034
    3b30:	41484357 	cmpmi	r8, r7, asr r3
    3b34:	494d5f52 	stmdbmi	sp, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    3b38:	205f5f4e 	subscs	r5, pc, lr, asr #30
    3b3c:	5f005530 	svcpl	0x00005530
    3b40:	5f74705f 	svcpl	0x0074705f
    3b44:	72617567 	rsbvc	r7, r1, #432013312	; 0x19c00000
    3b48:	5f646564 	svcpl	0x00646564
    3b4c:	78287962 	stmdavc	r8!, {r1, r5, r6, r8, fp, ip, sp, lr}
    3b50:	5f5f2029 	svcpl	0x005f2029
    3b54:	6b636f6c 	blvs	18df90c <_end+0x8df90c>
    3b58:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    3b5c:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    3b60:	74702865 	ldrbtvc	r2, [r0], #-2149	; 0xfffff79b
    3b64:	6175675f 	cmnvs	r5, pc, asr r7
    3b68:	64656472 	strbtvs	r6, [r5], #-1138	; 0xfffffb8e
    3b6c:	2879625f 	ldmdacs	r9!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
    3b70:	00292978 	eoreq	r2, r9, r8, ror r9
    3b74:	5f43535f 	svcpl	0x0043535f
    3b78:	5f595454 	svcpl	0x00595454
    3b7c:	454d414e 	strbmi	r4, [sp, #-334]	; 0xfffffeb2
    3b80:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3b84:	00313420 	eorseq	r3, r1, r0, lsr #8
    3b88:	5f43535f 	svcpl	0x0043535f
    3b8c:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    3b90:	435f4441 	cmpmi	pc, #1090519040	; 0x41000000
    3b94:	49545550 	ldmdbmi	r4, {r4, r6, r8, sl, ip, lr}^
    3b98:	3820454d 	stmdacc	r0!, {r0, r2, r3, r6, r8, sl, lr}
    3b9c:	4f460030 	svcmi	0x00460030
    3ba0:	52474552 	subpl	r4, r7, #343932928	; 0x14800000
    3ba4:	444e554f 	strbmi	r5, [lr], #-1359	; 0xfffffab1
    3ba8:	4c4f435f 	mcrrmi	3, 5, r4, pc, cr15
    3bac:	554c425f 	strbpl	r4, [ip, #-607]	; 0xfffffda1
    3bb0:	33222045 			; <UNDEFINED> instruction: 0x33222045
    3bb4:	5f002234 	svcpl	0x00002234
    3bb8:	62747663 	rsbsvs	r7, r4, #103809024	; 0x6300000
    3bbc:	5f006675 	svcpl	0x00006675
    3bc0:	5f434347 	svcpl	0x00434347
    3bc4:	41484357 	cmpmi	r8, r7, asr r3
    3bc8:	20545f52 	subscs	r5, r4, r2, asr pc
    3bcc:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    3bd0:	5f4b434f 	svcpl	0x004b434f
    3bd4:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    3bd8:	616c6328 	cmnvs	ip, r8, lsr #6
    3bdc:	6c2c7373 	stcvs	3, cr7, [ip], #-460	; 0xfffffe34
    3be0:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    3be4:	61747320 	cmnvs	r4, r0, lsr #6
    3be8:	20636974 	rsbcs	r6, r3, r4, ror r9
    3bec:	20746e69 	rsbscs	r6, r4, r9, ror #28
    3bf0:	6b636f6c 	blvs	18df9a8 <_end+0x8df9a8>
    3bf4:	30203d20 	eorcc	r3, r0, r0, lsr #26
    3bf8:	4955003b 	ldmdbmi	r5, {r0, r1, r3, r4, r5}^
    3bfc:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3c00:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    3c04:	414d5f34 	cmpmi	sp, r4, lsr pc
    3c08:	5f5f2058 	svcpl	0x005f2058
    3c0c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    3c10:	5341465f 	movtpl	r4, #5727	; 0x165f
    3c14:	5f343654 	svcpl	0x00343654
    3c18:	5f58414d 	svcpl	0x0058414d
    3c1c:	5f5f005f 	svcpl	0x005f005f
    3c20:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    3c24:	5f544341 	svcpl	0x00544341
    3c28:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    3c2c:	5f4e4f4c 	svcpl	0x004e4f4c
    3c30:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    3c34:	362d5031 			; <UNDEFINED> instruction: 0x362d5031
    3c38:	524c4c33 	subpl	r4, ip, #13056	; 0x3300
    3c3c:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3c40:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    3c44:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    3c48:	49575f34 	ldmdbmi	r7, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    3c4c:	5f485444 	svcpl	0x00485444
    3c50:	3436205f 	ldrtcc	r2, [r6], #-95	; 0xffffffa1
    3c54:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    3c58:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    3c5c:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    3c60:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    3c64:	55003531 	strpl	r3, [r0, #-1329]	; 0xfffffacf
    3c68:	5f545241 	svcpl	0x00545241
    3c6c:	505f524d 	subspl	r5, pc, sp, asr #4
    3c70:	54495241 	strbpl	r5, [r9], #-577	; 0xfffffdbf
    3c74:	414d5f59 	cmpmi	sp, r9, asr pc
    3c78:	30204b52 	eorcc	r4, r0, r2, asr fp
    3c7c:	30303078 	eorscc	r3, r0, r8, ror r0
    3c80:	31303030 	teqcc	r0, r0, lsr r0
    3c84:	5f5f0038 	svcpl	0x005f0038
    3c88:	64616564 	strbtvs	r6, [r1], #-1380	; 0xfffffa9c
    3c8c:	5f5f2032 	svcpl	0x005f2032
    3c90:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    3c94:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    3c98:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    3c9c:	6e5f5f28 	cdpvs	15, 5, cr5, cr15, cr8, {1}
    3ca0:	7465726f 	strbtvc	r7, [r5], #-623	; 0xfffffd91
    3ca4:	5f6e7275 	svcpl	0x006e7275
    3ca8:	0029295f 	eoreq	r2, r9, pc, asr r9
    3cac:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    3cb0:	735f6465 	cmpvc	pc, #1694498816	; 0x65000000
    3cb4:	5f657a69 	svcpl	0x00657a69
    3cb8:	76002074 			; <UNDEFINED> instruction: 0x76002074
    3cbc:	74735f61 	ldrbtvc	r5, [r3], #-3937	; 0xfffff09f
    3cc0:	28747261 	ldmdacs	r4!, {r0, r5, r6, r9, ip, sp, lr}^
    3cc4:	296c2c76 	stmdbcs	ip!, {r1, r2, r4, r5, r6, sl, fp, sp}^
    3cc8:	625f5f20 	subsvs	r5, pc, #32, 30	; 0x80
    3ccc:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
    3cd0:	765f6e69 	ldrbvc	r6, [pc], -r9, ror #28
    3cd4:	74735f61 	ldrbtvc	r5, [r3], #-3937	; 0xfffff09f
    3cd8:	28747261 	ldmdacs	r4!, {r0, r5, r6, r9, ip, sp, lr}^
    3cdc:	296c2c76 	stmdbcs	ip!, {r1, r2, r4, r5, r6, sl, fp, sp}^
    3ce0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 2de8 <.divsi3_skip_div0_test+0x42>
    3ce4:	4343414c 	movtmi	r4, #12620	; 0x314c
    3ce8:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 3b9c <__bss_end__+0x3ac>
    3cec:	5f5f5841 	svcpl	0x005f5841
    3cf0:	46583020 	ldrbmi	r3, [r8], -r0, lsr #32
    3cf4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3cf8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3cfc:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3d00:	50464646 	subpl	r4, r6, r6, asr #12
    3d04:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
    3d08:	5f004b4c 	svcpl	0x00004b4c
    3d0c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3d10:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 3c4c <__bss_end__+0x45c>
    3d14:	5f5f5841 	svcpl	0x005f5841
    3d18:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    3d1c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    3d20:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
    3d24:	43535f00 	cmpmi	r3, #0, 30
    3d28:	5248545f 	subpl	r5, r8, #1593835520	; 0x5f000000
    3d2c:	5f444145 	svcpl	0x00444145
    3d30:	43415453 	movtmi	r5, #5203	; 0x1453
    3d34:	494d5f4b 	stmdbmi	sp, {r0, r1, r3, r6, r8, r9, sl, fp, ip, lr}^
    3d38:	3933204e 	ldmdbcc	r3!, {r1, r2, r3, r6, sp}
    3d3c:	435f5f00 	cmpmi	pc, #0, 30
    3d40:	5f524148 	svcpl	0x00524148
    3d44:	49534e55 	ldmdbmi	r3, {r0, r2, r4, r6, r9, sl, fp, lr}^
    3d48:	44454e47 	strbmi	r4, [r5], #-3655	; 0xfffff1b9
    3d4c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    3d50:	4c564c00 	mrrcmi	12, 0, r4, r6, cr0
    3d54:	4e41445f 	mcrmi	4, 2, r4, cr1, cr15, {2}
    3d58:	20524547 	subscs	r4, r2, r7, asr #10
    3d5c:	425f0034 	subsmi	r0, pc, #52	; 0x34
    3d60:	575f4453 			; <UNDEFINED> instruction: 0x575f4453
    3d64:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    3d68:	005f545f 	subseq	r5, pc, pc, asr r4	; <UNPREDICTABLE>
    3d6c:	43535f5f 	cmpmi	r3, #380	; 0x17c
    3d70:	5f524148 	svcpl	0x00524148
    3d74:	5f58414d 	svcpl	0x0058414d
    3d78:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    3d7c:	5f006637 	svcpl	0x00006637
    3d80:	4343475f 	movtmi	r4, #14175	; 0x375f
    3d84:	5641485f 			; <UNDEFINED> instruction: 0x5641485f
    3d88:	57445f45 	strbpl	r5, [r4, -r5, asr #30]
    3d8c:	32465241 	subcc	r5, r6, #268435460	; 0x10000004
    3d90:	4946435f 	stmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, lr}^
    3d94:	4d53415f 	ldfmie	f4, [r3, #-380]	; 0xfffffe84
    3d98:	65003120 	strvs	r3, [r0, #-288]	; 0xfffffee0
    3d9c:	7269766e 	rsbvc	r7, r9, #115343360	; 0x6e00000
    3da0:	55006e6f 	strpl	r6, [r0, #-3695]	; 0xfffff191
    3da4:	5f545241 	svcpl	0x00545241
    3da8:	535f524d 	cmppl	pc, #-805306364	; 0xd0000004
    3dac:	4d504f54 	ldclmi	15, cr4, [r0, #-336]	; 0xfffffeb0
    3db0:	5f45444f 	svcpl	0x0045444f
    3db4:	4b53414d 	blmi	14d42f0 <_end+0x4d42f0>
    3db8:	30783020 	rsbscc	r3, r8, r0, lsr #32
    3dbc:	30303030 	eorscc	r3, r0, r0, lsr r0
    3dc0:	00304130 	eorseq	r4, r0, r0, lsr r1
    3dc4:	31544e49 	cmpcc	r4, r9, asr #28
    3dc8:	414d5f36 	cmpmi	sp, r6, lsr pc
    3dcc:	5f5f2058 	svcpl	0x005f2058
    3dd0:	31544e49 	cmpcc	r4, r9, asr #28
    3dd4:	414d5f36 	cmpmi	sp, r6, lsr pc
    3dd8:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    3ddc:	41535f5f 	cmpmi	r3, pc, asr pc
    3de0:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    3de4:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    3de8:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    3dec:	30205f5f 	eorcc	r5, r0, pc, asr pc
    3df0:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    3df4:	004b4837 	subeq	r4, fp, r7, lsr r8
    3df8:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    3dfc:	4152464c 	cmpmi	r2, ip, asr #12
    3e00:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 3cfc <__bss_end__+0x50c>
    3e04:	5f5f4e49 	svcpl	0x005f4e49
    3e08:	302e3020 	eorcc	r3, lr, r0, lsr #32
    3e0c:	524c4c55 	subpl	r4, ip, #21760	; 0x5500
    3e10:	775f5f00 	ldrbvc	r5, [pc, -r0, lsl #30]
    3e14:	00626863 	rsbeq	r6, r2, r3, ror #16
    3e18:	4b4f5f57 	blmi	13dbb7c <_end+0x3dbb7c>
    3e1c:	55003220 	strpl	r3, [r0, #-544]	; 0xfffffde0
    3e20:	5f545241 	svcpl	0x00545241
    3e24:	4d575852 	ldclmi	8, cr5, [r7, #-328]	; 0xfffffeb8
    3e28:	5349445f 	movtpl	r4, #37983	; 0x945f
    3e2c:	454c4241 	strbmi	r4, [ip, #-577]	; 0xfffffdbf
    3e30:	30783020 	rsbscc	r3, r8, r0, lsr #32
    3e34:	30303030 	eorscc	r3, r0, r0, lsr r0
    3e38:	00303030 	eorseq	r3, r0, r0, lsr r0
    3e3c:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    3e40:	735f6465 	cmpvc	pc, #1694498816	; 0x65000000
    3e44:	5f657a69 	svcpl	0x00657a69
    3e48:	5f5f0074 	svcpl	0x005f0074
    3e4c:	464c4c55 			; <UNDEFINED> instruction: 0x464c4c55
    3e50:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    3e54:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3e58:	30205f5f 	eorcc	r5, r0, pc, asr pc
    3e5c:	46464658 			; <UNDEFINED> instruction: 0x46464658
    3e60:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3e64:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3e68:	46464646 	strbmi	r4, [r6], -r6, asr #12
    3e6c:	362d5046 	strtcc	r5, [sp], -r6, asr #32
    3e70:	4c4c5534 	cfstr64mi	mvdx5, [ip], {52}	; 0x34
    3e74:	5f5f0052 	svcpl	0x005f0052
    3e78:	685f6d74 	ldmdavs	pc, {r2, r4, r5, r6, r8, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    3e7c:	0072756f 	rsbseq	r7, r2, pc, ror #10
    3e80:	41485f5f 	cmpmi	r8, pc, asr pc
    3e84:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    3e88:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    3e8c:	5f5f0037 	svcpl	0x005f0037
    3e90:	43434155 	movtmi	r4, #12629	; 0x3155
    3e94:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 3d48 <__bss_end__+0x558>
    3e98:	5f5f4e49 	svcpl	0x005f4e49
    3e9c:	302e3020 	eorcc	r3, lr, r0, lsr #32
    3ea0:	5f004b55 	svcpl	0x00004b55
    3ea4:	7361685f 	cmnvc	r1, #6225920	; 0x5f0000
    3ea8:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
    3eac:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
    3eb0:	52545328 	subspl	r5, r4, #40, 6	; 0xa0000000
    3eb4:	5f5f2029 	svcpl	0x005f2029
    3eb8:	5f736168 	svcpl	0x00736168
    3ebc:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    3ec0:	5f656475 	svcpl	0x00656475
    3ec4:	5453285f 	ldrbpl	r2, [r3], #-2143	; 0xfffff7a1
    3ec8:	49002952 	stmdbmi	r0, {r1, r4, r6, r8, fp, sp}
    3ecc:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    3ed0:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    3ed4:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 3e10 <__bss_end__+0x620>
    3ed8:	5f205841 	svcpl	0x00205841
    3edc:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3ee0:	41454c5f 	cmpmi	r5, pc, asr ip
    3ee4:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    3ee8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    3eec:	4b005f5f 	blmi	1bc70 <__bss_end__+0x18480>
    3ef0:	20444552 	subcs	r4, r4, r2, asr r5
    3ef4:	31785c22 	cmncc	r8, r2, lsr #24
    3ef8:	31335b42 	teqcc	r3, r2, asr #22
    3efc:	4600226d 	strmi	r2, [r0], -sp, ror #4
    3f00:	4745524f 	strbmi	r5, [r5, -pc, asr #4]
    3f04:	4e554f52 	mrcmi	15, 2, r4, cr5, cr2, {2}
    3f08:	4f435f44 	svcmi	0x00435f44
    3f0c:	45525f4c 	ldrbmi	r5, [r2, #-3916]	; 0xfffff0b4
    3f10:	33222044 			; <UNDEFINED> instruction: 0x33222044
    3f14:	5f002231 	svcpl	0x00002231
    3f18:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    3f1c:	4b494c43 	blmi	1257030 <_end+0x257030>
    3f20:	53415f45 	movtpl	r5, #8005	; 0x1f45
    3f24:	0033204d 	eorseq	r2, r3, sp, asr #32
    3f28:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    3f2c:	5f524d5f 	svcpl	0x00524d5f
    3f30:	504f5453 	subpl	r5, pc, r3, asr r4	; <UNPREDICTABLE>
    3f34:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    3f38:	4948535f 	stmdbmi	r8, {r0, r1, r2, r3, r4, r6, r8, r9, ip, lr}^
    3f3c:	36205446 	strtcc	r5, [r0], -r6, asr #8
    3f40:	52415500 	subpl	r5, r1, #0, 10
    3f44:	454d5f54 	strbmi	r5, [sp, #-3924]	; 0xfffff0ac
    3f48:	534d4544 	movtpl	r4, #54596	; 0xd544
    3f4c:	43445f52 	movtmi	r5, #20306	; 0x4f52
    3f50:	30205844 	eorcc	r5, r0, r4, asr #16
    3f54:	30303078 	eorscc	r3, r0, r8, ror r0
    3f58:	30303030 	eorscc	r3, r0, r0, lsr r0
    3f5c:	5f5f0038 	svcpl	0x005f0038
    3f60:	36434544 	strbcc	r4, [r3], -r4, asr #10
    3f64:	414d5f34 	cmpmi	sp, r4, lsr pc
    3f68:	445f544e 	ldrbmi	r5, [pc], #-1102	; 3f70 <__bss_end__+0x780>
    3f6c:	5f5f4749 	svcpl	0x005f4749
    3f70:	00363120 	eorseq	r3, r6, r0, lsr #2
    3f74:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    3f78:	41485f54 	cmpmi	r8, r4, asr pc
    3f7c:	55515f53 	ldrbpl	r5, [r1, #-3923]	; 0xfffff0ad
    3f80:	5f544549 	svcpl	0x00544549
    3f84:	5f4e414e 	svcpl	0x004e414e
    3f88:	0031205f 	eorseq	r2, r1, pc, asr r0
    3f8c:	5f43535f 	svcpl	0x0043535f
    3f90:	42505f32 	subsmi	r5, r0, #50, 30	; 0xc8
    3f94:	48435f53 	stmdami	r3, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    3f98:	504b4345 	subpl	r4, fp, r5, asr #6
    3f9c:	544e494f 	strbpl	r4, [lr], #-2383	; 0xfffff6b1
    3fa0:	35313120 	ldrcc	r3, [r1, #-288]!	; 0xfffffee0
    3fa4:	415f5f00 	cmpmi	pc, r0, lsl #30
    3fa8:	415f4d52 	cmpmi	pc, r2, asr sp	; <UNPREDICTABLE>
    3fac:	5f484352 	svcpl	0x00484352
    3fb0:	5f545845 	svcpl	0x00545845
    3fb4:	56494449 	strbpl	r4, [r9], -r9, asr #8
    3fb8:	5f005f5f 	svcpl	0x00005f5f
    3fbc:	5f434347 	svcpl	0x00434347
    3fc0:	50415257 	subpl	r5, r1, r7, asr r2
    3fc4:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    3fc8:	5f544e49 	svcpl	0x00544e49
    3fcc:	5f002048 	svcpl	0x00002048
    3fd0:	425f4353 	subsmi	r4, pc, #1275068417	; 0x4c000001
    3fd4:	49445f43 	stmdbmi	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    3fd8:	414d5f4d 	cmpmi	sp, sp, asr #30
    3fdc:	38352058 	ldmdacc	r5!, {r3, r4, r6, sp}
    3fe0:	696e5f00 	stmdbvs	lr!, {r8, r9, sl, fp, ip, lr}^
    3fe4:	0073626f 	rsbseq	r6, r3, pc, ror #4
    3fe8:	5f43535f 	svcpl	0x0043535f
    3fec:	45504f58 	ldrbmi	r4, [r0, #-3928]	; 0xfffff0a8
    3ff0:	48535f4e 	ldmdami	r3, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    3ff4:	3031204d 	eorscc	r2, r1, sp, asr #32
    3ff8:	49530033 	ldmdbmi	r3, {r0, r1, r4, r5}^
    3ffc:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    4000:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    4004:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    4008:	535f5f20 	cmppl	pc, #32, 30	; 0x80
    400c:	415f4749 	cmpmi	pc, r9, asr #14
    4010:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    4014:	414d5f43 	cmpmi	sp, r3, asr #30
    4018:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    401c:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    4020:	0052534d 	subseq	r5, r2, sp, asr #6
    4024:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    4028:	5f58414d 	svcpl	0x0058414d
    402c:	535f0043 	cmppl	pc, #67	; 0x43
    4030:	59545f43 	ldmdbpl	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    4034:	5f444550 	svcpl	0x00444550
    4038:	4f4d454d 	svcmi	0x004d454d
    403c:	4f5f5952 	svcmi	0x005f5952
    4040:	43454a42 	movtmi	r4, #23106	; 0x5a42
    4044:	39205354 	stmdbcc	r0!, {r2, r4, r6, r8, r9, ip, lr}
    4048:	5f5f0031 	svcpl	0x005f0031
    404c:	41484353 	cmpmi	r8, r3, asr r3
    4050:	49575f52 	ldmdbmi	r7, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    4054:	5f485444 	svcpl	0x00485444
    4058:	0038205f 	eorseq	r2, r8, pc, asr r0
    405c:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
    4060:	5f006f6e 	svcpl	0x00006f6e
    4064:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
    4068:	505f5245 	subspl	r5, pc, r5, asr #4
    406c:	455f5044 	ldrbmi	r5, [pc, #-68]	; 4030 <__bss_end__+0x840>
    4070:	4149444e 	cmpmi	r9, lr, asr #8
    4074:	205f5f4e 	subscs	r5, pc, lr, asr #30
    4078:	32313433 	eorscc	r3, r1, #855638016	; 0x33000000
    407c:	415f5f00 	cmpmi	pc, r0, lsl #30
    4080:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    4084:	43415f43 	movtmi	r5, #8003	; 0x1f43
    4088:	52495551 	subpl	r5, r9, #339738624	; 0x14400000
    408c:	00322045 	eorseq	r2, r2, r5, asr #32
    4090:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    4094:	5f464649 	svcpl	0x00464649
    4098:	004e494d 	subeq	r4, lr, sp, asr #18
    409c:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    40a0:	5f52535f 	svcpl	0x0052535f
    40a4:	564f5852 			; <UNDEFINED> instruction: 0x564f5852
    40a8:	78302052 	ldmdavc	r0!, {r1, r4, r6, sp}
    40ac:	30303030 	eorscc	r3, r0, r0, lsr r0
    40b0:	31303030 	teqcc	r0, r0, lsr r0
    40b4:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; 31bc <impure_data+0x50>
    40b8:	4f4e5252 	svcmi	0x004e5252
    40bc:	5f5f485f 	svcpl	0x005f485f
    40c0:	5f5f0020 	svcpl	0x005f0020
    40c4:	6d5f6d74 	ldclvs	13, cr6, [pc, #-464]	; 3efc <__bss_end__+0x70c>
    40c8:	00796164 	rsbseq	r6, r9, r4, ror #2
    40cc:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    40d0:	41465f54 	cmpmi	r6, r4, asr pc
    40d4:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    40d8:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    40dc:	5f5f4854 	svcpl	0x005f4854
    40e0:	00323320 	eorseq	r3, r2, r0, lsr #6
    40e4:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    40e8:	41465f54 	cmpmi	r6, r4, asr pc
    40ec:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    40f0:	5059545f 	subspl	r5, r9, pc, asr r4
    40f4:	205f5f45 	subscs	r5, pc, r5, asr #30
    40f8:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    40fc:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    4100:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
    4104:	5f5f0074 	svcpl	0x005f0074
    4108:	6e696f6e 	cdpvs	15, 6, cr6, cr9, cr14, {3}
    410c:	656e696c 	strbvs	r6, [lr, #-2412]!	; 0xfffff694
    4110:	615f5f20 	cmpvs	pc, r0, lsr #30
    4114:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    4118:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    411c:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    4120:	6e5f5f28 	cdpvs	15, 5, cr5, cr15, cr8, {1}
    4124:	6c6e696f 			; <UNDEFINED> instruction: 0x6c6e696f
    4128:	5f656e69 	svcpl	0x00656e69
    412c:	0029295f 	eoreq	r2, r9, pc, asr r9
    4130:	43415f5f 	movtmi	r5, #8031	; 0x1f5f
    4134:	5f4d5543 	svcpl	0x004d5543
    4138:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    413c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    4140:	5f5f0035 	svcpl	0x005f0035
    4144:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    4148:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    414c:	75705f65 	ldrbvc	r5, [r0, #-3941]!	; 0xfffff09b
    4150:	5f5f6572 	svcpl	0x005f6572
    4154:	485f0020 	ldmdami	pc, {r5}^	; <UNPREDICTABLE>
    4158:	5f455641 	svcpl	0x00455641
    415c:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    4160:	554f445f 	strbpl	r4, [pc, #-1119]	; 3d09 <__bss_end__+0x519>
    4164:	20454c42 	subcs	r4, r5, r2, asr #24
    4168:	5f5f0031 	svcpl	0x005f0031
    416c:	5f544e49 	svcpl	0x00544e49
    4170:	5341454c 	movtpl	r4, #5452	; 0x154c
    4174:	5f343654 	svcpl	0x00343654
    4178:	5f58414d 	svcpl	0x0058414d
    417c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    4180:	66666637 			; <UNDEFINED> instruction: 0x66666637
    4184:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4188:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    418c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4190:	5f004c4c 	svcpl	0x00004c4c
    4194:	72616e66 	rsbvc	r6, r1, #1632	; 0x660
    4198:	5f007367 	svcpl	0x00007367
    419c:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    41a0:	4145465f 	cmpmi	r5, pc, asr r6
    41a4:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    41a8:	4942515f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, ip, lr}^
    41ac:	00312054 	eorseq	r2, r1, r4, asr r0
    41b0:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    41b4:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    41b8:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    41bc:	20632029 	rsbcs	r2, r3, r9, lsr #32
    41c0:	55202323 	strpl	r2, [r0, #-803]!	; 0xfffffcdd
    41c4:	5f5f004c 	svcpl	0x005f004c
    41c8:	20525753 	subscs	r5, r2, r3, asr r7
    41cc:	30307830 	eorscc	r7, r0, r0, lsr r8
    41d0:	55003830 	strpl	r3, [r0, #-2096]	; 0xfffff7d0
    41d4:	33544e49 	cmpcc	r4, #1168	; 0x490
    41d8:	28435f32 	stmdacs	r3, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    41dc:	5f202963 	svcpl	0x00202963
    41e0:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    41e4:	5f323354 	svcpl	0x00323354
    41e8:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    41ec:	415f5f00 	cmpmi	pc, r0, lsl #30
    41f0:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    41f4:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    41f8:	555f4552 	ldrbpl	r4, [pc, #-1362]	; 3cae <__bss_end__+0x4be>
    41fc:	494c414e 	stmdbmi	ip, {r1, r2, r3, r6, r8, lr}^
    4200:	44454e47 	strbmi	r4, [r5], #-3655	; 0xfffff1b9
    4204:	4b003120 	blmi	1068c <__bss_end__+0xce9c>
    4208:	204e5943 	subcs	r5, lr, r3, asr #18
    420c:	31785c22 	cmncc	r8, r2, lsr #24
    4210:	36335b42 	ldrtcc	r5, [r3], -r2, asr #22
    4214:	5f00226d 	svcpl	0x0000226d
    4218:	434f4c43 	movtmi	r4, #64579	; 0xfc43
    421c:	5f44494b 	svcpl	0x0044494b
    4220:	75205f54 	strvc	r5, [r0, #-3924]!	; 0xfffff0ac
    4224:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    4228:	2064656e 	rsbcs	r6, r4, lr, ror #10
    422c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    4230:	535f5f00 	cmppl	pc, #0, 30
    4234:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    4238:	414d5f4d 	cmpmi	sp, sp, asr #30
    423c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    4240:	46375830 			; <UNDEFINED> instruction: 0x46375830
    4244:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    4248:	004b4837 	subeq	r4, fp, r7, lsr r8
    424c:	65735f5f 	ldrbvs	r5, [r3, #-3935]!	; 0xfffff0a1
    4250:	6f697463 	svcvs	0x00697463
    4254:	2978286e 	ldmdbcs	r8!, {r1, r2, r3, r5, r6, fp, sp}^
    4258:	615f5f20 	cmpvs	pc, r0, lsr #30
    425c:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    4260:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    4264:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    4268:	65735f5f 	ldrbvs	r5, [r3, #-3935]!	; 0xfffff0a1
    426c:	6f697463 	svcvs	0x00697463
    4270:	285f5f6e 	ldmdacs	pc, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    4274:	29292978 	stmdbcs	r9!, {r3, r4, r5, r6, r8, fp, sp}
    4278:	705f5f00 	subsvc	r5, pc, r0, lsl #30
    427c:	61767274 	cmnvs	r6, r4, ror r2
    4280:	2065756c 	rsbcs	r7, r5, ip, ror #10
    4284:	415f5f00 	cmpmi	pc, r0, lsl #30
    4288:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    428c:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    4290:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    4294:	5f003631 	svcpl	0x00003631
    4298:	424e535f 	submi	r5, lr, #2080374785	; 0x7c000001
    429c:	78302046 	ldmdavc	r0!, {r1, r2, r6, sp}
    42a0:	32303030 	eorscc	r3, r0, #48	; 0x30
    42a4:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    42a8:	5f544e45 	svcpl	0x00544e45
    42ac:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    42b0:	28504d5f 	ldmdacs	r0, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    42b4:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    42b8:	206f6420 	rsbcs	r6, pc, r0, lsr #8
    42bc:	7473207b 	ldrbtvc	r2, [r3], #-123	; 0xffffff85
    42c0:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
    42c4:	65725f20 	ldrbvs	r5, [r2, #-3872]!	; 0xfffff0e0
    42c8:	20746e65 	rsbscs	r6, r4, r5, ror #28
    42cc:	20725f2a 	rsbscs	r5, r2, sl, lsr #30
    42d0:	7628203d 			; <UNDEFINED> instruction: 0x7628203d
    42d4:	3b297261 	blcc	a60c60 <heap_size+0xa40c60>
    42d8:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    42dc:	706d5f3e 	rsbvc	r5, sp, lr, lsr pc
    42e0:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
    42e4:	6c757365 	ldclvs	3, cr7, [r5], #-404	; 0xfffffe6c
    42e8:	206b5f74 	rsbcs	r5, fp, r4, ror pc
    42ec:	3b30203d 	blcc	c0c3e8 <heap_size+0xbec3e8>
    42f0:	2d725f20 	ldclcs	15, cr5, [r2, #-128]!	; 0xffffff80
    42f4:	706d5f3e 	rsbvc	r5, sp, lr, lsr pc
    42f8:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
    42fc:	6c757365 	ldclvs	3, cr7, [r5], #-404	; 0xfffffe6c
    4300:	203d2074 	eorscs	r2, sp, r4, ror r0
    4304:	3e2d725f 	mcrcc	2, 1, r7, cr13, cr15, {2}
    4308:	2d706d5f 	ldclcs	13, cr6, [r0, #-380]!	; 0xfffffe84
    430c:	35705f3e 	ldrbcc	r5, [r0, #-3902]!	; 0xfffff0c2
    4310:	203d2073 	eorscs	r2, sp, r3, ror r0
    4314:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    4318:	5f203b4c 	svcpl	0x00203b4c
    431c:	5f3e2d72 	svcpl	0x003e2d72
    4320:	3e2d706d 	cdpcc	0, 2, cr7, cr13, cr13, {3}
    4324:	6572665f 	ldrbvs	r6, [r2, #-1631]!	; 0xfffff9a1
    4328:	73696c65 	cmnvc	r9, #25856	; 0x6500
    432c:	203d2074 	eorscs	r2, sp, r4, ror r0
    4330:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    4334:	7d203b4c 	vstmdbvc	r0!, {d3-<overflow reg d40>}
    4338:	69687720 	stmdbvs	r8!, {r5, r8, r9, sl, ip, sp, lr}^
    433c:	2820656c 	stmdacs	r0!, {r2, r3, r5, r6, r8, sl, sp, lr}
    4340:	55002930 	strpl	r2, [r0, #-2352]	; 0xfffff6d0
    4344:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    4348:	414d5f34 	cmpmi	sp, r4, lsr pc
    434c:	5f5f2058 	svcpl	0x005f2058
    4350:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    4354:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 4284 <__bss_end__+0xa94>
    4358:	5f5f5841 	svcpl	0x005f5841
    435c:	43535f00 	cmpmi	r3, #0, 30
    4360:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
    4364:	5f4d4145 	svcpl	0x004d4145
    4368:	2058414d 	subscs	r4, r8, sp, asr #2
    436c:	00303031 	eorseq	r3, r0, r1, lsr r0
    4370:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    4374:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    4378:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    437c:	5f5f4854 	svcpl	0x005f4854
    4380:	00343620 	eorseq	r3, r4, r0, lsr #12
    4384:	47534d45 	ldrbmi	r4, [r3, -r5, asr #26]
    4388:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    438c:	32323120 	eorscc	r3, r2, #32, 2
    4390:	45504500 	ldrbmi	r4, [r0, #-1280]	; 0xfffffb00
    4394:	31204d52 			; <UNDEFINED> instruction: 0x31204d52
    4398:	70665f00 	rsbvc	r5, r6, r0, lsl #30
    439c:	745f736f 	ldrbvc	r7, [pc], #-879	; 43a4 <__bss_end__+0xbb4>
    43a0:	52415500 	subpl	r5, r1, #0, 10
    43a4:	58495f54 	stmdapl	r9, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    43a8:	4d445f52 	stclmi	15, cr5, [r4, #-328]	; 0xfffffeb8
    43ac:	78302053 	ldmdavc	r0!, {r0, r1, r4, r6, sp}
    43b0:	30303030 	eorscc	r3, r0, r0, lsr r0
    43b4:	30303230 	eorscc	r3, r0, r0, lsr r2
    43b8:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    43bc:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    43c0:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    43c4:	575f3436 	smmlarpl	pc, r6, r4, r3	; <UNPREDICTABLE>
    43c8:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    43cc:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    43d0:	5f5f0034 	svcpl	0x005f0034
    43d4:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    43d8:	4c494241 	sfmmi	f4, 2, [r9], {65}	; 0x41
    43dc:	5f595449 	svcpl	0x00595449
    43e0:	47415250 	smlsldmi	r5, r1, r0, r2
    43e4:	505f414d 	subspl	r4, pc, sp, asr #2
    43e8:	0020504f 	eoreq	r5, r0, pc, asr #32
    43ec:	57454e5f 	smlsldpl	r4, r5, pc, lr	; <UNPREDICTABLE>
    43f0:	5f42494c 	svcpl	0x0042494c
    43f4:	53524556 	cmppl	r2, #360710144	; 0x15800000
    43f8:	5f4e4f49 	svcpl	0x004e4f49
    43fc:	205f5f48 	subscs	r5, pc, r8, asr #30
    4400:	5f5f0031 	svcpl	0x005f0031
    4404:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
    4408:	6e69775f 	mcrvs	7, 3, r7, cr9, cr15, {2}
    440c:	00745f74 	rsbseq	r5, r4, r4, ror pc
    4410:	5f43535f 	svcpl	0x0043535f
    4414:	52505845 	subspl	r5, r0, #4521984	; 0x450000
    4418:	53454e5f 	movtpl	r4, #24159	; 0x5e5f
    441c:	414d5f54 	cmpmi	sp, r4, asr pc
    4420:	34362058 	ldrtcc	r2, [r6], #-88	; 0xffffffa8
    4424:	415f5f00 	cmpmi	pc, r0, lsl #30
    4428:	335f4d52 	cmpcc	pc, #5248	; 0x1480
    442c:	54494232 	strbpl	r4, [r9], #-562	; 0xfffffdce
    4430:	4154535f 	cmpmi	r4, pc, asr r3
    4434:	31204554 			; <UNDEFINED> instruction: 0x31204554
    4438:	415f5f00 	cmpmi	pc, r0, lsl #30
    443c:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    4440:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
    4444:	4558414c 	ldrbmi	r4, [r8, #-332]	; 0xfffffeb4
    4448:	00302044 	eorseq	r2, r0, r4, asr #32
    444c:	464c5f5f 			; <UNDEFINED> instruction: 0x464c5f5f
    4450:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    4454:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    4458:	30205f5f 	eorcc	r5, r0, pc, asr pc
    445c:	46463758 			; <UNDEFINED> instruction: 0x46463758
    4460:	46464646 	strbmi	r4, [r6], -r6, asr #12
    4464:	332d5046 			; <UNDEFINED> instruction: 0x332d5046
    4468:	00524c31 	subseq	r4, r2, r1, lsr ip
    446c:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    4470:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 4370 <__bss_end__+0xb80>
    4474:	5f5f4e49 	svcpl	0x005f4e49
    4478:	322e3220 	eorcc	r3, lr, #32, 4
    447c:	37303532 			; <UNDEFINED> instruction: 0x37303532
    4480:	38353833 	ldmdacc	r5!, {r0, r1, r4, r5, fp, ip, sp}
    4484:	32373035 	eorscc	r3, r7, #53	; 0x35
    4488:	65343130 	ldrvs	r3, [r4, #-304]!	; 0xfffffed0
    448c:	3830332d 	ldmdacc	r0!, {r0, r2, r3, r5, r8, r9, ip, sp}
    4490:	535f004c 	cmppl	pc, #76	; 0x4c
    4494:	49545f43 	ldmdbmi	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    4498:	5f52454d 	svcpl	0x0052454d
    449c:	2058414d 	subscs	r4, r8, sp, asr #2
    44a0:	5f003931 	svcpl	0x00003931
    44a4:	4554494c 	ldrbmi	r4, [r4, #-2380]	; 0xfffff6b4
    44a8:	4958455f 	ldmdbmi	r8, {r0, r1, r2, r3, r4, r6, r8, sl, lr}^
    44ac:	00312054 	eorseq	r2, r1, r4, asr r0
    44b0:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    44b4:	5541425f 	strbpl	r4, [r1, #-607]	; 0xfffffda1
    44b8:	56494444 	strbpl	r4, [r9], -r4, asr #8
    44bc:	3531315f 	ldrcc	r3, [r1, #-351]!	; 0xfffffea1
    44c0:	20303032 	eorscs	r3, r0, r2, lsr r0
    44c4:	49550036 	ldmdbmi	r5, {r1, r2, r4, r5}^
    44c8:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    44cc:	31545341 	cmpcc	r4, r1, asr #6
    44d0:	414d5f36 	cmpmi	sp, r6, lsr pc
    44d4:	5f5f2058 	svcpl	0x005f2058
    44d8:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    44dc:	5341465f 	movtpl	r4, #5727	; 0x165f
    44e0:	5f363154 	svcpl	0x00363154
    44e4:	5f58414d 	svcpl	0x0058414d
    44e8:	5f5f005f 	svcpl	0x005f005f
    44ec:	4d554854 	ldclmi	8, cr4, [r5, #-336]	; 0xfffffeb0
    44f0:	4e495f42 	cdpmi	15, 4, cr5, cr9, cr2, {2}
    44f4:	57524554 			; <UNDEFINED> instruction: 0x57524554
    44f8:	5f4b524f 	svcpl	0x004b524f
    44fc:	0031205f 	eorseq	r2, r1, pc, asr r0
    4500:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
    4504:	5f6c616e 	svcpl	0x006c616e
    4508:	00667562 	rsbeq	r7, r6, r2, ror #10
    450c:	534f4e45 	movtpl	r4, #65093	; 0xfe45
    4510:	36205254 			; <UNDEFINED> instruction: 0x36205254
    4514:	495f0030 	ldmdbmi	pc, {r4, r5}^	; <UNPREDICTABLE>
    4518:	46424e4f 	strbmi	r4, [r2], -pc, asr #28
    451c:	5f003220 	svcpl	0x00003220
    4520:	6b6f6f63 	blvs	1be02b4 <_end+0xbe02b4>
    4524:	5f006569 	svcpl	0x00006569
    4528:	4341535f 	movtmi	r5, #4959	; 0x135f
    452c:	5f4d5543 	svcpl	0x004d5543
    4530:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    4534:	37205f5f 			; <UNDEFINED> instruction: 0x37205f5f
    4538:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 4540 <__bss_end__+0xd50>
    453c:	445f4c42 	ldrbmi	r4, [pc], #-3138	; 4544 <__bss_end__+0xd54>
    4540:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    4544:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    4548:	205f5f4e 	subscs	r5, pc, lr, asr #30
    454c:	6f642828 	svcvs	0x00642828
    4550:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
    4554:	392e3429 	stmdbcc	lr!, {r0, r3, r5, sl, ip, sp}
    4558:	35363034 	ldrcc	r3, [r6, #-52]!	; 0xffffffcc
    455c:	38353436 	ldmdacc	r5!, {r1, r2, r4, r5, sl, ip, sp}
    4560:	34323134 	ldrtcc	r3, [r2], #-308	; 0xfffffecc
    4564:	65343536 	ldrvs	r3, [r4, #-1334]!	; 0xfffffaca
    4568:	3432332d 	ldrtcc	r3, [r2], #-813	; 0xfffffcd3
    456c:	5f00294c 	svcpl	0x0000294c
    4570:	57454e5f 	smlsldpl	r4, r5, pc, lr	; <UNPREDICTABLE>
    4574:	5f42494c 	svcpl	0x0042494c
    4578:	0033205f 	eorseq	r2, r3, pc, asr r0
    457c:	52465f5f 	subpl	r5, r6, #380	; 0x17c
    4580:	5f544341 	svcpl	0x00544341
    4584:	5f58414d 	svcpl	0x0058414d
    4588:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    458c:	46464637 			; <UNDEFINED> instruction: 0x46464637
    4590:	35312d50 	ldrcc	r2, [r1, #-3408]!	; 0xfffff2b0
    4594:	5f5f0052 	svcpl	0x005f0052
    4598:	75746572 	ldrbvc	r6, [r4, #-1394]!	; 0xfffffa8e
    459c:	5f736e72 	svcpl	0x00736e72
    45a0:	63697774 	cmnvs	r9, #116, 14	; 0x1d00000
    45a4:	5f5f2065 	svcpl	0x005f2065
    45a8:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    45ac:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    45b0:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    45b4:	725f5f28 	subsvc	r5, pc, #40, 30	; 0xa0
    45b8:	72757465 	rsbsvc	r7, r5, #1694498816	; 0x65000000
    45bc:	745f736e 	ldrbvc	r7, [pc], #-878	; 45c4 <__bss_end__+0xdd4>
    45c0:	65636977 	strbvs	r6, [r3, #-2423]!	; 0xfffff689
    45c4:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    45c8:	43535f00 	cmpmi	r3, #0, 30
    45cc:	5f45525f 	svcpl	0x0045525f
    45d0:	5f505544 	svcpl	0x00505544
    45d4:	2058414d 	subscs	r4, r8, sp, asr #2
    45d8:	55003337 	strpl	r3, [r0, #-823]	; 0xfffffcc9
    45dc:	5f545241 	svcpl	0x00545241
    45e0:	4544454d 	strbmi	r4, [r4, #-1357]	; 0xfffffab3
    45e4:	5f52534d 	svcpl	0x0052534d
    45e8:	58525344 	ldmdapl	r2, {r2, r6, r8, r9, ip, lr}^
    45ec:	30783020 	rsbscc	r3, r8, r0, lsr #32
    45f0:	30303030 	eorscc	r3, r0, r0, lsr r0
    45f4:	00323030 	eorseq	r3, r2, r0, lsr r0
    45f8:	45524f46 	ldrbmi	r4, [r2, #-3910]	; 0xfffff0ba
    45fc:	554f5247 	strbpl	r5, [pc, #-583]	; 43bd <__bss_end__+0xbcd>
    4600:	435f444e 	cmpmi	pc, #1308622848	; 0x4e000000
    4604:	4d5f4c4f 	ldclmi	12, cr4, [pc, #-316]	; 44d0 <__bss_end__+0xce0>
    4608:	4e454741 	cdpmi	7, 4, cr4, cr5, cr1, {2}
    460c:	22204154 	eorcs	r4, r0, #84, 2
    4610:	00223533 	eoreq	r3, r2, r3, lsr r5
    4614:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    4618:	45495f43 	strbmi	r5, [r9, #-3907]	; 0xfffff0bd
    461c:	35355f43 	ldrcc	r5, [r5, #-3907]!	; 0xfffff0bd
    4620:	00322039 	eorseq	r2, r2, r9, lsr r0
    4624:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    4628:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    462c:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    4630:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    4634:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    4638:	3032322e 	eorscc	r3, r2, lr, lsr #4
    463c:	30363434 	eorscc	r3, r6, r4, lsr r4
    4640:	35323934 	ldrcc	r3, [r2, #-2356]!	; 0xfffff6cc
    4644:	33313330 	teqcc	r1, #48, 6	; 0xc0000000
    4648:	312d6531 			; <UNDEFINED> instruction: 0x312d6531
    464c:	32334636 	eorscc	r4, r3, #56623104	; 0x3600000
    4650:	5f5f0078 	svcpl	0x005f0078
    4654:	41524655 	cmpmi	r2, r5, asr r6
    4658:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    465c:	5f544942 	svcpl	0x00544942
    4660:	0030205f 	eorseq	r2, r0, pc, asr r0
    4664:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    4668:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    466c:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    4670:	4f4f425f 	svcmi	0x004f425f
    4674:	4f4c5f4c 	svcmi	0x004c5f4c
    4678:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
    467c:	20454552 	subcs	r4, r5, r2, asr r5
    4680:	5f460032 	svcpl	0x00460032
    4684:	30204b4f 	eorcc	r4, r0, pc, asr #22
    4688:	6c6f6300 	stclvs	3, cr6, [pc], #-0	; 4690 <__bss_end__+0xea0>
    468c:	734d726f 	movtvc	r7, #53871	; 0xd26f
    4690:	66654467 	strbtvs	r4, [r5], -r7, ror #8
    4694:	746c7561 	strbtvc	r7, [ip], #-1377	; 0xfffffa9f
    4698:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    469c:	5f454c49 	svcpl	0x00454c49
    46a0:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    46a4:	2064656e 	rsbcs	r6, r4, lr, ror #10
    46a8:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xfffff100
    46ac:	72726564 	rsbsvc	r6, r2, #100, 10	; 0x19000000
    46b0:	7828725f 	stmdavc	r8!, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
    46b4:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    46b8:	3e2d2978 			; <UNDEFINED> instruction: 0x3e2d2978
    46bc:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    46c0:	29727265 	ldmdbcs	r2!, {r0, r2, r5, r6, r9, ip, sp, lr}^
    46c4:	4e455f00 	cdpmi	15, 4, cr5, cr5, cr0, {0}
    46c8:	54535f44 	ldrbpl	r5, [r3], #-3908	; 0xfffff0bc
    46cc:	20435f44 	subcs	r5, r3, r4, asr #30
    46d0:	49555f00 	ldmdbmi	r5, {r8, r9, sl, fp, ip, lr}^
    46d4:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    46d8:	5f545f52 	svcpl	0x00545f52
    46dc:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    46e0:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    46e4:	535f0020 	cmppl	pc, #32
    46e8:	4f4a5f43 	svcmi	0x004a5f43
    46ec:	4f435f42 	svcmi	0x00435f42
    46f0:	4f52544e 	svcmi	0x0052544e
    46f4:	0035204c 	eorseq	r2, r5, ip, asr #32
    46f8:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    46fc:	6765525f 			; <UNDEFINED> instruction: 0x6765525f
    4700:	65747369 	ldrbvs	r7, [r4, #-873]!	; 0xfffffc97
    4704:	5f007372 	svcpl	0x00007372
    4708:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    470c:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    4710:	53495f48 	movtpl	r5, #40776	; 0x9f48
    4714:	52415f41 	subpl	r5, r1, #260	; 0x104
    4718:	0031204d 	eorseq	r2, r1, sp, asr #32
    471c:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    4720:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    4724:	4b434548 	blmi	10d5c4c <_end+0xd5c4c>
    4728:	28504d5f 	ldmdacs	r0, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    472c:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    4730:	45525f20 	ldrbmi	r5, [r2, #-3872]	; 0xfffff0e0
    4734:	5f544e45 	svcpl	0x00544e45
    4738:	43454843 	movtmi	r4, #22595	; 0x5843
    473c:	6176284b 	cmnvs	r6, fp, asr #16
    4740:	5f202c72 	svcpl	0x00202c72
    4744:	202c706d 	eorcs	r7, ip, sp, rrx
    4748:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
    474c:	5f207463 	svcpl	0x00207463
    4750:	6572706d 	ldrbvs	r7, [r2, #-109]!	; 0xffffff93
    4754:	2c2a2063 	stccs	0, cr2, [sl], #-396	; 0xfffffe74
    4758:	7a697320 	bvc	1a613e0 <_end+0xa613e0>
    475c:	20666f65 	rsbcs	r6, r6, r5, ror #30
    4760:	7628282a 	strtvc	r2, [r8], -sl, lsr #16
    4764:	2d297261 	sfmcs	f7, 4, [r9, #-388]!	; 0xfffffe7c
    4768:	706d5f3e 	rsbvc	r5, sp, lr, lsr pc
    476c:	5f202c29 	svcpl	0x00202c29
    4770:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    4774:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
    4778:	4d5f5449 	cfldrdmi	mvd5, [pc, #-292]	; 465c <__bss_end__+0xe6c>
    477c:	61762850 	cmnvs	r6, r0, asr r8
    4780:	00292972 	eoreq	r2, r9, r2, ror r9
    4784:	6c615f5f 	stclvs	15, cr5, [r1], #-380	; 0xfffffe84
    4788:	5f636f6c 	svcpl	0x00636f6c
    478c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    4790:	20297828 	eorcs	r7, r9, r8, lsr #16
    4794:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    4798:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    479c:	5f657475 	svcpl	0x00657475
    47a0:	5f28285f 	svcpl	0x0028285f
    47a4:	6c6c615f 	stfvse	f6, [ip], #-380	; 0xfffffe84
    47a8:	735f636f 	cmpvc	pc, #-1140850687	; 0xbc000001
    47ac:	5f657a69 	svcpl	0x00657a69
    47b0:	2978285f 	ldmdbcs	r8!, {r0, r1, r2, r3, r4, r6, fp, sp}^
    47b4:	5f002929 	svcpl	0x00002929
    47b8:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    47bc:	4d535f54 	ldclmi	15, cr5, [r3, #-336]	; 0xfffffeb0
    47c0:	5f4c4c41 	svcpl	0x004c4c41
    47c4:	43454843 	movtmi	r4, #22595	; 0x5843
    47c8:	4e495f4b 	cdpmi	15, 4, cr5, cr9, cr11, {2}
    47cc:	70285449 	eorvc	r5, r8, r9, asr #8
    47d0:	20297274 	eorcs	r7, r9, r4, ror r2
    47d4:	7b206f64 	blvc	82056c <heap_size+0x80056c>
    47d8:	20666920 	rsbcs	r6, r6, r0, lsr #18
    47dc:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    47e0:	26202972 			; <UNDEFINED> instruction: 0x26202972
    47e4:	28212026 	stmdacs	r1!, {r1, r2, r5, sp}
    47e8:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    47ec:	5f5f3e2d 	svcpl	0x005f3e2d
    47f0:	64696473 	strbtvs	r6, [r9], #-1139	; 0xfffffb8d
    47f4:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
    47f8:	5f5f2029 	svcpl	0x005f2029
    47fc:	696e6973 	stmdbvs	lr!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
    4800:	70282074 	eorvc	r2, r8, r4, ror r0
    4804:	3b297274 	blcc	a611dc <heap_size+0xa411dc>
    4808:	77207d20 	strvc	r7, [r0, -r0, lsr #26]!
    480c:	656c6968 	strbvs	r6, [ip, #-2408]!	; 0xfffff698
    4810:	29302820 	ldmdbcs	r0!, {r5, fp, sp}
    4814:	415f5f00 	cmpmi	pc, r0, lsl #30
    4818:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    481c:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
    4820:	5341454c 	movtpl	r4, #5452	; 0x154c
    4824:	00332045 	eorseq	r2, r3, r5, asr #32
    4828:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    482c:	5f383444 	svcpl	0x00383444
    4830:	20444441 	subcs	r4, r4, r1, asr #8
    4834:	30783028 	rsbscc	r3, r8, r8, lsr #32
    4838:	29623030 	stmdbcs	r2!, {r4, r5, ip, sp}^
    483c:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    4840:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    4844:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    4848:	49575f38 	ldmdbmi	r7, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    484c:	5f485444 	svcpl	0x00485444
    4850:	0038205f 	eorseq	r2, r8, pc, asr r0
    4854:	4d4f4e45 	stclmi	14, cr4, [pc, #-276]	; 4748 <__bss_end__+0xf58>
    4858:	31204d45 			; <UNDEFINED> instruction: 0x31204d45
    485c:	41550032 	cmpmi	r5, r2, lsr r0
    4860:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    4864:	545f5258 	ldrbpl	r5, [pc], #-600	; 486c <__bss_end__+0x107c>
    4868:	4c554658 	mrrcmi	6, 5, r4, r5, cr8
    486c:	7830204c 	ldmdavc	r0!, {r2, r3, r6, sp}
    4870:	30303030 	eorscc	r3, r0, r0, lsr r0
    4874:	30313030 	eorscc	r3, r1, r0, lsr r0
    4878:	6e695f00 	cdpvs	15, 6, cr5, cr9, cr0, {0}
    487c:	5f5f0064 	svcpl	0x005f0064
    4880:	5f544e49 	svcpl	0x00544e49
    4884:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    4888:	545f3631 	ldrbpl	r3, [pc], #-1585	; 4890 <__bss_end__+0x10a0>
    488c:	5f455059 	svcpl	0x00455059
    4890:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
    4894:	535f0074 	cmppl	pc, #116	; 0x74
    4898:	5f325f43 	svcpl	0x00325f43
    489c:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    48a0:	5245545f 	subpl	r5, r5, #1593835520	; 0x5f000000
    48a4:	3031204d 	eorscc	r2, r1, sp, asr #32
    48a8:	535f0037 	cmppl	pc, #55	; 0x37
    48ac:	5f325f43 	svcpl	0x00325f43
    48b0:	41434f4c 	cmpmi	r3, ip, asr #30
    48b4:	4544454c 	strbmi	r4, [r4, #-1356]	; 0xfffffab4
    48b8:	31312046 	teqcc	r1, r6, asr #32
    48bc:	5f5f0032 	svcpl	0x005f0032
    48c0:	5f544e49 	svcpl	0x00544e49
    48c4:	5341454c 	movtpl	r4, #5452	; 0x154c
    48c8:	5f323354 	svcpl	0x00323354
    48cc:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    48d0:	205f5f48 	subscs	r5, pc, r8, asr #30
    48d4:	5f003233 	svcpl	0x00003233
    48d8:	656c626d 	strbvs	r6, [ip, #-621]!	; 0xfffffd93
    48dc:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xfffff092
    48e0:	00657461 	rsbeq	r7, r5, r1, ror #8
    48e4:	54555f5f 	ldrbpl	r5, [r5], #-3935	; 0xfffff0a1
    48e8:	42495f51 	submi	r5, r9, #324	; 0x144
    48ec:	5f5f5449 	svcpl	0x005f5449
    48f0:	45003020 	strmi	r3, [r0, #-32]	; 0xffffffe0
    48f4:	58454f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, lr}^
    48f8:	38204345 	stmdacc	r0!, {r0, r2, r6, r8, r9, lr}
    48fc:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 4904 <__bss_end__+0x1114>
    4900:	65735f6d 	ldrbvs	r5, [r3, #-3949]!	; 0xfffff093
    4904:	525f0063 	subspl	r0, pc, #99	; 0x63
    4908:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    490c:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    4910:	4d5f4b43 	vldrmi	d20, [pc, #-268]	; 480c <__bss_end__+0x101c>
    4914:	28435349 	stmdacs	r3, {r0, r3, r6, r8, r9, ip, lr}^
    4918:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    491c:	45525f20 	ldrbmi	r5, [r2, #-3872]	; 0xfffff0e0
    4920:	5f544e45 	svcpl	0x00544e45
    4924:	43454843 	movtmi	r4, #22595	; 0x5843
    4928:	6176284b 	cmnvs	r6, fp, asr #16
    492c:	5f202c72 	svcpl	0x00202c72
    4930:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
    4934:	7473202c 	ldrbtvc	r2, [r3], #-44	; 0xffffffd4
    4938:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
    493c:	696d5f20 	stmdbvs	sp!, {r5, r8, r9, sl, fp, ip, lr}^
    4940:	725f6373 	subsvc	r6, pc, #-872415231	; 0xcc000001
    4944:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    4948:	202c2a20 	eorcs	r2, ip, r0, lsr #20
    494c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    4950:	2a20666f 	bcs	81e314 <heap_size+0x7fe314>
    4954:	61762828 	cmnvs	r6, r8, lsr #16
    4958:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    495c:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    4960:	202c2963 	eorcs	r2, ip, r3, ror #18
    4964:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    4968:	495f544e 	ldmdbmi	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    496c:	5f54494e 	svcpl	0x0054494e
    4970:	4353494d 	cmpmi	r3, #1261568	; 0x134000
    4974:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    4978:	5f002929 	svcpl	0x00002929
    497c:	6567735f 	strbvs	r7, [r7, #-863]!	; 0xfffffca1
    4980:	725f6374 	subsvc	r6, pc, #116, 6	; 0xd0000001
    4984:	725f7761 	subsvc	r7, pc, #25427968	; 0x1840000
    4988:	705f5f28 	subsvc	r5, pc, r8, lsr #30
    498c:	5f2c7274 	svcpl	0x002c7274
    4990:	2029665f 	eorcs	r6, r9, pc, asr r6
    4994:	282d2d28 	stmdacs	sp!, {r3, r5, r8, sl, fp, sp}
    4998:	29665f5f 	stmdbcs	r6!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    499c:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
    49a0:	30203c20 	eorcc	r3, r0, r0, lsr #24
    49a4:	5f203f20 	svcpl	0x00203f20
    49a8:	6772735f 			; <UNDEFINED> instruction: 0x6772735f
    49ac:	725f7465 	subsvc	r7, pc, #1694498816	; 0x65000000
    49b0:	705f5f28 	subsvc	r5, pc, r8, lsr #30
    49b4:	202c7274 	eorcs	r7, ip, r4, ror r2
    49b8:	29665f5f 	stmdbcs	r6!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    49bc:	28203a20 	stmdacs	r0!, {r5, r9, fp, ip, sp}
    49c0:	29746e69 	ldmdbcs	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    49c4:	5f282a28 	svcpl	0x00282a28
    49c8:	2d29665f 	stccs	6, cr6, [r9, #-380]!	; 0xfffffe84
    49cc:	2b705f3e 	blcs	1c1c6cc <_end+0xc1c6cc>
    49d0:	0029292b 	eoreq	r2, r9, fp, lsr #18
    49d4:	5f6e6f5f 	svcpl	0x006e6f5f
    49d8:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
    49dc:	6772615f 			; <UNDEFINED> instruction: 0x6772615f
    49e0:	5f5f0073 	svcpl	0x005f0073
    49e4:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    49e8:	575f464f 	ldrbpl	r4, [pc, -pc, asr #12]
    49ec:	5f544e49 	svcpl	0x00544e49
    49f0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    49f4:	5f5f0034 	svcpl	0x005f0034
    49f8:	4b4c4e53 	blmi	131834c <_end+0x31834c>
    49fc:	30783020 	rsbscc	r3, r8, r0, lsr #32
    4a00:	00313030 	eorseq	r3, r1, r0, lsr r0
    4a04:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    4a08:	444f4d5f 	strbmi	r4, [pc], #-3423	; 4a10 <__bss_end__+0x1220>
    4a0c:	52534d45 	subspl	r4, r3, #4416	; 0x1140
    4a10:	5354435f 	cmppl	r4, #2080374785	; 0x7c000001
    4a14:	30783020 	rsbscc	r3, r8, r0, lsr #32
    4a18:	30303030 	eorscc	r3, r0, r0, lsr r0
    4a1c:	00303130 	eorseq	r3, r0, r0, lsr r1
    4a20:	5f544e49 	svcpl	0x00544e49
    4a24:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    4a28:	494d5f38 	stmdbmi	sp, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    4a2c:	505f004e 	subspl	r0, pc, lr, asr #32
    4a30:	5f325f43 	svcpl	0x00325f43
    4a34:	4c4d5953 	mcrrmi	9, 5, r5, sp, cr3	; <UNPREDICTABLE>
    4a38:	534b4e49 	movtpl	r4, #48713	; 0xbe49
    4a3c:	00333120 	eorseq	r3, r3, r0, lsr #2
    4a40:	534f4e45 	movtpl	r4, #65093	; 0xfe45
    4a44:	32204350 	eorcc	r4, r0, #80, 6	; 0x40000001
    4a48:	5f5f0038 	svcpl	0x005f0038
    4a4c:	5f4d5241 	svcpl	0x004d5241
    4a50:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    4a54:	5f455255 	svcpl	0x00455255
    4a58:	20544153 	subscs	r4, r4, r3, asr r1
    4a5c:	5f5f0031 	svcpl	0x005f0031
    4a60:	5f544e49 	svcpl	0x00544e49
    4a64:	5f58414d 	svcpl	0x0058414d
    4a68:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    4a6c:	66666637 			; <UNDEFINED> instruction: 0x66666637
    4a70:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4a74:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    4a78:	415f5858 	cmpmi	pc, r8, asr r8	; <UNPREDICTABLE>
    4a7c:	565f4942 	ldrbpl	r4, [pc], -r2, asr #18
    4a80:	49535245 	ldmdbmi	r3, {r0, r2, r6, r9, ip, lr}^
    4a84:	31204e4f 			; <UNDEFINED> instruction: 0x31204e4f
    4a88:	00313130 	eorseq	r3, r1, r0, lsr r1
    4a8c:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
    4a90:	5f5f0065 	svcpl	0x005f0065
    4a94:	5f544c46 	svcpl	0x00544c46
    4a98:	5f58414d 	svcpl	0x0058414d
    4a9c:	2e33205f 	mrccs	0, 1, r2, cr3, cr15, {2}
    4aa0:	38323034 	ldmdacc	r2!, {r2, r4, r5, ip, sp}
    4aa4:	36343332 			; <UNDEFINED> instruction: 0x36343332
    4aa8:	35383336 	ldrcc	r3, [r8, #-822]!	; 0xfffffcca
    4aac:	36383832 			; <UNDEFINED> instruction: 0x36383832
    4ab0:	38332b65 	ldmdacc	r3!, {r0, r2, r5, r6, r8, r9, fp, sp}
    4ab4:	5f5f0046 	svcpl	0x005f0046
    4ab8:	5f544e49 	svcpl	0x00544e49
    4abc:	5341454c 	movtpl	r4, #5452	; 0x154c
    4ac0:	545f3854 	ldrbpl	r3, [pc], #-2132	; 4ac8 <__bss_end__+0x12d8>
    4ac4:	5f455059 	svcpl	0x00455059
    4ac8:	6973205f 	ldmdbvs	r3!, {r0, r1, r2, r3, r4, r6, sp}^
    4acc:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    4ad0:	61686320 	cmnvs	r8, r0, lsr #6
    4ad4:	5f5f0072 	svcpl	0x005f0072
    4ad8:	4152464c 	cmpmi	r2, ip, asr #12
    4adc:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    4ae0:	5f544942 	svcpl	0x00544942
    4ae4:	3133205f 	teqcc	r3, pc, asr r0
    4ae8:	52415500 	subpl	r5, r1, #0, 10
    4aec:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
    4af0:	4d48435f 	stclmi	3, cr4, [r8, #-380]	; 0xfffffe84
    4af4:	5f45444f 	svcpl	0x0045444f
    4af8:	46494853 			; <UNDEFINED> instruction: 0x46494853
    4afc:	00382054 	eorseq	r2, r8, r4, asr r0
    4b00:	7263775f 	rsbvc	r7, r3, #24903680	; 0x17c0000
    4b04:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
    4b08:	6174735f 	cmnvs	r4, pc, asr r3
    4b0c:	5f006574 	svcpl	0x00006574
    4b10:	5a49535f 	bpl	1259894 <_end+0x259894>
    4b14:	5f464f45 	svcpl	0x00464f45
    4b18:	41484357 	cmpmi	r8, r7, asr r3
    4b1c:	5f545f52 	svcpl	0x00545f52
    4b20:	0034205f 	eorseq	r2, r4, pc, asr r0
    4b24:	53555f5f 	cmppl	r5, #380	; 0x17c
    4b28:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    4b2c:	414d5f4d 	cmpmi	sp, sp, asr #30
    4b30:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    4b34:	46465830 			; <UNDEFINED> instruction: 0x46465830
    4b38:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    4b3c:	4b485538 	blmi	121a024 <_end+0x21a024>
    4b40:	735f5f00 	cmpvc	pc, #0, 30
    4b44:	6e6f7274 	mcrvs	2, 3, r7, cr15, cr4, {3}
    4b48:	65725f67 	ldrbvs	r5, [r2, #-3943]!	; 0xfffff099
    4b4c:	65726566 	ldrbvs	r6, [r2, #-1382]!	; 0xfffffa9a
    4b50:	2865636e 	stmdacs	r5!, {r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    4b54:	2c6d7973 			; <UNDEFINED> instruction: 0x2c6d7973
    4b58:	61696c61 	cmnvs	r9, r1, ror #24
    4b5c:	6d797373 	ldclvs	3, cr7, [r9, #-460]!	; 0xfffffe34
    4b60:	78652029 	stmdavc	r5!, {r0, r3, r5, sp}^
    4b64:	6e726574 	mrcvs	5, 3, r6, cr2, cr4, {3}
    4b68:	745f5f20 	ldrbvc	r5, [pc], #-3872	; 4b70 <__bss_end__+0x1380>
    4b6c:	6f657079 	svcvs	0x00657079
    4b70:	73282066 			; <UNDEFINED> instruction: 0x73282066
    4b74:	20296d79 	eorcs	r6, r9, r9, ror sp
    4b78:	61696c61 	cmnvs	r9, r1, ror #24
    4b7c:	6d797373 	ldclvs	3, cr7, [r9, #-460]!	; 0xfffffe34
    4b80:	615f5f20 	cmpvs	pc, r0, lsr #30
    4b84:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    4b88:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    4b8c:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    4b90:	615f5f28 	cmpvs	pc, r8, lsr #30
    4b94:	7361696c 	cmnvc	r1, #108, 18	; 0x1b0000
    4b98:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    4b9c:	6d797323 	ldclvs	3, cr7, [r9, #-140]!	; 0xffffff74
    4ba0:	00292929 	eoreq	r2, r9, r9, lsr #18
    4ba4:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    4ba8:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 4a60 <__bss_end__+0x1270>
    4bac:	5f5f5841 	svcpl	0x005f5841
    4bb0:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    4bb4:	5f5f0066 	svcpl	0x005f0066
    4bb8:	5f544e49 	svcpl	0x00544e49
    4bbc:	5341454c 	movtpl	r4, #5452	; 0x154c
    4bc0:	5f323354 	svcpl	0x00323354
    4bc4:	5f58414d 	svcpl	0x0058414d
    4bc8:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    4bcc:	66666637 			; <UNDEFINED> instruction: 0x66666637
    4bd0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4bd4:	525f004c 	subspl	r0, pc, #76	; 0x4c
    4bd8:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    4bdc:	5f504d5f 	svcpl	0x00504d5f
    4be0:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    4be4:	5453494c 	ldrbpl	r4, [r3], #-2380	; 0xfffff6b4
    4be8:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4bec:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    4bf0:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4bf4:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 4b48 <__bss_end__+0x1358>
    4bf8:	5f3e2d70 	svcpl	0x003e2d70
    4bfc:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
    4c00:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
    4c04:	5f5f0029 	svcpl	0x005f0029
    4c08:	43554e47 	cmpmi	r5, #1136	; 0x470
    4c0c:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
    4c10:	4955425f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r9, lr}^
    4c14:	4e49544c 	cdpmi	4, 4, cr5, cr9, cr12, {2}
    4c18:	5241565f 	subpl	r5, r1, #99614720	; 0x5f00000
    4c1c:	53475241 	movtpl	r5, #29249	; 0x7241
    4c20:	5f003120 	svcpl	0x00003120
    4c24:	78616d4b 	stmdavc	r1!, {r0, r1, r3, r6, r8, sl, fp, sp, lr}^
    4c28:	69732820 	ldmdbvs	r3!, {r5, fp, sp}^
    4c2c:	666f657a 			; <UNDEFINED> instruction: 0x666f657a
    4c30:	69732820 	ldmdbvs	r3!, {r5, fp, sp}^
    4c34:	745f657a 	ldrbvc	r6, [pc], #-1402	; 4c3c <__bss_end__+0x144c>
    4c38:	3c3c2029 	ldccc	0, cr2, [ip], #-164	; 0xffffff5c
    4c3c:	00293320 	eoreq	r3, r9, r0, lsr #6
    4c40:	53415f5f 	movtpl	r5, #8031	; 0x1f5f
    4c44:	4d414e4d 	stclmi	14, cr4, [r1, #-308]	; 0xfffffecc
    4c48:	6e632845 	cdpvs	8, 6, cr2, cr3, cr5, {2}
    4c4c:	29656d61 	stmdbcs	r5!, {r0, r5, r6, r8, sl, fp, sp, lr}^
    4c50:	585f5f20 	ldmdapl	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    4c54:	49525453 	ldmdbmi	r2, {r0, r1, r4, r6, sl, ip, lr}^
    4c58:	2820474e 	stmdacs	r0!, {r1, r2, r3, r6, r8, r9, sl, lr}
    4c5c:	53555f5f 	cmppl	r5, #380	; 0x17c
    4c60:	4c5f5245 	lfmmi	f5, 2, [pc], {69}	; 0x45
    4c64:	4c454241 	sfmmi	f4, 2, [r5], {65}	; 0x41
    4c68:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    4c6c:	5f584946 	svcpl	0x00584946
    4c70:	6320295f 			; <UNDEFINED> instruction: 0x6320295f
    4c74:	656d616e 	strbvs	r6, [sp, #-366]!	; 0xfffffe92
    4c78:	545f5f00 	ldrbpl	r5, [pc], #-3840	; 4c80 <__bss_end__+0x1490>
    4c7c:	424d5548 	submi	r5, sp, #72, 10	; 0x12000000
    4c80:	5f5f4c45 	svcpl	0x005f4c45
    4c84:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 3d8c <__bss_end__+0x59c>
    4c88:	43434153 	movtmi	r4, #12627	; 0x3153
    4c8c:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; 3f3f <__bss_end__+0x74f>
    4c90:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    4c94:	5f5f4e4f 	svcpl	0x005f4e4f
    4c98:	31783020 	cmncc	r8, r0, lsr #32
    4c9c:	55382d50 	ldrpl	r2, [r8, #-3408]!	; 0xfffff2b0
    4ca0:	5f004b48 	svcpl	0x00004b48
    4ca4:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
    4ca8:	656c5f74 	strbvs	r5, [ip, #-3956]!	; 0xfffff08c
    4cac:	31747361 	cmncc	r4, r1, ror #6
    4cb0:	5f745f36 	svcpl	0x00745f36
    4cb4:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    4cb8:	2064656e 	rsbcs	r6, r4, lr, ror #10
    4cbc:	45530031 	ldrbmi	r0, [r3, #-49]	; 0xffffffcf
    4cc0:	455f4b45 	ldrbmi	r4, [pc, #-2885]	; 4183 <__bss_end__+0x993>
    4cc4:	3220444e 	eorcc	r4, r0, #1308622848	; 0x4e000000
    4cc8:	4c435f00 	mcrrmi	15, 0, r5, r3, cr0
    4ccc:	494b434f 	stmdbmi	fp, {r0, r1, r2, r3, r6, r8, r9, lr}^
    4cd0:	5f545f44 	svcpl	0x00545f44
    4cd4:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    4cd8:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    4cdc:	525f0020 	subspl	r0, pc, #32
    4ce0:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    4ce4:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    4ce8:	5f383444 	svcpl	0x00383444
    4cec:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
    4cf0:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4cf4:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    4cf8:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    4cfc:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
    4d00:	3e2d3834 	mcrcc	8, 1, r3, cr13, cr4, {1}
    4d04:	6565735f 	strbvs	r7, [r5, #-863]!	; 0xfffffca1
    4d08:	5f002964 	svcpl	0x00002964
    4d0c:	325f4353 	subscc	r4, pc, #1275068417	; 0x4c000001
    4d10:	5342505f 	movtpl	r5, #8287	; 0x205f
    4d14:	4343415f 	movtmi	r4, #12639	; 0x315f
    4d18:	544e554f 	strbpl	r5, [lr], #-1359	; 0xfffffab1
    4d1c:	20474e49 	subcs	r4, r7, r9, asr #28
    4d20:	00343131 	eorseq	r3, r4, r1, lsr r1
    4d24:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    4d28:	5a49535f 	bpl	1259aac <_end+0x259aac>
    4d2c:	5f545f45 	svcpl	0x00545f45
    4d30:	5f002048 	svcpl	0x00002048
    4d34:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    4d38:	45445f4c 	strbmi	r5, [r4, #-3916]	; 0xfffff0b4
    4d3c:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    4d40:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    4d44:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    4d48:	3034392e 	eorscc	r3, r4, lr, lsr #18
    4d4c:	34363536 	ldrtcc	r3, [r6], #-1334	; 0xfffffaca
    4d50:	31343835 	teqcc	r4, r5, lsr r8
    4d54:	35363432 	ldrcc	r3, [r6, #-1074]!	; 0xfffffbce
    4d58:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    4d5c:	004c3432 	subeq	r3, ip, r2, lsr r4
    4d60:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    4d64:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    4d68:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    4d6c:	20632029 	rsbcs	r2, r3, r9, lsr #32
    4d70:	4c202323 	stcmi	3, cr2, [r0], #-140	; 0xffffff74
    4d74:	5f5f004c 	svcpl	0x005f004c
    4d78:	4343414c 	movtmi	r4, #12620	; 0x314c
    4d7c:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 4c30 <__bss_end__+0x1440>
    4d80:	5f5f4e49 	svcpl	0x005f4e49
    4d84:	302d2820 	eorcc	r2, sp, r0, lsr #16
    4d88:	33503158 	cmpcc	r0, #88, 2
    4d8c:	2d4b4c31 	stclcs	12, cr4, [fp, #-196]	; 0xffffff3c
    4d90:	50315830 	eorspl	r5, r1, r0, lsr r8
    4d94:	4b4c3133 	blmi	1311268 <_end+0x311268>
    4d98:	5f5f0029 	svcpl	0x005f0029
    4d9c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    4da0:	5341465f 	movtpl	r4, #5727	; 0x165f
    4da4:	5f363154 	svcpl	0x00363154
    4da8:	5f58414d 	svcpl	0x0058414d
    4dac:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    4db0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4db4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4db8:	41550055 	cmpmi	r5, r5, asr r0
    4dbc:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    4dc0:	58545f52 	ldmdapl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    4dc4:	4c4c5546 	cfstr64mi	mvdx5, [ip], {70}	; 0x46
    4dc8:	30783020 	rsbscc	r3, r8, r0, lsr #32
    4dcc:	30303030 	eorscc	r3, r0, r0, lsr r0
    4dd0:	00303130 	eorseq	r3, r0, r0, lsr r1
    4dd4:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    4dd8:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    4ddc:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    4de0:	59545f34 	ldmdbpl	r4, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    4de4:	5f5f4550 	svcpl	0x005f4550
    4de8:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    4dec:	6f6c2067 	svcvs	0x006c2067
    4df0:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
    4df4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    4df8:	2064656e 	rsbcs	r6, r4, lr, ror #10
    4dfc:	00746e69 	rsbseq	r6, r4, r9, ror #28
    4e00:	5f43535f 	svcpl	0x0043535f
    4e04:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    4e08:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    4e0c:	00383620 	eorseq	r3, r8, r0, lsr #12
    4e10:	6576656c 	ldrbvs	r6, [r6, #-1388]!	; 0xfffffa94
    4e14:	5f5f006c 	svcpl	0x005f006c
    4e18:	6b636f6c 	blvs	18e0bd0 <_end+0x8e0bd0>
    4e1c:	68735f73 	ldmdavs	r3!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    4e20:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    4e24:	2e2e2e28 	cdpcs	14, 2, cr2, cr14, cr8, {1}
    4e28:	5f5f2029 	svcpl	0x005f2029
    4e2c:	6b636f6c 	blvs	18e0be4 <_end+0x8e0be4>
    4e30:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    4e34:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    4e38:	68732865 	ldmdavs	r3!, {r0, r2, r5, r6, fp, sp}^
    4e3c:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    4e40:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    4e44:	75665f6b 	strbvc	r5, [r6, #-3947]!	; 0xfffff095
    4e48:	6974636e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    4e4c:	5f286e6f 	svcpl	0x00286e6f
    4e50:	5f41565f 	svcpl	0x0041565f
    4e54:	53475241 	movtpl	r5, #29249	; 0x7241
    4e58:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    4e5c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    4e60:	4c43554e 	cfstr64mi	mvdx5, [r3], {78}	; 0x4e
    4e64:	5f454b49 	svcpl	0x00454b49
    4e68:	4c495542 	cfstr64mi	mvdx5, [r9], {66}	; 0x42
    4e6c:	5f4e4954 	svcpl	0x004e4954
    4e70:	4c414156 	stfmie	f4, [r1], {86}	; 0x56
    4e74:	20545349 	subscs	r5, r4, r9, asr #6
    4e78:	5f5f0031 	svcpl	0x005f0031
    4e7c:	41524655 	cmpmi	r2, r5, asr r6
    4e80:	455f5443 	ldrbmi	r5, [pc, #-1091]	; 4a45 <__bss_end__+0x1255>
    4e84:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    4e88:	5f5f4e4f 	svcpl	0x005f4e4f
    4e8c:	31783020 	cmncc	r8, r0, lsr #32
    4e90:	36312d50 			; <UNDEFINED> instruction: 0x36312d50
    4e94:	5f005255 	svcpl	0x00005255
    4e98:	545f4353 	ldrbpl	r4, [pc], #-851	; 4ea0 <__bss_end__+0x16b0>
    4e9c:	41455248 	cmpmi	r5, r8, asr #4
    4ea0:	52505f44 	subspl	r5, r0, #68, 30	; 0x110
    4ea4:	505f4f49 	subspl	r4, pc, r9, asr #30
    4ea8:	45544f52 	ldrbmi	r4, [r4, #-3922]	; 0xfffff0ae
    4eac:	34205443 	strtcc	r5, [r0], #-1091	; 0xfffffbbd
    4eb0:	6d5f0037 	ldclvs	0, cr0, [pc, #-220]	; 4ddc <__bss_end__+0x15ec>
    4eb4:	61747362 	cmnvs	r4, r2, ror #6
    4eb8:	5f006574 	svcpl	0x00006574
    4ebc:	5a49535f 	bpl	1259c40 <_end+0x259c40>
    4ec0:	414d5f45 	cmpmi	sp, r5, asr #30
    4ec4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    4ec8:	66667830 			; <UNDEFINED> instruction: 0x66667830
    4ecc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4ed0:	00556666 	subseq	r6, r5, r6, ror #12
    4ed4:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    4ed8:	5f383444 	svcpl	0x00383444
    4edc:	544c554d 	strbpl	r5, [ip], #-1357	; 0xfffffab3
    4ee0:	2820305f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, ip, sp}
    4ee4:	36657830 			; <UNDEFINED> instruction: 0x36657830
    4ee8:	00296436 	eoreq	r6, r9, r6, lsr r4
    4eec:	544e4957 	strbpl	r4, [lr], #-2391	; 0xfffff6a9
    4ef0:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    4ef4:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    4ef8:	5f544e45 	svcpl	0x00544e45
    4efc:	52454d45 	subpl	r4, r5, #4416	; 0x1140
    4f00:	434e4547 	movtmi	r4, #58695	; 0xe547
    4f04:	74702859 	ldrbtvc	r2, [r0], #-2137	; 0xfffff7a7
    4f08:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    4f0c:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    4f10:	5f3e2d29 	svcpl	0x003e2d29
    4f14:	72656d65 	rsbvc	r6, r5, #6464	; 0x1940
    4f18:	636e6567 	cmnvs	lr, #432013312	; 0x19c00000
    4f1c:	52002979 	andpl	r2, r0, #1982464	; 0x1e4000
    4f20:	554f5458 	strbpl	r5, [pc, #-1112]	; 4ad0 <__bss_end__+0x12e0>
    4f24:	41550054 	cmpmi	r5, r4, asr r0
    4f28:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 4de8 <__bss_end__+0x15f8>
    4f2c:	4c435f52 	mcrrmi	15, 5, r5, r3, cr2
    4f30:	4c45534b 	mcrrmi	3, 4, r5, r5, cr11
    4f34:	30783020 	rsbscc	r3, r8, r0, lsr #32
    4f38:	30303030 	eorscc	r3, r0, r0, lsr r0
    4f3c:	00313030 	eorseq	r3, r1, r0, lsr r0
    4f40:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    4f44:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
    4f48:	435f454b 	cmpmi	pc, #314572800	; 0x12c00000
    4f4c:	5f524f54 	svcpl	0x00524f54
    4f50:	54434553 	strbpl	r4, [r3], #-1363	; 0xfffffaad
    4f54:	5f4e4f49 	svcpl	0x004e4f49
    4f58:	444e4148 	strbmi	r4, [lr], #-328	; 0xfffffeb8
    4f5c:	474e494c 	strbmi	r4, [lr, -ip, asr #18]
    4f60:	5f003120 	svcpl	0x00003120
    4f64:	6f4c555f 	svcvs	0x004c555f
    4f68:	5f00676e 	svcpl	0x0000676e
    4f6c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    4f70:	41465f54 	cmpmi	r6, r4, asr pc
    4f74:	5f385453 	svcpl	0x00385453
    4f78:	5f58414d 	svcpl	0x0058414d
    4f7c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    4f80:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4f84:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    4f88:	525f0055 	subspl	r0, pc, #85	; 0x55
    4f8c:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    4f90:	6d695f20 	stclvs	15, cr5, [r9, #-128]!	; 0xffffff80
    4f94:	65727570 	ldrbvs	r7, [r2, #-1392]!	; 0xfffffa90
    4f98:	7274705f 	rsbsvc	r7, r4, #95	; 0x5f
    4f9c:	535f5f00 	cmppl	pc, #0, 30
    4fa0:	42495f51 	submi	r5, r9, #324	; 0x144
    4fa4:	5f5f5449 	svcpl	0x005f5449
    4fa8:	45003020 	strmi	r3, [r0, #-32]	; 0xffffffe0
    4fac:	4f4e4650 	svcmi	0x004e4650
    4fb0:	50505553 	subspl	r5, r0, r3, asr r5
    4fb4:	2054524f 	subscs	r5, r4, pc, asr #4
    4fb8:	49003639 	stmdbmi	r0, {r0, r3, r4, r5, r9, sl, ip, sp}
    4fbc:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    4fc0:	31545341 	cmpcc	r4, r1, asr #6
    4fc4:	494d5f36 	stmdbmi	sp, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    4fc8:	2d28204e 	stccs	0, cr2, [r8, #-312]!	; 0xfffffec8
    4fcc:	5f544e49 	svcpl	0x00544e49
    4fd0:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    4fd4:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 4f18 <__bss_end__+0x1728>
    4fd8:	2d205841 	stccs	8, cr5, [r0, #-260]!	; 0xfffffefc
    4fdc:	00293120 	eoreq	r3, r9, r0, lsr #2
    4fe0:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    4fe4:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    4fe8:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    4fec:	49535f45 	ldmdbmi	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    4ff0:	3233444d 	eorscc	r4, r3, #1291845632	; 0x4d000000
    4ff4:	5f003120 	svcpl	0x00003120
    4ff8:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    4ffc:	554e5f64 	strbpl	r5, [lr, #-3940]	; 0xfffff09c
    5000:	6f004c4c 	svcvs	0x00004c4c
    5004:	65736666 	ldrbvs	r6, [r3, #-1638]!	; 0xfffff99a
    5008:	28666f74 	stmdacs	r6!, {r2, r4, r5, r6, r8, r9, sl, fp, sp, lr}^
    500c:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    5010:	4d454d2c 	stclmi	13, cr4, [r5, #-176]	; 0xffffff50
    5014:	29524542 	ldmdbcs	r2, {r1, r6, r8, sl, lr}^
    5018:	625f5f20 	subsvs	r5, pc, #32, 30	; 0x80
    501c:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
    5020:	6f5f6e69 	svcvs	0x005f6e69
    5024:	65736666 	ldrbvs	r6, [r3, #-1638]!	; 0xfffff99a
    5028:	20666f74 	rsbcs	r6, r6, r4, ror pc
    502c:	50595428 	subspl	r5, r9, r8, lsr #8
    5030:	4d202c45 	stcmi	12, cr2, [r0, #-276]!	; 0xfffffeec
    5034:	45424d45 	strbmi	r4, [r2, #-3397]	; 0xfffff2bb
    5038:	5f002952 	svcpl	0x00002952
    503c:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
    5040:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    5044:	41435f34 	cmpmi	r3, r4, lsr pc
    5048:	5f454843 	svcpl	0x00454843
    504c:	4f535341 	svcmi	0x00535341
    5050:	33312043 	teqcc	r1, #67	; 0x43
    5054:	535f0038 	cmppl	pc, #56	; 0x38
    5058:	52545f43 	subspl	r5, r4, #268	; 0x10c
    505c:	5f454341 	svcpl	0x00454341
    5060:	4e455645 	cdpmi	6, 4, cr5, cr5, cr5, {2}
    5064:	414e5f54 	cmpmi	lr, r4, asr pc
    5068:	4d5f454d 	cfldr64mi	mvdx4, [pc, #-308]	; 4f3c <__bss_end__+0x174c>
    506c:	38205841 	stmdacc	r0!, {r0, r6, fp, ip, lr}
    5070:	5f5f0035 	svcpl	0x005f0035
    5074:	5f514855 	svcpl	0x00514855
    5078:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    507c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    5080:	635f5f00 	cmpvs	pc, #0, 30
    5084:	61746e6f 	cmnvs	r4, pc, ror #28
    5088:	72656e69 	rsbvc	r6, r5, #1680	; 0x690
    508c:	7828666f 	stmdavc	r8!, {r0, r1, r2, r3, r5, r6, r9, sl, sp, lr}
    5090:	6d2c732c 	stcvs	3, cr7, [ip, #-176]!	; 0xffffff50
    5094:	7b282029 	blvc	a0d140 <heap_size+0x9ed140>
    5098:	6e6f6320 	cdpvs	3, 6, cr6, cr15, cr0, {1}
    509c:	76207473 			; <UNDEFINED> instruction: 0x76207473
    50a0:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    50a4:	20656c69 	rsbcs	r6, r5, r9, ror #24
    50a8:	79745f5f 	ldmdbvc	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    50ac:	666f6570 			; <UNDEFINED> instruction: 0x666f6570
    50b0:	73282828 			; <UNDEFINED> instruction: 0x73282828
    50b4:	30292a20 	eorcc	r2, r9, r0, lsr #20
    50b8:	6d3e2d29 	ldcvs	13, cr2, [lr, #-164]!	; 0xffffff5c
    50bc:	5f2a2029 	svcpl	0x002a2029
    50c0:	3d20785f 	stccc	8, cr7, [r0, #-380]!	; 0xfffffe84
    50c4:	29782820 	ldmdbcs	r8!, {r5, fp, sp}^
    50c8:	5f5f203b 	svcpl	0x005f203b
    50cc:	55514544 	ldrbpl	r4, [r1, #-1348]	; 0xfffffabc
    50d0:	46494c41 	strbmi	r4, [r9], -r1, asr #24
    50d4:	20732859 	rsbscs	r2, r3, r9, asr r8
    50d8:	28202c2a 	stmdacs	r0!, {r1, r3, r5, sl, fp, sp}
    50dc:	736e6f63 	cmnvc	lr, #396	; 0x18c
    50e0:	6f762074 	svcvs	0x00762074
    50e4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    50e8:	6320656c 			; <UNDEFINED> instruction: 0x6320656c
    50ec:	20726168 	rsbscs	r6, r2, r8, ror #2
    50f0:	5f5f292a 	svcpl	0x005f292a
    50f4:	202d2078 	eorcs	r2, sp, r8, ror r0
    50f8:	666f5f5f 	uqsaxvs	r5, pc, pc	; <UNPREDICTABLE>
    50fc:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
    5100:	7328666f 			; <UNDEFINED> instruction: 0x7328666f
    5104:	296d202c 	stmdbcs	sp!, {r2, r3, r5, sp}^
    5108:	297d3b29 	ldmdbcs	sp!, {r0, r3, r5, r8, r9, fp, ip, sp}^
    510c:	49545f00 	ldmdbmi	r4, {r8, r9, sl, fp, ip, lr}^
    5110:	5f52454d 	svcpl	0x0052454d
    5114:	75205f54 	strvc	r5, [r0, #-3924]!	; 0xfffff0ac
    5118:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    511c:	2064656e 	rsbcs	r6, r4, lr, ror #10
    5120:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    5124:	52415500 	subpl	r5, r1, #0, 10
    5128:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    512c:	534d445f 	movtpl	r4, #54367	; 0xd45f
    5130:	30783020 	rsbscc	r3, r8, r0, lsr #32
    5134:	30303030 	eorscc	r3, r0, r0, lsr r0
    5138:	00303032 	eorseq	r3, r0, r2, lsr r0
    513c:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    5140:	5f323343 	svcpl	0x00323343
    5144:	5f4e494d 	svcpl	0x004e494d
    5148:	5f505845 	svcpl	0x00505845
    514c:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    5150:	00293439 	eoreq	r3, r9, r9, lsr r4
    5154:	6f74706f 	svcvs	0x0074706f
    5158:	5f007470 	svcpl	0x00007470
    515c:	545f4353 	ldrbpl	r4, [pc], #-851	; 5164 <__bss_end__+0x1974>
    5160:	4d414e5a 	stclmi	14, cr4, [r1, #-360]	; 0xfffffe98
    5164:	414d5f45 	cmpmi	sp, r5, asr #30
    5168:	30322058 	eorscc	r2, r2, r8, asr r0
    516c:	535f5f00 	cmppl	pc, #0, 30
    5170:	43415246 	movtmi	r5, #4678	; 0x1246
    5174:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    5178:	205f5f4e 	subscs	r5, pc, lr, asr #30
    517c:	2e302d28 	cdpcs	13, 3, cr2, cr0, cr8, {1}
    5180:	2d524835 	ldclcs	8, cr4, [r2, #-212]	; 0xffffff2c
    5184:	48352e30 	ldmdami	r5!, {r4, r5, r9, sl, fp, sp}
    5188:	5f002952 	svcpl	0x00002952
    518c:	4343475f 	movtmi	r4, #14175	; 0x375f
    5190:	5641485f 			; <UNDEFINED> instruction: 0x5641485f
    5194:	59535f45 	ldmdbpl	r3, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    5198:	435f434e 	cmpmi	pc, #939524097	; 0x38000001
    519c:	41504d4f 	cmpmi	r0, pc, asr #26
    51a0:	415f4552 	cmpmi	pc, r2, asr r5	; <UNPREDICTABLE>
    51a4:	535f444e 	cmppl	pc, #1308622848	; 0x4e000000
    51a8:	5f504157 	svcpl	0x00504157
    51ac:	00312031 	eorseq	r2, r1, r1, lsr r0
    51b0:	414c5f5f 	cmpmi	ip, pc, asr pc
    51b4:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    51b8:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    51bc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    51c0:	5f003133 	svcpl	0x00003133
    51c4:	414c555f 	cmpmi	ip, pc, asr r5
    51c8:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    51cc:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    51d0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    51d4:	4c55302e 	mrrcmi	0, 2, r3, r5, cr14
    51d8:	735f004b 	cmpvc	pc, #75	; 0x4b
    51dc:	6f747274 	svcvs	0x00747274
    51e0:	616c5f6b 	cmnvs	ip, fp, ror #30
    51e4:	5f007473 	svcpl	0x00007473
    51e8:	4d5f4353 	ldclmi	3, cr4, [pc, #-332]	; 50a4 <__bss_end__+0x18b4>
    51ec:	4f4c4d45 	svcmi	0x004c4d45
    51f0:	525f4b43 	subspl	r4, pc, #68608	; 0x10c00
    51f4:	45474e41 	strbmi	r4, [r7, #-3649]	; 0xfffff1bf
    51f8:	00353220 	eorseq	r3, r5, r0, lsr #4
    51fc:	41535f5f 	cmpmi	r3, pc, asr pc
    5200:	30205050 	eorcc	r5, r0, r0, asr r0
    5204:	30313078 	eorscc	r3, r1, r8, ror r0
    5208:	6f630030 	svcvs	0x00630030
    520c:	4d726f6c 	ldclmi	15, cr6, [r2, #-432]!	; 0xfffffe50
    5210:	61576773 	cmpvs	r7, r3, ror r7
    5214:	6e696e72 	mcrvs	14, 3, r6, cr9, cr2, {3}
    5218:	4e450067 	cdpmi	0, 4, cr0, cr5, cr7, {3}
    521c:	5359534f 	cmppl	r9, #1006632961	; 0x3c000001
    5220:	00383820 	eorseq	r3, r8, r0, lsr #16
    5224:	696d5f5f 	stmdbvs	sp!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    5228:	69735f6e 	ldmdbvs	r3!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    522c:	7828657a 	stmdavc	r8!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}
    5230:	74732029 	ldrbtvc	r2, [r3], #-41	; 0xffffffd7
    5234:	63697461 	cmnvs	r9, #1627389952	; 0x61000000
    5238:	29782820 	ldmdbcs	r8!, {r5, fp, sp}^
    523c:	59535f00 	ldmdbpl	r3, {r8, r9, sl, fp, ip, lr}^
    5240:	545f5f53 	ldrbpl	r5, [pc], #-3923	; 5248 <__bss_end__+0x1a58>
    5244:	53455059 	movtpl	r5, #20569	; 0x5059
    5248:	0020485f 	eoreq	r4, r0, pc, asr r8
    524c:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    5250:	5f383444 	svcpl	0x00383444
    5254:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
    5258:	2820325f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r9, ip, sp}
    525c:	32317830 	eorscc	r7, r1, #48, 16	; 0x300000
    5260:	00293433 	eoreq	r3, r9, r3, lsr r4
    5264:	45535f5f 	ldrbmi	r5, [r3, #-3935]	; 0xfffff0a1
    5268:	30205252 	eorcc	r5, r0, r2, asr r2
    526c:	34303078 	ldrtcc	r3, [r0], #-120	; 0xffffff88
    5270:	505f0030 	subspl	r0, pc, r0, lsr r0	; <UNPREDICTABLE>
    5274:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
    5278:	494d5f43 	stmdbmi	sp, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    527c:	46585f4e 	ldrbmi	r5, [r8], -lr, asr #30
    5280:	535f5245 	cmppl	pc, #1342177284	; 0x50000004
    5284:	20455a49 	subcs	r5, r5, r9, asr #20
    5288:	5f003831 	svcpl	0x00003831
    528c:	4d5f4353 	ldclmi	3, cr4, [pc, #-332]	; 5148 <__bss_end__+0x1958>
    5290:	41535345 	cmpmi	r3, r5, asr #6
    5294:	505f4547 	subspl	r4, pc, r7, asr #10
    5298:	49535341 	ldmdbmi	r3, {r0, r6, r8, r9, ip, lr}^
    529c:	3220474e 	eorcc	r4, r0, #20447232	; 0x1380000
    52a0:	4e490037 	mcrmi	0, 2, r0, cr9, cr7, {1}
    52a4:	52545054 	subspl	r5, r4, #84	; 0x54
    52a8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    52ac:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    52b0:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    52b4:	414d5f52 	cmpmi	sp, r2, asr pc
    52b8:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    52bc:	43525f5f 	cmpmi	r2, #380	; 0x17c
    52c0:	28444953 	stmdacs	r4, {r0, r1, r4, r6, r8, fp, lr}^
    52c4:	73202973 			; <UNDEFINED> instruction: 0x73202973
    52c8:	63757274 	cmnvs	r5, #116, 4	; 0x40000007
    52cc:	5f5f2074 	svcpl	0x005f2074
    52d0:	6b636168 	blvs	18dd878 <_end+0x8dd878>
    52d4:	6c5f5f00 	mrrcvs	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    52d8:	5f6b636f 	svcpl	0x006b636f
    52dc:	5f797274 	svcpl	0x00797274
    52e0:	75716361 	ldrbvc	r6, [r1, #-865]!	; 0xfffffc9f
    52e4:	28657269 	stmdacs	r5!, {r0, r3, r5, r6, r9, ip, sp, lr}^
    52e8:	6b636f6c 	blvs	18e10a0 <_end+0x8e10a0>
    52ec:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    52f0:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    52f4:	29302029 	ldmdbcs	r0!, {r0, r3, r5, sp}
    52f8:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    52fc:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    5300:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    5304:	20632029 	rsbcs	r2, r3, r9, lsr #32
    5308:	4c202323 	stcmi	3, cr2, [r0], #-140	; 0xffffff74
    530c:	52415500 	subpl	r5, r1, #0, 10
    5310:	58495f54 	stmdapl	r9, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    5314:	58525f52 	ldmdapl	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    5318:	54504d45 	ldrbpl	r4, [r0], #-3397	; 0xfffff2bb
    531c:	78302059 	ldmdavc	r0!, {r0, r3, r4, r6, sp}
    5320:	30303030 	eorscc	r3, r0, r0, lsr r0
    5324:	32303030 	eorscc	r3, r0, #48	; 0x30
    5328:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; 4430 <__bss_end__+0xc40>
    532c:	445f444e 	ldrbmi	r4, [pc], #-1102	; 5334 <__bss_end__+0x1b44>
    5330:	534c4345 	movtpl	r4, #49989	; 0xc345
    5334:	5f5f0020 	svcpl	0x005f0020
    5338:	5f515355 	svcpl	0x00515355
    533c:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    5340:	30205f5f 	eorcc	r5, r0, pc, asr pc
    5344:	52415500 	subpl	r5, r1, #0, 10
    5348:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    534c:	4341525f 	movtmi	r5, #4703	; 0x125f
    5350:	45564954 	ldrbmi	r4, [r6, #-2388]	; 0xfffff6ac
    5354:	30783020 	rsbscc	r3, r8, r0, lsr #32
    5358:	30303030 	eorscc	r3, r0, r0, lsr r0
    535c:	00303034 	eorseq	r3, r0, r4, lsr r0
    5360:	695f5f5f 	ldmdbvs	pc, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5364:	6c5f746e 	cfldrdvs	mvd7, [pc], {110}	; 0x6e
    5368:	74736165 	ldrbtvc	r6, [r3], #-357	; 0xfffffe9b
    536c:	745f3436 	ldrbvc	r3, [pc], #-1078	; 5374 <__bss_end__+0x1b84>
    5370:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    5374:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    5378:	45003120 	strmi	r3, [r0, #-288]	; 0xfffffee0
    537c:	4f4e4641 	svcmi	0x004e4641
    5380:	50505553 	subspl	r5, r0, r3, asr r5
    5384:	2054524f 	subscs	r5, r4, pc, asr #4
    5388:	00363031 	eorseq	r3, r6, r1, lsr r0
    538c:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    5390:	5f343643 	svcpl	0x00343643
    5394:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    5398:	5f4e4f4c 	svcpl	0x004e4f4c
    539c:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
    53a0:	4435312d 	ldrtmi	r3, [r5], #-301	; 0xfffffed3
    53a4:	735f0044 	cmpvc	pc, #68	; 0x44
    53a8:	00646565 	rsbeq	r6, r4, r5, ror #10
    53ac:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    53b0:	494c4355 	stmdbmi	ip, {r0, r2, r4, r6, r8, r9, lr}^
    53b4:	425f454b 	subsmi	r4, pc, #314572800	; 0x12c00000
    53b8:	544c4955 	strbpl	r4, [ip], #-2389	; 0xfffff6ab
    53bc:	535f4e49 	cmppl	pc, #1168	; 0x490
    53c0:	52414454 	subpl	r4, r1, #84, 8	; 0x54000000
    53c4:	00312047 	eorseq	r2, r1, r7, asr #32
    53c8:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    53cc:	5f323343 	svcpl	0x00323343
    53d0:	5f58414d 	svcpl	0x0058414d
    53d4:	5f505845 	svcpl	0x00505845
    53d8:	3739205f 			; <UNDEFINED> instruction: 0x3739205f
    53dc:	535f5f00 	cmppl	pc, #0, 30
    53e0:	2046424c 	subcs	r4, r6, ip, asr #4
    53e4:	30307830 	eorscc	r7, r0, r0, lsr r8
    53e8:	5f003130 	svcpl	0x00003130
    53ec:	4545495f 	strbmi	r4, [r5, #-2399]	; 0xfffff6a1
    53f0:	494c5f45 	stmdbmi	ip, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    53f4:	454c5454 	strbmi	r5, [ip, #-1108]	; 0xfffffbac
    53f8:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
    53fc:	204e4149 	subcs	r4, lr, r9, asr #2
    5400:	4f434500 	svcmi	0x00434500
    5404:	42414e4e 	submi	r4, r1, #1248	; 0x4e0
    5408:	4554524f 	ldrbmi	r5, [r4, #-591]	; 0xfffffdb1
    540c:	31312044 	teqcc	r1, r4, asr #32
    5410:	49550033 	ldmdbmi	r5, {r0, r1, r4, r5}^
    5414:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    5418:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    541c:	414d5f32 	cmpmi	sp, r2, lsr pc
    5420:	5f5f2058 	svcpl	0x005f2058
    5424:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    5428:	5341465f 	movtpl	r4, #5727	; 0x165f
    542c:	5f323354 	svcpl	0x00323354
    5430:	5f58414d 	svcpl	0x0058414d
    5434:	474b005f 	smlsldmi	r0, fp, pc, r0	; <UNPREDICTABLE>
    5438:	22204e52 	eorcs	r4, r0, #1312	; 0x520
    543c:	4231785c 	eorsmi	r7, r1, #92, 16	; 0x5c0000
    5440:	6d32335b 	ldcvs	3, cr3, [r2, #-364]!	; 0xfffffe94
    5444:	425f0022 	subsmi	r0, pc, #34	; 0x22
    5448:	4e494745 	cdpmi	7, 4, cr4, cr9, cr5, {2}
    544c:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    5450:	0020435f 	eoreq	r4, r0, pc, asr r3
    5454:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    5458:	435f3233 	cmpmi	pc, #805306371	; 0x30000003
    545c:	43505f00 	cmpmi	r0, #0, 30
    5460:	5441505f 	strbpl	r5, [r1], #-95	; 0xffffffa1
    5464:	414d5f48 	cmpmi	sp, r8, asr #30
    5468:	00342058 	eorseq	r2, r4, r8, asr r0
    546c:	69735f5f 	ldmdbvs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    5470:	745f657a 	ldrbvc	r6, [pc], #-1402	; 5478 <__bss_end__+0x1c88>
    5474:	00205f5f 	eoreq	r5, r0, pc, asr pc
    5478:	5f43535f 	svcpl	0x0043535f
    547c:	49474f4c 	stmdbmi	r7, {r2, r3, r6, r8, r9, sl, fp, lr}^
    5480:	414e5f4e 	cmpmi	lr, lr, asr #30
    5484:	4d5f454d 	cfldr64mi	mvdx4, [pc, #-308]	; 5358 <__bss_end__+0x1b68>
    5488:	35205841 	strcc	r5, [r0, #-2113]!	; 0xfffff7bf
    548c:	525f0032 	subspl	r0, pc, #50	; 0x32
    5490:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    5494:	4f4c475f 	svcmi	0x004c475f
    5498:	5f4c4142 	svcpl	0x004c4142
    549c:	58455441 	stmdapl	r5, {r0, r6, sl, ip, lr}^
    54a0:	31205449 			; <UNDEFINED> instruction: 0x31205449
    54a4:	43535f00 	cmpmi	r3, #0, 30
    54a8:	504f585f 	subpl	r5, pc, pc, asr r8	; <UNPREDICTABLE>
    54ac:	435f4e45 	cmpmi	pc, #1104	; 0x450
    54b0:	54505952 	ldrbpl	r5, [r0], #-2386	; 0xfffff6ae
    54b4:	00363920 	eorseq	r3, r6, r0, lsr #18
    54b8:	72705f5f 	rsbsvc	r5, r0, #380	; 0x17c
    54bc:	63696465 	cmnvs	r9, #1694498816	; 0x65000000
    54c0:	61665f74 	smcvs	26100	; 0x65f4
    54c4:	2865736c 	stmdacs	r5!, {r2, r3, r5, r6, r8, r9, ip, sp, lr}^
    54c8:	29707865 	ldmdbcs	r0!, {r0, r2, r5, r6, fp, ip, sp, lr}^
    54cc:	625f5f20 	subsvs	r5, pc, #32, 30	; 0x80
    54d0:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
    54d4:	655f6e69 	ldrbvs	r6, [pc, #-3689]	; 4673 <__bss_end__+0xe83>
    54d8:	63657078 	cmnvs	r5, #120	; 0x78
    54dc:	65282874 	strvs	r2, [r8, #-2164]!	; 0xfffff78c
    54e0:	2c297078 	stccs	0, cr7, [r9], #-480	; 0xfffffe20
    54e4:	00293020 	eoreq	r3, r9, r0, lsr #32
    54e8:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    54ec:	5f524d5f 	svcpl	0x00524d5f
    54f0:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    54f4:	5f4e454c 	svcpl	0x004e454c
    54f8:	4b53414d 	blmi	14d5a34 <_end+0x4d5a34>
    54fc:	30783020 	rsbscc	r3, r8, r0, lsr #32
    5500:	30303030 	eorscc	r3, r0, r0, lsr r0
    5504:	00363030 	eorseq	r3, r6, r0, lsr r0
    5508:	45565f5f 	ldrbmi	r5, [r6, #-3935]	; 0xfffff0a1
    550c:	4f495352 	svcmi	0x00495352
    5510:	205f5f4e 	subscs	r5, pc, lr, asr #30
    5514:	332e3722 			; <UNDEFINED> instruction: 0x332e3722
    5518:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
    551c:	30383130 	eorscc	r3, r8, r0, lsr r1
    5520:	20323236 	eorscs	r3, r2, r6, lsr r2
    5524:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
    5528:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
    552c:	415b2029 	cmpmi	fp, r9, lsr #32
    5530:	652f4d52 	strvs	r4, [pc, #-3410]!	; 47e6 <__bss_end__+0xff6>
    5534:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
    5538:	2d646564 	cfstr64cs	mvdx6, [r4, #-400]!	; 0xfffffe70
    553c:	72622d37 	rsbvc	r2, r2, #3520	; 0xdc0
    5540:	68636e61 	stmdavs	r3!, {r0, r5, r6, r9, sl, fp, sp, lr}^
    5544:	76657220 	strbtvc	r7, [r5], -r0, lsr #4
    5548:	6f697369 	svcvs	0x00697369
    554c:	3632206e 	ldrtcc	r2, [r2], -lr, rrx
    5550:	37303931 			; <UNDEFINED> instruction: 0x37303931
    5554:	5700225d 	smlsdpl	r0, sp, r2, r2
    5558:	5f544e49 	svcpl	0x00544e49
    555c:	2058414d 	subscs	r4, r8, sp, asr #2
    5560:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    5564:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 5434 <__bss_end__+0x1c44>
    5568:	5f5f5841 	svcpl	0x005f5841
    556c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 4674 <__bss_end__+0xe84>
    5570:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    5574:	5f4d5543 	svcpl	0x004d5543
    5578:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    557c:	5f4e4f4c 	svcpl	0x004e4f4c
    5580:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    5584:	332d5031 			; <UNDEFINED> instruction: 0x332d5031
    5588:	4c4c5532 	cfstr64mi	mvdx5, [ip], {50}	; 0x32
    558c:	5f5f004b 	svcpl	0x005f004b
    5590:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    5594:	5449425f 	strbpl	r4, [r9], #-607	; 0xfffffda1
    5598:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    559c:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    55a0:	5f58414d 	svcpl	0x0058414d
    55a4:	004e494d 	subeq	r4, lr, sp, asr #18
    55a8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    55ac:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    55b0:	5059545f 	subspl	r5, r9, pc, asr r4
    55b4:	205f5f45 	subscs	r5, pc, r5, asr #30
    55b8:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    55bc:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    55c0:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
    55c4:	4f450074 	svcmi	0x00450074
    55c8:	2d282046 	stccs	0, cr2, [r8, #-280]!	; 0xfffffee8
    55cc:	5f002931 	svcpl	0x00002931
    55d0:	4e494f50 	mcrmi	15, 2, r4, cr9, cr0, {2}
    55d4:	5f524554 	svcpl	0x00524554
    55d8:	20544e49 	subscs	r4, r4, r9, asr #28
    55dc:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    55e0:	49505f00 	ldmdbmi	r0, {r8, r9, sl, fp, ip, lr}^
    55e4:	5f545f44 	svcpl	0x00545f44
    55e8:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    55ec:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    55f0:	525f0020 	subspl	r0, pc, #32
    55f4:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    55f8:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    55fc:	5f383444 	svcpl	0x00383444
    5600:	28444441 	stmdacs	r4, {r0, r6, sl, lr}^
    5604:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    5608:	70282820 	eorvc	r2, r8, r0, lsr #16
    560c:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    5610:	34725f3e 	ldrbtcc	r5, [r2], #-3902	; 0xfffff0c2
    5614:	5f3e2d38 	svcpl	0x003e2d38
    5618:	29646461 	stmdbcs	r4!, {r0, r5, r6, sl, sp, lr}^
    561c:	74706f00 	ldrbtvc	r6, [r0], #-3840	; 0xfffff100
    5620:	00677261 	rsbeq	r7, r7, r1, ror #4
    5624:	61685f5f 	cmnvs	r8, pc, asr pc
    5628:	75625f73 	strbvc	r5, [r2, #-3955]!	; 0xfffff08d
    562c:	69746c69 	ldmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    5630:	2978286e 	ldmdbcs	r8!, {r1, r2, r3, r5, r6, fp, sp}^
    5634:	5f003020 	svcpl	0x00003020
    5638:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
    563c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    5640:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5644:	756f6428 	strbvc	r6, [pc, #-1064]!	; 5224 <__bss_end__+0x1a34>
    5648:	29656c62 	stmdbcs	r5!, {r1, r5, r6, sl, fp, sp, lr}^
    564c:	39372e31 	ldmdbcc	r7!, {r0, r4, r5, r9, sl, fp, sp}
    5650:	33393637 	teqcc	r9, #57671680	; 0x3700000
    5654:	38343331 	ldmdacc	r4!, {r0, r4, r5, r8, r9, ip, sp}
    5658:	31333236 	teqcc	r3, r6, lsr r2
    565c:	2b653735 	blcs	1953338 <_end+0x953338>
    5660:	4c383033 	ldcmi	0, cr3, [r8], #-204	; 0xffffff34
    5664:	425f0029 	subsmi	r0, pc, #41	; 0x29
    5668:	535f4453 	cmppl	pc, #1392508928	; 0x53000000
    566c:	5f455a49 	svcpl	0x00455a49
    5670:	00205f54 	eoreq	r5, r0, r4, asr pc
    5674:	6572665f 	ldrbvs	r6, [r2, #-1631]!	; 0xfffff9a1
    5678:	73696c65 	cmnvc	r9, #25856	; 0x6500
    567c:	5f5f0074 	svcpl	0x005f0074
    5680:	5f736168 	svcpl	0x00736168
    5684:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    5688:	5f656475 	svcpl	0x00656475
    568c:	7478656e 	ldrbtvc	r6, [r8], #-1390	; 0xfffffa92
    5690:	52545328 	subspl	r5, r4, #40, 6	; 0xa0000000
    5694:	5f5f2029 	svcpl	0x005f2029
    5698:	5f736168 	svcpl	0x00736168
    569c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    56a0:	5f656475 	svcpl	0x00656475
    56a4:	7478656e 	ldrbtvc	r6, [r8], #-1390	; 0xfffffa92
    56a8:	53285f5f 			; <UNDEFINED> instruction: 0x53285f5f
    56ac:	00295254 	eoreq	r5, r9, r4, asr r2
    56b0:	58475f5f 	stmdapl	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    56b4:	59545f58 	ldmdbpl	r4, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    56b8:	4e494550 	mcrmi	5, 2, r4, cr9, cr0, {2}
    56bc:	455f4f46 	ldrbmi	r4, [pc, #-3910]	; 477e <__bss_end__+0xf8e>
    56c0:	4c415551 	cfstr64mi	mvdx5, [r1], {81}	; 0x51
    56c4:	5f595449 	svcpl	0x00595449
    56c8:	494c4e49 	stmdbmi	ip, {r0, r3, r6, r9, sl, fp, lr}^
    56cc:	3020454e 	eorcc	r4, r0, lr, asr #10
    56d0:	45594b00 	ldrbmi	r4, [r9, #-2816]	; 0xfffff500
    56d4:	5c22204c 	stcpl	0, cr2, [r2], #-304	; 0xfffffed0
    56d8:	5b423178 	blpl	1091cc0 <_end+0x91cc0>
    56dc:	226d3333 	rsbcs	r3, sp, #-872415232	; 0xcc000000
    56e0:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    56e4:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    56e8:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    56ec:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    56f0:	3532322e 	ldrcc	r3, [r2, #-558]!	; 0xfffffdd2
    56f4:	38333730 	ldmdacc	r3!, {r4, r5, r8, r9, sl, ip, sp}
    56f8:	30353835 	eorscc	r3, r5, r5, lsr r8
    56fc:	31303237 	teqcc	r0, r7, lsr r2
    5700:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    5704:	36463830 			; <UNDEFINED> instruction: 0x36463830
    5708:	5f5f0034 	svcpl	0x005f0034
    570c:	50544e49 	subspl	r4, r4, r9, asr #28
    5710:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 55c8 <__bss_end__+0x1dd8>
    5714:	5f5f5841 	svcpl	0x005f5841
    5718:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    571c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    5720:	00666666 	rsbeq	r6, r6, r6, ror #12
    5724:	6c635f5f 	stclvs	15, cr5, [r3], #-380	; 0xfffffe84
    5728:	5f6b636f 	svcpl	0x006b636f
    572c:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    5730:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    5734:	5f002064 	svcpl	0x00002064
    5738:	6461635f 	strbtvs	r6, [r1], #-863	; 0xfffffca1
    573c:	745f7264 	ldrbvc	r7, [pc], #-612	; 5744 <__bss_end__+0x1f54>
    5740:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    5744:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    5748:	4c5f0020 	mrrcmi	0, 2, r0, pc, cr0	; <UNPREDICTABLE>
    574c:	5f474e4f 	svcpl	0x00474e4f
    5750:	42554f44 	subsmi	r4, r5, #68, 30	; 0x110
    5754:	6c20454c 	cfstr32vs	mvfx4, [r0], #-304	; 0xfffffed0
    5758:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    575c:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
    5760:	5f00656c 	svcpl	0x0000656c
    5764:	4343475f 	movtmi	r4, #14175	; 0x375f
    5768:	4f54415f 	svcmi	0x0054415f
    576c:	5f43494d 	svcpl	0x0043494d
    5770:	4e494f50 	mcrmi	15, 2, r4, cr9, cr0, {2}
    5774:	5f524554 	svcpl	0x00524554
    5778:	4b434f4c 	blmi	10d94b0 <_end+0xd94b0>
    577c:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    5780:	00322045 	eorseq	r2, r2, r5, asr #32
    5784:	6e6f4e5f 	mcrvs	14, 3, r4, cr15, cr15, {2}
    5788:	6c6c756e 	cfstr64vs	mvdx7, [ip], #-440	; 0xfffffe48
    578c:	54530020 	ldrbpl	r0, [r3], #-32	; 0xffffffe0
    5790:	54554f44 	ldrbpl	r4, [r5], #-3908	; 0xfffff0bc
    5794:	4c49465f 	mcrrmi	6, 5, r4, r9, cr15
    5798:	204f4e45 	subcs	r4, pc, r5, asr #28
    579c:	535f0031 	cmppl	pc, #49	; 0x31
    57a0:	5f325f43 	svcpl	0x00325f43
    57a4:	49425f43 	stmdbmi	r2, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    57a8:	3120444e 			; <UNDEFINED> instruction: 0x3120444e
    57ac:	5f003830 	svcpl	0x00003830
    57b0:	464f535f 			; <UNDEFINED> instruction: 0x464f535f
    57b4:	78302046 	ldmdavc	r0!, {r1, r2, r6, sp}
    57b8:	30303031 	eorscc	r3, r0, r1, lsr r0
    57bc:	41525f00 	cmpmi	r2, r0, lsl #30
    57c0:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    57c4:	4c554d5f 	mrrcmi	13, 5, r4, r5, cr15
    57c8:	20315f54 	eorscs	r5, r1, r4, asr pc
    57cc:	64783028 	ldrbtvs	r3, [r8], #-40	; 0xffffffd8
    57d0:	29636565 	stmdbcs	r3!, {r0, r2, r5, r6, r8, sl, sp, lr}^
    57d4:	53494500 	movtpl	r4, #38144	; 0x9500
    57d8:	4e4e4f43 	cdpmi	15, 4, cr4, cr14, cr3, {2}
    57dc:	37323120 	ldrcc	r3, [r2, -r0, lsr #2]!
    57e0:	666f5f00 	strbtvs	r5, [pc], -r0, lsl #30
    57e4:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
    57e8:	43535f00 	cmpmi	r3, #0, 30
    57ec:	4b4c435f 	blmi	1316570 <_end+0x316570>
    57f0:	4b43545f 	blmi	10da974 <_end+0xda974>
    57f4:	5f003220 	svcpl	0x00003220
    57f8:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    57fc:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 5738 <__bss_end__+0x1f48>
    5800:	315f5841 	cmpcc	pc, r1, asr #16
    5804:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    5808:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    580c:	5f003833 	svcpl	0x00003833
    5810:	545f4353 	ldrbpl	r4, [pc], #-851	; 5818 <__bss_end__+0x2028>
    5814:	45434152 	strbmi	r4, [r3, #-338]	; 0xfffffeae
    5818:	4556455f 	ldrbmi	r4, [r6, #-1375]	; 0xfffffaa1
    581c:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    5820:	45544c49 	ldrbmi	r4, [r4, #-3145]	; 0xfffff3b7
    5824:	34382052 	ldrtcc	r2, [r8], #-82	; 0xffffffae
    5828:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; 4930 <__bss_end__+0x1140>
    582c:	5f005058 	svcpl	0x00005058
    5830:	525f4353 	subspl	r4, pc, #1275068417	; 0x4c000001
    5834:	544c4145 	strbpl	r4, [ip], #-325	; 0xfffffebb
    5838:	5f454d49 	svcpl	0x00454d49
    583c:	4e474953 			; <UNDEFINED> instruction: 0x4e474953
    5840:	20534c41 	subscs	r4, r3, r1, asr #24
    5844:	49003932 	stmdbmi	r0, {r1, r4, r5, r8, fp, ip, sp}
    5848:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    584c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    5850:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 578c <__bss_end__+0x1f9c>
    5854:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    5858:	544e492d 	strbpl	r4, [lr], #-2349	; 0xfffff6d3
    585c:	41454c5f 	cmpmi	r5, pc, asr ip
    5860:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    5864:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    5868:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    586c:	5f5f0029 	svcpl	0x005f0029
    5870:	36434544 	strbcc	r4, [r3], -r4, asr #10
    5874:	414d5f34 	cmpmi	sp, r4, lsr pc
    5878:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    587c:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    5880:	00353833 	eorseq	r3, r5, r3, lsr r8
    5884:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    5888:	575f544e 	ldrbpl	r5, [pc, -lr, asr #8]
    588c:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    5890:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    5894:	5f5f0032 	svcpl	0x005f0032
    5898:	6f727265 	svcvs	0x00727265
    589c:	5f745f72 	svcpl	0x00745f72
    58a0:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    58a4:	2064656e 	rsbcs	r6, r4, lr, ror #10
    58a8:	41550031 	cmpmi	r5, r1, lsr r0
    58ac:	435f5452 	cmpmi	pc, #1375731712	; 0x52000000
    58b0:	58525f52 	ldmdapl	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    58b4:	5349445f 	movtpl	r4, #37983	; 0x945f
    58b8:	30783020 	rsbscc	r3, r8, r0, lsr #32
    58bc:	30303030 	eorscc	r3, r0, r0, lsr r0
    58c0:	00383030 	eorseq	r3, r8, r0, lsr r0
    58c4:	534f4e45 	movtpl	r4, #65093	; 0xfe45
    58c8:	33362052 	teqcc	r6, #82	; 0x52
    58cc:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    58d0:	5f4c4244 	svcpl	0x004c4244
    58d4:	5f534148 	svcpl	0x00534148
    58d8:	4f4e4544 	svcmi	0x004e4544
    58dc:	5f5f4d52 	svcpl	0x005f4d52
    58e0:	5f003120 	svcpl	0x00003120
    58e4:	7562735f 	strbvc	r7, [r2, #-863]!	; 0xfffffca1
    58e8:	415f0066 	cmpmi	pc, r6, rrx
    58ec:	5f49534e 	svcpl	0x0049534e
    58f0:	44445453 	strbmi	r5, [r4], #-1107	; 0xfffffbad
    58f4:	485f4645 	ldmdami	pc, {r0, r2, r6, r9, sl, lr}^	; <UNPREDICTABLE>
    58f8:	6c5f0020 	mrrcvs	0, 2, r0, pc, cr0	; <UNPREDICTABLE>
    58fc:	5f613436 	svcpl	0x00613436
    5900:	00667562 	rsbeq	r7, r6, r2, ror #10
    5904:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    5908:	5252455f 	subspl	r4, r2, #398458880	; 0x17c00000
    590c:	485f4f4e 	ldmdami	pc, {r1, r2, r3, r6, r8, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    5910:	5f00205f 	svcpl	0x0000205f
    5914:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    5918:	4d5f3834 	ldclmi	8, cr3, [pc, #-208]	; 5850 <__bss_end__+0x2060>
    591c:	5f544c55 	svcpl	0x00544c55
    5920:	30282032 	eorcc	r2, r8, r2, lsr r0
    5924:	30303078 	eorscc	r3, r0, r8, ror r0
    5928:	5f002935 	svcpl	0x00002935
    592c:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    5930:	4145465f 	cmpmi	r5, pc, asr r6
    5934:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    5938:	4944495f 	stmdbmi	r4, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    593c:	706f0056 	rsbvc	r0, pc, r6, asr r0	; <UNPREDICTABLE>
    5940:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
    5944:	435f5f00 	cmpmi	pc, #0, 30
    5948:	55535f43 	ldrbpl	r5, [r3, #-3907]	; 0xfffff0bd
    594c:	524f5050 	subpl	r5, pc, #80	; 0x50
    5950:	565f5354 			; <UNDEFINED> instruction: 0x565f5354
    5954:	44415241 	strbmi	r5, [r1], #-577	; 0xfffffdbf
    5958:	585f4349 	ldmdapl	pc, {r0, r3, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    595c:	31205858 			; <UNDEFINED> instruction: 0x31205858
    5960:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 4a68 <__bss_end__+0x1278>
    5964:	5f534553 	svcpl	0x00534553
    5968:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    596c:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
    5970:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    5974:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 597c <__bss_end__+0x218c>
    5978:	4c4f5645 	mcrrmi	6, 4, r5, pc, cr5
    597c:	4c495441 	cfstrdmi	mvd5, [r9], {65}	; 0x41
    5980:	79742845 	ldmdbvc	r4!, {r0, r2, r6, fp, sp}^
    5984:	762c6570 			; <UNDEFINED> instruction: 0x762c6570
    5988:	20297261 	eorcs	r7, r9, r1, ror #4
    598c:	79742828 	ldmdbvc	r4!, {r3, r5, fp, sp}^
    5990:	28296570 	stmdacs	r9!, {r4, r5, r6, r8, sl, sp, lr}
    5994:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    5998:	7470746e 	ldrbtvc	r7, [r0], #-1134	; 0xfffffb92
    599c:	29745f72 	ldmdbcs	r4!, {r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    59a0:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 5908 <__bss_end__+0x2118>
    59a4:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    59a8:	6f762065 	svcvs	0x00762065
    59ac:	2a206469 	bcs	81eb58 <heap_size+0x7feb58>
    59b0:	61762829 	cmnvs	r6, r9, lsr #16
    59b4:	00292972 	eoreq	r2, r9, r2, ror r9
    59b8:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    59bc:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    59c0:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    59c4:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    59c8:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    59cc:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    59d0:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    59d4:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    59d8:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    59dc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    59e0:	5058455f 	subspl	r4, r8, pc, asr r5
    59e4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    59e8:	00343230 	eorseq	r3, r4, r0, lsr r2
    59ec:	6f6c5f5f 	svcvs	0x006c5f5f
    59f0:	62616b63 	rsbvs	r6, r1, #101376	; 0x18c00
    59f4:	5f20656c 	svcpl	0x0020656c
    59f8:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    59fc:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    5a00:	61746f6e 	cmnvs	r4, lr, ror #30
    5a04:	6c286574 	cfstr32vs	mvfx6, [r8], #-464	; 0xfffffe30
    5a08:	616b636f 	cmnvs	fp, pc, ror #6
    5a0c:	29656c62 	stmdbcs	r5!, {r1, r5, r6, sl, fp, sp, lr}^
    5a10:	685f5f00 	ldmdavs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5a14:	655f7361 	ldrbvs	r7, [pc, #-865]	; 56bb <__bss_end__+0x1ecb>
    5a18:	6e657478 	mcrvs	4, 3, r7, cr5, cr8, {3}
    5a1c:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
    5a20:	685f5f20 	ldmdavs	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5a24:	665f7361 	ldrbvs	r7, [pc], -r1, ror #6
    5a28:	75746165 	ldrbvc	r6, [r4, #-357]!	; 0xfffffe9b
    5a2c:	55006572 	strpl	r6, [r0, #-1394]	; 0xfffffa8e
    5a30:	5f545241 	svcpl	0x00545241
    5a34:	435f524d 	cmpmi	pc, #-805306364	; 0xd0000004
    5a38:	4c524148 	ldfmie	f4, [r2], {72}	; 0x48
    5a3c:	375f4e45 	ldrbcc	r4, [pc, -r5, asr #28]
    5a40:	5449425f 	strbpl	r4, [r9], #-607	; 0xfffffda1
    5a44:	30783020 	rsbscc	r3, r8, r0, lsr #32
    5a48:	30303030 	eorscc	r3, r0, r0, lsr r0
    5a4c:	00343030 	eorseq	r3, r4, r0, lsr r0
    5a50:	6e755f5f 	mrcvs	15, 3, r5, cr5, cr15, {2}
    5a54:	6b636f6c 	blvs	18e180c <_end+0x8e180c>
    5a58:	2e2e2873 	mcrcs	8, 1, r2, cr14, cr3, {3}
    5a5c:	5f20292e 	svcpl	0x0020292e
    5a60:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    5a64:	6e615f6b 	cdpvs	15, 6, cr5, cr1, cr11, {3}
    5a68:	61746f6e 	cmnvs	r4, lr, ror #30
    5a6c:	75286574 	strvc	r6, [r8, #-1396]!	; 0xfffffa8c
    5a70:	636f6c6e 	cmnvs	pc, #28160	; 0x6e00
    5a74:	75665f6b 	strbvc	r5, [r6, #-3947]!	; 0xfffff095
    5a78:	6974636e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    5a7c:	5f286e6f 	svcpl	0x00286e6f
    5a80:	5f41565f 	svcpl	0x0041565f
    5a84:	53475241 	movtpl	r5, #29249	; 0x7241
    5a88:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    5a8c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 4b94 <__bss_end__+0x13a4>
    5a90:	41524653 	cmpmi	r2, r3, asr r6
    5a94:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 5990 <__bss_end__+0x21a0>
    5a98:	5f5f5841 	svcpl	0x005f5841
    5a9c:	46583020 	ldrbmi	r3, [r8], -r0, lsr #32
    5aa0:	382d5046 	stmdacc	sp!, {r1, r2, r6, ip, lr}
    5aa4:	00524855 	subseq	r4, r2, r5, asr r8
    5aa8:	49445453 	stmdbmi	r4, {r0, r1, r4, r6, sl, ip, lr}^
    5aac:	49465f4e 	stmdbmi	r6, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    5ab0:	4f4e454c 	svcmi	0x004e454c
    5ab4:	5f003020 	svcpl	0x00003020
    5ab8:	7275705f 	rsbsvc	r7, r5, #95	; 0x5f
    5abc:	5f5f2065 	svcpl	0x005f2065
    5ac0:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    5ac4:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    5ac8:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5acc:	705f5f28 	subsvc	r5, pc, r8, lsr #30
    5ad0:	5f657275 	svcpl	0x00657275
    5ad4:	0029295f 	eoreq	r2, r9, pc, asr r9
    5ad8:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    5adc:	5059545f 	subspl	r5, r9, pc, asr r4
    5ae0:	485f5345 	ldmdami	pc, {r0, r2, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    5ae4:	5f5f0020 	svcpl	0x005f0020
    5ae8:	33544c46 	cmpcc	r4, #17920	; 0x4600
    5aec:	414d5f32 	cmpmi	sp, r2, lsr pc
    5af0:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    5af4:	30342e33 	eorscc	r2, r4, r3, lsr lr
    5af8:	33323832 	teqcc	r2, #3276800	; 0x320000
    5afc:	33363634 	teqcc	r6, #52, 12	; 0x3400000
    5b00:	38323538 	ldmdacc	r2!, {r3, r4, r5, r8, sl, ip, sp}
    5b04:	2b653638 	blcs	19533ec <_end+0x9533ec>
    5b08:	33463833 	movtcc	r3, #26675	; 0x6833
    5b0c:	615f0032 	cmpvs	pc, r2, lsr r0	; <UNPREDICTABLE>
    5b10:	69746373 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, r9, sp, lr}^
    5b14:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
    5b18:	5f006675 	svcpl	0x00006675
    5b1c:	5f564544 	svcpl	0x00564544
    5b20:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    5b24:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    5b28:	00204445 	eoreq	r4, r0, r5, asr #8
    5b2c:	6f6c5f5f 	svcvs	0x006c5f5f
    5b30:	635f6b63 	cmpvs	pc, #101376	; 0x18c00
    5b34:	65736f6c 	ldrbvs	r6, [r3, #-3948]!	; 0xfffff094
    5b38:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    5b3c:	2820296b 	stmdacs	r0!, {r0, r1, r3, r5, r6, r8, fp, sp}
    5b40:	696f7628 	stmdbvs	pc!, {r3, r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    5b44:	30202964 	eorcc	r2, r0, r4, ror #18
    5b48:	5f5f0029 	svcpl	0x005f0029
    5b4c:	00686377 	rsbeq	r6, r8, r7, ror r3
    5b50:	4b454553 	blmi	11570a4 <_end+0x1570a4>
    5b54:	5255435f 	subspl	r4, r5, #2080374785	; 0x7c000001
    5b58:	45003120 	strmi	r3, [r0, #-288]	; 0xfffffee0
    5b5c:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    5b60:	54554f44 	ldrbpl	r4, [r5], #-3908	; 0xfffff0bc
    5b64:	36313120 	ldrtcc	r3, [r1], -r0, lsr #2
    5b68:	775f5f00 	ldrbvc	r5, [pc, -r0, lsl #30]
    5b6c:	5f6e7261 	svcpl	0x006e7261
    5b70:	65666572 	strbvs	r6, [r6, #-1394]!	; 0xfffffa8e
    5b74:	636e6572 	cmnvs	lr, #478150656	; 0x1c800000
    5b78:	73287365 			; <UNDEFINED> instruction: 0x73287365
    5b7c:	6d2c6d79 	stcvs	13, cr6, [ip, #-484]!	; 0xfffffe1c
    5b80:	20296773 	eorcs	r6, r9, r3, ror r7
    5b84:	73615f5f 	cmnvc	r1, #380	; 0x17c
    5b88:	285f5f6d 	ldmdacs	pc, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5b8c:	65732e22 	ldrbvs	r2, [r3, #-3618]!	; 0xfffff1de
    5b90:	6f697463 	svcvs	0x00697463
    5b94:	672e206e 	strvs	r2, [lr, -lr, rrx]!
    5b98:	772e756e 	strvc	r7, [lr, -lr, ror #10]!
    5b9c:	696e7261 	stmdbvs	lr!, {r0, r5, r6, r9, ip, sp, lr}^
    5ba0:	222e676e 	eorcs	r6, lr, #28835840	; 0x1b80000
    5ba4:	79732320 	ldmdbvc	r3!, {r5, r8, r9, sp}^
    5ba8:	203b296d 	eorscs	r2, fp, sp, ror #18
    5bac:	73615f5f 	cmnvc	r1, #380	; 0x17c
    5bb0:	285f5f6d 	ldmdacs	pc, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5bb4:	73612e22 	cmnvc	r1, #544	; 0x220
    5bb8:	207a6963 	rsbscs	r6, sl, r3, ror #18
    5bbc:	2022225c 	eorcs	r2, r2, ip, asr r2
    5bc0:	2067736d 	rsbcs	r7, r7, sp, ror #6
    5bc4:	22225c22 	eorcs	r5, r2, #8704	; 0x2200
    5bc8:	5f203b29 	svcpl	0x00203b29
    5bcc:	6d73615f 	ldfvse	f6, [r3, #-380]!	; 0xfffffe84
    5bd0:	22285f5f 	eorcs	r5, r8, #380	; 0x17c
    5bd4:	6572702e 	ldrbvs	r7, [r2, #-46]!	; 0xffffffd2
    5bd8:	756f6976 	strbvc	r6, [pc, #-2422]!	; 526a <__bss_end__+0x1a7a>
    5bdc:	00292273 	eoreq	r2, r9, r3, ror r2
    5be0:	7363775f 	cmnvc	r3, #24903680	; 0x17c0000
    5be4:	6d6f7472 	cfstrdvs	mvd7, [pc, #-456]!	; 5a24 <__bss_end__+0x2234>
    5be8:	735f7362 	cmpvc	pc, #-2013265919	; 0x88000001
    5bec:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    5bf0:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 4cf8 <__bss_end__+0x1508>
    5bf4:	465f5153 			; <UNDEFINED> instruction: 0x465f5153
    5bf8:	5f544942 	svcpl	0x00544942
    5bfc:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    5c00:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    5c04:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    5c08:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    5c0c:	5059545f 	subspl	r5, r9, pc, asr r4
    5c10:	205f5f45 	subscs	r5, pc, r5, asr #30
    5c14:	00746e69 	rsbseq	r6, r4, r9, ror #28
    5c18:	4e4f4345 	cdpmi	3, 4, cr4, cr15, cr5, {2}
    5c1c:	4645524e 	strbmi	r5, [r5], -lr, asr #4
    5c20:	44455355 	strbmi	r5, [r5], #-853	; 0xfffffcab
    5c24:	31313120 	teqcc	r1, r0, lsr #2
    5c28:	49555f00 	ldmdbmi	r5, {r8, r9, sl, fp, ip, lr}^
    5c2c:	5f545f44 	svcpl	0x00545f44
    5c30:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    5c34:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    5c38:	49550020 	ldmdbmi	r5, {r5}^
    5c3c:	5f38544e 	svcpl	0x0038544e
    5c40:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    5c44:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 4d2c <__bss_end__+0x153c>
    5c48:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    5c4c:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    5c50:	49550029 	ldmdbmi	r5, {r0, r3, r5}^
    5c54:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    5c58:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    5c5c:	705f5f00 	subsvc	r5, pc, r0, lsl #30
    5c60:	745f7274 	ldrbvc	r7, [pc], #-628	; 5c68 <__bss_end__+0x2478>
    5c64:	696f7620 	stmdbvs	pc!, {r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    5c68:	002a2064 	eoreq	r2, sl, r4, rrx
    5c6c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    5c70:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    5c74:	4f4c5f00 	svcmi	0x004c5f00
    5c78:	525f4b43 	subspl	r4, pc, #68608	; 0x10c00
    5c7c:	52554345 	subspl	r4, r5, #335544321	; 0x14000001
    5c80:	45564953 	ldrbmi	r4, [r6, #-2387]	; 0xfffff6ad
    5c84:	5f00545f 	svcpl	0x0000545f
    5c88:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    5c8c:	4f485f43 	svcmi	0x00485f43
    5c90:	44455453 	strbmi	r5, [r5], #-1107	; 0xfffffbad
    5c94:	30205f5f 	eorcc	r5, r0, pc, asr pc
    5c98:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    5c9c:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
    5ca0:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    5ca4:	5349565f 	movtpl	r5, #38495	; 0x965f
    5ca8:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    5cac:	5f003020 	svcpl	0x00003020
    5cb0:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    5cb4:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    5cb8:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    5cbc:	20632029 	rsbcs	r2, r3, r9, lsr #32
    5cc0:	55202323 	strpl	r2, [r0, #-803]!	; 0xfffffcdd
    5cc4:	5f004c4c 	svcpl	0x00004c4c
    5cc8:	4345445f 	movtmi	r4, #21599	; 0x545f
    5ccc:	535f3436 	cmppl	pc, #905969664	; 0x36000000
    5cd0:	4f4e4255 	svcmi	0x004e4255
    5cd4:	4c414d52 	mcrrmi	13, 5, r4, r1, cr2
    5cd8:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    5cdc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    5ce0:	3030302e 	eorscc	r3, r0, lr, lsr #32
    5ce4:	30303030 	eorscc	r3, r0, r0, lsr r0
    5ce8:	30303030 	eorscc	r3, r0, r0, lsr r0
    5cec:	31303030 	teqcc	r0, r0, lsr r0
    5cf0:	38332d45 	ldmdacc	r3!, {r0, r2, r6, r8, sl, fp, sp}
    5cf4:	00444433 	subeq	r4, r4, r3, lsr r4
    5cf8:	5f43535f 	svcpl	0x0043535f
    5cfc:	4e595341 	cdpmi	3, 5, cr5, cr9, cr1, {2}
    5d00:	4f524843 	svcmi	0x00524843
    5d04:	53554f4e 	cmppl	r5, #312	; 0x138
    5d08:	204f495f 	subcs	r4, pc, pc, asr r9	; <UNPREDICTABLE>
    5d0c:	5f003132 	svcpl	0x00003132
    5d10:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    5d14:	74705f64 	ldrbtvc	r5, [r0], #-3940	; 0xfffff09c
    5d18:	66696472 			; <UNDEFINED> instruction: 0x66696472
    5d1c:	00745f66 	rsbseq	r5, r4, r6, ror #30
    5d20:	5f43535f 	svcpl	0x0043535f
    5d24:	505f514d 	subspl	r5, pc, sp, asr #2
    5d28:	5f4f4952 	svcpl	0x004f4952
    5d2c:	2058414d 	subscs	r4, r8, sp, asr #2
    5d30:	5f003431 	svcpl	0x00003431
    5d34:	7165725f 	cmnvc	r5, pc, asr r2
    5d38:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    5d3c:	78655f73 	stmdavc	r5!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    5d40:	73756c63 	cmnvc	r5, #25344	; 0x6300
    5d44:	28657669 	stmdacs	r5!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
    5d48:	292e2e2e 	stmdbcs	lr!, {r1, r2, r3, r5, r9, sl, fp, sp}
    5d4c:	6c5f5f20 	mrrcvs	15, 2, r5, pc, cr0	; <UNPREDICTABLE>
    5d50:	5f6b636f 	svcpl	0x006b636f
    5d54:	6f6e6e61 	svcvs	0x006e6e61
    5d58:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    5d5c:	63786528 	cmnvs	r8, #40, 10	; 0xa000000
    5d60:	6973756c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
    5d64:	6c5f6576 	cfldr64vs	mvdx6, [pc], {118}	; 0x76
    5d68:	736b636f 	cmnvc	fp, #-1140850687	; 0xbc000001
    5d6c:	7165725f 	cmnvc	r5, pc, asr r2
    5d70:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    5d74:	5f5f2864 	svcpl	0x005f2864
    5d78:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    5d7c:	5f534752 	svcpl	0x00534752
    5d80:	0029295f 	eoreq	r2, r9, pc, asr r9
    5d84:	716e795a 	cmnvc	lr, sl, asr r9
    5d88:	30303037 	eorscc	r3, r0, r7, lsr r0
    5d8c:	5241555f 	subpl	r5, r1, #398458880	; 0x17c00000
    5d90:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
    5d94:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    5d98:	4c424153 	stfmie	f4, [r2], {83}	; 0x53
    5d9c:	41552845 	cmpmi	r5, r5, asr #16
    5da0:	20295452 	eorcs	r5, r9, r2, asr r4
    5da4:	52415528 	subpl	r5, r1, #40, 10	; 0xa000000
    5da8:	493e2d54 	ldmdbmi	lr!, {r2, r4, r6, r8, sl, fp, sp}
    5dac:	26205245 	strtcs	r5, [r0], -r5, asr #4
    5db0:	287e203d 	ldmdacs	lr!, {r0, r2, r3, r4, r5, sp}^
    5db4:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    5db8:	5258495f 	subspl	r4, r8, #1556480	; 0x17c000
    5dbc:	4f58525f 	svcmi	0x0058525f
    5dc0:	7c205256 	sfmvc	f5, 4, [r0], #-344	; 0xfffffea8
    5dc4:	52415520 	subpl	r5, r1, #32, 10	; 0x8000000
    5dc8:	58495f54 	stmdapl	r9, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    5dcc:	58525f52 	ldmdapl	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    5dd0:	4c4c5546 	cfstr64mi	mvdx5, [ip], {70}	; 0x46
    5dd4:	5f002929 	svcpl	0x00002929
    5dd8:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    5ddc:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    5de0:	5f474946 	svcpl	0x00474946
    5de4:	205f5f48 	subscs	r5, pc, r8, asr #30
    5de8:	43535f00 	cmpmi	r3, #0, 30
    5dec:	4952505f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, ip, lr}^
    5df0:	5449524f 	strbpl	r5, [r9], #-591	; 0xfffffdb1
    5df4:	43535f59 	cmpmi	r3, #356	; 0x164
    5df8:	55444548 	strbpl	r4, [r4, #-1352]	; 0xfffffab8
    5dfc:	474e494c 	strbmi	r4, [lr, -ip, asr #18]
    5e00:	31303120 	teqcc	r0, r0, lsr #2
    5e04:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 5e0c <__bss_end__+0x261c>
    5e08:	485f4c42 	ldmdami	pc, {r1, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    5e0c:	445f5341 	ldrbmi	r5, [pc], #-833	; 5e14 <__bss_end__+0x2624>
    5e10:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    5e14:	205f5f4d 	subscs	r5, pc, sp, asr #30
    5e18:	5f5f0031 	svcpl	0x005f0031
    5e1c:	49465441 	stmdbmi	r6, {r0, r6, sl, ip, lr}^
    5e20:	565f454c 	ldrbpl	r4, [pc], -ip, asr #10
    5e24:	42495349 	submi	r5, r9, #603979777	; 0x24000001
    5e28:	3020454c 	eorcc	r4, r0, ip, asr #10
    5e2c:	525f5f00 	subspl	r5, pc, #0, 30
    5e30:	53494745 	movtpl	r4, #38725	; 0x9745
    5e34:	5f524554 	svcpl	0x00524554
    5e38:	46455250 			; <UNDEFINED> instruction: 0x46455250
    5e3c:	5f5f5849 	svcpl	0x005f5849
    5e40:	5f5f0020 	svcpl	0x005f0020
    5e44:	5f434347 	svcpl	0x00434347
    5e48:	45564148 	ldrbmi	r4, [r6, #-328]	; 0xfffffeb8
    5e4c:	4e59535f 	mrcmi	3, 2, r5, cr9, cr15, {2}
    5e50:	4f435f43 	svcmi	0x00435f43
    5e54:	5241504d 	subpl	r5, r1, #77	; 0x4d
    5e58:	4e415f45 	cdpmi	15, 4, cr5, cr1, cr5, {2}
    5e5c:	57535f44 	ldrbpl	r5, [r3, -r4, asr #30]
    5e60:	325f5041 	subscc	r5, pc, #65	; 0x41
    5e64:	5f003120 	svcpl	0x00003120
    5e68:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    5e6c:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 5d9c <__bss_end__+0x25ac>
    5e70:	315f5841 	cmpcc	pc, r1, asr #16
    5e74:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    5e78:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    5e7c:	00383033 	eorseq	r3, r8, r3, lsr r0
    5e80:	6f635f5f 	svcvs	0x00635f5f
    5e84:	7261706d 	rsbvc	r7, r1, #109	; 0x6d
    5e88:	5f6e665f 	svcpl	0x006e665f
    5e8c:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    5e90:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    5e94:	45002064 	strmi	r2, [r0, #-100]	; 0xffffff9c
    5e98:	544c554d 	strbpl	r5, [ip], #-1357	; 0xfffffab3
    5e9c:	504f4849 	subpl	r4, pc, r9, asr #16
    5ea0:	00343720 	eorseq	r3, r4, r0, lsr #14
    5ea4:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    5ea8:	545f5241 	ldrbpl	r5, [pc], #-577	; 5eb0 <__bss_end__+0x26c0>
    5eac:	4645445f 			; <UNDEFINED> instruction: 0x4645445f
    5eb0:	44454e49 	strbmi	r4, [r5], #-3657	; 0xfffff1b7
    5eb4:	775f0020 	ldrbvc	r0, [pc, -r0, lsr #32]
    5eb8:	6d6f7463 	cfstrdvs	mvd7, [pc, #-396]!	; 5d34 <__bss_end__+0x2544>
    5ebc:	74735f62 	ldrbtvc	r5, [r3], #-3938	; 0xfffff09e
    5ec0:	00657461 	rsbeq	r7, r5, r1, ror #8
    5ec4:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    5ec8:	41425f31 	cmpmi	r2, r1, lsr pc
    5ecc:	30204553 	eorcc	r4, r0, r3, asr r5
    5ed0:	30304578 	eorscc	r4, r0, r8, ror r5
    5ed4:	30303130 	eorscc	r3, r0, r0, lsr r1
    5ed8:	5f5f0030 	svcpl	0x005f0030
    5edc:	43554e47 	cmpmi	r5, #1136	; 0x470
    5ee0:	5f41565f 	svcpl	0x0041565f
    5ee4:	5453494c 	ldrbpl	r4, [r3], #-2380	; 0xfffff6b4
    5ee8:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; 5d74 <__bss_end__+0x2584>
    5eec:	49544150 	ldmdbmi	r4, {r4, r6, r8, lr}^
    5ef0:	494c4942 	stmdbmi	ip, {r1, r6, r8, fp, lr}^
    5ef4:	31205954 			; <UNDEFINED> instruction: 0x31205954
    5ef8:	524f4600 	subpl	r4, pc, #0, 12
    5efc:	4f524745 	svcmi	0x00524745
    5f00:	5f444e55 	svcpl	0x00444e55
    5f04:	5f4c4f43 	svcpl	0x004c4f43
    5f08:	4e415943 	vmlsmi.f16	s11, s2, s6	; <UNPREDICTABLE>
    5f0c:	36332220 	ldrtcc	r2, [r3], -r0, lsr #4
    5f10:	5f5f0022 	svcpl	0x005f0022
    5f14:	5f434347 	svcpl	0x00434347
    5f18:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 5e1c <__bss_end__+0x262c>
    5f1c:	435f4349 	cmpmi	pc, #603979777	; 0x24000001
    5f20:	31524148 	cmpcc	r2, r8, asr #2
    5f24:	5f545f36 	svcpl	0x00545f36
    5f28:	4b434f4c 	blmi	10d9c60 <_end+0xd9c60>
    5f2c:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    5f30:	00322045 	eorseq	r2, r2, r5, asr #32
    5f34:	44444145 	strbmi	r4, [r4], #-325	; 0xfffffebb
    5f38:	544f4e52 	strbpl	r4, [pc], #-3666	; 5f40 <__bss_end__+0x2750>
    5f3c:	49415641 	stmdbmi	r1, {r0, r6, r9, sl, ip, lr}^
    5f40:	3231204c 	eorscc	r2, r1, #76	; 0x4c
    5f44:	5f5f0035 	svcpl	0x005f0035
    5f48:	43554e47 	cmpmi	r5, #1136	; 0x470
    5f4c:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    5f50:	4e495f43 	cdpmi	15, 4, cr5, cr9, cr3, {2}
    5f54:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    5f58:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    5f5c:	4f4e4500 	svcmi	0x004e4500
    5f60:	20564544 	subscs	r4, r6, r4, asr #10
    5f64:	5f003931 	svcpl	0x00003931
    5f68:	435f4353 	cmpmi	pc, #1275068417	; 0x4c000001
    5f6c:	49545550 	ldmdbmi	r4, {r4, r6, r8, sl, ip, lr}^
    5f70:	3620454d 	strtcc	r4, [r0], -sp, asr #10
    5f74:	535f0033 	cmppl	pc, #51	; 0x33
    5f78:	37565f43 	ldrbcc	r5, [r6, -r3, asr #30]
    5f7c:	504c495f 	subpl	r4, ip, pc, asr r9
    5f80:	4f5f3233 	svcmi	0x005f3233
    5f84:	49424646 	stmdbmi	r2, {r1, r2, r6, r9, sl, lr}^
    5f88:	33392047 	teqcc	r9, #71	; 0x47
    5f8c:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 5f94 <__bss_end__+0x27a4>
    5f90:	696d5f6d 	stmdbvs	sp!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    5f94:	535f006e 	cmppl	pc, #110	; 0x6e
    5f98:	5f325f43 	svcpl	0x00325f43
    5f9c:	20455055 	subcs	r5, r5, r5, asr r0
    5fa0:	00303231 	eorseq	r3, r0, r1, lsr r2
    5fa4:	75675f5f 	strbvc	r5, [r7, #-3935]!	; 0xfffff0a1
    5fa8:	65647261 	strbvs	r7, [r4, #-609]!	; 0xfffffd9f
    5fac:	79625f64 	stmdbvc	r2!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    5fb0:	20297828 	eorcs	r7, r9, r8, lsr #16
    5fb4:	6f6c5f5f 	svcvs	0x006c5f5f
    5fb8:	615f6b63 	cmpvs	pc, r3, ror #22
    5fbc:	746f6e6e 	strbtvc	r6, [pc], #-3694	; 5fc4 <__bss_end__+0x27d4>
    5fc0:	28657461 	stmdacs	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    5fc4:	72617567 	rsbvc	r7, r1, #432013312	; 0x19c00000
    5fc8:	5f646564 	svcpl	0x00646564
    5fcc:	78287962 	stmdavc	r8!, {r1, r5, r6, r8, fp, ip, sp, lr}
    5fd0:	5f002929 	svcpl	0x00002929
    5fd4:	415f4353 	cmpmi	pc, r3, asr r3	; <UNPREDICTABLE>
    5fd8:	4d5f4f49 	ldclmi	15, cr4, [pc, #-292]	; 5ebc <__bss_end__+0x26cc>
    5fdc:	33205841 			; <UNDEFINED> instruction: 0x33205841
    5fe0:	5f5f0035 	svcpl	0x005f0035
    5fe4:	4f505845 	svcmi	0x00505845
    5fe8:	00205452 	eoreq	r5, r0, r2, asr r4
    5fec:	4d505f5f 	ldclmi	15, cr5, [r0, #-380]	; 0xfffffe84
    5ff0:	72612854 	rsbvc	r2, r1, #84, 16	; 0x540000
    5ff4:	20297367 	eorcs	r7, r9, r7, ror #6
    5ff8:	73677261 	cmnvc	r7, #268435462	; 0x10000006
    5ffc:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    6000:	41465f54 	cmpmi	r6, r4, asr pc
    6004:	5f385453 	svcpl	0x00385453
    6008:	0058414d 	subseq	r4, r8, sp, asr #2
    600c:	43575f5f 	cmpmi	r7, #380	; 0x17c
    6010:	5f524148 	svcpl	0x00524148
    6014:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    6018:	205f5f48 	subscs	r5, pc, r8, asr #30
    601c:	55003233 	strpl	r3, [r0, #-563]	; 0xfffffdcd
    6020:	5f545241 	svcpl	0x00545241
    6024:	435f524d 	cmpmi	pc, #-805306364	; 0xd0000004
    6028:	444f4d48 	strbmi	r4, [pc], #-3400	; 6030 <__bss_end__+0x2840>
    602c:	4f4e5f45 	svcmi	0x004e5f45
    6030:	30204d52 	eorcc	r4, r0, r2, asr sp
    6034:	30303078 	eorscc	r3, r0, r8, ror r0
    6038:	30303030 	eorscc	r3, r0, r0, lsr r0
    603c:	6f630030 	svcvs	0x00630030
    6040:	4d726f6c 	ldclmi	15, cr6, [r2, #-432]!	; 0xfffffe50
    6044:	75536773 	ldrbvc	r6, [r3, #-1907]	; 0xfffff88d
    6048:	73656363 	cmnvc	r5, #-1946157055	; 0x8c000001
    604c:	5f5f0073 	svcpl	0x005f0073
    6050:	5f515455 	svcpl	0x00515455
    6054:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    6058:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    605c:	55003832 	strpl	r3, [r0, #-2098]	; 0xfffff7ce
    6060:	5f545241 	svcpl	0x00545241
    6064:	44554142 	ldrbmi	r4, [r5], #-322	; 0xfffffebe
    6068:	5f4e4547 	svcpl	0x004e4547
    606c:	41534944 	cmpmi	r3, r4, asr #18
    6070:	20454c42 	subcs	r4, r5, r2, asr #24
    6074:	30307830 	eorscc	r7, r0, r0, lsr r8
    6078:	30303030 	eorscc	r3, r0, r0, lsr r0
    607c:	5f003030 	svcpl	0x00003030
    6080:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
    6084:	6d697466 	cfstrdvs	mvd7, [r9, #-408]!	; 0xfffffe68
    6088:	6b696c65 	blvs	1a61224 <_end+0xa61224>
    608c:	6d662865 	stclvs	8, cr2, [r6, #-404]!	; 0xfffffe6c
    6090:	67726174 			; <UNDEFINED> instruction: 0x67726174
    6094:	7269662c 	rsbvc	r6, r9, #44, 12	; 0x2c00000
    6098:	61767473 	cmnvs	r6, r3, ror r4
    609c:	67726172 			; <UNDEFINED> instruction: 0x67726172
    60a0:	5f5f2029 	svcpl	0x005f2029
    60a4:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    60a8:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    60ac:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    60b0:	665f5f28 	ldrbvs	r5, [pc], -r8, lsr #30
    60b4:	616d726f 	cmnvs	sp, pc, ror #4
    60b8:	205f5f74 	subscs	r5, pc, r4, ror pc	; <UNPREDICTABLE>
    60bc:	735f5f28 	cmpvc	pc, #40, 30	; 0xa0
    60c0:	74667274 	strbtvc	r7, [r6], #-628	; 0xfffffd8c
    60c4:	5f656d69 	svcpl	0x00656d69
    60c8:	66202c5f 			; <UNDEFINED> instruction: 0x66202c5f
    60cc:	7261746d 	rsbvc	r7, r1, #1828716544	; 0x6d000000
    60d0:	66202c67 	strtvs	r2, [r0], -r7, ror #24
    60d4:	74737269 	ldrbtvc	r7, [r3], #-617	; 0xfffffd97
    60d8:	61726176 	cmnvs	r2, r6, ror r1
    60dc:	29296772 	stmdbcs	r9!, {r1, r4, r5, r6, r8, r9, sl, sp, lr}
    60e0:	695f0029 	ldmdbvs	pc, {r0, r3, r5}^	; <UNPREDICTABLE>
    60e4:	0073626f 	rsbseq	r6, r3, pc, ror #4
    60e8:	656d655f 	strbvs	r6, [sp, #-1375]!	; 0xfffffaa1
    60ec:	6e656772 	mcrvs	7, 3, r6, cr5, cr2, {3}
    60f0:	5f007963 	svcpl	0x00007963
    60f4:	5254505f 	subspl	r5, r4, #95	; 0x5f
    60f8:	46464944 	strbmi	r4, [r6], -r4, asr #18
    60fc:	0020545f 	eoreq	r5, r0, pc, asr r4
    6100:	54495845 	strbpl	r5, [r9], #-2117	; 0xfffff7bb
    6104:	4355535f 	cmpmi	r5, #2080374785	; 0x7c000001
    6108:	53534543 	cmppl	r3, #281018368	; 0x10c00000
    610c:	5f003020 	svcpl	0x00003020
    6110:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    6114:	4145465f 	cmpmi	r5, pc, asr r6
    6118:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    611c:	5053445f 	subspl	r4, r3, pc, asr r4
    6120:	5f003120 	svcpl	0x00003120
    6124:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    6128:	4145465f 	cmpmi	r5, pc, asr r6
    612c:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    6130:	5952435f 	ldmdbpl	r2, {r0, r1, r2, r3, r4, r6, r8, r9, lr}^
    6134:	004f5450 	subeq	r5, pc, r0, asr r4	; <UNPREDICTABLE>
    6138:	6e61725f 	mcrvs	2, 3, r7, cr1, cr15, {2}
    613c:	656e5f64 	strbvs	r5, [lr, #-3940]!	; 0xfffff09c
    6140:	5f007478 	svcpl	0x00007478
    6144:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    6148:	485f3233 	ldmdami	pc, {r0, r1, r4, r5, r9, ip, sp}^	; <UNPREDICTABLE>
    614c:	445f5341 	ldrbmi	r5, [pc], #-833	; 6154 <__bss_end__+0x2964>
    6150:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    6154:	205f5f4d 	subscs	r5, pc, sp, asr #30
    6158:	5f5f0031 	svcpl	0x005f0031
    615c:	66727473 			; <UNDEFINED> instruction: 0x66727473
    6160:	6c6e6f6d 	stclvs	15, cr6, [lr], #-436	; 0xfffffe4c
    6164:	28656b69 	stmdacs	r5!, {r0, r3, r5, r6, r8, r9, fp, sp, lr}^
    6168:	61746d66 	cmnvs	r4, r6, ror #26
    616c:	662c6772 			; <UNDEFINED> instruction: 0x662c6772
    6170:	74737269 	ldrbtvc	r7, [r3], #-617	; 0xfffffd97
    6174:	61726176 	cmnvs	r2, r6, ror r1
    6178:	20296772 	eorcs	r6, r9, r2, ror r7
    617c:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    6180:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    6184:	5f657475 	svcpl	0x00657475
    6188:	5f28285f 	svcpl	0x0028285f
    618c:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
    6190:	5f74616d 	svcpl	0x0074616d
    6194:	5f28205f 	svcpl	0x0028205f
    6198:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
    619c:	6e6f6d66 	cdpvs	13, 6, cr6, cr15, cr6, {3}
    61a0:	202c5f5f 	eorcs	r5, ip, pc, asr pc
    61a4:	61746d66 	cmnvs	r4, r6, ror #26
    61a8:	202c6772 	eorcs	r6, ip, r2, ror r7
    61ac:	73726966 	cmnvc	r2, #1671168	; 0x198000
    61b0:	72617674 	rsbvc	r7, r1, #116, 12	; 0x7400000
    61b4:	29677261 	stmdbcs	r7!, {r0, r5, r6, r9, ip, sp, lr}^
    61b8:	49002929 	stmdbmi	r0, {r0, r3, r5, r8, fp, sp}
    61bc:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    61c0:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    61c4:	492d2820 	pushmi	{r5, fp, sp}
    61c8:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    61cc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    61d0:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    61d4:	5f5f0029 	svcpl	0x005f0029
    61d8:	5f4d5241 	svcpl	0x004d5241
    61dc:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    61e0:	5f455255 	svcpl	0x00455255
    61e4:	36315046 	ldrtcc	r5, [r1], -r6, asr #32
    61e8:	4143535f 	cmpmi	r3, pc, asr r3
    61ec:	5f52414c 	svcpl	0x0052414c
    61f0:	54495241 	strbpl	r5, [r9], #-577	; 0xfffffdbf
    61f4:	54454d48 	strbpl	r4, [r5], #-3400	; 0xfffff2b8
    61f8:	5f004349 	svcpl	0x00004349
    61fc:	776c615f 			; <UNDEFINED> instruction: 0x776c615f
    6200:	5f737961 	svcpl	0x00737961
    6204:	696c6e69 	stmdbvs	ip!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    6208:	5f20656e 	svcpl	0x0020656e
    620c:	6c6e695f 			; <UNDEFINED> instruction: 0x6c6e695f
    6210:	5f656e69 	svcpl	0x00656e69
    6214:	5f5f205f 	svcpl	0x005f205f
    6218:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    621c:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    6220:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    6224:	615f5f28 	cmpvs	pc, r8, lsr #30
    6228:	7961776c 	stmdbvc	r1!, {r2, r3, r5, r6, r8, r9, sl, ip, sp, lr}^
    622c:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
    6230:	656e696c 	strbvs	r6, [lr, #-2412]!	; 0xfffff694
    6234:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    6238:	4f484500 	svcmi	0x00484500
    623c:	4f445453 	svcmi	0x00445453
    6240:	31204e57 			; <UNDEFINED> instruction: 0x31204e57
    6244:	5f003731 	svcpl	0x00003731
    6248:	5f51485f 	svcpl	0x0051485f
    624c:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    6250:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    6254:	49550035 	ldmdbmi	r5, {r0, r2, r4, r5}^
    6258:	5f38544e 	svcpl	0x0038544e
    625c:	5f5f0043 	svcpl	0x005f0043
    6260:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
    6264:	5f4d5543 	svcpl	0x004d5543
    6268:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    626c:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    6270:	5f5f0032 	svcpl	0x005f0032
    6274:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    6278:	0020545f 	eoreq	r5, r0, pc, asr r4
    627c:	534c4945 	movtpl	r4, #51525	; 0xc945
    6280:	31205145 			; <UNDEFINED> instruction: 0x31205145
    6284:	5f003833 	svcpl	0x00003833
    6288:	464c4c5f 			; <UNDEFINED> instruction: 0x464c4c5f
    628c:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    6290:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    6294:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    6298:	5f003336 	svcpl	0x00003336
    629c:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    62a0:	49445f4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    62a4:	205f5f47 	subscs	r5, pc, r7, asr #30
    62a8:	5f003531 	svcpl	0x00003531
    62ac:	4148435f 	cmpmi	r8, pc, asr r3
    62b0:	5f323352 	svcpl	0x00323352
    62b4:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    62b8:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    62bc:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    62c0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    62c4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    62c8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    62cc:	47495300 	strbmi	r5, [r9, -r0, lsl #6]
    62d0:	4f54415f 	svcmi	0x0054415f
    62d4:	5f43494d 	svcpl	0x0043494d
    62d8:	204e494d 	subcs	r4, lr, sp, asr #18
    62dc:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    62e0:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    62e4:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    62e8:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    62ec:	5f005f5f 	svcpl	0x00005f5f
    62f0:	7778616d 	ldrbvc	r6, [r8, -sp, ror #2]!
    62f4:	5f007364 	svcpl	0x00007364
    62f8:	6e6f4c5f 	mcrvs	12, 3, r4, cr15, cr15, {2}
    62fc:	6f6c2067 	svcvs	0x006c2067
    6300:	5f00676e 	svcpl	0x0000676e
    6304:	7275705f 	rsbsvc	r7, r5, #95	; 0x5f
    6308:	5f203265 	svcpl	0x00203265
    630c:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    6310:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    6314:	5f5f6574 	svcpl	0x005f6574
    6318:	5f5f2828 	svcpl	0x005f2828
    631c:	736e6f63 	cmnvc	lr, #396	; 0x18c
    6320:	295f5f74 	ldmdbcs	pc, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    6324:	5f5f0029 	svcpl	0x005f0029
    6328:	5f434347 	svcpl	0x00434347
    632c:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 6230 <__bss_end__+0x2a40>
    6330:	535f4349 	cmppl	pc, #603979777	; 0x24000001
    6334:	54524f48 	ldrbpl	r4, [r2], #-3912	; 0xfffff0b8
    6338:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    633c:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    6340:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    6344:	52415500 	subpl	r5, r1, #0, 10
    6348:	454d5f54 	strbmi	r5, [sp, #-3924]	; 0xfffff0ac
    634c:	534d4544 	movtpl	r4, #54596	; 0xd544
    6350:	49525f52 	ldmdbmi	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    6354:	78302058 	ldmdavc	r0!, {r3, r4, r6, sp}
    6358:	30303030 	eorscc	r3, r0, r0, lsr r0
    635c:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    6360:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 5468 <__bss_end__+0x1c78>
    6364:	4152464c 	cmpmi	r2, ip, asr #12
    6368:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 6264 <__bss_end__+0x2a74>
    636c:	5f5f5841 	svcpl	0x005f5841
    6370:	46583020 	ldrbmi	r3, [r8], -r0, lsr #32
    6374:	46464646 	strbmi	r4, [r6], -r6, asr #12
    6378:	50464646 	subpl	r4, r6, r6, asr #12
    637c:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
    6380:	5f00524c 	svcpl	0x0000524c
    6384:	41484357 	cmpmi	r8, r7, asr r3
    6388:	5f545f52 	svcpl	0x00545f52
    638c:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    6390:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    6394:	5f5f0020 	svcpl	0x005f0020
    6398:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    639c:	505f464f 	subspl	r4, pc, pc, asr #12
    63a0:	544e494f 	strbpl	r4, [lr], #-2383	; 0xfffff6b1
    63a4:	5f5f5245 	svcpl	0x005f5245
    63a8:	5f003420 	svcpl	0x00003420
    63ac:	544f445f 	strbpl	r4, [pc], #-1119	; 63b4 <__bss_end__+0x2bc4>
    63b0:	202c2053 	eorcs	r2, ip, r3, asr r0
    63b4:	002e2e2e 	eoreq	r2, lr, lr, lsr #28
    63b8:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    63bc:	5541425f 	strbpl	r4, [r1, #-607]	; 0xfffffda1
    63c0:	4e454744 	cdpmi	7, 4, cr4, cr5, cr4, {2}
    63c4:	53414d5f 	movtpl	r4, #7519	; 0x1d5f
    63c8:	7830204b 	ldmdavc	r0!, {r0, r1, r3, r6, sp}
    63cc:	30303030 	eorscc	r3, r0, r0, lsr r0
    63d0:	46464646 	strbmi	r4, [r6], -r6, asr #12
    63d4:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    63d8:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    63dc:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    63e0:	414d5f34 	cmpmi	sp, r4, lsr pc
    63e4:	5f5f2058 	svcpl	0x005f2058
    63e8:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    63ec:	41454c5f 	cmpmi	r5, pc, asr ip
    63f0:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    63f4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    63f8:	5f005f5f 	svcpl	0x00005f5f
    63fc:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    6400:	445f545f 	ldrbmi	r5, [pc], #-1119	; 6408 <__bss_end__+0x2c18>
    6404:	414c4345 	cmpmi	ip, r5, asr #6
    6408:	20444552 	subcs	r4, r4, r2, asr r5
    640c:	5f545f00 	svcpl	0x00545f00
    6410:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    6414:	555f0020 	ldrbpl	r0, [pc, #-32]	; 63fc <__bss_end__+0x2c0c>
    6418:	5f545241 	svcpl	0x00545241
    641c:	485f5748 	ldmdami	pc, {r3, r6, r8, r9, sl, ip, lr}^	; <UNPREDICTABLE>
    6420:	5f00205f 	svcpl	0x0000205f
    6424:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    6428:	5f525450 	svcpl	0x00525450
    642c:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    6430:	205f5f48 	subscs	r5, pc, r8, asr #30
    6434:	5f003233 	svcpl	0x00003233
    6438:	535f4353 	cmppl	pc, #1275068417	; 0x4c000001
    643c:	50414d45 	subpl	r4, r1, r5, asr #26
    6440:	45524f48 	ldrbmi	r4, [r2, #-3912]	; 0xfffff0b8
    6444:	30332053 	eorscc	r2, r3, r3, asr r0
    6448:	43535f00 	cmpmi	r3, #0, 30
    644c:	504f585f 	subpl	r5, pc, pc, asr r8	; <UNPREDICTABLE>
    6450:	535f4e45 	cmppl	pc, #1104	; 0x450
    6454:	41455254 	cmpmi	r5, r4, asr r2
    6458:	3120534d 			; <UNDEFINED> instruction: 0x3120534d
    645c:	5f003430 	svcpl	0x00003430
    6460:	7972745f 	ldmdbvc	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    6464:	6b636f6c 	blvs	18e221c <_end+0x8e221c>
    6468:	68735f73 	ldmdavs	r3!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    646c:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    6470:	2e2e2e28 	cdpcs	14, 2, cr2, cr14, cr8, {1}
    6474:	5f5f2029 	svcpl	0x005f2029
    6478:	6b636f6c 	blvs	18e2230 <_end+0x8e2230>
    647c:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    6480:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    6484:	68732865 	ldmdavs	r3!, {r0, r2, r5, r6, fp, sp}^
    6488:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    648c:	7972745f 	ldmdbvc	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    6490:	6b636f6c 	blvs	18e2248 <_end+0x8e2248>
    6494:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
    6498:	6f697463 	svcvs	0x00697463
    649c:	5f5f286e 	svcpl	0x005f286e
    64a0:	415f4156 	cmpmi	pc, r6, asr r1	; <UNPREDICTABLE>
    64a4:	5f534752 	svcpl	0x00534752
    64a8:	0029295f 	eoreq	r2, r9, pc, asr r9
    64ac:	4f435f5f 	svcmi	0x00435f5f
    64b0:	5441434e 	strbpl	r4, [r1], #-846	; 0xfffffcb2
    64b4:	2c782831 	ldclcs	8, cr2, [r8], #-196	; 0xffffff3c
    64b8:	78202979 	stmdavc	r0!, {r0, r3, r4, r5, r6, r8, fp, sp}
    64bc:	20232320 	eorcs	r2, r3, r0, lsr #6
    64c0:	5f5f0079 	svcpl	0x005f0079
    64c4:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    64c8:	61656c5f 	cmnvs	r5, pc, asr ip
    64cc:	5f387473 	svcpl	0x00387473
    64d0:	65645f74 	strbvs	r5, [r4, #-3956]!	; 0xfffff08c
    64d4:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    64d8:	00312064 	eorseq	r2, r1, r4, rrx
    64dc:	50544e49 	subspl	r4, r4, r9, asr #28
    64e0:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 6398 <__bss_end__+0x2ba8>
    64e4:	5f004e49 	svcpl	0x00004e49
    64e8:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
    64ec:	5f746c75 	svcpl	0x00746c75
    64f0:	5f657375 	svcpl	0x00657375
    64f4:	63656863 	cmnvs	r5, #6488064	; 0x630000
    64f8:	5f5f206b 	svcpl	0x005f206b
    64fc:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    6500:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    6504:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    6508:	775f5f28 	ldrbvc	r5, [pc, -r8, lsr #30]
    650c:	5f6e7261 	svcpl	0x006e7261
    6510:	73756e75 	cmnvc	r5, #1872	; 0x750
    6514:	725f6465 	subsvc	r6, pc, #1694498816	; 0x65000000
    6518:	6c757365 	ldclvs	3, cr7, [r5], #-404	; 0xfffffe6c
    651c:	295f5f74 	ldmdbcs	pc, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    6520:	5f5f0029 	svcpl	0x005f0029
    6524:	43554e47 	cmpmi	r5, #1136	; 0x470
    6528:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    652c:	28514552 	ldmdacs	r1, {r1, r4, r6, r8, sl, lr}^
    6530:	2c6a616d 	stfcse	f6, [sl], #-436	; 0xfffffe4c
    6534:	296e696d 	stmdbcs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
    6538:	5f282820 	svcpl	0x00282820
    653c:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    6540:	205f5f43 	subscs	r5, pc, r3, asr #30
    6544:	31203c3c 			; <UNDEFINED> instruction: 0x31203c3c
    6548:	2b202936 	blcs	810a28 <heap_size+0x7f0a28>
    654c:	475f5f20 	ldrbmi	r5, [pc, -r0, lsr #30]
    6550:	5f43554e 	svcpl	0x0043554e
    6554:	4f4e494d 	svcmi	0x004e494d
    6558:	205f5f52 	subscs	r5, pc, r2, asr pc	; <UNPREDICTABLE>
    655c:	28203d3e 	stmdacs	r0!, {r1, r2, r3, r4, r5, r8, sl, fp, ip, sp}
    6560:	6a616d28 	bvs	1861a08 <_end+0x861a08>
    6564:	3c3c2029 	ldccc	0, cr2, [ip], #-164	; 0xffffff5c
    6568:	29363120 	ldmdbcs	r6!, {r5, r8, ip, sp}
    656c:	28202b20 	stmdacs	r0!, {r5, r8, r9, fp, sp}
    6570:	296e696d 	stmdbcs	lr!, {r0, r2, r3, r5, r6, r8, fp, sp, lr}^
    6574:	41550029 	cmpmi	r5, r9, lsr #32
    6578:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    657c:	4f5f5258 	svcmi	0x005f5258
    6580:	20524556 	subscs	r4, r2, r6, asr r5
    6584:	30307830 	eorscc	r7, r0, r0, lsr r8
    6588:	30303030 	eorscc	r3, r0, r0, lsr r0
    658c:	5f003032 	svcpl	0x00003032
    6590:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    6594:	485f3436 	ldmdami	pc, {r1, r2, r4, r5, sl, ip, sp}^	; <UNPREDICTABLE>
    6598:	495f5341 	ldmdbmi	pc, {r0, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    659c:	4e49464e 	cdpmi	6, 4, cr4, cr9, cr14, {2}
    65a0:	5f595449 	svcpl	0x00595449
    65a4:	0031205f 	eorseq	r2, r1, pc, asr r0
    65a8:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    65ac:	5f524d5f 	svcpl	0x00524d5f
    65b0:	49524150 	ldmdbmi	r2, {r4, r6, r8, lr}^
    65b4:	535f5954 	cmppl	pc, #84, 18	; 0x150000
    65b8:	54464948 	strbpl	r4, [r6], #-2376	; 0xfffff6b8
    65bc:	5f003320 	svcpl	0x00003320
    65c0:	4953585f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, fp, ip, lr}^
    65c4:	5349565f 	movtpl	r5, #38495	; 0x965f
    65c8:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    65cc:	5f003020 	svcpl	0x00003020
    65d0:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    65d4:	4f4c5f47 	svcmi	0x004c5f47
    65d8:	4d5f474e 	ldclmi	7, cr4, [pc, #-312]	; 64a8 <__bss_end__+0x2cb8>
    65dc:	5f5f5841 	svcpl	0x005f5841
    65e0:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    65e4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    65e8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    65ec:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    65f0:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
    65f4:	4245004c 	submi	r0, r5, #76	; 0x4c
    65f8:	20595355 	subscs	r5, r9, r5, asr r3
    65fc:	5f003631 	svcpl	0x00003631
    6600:	43575f54 	cmpmi	r7, #84, 30	; 0x150
    6604:	5f524148 	svcpl	0x00524148
    6608:	5f5f0020 	svcpl	0x005f0020
    660c:	43445453 	movtmi	r5, #17491	; 0x4453
    6610:	5245565f 	subpl	r5, r5, #99614720	; 0x5f00000
    6614:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
    6618:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    661c:	30393939 	eorscc	r3, r9, r9, lsr r9
    6620:	5f004c31 	svcpl	0x00004c31
    6624:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    6628:	424d5f54 	submi	r5, sp, #84, 30	; 0x150
    662c:	4e454c52 	mcrmi	12, 2, r4, cr5, cr2, {2}
    6630:	4154535f 	cmpmi	r4, pc, asr r3
    6634:	70284554 	eorvc	r4, r8, r4, asr r5
    6638:	20297274 	eorcs	r7, r9, r4, ror r2
    663c:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    6640:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    6644:	73696d5f 	cmnvc	r9, #6080	; 0x17c0
    6648:	5f3e2d63 	svcpl	0x003e2d63
    664c:	6c72626d 	lfmvs	f6, 2, [r2], #-436	; 0xfffffe4c
    6650:	735f6e65 	cmpvc	pc, #1616	; 0x650
    6654:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    6658:	485f0029 	ldmdami	pc, {r0, r3, r5}^	; <UNPREDICTABLE>
    665c:	5f455641 	svcpl	0x00455641
    6660:	495f4343 	ldmdbmi	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    6664:	4249484e 	submi	r4, r9, #5111808	; 0x4e0000
    6668:	4c5f5449 	cfldrdmi	mvd5, [pc], {73}	; 0x49
    666c:	5f504f4f 	svcpl	0x00504f4f
    6670:	4c5f4f54 	mrrcmi	15, 5, r4, pc, cr4	; <UNPREDICTABLE>
    6674:	41434249 	cmpmi	r3, r9, asr #4
    6678:	31204c4c 			; <UNDEFINED> instruction: 0x31204c4c
    667c:	52545000 	subspl	r5, r4, #0
    6680:	46464944 	strbmi	r4, [r6], -r4, asr #18
    6684:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6688:	525f5f00 	subspl	r5, pc, #0, 30
    668c:	44495343 	strbmi	r5, [r9], #-835	; 0xfffffcbd
    6690:	554f535f 	strbpl	r5, [pc, #-863]	; 6339 <__bss_end__+0x2b49>
    6694:	28454352 	stmdacs	r5, {r1, r4, r6, r8, r9, lr}^
    6698:	73202973 			; <UNDEFINED> instruction: 0x73202973
    669c:	63757274 	cmnvs	r5, #116, 4	; 0x40000007
    66a0:	5f5f2074 	svcpl	0x005f2074
    66a4:	6b636168 	blvs	18dec4c <_end+0x8dec4c>
    66a8:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    66ac:	435f4f53 	cmpmi	pc, #332	; 0x14c
    66b0:	5349565f 	movtpl	r5, #38495	; 0x965f
    66b4:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    66b8:	39393120 	ldmdbcc	r9!, {r5, r8, ip, sp}
    66bc:	424b0039 	submi	r0, fp, #57	; 0x39
    66c0:	2220554c 	eorcs	r5, r0, #76, 10	; 0x13000000
    66c4:	4231785c 	eorsmi	r7, r1, #92, 16	; 0x5c0000
    66c8:	6d34335b 	ldcvs	3, cr3, [r4, #-364]!	; 0xfffffe94
    66cc:	4e490022 	cdpmi	0, 4, cr0, cr9, cr2, {1}
    66d0:	5f343654 	svcpl	0x00343654
    66d4:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    66d8:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    66dc:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    66e0:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    66e4:	5f5f0029 	svcpl	0x005f0029
    66e8:	5f434347 	svcpl	0x00434347
    66ec:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 65f0 <__bss_end__+0x2e00>
    66f0:	4c5f4349 	mrrcmi	3, 4, r4, pc, cr9	; <UNPREDICTABLE>
    66f4:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    66f8:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    66fc:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    6700:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    6704:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 580c <__bss_end__+0x201c>
    6708:	4152464c 	cmpmi	r2, ip, asr #12
    670c:	455f5443 	ldrbmi	r5, [pc, #-1091]	; 62d1 <__bss_end__+0x2ae1>
    6710:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    6714:	5f5f4e4f 	svcpl	0x005f4e4f
    6718:	31783020 	cmncc	r8, r0, lsr #32
    671c:	32332d50 	eorscc	r2, r3, #80, 26	; 0x1400
    6720:	00524c55 	subseq	r4, r2, r5, asr ip
    6724:	5f43535f 	svcpl	0x0043535f
    6728:	525f5353 	subspl	r5, pc, #1275068417	; 0x4c000001
    672c:	5f4c5045 	svcpl	0x004c5045
    6730:	2058414d 	subscs	r4, r8, sp, asr #2
    6734:	55003837 	strpl	r3, [r0, #-2103]	; 0xfffff7c9
    6738:	5f545241 	svcpl	0x00545241
    673c:	465f5253 			; <UNDEFINED> instruction: 0x465f5253
    6740:	454d4152 	strbmi	r4, [sp, #-338]	; 0xfffffeae
    6744:	30783020 	rsbscc	r3, r8, r0, lsr #32
    6748:	30303030 	eorscc	r3, r0, r0, lsr r0
    674c:	00303430 	eorseq	r3, r0, r0, lsr r4
    6750:	4f4c5f5f 	svcmi	0x004c5f5f
    6754:	4c5f474e 	mrrcmi	7, 4, r4, pc, cr14	; <UNPREDICTABLE>
    6758:	5f474e4f 	svcpl	0x00474e4f
    675c:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    6760:	205f5f48 	subscs	r5, pc, r8, asr #30
    6764:	49003436 	stmdbmi	r0, {r1, r2, r4, r5, sl, ip, sp}
    6768:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    676c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    6770:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 66a0 <__bss_end__+0x2eb0>
    6774:	55004e49 	strpl	r4, [r0, #-3657]	; 0xfffff1b7
    6778:	54747261 	ldrbtpl	r7, [r4], #-609	; 0xfffffd9f
    677c:	46494658 			; <UNDEFINED> instruction: 0x46494658
    6780:	6c75464f 	ldclvs	6, cr4, [r5], #-316	; 0xfffffec4
    6784:	6142286c 	cmpvs	r2, ip, ror #16
    6788:	64416573 	strbvs	r6, [r1], #-1395	; 0xfffffa8d
    678c:	73657264 	cmnvc	r5, #100, 4	; 0x40000006
    6790:	28202973 	stmdacs	r0!, {r0, r1, r4, r5, r6, r8, fp, sp}
    6794:	5f6f6928 	svcpl	0x006f6928
    6798:	32336e69 	eorscc	r6, r3, #1680	; 0x690
    679c:	61422828 	cmpvs	r2, r8, lsr #16
    67a0:	64416573 	strbvs	r6, [r1], #-1395	; 0xfffffa8d
    67a4:	73657264 	cmnvc	r5, #100, 4	; 0x40000006
    67a8:	2b202973 	blcs	810d7c <heap_size+0x7f0d7c>
    67ac:	52415520 	subpl	r5, r1, #32, 10	; 0x8000000
    67b0:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    67b4:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    67b8:	29544553 	ldmdbcs	r4, {r0, r1, r4, r6, r8, sl, lr}^
    67bc:	55202620 	strpl	r2, [r0, #-1568]!	; 0xfffff9e0
    67c0:	5f545241 	svcpl	0x00545241
    67c4:	545f5253 	ldrbpl	r5, [pc], #-595	; 67cc <__bss_end__+0x2fdc>
    67c8:	4c554658 	mrrcmi	6, 5, r4, r5, cr8
    67cc:	3d20294c 			; <UNDEFINED> instruction: 0x3d20294c
    67d0:	4155203d 	cmpmi	r5, sp, lsr r0
    67d4:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    67d8:	58545f52 	ldmdapl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    67dc:	4c4c5546 	cfstr64mi	mvdx5, [ip], {70}	; 0x46
    67e0:	635f0029 	cmpvs	pc, #41	; 0x29
    67e4:	65736f6c 	ldrbvs	r6, [r3, #-3948]!	; 0xfffff094
    67e8:	43535f00 	cmpmi	r3, #0, 30
    67ec:	5f36565f 	svcpl	0x0036565f
    67f0:	3436504c 	ldrtcc	r5, [r6], #-76	; 0xffffffb4
    67f4:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    67f8:	5f203436 	svcpl	0x00203436
    67fc:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
    6800:	504c5f37 	subpl	r5, ip, r7, lsr pc
    6804:	4f5f3436 	svcmi	0x005f3436
    6808:	34364646 	ldrtcc	r4, [r6], #-1606	; 0xfffff9ba
    680c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    6810:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    6814:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    6818:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    681c:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    6820:	3032322e 	eorscc	r3, r2, lr, lsr #4
    6824:	30363434 	eorscc	r3, r6, r4, lsr r4
    6828:	35323934 	ldrcc	r3, [r2, #-2356]!	; 0xfffff6cc
    682c:	33313330 	teqcc	r1, #48, 6	; 0xc0000000
    6830:	312d6531 			; <UNDEFINED> instruction: 0x312d6531
    6834:	34364636 	ldrtcc	r4, [r6], #-1590	; 0xfffff9ca
    6838:	6c675f00 	stclvs	15, cr5, [r7], #-0
    683c:	5f006575 	svcpl	0x00006575
    6840:	57454e5f 	smlsldpl	r4, r5, pc, lr	; <UNPREDICTABLE>
    6844:	5f42494c 	svcpl	0x0042494c
    6848:	205f5f48 	subscs	r5, pc, r8, asr #30
    684c:	505f0031 	subspl	r0, pc, r1, lsr r0	; <UNPREDICTABLE>
    6850:	53415f43 	movtpl	r5, #8003	; 0x1f43
    6854:	5f434e59 	svcpl	0x00434e59
    6858:	39204f49 	stmdbcc	r0!, {r0, r3, r6, r8, r9, sl, fp, lr}
    685c:	43535f00 	cmpmi	r3, #0, 30
    6860:	5248545f 	subpl	r5, r8, #1593835520	; 0x5f000000
    6864:	5f444145 	svcpl	0x00444145
    6868:	4f495250 	svcmi	0x00495250
    686c:	484e495f 	stmdami	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    6870:	54495245 	strbpl	r5, [r9], #-581	; 0xfffffdbb
    6874:	00363420 	eorseq	r3, r6, r0, lsr #8
    6878:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    687c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6880:	525f5f20 	subspl	r5, pc, #32, 30	; 0x80
    6884:	5f444e41 	svcpl	0x00444e41
    6888:	0058414d 	subseq	r4, r8, sp, asr #2
    688c:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    6890:	4343414c 	movtmi	r4, #12620	; 0x314c
    6894:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
    6898:	5f544942 	svcpl	0x00544942
    689c:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    68a0:	535f5f00 	cmppl	pc, #0, 30
    68a4:	2054504f 	subscs	r5, r4, pc, asr #32
    68a8:	34307830 	ldrtcc	r7, [r0], #-2096	; 0xfffff7d0
    68ac:	5f003030 	svcpl	0x00003030
    68b0:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    68b4:	41485f4c 	cmpmi	r8, ip, asr #30
    68b8:	55515f53 	ldrbpl	r5, [r1, #-3923]	; 0xfffff0ad
    68bc:	5f544549 	svcpl	0x00544549
    68c0:	5f4e414e 	svcpl	0x004e414e
    68c4:	0031205f 	eorseq	r2, r1, pc, asr r0
    68c8:	61725f5f 	cmnvs	r2, pc, asr pc
    68cc:	6f65676e 	svcvs	0x0065676e
    68d0:	79742866 	ldmdbvc	r4!, {r1, r2, r5, r6, fp, sp}^
    68d4:	732c6570 			; <UNDEFINED> instruction: 0x732c6570
    68d8:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
    68dc:	646e652c 	strbtvs	r6, [lr], #-1324	; 0xfffffad4
    68e0:	5f282029 	svcpl	0x00282029
    68e4:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
    68e8:	6f746573 	svcvs	0x00746573
    68ec:	79742866 	ldmdbvc	r4!, {r1, r2, r5, r6, fp, sp}^
    68f0:	202c6570 	eorcs	r6, ip, r0, ror r5
    68f4:	29646e65 	stmdbcs	r4!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
    68f8:	5f202d20 	svcpl	0x00202d20
    68fc:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
    6900:	6f746573 	svcvs	0x00746573
    6904:	79742866 	ldmdbvc	r4!, {r1, r2, r5, r6, fp, sp}^
    6908:	202c6570 	eorcs	r6, ip, r0, ror r5
    690c:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
    6910:	00292974 	eoreq	r2, r9, r4, ror r9
    6914:	43575f5f 	cmpmi	r7, #380	; 0x17c
    6918:	5f524148 	svcpl	0x00524148
    691c:	5f58414d 	svcpl	0x0058414d
    6920:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    6924:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    6928:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    692c:	5f5f0055 	svcpl	0x005f0055
    6930:	43554e47 	cmpmi	r5, #1136	; 0x470
    6934:	5f41565f 	svcpl	0x0041565f
    6938:	5453494c 	ldrbpl	r4, [r3], #-2380	; 0xfffff6b4
    693c:	535f0020 	cmppl	pc, #32
    6940:	49415f43 	stmdbmi	r1, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    6944:	52505f4f 	subspl	r5, r0, #316	; 0x13c
    6948:	445f4f49 	ldrbmi	r4, [pc], #-3913	; 6950 <__bss_end__+0x3160>
    694c:	41544c45 	cmpmi	r4, r5, asr #24
    6950:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6954:	00363320 	eorseq	r3, r6, r0, lsr #6
    6958:	655f6176 	ldrbvs	r6, [pc, #-374]	; 67ea <__bss_end__+0x2ffa>
    695c:	7628646e 	strtvc	r6, [r8], -lr, ror #8
    6960:	5f5f2029 	svcpl	0x005f2029
    6964:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    6968:	5f6e6974 	svcpl	0x006e6974
    696c:	655f6176 	ldrbvs	r6, [pc, #-374]	; 67fe <__bss_end__+0x300e>
    6970:	7628646e 	strtvc	r6, [r8], -lr, ror #8
    6974:	5f5f0029 	svcpl	0x005f0029
    6978:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    697c:	73615f74 	cmnvc	r1, #116, 30	; 0x1d0
    6980:	74726573 	ldrbtvc	r6, [r2], #-1395	; 0xfffffa8d
    6984:	20297828 	eorcs	r7, r9, r8, lsr #16
    6988:	6f762828 	svcvs	0x00762828
    698c:	30296469 	eorcc	r6, r9, r9, ror #8
    6990:	4e5f0029 	cdpmi	0, 5, cr0, cr15, cr9, {1}
    6994:	5f4f4e41 	svcpl	0x004f4e41
    6998:	4d524f46 	ldclmi	15, cr4, [r2, #-280]	; 0xfffffee8
    699c:	45545441 	ldrbmi	r5, [r4, #-1089]	; 0xfffffbbf
    69a0:	4f495f44 	svcmi	0x00495f44
    69a4:	55003120 	strpl	r3, [r0, #-288]	; 0xfffffee0
    69a8:	5f545241 	svcpl	0x00545241
    69ac:	545f5243 	ldrbpl	r5, [pc], #-579	; 69b4 <__bss_end__+0x31c4>
    69b0:	4e455f58 	mcrmi	15, 2, r5, cr5, cr8, {2}
    69b4:	30783020 	rsbscc	r3, r8, r0, lsr #32
    69b8:	30303030 	eorscc	r3, r0, r0, lsr r0
    69bc:	00303130 	eorseq	r3, r0, r0, lsr r1
    69c0:	5f43535f 	svcpl	0x0043535f
    69c4:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    69c8:	445f4441 	ldrbmi	r4, [pc], #-1089	; 69d0 <__bss_end__+0x31e0>
    69cc:	52545345 	subspl	r5, r4, #335544321	; 0x14000001
    69d0:	4f544355 	svcmi	0x00544355
    69d4:	54495f52 	strbpl	r5, [r9], #-3922	; 0xfffff0ae
    69d8:	54415245 	strbpl	r5, [r1], #-581	; 0xfffffdbb
    69dc:	534e4f49 	movtpl	r4, #61257	; 0xef49
    69e0:	00333520 	eorseq	r3, r3, r0, lsr #10
    69e4:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    69e8:	4343414c 	movtmi	r4, #12620	; 0x314c
    69ec:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
    69f0:	5f544942 	svcpl	0x00544942
    69f4:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    69f8:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    69fc:	5f4c4244 	svcpl	0x004c4244
    6a00:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
    6a04:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    6a08:	35205f5f 	strcc	r5, [r0, #-3935]!	; 0xfffff0a1
    6a0c:	5f5f0033 	svcpl	0x005f0033
    6a10:	464c4c55 			; <UNDEFINED> instruction: 0x464c4c55
    6a14:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    6a18:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    6a1c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    6a20:	57003436 	smladxpl	r0, r6, r4, r3
    6a24:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    6a28:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6a2c:	4c435f00 	mcrrmi	15, 0, r5, r3, cr0
    6a30:	5f4b434f 	svcpl	0x004b434f
    6a34:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    6a38:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    6a3c:	00204445 	eoreq	r4, r0, r5, asr #8
    6a40:	51445f5f 	cmppl	r4, pc, asr pc
    6a44:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    6a48:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    6a4c:	41550030 	cmpmi	r5, r0, lsr r0
    6a50:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    6a54:	41545f52 	cmpmi	r4, r2, asr pc
    6a58:	56495443 	strbpl	r5, [r9], -r3, asr #8
    6a5c:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
    6a60:	30303030 	eorscc	r3, r0, r0, lsr r0
    6a64:	30303830 	eorscc	r3, r0, r0, lsr r8
    6a68:	69425f00 	stmdbvs	r2, {r8, r9, sl, fp, ip, lr}^
    6a6c:	746e6967 	strbtvc	r6, [lr], #-2407	; 0xfffff699
    6a70:	44545300 	ldrbmi	r5, [r4], #-768	; 0xfffffd00
    6a74:	5f525245 	svcpl	0x00525245
    6a78:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    6a7c:	32204f4e 	eorcc	r4, r0, #312	; 0x138
    6a80:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    6a84:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    6a88:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6a8c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    6a90:	3739372e 	ldrcc	r3, [r9, -lr, lsr #14]!
    6a94:	31333936 	teqcc	r3, r6, lsr r9
    6a98:	36383433 			; <UNDEFINED> instruction: 0x36383433
    6a9c:	35313332 	ldrcc	r3, [r1, #-818]!	; 0xfffffcce
    6aa0:	332b6537 			; <UNDEFINED> instruction: 0x332b6537
    6aa4:	36463830 			; <UNDEFINED> instruction: 0x36463830
    6aa8:	6d5f0034 	ldclvs	0, cr0, [pc, #-208]	; 69e0 <__bss_end__+0x31f0>
    6aac:	5f637369 	svcpl	0x00637369
    6ab0:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    6ab4:	4e490074 	mcrmi	0, 2, r0, cr9, cr4, {3}
    6ab8:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    6abc:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    6ac0:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    6ac4:	43475f00 	movtmi	r5, #32512	; 0x7f00
    6ac8:	49535f43 	ldmdbmi	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    6acc:	545f455a 	ldrbpl	r4, [pc], #-1370	; 6ad4 <__bss_end__+0x32e4>
    6ad0:	5f5f0020 	svcpl	0x005f0020
    6ad4:	5f515155 	svcpl	0x00515155
    6ad8:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    6adc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    6ae0:	43535f00 	cmpmi	r3, #0, 30
    6ae4:	45504f5f 	ldrbmi	r4, [r0, #-3935]	; 0xfffff0a1
    6ae8:	414d5f4e 	cmpmi	sp, lr, asr #30
    6aec:	00342058 	eorseq	r2, r4, r8, asr r0
    6af0:	68745f5f 	ldmdavs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    6af4:	5f626d75 	svcpl	0x00626d75
    6af8:	5f5f005f 	svcpl	0x005f005f
    6afc:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    6b00:	5f745f38 	svcpl	0x00745f38
    6b04:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    6b08:	2064656e 	rsbcs	r6, r4, lr, ror #10
    6b0c:	5f5f0031 	svcpl	0x005f0031
    6b10:	5f474953 	svcpl	0x00474953
    6b14:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 6a18 <__bss_end__+0x3228>
    6b18:	575f4349 	ldrbpl	r4, [pc, -r9, asr #6]
    6b1c:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    6b20:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    6b24:	525f0032 	subspl	r0, pc, #50	; 0x32
    6b28:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    6b2c:	5254535f 	subspl	r5, r4, #2080374785	; 0x7c000001
    6b30:	5f4b4f54 	svcpl	0x004b4f54
    6b34:	5453414c 	ldrbpl	r4, [r3], #-332	; 0xfffffeb4
    6b38:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    6b3c:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    6b40:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    6b44:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 6a98 <__bss_end__+0x32a8>
    6b48:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    6b4c:	74735f3e 	ldrbtvc	r5, [r3], #-3902	; 0xfffff0c2
    6b50:	6b6f7472 	blvs	1be3d20 <_end+0xbe3d20>
    6b54:	73616c5f 	cmnvc	r1, #24320	; 0x5f00
    6b58:	5f002974 	svcpl	0x00002974
    6b5c:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    6b60:	49535f54 	ldmdbmi	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    6b64:	41474e47 	cmpmi	r7, r7, asr #28
    6b68:	7470284d 	ldrbtvc	r2, [r0], #-2125	; 0xfffff7b3
    6b6c:	28202972 	stmdacs	r0!, {r1, r4, r5, r6, r8, fp, sp}
    6b70:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    6b74:	5f3e2d29 	svcpl	0x003e2d29
    6b78:	6d6d6167 	stfvse	f6, [sp, #-412]!	; 0xfffffe64
    6b7c:	69735f61 	ldmdbvs	r3!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
    6b80:	61676e67 	cmnvs	r7, r7, ror #28
    6b84:	5f00296d 	svcpl	0x0000296d
    6b88:	505f4353 	subspl	r4, pc, r3, asr r3	; <UNPREDICTABLE>
    6b8c:	524f4952 	subpl	r4, pc, #1343488	; 0x148000
    6b90:	5a495449 	bpl	125bcbc <_end+0x25bcbc>
    6b94:	495f4445 	ldmdbmi	pc, {r0, r2, r6, sl, lr}^	; <UNPREDICTABLE>
    6b98:	3832204f 	ldmdacc	r2!, {r0, r1, r2, r3, r6, sp}
    6b9c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    6ba0:	485f4343 	ldmdami	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    6ba4:	5f455641 	svcpl	0x00455641
    6ba8:	434e5953 	movtmi	r5, #59731	; 0xe953
    6bac:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; 6a38 <__bss_end__+0x3248>
    6bb0:	45524150 	ldrbmi	r4, [r2, #-336]	; 0xfffffeb0
    6bb4:	444e415f 	strbmi	r4, [lr], #-351	; 0xfffffea1
    6bb8:	4157535f 	cmpmi	r7, pc, asr r3
    6bbc:	20345f50 	eorscs	r5, r4, r0, asr pc
    6bc0:	525f0031 	subspl	r0, pc, #49	; 0x31
    6bc4:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    6bc8:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    6bcc:	5f383444 	svcpl	0x00383444
    6bd0:	544c554d 	strbpl	r5, [ip], #-1357	; 0xfffffab3
    6bd4:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    6bd8:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    6bdc:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    6be0:	725f3e2d 	subsvc	r3, pc, #720	; 0x2d0
    6be4:	3e2d3834 	mcrcc	8, 1, r3, cr13, cr4, {1}
    6be8:	6c756d5f 	ldclvs	13, cr6, [r5], #-380	; 0xfffffe84
    6bec:	5f002974 	svcpl	0x00002974
    6bf0:	65656e5f 	strbvs	r6, [r5, #-3679]!	; 0xfffff1a1
    6bf4:	554e5f64 	strbpl	r5, [lr, #-3940]	; 0xfffff09c
    6bf8:	00204c4c 	eoreq	r4, r0, ip, asr #24
    6bfc:	55514445 	ldrbpl	r4, [r1, #-1093]	; 0xfffffbbb
    6c00:	3120544f 			; <UNDEFINED> instruction: 0x3120544f
    6c04:	4b003233 	blmi	134d8 <__bss_end__+0xfce8>
    6c08:	204d524e 	subcs	r5, sp, lr, asr #4
    6c0c:	31785c22 	cmncc	r8, r2, lsr #24
    6c10:	6d305b42 	vldmdbvs	r0!, {d5-<overflow reg d37>}
    6c14:	495f0022 	ldmdbmi	pc, {r1, r5}^	; <UNPREDICTABLE>
    6c18:	5450544e 	ldrbpl	r5, [r0], #-1102	; 0xfffffbb2
    6c1c:	5f545f52 	svcpl	0x00545f52
    6c20:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    6c24:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    6c28:	5f5f0020 	svcpl	0x005f0020
    6c2c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    6c30:	41454c5f 	cmpmi	r5, pc, asr ip
    6c34:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    6c38:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6c3c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    6c40:	66666678 			; <UNDEFINED> instruction: 0x66666678
    6c44:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    6c48:	004c5566 	subeq	r5, ip, r6, ror #10
    6c4c:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    6c50:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    6c54:	2064696f 	rsbcs	r6, r4, pc, ror #18
    6c58:	2930292a 	ldmdbcs	r0!, {r1, r3, r5, r8, fp, sp}
    6c5c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 5d64 <__bss_end__+0x2574>
    6c60:	41524653 	cmpmi	r2, r3, asr r6
    6c64:	455f5443 	ldrbmi	r5, [pc, #-1091]	; 6829 <__bss_end__+0x3039>
    6c68:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    6c6c:	5f5f4e4f 	svcpl	0x005f4e4f
    6c70:	31783020 	cmncc	r8, r0, lsr #32
    6c74:	55382d50 	ldrpl	r2, [r8, #-3408]!	; 0xfffff2b0
    6c78:	5f005248 	svcpl	0x00005248
    6c7c:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    6c80:	5f545f52 	svcpl	0x00545f52
    6c84:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    6c88:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    6c8c:	5f5f0020 	svcpl	0x005f0020
    6c90:	4544524f 	strbmi	r5, [r4, #-591]	; 0xfffffdb1
    6c94:	49425f52 	stmdbmi	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    6c98:	4e455f47 	cdpmi	15, 4, cr5, cr5, cr7, {2}
    6c9c:	4e414944 	vmlsmi.f16	s9, s2, s8	; <UNPREDICTABLE>
    6ca0:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    6ca4:	00313233 	eorseq	r3, r1, r3, lsr r2
    6ca8:	46555f5f 	usaxmi	r5, r5, pc	; <UNPREDICTABLE>
    6cac:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    6cb0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6cb4:	30205f5f 	eorcc	r5, r0, pc, asr pc
    6cb8:	46464658 			; <UNDEFINED> instruction: 0x46464658
    6cbc:	312d5046 			; <UNDEFINED> instruction: 0x312d5046
    6cc0:	00525536 	subseq	r5, r2, r6, lsr r5
    6cc4:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
    6cc8:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0xfffffe9c
    6ccc:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
    6cd0:	43535f00 	cmpmi	r3, #0, 30
    6cd4:	5248545f 	subpl	r5, r8, #1593835520	; 0x5f000000
    6cd8:	5f444145 	svcpl	0x00444145
    6cdc:	55424f52 	strbpl	r4, [r2, #-3922]	; 0xfffff0ae
    6ce0:	505f5453 	subspl	r5, pc, r3, asr r4	; <UNPREDICTABLE>
    6ce4:	5f4f4952 	svcpl	0x004f4952
    6ce8:	544f5250 	strbpl	r5, [pc], #-592	; 6cf0 <__bss_end__+0x3500>
    6cec:	20544345 	subscs	r4, r4, r5, asr #6
    6cf0:	00333231 	eorseq	r3, r3, r1, lsr r2
    6cf4:	43414d5f 	movtmi	r4, #7519	; 0x1d5f
    6cf8:	454e4948 	strbmi	r4, [lr, #-2376]	; 0xfffff6b8
    6cfc:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    6d00:	4c554146 	ldfmie	f4, [r5], {70}	; 0x46
    6d04:	59545f54 	ldmdbpl	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    6d08:	5f534550 	svcpl	0x00534550
    6d0c:	5f002048 	svcpl	0x00002048
    6d10:	65726f4e 	ldrbvs	r6, [r2, #-3918]!	; 0xfffff0b2
    6d14:	6e727574 	mrcvs	5, 3, r7, cr2, cr4, {3}
    6d18:	645f5f20 	ldrbvs	r5, [pc], #-3872	; 6d20 <__bss_end__+0x3530>
    6d1c:	32646165 	rsbcc	r6, r4, #1073741849	; 0x40000019
    6d20:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 5e28 <__bss_end__+0x2638>
    6d24:	5f544e49 	svcpl	0x00544e49
    6d28:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    6d2c:	545f3233 	ldrbpl	r3, [pc], #-563	; 6d34 <__bss_end__+0x3544>
    6d30:	5f455059 	svcpl	0x00455059
    6d34:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    6d38:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    6d3c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    6d40:	5f00746e 	svcpl	0x0000746e
    6d44:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    6d48:	4f54415f 	svcmi	0x0054415f
    6d4c:	5f43494d 	svcpl	0x0043494d
    6d50:	5f4e494d 	svcpl	0x004e494d
    6d54:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    6d58:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    6d5c:	54415f47 	strbpl	r5, [r1], #-3911	; 0xfffff0b9
    6d60:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    6d64:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    6d68:	2d205f5f 	stccs	15, cr5, [r0, #-380]!	; 0xfffffe84
    6d6c:	00293120 	eoreq	r3, r9, r0, lsr #2
    6d70:	4449475f 	strbmi	r4, [r9], #-1887	; 0xfffff8a1
    6d74:	445f545f 	ldrbmi	r5, [pc], #-1119	; 6d7c <__bss_end__+0x358c>
    6d78:	414c4345 	cmpmi	ip, r5, asr #6
    6d7c:	20444552 	subcs	r4, r4, r2, asr r5
    6d80:	57585400 	ldrbpl	r5, [r8, -r0, lsl #8]
    6d84:	4155004d 	cmpmi	r5, sp, asr #32
    6d88:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    6d8c:	545f5258 	ldrbpl	r5, [pc], #-600	; 6d94 <__bss_end__+0x35a4>
    6d90:	504d4558 	subpl	r4, sp, r8, asr r5
    6d94:	30205954 	eorcc	r5, r0, r4, asr r9
    6d98:	30303078 	eorscc	r3, r0, r8, ror r0
    6d9c:	30303030 	eorscc	r3, r0, r0, lsr r0
    6da0:	535f0038 	cmppl	pc, #56	; 0x38
    6da4:	52545f43 	subspl	r5, r4, #268	; 0x10c
    6da8:	5f454341 	svcpl	0x00454341
    6dac:	52455355 	subpl	r5, r5, #1409286145	; 0x54000001
    6db0:	4556455f 	ldrbmi	r4, [r6, #-1375]	; 0xfffffaa1
    6db4:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 6c84 <__bss_end__+0x3494>
    6db8:	39205841 	stmdbcc	r0!, {r0, r6, fp, ip, lr}
    6dbc:	535f0030 	cmppl	pc, #48	; 0x30
    6dc0:	435f5359 	cmpmi	pc, #1677721601	; 0x64000001
    6dc4:	53464544 	movtpl	r4, #25924	; 0x6544
    6dc8:	205f485f 	subscs	r4, pc, pc, asr r8	; <UNPREDICTABLE>
    6dcc:	504f4600 	subpl	r4, pc, r0, lsl #12
    6dd0:	4d5f4e45 	ldclmi	14, cr4, [pc, #-276]	; 6cc4 <__bss_end__+0x34d4>
    6dd4:	32205841 	eorcc	r5, r0, #4259840	; 0x410000
    6dd8:	5f5f0030 	svcpl	0x005f0030
    6ddc:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
    6de0:	6863775f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
    6de4:	745f7261 	ldrbvc	r7, [pc], #-609	; 6dec <__bss_end__+0x35fc>
    6de8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    6dec:	445f544c 	ldrbmi	r5, [pc], #-1100	; 6df4 <__bss_end__+0x3604>
    6df0:	4d494345 	stclmi	3, cr4, [r9, #-276]	; 0xfffffeec
    6df4:	445f4c41 	ldrbmi	r4, [pc], #-3137	; 6dfc <__bss_end__+0x360c>
    6df8:	5f5f4749 	svcpl	0x005f4749
    6dfc:	5f003920 	svcpl	0x00003920
    6e00:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    6e04:	4d535f54 	ldclmi	15, cr5, [r3, #-336]	; 0xfffffeb0
    6e08:	204c4c41 	subcs	r4, ip, r1, asr #24
    6e0c:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    6e10:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    6e14:	5059545f 	subspl	r5, r9, pc, asr r4
    6e18:	205f5f45 	subscs	r5, pc, r5, asr #30
    6e1c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    6e20:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    6e24:	5f545f00 	svcpl	0x00545f00
    6e28:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    6e2c:	20464649 	subcs	r4, r6, r9, asr #12
    6e30:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    6e34:	5f544e45 	svcpl	0x00544e45
    6e38:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    6e3c:	5254505f 	subspl	r5, r4, #95	; 0x5f
    6e40:	52455a5f 	subpl	r5, r5, #389120	; 0x5f000
    6e44:	2844454f 	stmdacs	r4, {r0, r1, r2, r3, r6, r8, sl, lr}^
    6e48:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    6e4c:	28207b20 	stmdacs	r0!, {r5, r8, r9, fp, ip, sp, lr}
    6e50:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    6e54:	735f3e2d 	cmpvc	pc, #720	; 0x2d0
    6e58:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
    6e5c:	28203d20 	stmdacs	r0!, {r5, r8, sl, fp, ip, sp}
    6e60:	49465f5f 	stmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    6e64:	2a20454c 	bcs	81839c <heap_size+0x7f839c>
    6e68:	5f5f2629 	svcpl	0x005f2629
    6e6c:	665f6673 			; <UNDEFINED> instruction: 0x665f6673
    6e70:	5f656b61 	svcpl	0x00656b61
    6e74:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    6e78:	28203b6e 	stmdacs	r0!, {r1, r2, r3, r5, r6, r8, r9, fp, ip, sp}
    6e7c:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    6e80:	735f3e2d 	cmpvc	pc, #720	; 0x2d0
    6e84:	756f6474 	strbvc	r6, [pc, #-1140]!	; 6a18 <__bss_end__+0x3228>
    6e88:	203d2074 	eorscs	r2, sp, r4, ror r0
    6e8c:	465f5f28 	ldrbmi	r5, [pc], -r8, lsr #30
    6e90:	20454c49 	subcs	r4, r5, r9, asr #24
    6e94:	5f26292a 	svcpl	0x0026292a
    6e98:	5f66735f 	svcpl	0x0066735f
    6e9c:	656b6166 	strbvs	r6, [fp, #-358]!	; 0xfffffe9a
    6ea0:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    6ea4:	3b74756f 	blcc	1d24468 <_end+0xd24468>
    6ea8:	61762820 	cmnvs	r6, r0, lsr #16
    6eac:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    6eb0:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    6eb4:	20727265 	rsbscs	r7, r2, r5, ror #4
    6eb8:	5f28203d 	svcpl	0x0028203d
    6ebc:	4c49465f 	mcrrmi	6, 5, r4, r9, cr15
    6ec0:	292a2045 	stmdbcs	sl!, {r0, r2, r6, sp}
    6ec4:	735f5f26 	cmpvc	pc, #38, 30	; 0x98
    6ec8:	61665f66 	cmnvs	r6, r6, ror #30
    6ecc:	735f656b 	cmpvc	pc, #448790528	; 0x1ac00000
    6ed0:	72656474 	rsbvc	r6, r5, #116, 8	; 0x74000000
    6ed4:	7d203b72 	vstmdbvc	r0!, {d3-<overflow reg d59>}
    6ed8:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 5fe0 <__bss_end__+0x27f0>
    6edc:	43434153 	movtmi	r4, #12627	; 0x3153
    6ee0:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
    6ee4:	5f544942 	svcpl	0x00544942
    6ee8:	0038205f 	eorseq	r2, r8, pc, asr r0
    6eec:	615f6176 	cmpvs	pc, r6, ror r1	; <UNPREDICTABLE>
    6ef0:	76286772 			; <UNDEFINED> instruction: 0x76286772
    6ef4:	20296c2c 	eorcs	r6, r9, ip, lsr #24
    6ef8:	75625f5f 	strbvc	r5, [r2, #-3935]!	; 0xfffff0a1
    6efc:	69746c69 	ldmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    6f00:	61765f6e 	cmnvs	r6, lr, ror #30
    6f04:	6772615f 			; <UNDEFINED> instruction: 0x6772615f
    6f08:	6c2c7628 	stcvs	6, cr7, [ip], #-160	; 0xffffff60
    6f0c:	4e490029 	cdpmi	0, 4, cr0, cr9, cr9, {1}
    6f10:	5f343654 	svcpl	0x00343654
    6f14:	2058414d 	subscs	r4, r8, sp, asr #2
    6f18:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    6f1c:	5f343654 	svcpl	0x00343654
    6f20:	5f58414d 	svcpl	0x0058414d
    6f24:	5f5f005f 	svcpl	0x005f005f
    6f28:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    6f2c:	5f544341 	svcpl	0x00544341
    6f30:	5f4e494d 	svcpl	0x004e494d
    6f34:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    6f38:	4c352e30 	ldcmi	14, cr2, [r5], #-192	; 0xffffff40
    6f3c:	302d524c 	eorcc	r5, sp, ip, asr #4
    6f40:	4c4c352e 	cfstr64mi	mvdx3, [ip], {46}	; 0x2e
    6f44:	5f002952 	svcpl	0x00002952
    6f48:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
    6f4c:	4952575f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    6f50:	525f4554 	subspl	r4, pc, #84, 10	; 0x15000000
    6f54:	52555445 	subspl	r5, r5, #1157627904	; 0x45000000
    6f58:	59545f4e 	ldmdbpl	r4, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    6f5c:	69204550 	stmdbvs	r0!, {r4, r6, r8, sl, lr}
    6f60:	5f00746e 	svcpl	0x0000746e
    6f64:	464c555f 			; <UNDEFINED> instruction: 0x464c555f
    6f68:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    6f6c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    6f70:	30205f5f 	eorcc	r5, r0, pc, asr pc
    6f74:	4c55302e 	mrrcmi	0, 2, r3, r5, cr14
    6f78:	5f5f0052 	svcpl	0x005f0052
    6f7c:	495f4148 	ldmdbmi	pc, {r3, r6, r8, lr}^	; <UNPREDICTABLE>
    6f80:	5f544942 	svcpl	0x00544942
    6f84:	0038205f 	eorseq	r2, r8, pc, asr r0
    6f88:	544f4e45 	strbpl	r4, [pc], #-3653	; 6f90 <__bss_end__+0x37a0>
    6f8c:	32205954 	eorcc	r5, r0, #84, 18	; 0x150000
    6f90:	525f0035 	subspl	r0, pc, #53	; 0x35
    6f94:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    6f98:	4548435f 	strbmi	r4, [r8, #-863]	; 0xfffffca1
    6f9c:	525f4b43 	subspl	r4, pc, #68608	; 0x10c00
    6fa0:	34444e41 	strbcc	r4, [r4], #-3649	; 0xfffff1bf
    6fa4:	61762838 	cmnvs	r6, r8, lsr r8
    6fa8:	5f202972 	svcpl	0x00202972
    6fac:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    6fb0:	48435f54 	stmdami	r3, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    6fb4:	284b4345 	stmdacs	fp, {r0, r2, r6, r8, r9, lr}^
    6fb8:	2c726176 	ldfcse	f6, [r2], #-472	; 0xfffffe28
    6fbc:	34725f20 	ldrbtcc	r5, [r2], #-3872	; 0xfffff0e0
    6fc0:	73202c38 			; <UNDEFINED> instruction: 0x73202c38
    6fc4:	63757274 	cmnvs	r5, #116, 4	; 0x40000007
    6fc8:	725f2074 	subsvc	r2, pc, #116	; 0x74
    6fcc:	34646e61 	strbtcc	r6, [r4], #-3681	; 0xfffff19f
    6fd0:	2c2a2038 	stccs	0, cr2, [sl], #-224	; 0xffffff20
    6fd4:	7a697320 	bvc	1a63c5c <_end+0xa63c5c>
    6fd8:	20666f65 	rsbcs	r6, r6, r5, ror #30
    6fdc:	7628282a 	strtvc	r2, [r8], -sl, lsr #16
    6fe0:	2d297261 	sfmcs	f7, 4, [r9, #-388]!	; 0xfffffe7c
    6fe4:	34725f3e 	ldrbtcc	r5, [r2], #-3902	; 0xfffff0c2
    6fe8:	202c2938 	eorcs	r2, ip, r8, lsr r9
    6fec:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    6ff0:	495f544e 	ldmdbmi	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    6ff4:	5f54494e 	svcpl	0x0054494e
    6ff8:	444e4152 	strbmi	r4, [lr], #-338	; 0xfffffeae
    6ffc:	28283834 	stmdacs	r8!, {r2, r4, r5, fp, ip, sp}
    7000:	29726176 	ldmdbcs	r2!, {r1, r2, r4, r5, r6, r8, sp, lr}^
    7004:	5f002929 	svcpl	0x00002929
    7008:	445f4353 	ldrbmi	r4, [pc], #-851	; 7010 <__bss_end__+0x3820>
    700c:	59414c45 	stmdbpl	r1, {r0, r2, r6, sl, fp, lr}^
    7010:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    7014:	414d5f52 	cmpmi	sp, r2, asr pc
    7018:	37332058 			; <UNDEFINED> instruction: 0x37332058
    701c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 6124 <__bss_end__+0x2934>
    7020:	50544e49 	subspl	r4, r4, r9, asr #28
    7024:	545f5254 	ldrbpl	r5, [pc], #-596	; 702c <__bss_end__+0x383c>
    7028:	5f455059 	svcpl	0x00455059
    702c:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    7030:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    7034:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    7038:	5f00746e 	svcpl	0x0000746e
    703c:	4e49465f 	mcrmi	6, 2, r4, cr9, cr15, {2}
    7040:	5f455449 	svcpl	0x00455449
    7044:	4854414d 	ldmdami	r4, {r0, r2, r3, r6, r8, lr}^
    7048:	4c4e4f5f 	mcrrmi	15, 5, r4, lr, cr15
    704c:	205f5f59 	subscs	r5, pc, r9, asr pc	; <UNPREDICTABLE>
    7050:	49550030 	ldmdbmi	r5, {r4, r5}^
    7054:	5f38544e 	svcpl	0x0038544e
    7058:	2058414d 	subscs	r4, r8, sp, asr #2
    705c:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    7060:	5f38544e 	svcpl	0x0038544e
    7064:	5f58414d 	svcpl	0x0058414d
    7068:	5f5f005f 	svcpl	0x005f005f
    706c:	52545353 	subspl	r5, r4, #1275068417	; 0x4c000001
    7070:	30783020 	rsbscc	r3, r8, r0, lsr #32
    7074:	00303032 	eorseq	r3, r0, r2, lsr r0
    7078:	44555f5f 	ldrbmi	r5, [r5], #-3935	; 0xfffff0a1
    707c:	42465f51 	submi	r5, r6, #324	; 0x144
    7080:	5f5f5449 	svcpl	0x005f5449
    7084:	00343620 	eorseq	r3, r4, r0, lsr #12
    7088:	6b6c625f 	blvs	1b1fa0c <_end+0xb1fa0c>
    708c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
    7090:	43535f00 	cmpmi	r3, #0, 30
    7094:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    7098:	5f344c45 	svcpl	0x00344c45
    709c:	48434143 	stmdami	r3, {r0, r1, r6, r8, lr}^
    70a0:	494c5f45 	stmdbmi	ip, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    70a4:	4953454e 	ldmdbmi	r3, {r1, r2, r3, r6, r8, sl, lr}^
    70a8:	3120455a 			; <UNDEFINED> instruction: 0x3120455a
    70ac:	5f003933 	svcpl	0x00003933
    70b0:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
    70b4:	504c5f37 	subpl	r5, ip, r7, lsr pc
    70b8:	4f5f3436 	svcmi	0x005f3436
    70bc:	34364646 	ldrtcc	r4, [r6], #-1606	; 0xfffff9ba
    70c0:	00343920 	eorseq	r3, r4, r0, lsr #18
    70c4:	7562755f 	strbvc	r7, [r2, #-1375]!	; 0xfffffaa1
    70c8:	5f5f0066 	svcpl	0x005f0066
    70cc:	5f544e49 	svcpl	0x00544e49
    70d0:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    70d4:	545f3233 	ldrbpl	r3, [pc], #-563	; 70dc <__bss_end__+0x38ec>
    70d8:	5f455059 	svcpl	0x00455059
    70dc:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
    70e0:	505f0074 	subspl	r0, pc, r4, ror r0	; <UNPREDICTABLE>
    70e4:	414d5f43 	cmpmi	sp, r3, asr #30
    70e8:	4e495f58 	mcrmi	15, 2, r5, cr9, cr8, {2}
    70ec:	20545550 	subscs	r5, r4, r0, asr r5
    70f0:	5f5f0032 	svcpl	0x005f0032
    70f4:	6f656673 	svcvs	0x00656673
    70f8:	29702866 	ldmdbcs	r0!, {r1, r2, r5, r6, fp, sp}^
    70fc:	69282820 	stmdbvs	r8!, {r5, fp, sp}
    7100:	2829746e 	stmdacs	r9!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
    7104:	29702828 	ldmdbcs	r0!, {r3, r5, fp, sp}^
    7108:	665f3e2d 	ldrbvs	r3, [pc], -sp, lsr #28
    710c:	7367616c 	cmnvc	r7, #108, 2
    7110:	5f202620 	svcpl	0x00202620
    7114:	4f45535f 	svcmi	0x0045535f
    7118:	21202946 			; <UNDEFINED> instruction: 0x21202946
    711c:	2930203d 	ldmdbcs	r0!, {r0, r2, r3, r4, r5, sp}
    7120:	49550029 	ldmdbmi	r5, {r0, r3, r5}^
    7124:	5f38544e 	svcpl	0x0038544e
    7128:	0058414d 	subseq	r4, r8, sp, asr #2
    712c:	67735f5f 			; <UNDEFINED> instruction: 0x67735f5f
    7130:	0065756c 	rsbeq	r7, r5, ip, ror #10
    7134:	6f6c5f5f 	svcvs	0x006c5f5f
    7138:	656c6163 	strbvs	r6, [ip, #-355]!	; 0xfffffe9d
    713c:	4500745f 	strmi	r7, [r0, #-1119]	; 0xfffffba1
    7140:	49414741 	stmdbmi	r1, {r0, r6, r8, r9, sl, lr}^
    7144:	3131204e 	teqcc	r1, lr, asr #32
    7148:	43505f00 	cmpmi	r0, #0, 30
    714c:	4952505f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, ip, lr}^
    7150:	4f495f4f 	svcmi	0x00495f4f
    7154:	00303120 	eorseq	r3, r0, r0, lsr #2
    7158:	55414645 	strbpl	r4, [r1, #-1605]	; 0xfffff9bb
    715c:	3120544c 			; <UNDEFINED> instruction: 0x3120544c
    7160:	5f5f0034 	svcpl	0x005f0034
    7164:	64646164 	strbtvs	r6, [r4], #-356	; 0xfffffe9c
    7168:	5f745f72 	svcpl	0x00745f72
    716c:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    7170:	2064656e 	rsbcs	r6, r4, lr, ror #10
    7174:	635f5f00 	cmpvs	pc, #0, 30
    7178:	6e61656c 	cdpvs	5, 6, cr6, cr1, cr12, {3}
    717c:	5f007075 	svcpl	0x00007075
    7180:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    7184:	5a49535f 	bpl	125bf08 <_end+0x25bf08>
    7188:	5f464f45 	svcpl	0x00464f45
    718c:	494e494d 	stmdbmi	lr, {r0, r2, r3, r6, r8, fp, lr}^
    7190:	5f4c414d 	svcpl	0x004c414d
    7194:	4d554e45 	ldclmi	14, cr4, [r5, #-276]	; 0xfffffeec
    7198:	5f003120 	svcpl	0x00003120
    719c:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    71a0:	435f3436 	cmpmi	pc, #905969664	; 0x36000000
    71a4:	20296328 	eorcs	r6, r9, r8, lsr #6
    71a8:	23232063 			; <UNDEFINED> instruction: 0x23232063
    71ac:	004c4c20 	subeq	r4, ip, r0, lsr #24
    71b0:	4e574f45 	cdpmi	15, 5, cr4, cr7, cr5, {2}
    71b4:	45445245 	strbmi	r5, [r4, #-581]	; 0xfffffdbb
    71b8:	31204441 			; <UNDEFINED> instruction: 0x31204441
    71bc:	53003234 	movwpl	r3, #564	; 0x234
    71c0:	4c4c4548 	cfstr64mi	mvdx4, [ip], {72}	; 0x48
    71c4:	524f465f 	subpl	r4, pc, #99614720	; 0x5f00000
    71c8:	5f54414d 	svcpl	0x0054414d
    71cc:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
    71d0:	5c222054 	stcpl	0, cr2, [r2], #-336	; 0xfffffeb0
    71d4:	5b333330 	blpl	cd3e9c <heap_size+0xcb3e9c>
    71d8:	4e454722 	cdpmi	7, 4, cr4, cr5, cr2, {1}
    71dc:	524f465f 	subpl	r4, pc, #99614720	; 0x5f00000
    71e0:	5f54414d 	svcpl	0x0054414d
    71e4:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
    71e8:	226d2254 	rsbcs	r2, sp, #84, 4	; 0x40000005
    71ec:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 71f4 <__bss_end__+0x3a04>
    71f0:	42465f41 	submi	r5, r6, #260	; 0x104
    71f4:	5f5f5449 	svcpl	0x005f5449
    71f8:	00313320 	eorseq	r3, r1, r0, lsr #6
    71fc:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    7200:	5f323354 	svcpl	0x00323354
    7204:	5f4e494d 	svcpl	0x004e494d
    7208:	2e31205f 	mrccs	0, 1, r2, cr1, cr15, {2}
    720c:	34353731 	ldrtcc	r3, [r5], #-1841	; 0xfffff8cf
    7210:	35333439 	ldrcc	r3, [r3, #-1081]!	; 0xfffffbc7
    7214:	32323830 	eorscc	r3, r2, #48, 16	; 0x300000
    7218:	35373832 	ldrcc	r3, [r7, #-2098]!	; 0xfffff7ce
    721c:	38332d65 	ldmdacc	r3!, {r0, r2, r5, r6, r8, sl, fp, sp}
    7220:	00323346 	eorseq	r3, r2, r6, asr #6
    7224:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    7228:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    722c:	535f5f20 	cmppl	pc, #32, 30	; 0x80
    7230:	5f455a49 	svcpl	0x00455a49
    7234:	5f58414d 	svcpl	0x0058414d
    7238:	4e49005f 	mcrmi	0, 2, r0, cr9, cr15, {2}
    723c:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 70f4 <__bss_end__+0x3904>
    7240:	5f004e49 	svcpl	0x00004e49
    7244:	5f535953 	svcpl	0x00535953
    7248:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    724c:	5f544e49 	svcpl	0x00544e49
    7250:	5f002048 	svcpl	0x00002048
    7254:	5453585f 	ldrbpl	r5, [r3], #-2143	; 0xfffff7a1
    7258:	474e4952 	smlsldmi	r4, lr, r2, r9
    725c:	20297828 	eorcs	r7, r9, r8, lsr #16
    7260:	54535f5f 	ldrbpl	r5, [r3], #-3935	; 0xfffff0a1
    7264:	474e4952 	smlsldmi	r4, lr, r2, r9
    7268:	00297828 	eoreq	r7, r9, r8, lsr #16
    726c:	43535f5f 	cmpmi	r3, #380	; 0x17c
    7270:	44495343 	strbmi	r5, [r9], #-835	; 0xfffffcbd
    7274:	20297328 	eorcs	r7, r9, r8, lsr #6
    7278:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
    727c:	5f207463 	svcpl	0x00207463
    7280:	6361685f 	cmnvs	r1, #6225920	; 0x5f0000
    7284:	5852006b 	ldmdapl	r2, {r0, r1, r3, r5, r6}^
    7288:	49004d57 	stmdbmi	r0, {r0, r1, r2, r4, r6, r8, sl, fp, lr}
    728c:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    7290:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    7294:	494d5f34 	stmdbmi	sp, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    7298:	5f5f004e 	svcpl	0x005f004e
    729c:	36434544 	strbcc	r4, [r3], -r4, asr #10
    72a0:	414d5f34 	cmpmi	sp, r4, lsr pc
    72a4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    72a8:	39392e39 	ldmdbcc	r9!, {r0, r3, r4, r5, r9, sl, fp, sp}
    72ac:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    72b0:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    72b4:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    72b8:	38334539 	ldmdacc	r3!, {r0, r3, r4, r5, r8, sl, lr}
    72bc:	00444434 	subeq	r4, r4, r4, lsr r4
    72c0:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    72c4:	41465f54 	cmpmi	r6, r4, asr pc
    72c8:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    72cc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    72d0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    72d4:	66663778 			; <UNDEFINED> instruction: 0x66663778
    72d8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    72dc:	41550066 	cmpmi	r5, r6, rrx
    72e0:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 71a0 <__bss_end__+0x39b0>
    72e4:	4d45444f 	cfstrdmi	mvd4, [r5, #-316]	; 0xfffffec4
    72e8:	445f5253 	ldrbmi	r5, [pc], #-595	; 72f0 <__bss_end__+0x3b00>
    72ec:	30205253 	eorcc	r5, r0, r3, asr r2
    72f0:	30303078 	eorscc	r3, r0, r8, ror r0
    72f4:	32303030 	eorscc	r3, r0, #48	; 0x30
    72f8:	665f0030 			; <UNDEFINED> instruction: 0x665f0030
    72fc:	00656c69 	rsbeq	r6, r5, r9, ror #24
    7300:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    7304:	545f3631 	ldrbpl	r3, [pc], #-1585	; 730c <__bss_end__+0x3b1c>
    7308:	4345445f 	movtmi	r4, #21599	; 0x545f
    730c:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    7310:	5f002044 	svcpl	0x00002044
    7314:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    7318:	4e495f54 	mcrmi	15, 2, r5, cr9, cr4, {2}
    731c:	415f5449 	cmpmi	pc, r9, asr #8
    7320:	49584554 	ldmdbmi	r8, {r2, r4, r6, r8, sl, lr}^
    7324:	57002054 	smlsdpl	r0, r4, r0, r2
    7328:	5f544e49 	svcpl	0x00544e49
    732c:	204e494d 	subcs	r4, lr, sp, asr #18
    7330:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    7334:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 7204 <__bss_end__+0x3a14>
    7338:	5f5f4e49 	svcpl	0x005f4e49
    733c:	415f5f00 	cmpmi	pc, r0, lsl #30
    7340:	49525454 	ldmdbmi	r2, {r2, r4, r6, sl, ip, lr}^
    7344:	45545542 	ldrbmi	r5, [r4, #-1346]	; 0xfffffabe
    7348:	504d495f 	subpl	r4, sp, pc, asr r9
    734c:	5f455255 	svcpl	0x00455255
    7350:	5f525450 	svcpl	0x00525450
    7354:	5f00205f 	svcpl	0x0000205f
    7358:	5f41445f 	svcpl	0x0041445f
    735c:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    7360:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    7364:	555f0032 	ldrbpl	r0, [pc, #-50]	; 733a <__bss_end__+0x3b4a>
    7368:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    736c:	545f5841 	ldrbpl	r5, [pc], #-2113	; 7374 <__bss_end__+0x3b84>
    7370:	4345445f 	movtmi	r4, #21599	; 0x545f
    7374:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    7378:	5f002044 	svcpl	0x00002044
    737c:	5f51545f 	svcpl	0x0051545f
    7380:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    7384:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    7388:	5f003732 	svcpl	0x00003732
    738c:	5046565f 	subpl	r5, r6, pc, asr r6
    7390:	5f50465f 	svcpl	0x0050465f
    7394:	0031205f 	eorseq	r2, r1, pc, asr r0
    7398:	5f43535f 	svcpl	0x0043535f
    739c:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    73a0:	505f4441 	subspl	r4, pc, r1, asr #8
    73a4:	5f4f4952 	svcpl	0x004f4952
    73a8:	4c494543 	cfstr64mi	mvdx4, [r9], {67}	; 0x43
    73ac:	20474e49 	subcs	r4, r7, r9, asr #28
    73b0:	5f43535f 	svcpl	0x0043535f
    73b4:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    73b8:	505f4441 	subspl	r4, pc, r1, asr #8
    73bc:	5f4f4952 	svcpl	0x004f4952
    73c0:	544f5250 	strbpl	r5, [pc], #-592	; 73c8 <__bss_end__+0x3bd8>
    73c4:	00544345 	subseq	r4, r4, r5, asr #6
    73c8:	46735f5f 	uhsaxmi	r5, r3, pc	; <UNPREDICTABLE>
    73cc:	00454c49 	subeq	r4, r5, r9, asr #24
    73d0:	5f43535f 	svcpl	0x0043535f
    73d4:	57415053 	smlsldpl	r5, r1, r3, r0
    73d8:	3537204e 	ldrcc	r2, [r7, #-78]!	; 0xffffffb2
    73dc:	6e665f00 	cdpvs	15, 6, cr5, cr6, cr0, {0}
    73e0:	535f0073 	cmppl	pc, #115	; 0x73
    73e4:	59535f43 	ldmdbpl	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    73e8:	4f4f4c4d 	svcmi	0x004f4c4d
    73ec:	414d5f50 	cmpmi	sp, r0, asr pc
    73f0:	39372058 	ldmdbcc	r7!, {r3, r4, r6, sp}
    73f4:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 64fc <__bss_end__+0x2d0c>
    73f8:	4152464c 	cmpmi	r2, ip, asr #12
    73fc:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    7400:	5f544942 	svcpl	0x00544942
    7404:	0030205f 	eorseq	r2, r0, pc, asr r0
    7408:	5f43535f 	svcpl	0x0043535f
    740c:	4f5f514d 	svcmi	0x005f514d
    7410:	5f4e4550 	svcpl	0x004e4550
    7414:	2058414d 	subscs	r4, r8, sp, asr #2
    7418:	55003331 	strpl	r3, [r0, #-817]	; 0xfffffccf
    741c:	5f545241 	svcpl	0x00545241
    7420:	435f524d 	cmpmi	pc, #-805306364	; 0xd0000004
    7424:	4c524148 	ldfmie	f4, [r2], {72}	; 0x48
    7428:	385f4e45 	ldmdacc	pc, {r0, r2, r6, r9, sl, fp, lr}^	; <UNPREDICTABLE>
    742c:	5449425f 	strbpl	r4, [r9], #-607	; 0xfffffda1
    7430:	30783020 	rsbscc	r3, r8, r0, lsr #32
    7434:	30303030 	eorscc	r3, r0, r0, lsr r0
    7438:	00303030 	eorseq	r3, r0, r0, lsr r0
    743c:	5f43535f 	svcpl	0x0043535f
    7440:	45504f58 	ldrbmi	r4, [r0, #-3928]	; 0xfffff0a8
    7444:	45525f4e 	ldrbmi	r5, [r2, #-3918]	; 0xfffff0b2
    7448:	49544c41 	ldmdbmi	r4, {r0, r6, sl, fp, lr}^
    744c:	545f454d 	ldrbpl	r4, [pc], #-1357	; 7454 <__bss_end__+0x3c64>
    7450:	41455248 	cmpmi	r5, r8, asr #4
    7454:	31205344 			; <UNDEFINED> instruction: 0x31205344
    7458:	5f003230 	svcpl	0x00003230
    745c:	7473626d 	ldrbtvc	r6, [r3], #-621	; 0xfffffd93
    7460:	5f657461 	svcpl	0x00657461
    7464:	5f5f0074 	svcpl	0x005f0074
    7468:	5f4d5241 	svcpl	0x004d5241
    746c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    7470:	575f464f 	ldrbpl	r4, [pc, -pc, asr #12]
    7474:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    7478:	3420545f 	strtcc	r5, [r0], #-1119	; 0xfffffba1
    747c:	524f4600 	subpl	r4, pc, #0, 12
    7480:	4f524745 	svcmi	0x00524745
    7484:	5f444e55 	svcpl	0x00444e55
    7488:	5f4c4f43 	svcpl	0x004c4f43
    748c:	45455247 	strbmi	r5, [r5, #-583]	; 0xfffffdb9
    7490:	3322204e 			; <UNDEFINED> instruction: 0x3322204e
    7494:	5f002232 	svcpl	0x00002232
    7498:	5a49535f 	bpl	125c21c <_end+0x25c21c>
    749c:	5f464f45 	svcpl	0x00464f45
    74a0:	42554f44 	subsmi	r4, r5, #68, 30	; 0x110
    74a4:	5f5f454c 	svcpl	0x005f454c
    74a8:	5f003820 	svcpl	0x00003820
    74ac:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    74b0:	41465f54 	cmpmi	r6, r4, asr pc
    74b4:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    74b8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    74bc:	30205f5f 	eorcc	r5, r0, pc, asr pc
    74c0:	66666678 			; <UNDEFINED> instruction: 0x66666678
    74c4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    74c8:	5f005566 	svcpl	0x00005566
    74cc:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    74d0:	414d5f4c 	cmpmi	sp, ip, asr #30
    74d4:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    74d8:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    74dc:	34323031 	ldrtcc	r3, [r2], #-49	; 0xffffffcf
    74e0:	43535f00 	cmpmi	r3, #0, 30
    74e4:	4745525f 	smlsldmi	r5, r5, pc, r2	; <UNPREDICTABLE>
    74e8:	20505845 	subscs	r5, r0, r5, asr #16
    74ec:	5f003237 	svcpl	0x00003237
    74f0:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
    74f4:	4c495f37 	mcrrmi	15, 3, r5, r9, cr7
    74f8:	5f323350 	svcpl	0x00323350
    74fc:	3346464f 	movtcc	r4, #26191	; 0x664f
    7500:	32392032 	eorscc	r2, r9, #50	; 0x32
    7504:	52415500 	subpl	r5, r1, #0, 10
    7508:	52535f54 	subspl	r5, r3, #84, 30	; 0x150
    750c:	45564f5f 	ldrbmi	r4, [r6, #-3935]	; 0xfffff0a1
    7510:	78302052 	ldmdavc	r0!, {r1, r4, r6, sp}
    7514:	30303030 	eorscc	r3, r0, r0, lsr r0
    7518:	30323030 	eorscc	r3, r2, r0, lsr r0
    751c:	43535f00 	cmpmi	r3, #0, 30
    7520:	52504e5f 	subspl	r4, r0, #1520	; 0x5f0
    7524:	5345434f 	movtpl	r4, #21327	; 0x534f
    7528:	53524f53 	cmppl	r2, #332	; 0x14c
    752c:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    7530:	00392046 	eorseq	r2, r9, r6, asr #32
    7534:	4453425f 	ldrbmi	r4, [r3], #-607	; 0xfffffda1
    7538:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    753c:	545f5241 	ldrbpl	r5, [pc], #-577	; 7544 <__bss_end__+0x3d54>
    7540:	5f00205f 	svcpl	0x0000205f
    7544:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    7548:	5349565f 	movtpl	r5, #38495	; 0x965f
    754c:	454c4249 	strbmi	r4, [ip, #-585]	; 0xfffffdb7
    7550:	5f003020 	svcpl	0x00003020
    7554:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    7558:	4145465f 	cmpmi	r5, pc, asr r6
    755c:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    7560:	3150465f 	cmpcc	r0, pc, asr r6
    7564:	45565f36 	ldrbmi	r5, [r6, #-3894]	; 0xfffff0ca
    7568:	524f5443 	subpl	r5, pc, #1124073472	; 0x43000000
    756c:	4952415f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, lr}^
    7570:	454d4854 	strbmi	r4, [sp, #-2132]	; 0xfffff7ac
    7574:	00434954 	subeq	r4, r3, r4, asr r9
    7578:	524c4145 	subpl	r4, ip, #1073741841	; 0x40000011
    757c:	59444145 	stmdbpl	r4, {r0, r2, r6, r8, lr}^
    7580:	30323120 	eorscc	r3, r2, r0, lsr #2
    7584:	53535f00 	cmppl	r3, #0, 30
    7588:	5f455a49 	svcpl	0x00455a49
    758c:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    7590:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    7594:	00204445 	eoreq	r4, r0, r5, asr #8
    7598:	4e41525f 	mcrmi	2, 2, r5, cr1, cr15, {2}
    759c:	5f383444 	svcpl	0x00383444
    75a0:	44454553 	strbmi	r4, [r5], #-1363	; 0xfffffaad
    75a4:	2820305f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, ip, sp}
    75a8:	33337830 	teqcc	r3, #48, 16	; 0x300000
    75ac:	00296530 	eoreq	r6, r9, r0, lsr r5
    75b0:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    75b4:	50465f4d 	subpl	r5, r6, sp, asr #30
    75b8:	465f3631 			; <UNDEFINED> instruction: 0x465f3631
    75bc:	414d524f 	cmpmi	sp, pc, asr #4
    75c0:	45495f54 	strbmi	r5, [r9, #-3924]	; 0xfffff0ac
    75c4:	45004545 	strmi	r4, [r0, #-1349]	; 0xfffffabb
    75c8:	4c415453 	cfstrdmi	mvd5, [r1], {83}	; 0x53
    75cc:	33312045 	teqcc	r1, #69	; 0x45
    75d0:	52450033 	subpl	r0, r5, #51	; 0x33
    75d4:	2053464f 	subscs	r4, r3, pc, asr #12
    75d8:	5f003033 	svcpl	0x00003033
    75dc:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    75e0:	5f58414d 	svcpl	0x0058414d
    75e4:	5f58414d 	svcpl	0x0058414d
    75e8:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    75ec:	66666637 			; <UNDEFINED> instruction: 0x66666637
    75f0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    75f4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    75f8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    75fc:	5f004c4c 	svcpl	0x00004c4c
    7600:	7165725f 	cmnvc	r5, pc, asr r2
    7604:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    7608:	68735f73 	ldmdavs	r3!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    760c:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    7610:	2e2e2e28 	cdpcs	14, 2, cr2, cr14, cr8, {1}
    7614:	5f5f2029 	svcpl	0x005f2029
    7618:	6b636f6c 	blvs	18e33d0 <_end+0x8e33d0>
    761c:	6e6e615f 	mcrvs	1, 3, r6, cr14, cr15, {2}
    7620:	7461746f 	strbtvc	r7, [r1], #-1135	; 0xfffffb91
    7624:	68732865 	ldmdavs	r3!, {r0, r2, r5, r6, fp, sp}^
    7628:	64657261 	strbtvs	r7, [r5], #-609	; 0xfffffd9f
    762c:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    7630:	725f736b 	subsvc	r7, pc, #-1409286143	; 0xac000001
    7634:	69757165 	ldmdbvs	r5!, {r0, r2, r5, r6, r8, ip, sp, lr}^
    7638:	28646572 	stmdacs	r4!, {r1, r4, r5, r6, r8, sl, sp, lr}^
    763c:	41565f5f 	cmpmi	r6, pc, asr pc
    7640:	4752415f 			; <UNDEFINED> instruction: 0x4752415f
    7644:	295f5f53 	ldmdbcs	pc, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    7648:	5f5f0029 	svcpl	0x005f0029
    764c:	43554e47 	cmpmi	r5, #1136	; 0x470
    7650:	454b494c 	strbmi	r4, [fp, #-2380]	; 0xfffff6b4
    7654:	54414d5f 	strbpl	r4, [r1], #-3423	; 0xfffff2a1
    7658:	55425f48 	strbpl	r5, [r2, #-3912]	; 0xfffff0b8
    765c:	49544c49 	ldmdbmi	r4, {r0, r3, r6, sl, fp, lr}^
    7660:	45525f4e 	ldrbmi	r5, [r2, #-3918]	; 0xfffff0b2
    7664:	53504f4c 	cmppl	r0, #76, 30	; 0x130
    7668:	43570020 	cmpmi	r7, #32
    766c:	5f524148 	svcpl	0x00524148
    7670:	004e494d 	subeq	r4, lr, sp, asr #18
    7674:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    7678:	41454c5f 	cmpmi	r5, pc, asr ip
    767c:	36315453 			; <UNDEFINED> instruction: 0x36315453
    7680:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7684:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 676c <__bss_end__+0x2f7c>
    7688:	5f544e49 	svcpl	0x00544e49
    768c:	5341454c 	movtpl	r4, #5452	; 0x154c
    7690:	5f363154 	svcpl	0x00363154
    7694:	5f58414d 	svcpl	0x0058414d
    7698:	5f5f005f 	svcpl	0x005f005f
    769c:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    76a0:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    76a4:	5f5f4854 	svcpl	0x005f4854
    76a8:	00323320 	eorseq	r3, r2, r0, lsr #6
    76ac:	5f544e49 	svcpl	0x00544e49
    76b0:	5341454c 	movtpl	r4, #5452	; 0x154c
    76b4:	5f343654 	svcpl	0x00343654
    76b8:	204e494d 	subcs	r4, lr, sp, asr #18
    76bc:	4e492d28 	cdpmi	13, 4, cr2, cr9, cr8, {1}
    76c0:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    76c4:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    76c8:	414d5f34 	cmpmi	sp, r4, lsr pc
    76cc:	202d2058 	eorcs	r2, sp, r8, asr r0
    76d0:	5f002931 	svcpl	0x00002931
    76d4:	4144555f 	cmpmi	r4, pc, asr r5
    76d8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    76dc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    76e0:	5f003233 	svcpl	0x00003233
    76e4:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
    76e8:	2064656e 	rsbcs	r6, r4, lr, ror #10
    76ec:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    76f0:	5f006465 	svcpl	0x00006465
    76f4:	5053535f 	subspl	r5, r3, pc, asr r3
    76f8:	524f465f 	subpl	r4, pc, #99614720	; 0x5f00000
    76fc:	59464954 	stmdbpl	r6, {r2, r4, r6, r8, fp, lr}^
    7700:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    7704:	30204c45 	eorcc	r4, r0, r5, asr #24
    7708:	765f5f00 	ldrbvc	r5, [pc], -r0, lsl #30
    770c:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
    7710:	59535f00 	ldmdbpl	r3, {r8, r9, sl, fp, ip, lr}^
    7714:	45465f53 	strbmi	r5, [r6, #-3923]	; 0xfffff0ad
    7718:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    771c:	485f5345 	ldmdami	pc, {r0, r2, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    7720:	525f0020 	subspl	r0, pc, #32
    7724:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    7728:	4c424d5f 	mcrrmi	13, 5, r4, r2, cr15
    772c:	535f4e45 	cmppl	pc, #1104	; 0x450
    7730:	45544154 	ldrbmi	r4, [r4, #-340]	; 0xfffffeac
    7734:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    7738:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    773c:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    7740:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 7694 <__bss_end__+0x3ea4>
    7744:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    7748:	626d5f3e 	rsbvs	r5, sp, #62, 30	; 0xf8
    774c:	5f6e656c 	svcpl	0x006e656c
    7750:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    7754:	5f002965 	svcpl	0x00002965
    7758:	585f4353 	ldmdapl	pc, {r0, r1, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    775c:	5f355342 	svcpl	0x00355342
    7760:	3436504c 	ldrtcc	r5, [r6], #-76	; 0xffffffb4
    7764:	46464f5f 			; <UNDEFINED> instruction: 0x46464f5f
    7768:	5f203436 	svcpl	0x00203436
    776c:	565f4353 			; <UNDEFINED> instruction: 0x565f4353
    7770:	504c5f37 	subpl	r5, ip, r7, lsr pc
    7774:	4f5f3436 	svcmi	0x005f3436
    7778:	34364646 	ldrtcc	r4, [r6], #-1606	; 0xfffff9ba
    777c:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 7784 <__bss_end__+0x3f94>
    7780:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
    7784:	005f5f32 	subseq	r5, pc, r2, lsr pc	; <UNPREDICTABLE>
    7788:	5f73695f 	svcpl	0x0073695f
    778c:	00617863 	rsbeq	r7, r1, r3, ror #16
    7790:	5f43535f 	svcpl	0x0043535f
    7794:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    7798:	505f4441 	subspl	r4, pc, r1, asr #8
    779c:	45434f52 	strbmi	r4, [r3, #-3922]	; 0xfffff0ae
    77a0:	535f5353 	cmppl	pc, #1275068417	; 0x4c000001
    77a4:	45524148 	ldrbmi	r4, [r2, #-328]	; 0xfffffeb8
    77a8:	38342044 	ldmdacc	r4!, {r2, r6, sp}
    77ac:	43535f00 	cmpmi	r3, #0, 30
    77b0:	565f325f 			; <UNDEFINED> instruction: 0x565f325f
    77b4:	49535245 	ldmdbmi	r3, {r0, r2, r6, r9, ip, lr}^
    77b8:	31204e4f 			; <UNDEFINED> instruction: 0x31204e4f
    77bc:	55003132 	strpl	r3, [r0, #-306]	; 0xfffffece
    77c0:	5f545241 	svcpl	0x00545241
    77c4:	435f524d 	cmpmi	pc, #-805306364	; 0xd0000004
    77c8:	444f4d48 	strbmi	r4, [pc], #-3400	; 77d0 <__bss_end__+0x3fe0>
    77cc:	43455f45 	movtmi	r5, #24389	; 0x5f45
    77d0:	30204f48 	eorcc	r4, r0, r8, asr #30
    77d4:	30303078 	eorscc	r3, r0, r8, ror r0
    77d8:	30313030 	eorscc	r3, r1, r0, lsr r0
    77dc:	535f0030 	cmppl	pc, #48	; 0x30
    77e0:	48545f43 	ldmdami	r4, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    77e4:	44414552 	strbmi	r4, [r1], #-1362	; 0xfffffaae
    77e8:	424f525f 	submi	r5, pc, #-268435451	; 0xf0000005
    77ec:	5f545355 	svcpl	0x00545355
    77f0:	4f495250 	svcmi	0x00495250
    77f4:	484e495f 	stmdami	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    77f8:	54495245 	strbpl	r5, [r9], #-581	; 0xfffffdbb
    77fc:	32323120 	eorscc	r3, r2, #32, 2
    7800:	725f5f00 	subsvc	r5, pc, #0, 30
    7804:	72747365 	rsbsvc	r7, r4, #-1811939327	; 0x94000001
    7808:	20746369 	rsbscs	r6, r4, r9, ror #6
    780c:	74736572 	ldrbtvc	r6, [r3], #-1394	; 0xfffffa8e
    7810:	74636972 	strbtvc	r6, [r3], #-2418	; 0xfffff68e
    7814:	414e4500 	cmpmi	lr, r0, lsl #10
    7818:	4f54454d 	svcmi	0x0054454d
    781c:	4e4f4c4f 	cdpmi	12, 4, cr4, cr15, cr15, {2}
    7820:	31392047 	teqcc	r9, r7, asr #32
    7824:	706d5f00 	rsbvc	r5, sp, r0, lsl #30
    7828:	00636572 	rsbeq	r6, r3, r2, ror r5
    782c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    7830:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 776c <__bss_end__+0x3f7c>
    7834:	5f205841 	svcpl	0x00205841
    7838:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    783c:	5f323354 	svcpl	0x00323354
    7840:	5f58414d 	svcpl	0x0058414d
    7844:	4f45005f 	svcmi	0x0045005f
    7848:	544f4e50 	strbpl	r4, [pc], #-3664	; 7850 <__bss_end__+0x4060>
    784c:	50505553 	subspl	r5, r0, r3, asr r5
    7850:	00353920 	eorseq	r3, r5, r0, lsr #18
    7854:	656e5f5f 	strbvs	r5, [lr, #-3935]!	; 0xfffff0a1
    7858:	775f6465 	ldrbvc	r6, [pc, -r5, ror #8]
    785c:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    7860:	0020745f 	eoreq	r7, r0, pc, asr r4
    7864:	69735f5f 	ldmdbvs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    7868:	745f657a 	ldrbvc	r6, [pc], #-1402	; 7870 <__bss_end__+0x4080>
    786c:	53494500 	movtpl	r4, #38144	; 0x9500
    7870:	20524944 	subscs	r4, r2, r4, asr #18
    7874:	49003132 	stmdbmi	r0, {r1, r4, r5, r8, ip, sp}
    7878:	414d544e 	cmpmi	sp, lr, asr #8
    787c:	28435f58 	stmdacs	r3, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    7880:	5f202963 	svcpl	0x00202963
    7884:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    7888:	5f58414d 	svcpl	0x0058414d
    788c:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    7890:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    7894:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    7898:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    789c:	414d5f32 	cmpmi	sp, r2, lsr pc
    78a0:	5f5f2058 	svcpl	0x005f2058
    78a4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    78a8:	41454c5f 	cmpmi	r5, pc, asr ip
    78ac:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    78b0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    78b4:	5f005f5f 	svcpl	0x00005f5f
    78b8:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    78bc:	4b494c43 	blmi	125a9d0 <_end+0x25a9d0>
    78c0:	414d5f45 	cmpmi	sp, r5, asr #30
    78c4:	425f4854 	subsmi	r4, pc, #84, 16	; 0x540000
    78c8:	544c4955 	strbpl	r4, [ip], #-2389	; 0xfffff6ab
    78cc:	435f4e49 	cmpmi	pc, #1168	; 0x490
    78d0:	54534e4f 	ldrbpl	r4, [r3], #-3663	; 0xfffff1b1
    78d4:	53544e41 	cmppl	r4, #1040	; 0x410
    78d8:	5f5f0020 	svcpl	0x005f0020
    78dc:	6e6e6f6e 	cdpvs	15, 6, cr6, cr14, cr14, {3}
    78e0:	5f6c6c75 	svcpl	0x006c6c75
    78e4:	206c6c61 	rsbcs	r6, ip, r1, ror #24
    78e8:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    78ec:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    78f0:	5f657475 	svcpl	0x00657475
    78f4:	5f28285f 	svcpl	0x0028285f
    78f8:	6e6f6e5f 	mcrvs	14, 3, r6, cr15, cr15, {2}
    78fc:	6c6c756e 	cfstr64vs	mvdx7, [ip], #-440	; 0xfffffe48
    7900:	29295f5f 	stmdbcs	r9!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    7904:	52415500 	subpl	r5, r1, #0, 10
    7908:	524d5f54 	subpl	r5, sp, #84, 30	; 0x150
    790c:	5241505f 	subpl	r5, r1, #95	; 0x5f
    7910:	5f595449 	svcpl	0x00595449
    7914:	43415053 	movtmi	r5, #4179	; 0x1053
    7918:	78302045 	ldmdavc	r0!, {r0, r2, r6, sp}
    791c:	30303030 	eorscc	r3, r0, r0, lsr r0
    7920:	30313030 	eorscc	r3, r1, r0, lsr r0
    7924:	4c455f00 	mcrrmi	15, 0, r5, r5, cr0
    7928:	42414449 	submi	r4, r1, #1224736768	; 0x49000000
    792c:	495f454c 	ldmdbmi	pc, {r2, r3, r6, r8, sl, lr}^	; <UNPREDICTABLE>
    7930:	4e494c4e 	cdpmi	12, 4, cr4, cr9, cr14, {2}
    7934:	74732045 	ldrbtvc	r2, [r3], #-69	; 0xffffffbb
    7938:	63697461 	cmnvs	r9, #1627389952	; 0x61000000
    793c:	695f5f20 	ldmdbvs	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    7940:	6e696c6e 	cdpvs	12, 6, cr6, cr9, cr14, {3}
    7944:	005f5f65 	subseq	r5, pc, r5, ror #30
    7948:	54415f5f 	strbpl	r5, [r1], #-3935	; 0xfffff0a1
    794c:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    7950:	5143415f 	cmppl	r3, pc, asr r1
    7954:	4c45525f 	sfmmi	f5, 2, [r5], {95}	; 0x5f
    7958:	5f003420 	svcpl	0x00003420
    795c:	6b656573 	blvs	1960f30 <_end+0x960f30>
    7960:	615f5f00 	cmpvs	pc, r0, lsl #30
    7964:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
    7968:	696c615f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r8, sp, lr}^
    796c:	78286e67 	stmdavc	r8!, {r0, r1, r2, r5, r6, r9, sl, fp, sp, lr}
    7970:	5f5f2029 	svcpl	0x005f2029
    7974:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    7978:	74756269 	ldrbtvc	r6, [r5], #-617	; 0xfffffd97
    797c:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    7980:	615f5f28 	cmpvs	pc, r8, lsr #30
    7984:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
    7988:	696c615f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r8, sp, lr}^
    798c:	5f5f6e67 	svcpl	0x005f6e67
    7990:	29297828 	stmdbcs	r9!, {r3, r5, fp, ip, sp, lr}
    7994:	545f0029 	ldrbpl	r0, [pc], #-41	; 799c <__bss_end__+0x41ac>
    7998:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    799c:	00205241 	eoreq	r5, r0, r1, asr #4
    79a0:	5f544e49 	svcpl	0x00544e49
    79a4:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    79a8:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 78e4 <__bss_end__+0x40f4>
    79ac:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    79b0:	544e492d 	strbpl	r4, [lr], #-2349	; 0xfffff6d3
    79b4:	5341465f 	movtpl	r4, #5727	; 0x165f
    79b8:	5f323354 	svcpl	0x00323354
    79bc:	2058414d 	subscs	r4, r8, sp, asr #2
    79c0:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    79c4:	49535f00 	ldmdbmi	r3, {r8, r9, sl, fp, ip, lr}^
    79c8:	5f54455a 	svcpl	0x0054455a
    79cc:	5f5f0020 	svcpl	0x005f0020
    79d0:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    79d4:	5059545f 	subspl	r5, r9, pc, asr r4
    79d8:	205f5f45 	subscs	r5, pc, r5, asr #30
    79dc:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    79e0:	63206465 			; <UNDEFINED> instruction: 0x63206465
    79e4:	00726168 	rsbseq	r6, r2, r8, ror #2
    79e8:	5f43505f 	svcpl	0x0043505f
    79ec:	53494456 	movtpl	r4, #37974	; 0x9456
    79f0:	454c4241 	strbmi	r4, [ip, #-577]	; 0xfffffdbf
    79f4:	45003820 	strmi	r3, [r0, #-2080]	; 0xfffff7e0
    79f8:	47494246 	strbmi	r4, [r9, -r6, asr #4]
    79fc:	00373220 	eorseq	r3, r7, r0, lsr #4
    7a00:	4f525045 	svcmi	0x00525045
    7a04:	4f4e4f54 	svcmi	0x004e4f54
    7a08:	50505553 	subspl	r5, r0, r3, asr r5
    7a0c:	2054524f 	subscs	r5, r4, pc, asr #4
    7a10:	00333231 	eorseq	r3, r3, r1, lsr r2
    7a14:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    7a18:	52415f4d 	subpl	r5, r1, #308	; 0x134
    7a1c:	375f4843 	ldrbcc	r4, [pc, -r3, asr #16]
    7a20:	205f5f41 	subscs	r5, pc, r1, asr #30
    7a24:	5f5f0031 	svcpl	0x005f0031
    7a28:	64646968 	strbtvs	r6, [r4], #-2408	; 0xfffff698
    7a2c:	5f206e65 	svcpl	0x00206e65
    7a30:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    7a34:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    7a38:	5f5f6574 	svcpl	0x005f6574
    7a3c:	5f5f2828 	svcpl	0x005f2828
    7a40:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
    7a44:	696c6962 	stmdbvs	ip!, {r1, r5, r6, r8, fp, sp, lr}^
    7a48:	5f5f7974 	svcpl	0x005f7974
    7a4c:	69682228 	stmdbvs	r8!, {r3, r5, r9, sp}^
    7a50:	6e656464 	cdpvs	4, 6, cr6, cr5, cr4, {3}
    7a54:	29292922 	stmdbcs	r9!, {r1, r5, r8, fp, sp}
    7a58:	79735f00 	ldmdbvc	r3!, {r8, r9, sl, fp, ip, lr}^
    7a5c:	72655f73 	rsbvc	r5, r5, #460	; 0x1cc
    7a60:	73696c72 	cmnvc	r9, #29184	; 0x7200
    7a64:	535f0074 	cmppl	pc, #116	; 0x74
    7a68:	45444454 	strbmi	r4, [r4, #-1108]	; 0xfffffbac
    7a6c:	5f485f46 	svcpl	0x00485f46
    7a70:	5f580020 	svcpl	0x00580020
    7a74:	31204b4f 			; <UNDEFINED> instruction: 0x31204b4f
    7a78:	735f5f00 	cmpvc	pc, #0, 30
    7a7c:	656c6966 	strbvs	r6, [ip, #-2406]!	; 0xfffff69a
    7a80:	70286f6e 	eorvc	r6, r8, lr, ror #30
    7a84:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    7a88:	3e2d2970 			; <UNDEFINED> instruction: 0x3e2d2970
    7a8c:	6c69665f 	stclvs	6, cr6, [r9], #-380	; 0xfffffe84
    7a90:	55002965 	strpl	r2, [r0, #-2405]	; 0xfffff69b
    7a94:	5f544e49 	svcpl	0x00544e49
    7a98:	5341454c 	movtpl	r4, #5452	; 0x154c
    7a9c:	5f323354 	svcpl	0x00323354
    7aa0:	0058414d 	subseq	r4, r8, sp, asr #2
    7aa4:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    7aa8:	505f4355 	subspl	r4, pc, r5, asr r3	; <UNPREDICTABLE>
    7aac:	45524552 	ldrbmi	r4, [r2, #-1362]	; 0xfffffaae
    7ab0:	285f5f51 	ldmdacs	pc, {r0, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    7ab4:	6d2c616d 	stfvss	f6, [ip, #-436]!	; 0xfffffe4c
    7ab8:	5f202969 	svcpl	0x00202969
    7abc:	554e475f 	strbpl	r4, [lr, #-1887]	; 0xfffff8a1
    7ac0:	52505f43 	subspl	r5, r0, #268	; 0x10c
    7ac4:	51455245 	cmppl	r5, r5, asr #4
    7ac8:	2c616d28 	stclcs	13, cr6, [r1], #-160	; 0xffffff60
    7acc:	29696d20 	stmdbcs	r9!, {r5, r8, sl, fp, sp, lr}^
    7ad0:	43535f00 	cmpmi	r3, #0, 30
    7ad4:	504f585f 	subpl	r5, pc, pc, asr r8	; <UNPREDICTABLE>
    7ad8:	555f4e45 	ldrbpl	r4, [pc, #-3653]	; 6c9b <__bss_end__+0x34ab>
    7adc:	2058494e 	subscs	r4, r8, lr, asr #18
    7ae0:	00353031 	eorseq	r3, r5, r1, lsr r0
    7ae4:	5359535f 	cmppl	r9, #2080374785	; 0x7c000001
    7ae8:	54505f5f 	ldrbpl	r5, [r0], #-3935	; 0xfffff0a1
    7aec:	41455248 	cmpmi	r5, r8, asr #4
    7af0:	50595444 	subspl	r5, r9, r4, asr #8
    7af4:	485f5345 	ldmdami	pc, {r0, r2, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    7af8:	5500205f 	strpl	r2, [r0, #-95]	; 0xffffffa1
    7afc:	5f545241 	svcpl	0x00545241
    7b00:	45444f4d 	strbmi	r4, [r4, #-3917]	; 0xfffff0b3
    7b04:	5f52534d 	svcpl	0x0052534d
    7b08:	30204952 	eorcc	r4, r0, r2, asr r9
    7b0c:	30303078 	eorscc	r3, r0, r8, ror r0
    7b10:	34303030 	ldrtcc	r3, [r0], #-48	; 0xffffffd0
    7b14:	4e450030 	mcrmi	0, 2, r0, cr5, cr0, {1}
    7b18:	4e494c4f 	cdpmi	12, 4, cr4, cr9, cr15, {2}
    7b1c:	3736204b 	ldrcc	r2, [r6, -fp, asr #32]!
    7b20:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    7b24:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    7b28:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    7b2c:	5058455f 	subspl	r4, r8, pc, asr r5
    7b30:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    7b34:	3230312d 	eorscc	r3, r0, #1073741835	; 0x4000000b
    7b38:	52002931 	andpl	r2, r0, #802816	; 0xc4000
    7b3c:	52455345 	subpl	r5, r5, #335544321	; 0x14000001
    7b40:	31444556 	cmpcc	r4, r6, asr r5
    7b44:	53455200 	movtpl	r5, #20992	; 0x5200
    7b48:	45565245 	ldrbmi	r5, [r6, #-581]	; 0xfffffdbb
    7b4c:	5f003244 	svcpl	0x00003244
    7b50:	545f4353 	ldrbpl	r4, [pc], #-851	; 7b58 <__bss_end__+0x4368>
    7b54:	45434152 	strbmi	r4, [r3, #-338]	; 0xfffffeae
    7b58:	4d414e5f 	stclmi	14, cr4, [r1, #-380]	; 0xfffffe84
    7b5c:	414d5f45 	cmpmi	sp, r5, asr #30
    7b60:	38382058 	ldmdacc	r8!, {r3, r4, r6, sp}
    7b64:	6c5f5f00 	mrrcvs	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    7b68:	5f6b636f 	svcpl	0x006b636f
    7b6c:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
    7b70:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    7b74:	2820296b 	stmdacs	r0!, {r0, r1, r3, r5, r6, r8, fp, sp}
    7b78:	696f7628 	stmdbvs	pc!, {r3, r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    7b7c:	30202964 	eorcc	r2, r0, r4, ror #18
    7b80:	4e5f0029 	cdpmi	0, 5, cr0, cr15, cr9, {1}
    7b84:	616c6c75 	smcvs	50885	; 0xc6c5
    7b88:	20656c62 	rsbcs	r6, r5, r2, ror #24
    7b8c:	52415500 	subpl	r5, r1, #0, 10
    7b90:	4f4d5f54 	svcmi	0x004d5f54
    7b94:	434d4544 	movtmi	r4, #54596	; 0xd544
    7b98:	54525f52 	ldrbpl	r5, [r2], #-3922	; 0xfffff0ae
    7b9c:	78302053 	ldmdavc	r0!, {r0, r1, r4, r6, sp}
    7ba0:	30303030 	eorscc	r3, r0, r0, lsr r0
    7ba4:	32303030 	eorscc	r3, r0, #48	; 0x30
    7ba8:	415f5f00 	cmpmi	pc, r0, lsl #30
    7bac:	4e5f4d52 	mrcmi	13, 2, r4, cr15, cr2, {2}
    7bb0:	5f4e4f45 	svcpl	0x004e4f45
    7bb4:	4e5f005f 	mrcmi	0, 2, r0, cr15, cr15, {2}
    7bb8:	5248544f 	subpl	r5, r8, #1325400064	; 0x4f000000
    7bbc:	0020574f 	eoreq	r5, r0, pc, asr #14
    7bc0:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    7bc4:	5055535f 	subspl	r5, r5, pc, asr r3
    7bc8:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    7bcc:	5f5f5f53 	svcpl	0x005f5f53
    7bd0:	494c4e49 	stmdbmi	ip, {r0, r3, r6, r9, sl, fp, lr}^
    7bd4:	5f5f454e 	svcpl	0x005f454e
    7bd8:	5f003120 	svcpl	0x00003120
    7bdc:	6f647473 	svcvs	0x00647473
    7be0:	725f7475 	subsvc	r7, pc, #1962934272	; 0x75000000
    7be4:	20297828 	eorcs	r7, r9, r8, lsr #16
    7be8:	29782828 	ldmdbcs	r8!, {r3, r5, fp, sp}^
    7bec:	735f3e2d 	cmpvc	pc, #720	; 0x2d0
    7bf0:	756f6474 	strbvc	r6, [pc, #-1140]!	; 7784 <__bss_end__+0x3f94>
    7bf4:	5f002974 	svcpl	0x00002974
    7bf8:	485f4353 	ldmdami	pc, {r0, r1, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    7bfc:	5f54534f 	svcpl	0x0054534f
    7c00:	454d414e 	strbmi	r4, [sp, #-334]	; 0xfffffeb2
    7c04:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7c08:	00353620 	eorseq	r3, r5, r0, lsr #12
    7c0c:	5f43535f 	svcpl	0x0043535f
    7c10:	454d4954 	strbmi	r4, [sp, #-2388]	; 0xfffff6ac
    7c14:	5354554f 	cmppl	r4, #331350016	; 0x13c00000
    7c18:	00323820 	eorseq	r3, r2, r0, lsr #16
    7c1c:	5f43535f 	svcpl	0x0043535f
    7c20:	50544547 	subspl	r4, r4, r7, asr #10
    7c24:	5f525f57 	svcpl	0x00525f57
    7c28:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    7c2c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7c30:	00313520 	eorseq	r3, r1, r0, lsr #10
    7c34:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    7c38:	535f544e 	cmppl	pc, #1308622848	; 0x4e000000
    7c3c:	414e4749 	cmpmi	lr, r9, asr #14
    7c40:	49535f4c 	ldmdbmi	r3, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    7c44:	3220455a 	eorcc	r4, r0, #377487360	; 0x16800000
    7c48:	535f0034 	cmppl	pc, #52	; 0x34
    7c4c:	525f5359 	subspl	r5, pc, #1677721601	; 0x64000001
    7c50:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    7c54:	205f485f 	subscs	r4, pc, pc, asr r8	; <UNPREDICTABLE>
    7c58:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    7c5c:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    7c60:	494d5f58 	stmdbmi	sp, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    7c64:	58455f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    7c68:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    7c6c:	30312d28 	eorscc	r2, r1, r8, lsr #26
    7c70:	00293132 	eoreq	r3, r9, r2, lsr r1
    7c74:	4453425f 	ldrbmi	r4, [r3], #-607	; 0xfffffda1
    7c78:	5254505f 	subspl	r5, r4, #95	; 0x5f
    7c7c:	46464944 	strbmi	r4, [r6], -r4, asr #18
    7c80:	205f545f 	subscs	r5, pc, pc, asr r4	; <UNPREDICTABLE>
    7c84:	575f5f00 	ldrbpl	r5, [pc, -r0, lsl #30]
    7c88:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    7c8c:	0020545f 	eoreq	r5, r0, pc, asr r4
    7c90:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    7c94:	41425f30 	cmpmi	r2, r0, lsr pc
    7c98:	30204553 	eorcc	r4, r0, r3, asr r5
    7c9c:	30304578 	eorscc	r4, r0, r8, ror r5
    7ca0:	30303030 	eorscc	r3, r0, r0, lsr r0
    7ca4:	5f5f0030 	svcpl	0x005f0030
    7ca8:	5f4c4244 	svcpl	0x004c4244
    7cac:	5f474944 	svcpl	0x00474944
    7cb0:	3531205f 	ldrcc	r2, [r1, #-95]!	; 0xffffffa1
    7cb4:	435f5f00 	cmpmi	pc, #0, 30
    7cb8:	55535f43 	ldrbpl	r5, [r3, #-3907]	; 0xfffff0bd
    7cbc:	524f5050 	subpl	r5, pc, #80	; 0x50
    7cc0:	5f5f5354 	svcpl	0x005f5354
    7cc4:	4e55465f 	mrcmi	6, 2, r4, cr5, cr15, {2}
    7cc8:	205f5f43 	subscs	r5, pc, r3, asr #30
    7ccc:	5f5f0031 	svcpl	0x005f0031
    7cd0:	6b636f6c 	blvs	18e3a88 <_end+0x8e3a88>
    7cd4:	7163615f 	cmnvc	r3, pc, asr r1
    7cd8:	65726975 	ldrbvs	r6, [r2, #-2421]!	; 0xfffff68b
    7cdc:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
    7ce0:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
    7ce4:	6c286576 	cfstr32vs	mvfx6, [r8], #-472	; 0xfffffe28
    7ce8:	296b636f 	stmdbcs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    7cec:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    7cf0:	2964696f 	stmdbcs	r4!, {r0, r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    7cf4:	00293020 	eoreq	r3, r9, r0, lsr #32
    7cf8:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    7cfc:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 7bcc <__bss_end__+0x43dc>
    7d00:	45525f50 	ldrbmi	r5, [r2, #-3920]	; 0xfffff0b0
    7d04:	544c5553 	strbpl	r5, [ip], #-1363	; 0xfffffaad
    7d08:	70284b5f 	eorvc	r4, r8, pc, asr fp
    7d0c:	20297274 	eorcs	r7, r9, r4, ror r2
    7d10:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    7d14:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    7d18:	2d706d5f 	ldclcs	13, cr6, [r0, #-380]!	; 0xfffffe84
    7d1c:	65725f3e 	ldrbvs	r5, [r2, #-3902]!	; 0xfffff0c2
    7d20:	746c7573 	strbtvc	r7, [ip], #-1395	; 0xfffffa8d
    7d24:	00296b5f 	eoreq	r6, r9, pc, asr fp
    7d28:	414c5f5f 	cmpmi	ip, pc, asr pc
    7d2c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    7d30:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    7d34:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    7d38:	5f003233 	svcpl	0x00003233
    7d3c:	545f4350 	ldrbpl	r4, [pc], #-848	; 7d44 <__bss_end__+0x4554>
    7d40:	53454d49 	movtpl	r4, #23881	; 0x5d49
    7d44:	504d4154 	subpl	r4, sp, r4, asr r1
    7d48:	5345525f 	movtpl	r5, #21087	; 0x525f
    7d4c:	54554c4f 	ldrbpl	r4, [r5], #-3151	; 0xfffff3b1
    7d50:	204e4f49 	subcs	r4, lr, r9, asr #30
    7d54:	5f003032 	svcpl	0x00003032
    7d58:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
    7d5c:	725f6f6e 	subsvc	r6, pc, #440	; 0x1b8
    7d60:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    7d64:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    7d68:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    7d6c:	655f3e2d 	ldrbvs	r3, [pc, #-3629]	; 6f47 <__bss_end__+0x3757>
    7d70:	6f6e7272 	svcvs	0x006e7272
    7d74:	41550029 	cmpmi	r5, r9, lsr #32
    7d78:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 7c38 <__bss_end__+0x4448>
    7d7c:	48435f52 	stmdami	r3, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    7d80:	454c5241 	strbmi	r5, [ip, #-577]	; 0xfffffdbf
    7d84:	5f365f4e 	svcpl	0x00365f4e
    7d88:	20544942 	subscs	r4, r4, r2, asr #18
    7d8c:	30307830 	eorscc	r7, r0, r0, lsr r8
    7d90:	30303030 	eorscc	r3, r0, r0, lsr r0
    7d94:	5f003630 	svcpl	0x00003630
    7d98:	4345445f 	movtmi	r4, #21599	; 0x545f
    7d9c:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 7ccc <__bss_end__+0x44dc>
    7da0:	5f5f4e49 	svcpl	0x005f4e49
    7da4:	2d453120 	stfcse	f3, [r5, #-128]	; 0xffffff80
    7da8:	44333833 	ldrtmi	r3, [r3], #-2099	; 0xfffff7cd
    7dac:	5f5f0044 	svcpl	0x005f0044
    7db0:	31544e49 	cmpcc	r4, r9, asr #28
    7db4:	28435f36 	stmdacs	r3, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    7db8:	63202963 			; <UNDEFINED> instruction: 0x63202963
    7dbc:	5f5f5f00 	svcpl	0x005f5f00
    7dc0:	5f746e69 	svcpl	0x00746e69
    7dc4:	64727470 	ldrbtvs	r7, [r2], #-1136	; 0xfffffb90
    7dc8:	5f666669 	svcpl	0x00666669
    7dcc:	20685f74 	rsbcs	r5, r8, r4, ror pc
    7dd0:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    7dd4:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 7d18 <__bss_end__+0x4528>
    7dd8:	5f004e49 	svcpl	0x00004e49
    7ddc:	5f46464f 	svcpl	0x0046464f
    7de0:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    7de4:	52414c43 	subpl	r4, r1, #17152	; 0x4300
    7de8:	00204445 	eoreq	r4, r0, r5, asr #8
    7dec:	5f43535f 	svcpl	0x0043535f
    7df0:	45524854 	ldrbmi	r4, [r2, #-2132]	; 0xfffff7ac
    7df4:	535f4441 	cmppl	pc, #1090519040	; 0x41000000
    7df8:	5f454641 	svcpl	0x00454641
    7dfc:	434e5546 	movtmi	r5, #58694	; 0xe546
    7e00:	4e4f4954 			; <UNDEFINED> instruction: 0x4e4f4954
    7e04:	39342053 	ldmdbcc	r4!, {r0, r1, r4, r6, sp}
    7e08:	48435700 	stmdami	r3, {r8, r9, sl, ip, lr}^
    7e0c:	4d5f5241 	lfmmi	f5, 2, [pc, #-260]	; 7d10 <__bss_end__+0x4520>
    7e10:	5f204e49 	svcpl	0x00204e49
    7e14:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    7e18:	4d5f5241 	lfmmi	f5, 2, [pc, #-260]	; 7d1c <__bss_end__+0x452c>
    7e1c:	5f5f4e49 	svcpl	0x005f4e49
    7e20:	615f5f00 	cmpvs	pc, r0, lsl #30
    7e24:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    7e28:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    7e2c:	726f665f 	rsbvc	r6, pc, #99614720	; 0x5f00000
    7e30:	5f74616d 	svcpl	0x0074616d
    7e34:	66727473 			; <UNDEFINED> instruction: 0x66727473
    7e38:	5f6e6f6d 	svcpl	0x006e6f6d
    7e3c:	2c61285f 	stclcs	8, cr2, [r1], #-380	; 0xfffffe84
    7e40:	00202962 	eoreq	r2, r0, r2, ror #18
    7e44:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    7e48:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
    7e4c:	4f48535f 	svcmi	0x0048535f
    7e50:	5f5f5452 	svcpl	0x005f5452
    7e54:	5f003220 	svcpl	0x00003220
    7e58:	4c5f4156 	ldfmie	f4, [pc], {86}	; 0x56
    7e5c:	5f545349 	svcpl	0x00545349
    7e60:	6f630020 	svcvs	0x00630020
    7e64:	4d726f6c 	ldclmi	15, cr6, [r2, #-432]!	; 0xfffffe50
    7e68:	61446773 	hvcvs	18035	; 0x4673
    7e6c:	7265676e 	rsbvc	r6, r5, #28835840	; 0x1b80000
    7e70:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    7e74:	52545054 	subspl	r5, r4, #84	; 0x54
    7e78:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7e7c:	555f5f20 	ldrbpl	r5, [pc, #-3872]	; 6f64 <__bss_end__+0x3774>
    7e80:	50544e49 	subspl	r4, r4, r9, asr #28
    7e84:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 7d3c <__bss_end__+0x454c>
    7e88:	5f5f5841 	svcpl	0x005f5841
    7e8c:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    7e90:	414d5f38 	cmpmi	sp, r8, lsr pc
    7e94:	5f5f2058 	svcpl	0x005f2058
    7e98:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    7e9c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    7ea0:	5f005f5f 	svcpl	0x00005f5f
    7ea4:	7661685f 			; <UNDEFINED> instruction: 0x7661685f
    7ea8:	6f6c5f65 	svcvs	0x006c5f65
    7eac:	3233676e 	eorscc	r6, r3, #28835840	; 0x1b80000
    7eb0:	5f003120 	svcpl	0x00003120
    7eb4:	535f4353 	cmppl	pc, #1275068417	; 0x4c000001
    7eb8:	41524f50 	cmpmi	r2, r0, asr pc
    7ebc:	5f434944 	svcpl	0x00434944
    7ec0:	56524553 			; <UNDEFINED> instruction: 0x56524553
    7ec4:	37205245 	strcc	r5, [r0, -r5, asr #4]!
    7ec8:	5f5f0037 	svcpl	0x005f0037
    7ecc:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    7ed0:	41454c5f 	cmpmi	r5, pc, asr ip
    7ed4:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    7ed8:	5059545f 	subspl	r5, r9, pc, asr r4
    7edc:	205f5f45 	subscs	r5, pc, r5, asr #30
    7ee0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    7ee4:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    7ee8:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    7eec:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    7ef0:	5f5f0074 	svcpl	0x005f0074
    7ef4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    7ef8:	414d5f38 	cmpmi	sp, r8, lsr pc
    7efc:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    7f00:	66667830 			; <UNDEFINED> instruction: 0x66667830
    7f04:	535f5f00 	cmppl	pc, #0, 30
    7f08:	2046424d 	subcs	r4, r6, sp, asr #4
    7f0c:	30307830 	eorscc	r7, r0, r0, lsr r8
    7f10:	5f003038 	svcpl	0x00003038
    7f14:	4e454552 	mcrmi	5, 2, r4, cr5, cr2, {2}
    7f18:	424d5f54 	submi	r5, sp, #84, 30	; 0x150
    7f1c:	574f5452 	smlsldpl	r5, pc, r2, r4	; <UNPREDICTABLE>
    7f20:	54535f43 	ldrbpl	r5, [r3], #-3907	; 0xfffff0bd
    7f24:	28455441 	stmdacs	r5, {r0, r6, sl, ip, lr}^
    7f28:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    7f2c:	70282820 	eorvc	r2, r8, r0, lsr #16
    7f30:	2d297274 	sfmcs	f7, 4, [r9, #-464]!	; 0xfffffe30
    7f34:	696d5f3e 	stmdbvs	sp!, {r1, r2, r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    7f38:	3e2d6373 	mcrcc	3, 1, r6, cr13, cr3, {3}
    7f3c:	72626d5f 	rsbvc	r6, r2, #6080	; 0x17c0
    7f40:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
    7f44:	6174735f 	cmnvs	r4, pc, asr r3
    7f48:	00296574 	eoreq	r6, r9, r4, ror r5
    7f4c:	65675f5f 	strbvs	r5, [r7, #-3935]!	; 0xfffff0a1
    7f50:	6972656e 	ldmdbvs	r2!, {r1, r2, r3, r5, r6, r8, sl, sp, lr}^
    7f54:	78652863 	stmdavc	r5!, {r0, r1, r5, r6, fp, sp}^
    7f58:	742c7270 	strtvc	r7, [ip], #-624	; 0xfffffd90
    7f5c:	7365792c 	cmnvc	r5, #44, 18	; 0xb0000
    7f60:	296f6e2c 	stmdbcs	pc!, {r2, r3, r5, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
    7f64:	625f5f20 	subsvs	r5, pc, #32, 30	; 0x80
    7f68:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
    7f6c:	635f6e69 	cmpvs	pc, #1680	; 0x690
    7f70:	736f6f68 	cmnvc	pc, #104, 30	; 0x1a0
    7f74:	78655f65 	stmdavc	r5!, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    7f78:	20287270 	eorcs	r7, r8, r0, ror r2
    7f7c:	75625f5f 	strbvc	r5, [r2, #-3935]!	; 0xfffff0a1
    7f80:	69746c69 	ldmdbvs	r4!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    7f84:	79745f6e 	ldmdbvc	r4!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    7f88:	5f736570 	svcpl	0x00736570
    7f8c:	706d6f63 	rsbvc	r6, sp, r3, ror #30
    7f90:	62697461 	rsbvs	r7, r9, #1627389952	; 0x61000000
    7f94:	705f656c 	subsvc	r6, pc, ip, ror #10
    7f98:	745f5f28 	ldrbvc	r5, [pc], #-3880	; 7fa0 <__bss_end__+0x47b0>
    7f9c:	6f657079 	svcvs	0x00657079
    7fa0:	78652866 	stmdavc	r5!, {r1, r2, r5, r6, fp, sp}^
    7fa4:	2c297270 	sfmcs	f7, 4, [r9], #-448	; 0xfffffe40
    7fa8:	2c297420 	cfstrscs	mvf7, [r9], #-128	; 0xffffff80
    7fac:	73657920 	cmnvc	r5, #32, 18	; 0x80000
    7fb0:	6f6e202c 	svcvs	0x006e202c
    7fb4:	535f0029 	cmppl	pc, #41	; 0x29
    7fb8:	48535f43 	ldmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    7fbc:	204c4c45 	subcs	r4, ip, r5, asr #24
    7fc0:	45003437 	strmi	r3, [r0, #-1079]	; 0xfffffbc9
    7fc4:	52444441 	subpl	r4, r4, #1090519040	; 0x41000000
    7fc8:	53554e49 	cmppl	r5, #1168	; 0x490
    7fcc:	31312045 	teqcc	r1, r5, asr #32
    7fd0:	675f0032 	smmlarvs	pc, r2, r0, r0	; <UNPREDICTABLE>
    7fd4:	616d6d61 	cmnvs	sp, r1, ror #26
    7fd8:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
    7fdc:	6d61676e 	stclvs	7, cr6, [r1, #-440]!	; 0xfffffe48
    7fe0:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 7fe8 <__bss_end__+0x47f8>
    7fe4:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 7ee4 <__bss_end__+0x46f4>
    7fe8:	5f5f4e49 	svcpl	0x005f4e49
    7fec:	64282820 	strtvs	r2, [r8], #-2080	; 0xfffff7e0
    7ff0:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
    7ff4:	2e322965 	vsubcs.f16	s4, s4, s11	; <UNPREDICTABLE>
    7ff8:	30353232 	eorscc	r3, r5, r2, lsr r2
    7ffc:	35383337 	ldrcc	r3, [r8, #-823]!	; 0xfffffcc9
    8000:	37303538 			; <UNDEFINED> instruction: 0x37303538
    8004:	34313032 	ldrtcc	r3, [r1], #-50	; 0xffffffce
    8008:	30332d65 	eorscc	r2, r3, r5, ror #26
    800c:	00294c38 	eoreq	r4, r9, r8, lsr ip
    8010:	5f43535f 	svcpl	0x0043535f
    8014:	434e5953 	movtmi	r5, #59731	; 0xe953
    8018:	4e4f5248 	cdpmi	2, 4, cr5, cr15, cr8, {2}
    801c:	44455a49 	strbmi	r5, [r5], #-2633	; 0xfffff5b7
    8020:	204f495f 	subcs	r4, pc, pc, asr r9	; <UNPREDICTABLE>
    8024:	5f003233 	svcpl	0x00003233
    8028:	4345445f 	movtmi	r4, #21599	; 0x545f
    802c:	5f383231 	svcpl	0x00383231
    8030:	5f4e494d 	svcpl	0x004e494d
    8034:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
    8038:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    803c:	004c4433 	subeq	r4, ip, r3, lsr r4
    8040:	5f4c564c 	svcpl	0x004c564c
    8044:	4f464e49 	svcmi	0x00464e49
    8048:	55003120 	strpl	r3, [r0, #-288]	; 0xfffffee0
    804c:	5f545241 	svcpl	0x00545241
    8050:	574f4c46 	strbpl	r4, [pc, -r6, asr #24]
    8054:	5f4c4544 	svcpl	0x004c4544
    8058:	4b53414d 	blmi	14d8594 <_end+0x4d8594>
    805c:	52415520 	subpl	r5, r1, #32, 10	; 0x8000000
    8060:	58525f54 	ldmdapl	r2, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    8064:	4d5f4d57 	ldclmi	13, cr4, [pc, #-348]	; 7f10 <__bss_end__+0x4720>
    8068:	004b5341 	subeq	r5, fp, r1, asr #6
    806c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    8070:	5341465f 	movtpl	r4, #5727	; 0x165f
    8074:	5f363154 	svcpl	0x00363154
    8078:	0058414d 	subseq	r4, r8, sp, asr #2
    807c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    8080:	5f343654 	svcpl	0x00343654
    8084:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
    8088:	5f4c414d 	svcpl	0x004c414d
    808c:	5f474944 	svcpl	0x00474944
    8090:	3731205f 			; <UNDEFINED> instruction: 0x3731205f
    8094:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 719c <__bss_end__+0x39ac>
    8098:	50544e49 	subspl	r4, r4, r9, asr #28
    809c:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 7f54 <__bss_end__+0x4764>
    80a0:	5f5f5841 	svcpl	0x005f5841
    80a4:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    80a8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    80ac:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    80b0:	4f4e4500 	svcmi	0x004e4500
    80b4:	204b434c 	subcs	r4, fp, ip, asr #6
    80b8:	5f003634 	svcpl	0x00003634
    80bc:	535f4353 	cmppl	pc, #1275068417	; 0x4c000001
    80c0:	45524148 	ldrbmi	r4, [r2, #-328]	; 0xfffffeb8
    80c4:	454d5f44 	strbmi	r5, [sp, #-3908]	; 0xfffff0bc
    80c8:	59524f4d 	ldmdbpl	r2, {r0, r2, r3, r6, r8, r9, sl, fp, lr}^
    80cc:	4a424f5f 	bmi	109be50 <_end+0x9be50>
    80d0:	53544345 	cmppl	r4, #335544321	; 0x14000001
    80d4:	00313320 	eorseq	r3, r1, r0, lsr #6
    80d8:	46535f5f 	usaxmi	r5, r3, pc	; <UNPREDICTABLE>
    80dc:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    80e0:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    80e4:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    80e8:	30205f5f 	eorcc	r5, r0, pc, asr pc
    80ec:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    80f0:	00524837 	subseq	r4, r2, r7, lsr r8
    80f4:	54415f5f 	strbpl	r5, [r1], #-3935	; 0xfffff0a1
    80f8:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    80fc:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    8100:	454d5553 	strbmi	r5, [sp, #-1363]	; 0xfffffaad
    8104:	5f003120 	svcpl	0x00003120
    8108:	756e755f 	strbvc	r7, [lr, #-1375]!	; 0xfffffaa1
    810c:	20646573 	rsbcs	r6, r4, r3, ror r5
    8110:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    8114:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    8118:	5f657475 	svcpl	0x00657475
    811c:	5f28285f 	svcpl	0x0028285f
    8120:	756e755f 	strbvc	r7, [lr, #-1375]!	; 0xfffffaa1
    8124:	5f646573 	svcpl	0x00646573
    8128:	0029295f 	eoreq	r2, r9, pc, asr r9
    812c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    8130:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    8134:	205f5f4e 	subscs	r5, pc, lr, asr #30
    8138:	37312e31 			; <UNDEFINED> instruction: 0x37312e31
    813c:	34393435 	ldrtcc	r3, [r9], #-1077	; 0xfffffbcb
    8140:	38303533 	ldmdacc	r0!, {r0, r1, r4, r5, r8, sl, ip, sp}
    8144:	38323232 	ldmdacc	r2!, {r1, r4, r5, r9, ip, sp}
    8148:	2d653537 	cfstr64cs	mvdx3, [r5, #-220]!	; 0xffffff24
    814c:	00463833 	subeq	r3, r6, r3, lsr r8
    8150:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    8154:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    8158:	31545341 	cmpcc	r4, r1, asr #6
    815c:	59545f36 	ldmdbpl	r4, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    8160:	5f5f4550 	svcpl	0x005f4550
    8164:	6f687320 	svcvs	0x00687320
    8168:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
    816c:	4500746e 	strmi	r7, [r0, #-1134]	; 0xfffffb92
    8170:	35204f49 	strcc	r4, [r0, #-3913]!	; 0xfffff0b7
    8174:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 727c <__bss_end__+0x3a8c>
    8178:	5f544e49 	svcpl	0x00544e49
    817c:	5341454c 	movtpl	r4, #5452	; 0x154c
    8180:	5f343654 	svcpl	0x00343654
    8184:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    8188:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    818c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    8190:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    8194:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    8198:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    819c:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    81a0:	5f5f0074 	svcpl	0x005f0074
    81a4:	6b636f6c 	blvs	18e3f5c <_end+0x8e3f5c>
    81a8:	78655f73 	stmdavc	r5!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    81ac:	73756c63 	cmnvc	r5, #25344	; 0x6300
    81b0:	28657669 	stmdacs	r5!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
    81b4:	292e2e2e 	stmdbcs	lr!, {r1, r2, r3, r5, r9, sl, fp, sp}
    81b8:	6c5f5f20 	mrrcvs	15, 2, r5, pc, cr0	; <UNPREDICTABLE>
    81bc:	5f6b636f 	svcpl	0x006b636f
    81c0:	6f6e6e61 	svcvs	0x006e6e61
    81c4:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    81c8:	63786528 	cmnvs	r8, #40, 10	; 0xa000000
    81cc:	6973756c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
    81d0:	6c5f6576 	cfldr64vs	mvdx6, [pc], {118}	; 0x76
    81d4:	5f6b636f 	svcpl	0x006b636f
    81d8:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
    81dc:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
    81e0:	565f5f28 	ldrbpl	r5, [pc], -r8, lsr #30
    81e4:	52415f41 	subpl	r5, r1, #260	; 0x104
    81e8:	5f5f5347 	svcpl	0x005f5347
    81ec:	5f002929 	svcpl	0x00002929
    81f0:	535f4353 	cmppl	pc, #1275068417	; 0x4c000001
    81f4:	4e5f4d45 	cdpmi	13, 5, cr4, cr15, cr5, {2}
    81f8:	534d4553 	movtpl	r4, #54611	; 0xd553
    81fc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8200:	00363120 	eorseq	r3, r6, r0, lsr #2
    8204:	33544e49 	cmpcc	r4, #1168	; 0x490
    8208:	414d5f32 	cmpmi	sp, r2, lsr pc
    820c:	5f5f2058 	svcpl	0x005f2058
    8210:	33544e49 	cmpcc	r4, #1168	; 0x490
    8214:	414d5f32 	cmpmi	sp, r2, lsr pc
    8218:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    821c:	53555f5f 	cmppl	r5, #380	; 0x17c
    8220:	43415246 	movtmi	r5, #4678	; 0x1246
    8224:	42465f54 	submi	r5, r6, #84, 30	; 0x150
    8228:	5f5f5449 	svcpl	0x005f5449
    822c:	45003820 	strmi	r3, [r0, #-2080]	; 0xfffff7e0
    8230:	52504e49 	subspl	r4, r0, #1168	; 0x490
    8234:	4552474f 	ldrbmi	r4, [r2, #-1871]	; 0xfffff8b1
    8238:	31205353 			; <UNDEFINED> instruction: 0x31205353
    823c:	5f003931 	svcpl	0x00003931
    8240:	535f4350 	cmppl	pc, #80, 6	; 0x40000001
    8244:	5f434e59 	svcpl	0x00434e59
    8248:	31204f49 			; <UNDEFINED> instruction: 0x31204f49
    824c:	505f0031 	subspl	r0, pc, r1, lsr r0	; <UNPREDICTABLE>
    8250:	45525f43 	ldrbmi	r5, [r2, #-3907]	; 0xfffff0bd
    8254:	4e495f43 	cdpmi	15, 4, cr5, cr9, cr3, {2}
    8258:	585f5243 	ldmdapl	pc, {r0, r1, r6, r9, ip, lr}^	; <UNPREDICTABLE>
    825c:	5f524546 	svcpl	0x00524546
    8260:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    8264:	00363120 	eorseq	r3, r6, r0, lsr #2
    8268:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    826c:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    8270:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    8274:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    8278:	545f5241 	ldrbpl	r5, [pc], #-577	; 8280 <__bss_end__+0x4a90>
    827c:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    8280:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    8284:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
    8288:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 8290 <__bss_end__+0x4aa0>
    828c:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
    8290:	645f745f 	ldrbvs	r7, [pc], #-1119	; 8298 <__bss_end__+0x4aa8>
    8294:	6e696665 	cdpvs	6, 6, cr6, cr9, cr5, {3}
    8298:	00206465 	eoreq	r6, r0, r5, ror #8
    829c:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    82a0:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
    82a4:	5254505f 	subspl	r5, r4, #95	; 0x5f
    82a8:	46464944 	strbmi	r4, [r6], -r4, asr #18
    82ac:	5f5f545f 	svcpl	0x005f545f
    82b0:	45003420 	strmi	r3, [r0, #-1056]	; 0xfffffbe0
    82b4:	4e494c4d 	cdpmi	12, 4, cr4, cr9, cr13, {2}
    82b8:	3133204b 	teqcc	r3, fp, asr #32
    82bc:	52415500 	subpl	r5, r1, #0, 10
    82c0:	52435f54 	subpl	r5, r3, #84, 30	; 0x150
    82c4:	5f4e455f 	svcpl	0x004e455f
    82c8:	5f534944 	svcpl	0x00534944
    82cc:	4b53414d 	blmi	14d8808 <_end+0x4d8808>
    82d0:	30783020 	rsbscc	r3, r8, r0, lsr #32
    82d4:	30303030 	eorscc	r3, r0, r0, lsr r0
    82d8:	00433330 	subeq	r3, r3, r0, lsr r3
    82dc:	736e755f 	cmnvc	lr, #398458880	; 0x17c00000
    82e0:	69636570 	stmdbvs	r3!, {r4, r5, r6, r8, sl, sp, lr}^
    82e4:	64656966 	strbtvs	r6, [r5], #-2406	; 0xfffff69a
    82e8:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    82ec:	5f656c61 	svcpl	0x00656c61
    82f0:	6f666e69 	svcvs	0x00666e69
    82f4:	735f5f00 	cmpvc	pc, #0, 30
    82f8:	61665f66 	cmnvs	r6, r6, ror #30
    82fc:	735f656b 	cmpvc	pc, #448790528	; 0x1ac00000
    8300:	72656474 	rsbvc	r6, r5, #116, 8	; 0x74000000
    8304:	5f5f0072 	svcpl	0x005f0072
    8308:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
    830c:	745f3233 	ldrbvc	r3, [pc], #-563	; 8314 <__bss_end__+0x4b24>
    8310:	6665645f 			; <UNDEFINED> instruction: 0x6665645f
    8314:	64656e69 	strbtvs	r6, [r5], #-3689	; 0xfffff197
    8318:	5f003120 	svcpl	0x00003120
    831c:	52545441 	subspl	r5, r4, #1090519040	; 0x41000000
    8320:	54554249 	ldrbpl	r4, [r5], #-585	; 0xfffffdb7
    8324:	74612845 	strbtvc	r2, [r1], #-2117	; 0xfffff7bb
    8328:	29737274 	ldmdbcs	r3!, {r2, r4, r5, r6, r9, ip, sp, lr}^
    832c:	615f5f20 	cmpvs	pc, r0, lsr #30
    8330:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    8334:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    8338:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    833c:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
    8340:	5f002973 	svcpl	0x00002973
    8344:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    8348:	545f3233 	ldrbpl	r3, [pc], #-563	; 8350 <__bss_end__+0x4b60>
    834c:	4345445f 	movtmi	r4, #21599	; 0x545f
    8350:	4552414c 	ldrbmi	r4, [r2, #-332]	; 0xfffffeb4
    8354:	55002044 	strpl	r2, [r0, #-68]	; 0xffffffbc
    8358:	5f545241 	svcpl	0x00545241
    835c:	525f5253 	subspl	r5, pc, #805306373	; 0x30000005
    8360:	504d4558 	subpl	r4, sp, r8, asr r5
    8364:	30205954 	eorcc	r5, r0, r4, asr r9
    8368:	30303078 	eorscc	r3, r0, r8, ror r0
    836c:	30303030 	eorscc	r3, r0, r0, lsr r0
    8370:	665f0032 			; <UNDEFINED> instruction: 0x665f0032
    8374:	6b636f6c 	blvs	18e412c <_end+0x8e412c>
    8378:	656c6966 	strbvs	r6, [ip, #-2406]!	; 0xfffff69a
    837c:	29706628 	ldmdbcs	r0!, {r3, r5, r9, sl, sp, lr}^
    8380:	28282820 	stmdacs	r8!, {r5, fp, sp}
    8384:	2d297066 	stccs	0, cr7, [r9, #-408]!	; 0xfffffe68
    8388:	6c665f3e 	stclvs	15, cr5, [r6], #-248	; 0xffffff08
    838c:	20736761 	rsbscs	r6, r3, r1, ror #14
    8390:	5f5f2026 	svcpl	0x005f2026
    8394:	52545353 	subspl	r5, r4, #1275068417	; 0x4c000001
    8398:	203f2029 	eorscs	r2, pc, r9, lsr #32
    839c:	203a2030 	eorscs	r2, sl, r0, lsr r0
    83a0:	6f6c5f5f 	svcvs	0x006c5f5f
    83a4:	615f6b63 	cmpvs	pc, r3, ror #22
    83a8:	69757163 	ldmdbvs	r5!, {r0, r1, r5, r6, r8, ip, sp, lr}^
    83ac:	725f6572 	subsvc	r6, pc, #478150656	; 0x1c800000
    83b0:	72756365 	rsbsvc	r6, r5, #-1811939327	; 0x94000001
    83b4:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    83b8:	70662828 	rsbvc	r2, r6, r8, lsr #16
    83bc:	5f3e2d29 	svcpl	0x003e2d29
    83c0:	6b636f6c 	blvs	18e4178 <_end+0x8e4178>
    83c4:	5f002929 	svcpl	0x00002929
    83c8:	4c5f4156 	ldfmie	f4, [pc], {86}	; 0x56
    83cc:	5f545349 	svcpl	0x00545349
    83d0:	20485f54 	subcs	r5, r8, r4, asr pc
    83d4:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    83d8:	5f343654 	svcpl	0x00343654
    83dc:	0058414d 	subseq	r4, r8, sp, asr #2
    83e0:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    83e4:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    83e8:	5341485f 	movtpl	r4, #6239	; 0x185f
    83ec:	4955515f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, ip, lr}^
    83f0:	4e5f5445 	cdpmi	4, 5, cr5, cr15, cr5, {2}
    83f4:	5f5f4e41 	svcpl	0x005f4e41
    83f8:	5f003120 	svcpl	0x00003120
    83fc:	325f4353 	subscc	r4, pc, #1275068417	; 0x4c000001
    8400:	524f465f 	subpl	r4, pc, #99614720	; 0x5f00000
    8404:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    8408:	31312056 	teqcc	r1, r6, asr r0
    840c:	5f5f0030 	svcpl	0x005f0030
    8410:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    8414:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    8418:	205f5f4e 	subscs	r5, pc, lr, asr #30
    841c:	58302d28 	ldmdapl	r0!, {r3, r5, r8, sl, fp, sp}
    8420:	35315031 	ldrcc	r5, [r1, #-49]!	; 0xffffffcf
    8424:	58302d4b 	ldmdapl	r0!, {r0, r1, r3, r6, r8, sl, fp, sp}
    8428:	35315031 	ldrcc	r5, [r1, #-49]!	; 0xffffffcf
    842c:	5f00294b 	svcpl	0x0000294b
    8430:	5254505f 	subspl	r5, r4, #95	; 0x5f
    8434:	46464944 	strbmi	r4, [r6], -r4, asr #18
    8438:	5059545f 	subspl	r5, r9, pc, asr r4
    843c:	205f5f45 	subscs	r5, pc, r5, asr #30
    8440:	00746e69 	rsbseq	r6, r4, r9, ror #28
    8444:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    8448:	444f4d5f 	strbmi	r4, [pc], #-3423	; 8450 <__bss_end__+0x4c60>
    844c:	52534d45 	subspl	r4, r3, #4416	; 0x1140
    8450:	4d43465f 	stclmi	6, cr4, [r3, #-380]	; 0xfffffe84
    8454:	78302053 	ldmdavc	r0!, {r0, r1, r4, r6, sp}
    8458:	30303030 	eorscc	r3, r0, r0, lsr r0
    845c:	30303130 	eorscc	r3, r0, r0, lsr r1
    8460:	735f5f00 	cmpvc	pc, #0, 30
    8464:	69646964 	stmdbvs	r4!, {r2, r5, r6, r8, fp, sp, lr}^
    8468:	0074696e 	rsbseq	r6, r4, lr, ror #18
    846c:	42445f5f 	submi	r5, r4, #380	; 0x17c
    8470:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    8474:	58455f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    8478:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    847c:	30312d28 	eorscc	r2, r1, r8, lsr #26
    8480:	00293132 	eoreq	r3, r9, r2, lsr r1
    8484:	78655f5f 	stmdavc	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    8488:	74726f70 	ldrbtvc	r6, [r2], #-3952	; 0xfffff090
    848c:	5f206465 	svcpl	0x00206465
    8490:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    8494:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    8498:	5f5f6574 	svcpl	0x005f6574
    849c:	5f5f2828 	svcpl	0x005f2828
    84a0:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
    84a4:	696c6962 	stmdbvs	ip!, {r1, r5, r6, r8, fp, sp, lr}^
    84a8:	5f5f7974 	svcpl	0x005f7974
    84ac:	65642228 	strbvs	r2, [r4, #-552]!	; 0xfffffdd8
    84b0:	6c756166 	ldfvse	f6, [r5], #-408	; 0xfffffe68
    84b4:	29292274 	stmdbcs	r9!, {r2, r4, r5, r6, r9, sp}
    84b8:	4e450029 	cdpmi	0, 4, cr0, cr5, cr9, {1}
    84bc:	4552544f 	ldrbmi	r5, [r2, #-1103]	; 0xfffffbb1
    84c0:	45564f43 	ldrbmi	r4, [r6, #-3907]	; 0xfffff0bd
    84c4:	4c424152 	stfmie	f4, [r2], {82}	; 0x52
    84c8:	34312045 	ldrtcc	r2, [r1], #-69	; 0xffffffbb
    84cc:	5f5f0031 	svcpl	0x005f0031
    84d0:	5f007061 	svcpl	0x00007061
    84d4:	525f4350 	subspl	r4, pc, #80, 6	; 0x40000001
    84d8:	585f4345 	ldmdapl	pc, {r0, r2, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    84dc:	5f524546 	svcpl	0x00524546
    84e0:	47494c41 	strbmi	r4, [r9, -r1, asr #24]
    84e4:	3931204e 	ldmdbcc	r1!, {r1, r2, r3, r6, sp}
    84e8:	79735f00 	ldmdbvc	r3!, {r8, r9, sl, fp, ip, lr}^
    84ec:	656e5f73 	strbvs	r5, [lr, #-3955]!	; 0xfffff08d
    84f0:	5f007272 	svcpl	0x00007272
    84f4:	545f4353 	ldrbpl	r4, [pc], #-851	; 84fc <__bss_end__+0x4d0c>
    84f8:	45434152 	strbmi	r4, [r3, #-338]	; 0xfffffeae
    84fc:	474f4c5f 	smlsldmi	r4, pc, pc, ip	; <UNPREDICTABLE>
    8500:	00373820 	eorseq	r3, r7, r0, lsr #16
    8504:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    8508:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    850c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    8510:	414d5f38 	cmpmi	sp, r8, lsr pc
    8514:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    8518:	66667830 			; <UNDEFINED> instruction: 0x66667830
    851c:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    8520:	5f363154 	svcpl	0x00363154
    8524:	0058414d 	subseq	r4, r8, sp, asr #2
    8528:	43435f5f 	movtmi	r5, #16223	; 0x3f5f
    852c:	5055535f 	subspl	r5, r5, pc, asr r3
    8530:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
    8534:	59445f53 	stmdbpl	r4, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^
    8538:	494d414e 	stmdbmi	sp, {r1, r2, r3, r6, r8, lr}^
    853c:	52415f43 	subpl	r5, r1, #268	; 0x10c
    8540:	5f594152 	svcpl	0x00594152
    8544:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    8548:	55003120 	strpl	r3, [r0, #-288]	; 0xfffffee0
    854c:	5f545241 	svcpl	0x00545241
    8550:	4544454d 	strbmi	r4, [r4, #-1357]	; 0xfffffab3
    8554:	5f52534d 	svcpl	0x0052534d
    8558:	58535443 	ldmdapl	r3, {r0, r1, r6, sl, ip, lr}^
    855c:	30783020 	rsbscc	r3, r8, r0, lsr #32
    8560:	30303030 	eorscc	r3, r0, r0, lsr r0
    8564:	00313030 	eorseq	r3, r1, r0, lsr r0
    8568:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    856c:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 846c <__bss_end__+0x4c7c>
    8570:	315f5841 	cmpcc	pc, r1, asr #16
    8574:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    8578:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    857c:	00383033 	eorseq	r3, r8, r3, lsr r0
    8580:	43415f5f 	movtmi	r5, #8031	; 0x1f5f
    8584:	5f4d5543 	svcpl	0x004d5543
    8588:	5f58414d 	svcpl	0x0058414d
    858c:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    8590:	46464637 			; <UNDEFINED> instruction: 0x46464637
    8594:	46464646 	strbmi	r4, [r6], -r6, asr #12
    8598:	35312d50 	ldrcc	r2, [r1, #-3408]!	; 0xfffff2b0
    859c:	665f004b 	ldrbvs	r0, [pc], -fp, asr #32
    85a0:	6b636f6c 	blvs	18e4358 <_end+0x8e4358>
    85a4:	4200745f 	andmi	r7, r0, #1593835520	; 0x5f000000
    85a8:	44445541 	strbmi	r5, [r4], #-1345	; 0xfffffabf
    85ac:	5f005649 	svcpl	0x00005649
    85b0:	5f66735f 	svcpl	0x0066735f
    85b4:	656b6166 	strbvs	r6, [fp, #-358]!	; 0xfffffe9a
    85b8:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    85bc:	0074756f 	rsbseq	r7, r4, pc, ror #10
    85c0:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    85c4:	5f343654 	svcpl	0x00343654
    85c8:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    85cc:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    85d0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    85d4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    85d8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    85dc:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    85e0:	41454c5f 	cmpmi	r5, pc, asr ip
    85e4:	5f385453 	svcpl	0x00385453
    85e8:	204e494d 	subcs	r4, lr, sp, asr #18
    85ec:	4e492d28 	cdpmi	13, 4, cr2, cr9, cr8, {1}
    85f0:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    85f4:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    85f8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    85fc:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    8600:	5f5f0029 	svcpl	0x005f0029
    8604:	465f4154 			; <UNDEFINED> instruction: 0x465f4154
    8608:	5f544942 	svcpl	0x00544942
    860c:	3336205f 	teqcc	r6, #95	; 0x5f
    8610:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 8618 <__bss_end__+0x4e28>
    8614:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
    8618:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    861c:	39205f5f 	stmdbcc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    8620:	3939392e 	ldmdbcc	r9!, {r1, r2, r3, r5, r8, fp, ip, sp}
    8624:	45393939 	ldrmi	r3, [r9, #-2361]!	; 0xfffff6c7
    8628:	46443639 			; <UNDEFINED> instruction: 0x46443639
    862c:	43535f00 	cmpmi	r3, #0, 30
    8630:	504f585f 	subpl	r5, pc, pc, asr r8	; <UNPREDICTABLE>
    8634:	565f4e45 	ldrbpl	r4, [pc], -r5, asr #28
    8638:	49535245 	ldmdbmi	r3, {r0, r2, r6, r9, ip, lr}^
    863c:	31204e4f 			; <UNDEFINED> instruction: 0x31204e4f
    8640:	46003630 			; <UNDEFINED> instruction: 0x46003630
    8644:	4745524f 	strbmi	r5, [r5, -pc, asr #4]
    8648:	4e554f52 	mrcmi	15, 2, r4, cr5, cr2, {2}
    864c:	4f435f44 	svcmi	0x00435f44
    8650:	48575f4c 	ldmdami	r7, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    8654:	20455449 	subcs	r5, r5, r9, asr #8
    8658:	22373322 	eorscs	r3, r7, #-2013265920	; 0x88000000
    865c:	76635f00 	strbtvc	r5, [r3], -r0, lsl #30
    8660:	6e656c74 	mcrvs	12, 3, r6, cr5, cr4, {3}
    8664:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 866c <__bss_end__+0x4e7c>
    8668:	6f6c6c61 	svcvs	0x006c6c61
    866c:	696c5f63 	stmdbvs	ip!, {r0, r1, r5, r6, r8, r9, sl, fp, ip, lr}^
    8670:	5f20656b 	svcpl	0x0020656b
    8674:	7474615f 	ldrbtvc	r6, [r4], #-351	; 0xfffffea1
    8678:	75626972 	strbvc	r6, [r2, #-2418]!	; 0xfffff68e
    867c:	5f5f6574 	svcpl	0x005f6574
    8680:	5f5f2828 	svcpl	0x005f2828
    8684:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    8688:	5f5f636f 	svcpl	0x005f636f
    868c:	5f002929 	svcpl	0x00002929
    8690:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    8694:	445f3436 	ldrbmi	r3, [pc], #-1078	; 869c <__bss_end__+0x4eac>
    8698:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    869c:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    86a0:	205f5f4e 	subscs	r5, pc, lr, asr #30
    86a4:	34392e34 	ldrtcc	r2, [r9], #-3636	; 0xfffff1cc
    86a8:	36353630 			; <UNDEFINED> instruction: 0x36353630
    86ac:	34383534 	ldrtcc	r3, [r8], #-1332	; 0xfffffacc
    86b0:	36343231 			; <UNDEFINED> instruction: 0x36343231
    86b4:	2d653435 	cfstrdcs	mvd3, [r5, #-212]!	; 0xffffff2c
    86b8:	46343233 			; <UNDEFINED> instruction: 0x46343233
    86bc:	5f003436 	svcpl	0x00003436
    86c0:	504e535f 	subpl	r5, lr, pc, asr r3
    86c4:	78302054 	ldmdavc	r0!, {r2, r4, r6, sp}
    86c8:	30303830 	eorscc	r3, r0, r0, lsr r8
    86cc:	4f4e5f00 	svcmi	0x004e5f00
    86d0:	494c4e49 	stmdbmi	ip, {r0, r3, r6, r9, sl, fp, lr}^
    86d4:	535f454e 	cmppl	pc, #327155712	; 0x13800000
    86d8:	49544154 	ldmdbmi	r4, {r2, r4, r6, r8, lr}^
    86dc:	4e5f2043 	cdpmi	0, 5, cr2, cr15, cr3, {2}
    86e0:	4c4e494f 	mcrrmi	9, 4, r4, lr, cr15	; <UNPREDICTABLE>
    86e4:	20454e49 	subcs	r4, r5, r9, asr #28
    86e8:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
    86ec:	45006369 	strmi	r6, [r0, #-873]	; 0xfffffc97
    86f0:	44544f4e 	ldrbmi	r4, [r4], #-3918	; 0xfffff0b2
    86f4:	32205249 	eorcc	r5, r0, #-1879048188	; 0x90000004
    86f8:	5f5f0030 	svcpl	0x005f0030
    86fc:	64657375 	strbtvs	r7, [r5], #-885	; 0xfffffc8b
    8700:	615f5f20 	cmpvs	pc, r0, lsr #30
    8704:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
    8708:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
    870c:	28285f5f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    8710:	73755f5f 	cmnvc	r5, #380	; 0x17c
    8714:	5f5f6465 	svcpl	0x005f6465
    8718:	49002929 	stmdbmi	r0, {r0, r3, r5, r8, fp, sp}
    871c:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    8720:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    8724:	4f5f5f00 	svcmi	0x005f5f00
    8728:	4c4f5342 	mcrrmi	3, 4, r5, pc, cr2
    872c:	5f455445 	svcpl	0x00455445
    8730:	4854414d 	ldmdami	r4, {r0, r2, r3, r6, r8, lr}^
    8734:	4f5f5f20 	svcmi	0x005f5f20
    8738:	4c4f5342 	mcrrmi	3, 4, r5, pc, cr2
    873c:	5f455445 	svcpl	0x00455445
    8740:	4854414d 	ldmdami	r4, {r0, r2, r3, r6, r8, lr}^
    8744:	4645445f 			; <UNDEFINED> instruction: 0x4645445f
    8748:	544c5541 	strbpl	r5, [ip], #-1345	; 0xfffffabf
    874c:	544e4900 	strbpl	r4, [lr], #-2304	; 0xfffff700
    8750:	435f3631 	cmpmi	pc, #51380224	; 0x3100000
    8754:	20296328 	eorcs	r6, r9, r8, lsr #6
    8758:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    875c:	5f363154 	svcpl	0x00363154
    8760:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    8764:	545f5f00 	ldrbpl	r5, [pc], #-3840	; 876c <__bss_end__+0x4f7c>
    8768:	42495f41 	submi	r5, r9, #260	; 0x104
    876c:	5f5f5449 	svcpl	0x005f5449
    8770:	00343620 	eorseq	r3, r4, r0, lsr #12
    8774:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    8778:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    877c:	492d2820 	pushmi	{r5, fp, sp}
    8780:	5f38544e 	svcpl	0x0038544e
    8784:	2058414d 	subscs	r4, r8, sp, asr #2
    8788:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    878c:	74706f00 	ldrbtvc	r6, [r0], #-3840	; 0xfffff100
    8790:	00646e69 	rsbeq	r6, r4, r9, ror #28
    8794:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    8798:	5f323354 	svcpl	0x00323354
    879c:	5f534148 	svcpl	0x00534148
    87a0:	45495551 	strbmi	r5, [r9, #-1361]	; 0xfffffaaf
    87a4:	414e5f54 	cmpmi	lr, r4, asr pc
    87a8:	205f5f4e 	subscs	r5, pc, lr, asr #30
    87ac:	5f5f0031 	svcpl	0x005f0031
    87b0:	495f5148 	ldmdbmi	pc, {r3, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    87b4:	5f544942 	svcpl	0x00544942
    87b8:	0030205f 	eorseq	r2, r0, pc, asr r0
    87bc:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    87c0:	56455f54 			; <UNDEFINED> instruction: 0x56455f54
    87c4:	4d5f4c41 	ldclmi	12, cr4, [pc, #-260]	; 86c8 <__bss_end__+0x4ed8>
    87c8:	4f485445 	svcmi	0x00485445
    87cc:	205f5f44 	subscs	r5, pc, r4, asr #30
    87d0:	525f0030 	subspl	r0, pc, #48	; 0x30
    87d4:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    87d8:	5445475f 	strbpl	r4, [r5], #-1887	; 0xfffff8a1
    87dc:	45544144 	ldrbmi	r4, [r4, #-324]	; 0xfffffebc
    87e0:	5252455f 	subspl	r4, r2, #398458880	; 0x17c00000
    87e4:	7028505f 	eorvc	r5, r8, pc, asr r0
    87e8:	20297274 	eorcs	r7, r9, r4, ror r2
    87ec:	28282628 	stmdacs	r8!, {r3, r5, r9, sl, sp}
    87f0:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    87f4:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 8748 <__bss_end__+0x4f58>
    87f8:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    87fc:	65675f3e 	strbvs	r5, [r7, #-3902]!	; 0xfffff0c2
    8800:	74616474 	strbtvc	r6, [r1], #-1140	; 0xfffffb8c
    8804:	72655f65 	rsbvc	r5, r5, #404	; 0x194
    8808:	00292972 	eoreq	r2, r9, r2, ror r9
    880c:	4f435f5f 	svcmi	0x00435f5f
    8810:	49525950 	ldmdbmi	r2, {r4, r6, r8, fp, ip, lr}^
    8814:	28544847 	ldmdacs	r4, {r0, r1, r2, r6, fp, lr}^
    8818:	73202973 			; <UNDEFINED> instruction: 0x73202973
    881c:	63757274 	cmnvs	r5, #116, 4	; 0x40000007
    8820:	5f5f2074 	svcpl	0x005f2074
    8824:	6b636168 	blvs	18e0dcc <_end+0x8e0dcc>
    8828:	6c665f00 	stclvs	15, cr5, [r6], #-0
    882c:	32736761 	rsbscc	r6, r3, #25427968	; 0x1840000
    8830:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    8834:	5f544e45 	svcpl	0x00544e45
    8838:	70284d54 	eorvc	r4, r8, r4, asr sp
    883c:	20297274 	eorcs	r7, r9, r4, ror r2
    8840:	74702828 	ldrbtvc	r2, [r0], #-2088	; 0xfffff7d8
    8844:	3e2d2972 			; <UNDEFINED> instruction: 0x3e2d2972
    8848:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
    884c:	69746c61 	ldmdbvs	r4!, {r0, r5, r6, sl, fp, sp, lr}^
    8850:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
    8854:	00296675 	eoreq	r6, r9, r5, ror r6
    8858:	54495845 	strbpl	r5, [r9], #-2117	; 0xfffff7bb
    885c:	4941465f 	stmdbmi	r1, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    8860:	4552554c 	ldrbmi	r5, [r2, #-1356]	; 0xfffffab4
    8864:	5f003120 	svcpl	0x00003120
    8868:	4148555f 	cmpmi	r8, pc, asr r5
    886c:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    8870:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    8874:	535f0038 	cmppl	pc, #56	; 0x38
    8878:	454d5f43 	strbmi	r5, [sp, #-3907]	; 0xfffff0bd
    887c:	59524f4d 	ldmdbpl	r2, {r0, r2, r3, r6, r8, r9, sl, fp, lr}^
    8880:	4f52505f 	svcmi	0x0052505f
    8884:	54434554 	strbpl	r4, [r3], #-1364	; 0xfffffaac
    8888:	204e4f49 	subcs	r4, lr, r9, asr #30
    888c:	5f003632 	svcpl	0x00003632
    8890:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    8894:	43415246 	movtmi	r5, #4678	; 0x1246
    8898:	50455f54 	subpl	r5, r5, r4, asr pc
    889c:	4f4c4953 	svcmi	0x004c4953
    88a0:	205f5f4e 	subscs	r5, pc, lr, asr #30
    88a4:	50317830 	eorspl	r7, r1, r0, lsr r8
    88a8:	5534362d 	ldrpl	r3, [r4, #-1581]!	; 0xfffff9d3
    88ac:	00524c4c 	subseq	r4, r2, ip, asr #24
    88b0:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    88b4:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    88b8:	4255535f 	subsmi	r5, r5, #2080374785	; 0x7c000001
    88bc:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    88c0:	4d5f4c41 	ldclmi	12, cr4, [pc, #-260]	; 87c4 <__bss_end__+0x4fd4>
    88c4:	5f5f4e49 	svcpl	0x005f4e49
    88c8:	302e3020 	eorcc	r3, lr, r0, lsr #32
    88cc:	30303030 	eorscc	r3, r0, r0, lsr r0
    88d0:	30303030 	eorscc	r3, r0, r0, lsr r0
    88d4:	30303030 	eorscc	r3, r0, r0, lsr r0
    88d8:	30303030 	eorscc	r3, r0, r0, lsr r0
    88dc:	30303030 	eorscc	r3, r0, r0, lsr r0
    88e0:	30303030 	eorscc	r3, r0, r0, lsr r0
    88e4:	30303030 	eorscc	r3, r0, r0, lsr r0
    88e8:	31303030 	teqcc	r0, r0, lsr r0
    88ec:	31362d45 	teqcc	r6, r5, asr #26
    88f0:	4c443334 	mcrrmi	3, 3, r3, r4, cr4
    88f4:	52415500 	subpl	r5, r1, #0, 10
    88f8:	58495f54 	stmdapl	r9, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    88fc:	4f545f52 	svcmi	0x00545f52
    8900:	30205455 	eorcc	r5, r0, r5, asr r4
    8904:	30303078 	eorscc	r3, r0, r8, ror r0
    8908:	30313030 	eorscc	r3, r1, r0, lsr r0
    890c:	5f5f0030 	svcpl	0x005f0030
    8910:	5f4d5241 	svcpl	0x004d5241
    8914:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    8918:	5f455255 	svcpl	0x00455255
    891c:	205a4c43 	subscs	r4, sl, r3, asr #24
    8920:	5f5f0031 	svcpl	0x005f0031
    8924:	49534f50 	ldmdbmi	r3, {r4, r6, r8, r9, sl, fp, lr}^
    8928:	49565f58 	ldmdbmi	r6, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    892c:	4c424953 	mcrrmi	9, 5, r4, r2, cr3	; <UNPREDICTABLE>
    8930:	00302045 	eorseq	r2, r0, r5, asr #32
    8934:	5f43535f 	svcpl	0x0043535f
    8938:	4f4e4f4d 	svcmi	0x004e4f4d
    893c:	494e4f54 	stmdbmi	lr, {r2, r4, r6, r8, r9, sl, fp, lr}^
    8940:	4c435f43 	mcrrmi	15, 4, r5, r3, cr3
    8944:	204b434f 	subcs	r4, fp, pc, asr #6
    8948:	4b003936 	blmi	16e28 <__bss_end__+0x13638>
    894c:	20544857 	subscs	r4, r4, r7, asr r8
    8950:	31785c22 	cmncc	r8, r2, lsr #24
    8954:	37335b42 	ldrcc	r5, [r3, -r2, asr #22]!
    8958:	5f00226d 	svcpl	0x0000226d
    895c:	61636f6c 	cmnvs	r3, ip, ror #30
    8960:	5f00656c 	svcpl	0x0000656c
    8964:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    8968:	4f454e5f 	svcmi	0x00454e5f
    896c:	50465f4e 	subpl	r5, r6, lr, asr #30
    8970:	45525f00 	ldrbmi	r5, [r2, #-3840]	; 0xfffff100
    8974:	5f544e45 	svcpl	0x00544e45
    8978:	4f544357 	svcmi	0x00544357
    897c:	535f424d 	cmppl	pc, #-805306364	; 0xd0000004
    8980:	45544154 	ldrbmi	r4, [r4, #-340]	; 0xfffffeac
    8984:	72747028 	rsbsvc	r7, r4, #40	; 0x28
    8988:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    898c:	29727470 	ldmdbcs	r2!, {r4, r5, r6, sl, ip, sp, lr}^
    8990:	6d5f3e2d 	ldclvs	14, cr3, [pc, #-180]	; 88e4 <__bss_end__+0x50f4>
    8994:	2d637369 	stclcs	3, cr7, [r3, #-420]!	; 0xfffffe5c
    8998:	63775f3e 	cmnvs	r7, #62, 30	; 0xf8
    899c:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
    89a0:	6174735f 	cmnvs	r4, pc, asr r3
    89a4:	00296574 	eoreq	r6, r9, r4, ror r5
    89a8:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    89ac:	494d5f34 	stmdbmi	sp, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    89b0:	5f5f004e 	svcpl	0x005f004e
    89b4:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    89b8:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 88fc <__bss_end__+0x510c>
    89bc:	5f5f5841 	svcpl	0x005f5841
    89c0:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    89c4:	00666666 	rsbeq	r6, r6, r6, ror #12
    89c8:	45524f46 	ldrbmi	r4, [r2, #-3910]	; 0xfffff0ba
    89cc:	554f5247 	strbpl	r5, [pc, #-583]	; 878d <__bss_end__+0x4f9d>
    89d0:	435f444e 	cmpmi	pc, #1308622848	; 0x4e000000
    89d4:	425f4c4f 	subsmi	r4, pc, #20224	; 0x4f00
    89d8:	4b43414c 	blmi	10d8f10 <_end+0xd8f10>
    89dc:	30332220 	eorscc	r2, r3, r0, lsr #4
    89e0:	5f5f0022 	svcpl	0x005f0022
    89e4:	5f4d5241 	svcpl	0x004d5241
    89e8:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
    89ec:	45003720 	strmi	r3, [r0, #-1824]	; 0xfffff8e0
    89f0:	52544e49 	subspl	r4, r4, #1168	; 0x490
    89f4:	45003420 	strmi	r3, [r0, #-1056]	; 0xfffffbe0
    89f8:	4d444142 	stfmie	f4, [r4, #-264]	; 0xfffffef8
    89fc:	37204753 			; <UNDEFINED> instruction: 0x37204753
    8a00:	49550037 	ldmdbmi	r5, {r0, r1, r2, r4, r5}^
    8a04:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    8a08:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    8a0c:	5f5f2029 	svcpl	0x005f2029
    8a10:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    8a14:	435f3436 	cmpmi	pc, #905969664	; 0x36000000
    8a18:	00296328 	eoreq	r6, r9, r8, lsr #6
    8a1c:	4f435f5f 	svcmi	0x00435f5f
    8a20:	5441434e 	strbpl	r4, [r1], #-846	; 0xfffffcb2
    8a24:	792c7828 	stmdbvc	ip!, {r3, r5, fp, ip, sp, lr}
    8a28:	5f5f2029 	svcpl	0x005f2029
    8a2c:	434e4f43 	movtmi	r4, #61251	; 0xef43
    8a30:	28315441 	ldmdacs	r1!, {r0, r6, sl, ip, lr}
    8a34:	29792c78 	ldmdbcs	r9!, {r3, r4, r5, r6, sl, fp, sp}^
    8a38:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 8a40 <__bss_end__+0x5250>
    8a3c:	485f4c42 	ldmdami	pc, {r1, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    8a40:	515f5341 	cmppl	pc, r1, asr #6
    8a44:	54454955 	strbpl	r4, [r5], #-2389	; 0xfffff6ab
    8a48:	4e414e5f 	mcrmi	14, 2, r4, cr1, cr15, {2}
    8a4c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    8a50:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    8a54:	5f4c4244 	svcpl	0x004c4244
    8a58:	5f4e494d 	svcpl	0x004e494d
    8a5c:	455f3031 	ldrbmi	r3, [pc, #-49]	; 8a33 <__bss_end__+0x5243>
    8a60:	5f5f5058 	svcpl	0x005f5058
    8a64:	332d2820 			; <UNDEFINED> instruction: 0x332d2820
    8a68:	00293730 	eoreq	r3, r9, r0, lsr r7
    8a6c:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    8a70:	5f323343 	svcpl	0x00323343
    8a74:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
    8a78:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    8a7c:	37205f5f 			; <UNDEFINED> instruction: 0x37205f5f
    8a80:	4e5f5f00 	cdpmi	15, 5, cr5, cr15, cr0, {0}
    8a84:	4e495f4f 	cdpmi	15, 4, cr5, cr9, cr15, {2}
    8a88:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    8a8c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    8a90:	4f495f00 	svcmi	0x00495f00
    8a94:	2046424c 	subcs	r4, r6, ip, asr #4
    8a98:	41550031 	cmpmi	r5, r1, lsr r0
    8a9c:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    8aa0:	505f5258 	subspl	r5, pc, r8, asr r2	; <UNPREDICTABLE>
    8aa4:	54495241 	strbpl	r5, [r9], #-577	; 0xfffffdbf
    8aa8:	78302059 	ldmdavc	r0!, {r0, r3, r4, r6, sp}
    8aac:	30303030 	eorscc	r3, r0, r0, lsr r0
    8ab0:	30383030 	eorscc	r3, r8, r0, lsr r0
    8ab4:	47495300 	strbmi	r5, [r9, -r0, lsl #6]
    8ab8:	4f54415f 	svcmi	0x0054415f
    8abc:	5f43494d 	svcpl	0x0043494d
    8ac0:	0058414d 	subseq	r4, r8, sp, asr #2
    8ac4:	53555f5f 	cmppl	r5, #380	; 0x17c
    8ac8:	43415246 	movtmi	r5, #4678	; 0x1246
    8acc:	42495f54 	submi	r5, r9, #84, 30	; 0x150
    8ad0:	5f5f5449 	svcpl	0x005f5449
    8ad4:	5f003020 	svcpl	0x00003020
    8ad8:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    8adc:	41465f54 	cmpmi	r6, r4, asr pc
    8ae0:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    8ae4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8ae8:	30205f5f 	eorcc	r5, r0, pc, asr pc
    8aec:	66666678 			; <UNDEFINED> instruction: 0x66666678
    8af0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8af4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8af8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    8afc:	4c4c5566 	cfstr64mi	mvdx5, [ip], {102}	; 0x66
    8b00:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    8b04:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    8b08:	494d5f58 	stmdbmi	sp, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    8b0c:	30315f4e 	eorscc	r5, r1, lr, asr #30
    8b10:	5058455f 	subspl	r4, r8, pc, asr r5
    8b14:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    8b18:	3730332d 	ldrcc	r3, [r0, -sp, lsr #6]!
    8b1c:	525f0029 	subspl	r0, pc, #41	; 0x29
    8b20:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    8b24:	494e495f 	stmdbmi	lr, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    8b28:	61762854 	cmnvs	r6, r4, asr r8
    8b2c:	7b202972 	blvc	8130fc <heap_size+0x7f30fc>
    8b30:	202c3020 	eorcs	r3, ip, r0, lsr #32
    8b34:	465f5f28 	ldrbmi	r5, [pc], -r8, lsr #30
    8b38:	20454c49 	subcs	r4, r5, r9, asr #24
    8b3c:	5f26292a 	svcpl	0x0026292a
    8b40:	5f66735f 	svcpl	0x0066735f
    8b44:	656b6166 	strbvs	r6, [fp, #-358]!	; 0xfffffe9a
    8b48:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    8b4c:	202c6e69 	eorcs	r6, ip, r9, ror #28
    8b50:	465f5f28 	ldrbmi	r5, [pc], -r8, lsr #30
    8b54:	20454c49 	subcs	r4, r5, r9, asr #24
    8b58:	5f26292a 	svcpl	0x0026292a
    8b5c:	5f66735f 	svcpl	0x0066735f
    8b60:	656b6166 	strbvs	r6, [fp, #-358]!	; 0xfffffe9a
    8b64:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    8b68:	2c74756f 	cfldr64cs	mvdx7, [r4], #-444	; 0xfffffe44
    8b6c:	5f5f2820 	svcpl	0x005f2820
    8b70:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    8b74:	26292a20 	strtcs	r2, [r9], -r0, lsr #20
    8b78:	66735f5f 	uhsaxvs	r5, r3, pc	; <UNPREDICTABLE>
    8b7c:	6b61665f 	blvs	1862500 <_end+0x862500>
    8b80:	74735f65 	ldrbtvc	r5, [r3], #-3941	; 0xfffff09b
    8b84:	72726564 	rsbsvc	r6, r2, #100, 10	; 0x19000000
    8b88:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    8b8c:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    8b90:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    8b94:	30202c30 	eorcc	r2, r0, r0, lsr ip
    8b98:	4e5f202c 	cdpmi	0, 5, cr2, cr15, cr12, {1}
    8b9c:	2c4c4c55 	mcrrcs	12, 5, r4, ip, cr5
    8ba0:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    8ba4:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    8ba8:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    8bac:	30202c4c 	eorcc	r2, r0, ip, asr #24
    8bb0:	2c30202c 	ldccs	0, cr2, [r0], #-176	; 0xffffff50
    8bb4:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    8bb8:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    8bbc:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    8bc0:	5f202c4c 	svcpl	0x00202c4c
    8bc4:	4c4c554e 	cfstr64mi	mvdx5, [ip], {78}	; 0x4e
    8bc8:	4e5f202c 	cdpmi	0, 5, cr2, cr15, cr12, {1}
    8bcc:	2c4c4c55 	mcrrcs	12, 5, r4, ip, cr5
    8bd0:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    8bd4:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    8bd8:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    8bdc:	495f544e 	ldmdbmi	pc, {r1, r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    8be0:	5f54494e 	svcpl	0x0054494e
    8be4:	58455441 	stmdapl	r5, {r0, r6, sl, ip, lr}^
    8be8:	7b205449 	blvc	81dd14 <heap_size+0x7fdd14>
    8bec:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    8bf0:	30202c4c 	eorcc	r2, r0, ip, asr #24
    8bf4:	4e5f202c 	cdpmi	0, 5, cr2, cr15, cr12, {1}
    8bf8:	7d4c4c55 	stclvc	12, cr4, [ip, #-340]	; 0xfffffeac
    8bfc:	4e5f202c 	cdpmi	0, 5, cr2, cr15, cr12, {1}
    8c00:	2c4c4c55 	mcrrcs	12, 5, r4, ip, cr5
    8c04:	554e5f20 	strbpl	r5, [lr, #-3872]	; 0xfffff0e0
    8c08:	202c4c4c 	eorcs	r4, ip, ip, asr #24
    8c0c:	4c554e5f 	mrrcmi	14, 5, r4, r5, cr15
    8c10:	007d204c 	rsbseq	r2, sp, ip, asr #32
    8c14:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    8c18:	5f524d5f 	svcpl	0x00524d5f
    8c1c:	4f4d4843 	svcmi	0x004d4843
    8c20:	525f4544 	subspl	r4, pc, #68, 10	; 0x11000000
    8c24:	4f4f4c5f 	svcmi	0x004f4c5f
    8c28:	78302050 	ldmdavc	r0!, {r4, r6, sp}
    8c2c:	30303030 	eorscc	r3, r0, r0, lsr r0
    8c30:	30303330 	eorscc	r3, r0, r0, lsr r3
    8c34:	34725f00 	ldrbtcc	r5, [r2], #-3840	; 0xfffff100
    8c38:	5f5f0038 	svcpl	0x005f0038
    8c3c:	5f434544 	svcpl	0x00434544
    8c40:	4c415645 	mcrrmi	6, 4, r5, r1, cr5
    8c44:	54454d5f 	strbpl	r4, [r5], #-3423	; 0xfffff2a1
    8c48:	5f444f48 	svcpl	0x00444f48
    8c4c:	0032205f 	eorseq	r2, r2, pc, asr r0
    8c50:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    8c54:	485f4c42 	ldmdami	pc, {r1, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    8c58:	495f5341 	ldmdbmi	pc, {r0, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    8c5c:	4e49464e 	cdpmi	6, 4, cr4, cr9, cr14, {2}
    8c60:	5f595449 	svcpl	0x00595449
    8c64:	0031205f 	eorseq	r2, r1, pc, asr r0
    8c68:	5f43505f 	svcpl	0x0043505f
    8c6c:	5f58414d 	svcpl	0x0058414d
    8c70:	4f4e4143 	svcmi	0x004e4143
    8c74:	0031204e 	eorseq	r2, r1, lr, asr #32
    8c78:	5f43535f 	svcpl	0x0043535f
    8c7c:	45474150 	strbmi	r4, [r7, #-336]	; 0xfffffeb0
    8c80:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    8c84:	5f003820 	svcpl	0x00003820
    8c88:	7661685f 			; <UNDEFINED> instruction: 0x7661685f
    8c8c:	6f6c5f65 	svcvs	0x006c5f65
    8c90:	6f6c676e 	svcvs	0x006c676e
    8c94:	3436676e 	ldrtcc	r6, [r6], #-1902	; 0xfffff892
    8c98:	5f003120 	svcpl	0x00003120
    8c9c:	42464f49 	submi	r4, r6, #292	; 0x124
    8ca0:	00302046 	eorseq	r2, r0, r6, asr #32
    8ca4:	49505345 	ldmdbmi	r0, {r0, r2, r6, r8, r9, ip, lr}^
    8ca8:	32204550 	eorcc	r4, r0, #80, 10	; 0x14000000
    8cac:	5f5f0039 	svcpl	0x005f0039
    8cb0:	41524653 	cmpmi	r2, r3, asr r6
    8cb4:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 8bb0 <__bss_end__+0x53c0>
    8cb8:	5f5f5841 	svcpl	0x005f5841
    8cbc:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    8cc0:	372d5046 	strcc	r5, [sp, -r6, asr #32]!
    8cc4:	5f005248 	svcpl	0x00005248
    8cc8:	5f535953 	svcpl	0x00535953
    8ccc:	53494e55 	movtpl	r4, #40533	; 0x9e55
    8cd0:	485f4454 	ldmdami	pc, {r2, r4, r6, sl, lr}^	; <UNPREDICTABLE>
    8cd4:	5f5f0020 	svcpl	0x005f0020
    8cd8:	6465656e 	strbtvs	r6, [r5], #-1390	; 0xfffffa92
    8cdc:	765f5f5f 	usaxvc	r5, pc, pc	; <UNPREDICTABLE>
    8ce0:	696c5f61 	stmdbvs	ip!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
    8ce4:	00207473 	eoreq	r7, r0, r3, ror r4
    8ce8:	5f43535f 	svcpl	0x0043535f
    8cec:	58455441 	stmdapl	r5, {r0, r6, sl, ip, lr}^
    8cf0:	4d5f5449 	cfldrdmi	mvd5, [pc, #-292]	; 8bd4 <__bss_end__+0x53e4>
    8cf4:	35205841 	strcc	r5, [r0, #-2113]!	; 0xfffff7bf
    8cf8:	5f5f0035 	svcpl	0x005f0035
    8cfc:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    8d00:	4c5f464f 	mrrcmi	6, 4, r4, pc, cr15	; <UNPREDICTABLE>
    8d04:	5f474e4f 	svcpl	0x00474e4f
    8d08:	42554f44 	subsmi	r4, r5, #68, 30	; 0x110
    8d0c:	5f5f454c 	svcpl	0x005f454c
    8d10:	5f003820 	svcpl	0x00003820
    8d14:	325f4353 	subscc	r4, pc, #1275068417	; 0x4c000001
    8d18:	5342505f 	movtpl	r5, #8287	; 0x205f
    8d1c:	33313120 	teqcc	r1, #32, 2
    8d20:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    8d24:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    8d28:	5341485f 	movtpl	r4, #6239	; 0x185f
    8d2c:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    8d30:	5f4d524f 	svcpl	0x004d524f
    8d34:	0031205f 	eorseq	r2, r1, pc, asr r0
    8d38:	5f43505f 	svcpl	0x0043505f
    8d3c:	454d414e 	strbmi	r4, [sp, #-334]	; 0xfffffeb2
    8d40:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8d44:	5f003320 	svcpl	0x00003320
    8d48:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    8d4c:	5341485f 	movtpl	r4, #6239	; 0x185f
    8d50:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    8d54:	5f4d524f 	svcpl	0x004d524f
    8d58:	0031205f 	eorseq	r2, r1, pc, asr r0
    8d5c:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
    8d60:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    8d64:	42465f4d 	submi	r5, r6, #308	; 0x134
    8d68:	5f5f5449 	svcpl	0x005f5449
    8d6c:	00313320 	eorseq	r3, r1, r0, lsr #6
    8d70:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    8d74:	41454c5f 	cmpmi	r5, pc, asr ip
    8d78:	5f385453 	svcpl	0x00385453
    8d7c:	0058414d 	subseq	r4, r8, sp, asr #2
    8d80:	5f43535f 	svcpl	0x0043535f
    8d84:	5f475241 	svcpl	0x00475241
    8d88:	2058414d 	subscs	r4, r8, sp, asr #2
    8d8c:	5f5f0030 	svcpl	0x005f0030
    8d90:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
    8d94:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 8d9c <__bss_end__+0x55ac>
    8d98:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 8c98 <__bss_end__+0x54a8>
    8d9c:	5f544e41 	svcpl	0x00544e41
    8da0:	5f474944 	svcpl	0x00474944
    8da4:	3335205f 	teqcc	r5, #95	; 0x5f
    8da8:	4c564c00 	mrrcmi	12, 0, r4, r6, cr0
    8dac:	4355535f 	cmpmi	r5, #2080374785	; 0x7c000001
    8db0:	53534543 	cmppl	r3, #281018368	; 0x10c00000
    8db4:	5f003220 	svcpl	0x00003220
    8db8:	6d6f7441 	cfstrdvs	mvd7, [pc, #-260]!	; 8cbc <__bss_end__+0x54cc>
    8dbc:	54286369 	strtpl	r6, [r8], #-873	; 0xfffffc97
    8dc0:	74732029 	ldrbtvc	r2, [r3], #-41	; 0xffffffd7
    8dc4:	74637572 	strbtvc	r7, [r3], #-1394	; 0xfffffa8e
    8dc8:	54207b20 	strtpl	r7, [r0], #-2848	; 0xfffff4e0
    8dcc:	6c6f7620 	stclvs	6, cr7, [pc], #-128	; 8d54 <__bss_end__+0x5564>
    8dd0:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    8dd4:	5f5f2065 	svcpl	0x005f2065
    8dd8:	3b6c6176 	blcc	1b213b8 <_end+0xb213b8>
    8ddc:	49007d20 	stmdbmi	r0, {r5, r8, sl, fp, ip, sp, lr}
    8de0:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    8de4:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    8de8:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    8dec:	492d2820 	pushmi	{r5, fp, sp}
    8df0:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    8df4:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    8df8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    8dfc:	31202d20 			; <UNDEFINED> instruction: 0x31202d20
    8e00:	5f5f0029 	svcpl	0x005f0029
    8e04:	495f5154 	ldmdbmi	pc, {r2, r4, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    8e08:	5f544942 	svcpl	0x00544942
    8e0c:	0030205f 	eorseq	r2, r0, pc, asr r0
    8e10:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
    8e14:	5f5f006e 	svcpl	0x005f006e
    8e18:	33544c46 	cmpcc	r4, #17920	; 0x4600
    8e1c:	4d5f5832 	ldclmi	8, cr5, [pc, #-200]	; 8d5c <__bss_end__+0x556c>
    8e20:	5f5f4e49 	svcpl	0x005f4e49
    8e24:	322e3220 	eorcc	r3, lr, #32, 4
    8e28:	37303532 			; <UNDEFINED> instruction: 0x37303532
    8e2c:	38353833 	ldmdacc	r5!, {r0, r1, r4, r5, fp, ip, sp}
    8e30:	32373035 	eorscc	r3, r7, #53	; 0x35
    8e34:	65343130 	ldrvs	r3, [r4, #-304]!	; 0xfffffed0
    8e38:	3830332d 	ldmdacc	r0!, {r0, r2, r3, r5, r8, r9, ip, sp}
    8e3c:	78323346 	ldmdavc	r2!, {r1, r2, r6, r8, r9, ip, sp}
    8e40:	52504500 	subspl	r4, r0, #0, 10
    8e44:	544f544f 	strbpl	r5, [pc], #-1103	; 8e4c <__bss_end__+0x565c>
    8e48:	20455059 	subcs	r5, r5, r9, asr r0
    8e4c:	00373031 	eorseq	r3, r7, r1, lsr r0
    8e50:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    8e54:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
    8e58:	4f4c465f 	svcmi	0x004c465f
    8e5c:	5f5f5441 	svcpl	0x005f5441
    8e60:	45003420 	strmi	r3, [r0, #-1056]	; 0xfffffbe0
    8e64:	45504950 	ldrbmi	r4, [r0, #-2384]	; 0xfffff6b0
    8e68:	00323320 	eorseq	r3, r2, r0, lsr #6
    8e6c:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    8e70:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    8e74:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    8e78:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    8e7c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    8e80:	33332d45 	teqcc	r3, #4416	; 0x1140
    8e84:	5f004c44 	svcpl	0x00004c44
    8e88:	5a49535f 	bpl	125dc0c <_end+0x25dc0c>
    8e8c:	5f545f45 	svcpl	0x00545f45
    8e90:	5f00205f 	svcpl	0x0000205f
    8e94:	5a49535f 	bpl	125dc18 <_end+0x25dc18>
    8e98:	59545f45 	ldmdbpl	r4, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    8e9c:	5f5f4550 	svcpl	0x005f4550
    8ea0:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    8ea4:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    8ea8:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    8eac:	415f0074 	cmpmi	pc, r4, ror r0	; <UNPREDICTABLE>
    8eb0:	6e67696c 	vnmulvs.f16	s13, s14, s25	; <UNPREDICTABLE>
    8eb4:	7828666f 	stmdavc	r8!, {r0, r1, r2, r3, r5, r6, r9, sl, sp, lr}
    8eb8:	5f5f2029 	svcpl	0x005f2029
    8ebc:	67696c61 	strbvs	r6, [r9, -r1, ror #24]!
    8ec0:	28666f6e 	stmdacs	r6!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    8ec4:	5f002978 	svcpl	0x00002978
    8ec8:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
    8ecc:	6f746573 	svcvs	0x00746573
    8ed0:	79742866 	ldmdbvc	r4!, {r1, r2, r5, r6, fp, sp}^
    8ed4:	662c6570 			; <UNDEFINED> instruction: 0x662c6570
    8ed8:	646c6569 	strbtvs	r6, [ip], #-1385	; 0xfffffa97
    8edc:	666f2029 	strbtvs	r2, [pc], -r9, lsr #32
    8ee0:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
    8ee4:	7428666f 	strtvc	r6, [r8], #-1647	; 0xfffff991
    8ee8:	2c657079 	stclcs	0, cr7, [r5], #-484	; 0xfffffe1c
    8eec:	65696620 	strbvs	r6, [r9, #-1568]!	; 0xfffff9e0
    8ef0:	0029646c 	eoreq	r6, r9, ip, ror #8
    8ef4:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    8ef8:	5f545f38 	svcpl	0x00545f38
    8efc:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    8f00:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    8f04:	5f5f0020 	svcpl	0x005f0020
    8f08:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    8f0c:	41454c5f 	cmpmi	r5, pc, asr ip
    8f10:	5f385453 	svcpl	0x00385453
    8f14:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    8f18:	75205f5f 	strvc	r5, [r0, #-3935]!	; 0xfffff0a1
    8f1c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    8f20:	2064656e 	rsbcs	r6, r4, lr, ror #10
    8f24:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    8f28:	41525f00 	cmpmi	r2, r0, lsl #30
    8f2c:	3834444e 	ldmdacc	r4!, {r1, r2, r3, r6, sl, lr}
    8f30:	4545535f 	strbmi	r5, [r5, #-863]	; 0xfffffca1
    8f34:	20315f44 	eorscs	r5, r1, r4, asr #30
    8f38:	61783028 	cmnvs	r8, r8, lsr #32
    8f3c:	29646362 	stmdbcs	r4!, {r1, r5, r6, r8, r9, sp, lr}^
    8f40:	755f5f00 	ldrbvc	r5, [pc, #-3840]	; 8048 <__bss_end__+0x4858>
    8f44:	6165726e 	cmnvs	r5, lr, ror #4
    8f48:	62616863 	rsbvs	r6, r1, #6488064	; 0x630000
    8f4c:	2928656c 	stmdbcs	r8!, {r2, r3, r5, r6, r8, sl, sp, lr}
    8f50:	625f5f20 	subsvs	r5, pc, #32, 30	; 0x80
    8f54:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
    8f58:	755f6e69 	ldrbvc	r6, [pc, #-3689]	; 80f7 <__bss_end__+0x4907>
    8f5c:	6165726e 	cmnvs	r5, lr, ror #4
    8f60:	62616863 	rsbvs	r6, r1, #6488064	; 0x630000
    8f64:	2928656c 	stmdbcs	r8!, {r2, r3, r5, r6, r8, sl, sp, lr}
    8f68:	4e495500 	cdpmi	5, 4, cr5, cr9, cr0, {0}
    8f6c:	5f363154 	svcpl	0x00363154
    8f70:	5f5f0043 	svcpl	0x005f0043
    8f74:	49525453 	ldmdbmi	r2, {r0, r1, r4, r6, sl, ip, lr}^
    8f78:	7828474e 	stmdavc	r8!, {r1, r2, r3, r6, r8, r9, sl, lr}
    8f7c:	78232029 	stmdavc	r3!, {r0, r3, r5, sp}
    8f80:	43535f00 	cmpmi	r3, #0, 30
    8f84:	5f43425f 	svcpl	0x0043425f
    8f88:	49525453 	ldmdbmi	r2, {r0, r1, r4, r6, sl, ip, lr}^
    8f8c:	4d5f474e 	ldclmi	7, cr4, [pc, #-312]	; 8e5c <__bss_end__+0x566c>
    8f90:	36205841 	strtcc	r5, [r0], -r1, asr #16
    8f94:	705f0030 	subsvc	r0, pc, r0, lsr r0	; <UNPREDICTABLE>
    8f98:	5f007335 	svcpl	0x00007335
    8f9c:	36544e49 	ldrbcc	r4, [r4], -r9, asr #28
    8fa0:	5f545f34 	svcpl	0x00545f34
    8fa4:	4c434544 	cfstr64mi	mvdx4, [r3], {68}	; 0x44
    8fa8:	44455241 	strbmi	r5, [r5], #-577	; 0xfffffdbf
    8fac:	41550020 	cmpmi	r5, r0, lsr #32
    8fb0:	435f5452 	cmpmi	pc, #1375731712	; 0x52000000
    8fb4:	4f545f52 	svcmi	0x00545f52
    8fb8:	20545352 	subscs	r5, r4, r2, asr r3
    8fbc:	30307830 	eorscc	r7, r0, r0, lsr r8
    8fc0:	30303030 	eorscc	r3, r0, r0, lsr r0
    8fc4:	5f003034 	svcpl	0x00003034
    8fc8:	4148435f 	cmpmi	r8, pc, asr r3
    8fcc:	5f363152 	svcpl	0x00363152
    8fd0:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    8fd4:	73205f5f 			; <UNDEFINED> instruction: 0x73205f5f
    8fd8:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
    8fdc:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    8fe0:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    8fe4:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    8fe8:	4e490074 	mcrmi	0, 2, r0, cr9, cr4, {3}
    8fec:	5f363154 	svcpl	0x00363154
    8ff0:	204e494d 	subcs	r4, lr, sp, asr #18
    8ff4:	4e492d28 	cdpmi	13, 4, cr2, cr9, cr8, {1}
    8ff8:	5f363154 	svcpl	0x00363154
    8ffc:	2058414d 	subscs	r4, r8, sp, asr #2
    9000:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    9004:	4e454700 	cdpmi	7, 4, cr4, cr5, cr0, {0}
    9008:	524f465f 	subpl	r4, pc, #99614720	; 0x5f00000
    900c:	5f54414d 	svcpl	0x0054414d
    9010:	45534552 	ldrbmi	r4, [r3, #-1362]	; 0xfffffaae
    9014:	30222054 	eorcc	r2, r2, r4, asr r0
    9018:	5f5f0022 	svcpl	0x005f0022
    901c:	41524655 	cmpmi	r2, r5, asr r6
    9020:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    9024:	5f544942 	svcpl	0x00544942
    9028:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    902c:	43535f00 	cmpmi	r3, #0, 30
    9030:	4c4f435f 	mcrrmi	3, 5, r4, pc, cr15
    9034:	45575f4c 	ldrbmi	r5, [r7, #-3916]	; 0xfffff0b4
    9038:	54484749 	strbpl	r4, [r8], #-1865	; 0xfffff8b7
    903c:	414d5f53 	cmpmi	sp, r3, asr pc
    9040:	32362058 	eorscc	r2, r6, #88	; 0x58
    9044:	5c3a6300 	ldcpl	3, cr6, [sl], #-0
    9048:	6a6f7270 	bvs	1be5a10 <_end+0xbe5a10>
    904c:	5c737465 	cfldrdpl	mvd7, [r3], #-404	; 0xfffffe6c
    9050:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
    9054:	515f6674 	cmppl	pc, r4, ror r6	; <UNPREDICTABLE>
    9058:	5f554d45 	svcpl	0x00554d45
    905c:	004d5241 	subeq	r5, sp, r1, asr #4
    9060:	4e414345 	cdpmi	3, 4, cr4, cr1, cr5, {2}
    9064:	454c4543 	strbmi	r4, [ip, #-1347]	; 0xfffffabd
    9068:	34312044 	ldrtcc	r2, [r1], #-68	; 0xffffffbc
    906c:	49460030 	stmdbmi	r6, {r4, r5}^
    9070:	414e454c 	cmpmi	lr, ip, asr #10
    9074:	4d5f454d 	cfldr64mi	mvdx4, [pc, #-308]	; 8f48 <__bss_end__+0x5758>
    9078:	31205841 			; <UNDEFINED> instruction: 0x31205841
    907c:	00343230 	eorseq	r3, r4, r0, lsr r2
    9080:	52535f5f 	subspl	r5, r3, #380	; 0x17c
    9084:	78302057 	ldmdavc	r0!, {r0, r1, r2, r4, r6, sp}
    9088:	30313030 	eorscc	r3, r1, r0, lsr r0
    908c:	4f4e4500 	svcmi	0x004e4500
    9090:	41544144 	cmpmi	r4, r4, asr #2
    9094:	00313620 	eorseq	r3, r1, r0, lsr #12
    9098:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    909c:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    90a0:	4b434548 	blmi	10da5c8 <_end+0xda5c8>
    90a4:	454d455f 	strbmi	r4, [sp, #-1375]	; 0xfffffaa1
    90a8:	4e454752 	mcrmi	7, 2, r4, cr5, cr2, {2}
    90ac:	76285943 	strtvc	r5, [r8], -r3, asr #18
    90b0:	20297261 	eorcs	r7, r9, r1, ror #4
    90b4:	4545525f 	strbmi	r5, [r5, #-607]	; 0xfffffda1
    90b8:	435f544e 	cmpmi	pc, #1308622848	; 0x4e000000
    90bc:	4b434548 	blmi	10da5e4 <_end+0xda5e4>
    90c0:	72617628 	rsbvc	r7, r1, #40, 12	; 0x2800000
    90c4:	655f202c 	ldrbvs	r2, [pc, #-44]	; 90a0 <__bss_end__+0x58b0>
    90c8:	6772656d 	ldrbvs	r6, [r2, -sp, ror #10]!
    90cc:	79636e65 	stmdbvc	r3!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
    90d0:	6863202c 	stmdavs	r3!, {r2, r3, r5, sp}^
    90d4:	2a207261 	bcs	825a60 <heap_size+0x805a60>
    90d8:	525f202c 	subspl	r2, pc, #44	; 0x2c
    90dc:	544e4545 	strbpl	r4, [lr], #-1349	; 0xfffffabb
    90e0:	454d455f 	strbmi	r4, [sp, #-1375]	; 0xfffffaa1
    90e4:	4e454752 	mcrmi	7, 2, r4, cr5, cr2, {2}
    90e8:	535f5943 	cmppl	pc, #1097728	; 0x10c000
    90ec:	2c455a49 	mcrrcs	10, 4, r5, r5, cr9
    90f0:	5f002920 	svcpl	0x00002920
    90f4:	5248545f 	subpl	r5, r8, #1593835520	; 0x5f000000
    90f8:	0020574f 	eoreq	r5, r0, pc, asr #14
    90fc:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    9100:	5f323354 	svcpl	0x00323354
    9104:	4f4e4544 	svcmi	0x004e4544
    9108:	4d5f4d52 	ldclmi	13, cr4, [pc, #-328]	; 8fc8 <__bss_end__+0x57d8>
    910c:	5f5f4e49 	svcpl	0x005f4e49
    9110:	342e3120 	strtcc	r3, [lr], #-288	; 0xfffffee0
    9114:	39323130 	ldmdbcc	r2!, {r4, r5, r8, ip, sp}
    9118:	34363438 	ldrtcc	r3, [r6], #-1080	; 0xfffffbc8
    911c:	38343233 	ldmdacc	r4!, {r0, r1, r4, r5, r9, ip, sp}
    9120:	65313731 	ldrvs	r3, [r1, #-1841]!	; 0xfffff8cf
    9124:	4635342d 	ldrtmi	r3, [r5], -sp, lsr #8
    9128:	5f003233 	svcpl	0x00003233
    912c:	7461645f 	strbtvc	r6, [r1], #-1119	; 0xfffffba1
    9130:	70797461 	rsbsvc	r7, r9, r1, ror #8
    9134:	79745f65 	ldmdbvc	r4!, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
    9138:	745f6570 	ldrbvc	r6, [pc], #-1392	; 9140 <__bss_end__+0x5950>
    913c:	6b286761 	blvs	a22ec8 <heap_size+0xa02ec8>
    9140:	2c646e69 	stclcs	14, cr6, [r4], #-420	; 0xfffffe5c
    9144:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    9148:	49002029 	stmdbmi	r0, {r0, r3, r5, sp}
    914c:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    9150:	31545341 	cmpcc	r4, r1, asr #6
    9154:	414d5f36 	cmpmi	sp, r6, lsr pc
    9158:	5f5f2058 	svcpl	0x005f2058
    915c:	5f544e49 	svcpl	0x00544e49
    9160:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    9164:	4d5f3631 	ldclmi	6, cr3, [pc, #-196]	; 90a8 <__bss_end__+0x58b8>
    9168:	5f5f5841 	svcpl	0x005f5841
    916c:	43535f00 	cmpmi	r3, #0, 30
    9170:	56454c5f 			; <UNDEFINED> instruction: 0x56454c5f
    9174:	5f314c45 	svcpl	0x00314c45
    9178:	43414349 	movtmi	r4, #4937	; 0x1349
    917c:	415f4548 	cmpmi	pc, r8, asr #10
    9180:	434f5353 	movtmi	r5, #62291	; 0xf353
    9184:	36323120 	ldrtcc	r3, [r2], -r0, lsr #2
    9188:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 8290 <__bss_end__+0x4aa0>
    918c:	495f4148 	ldmdbmi	pc, {r3, r6, r8, lr}^	; <UNPREDICTABLE>
    9190:	5f544942 	svcpl	0x00544942
    9194:	0038205f 	eorseq	r2, r8, pc, asr r0
    9198:	6c635f5f 	stclvs	15, cr5, [r3], #-380	; 0xfffffe84
    919c:	696b636f 	stmdbvs	fp!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}^
    91a0:	5f745f64 	svcpl	0x00745f64
    91a4:	69666564 	stmdbvs	r6!, {r2, r5, r6, r8, sl, sp, lr}^
    91a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
    91ac:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    91b0:	4152464c 	cmpmi	r2, ip, asr #12
    91b4:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 90b0 <__bss_end__+0x58c0>
    91b8:	5f5f5841 	svcpl	0x005f5841
    91bc:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    91c0:	46464646 	strbmi	r4, [r6], -r6, asr #12
    91c4:	46464646 	strbmi	r4, [r6], -r6, asr #12
    91c8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    91cc:	50464646 	subpl	r4, r6, r6, asr #12
    91d0:	4c33362d 	ldcmi	6, cr3, [r3], #-180	; 0xffffff4c
    91d4:	5f00524c 	svcpl	0x0000524c
    91d8:	7972745f 	ldmdbvc	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
    91dc:	6b636f6c 	blvs	18e4f94 <_end+0x8e4f94>
    91e0:	78655f73 	stmdavc	r5!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    91e4:	73756c63 	cmnvc	r5, #25344	; 0x6300
    91e8:	28657669 	stmdacs	r5!, {r0, r3, r5, r6, r9, sl, ip, sp, lr}^
    91ec:	292e2e2e 	stmdbcs	lr!, {r1, r2, r3, r5, r9, sl, fp, sp}
    91f0:	6c5f5f20 	mrrcvs	15, 2, r5, pc, cr0	; <UNPREDICTABLE>
    91f4:	5f6b636f 	svcpl	0x006b636f
    91f8:	6f6e6e61 	svcvs	0x006e6e61
    91fc:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
    9200:	63786528 	cmnvs	r8, #40, 10	; 0xa000000
    9204:	6973756c 	ldmdbvs	r3!, {r2, r3, r5, r6, r8, sl, ip, sp, lr}^
    9208:	745f6576 	ldrbvc	r6, [pc], #-1398	; 9210 <__bss_end__+0x5a20>
    920c:	6f6c7972 	svcvs	0x006c7972
    9210:	665f6b63 	ldrbvs	r6, [pc], -r3, ror #22
    9214:	74636e75 	strbtvc	r6, [r3], #-3701	; 0xfffff18b
    9218:	286e6f69 	stmdacs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    921c:	41565f5f 	cmpmi	r6, pc, asr pc
    9220:	4752415f 			; <UNDEFINED> instruction: 0x4752415f
    9224:	295f5f53 	ldmdbcs	pc, {r0, r1, r4, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    9228:	74730029 	ldrbtvc	r0, [r3], #-41	; 0xffffffd7
    922c:	206e6964 	rsbcs	r6, lr, r4, ror #18
    9230:	45525f28 	ldrbmi	r5, [r2, #-3880]	; 0xfffff0d8
    9234:	2d544e45 	ldclcs	14, cr4, [r4, #-276]	; 0xfffffeec
    9238:	74735f3e 	ldrbtvc	r5, [r3], #-3902	; 0xfffff0c2
    923c:	296e6964 	stmdbcs	lr!, {r2, r5, r6, r8, fp, sp, lr}^
    9240:	49545f00 	ldmdbmi	r4, {r8, r9, sl, fp, ip, lr}^
    9244:	545f454d 	ldrbpl	r4, [pc], #-1357	; 924c <__bss_end__+0x5a5c>
    9248:	5f5f205f 	svcpl	0x005f205f
    924c:	5f746e69 	svcpl	0x00746e69
    9250:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    9254:	5f343674 	svcpl	0x00343674
    9258:	4d5f0074 	ldclmi	0, cr0, [pc, #-464]	; 9090 <__bss_end__+0x58a0>
    925c:	49484341 	stmdbmi	r8, {r0, r6, r8, r9, lr}^
    9260:	5f5f454e 	svcpl	0x005f454e
    9264:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    9268:	20485f53 	subcs	r5, r8, r3, asr pc
    926c:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    9270:	5f43554e 	svcpl	0x0043554e
    9274:	4f4e494d 	svcmi	0x004e494d
    9278:	205f5f52 	subscs	r5, pc, r2, asr pc	; <UNPREDICTABLE>
    927c:	4c450033 	mcrrmi	0, 3, r0, r5, cr3
    9280:	20504f4f 	subscs	r4, r0, pc, asr #30
    9284:	45003239 	strmi	r3, [r0, #-569]	; 0xfffffdc7
    9288:	53544f4e 	cmppl	r4, #312	; 0x138
    928c:	31205055 	qsubcc	r5, r5, r0
    9290:	55003433 	strpl	r3, [r0, #-1075]	; 0xfffffbcd
    9294:	5f545241 	svcpl	0x00545241
    9298:	465f5253 			; <UNDEFINED> instruction: 0x465f5253
    929c:	44574f4c 	ldrbmi	r4, [r7], #-3916	; 0xfffff0b4
    92a0:	30204c45 	eorcc	r4, r0, r5, asr #24
    92a4:	30303078 	eorscc	r3, r0, r8, ror r0
    92a8:	30303130 	eorscc	r3, r0, r0, lsr r1
    92ac:	725f0030 	subsvc	r0, pc, #48	; 0x30
    92b0:	00646165 	rsbeq	r6, r4, r5, ror #2
    92b4:	4d544e49 	ldclmi	14, cr4, [r4, #-292]	; 0xfffffedc
    92b8:	4d5f5841 	ldclmi	8, cr5, [pc, #-260]	; 91bc <__bss_end__+0x59cc>
    92bc:	5f205841 	svcpl	0x00205841
    92c0:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    92c4:	5f58414d 	svcpl	0x0058414d
    92c8:	5f58414d 	svcpl	0x0058414d
    92cc:	5f5f005f 	svcpl	0x005f005f
    92d0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    92d4:	41454c5f 	cmpmi	r5, pc, asr ip
    92d8:	36315453 			; <UNDEFINED> instruction: 0x36315453
    92dc:	5059545f 	subspl	r5, r9, pc, asr r4
    92e0:	205f5f45 	subscs	r5, pc, r5, asr #30
    92e4:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
    92e8:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
    92ec:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    92f0:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    92f4:	5f00746e 	svcpl	0x0000746e
    92f8:	4c5f4353 	mrrcmi	3, 5, r4, pc, cr3	; <UNPREDICTABLE>
    92fc:	4c455645 	mcrrmi	6, 4, r5, r5, cr5
    9300:	41435f33 	cmpmi	r3, r3, lsr pc
    9304:	5f454843 	svcpl	0x00454843
    9308:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    930c:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    9310:	36333120 	ldrtcc	r3, [r3], -r0, lsr #2
    9314:	444c5f00 	strbmi	r5, [ip], #-3840	; 0xfffff100
    9318:	455f4c42 	ldrbmi	r4, [pc, #-3138]	; 86de <__bss_end__+0x4eee>
    931c:	42445f51 	submi	r5, r4, #324	; 0x144
    9320:	0031204c 	eorseq	r2, r1, ip, asr #32
    9324:	4d4f4e45 	stclmi	14, cr4, [pc, #-276]	; 9218 <__bss_end__+0x5a28>
    9328:	33204753 			; <UNDEFINED> instruction: 0x33204753
    932c:	41550035 	cmpmi	r5, r5, lsr r0
    9330:	4d5f5452 	cfldrdmi	mvd5, [pc, #-328]	; 91f0 <__bss_end__+0x5a00>
    9334:	41505f52 	cmpmi	r0, r2, asr pc
    9338:	59544952 	ldmdbpl	r4, {r1, r4, r6, r8, fp, lr}^
    933c:	44444f5f 	strbmi	r4, [r4], #-3935	; 0xfffff0a1
    9340:	30783020 	rsbscc	r3, r8, r0, lsr #32
    9344:	30303030 	eorscc	r3, r0, r0, lsr r0
    9348:	00383030 	eorseq	r3, r8, r0, lsr r0
    934c:	6e61725f 	mcrvs	2, 3, r7, cr1, cr15, {2}
    9350:	00383464 	eorseq	r3, r8, r4, ror #8
    9354:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    9358:	5f5f4355 	svcpl	0x005f4355
    935c:	5f003720 	svcpl	0x00003720
    9360:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    9364:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    9368:	5f4d524f 	svcpl	0x004d524f
    936c:	5f4e494d 	svcpl	0x004e494d
    9370:	2e31205f 	mrccs	0, 1, r2, cr1, cr15, {2}
    9374:	32313034 	eorscc	r3, r1, #52	; 0x34
    9378:	36343839 			; <UNDEFINED> instruction: 0x36343839
    937c:	34323334 	ldrtcc	r3, [r2], #-820	; 0xfffffccc
    9380:	31373138 	teqcc	r7, r8, lsr r1
    9384:	35342d65 	ldrcc	r2, [r4, #-3429]!	; 0xfffff29b
    9388:	5f5f0046 	svcpl	0x005f0046
    938c:	616c6f76 	smcvs	50934	; 0xc6f6
    9390:	656c6974 	strbvs	r6, [ip, #-2420]!	; 0xfffff68c
    9394:	6c6f7620 	stclvs	6, cr7, [pc], #-128	; 931c <__bss_end__+0x5b2c>
    9398:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    939c:	4e490065 	cdpmi	0, 4, cr0, cr9, cr5, {3}
    93a0:	41465f54 	cmpmi	r6, r4, asr pc
    93a4:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    93a8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    93ac:	495f5f20 	ldmdbmi	pc, {r5, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    93b0:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
    93b4:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    93b8:	414d5f32 	cmpmi	sp, r2, lsr pc
    93bc:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    93c0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    93c4:	5f58414d 	svcpl	0x0058414d
    93c8:	2058414d 	subscs	r4, r8, sp, asr #2
    93cc:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    93d0:	414d544e 	cmpmi	sp, lr, asr #8
    93d4:	414d5f58 	cmpmi	sp, r8, asr pc
    93d8:	005f5f58 	subseq	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    93dc:	5f544e49 	svcpl	0x00544e49
    93e0:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    93e4:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 9314 <__bss_end__+0x5b24>
    93e8:	28204e49 	stmdacs	r0!, {r0, r3, r6, r9, sl, fp, lr}
    93ec:	544e492d 	strbpl	r4, [lr], #-2349	; 0xfffff6d3
    93f0:	5341465f 	movtpl	r4, #5727	; 0x165f
    93f4:	5f343654 	svcpl	0x00343654
    93f8:	2058414d 	subscs	r4, r8, sp, asr #2
    93fc:	2931202d 	ldmdbcs	r1!, {r0, r2, r3, r5, sp}
    9400:	4f484500 	svcmi	0x00484500
    9404:	4e555453 	mrcmi	4, 2, r5, cr5, cr3, {2}
    9408:	43414552 	movtmi	r4, #5458	; 0x1552
    940c:	31312048 	teqcc	r1, r8, asr #32
    9410:	4f460038 	svcmi	0x00460038
    9414:	52474552 	subpl	r4, r7, #343932928	; 0x14800000
    9418:	444e554f 	strbmi	r5, [lr], #-1359	; 0xfffffab1
    941c:	4c4f435f 	mcrrmi	3, 5, r4, pc, cr15
    9420:	4c45595f 	mcrrmi	9, 5, r5, r5, cr15	; <UNPREDICTABLE>
    9424:	20574f4c 	subscs	r4, r7, ip, asr #30
    9428:	22333322 	eorscs	r3, r3, #-2013265920	; 0x88000000
    942c:	415f5f00 	cmpmi	pc, r0, lsl #30
    9430:	415f4d52 	cmpmi	pc, r2, asr sp	; <UNPREDICTABLE>
    9434:	5f484352 	svcpl	0x00484352
    9438:	5f415349 	svcpl	0x00415349
    943c:	4d554854 	ldclmi	8, cr4, [r5, #-336]	; 0xfffffeb0
    9440:	00322042 	eorseq	r2, r2, r2, asr #32
    9444:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    9448:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    944c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    9450:	30205f5f 	eorcc	r5, r0, pc, asr pc
    9454:	66666678 			; <UNDEFINED> instruction: 0x66666678
    9458:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    945c:	004c5566 	subeq	r5, ip, r6, ror #10
    9460:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    9464:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    9468:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
    946c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    9470:	30205f5f 	eorcc	r5, r0, pc, asr pc
    9474:	00663778 	rsbeq	r3, r6, r8, ror r7
    9478:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
    947c:	725f6e69 	subsvc	r6, pc, #1680	; 0x690
    9480:	20297828 	eorcs	r7, r9, r8, lsr #16
    9484:	29782828 	ldmdbcs	r8!, {r3, r5, fp, sp}^
    9488:	735f3e2d 	cmpvc	pc, #720	; 0x2d0
    948c:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
    9490:	41450029 	cmpmi	r5, r9, lsr #32
    9494:	53454343 	movtpl	r4, #21315	; 0x5343
    9498:	00333120 	eorseq	r3, r3, r0, lsr #2
    949c:	4f4c5f5f 	svcmi	0x004c5f5f
    94a0:	495f4b43 	ldmdbmi	pc, {r0, r1, r6, r8, r9, fp, lr}^	; <UNPREDICTABLE>
    94a4:	5f54494e 	svcpl	0x0054494e
    94a8:	55434552 	strbpl	r4, [r3, #-1362]	; 0xfffffaae
    94ac:	56495352 			; <UNDEFINED> instruction: 0x56495352
    94b0:	6c632845 	stclvs	8, cr2, [r3], #-276	; 0xfffffeec
    94b4:	2c737361 	ldclcs	3, cr7, [r3], #-388	; 0xfffffe7c
    94b8:	6b636f6c 	blvs	18e5270 <_end+0x8e5270>
    94bc:	74732029 	ldrbtvc	r2, [r3], #-41	; 0xffffffd7
    94c0:	63697461 	cmnvs	r9, #1627389952	; 0x61000000
    94c4:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    94c8:	636f6c20 	cmnvs	pc, #32, 24	; 0x2000
    94cc:	203d206b 	eorscs	r2, sp, fp, rrx
    94d0:	5f003b30 	svcpl	0x00003b30
    94d4:	465f4353 			; <UNDEFINED> instruction: 0x465f4353
    94d8:	434e5953 	movtmi	r5, #59731	; 0xe953
    94dc:	00323220 	eorseq	r3, r2, r0, lsr #4
    94e0:	6f6c5f5f 	svcvs	0x006c5f5f
    94e4:	725f6b63 	subsvc	r6, pc, #101376	; 0x18c00
    94e8:	61656c65 	cmnvs	r5, r5, ror #24
    94ec:	725f6573 	subsvc	r6, pc, #482344960	; 0x1cc00000
    94f0:	72756365 	rsbsvc	r6, r5, #-1811939327	; 0x94000001
    94f4:	65766973 	ldrbvs	r6, [r6, #-2419]!	; 0xfffff68d
    94f8:	636f6c28 	cmnvs	pc, #40, 24	; 0x2800
    94fc:	2820296b 	stmdacs	r0!, {r0, r1, r3, r5, r6, r8, fp, sp}
    9500:	696f7628 	stmdbvs	pc!, {r3, r5, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    9504:	30202964 	eorcc	r2, r0, r4, ror #18
    9508:	4e5f0029 	cdpmi	0, 5, cr0, cr15, cr9, {1}
    950c:	494c5745 	stmdbmi	ip, {r0, r2, r6, r8, r9, sl, ip, lr}^
    9510:	54535f42 	ldrbpl	r5, [r3], #-3906	; 0xfffff0be
    9514:	5f4f4944 	svcpl	0x004f4944
    9518:	5f002048 	svcpl	0x00002048
    951c:	6567735f 	strbvs	r7, [r7, #-863]!	; 0xfffffca1
    9520:	725f6374 	subsvc	r6, pc, #116, 6	; 0xd0000001
    9524:	705f5f28 	subsvc	r5, pc, r8, lsr #30
    9528:	5f2c7274 	svcpl	0x002c7274
    952c:	2029705f 	eorcs	r7, r9, pc, asr r0
    9530:	67735f5f 			; <UNDEFINED> instruction: 0x67735f5f
    9534:	5f637465 	svcpl	0x00637465
    9538:	5f776172 	svcpl	0x00776172
    953c:	5f5f2872 	svcpl	0x005f2872
    9540:	2c727470 	cfldrdcs	mvd7, [r2], #-448	; 0xfffffe40
    9544:	705f5f20 	subsvc	r5, pc, r0, lsr #30
    9548:	61750029 	cmnvs	r5, r9, lsr #32
    954c:	70007472 	andvc	r7, r0, r2, ror r4
    9550:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    9554:	72615500 	rsbvc	r5, r1, #0, 10
    9558:	616e4574 	smcvs	58452	; 0xe454
    955c:	00656c62 	rsbeq	r6, r5, r2, ror #24
    9560:	2f637273 	svccs	0x00637273
    9564:	54524155 	ldrbpl	r4, [r2], #-341	; 0xfffffeab
    9568:	2e57485f 	mrccs	8, 2, r4, cr7, cr15, {2}
    956c:	55730063 	ldrbpl	r0, [r3, #-99]!	; 0xffffff9d
    9570:	6e726573 	mrcvs	5, 3, r6, cr2, cr3, {3}
    9574:	00656d61 	rsbeq	r6, r5, r1, ror #26
    9578:	66647473 			; <UNDEFINED> instruction: 0x66647473
    957c:	73007473 	movwvc	r7, #1139	; 0x473
    9580:	7774666f 	ldrbvc	r6, [r4, -pc, ror #12]!
    9584:	5f657261 	svcpl	0x00657261
    9588:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
    958c:	6f6f685f 	svcvs	0x006f685f
    9590:	6168006b 	cmnvs	r8, fp, rrx
    9594:	61776472 	cmnvs	r7, r2, ror r4
    9598:	695f6572 	ldmdbvs	pc, {r1, r4, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
    959c:	5f74696e 	svcpl	0x0074696e
    95a0:	6b6f6f68 	blvs	1be5348 <_end+0xbe5348>
    95a4:	74656700 	strbtvc	r6, [r5], #-1792	; 0xfffff900
    95a8:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    95ac:	6c6e755f 	cfstr64vs	mvdx7, [lr], #-380	; 0xfffffe84
    95b0:	656b636f 	strbvs	r6, [fp, #-879]!	; 0xfffffc91
    95b4:	20292864 	eorcs	r2, r9, r4, ror #16
    95b8:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
    95bc:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    95c0:	6c6e755f 	cfstr64vs	mvdx7, [lr], #-380	; 0xfffffe84
    95c4:	656b636f 	strbvs	r6, [fp, #-879]!	; 0xfffffc91
    95c8:	00292864 	eoreq	r2, r9, r4, ror #16
    95cc:	66667562 	strbtvs	r7, [r6], -r2, ror #10
    95d0:	73007265 	movwvc	r7, #613	; 0x265
    95d4:	65746474 	ldrbvs	r6, [r4, #-1140]!	; 0xfffffb8c
    95d8:	4c007473 	cfstrsmi	mvf7, [r0], {115}	; 0x73
    95dc:	6574635f 	ldrbvs	r6, [r4, #-863]!	; 0xfffffca1
    95e0:	64696d72 	strbtvs	r6, [r9], #-3442	; 0xfffff28e
    95e4:	00363120 	eorseq	r3, r6, r0, lsr #2
    95e8:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
    95ec:	5f00666f 	svcpl	0x0000666f
    95f0:	49534f50 	ldmdbmi	r3, {r4, r6, r8, r9, sl, fp, lr}^
    95f4:	4f535f58 	svcmi	0x00535f58
    95f8:	45435255 	strbmi	r5, [r3, #-597]	; 0xfffffdab
    95fc:	616d0020 	cmnvs	sp, r0, lsr #32
    9600:	73006e69 	movwvc	r6, #3689	; 0xe69
    9604:	6d2f6372 	stcvs	3, cr6, [pc, #-456]!	; 9444 <__bss_end__+0x5c54>
    9608:	2e6e6961 	vnmulcs.f16	s13, s28, s3	; <UNPREDICTABLE>
    960c:	5f5f0063 	svcpl	0x005f0063
    9610:	49534f50 	ldmdbmi	r3, {r4, r6, r8, r9, sl, fp, lr}^
    9614:	49565f58 	ldmdbmi	r6, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    9618:	4c424953 	mcrrmi	9, 5, r4, r2, cr3	; <UNPREDICTABLE>
    961c:	39312045 	ldmdbcc	r1!, {r0, r2, r6, sp}
    9620:	39303039 	ldmdbcc	r0!, {r0, r3, r4, r5, ip, sp}
    9624:	694e7300 	stmdbvs	lr, {r8, r9, ip, sp, lr}^
    9628:	616e6b63 	cmnvs	lr, r3, ror #22
    962c:	7000656d 	andvc	r6, r0, sp, ror #10
    9630:	68637475 	stmdavs	r3!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
    9634:	755f7261 	ldrbvc	r7, [pc, #-609]	; 93db <__bss_end__+0x5beb>
    9638:	636f6c6e 	cmnvs	pc, #28160	; 0x6e00
    963c:	2864656b 	stmdacs	r4!, {r0, r1, r3, r5, r6, r8, sl, sp, lr}^
    9640:	2029635f 	eorcs	r6, r9, pc, asr r3
    9644:	7475705f 	ldrbtvc	r7, [r5], #-95	; 0xffffffa1
    9648:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
    964c:	6c6e755f 	cfstr64vs	mvdx7, [lr], #-380	; 0xfffffe84
    9650:	656b636f 	strbvs	r6, [fp, #-879]!	; 0xfffffc91
    9654:	635f2864 	cmpvs	pc, #100, 16	; 0x640000
    9658:	72730029 	rsbsvc	r0, r3, #41	; 0x29
    965c:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xfffff09d
    9660:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
    9664:	4e470073 	mcrmi	0, 2, r0, cr7, cr3, {3}
    9668:	53412055 	movtpl	r2, #4181	; 0x1055
    966c:	332e3220 			; <UNDEFINED> instruction: 0x332e3220
    9670:	00302e30 	eorseq	r2, r0, r0, lsr lr

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
       0:	0000000c 	andeq	r0, r0, ip
       4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
       8:	7c020001 	stcvc	0, cr0, [r2], {1}
       c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
      10:	00000018 	andeq	r0, r0, r8, lsl r0
      14:	00000000 	andeq	r0, r0, r0
      18:	00000144 	andeq	r0, r0, r4, asr #2
      1c:	000000e8 	andeq	r0, r0, r8, ror #1
      20:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
      24:	200e4201 	andcs	r4, lr, r1, lsl #4
      28:	040e6e02 	streq	r6, [lr], #-3586	; 0xfffff1fe
      2c:	00000018 	andeq	r0, r0, r8, lsl r0
      30:	00000000 	andeq	r0, r0, r0
      34:	0000022c 	andeq	r0, r0, ip, lsr #4
      38:	00000140 	andeq	r0, r0, r0, asr #2
      3c:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
      40:	280e4201 	stmdacs	lr, {r0, r9, lr}
      44:	040e9a02 	streq	r9, [lr], #-2562	; 0xfffff5fe
      48:	0000002c 	andeq	r0, r0, ip, lsr #32
      4c:	00000000 	andeq	r0, r0, r0
      50:	0000036c 	andeq	r0, r0, ip, ror #6
      54:	00000104 	andeq	r0, r0, r4, lsl #2
      58:	810c0e42 	tsthi	ip, r2, asr #28
      5c:	83028203 	movwhi	r8, #8707	; 0x2203
      60:	100e4201 	andne	r4, lr, r1, lsl #4
      64:	0e42048e 	cdpeq	4, 4, cr0, cr2, cr14, {4}
      68:	0e760220 	cdpeq	2, 7, cr0, cr6, cr0, {1}
      6c:	0ece4210 	mcreq	2, 6, r4, cr14, cr0, {0}
      70:	c2c3420c 	sbcgt	r4, r3, #12, 4	; 0xc0000000
      74:	00000ec1 	andeq	r0, r0, r1, asr #29
      78:	0000000c 	andeq	r0, r0, ip
      7c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
      80:	7c020001 	stcvc	0, cr0, [r2], {1}
      84:	000d0c0e 	andeq	r0, sp, lr, lsl #24
      88:	00000014 	andeq	r0, r0, r4, lsl r0
      8c:	00000078 	andeq	r0, r0, r8, ror r0
      90:	00000470 	andeq	r0, r0, r0, ror r4
      94:	00000044 	andeq	r0, r0, r4, asr #32
      98:	5e100e42 	cdppl	14, 1, cr0, cr0, cr2, {2}
      9c:	0000000e 	andeq	r0, r0, lr
      a0:	00000014 	andeq	r0, r0, r4, lsl r0
      a4:	00000078 	andeq	r0, r0, r8, ror r0
      a8:	000004b4 			; <UNDEFINED> instruction: 0x000004b4
      ac:	00000044 	andeq	r0, r0, r4, asr #32
      b0:	5e080e42 	cdppl	14, 0, cr0, cr8, cr2, {2}
      b4:	0000000e 	andeq	r0, r0, lr
      b8:	00000014 	andeq	r0, r0, r4, lsl r0
      bc:	00000078 	andeq	r0, r0, r8, ror r0
      c0:	000004f8 	strdeq	r0, [r0], -r8
      c4:	00000070 	andeq	r0, r0, r0, ror r0
      c8:	74100e42 	ldrvc	r0, [r0], #-3650	; 0xfffff1be
      cc:	0000000e 	andeq	r0, r0, lr
      d0:	0000000c 	andeq	r0, r0, ip
      d4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
      d8:	7c020001 	stcvc	0, cr0, [r2], {1}
      dc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
      e0:	00000014 	andeq	r0, r0, r4, lsl r0
      e4:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
      e8:	00000568 	andeq	r0, r0, r8, ror #10
      ec:	00000044 	andeq	r0, r0, r4, asr #32
      f0:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
      f4:	00018e02 	andeq	r8, r1, r2, lsl #28
      f8:	00000014 	andeq	r0, r0, r4, lsl r0
      fc:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     100:	000005ac 	andeq	r0, r0, ip, lsr #11
     104:	00000018 	andeq	r0, r0, r8, lsl r0
     108:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
     10c:	00018e02 	andeq	r8, r1, r2, lsl #28
     110:	00000014 	andeq	r0, r0, r4, lsl r0
     114:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     118:	000005c4 	andeq	r0, r0, r4, asr #11
     11c:	000002e0 	andeq	r0, r0, r0, ror #5
     120:	8e040e42 	cdphi	14, 0, cr0, cr4, cr2, {2}
     124:	580e4201 	stmdapl	lr, {r0, r9, lr}
     128:	0000000c 	andeq	r0, r0, ip
     12c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     130:	7c020001 	stcvc	0, cr0, [r2], {1}
     134:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     138:	0000000c 	andeq	r0, r0, ip
     13c:	00000128 	andeq	r0, r0, r8, lsr #2
     140:	000008a4 	andeq	r0, r0, r4, lsr #17
     144:	0000000c 	andeq	r0, r0, ip
     148:	0000000c 	andeq	r0, r0, ip
     14c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     150:	7c020001 	stcvc	0, cr0, [r2], {1}
     154:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     158:	00000014 	andeq	r0, r0, r4, lsl r0
     15c:	00000148 	andeq	r0, r0, r8, asr #2
     160:	000008b0 			; <UNDEFINED> instruction: 0x000008b0
     164:	00000028 	andeq	r0, r0, r8, lsr #32
     168:	83080e41 	movwhi	r0, #36417	; 0x8e41
     16c:	00018e02 	andeq	r8, r1, r2, lsl #28
     170:	0000000c 	andeq	r0, r0, ip
     174:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     178:	7c020001 	stcvc	0, cr0, [r2], {1}
     17c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     180:	00000018 	andeq	r0, r0, r8, lsl r0
     184:	00000170 	andeq	r0, r0, r0, ror r1
     188:	000008d8 	ldrdeq	r0, [r0], -r8
     18c:	00000058 	andeq	r0, r0, r8, asr r0
     190:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
     194:	86038504 	strhi	r8, [r3], -r4, lsl #10
     198:	00018e02 	andeq	r8, r1, r2, lsl #28
     19c:	0000000c 	andeq	r0, r0, ip
     1a0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     1a4:	7c020001 	stcvc	0, cr0, [r2], {1}
     1a8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     1ac:	0000000c 	andeq	r0, r0, ip
     1b0:	0000019c 	muleq	r0, ip, r1
     1b4:	00000930 	andeq	r0, r0, r0, lsr r9
     1b8:	00000004 	andeq	r0, r0, r4
     1bc:	00000014 	andeq	r0, r0, r4, lsl r0
     1c0:	0000019c 	muleq	r0, ip, r1
     1c4:	00000934 	andeq	r0, r0, r4, lsr r9
     1c8:	00000048 	andeq	r0, r0, r8, asr #32
     1cc:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
     1d0:	00018e02 	andeq	r8, r1, r2, lsl #28
     1d4:	0000000c 	andeq	r0, r0, ip
     1d8:	0000019c 	muleq	r0, ip, r1
     1dc:	0000097c 	andeq	r0, r0, ip, ror r9
     1e0:	0000000c 	andeq	r0, r0, ip
     1e4:	0000000c 	andeq	r0, r0, ip
     1e8:	0000019c 	muleq	r0, ip, r1
     1ec:	00000988 	andeq	r0, r0, r8, lsl #19
     1f0:	00000004 	andeq	r0, r0, r4
     1f4:	00000018 	andeq	r0, r0, r8, lsl r0
     1f8:	0000019c 	muleq	r0, ip, r1
     1fc:	0000098c 	andeq	r0, r0, ip, lsl #19
     200:	0000002c 	andeq	r0, r0, ip, lsr #32
     204:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
     208:	86038504 	strhi	r8, [r3], -r4, lsl #10
     20c:	00018e02 	andeq	r8, r1, r2, lsl #28
     210:	0000000c 	andeq	r0, r0, ip
     214:	0000019c 	muleq	r0, ip, r1
     218:	000009b8 			; <UNDEFINED> instruction: 0x000009b8
     21c:	0000000c 	andeq	r0, r0, ip
     220:	00000014 	andeq	r0, r0, r4, lsl r0
     224:	0000019c 	muleq	r0, ip, r1
     228:	000009c4 	andeq	r0, r0, r4, asr #19
     22c:	00000060 	andeq	r0, r0, r0, rrx
     230:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
     234:	00018e02 	andeq	r8, r1, r2, lsl #28
     238:	0000001c 	andeq	r0, r0, ip, lsl r0
     23c:	0000019c 	muleq	r0, ip, r1
     240:	00000a24 	andeq	r0, r0, r4, lsr #20
     244:	00000078 	andeq	r0, r0, r8, ror r0
     248:	83180e41 	tsthi	r8, #1040	; 0x410
     24c:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
     250:	87038604 	strhi	r8, [r3, -r4, lsl #12]
     254:	00018e02 	andeq	r8, r1, r2, lsl #28
     258:	0000000c 	andeq	r0, r0, ip
     25c:	0000019c 	muleq	r0, ip, r1
     260:	00000a9c 	muleq	r0, ip, sl
     264:	00000002 	andeq	r0, r0, r2
     268:	0000000c 	andeq	r0, r0, ip
     26c:	0000019c 	muleq	r0, ip, r1
     270:	00000a9e 	muleq	r0, lr, sl
     274:	00000002 	andeq	r0, r0, r2
     278:	0000000c 	andeq	r0, r0, ip
     27c:	0000019c 	muleq	r0, ip, r1
     280:	00000aa0 	andeq	r0, r0, r0, lsr #21
     284:	00000002 	andeq	r0, r0, r2
     288:	0000000c 	andeq	r0, r0, ip
     28c:	0000019c 	muleq	r0, ip, r1
     290:	00000aa2 	andeq	r0, r0, r2, lsr #21
     294:	00000002 	andeq	r0, r0, r2
     298:	0000000c 	andeq	r0, r0, ip
     29c:	0000019c 	muleq	r0, ip, r1
     2a0:	00000aa4 	andeq	r0, r0, r4, lsr #21
     2a4:	00000014 	andeq	r0, r0, r4, lsl r0
     2a8:	0000000c 	andeq	r0, r0, ip
     2ac:	0000019c 	muleq	r0, ip, r1
     2b0:	00000ab8 			; <UNDEFINED> instruction: 0x00000ab8
     2b4:	00000014 	andeq	r0, r0, r4, lsl r0
     2b8:	0000000c 	andeq	r0, r0, ip
     2bc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     2c0:	7c020001 	stcvc	0, cr0, [r2], {1}
     2c4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     2c8:	00000024 	andeq	r0, r0, r4, lsr #32
     2cc:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
     2d0:	00000acc 	andeq	r0, r0, ip, asr #21
     2d4:	0000001a 	andeq	r0, r0, sl, lsl r0
     2d8:	82080e41 	andhi	r0, r8, #1040	; 0x410
     2dc:	41018302 	tstmi	r1, r2, lsl #6
     2e0:	038e180e 	orreq	r1, lr, #917504	; 0xe0000
     2e4:	420c0e47 	andmi	r0, ip, #1136	; 0x470
     2e8:	41080ece 	smlabtmi	r8, lr, lr, r0
     2ec:	000ec2c3 	andeq	ip, lr, r3, asr #5
     2f0:	00000028 	andeq	r0, r0, r8, lsr #32
     2f4:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
     2f8:	00000ae8 	andeq	r0, r0, r8, ror #21
     2fc:	00000024 	andeq	r0, r0, r4, lsr #32
     300:	810c0e41 	tsthi	ip, r1, asr #28
     304:	83028203 	movwhi	r8, #8707	; 0x2203
     308:	180e4101 	stmdane	lr, {r0, r8, lr}
     30c:	0e4a048e 	cdpeq	4, 4, cr0, cr10, cr14, {4}
     310:	0ece4210 	mcreq	2, 6, r4, cr14, cr0, {0}
     314:	c2c3410c 	sbcgt	r4, r3, #12, 2
     318:	00000ec1 	andeq	r0, r0, r1, asr #29
     31c:	0000000c 	andeq	r0, r0, ip
     320:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     324:	7c020001 	stcvc	0, cr0, [r2], {1}
     328:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     32c:	0000001c 	andeq	r0, r0, ip, lsl r0
     330:	0000031c 	andeq	r0, r0, ip, lsl r3
     334:	00000b0c 	andeq	r0, r0, ip, lsl #22
     338:	00000038 	andeq	r0, r0, r8, lsr r0
     33c:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
     340:	86058506 	strhi	r8, [r5], -r6, lsl #10
     344:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
     348:	00018e02 	andeq	r8, r1, r2, lsl #28
     34c:	00000020 	andeq	r0, r0, r0, lsr #32
     350:	0000031c 	andeq	r0, r0, ip, lsl r3
     354:	00000b44 	andeq	r0, r0, r4, asr #22
     358:	0000003c 	andeq	r0, r0, ip, lsr r0
     35c:	83200e42 			; <UNDEFINED> instruction: 0x83200e42
     360:	85078408 	strhi	r8, [r7, #-1032]	; 0xfffffbf8
     364:	87058606 	strhi	r8, [r5, -r6, lsl #12]
     368:	89038804 	stmdbhi	r3, {r2, fp, pc}
     36c:	00018e02 	andeq	r8, r1, r2, lsl #28
     370:	0000000c 	andeq	r0, r0, ip
     374:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     378:	7c020001 	stcvc	0, cr0, [r2], {1}
     37c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     380:	00000018 	andeq	r0, r0, r8, lsl r0
     384:	00000370 	andeq	r0, r0, r0, ror r3
     388:	00000b80 	andeq	r0, r0, r0, lsl #23
     38c:	00000048 	andeq	r0, r0, r8, asr #32
     390:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
     394:	86038504 	strhi	r8, [r3], -r4, lsl #10
     398:	00018e02 	andeq	r8, r1, r2, lsl #28
     39c:	0000000c 	andeq	r0, r0, ip
     3a0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     3a4:	7c020001 	stcvc	0, cr0, [r2], {1}
     3a8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     3ac:	0000000c 	andeq	r0, r0, ip
     3b0:	0000039c 	muleq	r0, ip, r3
     3b4:	00000bc8 	andeq	r0, r0, r8, asr #23
     3b8:	00000010 	andeq	r0, r0, r0, lsl r0
     3bc:	0000000c 	andeq	r0, r0, ip
     3c0:	0000039c 	muleq	r0, ip, r3
     3c4:	00000bd8 	ldrdeq	r0, [r0], -r8
     3c8:	00000010 	andeq	r0, r0, r0, lsl r0
     3cc:	0000000c 	andeq	r0, r0, ip
     3d0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     3d4:	7c020001 	stcvc	0, cr0, [r2], {1}
     3d8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     3dc:	0000000c 	andeq	r0, r0, ip
     3e0:	000003cc 	andeq	r0, r0, ip, asr #7
     3e4:	00000be8 	andeq	r0, r0, r8, ror #23
     3e8:	00000010 	andeq	r0, r0, r0, lsl r0
     3ec:	0000000c 	andeq	r0, r0, ip
     3f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     3f4:	7c020001 	stcvc	0, cr0, [r2], {1}
     3f8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     3fc:	00000024 	andeq	r0, r0, r4, lsr #32
     400:	000003ec 	andeq	r0, r0, ip, ror #7
     404:	00000bf8 	strdeq	r0, [r0], -r8
     408:	00000098 	muleq	r0, r8, r0
     40c:	83100e41 	tsthi	r0, #1040	; 0x410
     410:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     414:	54018e02 	strpl	r8, [r1], #-3586	; 0xfffff1fe
     418:	c4c5ce0a 	strbgt	ip, [r5], #3594	; 0xe0a
     41c:	42000ec3 	andmi	r0, r0, #3120	; 0xc30
     420:	0000000b 	andeq	r0, r0, fp
     424:	0000000c 	andeq	r0, r0, ip
     428:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     42c:	7c020001 	stcvc	0, cr0, [r2], {1}
     430:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     434:	00000018 	andeq	r0, r0, r8, lsl r0
     438:	00000424 	andeq	r0, r0, r4, lsr #8
     43c:	00000c90 	muleq	r0, r0, ip
     440:	000000b4 	strheq	r0, [r0], -r4
     444:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
     448:	86038504 	strhi	r8, [r3], -r4, lsl #10
     44c:	00018e02 	andeq	r8, r1, r2, lsl #28
     450:	0000000c 	andeq	r0, r0, ip
     454:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     458:	7c020001 	stcvc	0, cr0, [r2], {1}
     45c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     460:	0000001c 	andeq	r0, r0, ip, lsl r0
     464:	00000450 	andeq	r0, r0, r0, asr r4
     468:	00000d44 	andeq	r0, r0, r4, asr #26
     46c:	0000002e 	andeq	r0, r0, lr, lsr #32
     470:	84040e42 	strhi	r0, [r4], #-3650	; 0xfffff1be
     474:	c40a4b01 	strgt	r4, [sl], #-2817	; 0xfffff4ff
     478:	0b42000e 	bleq	10804b8 <_end+0x804b8>
     47c:	000ec447 	andeq	ip, lr, r7, asr #8
     480:	0000001c 	andeq	r0, r0, ip, lsl r0
     484:	00000450 	andeq	r0, r0, r0, asr r4
     488:	00000d72 	andeq	r0, r0, r2, ror sp
     48c:	00000024 	andeq	r0, r0, r4, lsr #32
     490:	83180e41 	tsthi	r8, #1040	; 0x410
     494:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
     498:	87038604 	strhi	r8, [r3, -r4, lsl #12]
     49c:	00018e02 	andeq	r8, r1, r2, lsl #28
     4a0:	00000018 	andeq	r0, r0, r8, lsl r0
     4a4:	00000450 	andeq	r0, r0, r0, asr r4
     4a8:	00000d96 	muleq	r0, r6, sp
     4ac:	0000001a 	andeq	r0, r0, sl, lsl r0
     4b0:	83100e41 	tsthi	r0, #1040	; 0x410
     4b4:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     4b8:	00018e02 	andeq	r8, r1, r2, lsl #28
     4bc:	0000002c 	andeq	r0, r0, ip, lsr #32
     4c0:	00000450 	andeq	r0, r0, r0, asr r4
     4c4:	00000db0 			; <UNDEFINED> instruction: 0x00000db0
     4c8:	0000022c 	andeq	r0, r0, ip, lsr #4
     4cc:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
     4d0:	86088509 	strhi	r8, [r8], -r9, lsl #10
     4d4:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
     4d8:	8a048905 	bhi	1228f4 <heap_size+0x1028f4>
     4dc:	8e028b03 	vmlahi.f64	d8, d2, d3
     4e0:	980e4201 	stmdals	lr, {r0, r9, lr}
     4e4:	0a770201 	beq	1dc0cf0 <_end+0xdc0cf0>
     4e8:	0b42240e 	bleq	1089528 <_end+0x89528>
     4ec:	0000000c 	andeq	r0, r0, ip
     4f0:	00000450 	andeq	r0, r0, r0, asr r4
     4f4:	00000fdc 	ldrdeq	r0, [r0], -ip
     4f8:	00000014 	andeq	r0, r0, r4, lsl r0
     4fc:	0000000c 	andeq	r0, r0, ip
     500:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     504:	7c020001 	stcvc	0, cr0, [r2], {1}
     508:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     50c:	00000020 	andeq	r0, r0, r0, lsr #32
     510:	000004fc 	strdeq	r0, [r0], -ip
     514:	00000ff0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     518:	000000f2 	strdeq	r0, [r0], -r2
     51c:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
     520:	86078508 	strhi	r8, [r7], -r8, lsl #10
     524:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
     528:	8a038904 	bhi	e2940 <heap_size+0xc2940>
     52c:	00018e02 	andeq	r8, r1, r2, lsl #28
     530:	0000002c 	andeq	r0, r0, ip, lsr #32
     534:	000004fc 	strdeq	r0, [r0], -ip
     538:	000010e4 	andeq	r1, r0, r4, ror #1
     53c:	00000238 	andeq	r0, r0, r8, lsr r2
     540:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
     544:	86088509 	strhi	r8, [r8], -r9, lsl #10
     548:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
     54c:	8a048905 	bhi	122968 <heap_size+0x102968>
     550:	8e028b03 	vmlahi.f64	d8, d2, d3
     554:	380e4301 	stmdacc	lr, {r0, r8, r9, lr}
     558:	0e0a9b02 	vmlaeq.f64	d9, d10, d2
     55c:	000b4224 	andeq	r4, fp, r4, lsr #4
     560:	0000000c 	andeq	r0, r0, ip
     564:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     568:	7c020001 	stcvc	0, cr0, [r2], {1}
     56c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     570:	0000002c 	andeq	r0, r0, ip, lsr #32
     574:	00000560 	andeq	r0, r0, r0, ror #10
     578:	0000131c 	andeq	r1, r0, ip, lsl r3
     57c:	00000028 	andeq	r0, r0, r8, lsr #32
     580:	810c0e41 	tsthi	ip, r1, asr #28
     584:	83028203 	movwhi	r8, #8707	; 0x2203
     588:	200e4101 	andcs	r4, lr, r1, lsl #2
     58c:	048e0584 	streq	r0, [lr], #1412	; 0x584
     590:	42140e4e 	andsmi	r0, r4, #1248	; 0x4e0
     594:	0c0ec4ce 	cfstrseq	mvf12, [lr], {206}	; 0xce
     598:	c1c2c341 	bicgt	ip, r2, r1, asr #6
     59c:	0000000e 	andeq	r0, r0, lr
     5a0:	00000030 	andeq	r0, r0, r0, lsr r0
     5a4:	00000560 	andeq	r0, r0, r0, ror #10
     5a8:	00001344 	andeq	r1, r0, r4, asr #6
     5ac:	00000030 	andeq	r0, r0, r0, lsr r0
     5b0:	80100e41 	andshi	r0, r0, r1, asr #28
     5b4:	82038104 	andhi	r8, r3, #4, 2
     5b8:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
     5bc:	0684200e 	streq	r2, [r4], lr
     5c0:	0e4f058e 	cdpeq	5, 4, cr0, cr15, cr14, {4}
     5c4:	c4ce4218 	strbgt	r4, [lr], #536	; 0x218
     5c8:	c341100e 	movtgt	r1, #4110	; 0x100e
     5cc:	0ec0c1c2 	acseqdm	f4, f2
     5d0:	00000000 	andeq	r0, r0, r0
     5d4:	0000000c 	andeq	r0, r0, ip
     5d8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     5dc:	7c020001 	stcvc	0, cr0, [r2], {1}
     5e0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     5e4:	00000018 	andeq	r0, r0, r8, lsl r0
     5e8:	000005d4 	ldrdeq	r0, [r0], -r4
     5ec:	00001374 	andeq	r1, r0, r4, ror r3
     5f0:	000000b8 	strheq	r0, [r0], -r8
     5f4:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
     5f8:	86038504 	strhi	r8, [r3], -r4, lsl #10
     5fc:	00018e02 	andeq	r8, r1, r2, lsl #28
     600:	0000000c 	andeq	r0, r0, ip
     604:	000005d4 	ldrdeq	r0, [r0], -r4
     608:	0000142c 	andeq	r1, r0, ip, lsr #8
     60c:	00000010 	andeq	r0, r0, r0, lsl r0
     610:	0000000c 	andeq	r0, r0, ip
     614:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     618:	7c020001 	stcvc	0, cr0, [r2], {1}
     61c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     620:	00000018 	andeq	r0, r0, r8, lsl r0
     624:	00000610 	andeq	r0, r0, r0, lsl r6
     628:	0000143c 	andeq	r1, r0, ip, lsr r4
     62c:	00000020 	andeq	r0, r0, r0, lsr #32
     630:	83100e41 	tsthi	r0, #1040	; 0x410
     634:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     638:	00018e02 	andeq	r8, r1, r2, lsl #28
     63c:	0000000c 	andeq	r0, r0, ip
     640:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     644:	7c020001 	stcvc	0, cr0, [r2], {1}
     648:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     64c:	00000030 	andeq	r0, r0, r0, lsr r0
     650:	0000063c 	andeq	r0, r0, ip, lsr r6
     654:	0000145c 	andeq	r1, r0, ip, asr r4
     658:	00000030 	andeq	r0, r0, r0, lsr r0
     65c:	80100e41 	andshi	r0, r0, r1, asr #28
     660:	82038104 	andhi	r8, r3, #4, 2
     664:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
     668:	0684200e 	streq	r2, [r4], lr
     66c:	0e4f058e 	cdpeq	5, 4, cr0, cr15, cr14, {4}
     670:	c4ce4218 	strbgt	r4, [lr], #536	; 0x218
     674:	c341100e 	movtgt	r1, #4110	; 0x100e
     678:	0ec0c1c2 	acseqdm	f4, f2
     67c:	00000000 	andeq	r0, r0, r0
     680:	0000002c 	andeq	r0, r0, ip, lsr #32
     684:	0000063c 	andeq	r0, r0, ip, lsr r6
     688:	0000148c 	andeq	r1, r0, ip, lsl #9
     68c:	00000028 	andeq	r0, r0, r8, lsr #32
     690:	810c0e41 	tsthi	ip, r1, asr #28
     694:	83028203 	movwhi	r8, #8707	; 0x2203
     698:	200e4101 	andcs	r4, lr, r1, lsl #2
     69c:	048e0584 	streq	r0, [lr], #1412	; 0x584
     6a0:	42140e4e 	andsmi	r0, r4, #1248	; 0x4e0
     6a4:	0c0ec4ce 	cfstrseq	mvf12, [lr], {206}	; 0xce
     6a8:	c1c2c341 	bicgt	ip, r2, r1, asr #6
     6ac:	0000000e 	andeq	r0, r0, lr
     6b0:	0000000c 	andeq	r0, r0, ip
     6b4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     6b8:	7c020001 	stcvc	0, cr0, [r2], {1}
     6bc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     6c0:	00000014 	andeq	r0, r0, r4, lsl r0
     6c4:	000006b0 			; <UNDEFINED> instruction: 0x000006b0
     6c8:	000014b4 			; <UNDEFINED> instruction: 0x000014b4
     6cc:	00000022 	andeq	r0, r0, r2, lsr #32
     6d0:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
     6d4:	00018e02 	andeq	r8, r1, r2, lsl #28
     6d8:	0000000c 	andeq	r0, r0, ip
     6dc:	000006b0 			; <UNDEFINED> instruction: 0x000006b0
     6e0:	000014d6 	ldrdeq	r1, [r0], -r6
     6e4:	00000004 	andeq	r0, r0, r4
     6e8:	00000024 	andeq	r0, r0, r4, lsr #32
     6ec:	000006b0 			; <UNDEFINED> instruction: 0x000006b0
     6f0:	000014da 	ldrdeq	r1, [r0], -sl
     6f4:	00000038 	andeq	r0, r0, r8, lsr r0
     6f8:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
     6fc:	86058506 	strhi	r8, [r5], -r6, lsl #10
     700:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
     704:	58018e02 	stmdapl	r1, {r1, r9, sl, fp, pc}
     708:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
     70c:	000ec4c5 	andeq	ip, lr, r5, asr #9
     710:	00000014 	andeq	r0, r0, r4, lsl r0
     714:	000006b0 			; <UNDEFINED> instruction: 0x000006b0
     718:	00001512 	andeq	r1, r0, r2, lsl r5
     71c:	00000024 	andeq	r0, r0, r4, lsr #32
     720:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
     724:	00018e02 	andeq	r8, r1, r2, lsl #28
     728:	0000000c 	andeq	r0, r0, ip
     72c:	000006b0 			; <UNDEFINED> instruction: 0x000006b0
     730:	00001536 	andeq	r1, r0, r6, lsr r5
     734:	00000008 	andeq	r0, r0, r8
     738:	0000000c 	andeq	r0, r0, ip
     73c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     740:	7c020001 	stcvc	0, cr0, [r2], {1}
     744:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     748:	0000000c 	andeq	r0, r0, ip
     74c:	00000738 	andeq	r0, r0, r8, lsr r7
     750:	0000153e 	andeq	r1, r0, lr, lsr r5
     754:	00000004 	andeq	r0, r0, r4
     758:	0000000c 	andeq	r0, r0, ip
     75c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     760:	7c020001 	stcvc	0, cr0, [r2], {1}
     764:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     768:	0000001c 	andeq	r0, r0, ip, lsl r0
     76c:	00000758 	andeq	r0, r0, r8, asr r7
     770:	00001544 	andeq	r1, r0, r4, asr #10
     774:	000000a4 	andeq	r0, r0, r4, lsr #1
     778:	83180e41 	tsthi	r8, #1040	; 0x410
     77c:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
     780:	87038604 	strhi	r8, [r3, -r4, lsl #12]
     784:	00018e02 	andeq	r8, r1, r2, lsl #28
     788:	0000000c 	andeq	r0, r0, ip
     78c:	00000758 	andeq	r0, r0, r8, asr r7
     790:	000015e8 	andeq	r1, r0, r8, ror #11
     794:	00000010 	andeq	r0, r0, r0, lsl r0
     798:	0000000c 	andeq	r0, r0, ip
     79c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     7a0:	7c020001 	stcvc	0, cr0, [r2], {1}
     7a4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     7a8:	00000018 	andeq	r0, r0, r8, lsl r0
     7ac:	00000798 	muleq	r0, r8, r7
     7b0:	000015f8 	strdeq	r1, [r0], -r8
     7b4:	00000024 	andeq	r0, r0, r4, lsr #32
     7b8:	83100e41 	tsthi	r0, #1040	; 0x410
     7bc:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     7c0:	00018e02 	andeq	r8, r1, r2, lsl #28
     7c4:	0000000c 	andeq	r0, r0, ip
     7c8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     7cc:	7c020001 	stcvc	0, cr0, [r2], {1}
     7d0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     7d4:	00000018 	andeq	r0, r0, r8, lsl r0
     7d8:	000007c4 	andeq	r0, r0, r4, asr #15
     7dc:	0000161c 	andeq	r1, r0, ip, lsl r6
     7e0:	000000dc 	ldrdeq	r0, [r0], -ip
     7e4:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
     7e8:	86038504 	strhi	r8, [r3], -r4, lsl #10
     7ec:	00018e02 	andeq	r8, r1, r2, lsl #28
     7f0:	0000000c 	andeq	r0, r0, ip
     7f4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     7f8:	7c020001 	stcvc	0, cr0, [r2], {1}
     7fc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     800:	00000018 	andeq	r0, r0, r8, lsl r0
     804:	000007f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     808:	000016f8 	strdeq	r1, [r0], -r8
     80c:	00000020 	andeq	r0, r0, r0, lsr #32
     810:	83100e41 	tsthi	r0, #1040	; 0x410
     814:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     818:	00018e02 	andeq	r8, r1, r2, lsl #28
     81c:	0000000c 	andeq	r0, r0, ip
     820:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     824:	7c020001 	stcvc	0, cr0, [r2], {1}
     828:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     82c:	0000001c 	andeq	r0, r0, ip, lsl r0
     830:	0000081c 	andeq	r0, r0, ip, lsl r8
     834:	00001718 	andeq	r1, r0, r8, lsl r7
     838:	0000010c 	andeq	r0, r0, ip, lsl #2
     83c:	84180e43 	ldrhi	r0, [r8], #-3651	; 0xfffff1bd
     840:	86058506 	strhi	r8, [r5], -r6, lsl #10
     844:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
     848:	00018e02 	andeq	r8, r1, r2, lsl #28
     84c:	00000024 	andeq	r0, r0, r4, lsr #32
     850:	0000081c 	andeq	r0, r0, ip, lsl r8
     854:	00001824 	andeq	r1, r0, r4, lsr #16
     858:	00000054 	andeq	r0, r0, r4, asr r0
     85c:	83100e41 	tsthi	r0, #1040	; 0x410
     860:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     864:	54018e02 	strpl	r8, [r1], #-3586	; 0xfffff1fe
     868:	c4c5ce0a 	strbgt	ip, [r5], #3594	; 0xe0a
     86c:	42000ec3 	andmi	r0, r0, #3120	; 0xc30
     870:	0000000b 	andeq	r0, r0, fp
     874:	0000000c 	andeq	r0, r0, ip
     878:	0000081c 	andeq	r0, r0, ip, lsl r8
     87c:	00001878 	andeq	r1, r0, r8, ror r8
     880:	00000024 	andeq	r0, r0, r4, lsr #32
     884:	0000000c 	andeq	r0, r0, ip
     888:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     88c:	7c020001 	stcvc	0, cr0, [r2], {1}
     890:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     894:	00000028 	andeq	r0, r0, r8, lsr #32
     898:	00000884 	andeq	r0, r0, r4, lsl #17
     89c:	0000189c 	muleq	r0, ip, r8
     8a0:	000002a4 	andeq	r0, r0, r4, lsr #5
     8a4:	84300e43 	ldrthi	r0, [r0], #-3651	; 0xfffff1bd
     8a8:	86088509 	strhi	r8, [r8], -r9, lsl #10
     8ac:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
     8b0:	8a048905 	bhi	122ccc <heap_size+0x102ccc>
     8b4:	8e028b03 	vmlahi.f64	d8, d2, d3
     8b8:	0e0a4601 	cfmadd32eq	mvax0, mvfx4, mvfx10, mvfx1
     8bc:	000b4224 	andeq	r4, fp, r4, lsr #4
     8c0:	0000000c 	andeq	r0, r0, ip
     8c4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     8c8:	7c020001 	stcvc	0, cr0, [r2], {1}
     8cc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     8d0:	00000018 	andeq	r0, r0, r8, lsl r0
     8d4:	000008c0 	andeq	r0, r0, r0, asr #17
     8d8:	00001b40 	andeq	r1, r0, r0, asr #22
     8dc:	00000024 	andeq	r0, r0, r4, lsr #32
     8e0:	83100e41 	tsthi	r0, #1040	; 0x410
     8e4:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     8e8:	00018e02 	andeq	r8, r1, r2, lsl #28
     8ec:	0000000c 	andeq	r0, r0, ip
     8f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     8f4:	7c020001 	stcvc	0, cr0, [r2], {1}
     8f8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     8fc:	00000020 	andeq	r0, r0, r0, lsr #32
     900:	000008ec 	andeq	r0, r0, ip, ror #17
     904:	00001b64 	andeq	r1, r0, r4, ror #22
     908:	00000048 	andeq	r0, r0, r8, asr #32
     90c:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
     910:	86038504 	strhi	r8, [r3], -r4, lsl #10
     914:	44018e02 	strmi	r8, [r1], #-3586	; 0xfffff1fe
     918:	0e5e680e 	cdpeq	8, 5, cr6, cr14, cr14, {0}
     91c:	00000010 	andeq	r0, r0, r0, lsl r0
     920:	00000020 	andeq	r0, r0, r0, lsr #32
     924:	000008ec 	andeq	r0, r0, ip, ror #17
     928:	00001bac 	andeq	r1, r0, ip, lsr #23
     92c:	00000080 	andeq	r0, r0, r0, lsl #1
     930:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
     934:	86038504 	strhi	r8, [r3], -r4, lsl #10
     938:	4b018e02 	blmi	64148 <heap_size+0x44148>
     93c:	41100e0a 	tstmi	r0, sl, lsl #28
     940:	0000000b 	andeq	r0, r0, fp
     944:	0000000c 	andeq	r0, r0, ip
     948:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     94c:	7c020001 	stcvc	0, cr0, [r2], {1}
     950:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     954:	00000014 	andeq	r0, r0, r4, lsl r0
     958:	00000944 	andeq	r0, r0, r4, asr #18
     95c:	00001c2c 	andeq	r1, r0, ip, lsr #24
     960:	0000001c 	andeq	r0, r0, ip, lsl r0
     964:	84080e43 	strhi	r0, [r8], #-3651	; 0xfffff1bd
     968:	00018e02 	andeq	r8, r1, r2, lsl #28
     96c:	0000000c 	andeq	r0, r0, ip
     970:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     974:	7c020001 	stcvc	0, cr0, [r2], {1}
     978:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     97c:	00000014 	andeq	r0, r0, r4, lsl r0
     980:	0000096c 	andeq	r0, r0, ip, ror #18
     984:	00001c48 	andeq	r1, r0, r8, asr #24
     988:	00000016 	andeq	r0, r0, r6, lsl r0
     98c:	84080e43 	strhi	r0, [r8], #-3651	; 0xfffff1bd
     990:	00018e02 	andeq	r8, r1, r2, lsl #28
     994:	0000000c 	andeq	r0, r0, ip
     998:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     99c:	7c020001 	stcvc	0, cr0, [r2], {1}
     9a0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     9a4:	00000014 	andeq	r0, r0, r4, lsl r0
     9a8:	00000994 	muleq	r0, r4, r9
     9ac:	00001c5e 	andeq	r1, r0, lr, asr ip
     9b0:	00000032 	andeq	r0, r0, r2, lsr r0
     9b4:	84080e44 	strhi	r0, [r8], #-3652	; 0xfffff1bc
     9b8:	00018e02 	andeq	r8, r1, r2, lsl #28
     9bc:	0000000c 	andeq	r0, r0, ip
     9c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     9c4:	7c020001 	stcvc	0, cr0, [r2], {1}
     9c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     9cc:	0000000c 	andeq	r0, r0, ip
     9d0:	000009bc 			; <UNDEFINED> instruction: 0x000009bc
     9d4:	00001c90 	muleq	r0, r0, ip
     9d8:	00000002 	andeq	r0, r0, r2
     9dc:	0000000c 	andeq	r0, r0, ip
     9e0:	000009bc 			; <UNDEFINED> instruction: 0x000009bc
     9e4:	00001c92 	muleq	r0, r2, ip
     9e8:	00000002 	andeq	r0, r0, r2
     9ec:	0000000c 	andeq	r0, r0, ip
     9f0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     9f4:	7c020001 	stcvc	0, cr0, [r2], {1}
     9f8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     9fc:	00000028 	andeq	r0, r0, r8, lsr #32
     a00:	000009ec 	andeq	r0, r0, ip, ror #19
     a04:	00001c94 	muleq	r0, r4, ip
     a08:	0000004c 	andeq	r0, r0, ip, asr #32
     a0c:	83180e41 	tsthi	r8, #1040	; 0x410
     a10:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
     a14:	87038604 	strhi	r8, [r3, -r4, lsl #12]
     a18:	47018e02 	strmi	r8, [r1, -r2, lsl #28]
     a1c:	c6c7ce0a 	strbgt	ip, [r7], sl, lsl #28
     a20:	0ec3c4c5 	cdpeq	4, 12, cr12, cr3, cr5, {6}
     a24:	000b4200 	andeq	r4, fp, r0, lsl #4
     a28:	0000000c 	andeq	r0, r0, ip
     a2c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     a30:	7c020001 	stcvc	0, cr0, [r2], {1}
     a34:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     a38:	00000030 	andeq	r0, r0, r0, lsr r0
     a3c:	00000a28 	andeq	r0, r0, r8, lsr #20
     a40:	00001ce0 	andeq	r1, r0, r0, ror #25
     a44:	000002a0 	andeq	r0, r0, r0, lsr #5
     a48:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
     a4c:	86088509 	strhi	r8, [r8], -r9, lsl #10
     a50:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
     a54:	8a048905 	bhi	122e70 <heap_size+0x102e70>
     a58:	8e028b03 	vmlahi.f64	d8, d2, d3
     a5c:	b00e4201 	andlt	r4, lr, r1, lsl #4
     a60:	01400305 	cmpeq	r0, r5, lsl #6
     a64:	42240e0a 	eormi	r0, r4, #10, 28	; 0xa0
     a68:	0000000b 	andeq	r0, r0, fp
     a6c:	00000028 	andeq	r0, r0, r8, lsr #32
     a70:	00000a28 	andeq	r0, r0, r8, lsr #20
     a74:	00001f80 	andeq	r1, r0, r0, lsl #31
     a78:	00000058 	andeq	r0, r0, r8, asr r0
     a7c:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
     a80:	86058506 	strhi	r8, [r5], -r6, lsl #10
     a84:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
     a88:	55018e02 	strpl	r8, [r1, #-3586]	; 0xfffff1fe
     a8c:	c7c8ce0a 	strbgt	ip, [r8, sl, lsl #28]
     a90:	0ec4c5c6 	cdpeq	5, 12, cr12, cr4, cr6, {6}
     a94:	000b4200 	andeq	r4, fp, r0, lsl #4
     a98:	0000000c 	andeq	r0, r0, ip
     a9c:	00000a28 	andeq	r0, r0, r8, lsr #20
     aa0:	00001fd8 	ldrdeq	r1, [r0], -r8
     aa4:	00000014 	andeq	r0, r0, r4, lsl r0
     aa8:	00000028 	andeq	r0, r0, r8, lsr #32
     aac:	00000a28 	andeq	r0, r0, r8, lsr #20
     ab0:	00001fec 	andeq	r1, r0, ip, ror #31
     ab4:	00000050 	andeq	r0, r0, r0, asr r0
     ab8:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
     abc:	86058506 	strhi	r8, [r5], -r6, lsl #10
     ac0:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
     ac4:	53018e02 	movwpl	r8, #7682	; 0x1e02
     ac8:	c7c8ce0a 	strbgt	ip, [r8, sl, lsl #28]
     acc:	0ec4c5c6 	cdpeq	5, 12, cr12, cr4, cr6, {6}
     ad0:	000b4200 	andeq	r4, fp, r0, lsl #4
     ad4:	0000000c 	andeq	r0, r0, ip
     ad8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     adc:	7c020001 	stcvc	0, cr0, [r2], {1}
     ae0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     ae4:	0000001c 	andeq	r0, r0, ip, lsl r0
     ae8:	00000ad4 	ldrdeq	r0, [r0], -r4
     aec:	0000203c 	andeq	r2, r0, ip, lsr r0
     af0:	000000ba 	strheq	r0, [r0], -sl
     af4:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
     af8:	86058506 	strhi	r8, [r5], -r6, lsl #10
     afc:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
     b00:	00018e02 	andeq	r8, r1, r2, lsl #28
     b04:	0000002c 	andeq	r0, r0, ip, lsr #32
     b08:	00000ad4 	ldrdeq	r0, [r0], -r4
     b0c:	000020f8 	strdeq	r2, [r0], -r8
     b10:	000001ec 	andeq	r0, r0, ip, ror #3
     b14:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
     b18:	86088509 	strhi	r8, [r8], -r9, lsl #10
     b1c:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
     b20:	8a048905 	bhi	122f3c <heap_size+0x102f3c>
     b24:	8e028b03 	vmlahi.f64	d8, d2, d3
     b28:	400e4601 	andmi	r4, lr, r1, lsl #12
     b2c:	0e0ad902 	vmlaeq.f16	s26, s20, s4	; <UNPREDICTABLE>
     b30:	000b4224 	andeq	r4, fp, r4, lsr #4
     b34:	0000000c 	andeq	r0, r0, ip
     b38:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     b3c:	7c020001 	stcvc	0, cr0, [r2], {1}
     b40:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     b44:	00000018 	andeq	r0, r0, r8, lsl r0
     b48:	00000b34 	andeq	r0, r0, r4, lsr fp
     b4c:	000022e4 	andeq	r2, r0, r4, ror #5
     b50:	00000024 	andeq	r0, r0, r4, lsr #32
     b54:	83100e41 	tsthi	r0, #1040	; 0x410
     b58:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     b5c:	00018e02 	andeq	r8, r1, r2, lsl #28
     b60:	0000000c 	andeq	r0, r0, ip
     b64:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     b68:	7c020001 	stcvc	0, cr0, [r2], {1}
     b6c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     b70:	00000020 	andeq	r0, r0, r0, lsr #32
     b74:	00000b60 	andeq	r0, r0, r0, ror #22
     b78:	00002308 	andeq	r2, r0, r8, lsl #6
     b7c:	0000001a 	andeq	r0, r0, sl, lsl r0
     b80:	83100e41 	tsthi	r0, #1040	; 0x410
     b84:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     b88:	4a018e02 	bmi	64398 <heap_size+0x44398>
     b8c:	c3c4c5ce 	bicgt	ip, r4, #864026624	; 0x33800000
     b90:	0000000e 	andeq	r0, r0, lr
     b94:	00000024 	andeq	r0, r0, r4, lsr #32
     b98:	00000b60 	andeq	r0, r0, r0, ror #22
     b9c:	00002324 	andeq	r2, r0, r4, lsr #6
     ba0:	000000b8 	strheq	r0, [r0], -r8
     ba4:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
     ba8:	86038504 	strhi	r8, [r3], -r4, lsl #10
     bac:	02018e02 	andeq	r8, r1, #2, 28
     bb0:	c6ce0a41 	strbgt	r0, [lr], r1, asr #20
     bb4:	000ec4c5 	andeq	ip, lr, r5, asr #9
     bb8:	00000b42 	andeq	r0, r0, r2, asr #22
     bbc:	0000000c 	andeq	r0, r0, ip
     bc0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     bc4:	7c020001 	stcvc	0, cr0, [r2], {1}
     bc8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     bcc:	0000000c 	andeq	r0, r0, ip
     bd0:	00000bbc 			; <UNDEFINED> instruction: 0x00000bbc
     bd4:	000023dc 	ldrdeq	r2, [r0], -ip
     bd8:	00000012 	andeq	r0, r0, r2, lsl r0
     bdc:	0000001c 	andeq	r0, r0, ip, lsl r0
     be0:	00000bbc 			; <UNDEFINED> instruction: 0x00000bbc
     be4:	000023f0 	strdeq	r2, [r0], -r0
     be8:	00000118 	andeq	r0, r0, r8, lsl r1
     bec:	83180e41 	tsthi	r8, #1040	; 0x410
     bf0:	85058406 	strhi	r8, [r5, #-1030]	; 0xfffffbfa
     bf4:	87038604 	strhi	r8, [r3, -r4, lsl #12]
     bf8:	00018e02 	andeq	r8, r1, r2, lsl #28
     bfc:	0000000c 	andeq	r0, r0, ip
     c00:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     c04:	7c020001 	stcvc	0, cr0, [r2], {1}
     c08:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     c0c:	00000018 	andeq	r0, r0, r8, lsl r0
     c10:	00000bfc 	strdeq	r0, [r0], -ip
     c14:	00002508 	andeq	r2, r0, r8, lsl #10
     c18:	00000062 	andeq	r0, r0, r2, rrx
     c1c:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
     c20:	86038504 	strhi	r8, [r3], -r4, lsl #10
     c24:	00018e02 	andeq	r8, r1, r2, lsl #28
     c28:	0000000c 	andeq	r0, r0, ip
     c2c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     c30:	7c020001 	stcvc	0, cr0, [r2], {1}
     c34:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     c38:	00000024 	andeq	r0, r0, r4, lsr #32
     c3c:	00000c28 	andeq	r0, r0, r8, lsr #24
     c40:	0000256a 	andeq	r2, r0, sl, ror #10
     c44:	0000010a 	andeq	r0, r0, sl, lsl #2
     c48:	83280e42 			; <UNDEFINED> instruction: 0x83280e42
     c4c:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
     c50:	87078608 	strhi	r8, [r7, -r8, lsl #12]
     c54:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
     c58:	8b038a04 	blhi	e3470 <heap_size+0xc3470>
     c5c:	00018e02 	andeq	r8, r1, r2, lsl #28
     c60:	00000018 	andeq	r0, r0, r8, lsl r0
     c64:	00000c28 	andeq	r0, r0, r8, lsr #24
     c68:	00002674 	andeq	r2, r0, r4, ror r6
     c6c:	00000024 	andeq	r0, r0, r4, lsr #32
     c70:	84180e41 	ldrhi	r0, [r8], #-3649	; 0xfffff1bf
     c74:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
     c78:	0c0e4b01 			; <UNDEFINED> instruction: 0x0c0e4b01
     c7c:	00000014 	andeq	r0, r0, r4, lsl r0
     c80:	00000c28 	andeq	r0, r0, r8, lsr #24
     c84:	00002698 	muleq	r0, r8, r6
     c88:	0000001c 	andeq	r0, r0, ip, lsl r0
     c8c:	8e100e41 	cdphi	14, 1, cr0, cr0, cr1, {2}
     c90:	040e4901 	streq	r4, [lr], #-2305	; 0xfffff6ff
     c94:	00000018 	andeq	r0, r0, r8, lsl r0
     c98:	00000c28 	andeq	r0, r0, r8, lsr #24
     c9c:	000026b4 			; <UNDEFINED> instruction: 0x000026b4
     ca0:	0000002c 	andeq	r0, r0, ip, lsr #32
     ca4:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
     ca8:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
     cac:	0c0e4e01 	stceq	14, cr4, [lr], {1}
     cb0:	0000000c 	andeq	r0, r0, ip
     cb4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     cb8:	7c020001 	stcvc	0, cr0, [r2], {1}
     cbc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     cc0:	00000024 	andeq	r0, r0, r4, lsr #32
     cc4:	00000cb0 			; <UNDEFINED> instruction: 0x00000cb0
     cc8:	000026e0 	andeq	r2, r0, r0, ror #13
     ccc:	00000100 	andeq	r0, r0, r0, lsl #2
     cd0:	83280e42 			; <UNDEFINED> instruction: 0x83280e42
     cd4:	8509840a 	strhi	r8, [r9, #-1034]	; 0xfffffbf6
     cd8:	87078608 	strhi	r8, [r7, -r8, lsl #12]
     cdc:	89058806 	stmdbhi	r5, {r1, r2, fp, pc}
     ce0:	8b038a04 	blhi	e34f8 <heap_size+0xc34f8>
     ce4:	00018e02 	andeq	r8, r1, r2, lsl #28
     ce8:	00000018 	andeq	r0, r0, r8, lsl r0
     cec:	00000cb0 			; <UNDEFINED> instruction: 0x00000cb0
     cf0:	000027e0 	andeq	r2, r0, r0, ror #15
     cf4:	00000024 	andeq	r0, r0, r4, lsr #32
     cf8:	84180e41 	ldrhi	r0, [r8], #-3649	; 0xfffff1bf
     cfc:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
     d00:	0c0e4b01 			; <UNDEFINED> instruction: 0x0c0e4b01
     d04:	00000014 	andeq	r0, r0, r4, lsl r0
     d08:	00000cb0 			; <UNDEFINED> instruction: 0x00000cb0
     d0c:	00002804 	andeq	r2, r0, r4, lsl #16
     d10:	0000001c 	andeq	r0, r0, ip, lsl r0
     d14:	8e100e41 	cdphi	14, 1, cr0, cr0, cr1, {2}
     d18:	040e4901 	streq	r4, [lr], #-2305	; 0xfffff6ff
     d1c:	00000018 	andeq	r0, r0, r8, lsl r0
     d20:	00000cb0 			; <UNDEFINED> instruction: 0x00000cb0
     d24:	00002820 	andeq	r2, r0, r0, lsr #16
     d28:	0000002c 	andeq	r0, r0, ip, lsr #32
     d2c:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
     d30:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
     d34:	0c0e4e01 	stceq	14, cr4, [lr], {1}
     d38:	0000000c 	andeq	r0, r0, ip
     d3c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     d40:	7c020001 	stcvc	0, cr0, [r2], {1}
     d44:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     d48:	0000001c 	andeq	r0, r0, ip, lsl r0
     d4c:	00000d38 	andeq	r0, r0, r8, lsr sp
     d50:	0000284c 	andeq	r2, r0, ip, asr #16
     d54:	0000006e 	andeq	r0, r0, lr, rrx
     d58:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
     d5c:	86058506 	strhi	r8, [r5], -r6, lsl #10
     d60:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
     d64:	00018e02 	andeq	r8, r1, r2, lsl #28
     d68:	00000018 	andeq	r0, r0, r8, lsl r0
     d6c:	00000d38 	andeq	r0, r0, r8, lsr sp
     d70:	000028bc 			; <UNDEFINED> instruction: 0x000028bc
     d74:	000000e4 	andeq	r0, r0, r4, ror #1
     d78:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
     d7c:	86038504 	strhi	r8, [r3], -r4, lsl #10
     d80:	00018e02 	andeq	r8, r1, r2, lsl #28
     d84:	0000000c 	andeq	r0, r0, ip
     d88:	00000d38 	andeq	r0, r0, r8, lsr sp
     d8c:	000029a0 	andeq	r2, r0, r0, lsr #19
     d90:	00000010 	andeq	r0, r0, r0, lsl r0
     d94:	0000000c 	andeq	r0, r0, ip
     d98:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     d9c:	7c020001 	stcvc	0, cr0, [r2], {1}
     da0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     da4:	00000018 	andeq	r0, r0, r8, lsl r0
     da8:	00000d94 	muleq	r0, r4, sp
     dac:	000029b0 			; <UNDEFINED> instruction: 0x000029b0
     db0:	00000024 	andeq	r0, r0, r4, lsr #32
     db4:	83100e41 	tsthi	r0, #1040	; 0x410
     db8:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     dbc:	00018e02 	andeq	r8, r1, r2, lsl #28
     dc0:	0000000c 	andeq	r0, r0, ip
     dc4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     dc8:	7c020001 	stcvc	0, cr0, [r2], {1}
     dcc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     dd0:	00000018 	andeq	r0, r0, r8, lsl r0
     dd4:	00000dc0 	andeq	r0, r0, r0, asr #27
     dd8:	000029d4 	ldrdeq	r2, [r0], -r4
     ddc:	00000020 	andeq	r0, r0, r0, lsr #32
     de0:	83100e41 	tsthi	r0, #1040	; 0x410
     de4:	85038404 	strhi	r8, [r3, #-1028]	; 0xfffffbfc
     de8:	00018e02 	andeq	r8, r1, r2, lsl #28
     dec:	0000000c 	andeq	r0, r0, ip
     df0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     df4:	7c020001 	stcvc	0, cr0, [r2], {1}
     df8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     dfc:	00000014 	andeq	r0, r0, r4, lsl r0
     e00:	00000dec 	andeq	r0, r0, ip, ror #27
     e04:	000029f4 	strdeq	r2, [r0], -r4
     e08:	00000038 	andeq	r0, r0, r8, lsr r0
     e0c:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
     e10:	00018e02 	andeq	r8, r1, r2, lsl #28
     e14:	0000000c 	andeq	r0, r0, ip
     e18:	00000dec 	andeq	r0, r0, ip, ror #27
     e1c:	00002a2c 	andeq	r2, r0, ip, lsr #20
     e20:	0000001c 	andeq	r0, r0, ip, lsl r0
     e24:	0000000c 	andeq	r0, r0, ip
     e28:	00000dec 	andeq	r0, r0, ip, ror #27
     e2c:	00002a48 	andeq	r2, r0, r8, asr #20
     e30:	00000006 	andeq	r0, r0, r6
     e34:	0000000c 	andeq	r0, r0, ip
     e38:	00000dec 	andeq	r0, r0, ip, ror #27
     e3c:	00002a50 	andeq	r2, r0, r0, asr sl
     e40:	0000001c 	andeq	r0, r0, ip, lsl r0
     e44:	0000000c 	andeq	r0, r0, ip
     e48:	00000dec 	andeq	r0, r0, ip, ror #27
     e4c:	00002a6c 	andeq	r2, r0, ip, ror #20
     e50:	00000010 	andeq	r0, r0, r0, lsl r0
     e54:	0000000c 	andeq	r0, r0, ip
     e58:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     e5c:	7c020001 	stcvc	0, cr0, [r2], {1}
     e60:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     e64:	00000018 	andeq	r0, r0, r8, lsl r0
     e68:	00000e54 	andeq	r0, r0, r4, asr lr
     e6c:	00002a7c 	andeq	r2, r0, ip, ror sl
     e70:	00000024 	andeq	r0, r0, r4, lsr #32
     e74:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
     e78:	4b018502 	blmi	62288 <heap_size+0x42288>
     e7c:	000ec4c5 	andeq	ip, lr, r5, asr #9
     e80:	00000018 	andeq	r0, r0, r8, lsl r0
     e84:	00000e54 	andeq	r0, r0, r4, asr lr
     e88:	00002aa0 	andeq	r2, r0, r0, lsr #21
     e8c:	00000024 	andeq	r0, r0, r4, lsr #32
     e90:	4b080e41 	blmi	20479c <heap_size+0x1e479c>
     e94:	41000e0a 	tstmi	r0, sl, lsl #28
     e98:	0000000b 	andeq	r0, r0, fp
     e9c:	0000000c 	andeq	r0, r0, ip
     ea0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     ea4:	7c020001 	stcvc	0, cr0, [r2], {1}
     ea8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     eac:	0000000c 	andeq	r0, r0, ip
     eb0:	00000e9c 	muleq	r0, ip, lr
     eb4:	00002ac4 	andeq	r2, r0, r4, asr #21
     eb8:	00000010 	andeq	r0, r0, r0, lsl r0
     ebc:	0000000c 	andeq	r0, r0, ip
     ec0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     ec4:	7c020001 	stcvc	0, cr0, [r2], {1}
     ec8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     ecc:	0000000c 	andeq	r0, r0, ip
     ed0:	00000ebc 			; <UNDEFINED> instruction: 0x00000ebc
     ed4:	00002ad4 	ldrdeq	r2, [r0], -r4
     ed8:	00000014 	andeq	r0, r0, r4, lsl r0
     edc:	0000000c 	andeq	r0, r0, ip
     ee0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     ee4:	7c020001 	stcvc	0, cr0, [r2], {1}
     ee8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     eec:	00000018 	andeq	r0, r0, r8, lsl r0
     ef0:	00000edc 	ldrdeq	r0, [r0], -ip
     ef4:	00002ae8 	andeq	r2, r0, r8, ror #21
     ef8:	00000024 	andeq	r0, r0, r4, lsr #32
     efc:	84080e41 	strhi	r0, [r8], #-3649	; 0xfffff1bf
     f00:	4b018502 	blmi	62310 <heap_size+0x42310>
     f04:	000ec4c5 	andeq	ip, lr, r5, asr #9
     f08:	0000000c 	andeq	r0, r0, ip
     f0c:	00000edc 	ldrdeq	r0, [r0], -ip
     f10:	00002b0c 	andeq	r2, r0, ip, lsl #22
     f14:	0000001a 	andeq	r0, r0, sl, lsl r0
     f18:	0000000c 	andeq	r0, r0, ip
     f1c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     f20:	7c010001 	stcvc	0, cr0, [r1], {1}
     f24:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     f28:	0000000c 	andeq	r0, r0, ip
     f2c:	00000f18 	andeq	r0, r0, r8, lsl pc
     f30:	00002b29 	andeq	r2, r0, r9, lsr #22
     f34:	0000025c 	andeq	r0, r0, ip, asr r2
     f38:	0000000c 	andeq	r0, r0, ip
     f3c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     f40:	7c010001 	stcvc	0, cr0, [r1], {1}
     f44:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     f48:	0000000c 	andeq	r0, r0, ip
     f4c:	00000f38 	andeq	r0, r0, r8, lsr pc
     f50:	00002da1 	andeq	r2, r0, r1, lsr #27
     f54:	00000294 	muleq	r0, r4, r2
     f58:	0000000c 	andeq	r0, r0, ip
     f5c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     f60:	7c020001 	stcvc	0, cr0, [r2], {1}
     f64:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     f68:	0000000c 	andeq	r0, r0, ip
     f6c:	00000f58 	andeq	r0, r0, r8, asr pc
     f70:	00003054 	andeq	r3, r0, r4, asr r0
     f74:	00000012 	andeq	r0, r0, r2, lsl r0
     f78:	0000000c 	andeq	r0, r0, ip
     f7c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     f80:	7c020001 	stcvc	0, cr0, [r2], {1}
     f84:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     f88:	0000000c 	andeq	r0, r0, ip
     f8c:	00000f78 	andeq	r0, r0, r8, ror pc
     f90:	00003068 	andeq	r3, r0, r8, rrx
     f94:	00000012 	andeq	r0, r0, r2, lsl r0
     f98:	0000000c 	andeq	r0, r0, ip
     f9c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     fa0:	7c020001 	stcvc	0, cr0, [r2], {1}
     fa4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     fa8:	0000000c 	andeq	r0, r0, ip
     fac:	00000f98 	muleq	r0, r8, pc	; <UNPREDICTABLE>
     fb0:	0000307c 	andeq	r3, r0, ip, ror r0
     fb4:	00000010 	andeq	r0, r0, r0, lsl r0
     fb8:	0000000c 	andeq	r0, r0, ip
     fbc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     fc0:	7c020001 	stcvc	0, cr0, [r2], {1}
     fc4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     fc8:	0000000c 	andeq	r0, r0, ip
     fcc:	00000fb8 			; <UNDEFINED> instruction: 0x00000fb8
     fd0:	0000308c 	andeq	r3, r0, ip, lsl #1
     fd4:	00000012 	andeq	r0, r0, r2, lsl r0
     fd8:	0000000c 	andeq	r0, r0, ip
     fdc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
     fe0:	7c020001 	stcvc	0, cr0, [r2], {1}
     fe4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
     fe8:	0000000c 	andeq	r0, r0, ip
     fec:	00000fd8 	ldrdeq	r0, [r0], -r8
     ff0:	000030a0 	andeq	r3, r0, r0, lsr #1
     ff4:	00000020 	andeq	r0, r0, r0, lsr #32
     ff8:	0000000c 	andeq	r0, r0, ip
     ffc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
    1000:	7c020001 	stcvc	0, cr0, [r2], {1}
    1004:	000d0c0e 	andeq	r0, sp, lr, lsl #24
    1008:	0000000c 	andeq	r0, r0, ip
    100c:	00000ff8 	strdeq	r0, [r0], -r8
    1010:	000030c0 	andeq	r3, r0, r0, asr #1
    1014:	00000002 	andeq	r0, r0, r2

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

