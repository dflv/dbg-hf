
./socket_vm1.elf:     file format elf64-littleaarch64


Disassembly of section .init:

0000000040001000 <entry>:
    40001000:	14000010 	b	40001040 <entry+0x40>
    40001004:	00000000 	.word	0x00000000
    40001008:	00001000 	.word	0x00001000
    4000100c:	00000000 	.word	0x00000000
    40001010:	00009000 	.word	0x00009000
	...
    40001038:	644d5241 	.word	0x644d5241
    4000103c:	00000000 	.word	0x00000000
    40001040:	90000019 	adrp	x25, 40001000 <entry>
    40001044:	91000339 	add	x25, x25, #0x0
    40001048:	1800031d 	ldr	w29, 400010a8 <entry+0xa8>
    4000104c:	cb1d0339 	sub	x25, x25, x29
    40001050:	d000001d 	adrp	x29, 40003000 <rodata_begin>
    40001054:	910a43bd 	add	x29, x29, #0x290
    40001058:	d000001e 	adrp	x30, 40003000 <rodata_begin>
    4000105c:	910a43de 	add	x30, x30, #0x290
    40001060:	eb1e03bf 	cmp	x29, x30
    40001064:	54000100 	b.eq	40001084 <entry+0x84>  // b.none
    40001068:	a8c16fba 	ldp	x26, x27, [x29], #16
    4000106c:	f84087bc 	ldr	x28, [x29], #8
    40001070:	71100f7f 	cmp	w27, #0x403
    40001074:	54000001 	b.ne	40001074 <entry+0x74>  // b.any
    40001078:	8b19039c 	add	x28, x28, x25
    4000107c:	f8396b5c 	str	x28, [x26, x25]
    40001080:	17fffff8 	b	40001060 <entry+0x60>
    40001084:	f000001d 	adrp	x29, 40004000 <__stack_chk_guard>
    40001088:	9101c3bd 	add	x29, x29, #0x70
    4000108c:	9000005e 	adrp	x30, 40009000 <dlog_buffer_offset>
    40001090:	910043de 	add	x30, x30, #0x10
    40001094:	eb1e03bf 	cmp	x29, x30
    40001098:	54000062 	b.cs	400010a4 <entry+0xa4>  // b.hs, b.nlast
    4000109c:	a8817fbf 	stp	xzr, xzr, [x29], #16
    400010a0:	17fffffd 	b	40001094 <entry+0x94>
    400010a4:	14000002 	b	400010ac <image_entry>
    400010a8:	40001000 	.word	0x40001000

00000000400010ac <image_entry>:
    400010ac:	10027abe 	adr	x30, 40006000 <global_context>
    400010b0:	910003df 	mov	sp, x30
    400010b4:	d2a0061e 	mov	x30, #0x300000              	// #3145728
    400010b8:	d518105e 	msr	cpacr_el1, x30
    400010bc:	d5033fdf 	isb
    400010c0:	94000010 	bl	40001100 <kmain>
    400010c4:	940006c3 	bl	40002bd0 <arch_power_off>
    400010c8:	d503207f 	wfi
    400010cc:	17ffffff 	b	400010c8 <image_entry+0x1c>

Disassembly of section .text:

00000000400010d0 <abort>:
    400010d0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    400010d4:	910003fd 	mov	x29, sp
    400010d8:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400010dc:	9109b800 	add	x0, x0, #0x26e
    400010e0:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    400010e4:	91090c21 	add	x1, x1, #0x243
    400010e8:	2a1f03e2 	mov	w2, wzr
    400010ec:	940003d5 	bl	40002040 <dlog>
    400010f0:	52800028 	mov	w8, #0x1                   	// #1
    400010f4:	39000108 	strb	w8, [x8]
    400010f8:	14000000 	b	400010f8 <abort+0x28>
    400010fc:	00000000 	.inst	0x00000000 ; undefined

0000000040001100 <kmain>:
    40001100:	d10203ff 	sub	sp, sp, #0x80
    40001104:	a9026ffc 	stp	x28, x27, [sp, #32]
    40001108:	a90367fa 	stp	x26, x25, [sp, #48]
    4000110c:	a9045ff8 	stp	x24, x23, [sp, #64]
    40001110:	a90557f6 	stp	x22, x21, [sp, #80]
    40001114:	a9064ff4 	stp	x20, x19, [sp, #96]
    40001118:	a9077bfd 	stp	x29, x30, [sp, #112]
    4000111c:	9101c3fd 	add	x29, sp, #0x70
    40001120:	52800c33 	mov	w19, #0x61                  	// #97
    40001124:	72b08013 	movk	w19, #0x8400, lsl #16
    40001128:	d0000034 	adrp	x20, 40007000 <send>
    4000112c:	91000294 	add	x20, x20, #0x0
    40001130:	f0000035 	adrp	x21, 40008000 <recv>
    40001134:	910002b5 	add	x21, x21, #0x0
    40001138:	d1000668 	sub	x8, x19, #0x1
    4000113c:	aa0003f6 	mov	x22, x0
    40001140:	aa1f03e4 	mov	x4, xzr
    40001144:	aa1f03e5 	mov	x5, xzr
    40001148:	aa1f03e6 	mov	x6, xzr
    4000114c:	aa1f03e7 	mov	x7, xzr
    40001150:	52800cc0 	mov	w0, #0x66                  	// #102
    40001154:	72b88000 	movk	w0, #0xc400, lsl #16
    40001158:	aa1503e2 	mov	x2, x21
    4000115c:	aa1403e1 	mov	x1, x20
    40001160:	52800023 	mov	w3, #0x1                   	// #1
    40001164:	d4000002 	hvc	#0x0
    40001168:	52800ca0 	mov	w0, #0x65                  	// #101
    4000116c:	72b08000 	movk	w0, #0x8400, lsl #16
    40001170:	aa1f03e1 	mov	x1, xzr
    40001174:	aa1f03e2 	mov	x2, xzr
    40001178:	aa1f03e3 	mov	x3, xzr
    4000117c:	aa1f03e4 	mov	x4, xzr
    40001180:	aa1f03e5 	mov	x5, xzr
    40001184:	aa1f03e6 	mov	x6, xzr
    40001188:	aa1f03e7 	mov	x7, xzr
    4000118c:	d4000002 	hvc	#0x0
    40001190:	aa0203f7 	mov	x23, x2
    40001194:	eb08001f 	cmp	x0, x8
    40001198:	b000003a 	adrp	x26, 40006000 <global_context>
    4000119c:	540004a0 	b.eq	40001230 <kmain+0x130>  // b.none
    400011a0:	b9400348 	ldr	w8, [x26]
    400011a4:	aa0003f8 	mov	x24, x0
    400011a8:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400011ac:	91095400 	add	x0, x0, #0x255
    400011b0:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    400011b4:	91047c21 	add	x1, x1, #0x11f
    400011b8:	52800802 	mov	w2, #0x40                  	// #64
    400011bc:	11000508 	add	w8, w8, #0x1
    400011c0:	b9000348 	str	w8, [x26]
    400011c4:	9400039f 	bl	40002040 <dlog>
    400011c8:	d0000019 	adrp	x25, 40003000 <rodata_begin>
    400011cc:	91074b39 	add	x25, x25, #0x1d2
    400011d0:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    400011d4:	9102ec21 	add	x1, x1, #0xbb
    400011d8:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400011dc:	91065000 	add	x0, x0, #0x194
    400011e0:	d0000002 	adrp	x2, 40003000 <rodata_begin>
    400011e4:	9106d442 	add	x2, x2, #0x1b5
    400011e8:	aa1903e3 	mov	x3, x25
    400011ec:	aa0103e4 	mov	x4, x1
    400011f0:	94000394 	bl	40002040 <dlog>
    400011f4:	d000001b 	adrp	x27, 40003000 <rodata_begin>
    400011f8:	91024b7b 	add	x27, x27, #0x92
    400011fc:	aa1b03e0 	mov	x0, x27
    40001200:	aa1803e1 	mov	x1, x24
    40001204:	9400038f 	bl	40002040 <dlog>
    40001208:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    4000120c:	9106bc00 	add	x0, x0, #0x1af
    40001210:	aa1903e1 	mov	x1, x25
    40001214:	9400038b 	bl	40002040 <dlog>
    40001218:	51000661 	sub	w1, w19, #0x1
    4000121c:	aa1b03e0 	mov	x0, x27
    40001220:	94000388 	bl	40002040 <dlog>
    40001224:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001228:	910a3400 	add	x0, x0, #0x28d
    4000122c:	94000385 	bl	40002040 <dlog>
    40001230:	b1001aff 	cmn	x23, #0x6
    40001234:	54000480 	b.eq	400012c4 <kmain+0x1c4>  // b.none
    40001238:	b9400348 	ldr	w8, [x26]
    4000123c:	11000508 	add	w8, w8, #0x1
    40001240:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001244:	91095400 	add	x0, x0, #0x255
    40001248:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    4000124c:	91047c21 	add	x1, x1, #0x11f
    40001250:	52800802 	mov	w2, #0x40                  	// #64
    40001254:	b9000348 	str	w8, [x26]
    40001258:	9400037a 	bl	40002040 <dlog>
    4000125c:	d0000018 	adrp	x24, 40003000 <rodata_begin>
    40001260:	9108fb18 	add	x24, x24, #0x23e
    40001264:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    40001268:	91070021 	add	x1, x1, #0x1c0
    4000126c:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001270:	91065000 	add	x0, x0, #0x194
    40001274:	d0000002 	adrp	x2, 40003000 <rodata_begin>
    40001278:	9106d442 	add	x2, x2, #0x1b5
    4000127c:	aa1803e3 	mov	x3, x24
    40001280:	aa0103e4 	mov	x4, x1
    40001284:	9400036f 	bl	40002040 <dlog>
    40001288:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    4000128c:	91024800 	add	x0, x0, #0x92
    40001290:	aa1703e1 	mov	x1, x23
    40001294:	9400036b 	bl	40002040 <dlog>
    40001298:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    4000129c:	9106bc00 	add	x0, x0, #0x1af
    400012a0:	aa1803e1 	mov	x1, x24
    400012a4:	94000367 	bl	40002040 <dlog>
    400012a8:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400012ac:	9102e000 	add	x0, x0, #0xb8
    400012b0:	128000a1 	mov	w1, #0xfffffffa            	// #-6
    400012b4:	94000363 	bl	40002040 <dlog>
    400012b8:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400012bc:	910a3400 	add	x0, x0, #0x28d
    400012c0:	94000360 	bl	40002040 <dlog>
    400012c4:	6f00e400 	movi	v0.2d, #0x0
    400012c8:	b0000028 	adrp	x8, 40006000 <global_context>
    400012cc:	91000108 	add	x8, x8, #0x0
    400012d0:	ad000100 	stp	q0, q0, [x8]
    400012d4:	90000009 	adrp	x9, 40001000 <ORIGIN_ADDRESS>
    400012d8:	91034129 	add	x9, x9, #0xd0
    400012dc:	d000001c 	adrp	x28, 40003000 <rodata_begin>
    400012e0:	91024b9c 	add	x28, x28, #0x92
    400012e4:	3d800900 	str	q0, [x8, #32]
    400012e8:	9e670280 	fmov	d0, x20
    400012ec:	4e181ea0 	mov	v0.d[1], x21
    400012f0:	f9000509 	str	x9, [x8, #8]
    400012f4:	52800d7b 	mov	w27, #0x6b                  	// #107
    400012f8:	72b0801b 	movk	w27, #0x8400, lsl #16
    400012fc:	3d8007e0 	str	q0, [sp, #16]
    40001300:	f9400fe9 	ldr	x9, [sp, #24]
    40001304:	f9001109 	str	x9, [x8, #32]
    40001308:	f9400be9 	ldr	x9, [sp, #16]
    4000130c:	d0000039 	adrp	x25, 40007000 <send>
    40001310:	f9001516 	str	x22, [x8, #40]
    40001314:	f9000d09 	str	x9, [x8, #24]
    40001318:	91003668 	add	x8, x19, #0xd
    4000131c:	aa1f03e1 	mov	x1, xzr
    40001320:	aa1f03e2 	mov	x2, xzr
    40001324:	aa1f03e3 	mov	x3, xzr
    40001328:	aa1f03e4 	mov	x4, xzr
    4000132c:	aa1f03e5 	mov	x5, xzr
    40001330:	aa1f03e6 	mov	x6, xzr
    40001334:	aa1f03e7 	mov	x7, xzr
    40001338:	aa1b03e0 	mov	x0, x27
    4000133c:	d4000002 	hvc	#0x0
    40001340:	f90007e1 	str	x1, [sp, #8]
    40001344:	aa0303f8 	mov	x24, x3
    40001348:	eb08001f 	cmp	x0, x8
    4000134c:	54000460 	b.eq	400013d8 <kmain+0x2d8>  // b.none
    40001350:	b9400348 	ldr	w8, [x26]
    40001354:	aa0003f7 	mov	x23, x0
    40001358:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    4000135c:	91095400 	add	x0, x0, #0x255
    40001360:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    40001364:	91047c21 	add	x1, x1, #0x11f
    40001368:	528009e2 	mov	w2, #0x4f                  	// #79
    4000136c:	11000508 	add	w8, w8, #0x1
    40001370:	b9000348 	str	w8, [x26]
    40001374:	94000333 	bl	40002040 <dlog>
    40001378:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    4000137c:	91030821 	add	x1, x1, #0xc2
    40001380:	d0000016 	adrp	x22, 40003000 <rodata_begin>
    40001384:	910626d6 	add	x22, x22, #0x189
    40001388:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    4000138c:	91065000 	add	x0, x0, #0x194
    40001390:	d0000002 	adrp	x2, 40003000 <rodata_begin>
    40001394:	9106d442 	add	x2, x2, #0x1b5
    40001398:	aa1603e3 	mov	x3, x22
    4000139c:	aa0103e4 	mov	x4, x1
    400013a0:	94000328 	bl	40002040 <dlog>
    400013a4:	aa1c03e0 	mov	x0, x28
    400013a8:	aa1703e1 	mov	x1, x23
    400013ac:	94000325 	bl	40002040 <dlog>
    400013b0:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400013b4:	9106bc00 	add	x0, x0, #0x1af
    400013b8:	aa1603e1 	mov	x1, x22
    400013bc:	94000321 	bl	40002040 <dlog>
    400013c0:	11003661 	add	w1, w19, #0xd
    400013c4:	aa1c03e0 	mov	x0, x28
    400013c8:	9400031e 	bl	40002040 <dlog>
    400013cc:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400013d0:	910a3400 	add	x0, x0, #0x28d
    400013d4:	9400031b 	bl	40002040 <dlog>
    400013d8:	7140071f 	cmp	w24, #0x1, lsl #12
    400013dc:	54000469 	b.ls	40001468 <kmain+0x368>  // b.plast
    400013e0:	b9400348 	ldr	w8, [x26]
    400013e4:	11000508 	add	w8, w8, #0x1
    400013e8:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400013ec:	91095400 	add	x0, x0, #0x255
    400013f0:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    400013f4:	91047c21 	add	x1, x1, #0x11f
    400013f8:	52800a02 	mov	w2, #0x50                  	// #80
    400013fc:	b9000348 	str	w8, [x26]
    40001400:	94000310 	bl	40002040 <dlog>
    40001404:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    40001408:	91089c21 	add	x1, x1, #0x227
    4000140c:	d0000016 	adrp	x22, 40003000 <rodata_begin>
    40001410:	9106eed6 	add	x22, x22, #0x1bb
    40001414:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001418:	91065000 	add	x0, x0, #0x194
    4000141c:	d0000002 	adrp	x2, 40003000 <rodata_begin>
    40001420:	9106e042 	add	x2, x2, #0x1b8
    40001424:	aa1603e3 	mov	x3, x22
    40001428:	aa0103e4 	mov	x4, x1
    4000142c:	94000305 	bl	40002040 <dlog>
    40001430:	aa1c03e0 	mov	x0, x28
    40001434:	2a1803e1 	mov	w1, w24
    40001438:	94000302 	bl	40002040 <dlog>
    4000143c:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001440:	9106bc00 	add	x0, x0, #0x1af
    40001444:	aa1603e1 	mov	x1, x22
    40001448:	940002fe 	bl	40002040 <dlog>
    4000144c:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001450:	9102e000 	add	x0, x0, #0xb8
    40001454:	52820001 	mov	w1, #0x1000                	// #4096
    40001458:	940002fa 	bl	40002040 <dlog>
    4000145c:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001460:	910a3400 	add	x0, x0, #0x28d
    40001464:	940002f7 	bl	40002040 <dlog>
    40001468:	92407f17 	and	x23, x24, #0xffffffff
    4000146c:	f14006ff 	cmp	x23, #0x1, lsl #12
    40001470:	54001848 	b.hi	40001778 <kmain+0x678>  // b.pmore
    40001474:	8b1502e8 	add	x8, x23, x21
    40001478:	eb14011f 	cmp	x8, x20
    4000147c:	54000069 	b.ls	40001488 <kmain+0x388>  // b.plast
    40001480:	eb15029f 	cmp	x20, x21
    40001484:	540018a2 	b.cs	40001798 <kmain+0x698>  // b.hs, b.nlast
    40001488:	8b1402e8 	add	x8, x23, x20
    4000148c:	eb15011f 	cmp	x8, x21
    40001490:	54000069 	b.ls	4000149c <kmain+0x39c>  // b.plast
    40001494:	eb15029f 	cmp	x20, x21
    40001498:	54001609 	b.ls	40001758 <kmain+0x658>  // b.plast
    4000149c:	b4000857 	cbz	x23, 400015a4 <kmain+0x4a4>
    400014a0:	f10102ff 	cmp	x23, #0x40
    400014a4:	540000e3 	b.cc	400014c0 <kmain+0x3c0>  // b.lo, b.ul, b.last
    400014a8:	8b1702a8 	add	x8, x21, x23
    400014ac:	eb14011f 	cmp	x8, x20
    400014b0:	540003e9 	b.ls	4000152c <kmain+0x42c>  // b.plast
    400014b4:	8b170288 	add	x8, x20, x23
    400014b8:	eb15011f 	cmp	x8, x21
    400014bc:	54000389 	b.ls	4000152c <kmain+0x42c>  // b.plast
    400014c0:	aa1503e9 	mov	x9, x21
    400014c4:	aa1403ea 	mov	x10, x20
    400014c8:	aa1703e8 	mov	x8, x23
    400014cc:	d100050b 	sub	x11, x8, #0x1
    400014d0:	f240050c 	ands	x12, x8, #0x3
    400014d4:	540000e0 	b.eq	400014f0 <kmain+0x3f0>  // b.none
    400014d8:	aa0c03ed 	mov	x13, x12
    400014dc:	3840152e 	ldrb	w14, [x9], #1
    400014e0:	f10005ad 	subs	x13, x13, #0x1
    400014e4:	3800154e 	strb	w14, [x10], #1
    400014e8:	54ffffa1 	b.ne	400014dc <kmain+0x3dc>  // b.any
    400014ec:	cb0c0108 	sub	x8, x8, x12
    400014f0:	f1000d7f 	cmp	x11, #0x3
    400014f4:	54000583 	b.cc	400015a4 <kmain+0x4a4>  // b.lo, b.ul, b.last
    400014f8:	3940012b 	ldrb	w11, [x9]
    400014fc:	3900014b 	strb	w11, [x10]
    40001500:	3940052c 	ldrb	w12, [x9, #1]
    40001504:	3940092d 	ldrb	w13, [x9, #2]
    40001508:	39400d2b 	ldrb	w11, [x9, #3]
    4000150c:	f1001108 	subs	x8, x8, #0x4
    40001510:	3900054c 	strb	w12, [x10, #1]
    40001514:	3900094d 	strb	w13, [x10, #2]
    40001518:	39000d4b 	strb	w11, [x10, #3]
    4000151c:	91001129 	add	x9, x9, #0x4
    40001520:	9100114a 	add	x10, x10, #0x4
    40001524:	54fffea1 	b.ne	400014f8 <kmain+0x3f8>  // b.any
    40001528:	1400001f 	b	400015a4 <kmain+0x4a4>
    4000152c:	927a6709 	and	x9, x24, #0xffffffc0
    40001530:	f1010128 	subs	x8, x9, #0x40
    40001534:	d346fd08 	lsr	x8, x8, #6
    40001538:	9100050b 	add	x11, x8, #0x1
    4000153c:	92400168 	and	x8, x11, #0x1
    40001540:	aa1f03ea 	mov	x10, xzr
    40001544:	540001e0 	b.eq	40001580 <kmain+0x480>  // b.none
    40001548:	cb08016b 	sub	x11, x11, x8
    4000154c:	8b0a02ac 	add	x12, x21, x10
    40001550:	8b0a028d 	add	x13, x20, x10
    40001554:	9102014a 	add	x10, x10, #0x80
    40001558:	ad400580 	ldp	q0, q1, [x12]
    4000155c:	ad0005a0 	stp	q0, q1, [x13]
    40001560:	f100096b 	subs	x11, x11, #0x2
    40001564:	ad410580 	ldp	q0, q1, [x12, #32]
    40001568:	ad0105a0 	stp	q0, q1, [x13, #32]
    4000156c:	ad420580 	ldp	q0, q1, [x12, #64]
    40001570:	ad430d82 	ldp	q2, q3, [x12, #96]
    40001574:	ad030da2 	stp	q2, q3, [x13, #96]
    40001578:	ad0205a0 	stp	q0, q1, [x13, #64]
    4000157c:	54fffe81 	b.ne	4000154c <kmain+0x44c>  // b.any
    40001580:	b40000e8 	cbz	x8, 4000159c <kmain+0x49c>
    40001584:	8b0a02a8 	add	x8, x21, x10
    40001588:	8b0a028a 	add	x10, x20, x10
    4000158c:	ad400500 	ldp	q0, q1, [x8]
    40001590:	ad000540 	stp	q0, q1, [x10]
    40001594:	ad410500 	ldp	q0, q1, [x8, #32]
    40001598:	ad010540 	stp	q0, q1, [x10, #32]
    4000159c:	eb0902e8 	subs	x8, x23, x9
    400015a0:	54000d61 	b.ne	4000174c <kmain+0x64c>  // b.any
    400015a4:	3dc00320 	ldr	q0, [x25]
    400015a8:	6e004000 	ext	v0.16b, v0.16b, v0.16b, #8
    400015ac:	aa1f03e1 	mov	x1, xzr
    400015b0:	3d800320 	str	q0, [x25]
    400015b4:	aa1f03e2 	mov	x2, xzr
    400015b8:	aa1f03e3 	mov	x3, xzr
    400015bc:	aa1f03e4 	mov	x4, xzr
    400015c0:	aa1f03e5 	mov	x5, xzr
    400015c4:	aa1f03e6 	mov	x6, xzr
    400015c8:	aa1f03e7 	mov	x7, xzr
    400015cc:	52800ca0 	mov	w0, #0x65                  	// #101
    400015d0:	72b08000 	movk	w0, #0x8400, lsl #16
    400015d4:	d4000002 	hvc	#0x0
    400015d8:	eb13001f 	cmp	x0, x19
    400015dc:	54000560 	b.eq	40001688 <kmain+0x588>  // b.none
    400015e0:	b9400348 	ldr	w8, [x26]
    400015e4:	aa0003f8 	mov	x24, x0
    400015e8:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400015ec:	91095400 	add	x0, x0, #0x255
    400015f0:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    400015f4:	91047c21 	add	x1, x1, #0x11f
    400015f8:	52800bc2 	mov	w2, #0x5e                  	// #94
    400015fc:	11000508 	add	w8, w8, #0x1
    40001600:	b9000348 	str	w8, [x26]
    40001604:	9400028f 	bl	40002040 <dlog>
    40001608:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    4000160c:	91032c21 	add	x1, x1, #0xcb
    40001610:	aa1303f6 	mov	x22, x19
    40001614:	aa1a03f3 	mov	x19, x26
    40001618:	aa1903fa 	mov	x26, x25
    4000161c:	aa1b03f9 	mov	x25, x27
    40001620:	d000001b 	adrp	x27, 40003000 <rodata_begin>
    40001624:	91071f7b 	add	x27, x27, #0x1c7
    40001628:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    4000162c:	91065000 	add	x0, x0, #0x194
    40001630:	d0000002 	adrp	x2, 40003000 <rodata_begin>
    40001634:	9106d442 	add	x2, x2, #0x1b5
    40001638:	aa1b03e3 	mov	x3, x27
    4000163c:	aa0103e4 	mov	x4, x1
    40001640:	94000280 	bl	40002040 <dlog>
    40001644:	aa1c03e0 	mov	x0, x28
    40001648:	aa1803e1 	mov	x1, x24
    4000164c:	9400027d 	bl	40002040 <dlog>
    40001650:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001654:	9106bc00 	add	x0, x0, #0x1af
    40001658:	aa1b03e1 	mov	x1, x27
    4000165c:	aa1903fb 	mov	x27, x25
    40001660:	aa1a03f9 	mov	x25, x26
    40001664:	aa1303fa 	mov	x26, x19
    40001668:	aa1603f3 	mov	x19, x22
    4000166c:	94000275 	bl	40002040 <dlog>
    40001670:	aa1c03e0 	mov	x0, x28
    40001674:	2a1303e1 	mov	w1, w19
    40001678:	94000272 	bl	40002040 <dlog>
    4000167c:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001680:	910a3400 	add	x0, x0, #0x28d
    40001684:	9400026f 	bl	40002040 <dlog>
    40001688:	f94007e8 	ldr	x8, [sp, #8]
    4000168c:	53103d01 	lsl	w1, w8, #16
    40001690:	b3507d01 	bfxil	x1, x8, #16, #16
    40001694:	aa1f03e2 	mov	x2, xzr
    40001698:	aa1f03e4 	mov	x4, xzr
    4000169c:	aa1f03e5 	mov	x5, xzr
    400016a0:	aa1f03e6 	mov	x6, xzr
    400016a4:	aa1f03e7 	mov	x7, xzr
    400016a8:	aa1703e3 	mov	x3, x23
    400016ac:	52800dc0 	mov	w0, #0x6e                  	// #110
    400016b0:	72b08000 	movk	w0, #0x8400, lsl #16
    400016b4:	d4000002 	hvc	#0x0
    400016b8:	eb13001f 	cmp	x0, x19
    400016bc:	54ffe2e0 	b.eq	40001318 <kmain+0x218>  // b.none
    400016c0:	b9400348 	ldr	w8, [x26]
    400016c4:	aa0003f6 	mov	x22, x0
    400016c8:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400016cc:	91095400 	add	x0, x0, #0x255
    400016d0:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    400016d4:	91047c21 	add	x1, x1, #0x11f
    400016d8:	52800c42 	mov	w2, #0x62                  	// #98
    400016dc:	11000508 	add	w8, w8, #0x1
    400016e0:	b9000348 	str	w8, [x26]
    400016e4:	94000257 	bl	40002040 <dlog>
    400016e8:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    400016ec:	91038421 	add	x1, x1, #0xe1
    400016f0:	d0000017 	adrp	x23, 40003000 <rodata_begin>
    400016f4:	91071ef7 	add	x23, x23, #0x1c7
    400016f8:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400016fc:	91065000 	add	x0, x0, #0x194
    40001700:	d0000002 	adrp	x2, 40003000 <rodata_begin>
    40001704:	9106d442 	add	x2, x2, #0x1b5
    40001708:	aa1703e3 	mov	x3, x23
    4000170c:	aa0103e4 	mov	x4, x1
    40001710:	9400024c 	bl	40002040 <dlog>
    40001714:	aa1c03e0 	mov	x0, x28
    40001718:	aa1603e1 	mov	x1, x22
    4000171c:	94000249 	bl	40002040 <dlog>
    40001720:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001724:	9106bc00 	add	x0, x0, #0x1af
    40001728:	aa1703e1 	mov	x1, x23
    4000172c:	94000245 	bl	40002040 <dlog>
    40001730:	aa1c03e0 	mov	x0, x28
    40001734:	2a1303e1 	mov	w1, w19
    40001738:	94000242 	bl	40002040 <dlog>
    4000173c:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001740:	910a3400 	add	x0, x0, #0x28d
    40001744:	9400023f 	bl	40002040 <dlog>
    40001748:	17fffef4 	b	40001318 <kmain+0x218>
    4000174c:	8b09028a 	add	x10, x20, x9
    40001750:	8b0902a9 	add	x9, x21, x9
    40001754:	17ffff5e 	b	400014cc <kmain+0x3cc>
    40001758:	d0000020 	adrp	x0, 40007000 <send>
    4000175c:	91000000 	add	x0, x0, #0x0
    40001760:	52820001 	mov	w1, #0x1000                	// #4096
    40001764:	52820002 	mov	w2, #0x1000                	// #4096
    40001768:	9400025e 	bl	400020e0 <memset_s>
    4000176c:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001770:	91080800 	add	x0, x0, #0x202
    40001774:	14000010 	b	400017b4 <kmain+0x6b4>
    40001778:	d0000020 	adrp	x0, 40007000 <send>
    4000177c:	91000000 	add	x0, x0, #0x0
    40001780:	52820001 	mov	w1, #0x1000                	// #4096
    40001784:	52820002 	mov	w2, #0x1000                	// #4096
    40001788:	94000256 	bl	400020e0 <memset_s>
    4000178c:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    40001790:	91019400 	add	x0, x0, #0x65
    40001794:	14000008 	b	400017b4 <kmain+0x6b4>
    40001798:	d0000020 	adrp	x0, 40007000 <send>
    4000179c:	91000000 	add	x0, x0, #0x0
    400017a0:	52820001 	mov	w1, #0x1000                	// #4096
    400017a4:	52820002 	mov	w2, #0x1000                	// #4096
    400017a8:	9400024e 	bl	400020e0 <memset_s>
    400017ac:	d0000000 	adrp	x0, 40003000 <rodata_begin>
    400017b0:	91077400 	add	x0, x0, #0x1dd
    400017b4:	d0000001 	adrp	x1, 40003000 <rodata_begin>
    400017b8:	91025421 	add	x1, x1, #0x95
    400017bc:	940004e1 	bl	40002b40 <panic>

00000000400017c0 <vdlog>:
    400017c0:	d10343ff 	sub	sp, sp, #0xd0
    400017c4:	a9076ffc 	stp	x28, x27, [sp, #112]
    400017c8:	a90867fa 	stp	x26, x25, [sp, #128]
    400017cc:	a9095ff8 	stp	x24, x23, [sp, #144]
    400017d0:	a90a57f6 	stp	x22, x21, [sp, #160]
    400017d4:	a90b4ff4 	stp	x20, x19, [sp, #176]
    400017d8:	a90c7bfd 	stp	x29, x30, [sp, #192]
    400017dc:	910303fd 	add	x29, sp, #0xc0
    400017e0:	f0000009 	adrp	x9, 40004000 <__stack_chk_guard>
    400017e4:	f9400129 	ldr	x9, [x9]
    400017e8:	9100a3ea 	add	x10, sp, #0x28
    400017ec:	9100fd4b 	add	x11, x10, #0x3f
    400017f0:	b202e7f5 	mov	x21, #0xcccccccccccccccc    	// #-3689348814741910324
    400017f4:	f9000beb 	str	x11, [sp, #16]
    400017f8:	aa0103f3 	mov	x19, x1
    400017fc:	aa0003e8 	mov	x8, x0
    40001800:	52800156 	mov	w22, #0xa                   	// #10
    40001804:	90000057 	adrp	x23, 40009000 <dlog_buffer_offset>
    40001808:	9100f94b 	add	x11, x10, #0x3e
    4000180c:	f9000feb 	str	x11, [sp, #24]
    40001810:	9101014a 	add	x10, x10, #0x40
    40001814:	f90007ea 	str	x10, [sp, #8]
    40001818:	f81a83a9 	stur	x9, [x29, #-88]
    4000181c:	52b7a014 	mov	w20, #0xbd000000            	// #-1124073472
    40001820:	d000001c 	adrp	x28, 40003000 <rodata_begin>
    40001824:	9105039c 	add	x28, x28, #0x140
    40001828:	d000001b 	adrp	x27, 40003000 <rodata_begin>
    4000182c:	9102037b 	add	x27, x27, #0x80
    40001830:	f29999b5 	movk	x21, #0xcccd
    40001834:	92800139 	mov	x25, #0xfffffffffffffff6    	// #-10
    40001838:	d000001a 	adrp	x26, 40003000 <rodata_begin>
    4000183c:	9100035a 	add	x26, x26, #0x0
    40001840:	14000006 	b	40001858 <vdlog+0x98>
    40001844:	2a0803e3 	mov	w3, w8
    40001848:	52800604 	mov	w4, #0x30                  	// #48
    4000184c:	94000189 	bl	40001e70 <print_string>
    40001850:	aa1803e8 	mov	x8, x24
    40001854:	91000708 	add	x8, x24, #0x1
    40001858:	39400101 	ldrb	w1, [x8]
    4000185c:	7100943f 	cmp	w1, #0x25
    40001860:	54000180 	b.eq	40001890 <vdlog+0xd0>  // b.none
    40001864:	34002ea1 	cbz	w1, 40001e38 <vdlog+0x678>
    40001868:	b94002e9 	ldr	w9, [x23]
    4000186c:	11000529 	add	w9, w9, #0x1
    40001870:	92403129 	and	x9, x9, #0x1fff
    40001874:	f90002e9 	str	x9, [x23]
    40001878:	aa1403e0 	mov	x0, x20
    4000187c:	aa1f03e2 	mov	x2, xzr
    40001880:	aa1f03e3 	mov	x3, xzr
    40001884:	d4000002 	hvc	#0x0
    40001888:	91000508 	add	x8, x8, #0x1
    4000188c:	17fffff3 	b	40001858 <vdlog+0x98>
    40001890:	2a1f03e3 	mov	w3, wzr
    40001894:	14000003 	b	400018a0 <vdlog+0xe0>
    40001898:	321d0063 	orr	w3, w3, #0x8
    4000189c:	321c0063 	orr	w3, w3, #0x10
    400018a0:	38401d09 	ldrb	w9, [x8, #1]!
    400018a4:	5100812a 	sub	w10, w9, #0x20
    400018a8:	7100415f 	cmp	w10, #0x10
    400018ac:	54000168 	b.hi	400018d8 <vdlog+0x118>  // b.pmore
    400018b0:	10ffff4b 	adr	x11, 40001898 <vdlog+0xd8>
    400018b4:	386a6b4c 	ldrb	w12, [x26, x10]
    400018b8:	8b0c096b 	add	x11, x11, x12, lsl #2
    400018bc:	d61f0160 	br	x11
    400018c0:	32000063 	orr	w3, w3, #0x1
    400018c4:	17fffff7 	b	400018a0 <vdlog+0xe0>
    400018c8:	321e0063 	orr	w3, w3, #0x4
    400018cc:	17fffff5 	b	400018a0 <vdlog+0xe0>
    400018d0:	321f0063 	orr	w3, w3, #0x2
    400018d4:	17fffff3 	b	400018a0 <vdlog+0xe0>
    400018d8:	5100c12a 	sub	w10, w9, #0x30
    400018dc:	7100255f 	cmp	w10, #0x9
    400018e0:	54000388 	b.hi	40001950 <vdlog+0x190>  // b.pmore
    400018e4:	aa1f03e2 	mov	x2, xzr
    400018e8:	9b167c4a 	mul	x10, x2, x22
    400018ec:	8b290149 	add	x9, x10, w9, uxtb
    400018f0:	d100c122 	sub	x2, x9, #0x30
    400018f4:	38401d09 	ldrb	w9, [x8, #1]!
    400018f8:	5100c12a 	sub	w10, w9, #0x30
    400018fc:	7100295f 	cmp	w10, #0xa
    40001900:	54ffff43 	b.cc	400018e8 <vdlog+0x128>  // b.lo, b.ul, b.last
    40001904:	d100050a 	sub	x10, x8, #0x1
    40001908:	b50002c2 	cbnz	x2, 40001960 <vdlog+0x1a0>
    4000190c:	7100a93f 	cmp	w9, #0x2a
    40001910:	54000261 	b.ne	4000195c <vdlog+0x19c>  // b.any
    40001914:	b9801a69 	ldrsw	x9, [x19, #24]
    40001918:	36f800a9 	tbz	w9, #31, 4000192c <vdlog+0x16c>
    4000191c:	1100212a 	add	w10, w9, #0x8
    40001920:	7100015f 	cmp	w10, #0x0
    40001924:	b9001a6a 	str	w10, [x19, #24]
    40001928:	5400242d 	b.le	40001dac <vdlog+0x5ec>
    4000192c:	f9400269 	ldr	x9, [x19]
    40001930:	9100212a 	add	x10, x9, #0x8
    40001934:	f900026a 	str	x10, [x19]
    40001938:	b9400129 	ldr	w9, [x9]
    4000193c:	321e006a 	orr	w10, w3, #0x4
    40001940:	7100013f 	cmp	w9, #0x0
    40001944:	1a8aa063 	csel	w3, w3, w10, ge  // ge = tcont
    40001948:	5a895522 	cneg	w2, w9, mi  // mi = first
    4000194c:	14000006 	b	40001964 <vdlog+0x1a4>
    40001950:	d100050a 	sub	x10, x8, #0x1
    40001954:	7100a93f 	cmp	w9, #0x2a
    40001958:	54fffde0 	b.eq	40001914 <vdlog+0x154>  // b.none
    4000195c:	aa1f03e2 	mov	x2, xzr
    40001960:	aa0a03e8 	mov	x8, x10
    40001964:	aa0803f8 	mov	x24, x8
    40001968:	38401f09 	ldrb	w9, [x24, #1]!
    4000196c:	51009529 	sub	w9, w9, #0x25
    40001970:	71014d3f 	cmp	w9, #0x53
    40001974:	54000508 	b.hi	40001a14 <vdlog+0x254>  // b.pmore
    40001978:	d000000c 	adrp	x12, 40003000 <rodata_begin>
    4000197c:	9100458c 	add	x12, x12, #0x11
    40001980:	1000008a 	adr	x10, 40001990 <vdlog+0x1d0>
    40001984:	3869698b 	ldrb	w11, [x12, x9]
    40001988:	8b0b094a 	add	x10, x10, x11, lsl #2
    4000198c:	d61f0140 	br	x10
    40001990:	b9801a68 	ldrsw	x8, [x19, #24]
    40001994:	36f800a8 	tbz	w8, #31, 400019a8 <vdlog+0x1e8>
    40001998:	11002109 	add	w9, w8, #0x8
    4000199c:	7100013f 	cmp	w9, #0x0
    400019a0:	b9001a69 	str	w9, [x19, #24]
    400019a4:	540020ed 	b.le	40001dc0 <vdlog+0x600>
    400019a8:	f9400268 	ldr	x8, [x19]
    400019ac:	91002109 	add	x9, x8, #0x8
    400019b0:	f9000269 	str	x9, [x19]
    400019b4:	b9400108 	ldr	w8, [x8]
    400019b8:	321a0069 	orr	w9, w3, #0x40
    400019bc:	7100011f 	cmp	w8, #0x0
    400019c0:	1a83b123 	csel	w3, w9, w3, lt  // lt = tstop
    400019c4:	5a885509 	cneg	w9, w8, mi  // mi = first
    400019c8:	f9400fe8 	ldr	x8, [sp, #24]
    400019cc:	721b007f 	tst	w3, #0x20
    400019d0:	9a9c036a 	csel	x10, x27, x28, eq  // eq = none
    400019d4:	39019fff 	strb	wzr, [sp, #103]
    400019d8:	9bd57d2b 	umulh	x11, x9, x21
    400019dc:	d343fd6b 	lsr	x11, x11, #3
    400019e0:	9b19256c 	madd	x12, x11, x25, x9
    400019e4:	386c694c 	ldrb	w12, [x10, x12]
    400019e8:	f100253f 	cmp	x9, #0x9
    400019ec:	381ff50c 	strb	w12, [x8], #-1
    400019f0:	aa0b03e9 	mov	x9, x11
    400019f4:	54ffff28 	b.hi	400019d8 <vdlog+0x218>  // b.pmore
    400019f8:	91000501 	add	x1, x8, #0x1
    400019fc:	37301843 	tbnz	w3, #6, 40001d04 <vdlog+0x544>
    40001a00:	371817e3 	tbnz	w3, #3, 40001cfc <vdlog+0x53c>
    40001a04:	aa0103e0 	mov	x0, x1
    40001a08:	36001843 	tbz	w3, #0, 40001d10 <vdlog+0x550>
    40001a0c:	52800409 	mov	w9, #0x20                  	// #32
    40001a10:	140000be 	b	40001d08 <vdlog+0x548>
    40001a14:	b94002e9 	ldr	w9, [x23]
    40001a18:	11000529 	add	w9, w9, #0x1
    40001a1c:	92403129 	and	x9, x9, #0x1fff
    40001a20:	f90002e9 	str	x9, [x23]
    40001a24:	aa1403e0 	mov	x0, x20
    40001a28:	aa1f03e2 	mov	x2, xzr
    40001a2c:	aa1f03e3 	mov	x3, xzr
    40001a30:	528004a1 	mov	w1, #0x25                  	// #37
    40001a34:	d4000002 	hvc	#0x0
    40001a38:	91000508 	add	x8, x8, #0x1
    40001a3c:	17ffff87 	b	40001858 <vdlog+0x98>
    40001a40:	b9801a69 	ldrsw	x9, [x19, #24]
    40001a44:	321b0068 	orr	w8, w3, #0x20
    40001a48:	36f800a9 	tbz	w9, #31, 40001a5c <vdlog+0x29c>
    40001a4c:	1100212a 	add	w10, w9, #0x8
    40001a50:	7100015f 	cmp	w10, #0x0
    40001a54:	b9001a6a 	str	w10, [x19, #24]
    40001a58:	54001c6d 	b.le	40001de4 <vdlog+0x624>
    40001a5c:	f9400269 	ldr	x9, [x19]
    40001a60:	9100212a 	add	x10, x9, #0x8
    40001a64:	f900026a 	str	x10, [x19]
    40001a68:	f9400129 	ldr	x9, [x9]
    40001a6c:	39019fff 	strb	wzr, [sp, #103]
    40001a70:	f9400be1 	ldr	x1, [sp, #16]
    40001a74:	92400d2a 	and	x10, x9, #0xf
    40001a78:	386a6b8a 	ldrb	w10, [x28, x10]
    40001a7c:	381ffc2a 	strb	w10, [x1, #-1]!
    40001a80:	f1003d3f 	cmp	x9, #0xf
    40001a84:	d344fd29 	lsr	x9, x9, #4
    40001a88:	54ffff68 	b.hi	40001a74 <vdlog+0x2b4>  // b.pmore
    40001a8c:	aa0103e0 	mov	x0, x1
    40001a90:	362000c3 	tbz	w3, #4, 40001aa8 <vdlog+0x2e8>
    40001a94:	aa0103e0 	mov	x0, x1
    40001a98:	52800609 	mov	w9, #0x30                  	// #48
    40001a9c:	381fec09 	strb	w9, [x0, #-2]!
    40001aa0:	52800b09 	mov	w9, #0x58                  	// #88
    40001aa4:	39000409 	strb	w9, [x0, #1]
    40001aa8:	37301883 	tbnz	w3, #6, 40001db8 <vdlog+0x5f8>
    40001aac:	37181903 	tbnz	w3, #3, 40001dcc <vdlog+0x60c>
    40001ab0:	36001923 	tbz	w3, #0, 40001dd4 <vdlog+0x614>
    40001ab4:	52800409 	mov	w9, #0x20                  	// #32
    40001ab8:	140000c6 	b	40001dd0 <vdlog+0x610>
    40001abc:	390097ff 	strb	wzr, [sp, #37]
    40001ac0:	b9801a68 	ldrsw	x8, [x19, #24]
    40001ac4:	36f800a8 	tbz	w8, #31, 40001ad8 <vdlog+0x318>
    40001ac8:	11002109 	add	w9, w8, #0x8
    40001acc:	7100013f 	cmp	w9, #0x0
    40001ad0:	b9001a69 	str	w9, [x19, #24]
    40001ad4:	540018ed 	b.le	40001df0 <vdlog+0x630>
    40001ad8:	f9400268 	ldr	x8, [x19]
    40001adc:	91002109 	add	x9, x8, #0x8
    40001ae0:	f9000269 	str	x9, [x19]
    40001ae4:	b9400108 	ldr	w8, [x8]
    40001ae8:	390093e8 	strb	w8, [sp, #36]
    40001aec:	910093e0 	add	x0, sp, #0x24
    40001af0:	910093e1 	add	x1, sp, #0x24
    40001af4:	140000ac 	b	40001da4 <vdlog+0x5e4>
    40001af8:	b9801a68 	ldrsw	x8, [x19, #24]
    40001afc:	36f800a8 	tbz	w8, #31, 40001b10 <vdlog+0x350>
    40001b00:	11002109 	add	w9, w8, #0x8
    40001b04:	7100013f 	cmp	w9, #0x0
    40001b08:	b9001a69 	str	w9, [x19, #24]
    40001b0c:	5400178d 	b.le	40001dfc <vdlog+0x63c>
    40001b10:	f9400268 	ldr	x8, [x19]
    40001b14:	91002109 	add	x9, x8, #0x8
    40001b18:	f9000269 	str	x9, [x19]
    40001b1c:	f9400109 	ldr	x9, [x8]
    40001b20:	721b007f 	tst	w3, #0x20
    40001b24:	9a9c036a 	csel	x10, x27, x28, eq  // eq = none
    40001b28:	f9400fe8 	ldr	x8, [sp, #24]
    40001b2c:	39019fff 	strb	wzr, [sp, #103]
    40001b30:	9240092b 	and	x11, x9, #0x7
    40001b34:	386b694b 	ldrb	w11, [x10, x11]
    40001b38:	381ff50b 	strb	w11, [x8], #-1
    40001b3c:	f1001d3f 	cmp	x9, #0x7
    40001b40:	d343fd29 	lsr	x9, x9, #3
    40001b44:	54ffff68 	b.hi	40001b30 <vdlog+0x370>  // b.pmore
    40001b48:	91000501 	add	x1, x8, #0x1
    40001b4c:	aa0103e0 	mov	x0, x1
    40001b50:	36200083 	tbz	w3, #4, 40001b60 <vdlog+0x3a0>
    40001b54:	52800609 	mov	w9, #0x30                  	// #48
    40001b58:	aa0803e0 	mov	x0, x8
    40001b5c:	39000109 	strb	w9, [x8]
    40001b60:	373011a3 	tbnz	w3, #6, 40001d94 <vdlog+0x5d4>
    40001b64:	37181143 	tbnz	w3, #3, 40001d8c <vdlog+0x5cc>
    40001b68:	36000d43 	tbz	w3, #0, 40001d10 <vdlog+0x550>
    40001b6c:	52800408 	mov	w8, #0x20                  	// #32
    40001b70:	1400008a 	b	40001d98 <vdlog+0x5d8>
    40001b74:	b9801a68 	ldrsw	x8, [x19, #24]
    40001b78:	36f800a8 	tbz	w8, #31, 40001b8c <vdlog+0x3cc>
    40001b7c:	11002109 	add	w9, w8, #0x8
    40001b80:	7100013f 	cmp	w9, #0x0
    40001b84:	b9001a69 	str	w9, [x19, #24]
    40001b88:	5400140d 	b.le	40001e08 <vdlog+0x648>
    40001b8c:	f9400268 	ldr	x8, [x19]
    40001b90:	91002109 	add	x9, x8, #0x8
    40001b94:	f9000269 	str	x9, [x19]
    40001b98:	f940010a 	ldr	x10, [x8]
    40001b9c:	39019fff 	strb	wzr, [sp, #103]
    40001ba0:	f94007e8 	ldr	x8, [sp, #8]
    40001ba4:	92400d49 	and	x9, x10, #0xf
    40001ba8:	38696b69 	ldrb	w9, [x27, x9]
    40001bac:	f1003d5f 	cmp	x10, #0xf
    40001bb0:	d344fd4a 	lsr	x10, x10, #4
    40001bb4:	381fe109 	sturb	w9, [x8, #-2]
    40001bb8:	d1000508 	sub	x8, x8, #0x1
    40001bbc:	54ffff48 	b.hi	40001ba4 <vdlog+0x3e4>  // b.pmore
    40001bc0:	aa1f03eb 	mov	x11, xzr
    40001bc4:	5280020a 	mov	w10, #0x10                  	// #16
    40001bc8:	2a0903ec 	mov	w12, w9
    40001bcc:	72001d9f 	tst	w12, #0xff
    40001bd0:	54000100 	b.eq	40001bf0 <vdlog+0x430>  // b.none
    40001bd4:	f100fd7f 	cmp	x11, #0x3f
    40001bd8:	54000280 	b.eq	40001c28 <vdlog+0x468>  // b.none
    40001bdc:	386b690c 	ldrb	w12, [x8, x11]
    40001be0:	9100056b 	add	x11, x11, #0x1
    40001be4:	d100054a 	sub	x10, x10, #0x1
    40001be8:	72001d9f 	tst	w12, #0xff
    40001bec:	54ffff41 	b.ne	40001bd4 <vdlog+0x414>  // b.any
    40001bf0:	f1003d7f 	cmp	x11, #0xf
    40001bf4:	540001a8 	b.hi	40001c28 <vdlog+0x468>  // b.pmore
    40001bf8:	b94002e9 	ldr	w9, [x23]
    40001bfc:	11000529 	add	w9, w9, #0x1
    40001c00:	92403129 	and	x9, x9, #0x1fff
    40001c04:	f100054a 	subs	x10, x10, #0x1
    40001c08:	aa1403e0 	mov	x0, x20
    40001c0c:	aa1f03e2 	mov	x2, xzr
    40001c10:	aa1f03e3 	mov	x3, xzr
    40001c14:	f90002e9 	str	x9, [x23]
    40001c18:	52800601 	mov	w1, #0x30                  	// #48
    40001c1c:	d4000002 	hvc	#0x0
    40001c20:	54fffec1 	b.ne	40001bf8 <vdlog+0x438>  // b.any
    40001c24:	385ff109 	ldurb	w9, [x8, #-1]
    40001c28:	340001c9 	cbz	w9, 40001c60 <vdlog+0x4a0>
    40001c2c:	aa1f03ea 	mov	x10, xzr
    40001c30:	b94002eb 	ldr	w11, [x23]
    40001c34:	1100056b 	add	w11, w11, #0x1
    40001c38:	9240316b 	and	x11, x11, #0x1fff
    40001c3c:	f90002eb 	str	x11, [x23]
    40001c40:	92401d21 	and	x1, x9, #0xff
    40001c44:	aa1403e0 	mov	x0, x20
    40001c48:	aa1f03e2 	mov	x2, xzr
    40001c4c:	aa1f03e3 	mov	x3, xzr
    40001c50:	d4000002 	hvc	#0x0
    40001c54:	386a6909 	ldrb	w9, [x8, x10]
    40001c58:	9100054a 	add	x10, x10, #0x1
    40001c5c:	35fffea9 	cbnz	w9, 40001c30 <vdlog+0x470>
    40001c60:	aa1803e8 	mov	x8, x24
    40001c64:	91000708 	add	x8, x24, #0x1
    40001c68:	17fffefc 	b	40001858 <vdlog+0x98>
    40001c6c:	b9801a68 	ldrsw	x8, [x19, #24]
    40001c70:	36f800a8 	tbz	w8, #31, 40001c84 <vdlog+0x4c4>
    40001c74:	11002109 	add	w9, w8, #0x8
    40001c78:	7100013f 	cmp	w9, #0x0
    40001c7c:	b9001a69 	str	w9, [x19, #24]
    40001c80:	54000cad 	b.le	40001e14 <vdlog+0x654>
    40001c84:	f9400268 	ldr	x8, [x19]
    40001c88:	91002109 	add	x9, x8, #0x8
    40001c8c:	f9000269 	str	x9, [x19]
    40001c90:	f9400100 	ldr	x0, [x8]
    40001c94:	14000043 	b	40001da0 <vdlog+0x5e0>
    40001c98:	b9801a68 	ldrsw	x8, [x19, #24]
    40001c9c:	36f800a8 	tbz	w8, #31, 40001cb0 <vdlog+0x4f0>
    40001ca0:	11002109 	add	w9, w8, #0x8
    40001ca4:	7100013f 	cmp	w9, #0x0
    40001ca8:	b9001a69 	str	w9, [x19, #24]
    40001cac:	54000bad 	b.le	40001e20 <vdlog+0x660>
    40001cb0:	f9400268 	ldr	x8, [x19]
    40001cb4:	91002109 	add	x9, x8, #0x8
    40001cb8:	f9000269 	str	x9, [x19]
    40001cbc:	f9400109 	ldr	x9, [x8]
    40001cc0:	721b007f 	tst	w3, #0x20
    40001cc4:	9a9c036a 	csel	x10, x27, x28, eq  // eq = none
    40001cc8:	f9400fe8 	ldr	x8, [sp, #24]
    40001ccc:	39019fff 	strb	wzr, [sp, #103]
    40001cd0:	9bd57d2b 	umulh	x11, x9, x21
    40001cd4:	d343fd6b 	lsr	x11, x11, #3
    40001cd8:	9b19256c 	madd	x12, x11, x25, x9
    40001cdc:	386c694c 	ldrb	w12, [x10, x12]
    40001ce0:	f100253f 	cmp	x9, #0x9
    40001ce4:	381ff50c 	strb	w12, [x8], #-1
    40001ce8:	aa0b03e9 	mov	x9, x11
    40001cec:	54ffff28 	b.hi	40001cd0 <vdlog+0x510>  // b.pmore
    40001cf0:	91000501 	add	x1, x8, #0x1
    40001cf4:	37300083 	tbnz	w3, #6, 40001d04 <vdlog+0x544>
    40001cf8:	361fe863 	tbz	w3, #3, 40001a04 <vdlog+0x244>
    40001cfc:	52800569 	mov	w9, #0x2b                  	// #43
    40001d00:	14000002 	b	40001d08 <vdlog+0x548>
    40001d04:	528005a9 	mov	w9, #0x2d                  	// #45
    40001d08:	aa0803e0 	mov	x0, x8
    40001d0c:	39000109 	strb	w9, [x8]
    40001d10:	36080483 	tbz	w3, #1, 40001da0 <vdlog+0x5e0>
    40001d14:	17fffecd 	b	40001848 <vdlog+0x88>
    40001d18:	b9801a68 	ldrsw	x8, [x19, #24]
    40001d1c:	36f800a8 	tbz	w8, #31, 40001d30 <vdlog+0x570>
    40001d20:	11002109 	add	w9, w8, #0x8
    40001d24:	7100013f 	cmp	w9, #0x0
    40001d28:	b9001a69 	str	w9, [x19, #24]
    40001d2c:	5400080d 	b.le	40001e2c <vdlog+0x66c>
    40001d30:	f9400268 	ldr	x8, [x19]
    40001d34:	91002109 	add	x9, x8, #0x8
    40001d38:	f9000269 	str	x9, [x19]
    40001d3c:	f9400109 	ldr	x9, [x8]
    40001d40:	721b007f 	tst	w3, #0x20
    40001d44:	9a9c0368 	csel	x8, x27, x28, eq  // eq = none
    40001d48:	f9400be1 	ldr	x1, [sp, #16]
    40001d4c:	39019fff 	strb	wzr, [sp, #103]
    40001d50:	92400d2a 	and	x10, x9, #0xf
    40001d54:	386a690a 	ldrb	w10, [x8, x10]
    40001d58:	381ffc2a 	strb	w10, [x1, #-1]!
    40001d5c:	f1003d3f 	cmp	x9, #0xf
    40001d60:	d344fd29 	lsr	x9, x9, #4
    40001d64:	54ffff68 	b.hi	40001d50 <vdlog+0x590>  // b.pmore
    40001d68:	aa0103e0 	mov	x0, x1
    40001d6c:	362000c3 	tbz	w3, #4, 40001d84 <vdlog+0x5c4>
    40001d70:	39404108 	ldrb	w8, [x8, #16]
    40001d74:	aa0103e0 	mov	x0, x1
    40001d78:	52800609 	mov	w9, #0x30                  	// #48
    40001d7c:	381fec09 	strb	w9, [x0, #-2]!
    40001d80:	39000408 	strb	w8, [x0, #1]
    40001d84:	37300083 	tbnz	w3, #6, 40001d94 <vdlog+0x5d4>
    40001d88:	361fef03 	tbz	w3, #3, 40001b68 <vdlog+0x3a8>
    40001d8c:	52800568 	mov	w8, #0x2b                  	// #43
    40001d90:	14000002 	b	40001d98 <vdlog+0x5d8>
    40001d94:	528005a8 	mov	w8, #0x2d                  	// #45
    40001d98:	381ffc08 	strb	w8, [x0, #-1]!
    40001d9c:	370fd563 	tbnz	w3, #1, 40001848 <vdlog+0x88>
    40001da0:	aa0003e1 	mov	x1, x0
    40001da4:	52800404 	mov	w4, #0x20                  	// #32
    40001da8:	17fffea9 	b	4000184c <vdlog+0x8c>
    40001dac:	f940066a 	ldr	x10, [x19, #8]
    40001db0:	8b090149 	add	x9, x10, x9
    40001db4:	17fffee1 	b	40001938 <vdlog+0x178>
    40001db8:	528005a9 	mov	w9, #0x2d                  	// #45
    40001dbc:	14000005 	b	40001dd0 <vdlog+0x610>
    40001dc0:	f9400669 	ldr	x9, [x19, #8]
    40001dc4:	8b080128 	add	x8, x9, x8
    40001dc8:	17fffefb 	b	400019b4 <vdlog+0x1f4>
    40001dcc:	52800569 	mov	w9, #0x2b                  	// #43
    40001dd0:	381ffc09 	strb	w9, [x0, #-1]!
    40001dd4:	370fd383 	tbnz	w3, #1, 40001844 <vdlog+0x84>
    40001dd8:	aa0003e1 	mov	x1, x0
    40001ddc:	2a0803e3 	mov	w3, w8
    40001de0:	17fffff1 	b	40001da4 <vdlog+0x5e4>
    40001de4:	f940066a 	ldr	x10, [x19, #8]
    40001de8:	8b090149 	add	x9, x10, x9
    40001dec:	17ffff1f 	b	40001a68 <vdlog+0x2a8>
    40001df0:	f9400669 	ldr	x9, [x19, #8]
    40001df4:	8b080128 	add	x8, x9, x8
    40001df8:	17ffff3b 	b	40001ae4 <vdlog+0x324>
    40001dfc:	f9400669 	ldr	x9, [x19, #8]
    40001e00:	8b080128 	add	x8, x9, x8
    40001e04:	17ffff46 	b	40001b1c <vdlog+0x35c>
    40001e08:	f9400669 	ldr	x9, [x19, #8]
    40001e0c:	8b080128 	add	x8, x9, x8
    40001e10:	17ffff62 	b	40001b98 <vdlog+0x3d8>
    40001e14:	f9400669 	ldr	x9, [x19, #8]
    40001e18:	8b080128 	add	x8, x9, x8
    40001e1c:	17ffff9d 	b	40001c90 <vdlog+0x4d0>
    40001e20:	f9400669 	ldr	x9, [x19, #8]
    40001e24:	8b080128 	add	x8, x9, x8
    40001e28:	17ffffa5 	b	40001cbc <vdlog+0x4fc>
    40001e2c:	f9400669 	ldr	x9, [x19, #8]
    40001e30:	8b080128 	add	x8, x9, x8
    40001e34:	17ffffc2 	b	40001d3c <vdlog+0x57c>
    40001e38:	f0000009 	adrp	x9, 40004000 <__stack_chk_guard>
    40001e3c:	f85a83a8 	ldur	x8, [x29, #-88]
    40001e40:	f9400129 	ldr	x9, [x9]
    40001e44:	eb08013f 	cmp	x9, x8
    40001e48:	54000121 	b.ne	40001e6c <vdlog+0x6ac>  // b.any
    40001e4c:	a94c7bfd 	ldp	x29, x30, [sp, #192]
    40001e50:	a94b4ff4 	ldp	x20, x19, [sp, #176]
    40001e54:	a94a57f6 	ldp	x22, x21, [sp, #160]
    40001e58:	a9495ff8 	ldp	x24, x23, [sp, #144]
    40001e5c:	a94867fa 	ldp	x26, x25, [sp, #128]
    40001e60:	a9476ffc 	ldp	x28, x27, [sp, #112]
    40001e64:	910343ff 	add	sp, sp, #0xd0
    40001e68:	d65f03c0 	ret
    40001e6c:	9400015d 	bl	400023e0 <__stack_chk_fail>

0000000040001e70 <print_string>:
    40001e70:	d10083ff 	sub	sp, sp, #0x20
    40001e74:	a9017bfd 	stp	x29, x30, [sp, #16]
    40001e78:	910043fd 	add	x29, sp, #0x10
    40001e7c:	f000000d 	adrp	x13, 40004000 <__stack_chk_guard>
    40001e80:	f94001ad 	ldr	x13, [x13]
    40001e84:	2a0403eb 	mov	w11, w4
    40001e88:	2a0303ec 	mov	w12, w3
    40001e8c:	aa0203e9 	mov	x9, x2
    40001e90:	f90007ed 	str	x13, [sp, #8]
    40001e94:	aa0103e8 	mov	x8, x1
    40001e98:	aa0003ea 	mov	x10, x0
    40001e9c:	eb01001f 	cmp	x0, x1
    40001ea0:	9000004e 	adrp	x14, 40009000 <dlog_buffer_offset>
    40001ea4:	540001c0 	b.eq	40001edc <print_string+0x6c>  // b.none
    40001ea8:	52b7a00d 	mov	w13, #0xbd000000            	// #-1124073472
    40001eac:	aa0a03ef 	mov	x15, x10
    40001eb0:	384015e1 	ldrb	w1, [x15], #1
    40001eb4:	eb0f011f 	cmp	x8, x15
    40001eb8:	b94001d0 	ldr	w16, [x14]
    40001ebc:	11000610 	add	w16, w16, #0x1
    40001ec0:	92403210 	and	x16, x16, #0x1fff
    40001ec4:	aa0d03e0 	mov	x0, x13
    40001ec8:	aa1f03e2 	mov	x2, xzr
    40001ecc:	aa1f03e3 	mov	x3, xzr
    40001ed0:	f90001d0 	str	x16, [x14]
    40001ed4:	d4000002 	hvc	#0x0
    40001ed8:	54fffec1 	b.ne	40001eb0 <print_string+0x40>  // b.any
    40001edc:	cb0a010d 	sub	x13, x8, x10
    40001ee0:	3710018c 	tbnz	w12, #2, 40001f10 <print_string+0xa0>
    40001ee4:	aa1f03ec 	mov	x12, xzr
    40001ee8:	b4000548 	cbz	x8, 40001f90 <print_string+0x120>
    40001eec:	386c690f 	ldrb	w15, [x8, x12]
    40001ef0:	3400050f 	cbz	w15, 40001f90 <print_string+0x120>
    40001ef4:	8b0c010f 	add	x15, x8, x12
    40001ef8:	394005ef 	ldrb	w15, [x15, #1]
    40001efc:	3400048f 	cbz	w15, 40001f8c <print_string+0x11c>
    40001f00:	9100098c 	add	x12, x12, #0x2
    40001f04:	f101019f 	cmp	x12, #0x40
    40001f08:	54ffff21 	b.ne	40001eec <print_string+0x7c>  // b.any
    40001f0c:	14000021 	b	40001f90 <print_string+0x120>
    40001f10:	3940010c 	ldrb	w12, [x8]
    40001f14:	340001cc 	cbz	w12, 40001f4c <print_string+0xdc>
    40001f18:	52b7a00b 	mov	w11, #0xbd000000            	// #-1124073472
    40001f1c:	b94001cd 	ldr	w13, [x14]
    40001f20:	92401d81 	and	x1, x12, #0xff
    40001f24:	110005ac 	add	w12, w13, #0x1
    40001f28:	9240318c 	and	x12, x12, #0x1fff
    40001f2c:	f90001cc 	str	x12, [x14]
    40001f30:	aa0b03e0 	mov	x0, x11
    40001f34:	aa1f03e2 	mov	x2, xzr
    40001f38:	aa1f03e3 	mov	x3, xzr
    40001f3c:	d4000002 	hvc	#0x0
    40001f40:	38401d0c 	ldrb	w12, [x8, #1]!
    40001f44:	35fffecc 	cbnz	w12, 40001f1c <print_string+0xac>
    40001f48:	cb0a010d 	sub	x13, x8, x10
    40001f4c:	eb0901bf 	cmp	x13, x9
    40001f50:	54000642 	b.cs	40002018 <print_string+0x1a8>  // b.hs, b.nlast
    40001f54:	cb0d0129 	sub	x9, x9, x13
    40001f58:	52b7a008 	mov	w8, #0xbd000000            	// #-1124073472
    40001f5c:	b94001ca 	ldr	w10, [x14]
    40001f60:	1100054a 	add	w10, w10, #0x1
    40001f64:	9240314a 	and	x10, x10, #0x1fff
    40001f68:	f1000529 	subs	x9, x9, #0x1
    40001f6c:	aa0803e0 	mov	x0, x8
    40001f70:	aa1f03e2 	mov	x2, xzr
    40001f74:	aa1f03e3 	mov	x3, xzr
    40001f78:	f90001ca 	str	x10, [x14]
    40001f7c:	52800401 	mov	w1, #0x20                  	// #32
    40001f80:	d4000002 	hvc	#0x0
    40001f84:	54fffec1 	b.ne	40001f5c <print_string+0xec>  // b.any
    40001f88:	14000024 	b	40002018 <print_string+0x1a8>
    40001f8c:	9100058c 	add	x12, x12, #0x1
    40001f90:	8b0d018d 	add	x13, x12, x13
    40001f94:	eb0901bf 	cmp	x13, x9
    40001f98:	54000222 	b.cs	40001fdc <print_string+0x16c>  // b.hs, b.nlast
    40001f9c:	8b090149 	add	x9, x10, x9
    40001fa0:	cb0c0129 	sub	x9, x9, x12
    40001fa4:	92401d6b 	and	x11, x11, #0xff
    40001fa8:	cb08012a 	sub	x10, x9, x8
    40001fac:	52b7a009 	mov	w9, #0xbd000000            	// #-1124073472
    40001fb0:	b94001cc 	ldr	w12, [x14]
    40001fb4:	1100058c 	add	w12, w12, #0x1
    40001fb8:	9240318c 	and	x12, x12, #0x1fff
    40001fbc:	f100054a 	subs	x10, x10, #0x1
    40001fc0:	aa0903e0 	mov	x0, x9
    40001fc4:	aa1f03e2 	mov	x2, xzr
    40001fc8:	aa1f03e3 	mov	x3, xzr
    40001fcc:	aa0b03e1 	mov	x1, x11
    40001fd0:	f90001cc 	str	x12, [x14]
    40001fd4:	d4000002 	hvc	#0x0
    40001fd8:	54fffec1 	b.ne	40001fb0 <print_string+0x140>  // b.any
    40001fdc:	3940010a 	ldrb	w10, [x8]
    40001fe0:	340001ca 	cbz	w10, 40002018 <print_string+0x1a8>
    40001fe4:	91000509 	add	x9, x8, #0x1
    40001fe8:	52b7a008 	mov	w8, #0xbd000000            	// #-1124073472
    40001fec:	b94001cb 	ldr	w11, [x14]
    40001ff0:	92401d41 	and	x1, x10, #0xff
    40001ff4:	1100056a 	add	w10, w11, #0x1
    40001ff8:	9240314a 	and	x10, x10, #0x1fff
    40001ffc:	f90001ca 	str	x10, [x14]
    40002000:	aa0803e0 	mov	x0, x8
    40002004:	aa1f03e2 	mov	x2, xzr
    40002008:	aa1f03e3 	mov	x3, xzr
    4000200c:	d4000002 	hvc	#0x0
    40002010:	3840152a 	ldrb	w10, [x9], #1
    40002014:	35fffeca 	cbnz	w10, 40001fec <print_string+0x17c>
    40002018:	d0000009 	adrp	x9, 40004000 <__stack_chk_guard>
    4000201c:	f94007e8 	ldr	x8, [sp, #8]
    40002020:	f9400129 	ldr	x9, [x9]
    40002024:	eb08013f 	cmp	x9, x8
    40002028:	54000081 	b.ne	40002038 <print_string+0x1c8>  // b.any
    4000202c:	a9417bfd 	ldp	x29, x30, [sp, #16]
    40002030:	910083ff 	add	sp, sp, #0x20
    40002034:	d65f03c0 	ret
    40002038:	940000ea 	bl	400023e0 <__stack_chk_fail>
    4000203c:	00000000 	.inst	0x00000000 ; undefined

0000000040002040 <dlog>:
    40002040:	d10483ff 	sub	sp, sp, #0x120
    40002044:	f90083fc 	str	x28, [sp, #256]
    40002048:	a9117bfd 	stp	x29, x30, [sp, #272]
    4000204c:	910443fd 	add	x29, sp, #0x110
    40002050:	d0000008 	adrp	x8, 40004000 <__stack_chk_guard>
    40002054:	928006e9 	mov	x9, #0xffffffffffffffc8    	// #-56
    40002058:	f9400108 	ldr	x8, [x8]
    4000205c:	a9080be1 	stp	x1, x2, [sp, #128]
    40002060:	910203ea 	add	x10, sp, #0x80
    40002064:	a90913e3 	stp	x3, x4, [sp, #144]
    40002068:	f2dff009 	movk	x9, #0xff80, lsl #32
    4000206c:	9100e14a 	add	x10, x10, #0x38
    40002070:	910043ab 	add	x11, x29, #0x10
    40002074:	d10163a1 	sub	x1, x29, #0x58
    40002078:	a90a1be5 	stp	x5, x6, [sp, #160]
    4000207c:	f9005be7 	str	x7, [sp, #176]
    40002080:	ad0007e0 	stp	q0, q1, [sp]
    40002084:	ad010fe2 	stp	q2, q3, [sp, #32]
    40002088:	ad0217e4 	stp	q4, q5, [sp, #64]
    4000208c:	ad031fe6 	stp	q6, q7, [sp, #96]
    40002090:	f81e83a8 	stur	x8, [x29, #-24]
    40002094:	910003e8 	mov	x8, sp
    40002098:	91020108 	add	x8, x8, #0x80
    4000209c:	a93da7a8 	stp	x8, x9, [x29, #-40]
    400020a0:	a93cabab 	stp	x11, x10, [x29, #-56]
    400020a4:	a93ba7a8 	stp	x8, x9, [x29, #-72]
    400020a8:	a93aabab 	stp	x11, x10, [x29, #-88]
    400020ac:	97fffdc5 	bl	400017c0 <vdlog>
    400020b0:	d0000009 	adrp	x9, 40004000 <__stack_chk_guard>
    400020b4:	f85e83a8 	ldur	x8, [x29, #-24]
    400020b8:	f9400129 	ldr	x9, [x9]
    400020bc:	eb08013f 	cmp	x9, x8
    400020c0:	540000a1 	b.ne	400020d4 <dlog+0x94>  // b.any
    400020c4:	a9517bfd 	ldp	x29, x30, [sp, #272]
    400020c8:	f94083fc 	ldr	x28, [sp, #256]
    400020cc:	910483ff 	add	sp, sp, #0x120
    400020d0:	d65f03c0 	ret
    400020d4:	940000c3 	bl	400023e0 <__stack_chk_fail>
	...

00000000400020e0 <memset_s>:
    400020e0:	d10243ff 	sub	sp, sp, #0x90
    400020e4:	f90023f9 	str	x25, [sp, #64]
    400020e8:	a9055ff8 	stp	x24, x23, [sp, #80]
    400020ec:	a90657f6 	stp	x22, x21, [sp, #96]
    400020f0:	a9074ff4 	stp	x20, x19, [sp, #112]
    400020f4:	a9087bfd 	stp	x29, x30, [sp, #128]
    400020f8:	910203fd 	add	x29, sp, #0x80
    400020fc:	d0000008 	adrp	x8, 40004000 <__stack_chk_guard>
    40002100:	f9400108 	ldr	x8, [x8]
    40002104:	f9001fe8 	str	x8, [sp, #56]
    40002108:	b40014a0 	cbz	x0, 4000239c <memset_s+0x2bc>
    4000210c:	52800028 	mov	w8, #0x1                   	// #1
    40002110:	72a10008 	movk	w8, #0x800, lsl #16
    40002114:	eb08003f 	cmp	x1, x8
    40002118:	54001482 	b.cs	400023a8 <memset_s+0x2c8>  // b.hs, b.nlast
    4000211c:	aa0203f4 	mov	x20, x2
    40002120:	aa0003f3 	mov	x19, x0
    40002124:	eb01005f 	cmp	x2, x1
    40002128:	54001468 	b.hi	400023b4 <memset_s+0x2d4>  // b.pmore
    4000212c:	b40011f4 	cbz	x20, 40002368 <memset_s+0x288>
    40002130:	f101029f 	cmp	x20, #0x40
    40002134:	54001143 	b.cc	4000235c <memset_s+0x27c>  // b.lo, b.ul, b.last
    40002138:	927ae695 	and	x21, x20, #0xffffffffffffffc0
    4000213c:	f10102a8 	subs	x8, x21, #0x40
    40002140:	d346fd08 	lsr	x8, x8, #6
    40002144:	91000508 	add	x8, x8, #0x1
    40002148:	92400116 	and	x22, x8, #0x1
    4000214c:	aa1f03f7 	mov	x23, xzr
    40002150:	54000ac0 	b.eq	400022a8 <memset_s+0x1c8>  // b.none
    40002154:	cb160118 	sub	x24, x8, x22
    40002158:	6f00e400 	movi	v0.2d, #0x0
    4000215c:	8b170279 	add	x25, x19, x23
    40002160:	aa1903e9 	mov	x9, x25
    40002164:	3d8007e0 	str	q0, [sp, #16]
    40002168:	f9400be8 	ldr	x8, [sp, #16]
    4000216c:	39000328 	strb	w8, [x25]
    40002170:	f9400fec 	ldr	x12, [sp, #24]
    40002174:	d368fd0a 	lsr	x10, x8, #40
    40002178:	3900172a 	strb	w10, [x25, #5]
    4000217c:	d350fd0a 	lsr	x10, x8, #16
    40002180:	39000b2a 	strb	w10, [x25, #2]
    40002184:	d368fd8a 	lsr	x10, x12, #40
    40002188:	3900372a 	strb	w10, [x25, #13]
    4000218c:	38008d2c 	strb	w12, [x9, #8]!
    40002190:	d358fd8a 	lsr	x10, x12, #24
    40002194:	39000d2a 	strb	w10, [x9, #3]
    40002198:	d350fd8a 	lsr	x10, x12, #16
    4000219c:	d358fd0b 	lsr	x11, x8, #24
    400021a0:	39000f2b 	strb	w11, [x25, #3]
    400021a4:	d348fd0b 	lsr	x11, x8, #8
    400021a8:	3900072b 	strb	w11, [x25, #1]
    400021ac:	aa1903eb 	mov	x11, x25
    400021b0:	3900092a 	strb	w10, [x9, #2]
    400021b4:	d348fd8a 	lsr	x10, x12, #8
    400021b8:	3900272a 	strb	w10, [x25, #9]
    400021bc:	d360fd8a 	lsr	x10, x12, #32
    400021c0:	38004d2a 	strb	w10, [x9, #4]!
    400021c4:	d360fd0a 	lsr	x10, x8, #32
    400021c8:	91004320 	add	x0, x25, #0x10
    400021cc:	2a1f03e1 	mov	w1, wzr
    400021d0:	38004d6a 	strb	w10, [x11, #4]!
    400021d4:	d378fd8a 	lsr	x10, x12, #56
    400021d8:	39000d2a 	strb	w10, [x9, #3]
    400021dc:	d370fd8a 	lsr	x10, x12, #48
    400021e0:	3900092a 	strb	w10, [x9, #2]
    400021e4:	d378fd09 	lsr	x9, x8, #56
    400021e8:	d370fd08 	lsr	x8, x8, #48
    400021ec:	52800602 	mov	w2, #0x30                  	// #48
    400021f0:	39000d69 	strb	w9, [x11, #3]
    400021f4:	39000968 	strb	w8, [x11, #2]
    400021f8:	94000082 	bl	40002400 <memset>
    400021fc:	6f00e400 	movi	v0.2d, #0x0
    40002200:	2a1f03e1 	mov	w1, wzr
    40002204:	52800602 	mov	w2, #0x30                  	// #48
    40002208:	3d800be0 	str	q0, [sp, #32]
    4000220c:	f94013e8 	ldr	x8, [sp, #32]
    40002210:	d368fd09 	lsr	x9, x8, #40
    40002214:	d348fd0c 	lsr	x12, x8, #8
    40002218:	38040f28 	strb	w8, [x25, #64]!
    4000221c:	f94017eb 	ldr	x11, [sp, #40]
    40002220:	39001729 	strb	w9, [x25, #5]
    40002224:	d350fd09 	lsr	x9, x8, #16
    40002228:	3900072c 	strb	w12, [x25, #1]
    4000222c:	39000b29 	strb	w9, [x25, #2]
    40002230:	aa1903e9 	mov	x9, x25
    40002234:	d368fd6c 	lsr	x12, x11, #40
    40002238:	3900372c 	strb	w12, [x25, #13]
    4000223c:	d348fd6c 	lsr	x12, x11, #8
    40002240:	38008d2b 	strb	w11, [x9, #8]!
    40002244:	3900272c 	strb	w12, [x25, #9]
    40002248:	d358fd6c 	lsr	x12, x11, #24
    4000224c:	d358fd0a 	lsr	x10, x8, #24
    40002250:	39000f2a 	strb	w10, [x25, #3]
    40002254:	d360fd0a 	lsr	x10, x8, #32
    40002258:	91004320 	add	x0, x25, #0x10
    4000225c:	39000d2c 	strb	w12, [x9, #3]
    40002260:	d350fd6c 	lsr	x12, x11, #16
    40002264:	3900092c 	strb	w12, [x9, #2]
    40002268:	aa1903ec 	mov	x12, x25
    4000226c:	910202f7 	add	x23, x23, #0x80
    40002270:	d1000b18 	sub	x24, x24, #0x2
    40002274:	38004d8a 	strb	w10, [x12, #4]!
    40002278:	d378fd0a 	lsr	x10, x8, #56
    4000227c:	d370fd08 	lsr	x8, x8, #48
    40002280:	39000d8a 	strb	w10, [x12, #3]
    40002284:	d360fd6a 	lsr	x10, x11, #32
    40002288:	39000988 	strb	w8, [x12, #2]
    4000228c:	d378fd68 	lsr	x8, x11, #56
    40002290:	38004d2a 	strb	w10, [x9, #4]!
    40002294:	d370fd6a 	lsr	x10, x11, #48
    40002298:	39000d28 	strb	w8, [x9, #3]
    4000229c:	3900092a 	strb	w10, [x9, #2]
    400022a0:	94000058 	bl	40002400 <memset>
    400022a4:	b5fff5b8 	cbnz	x24, 40002158 <memset_s+0x78>
    400022a8:	b4000536 	cbz	x22, 4000234c <memset_s+0x26c>
    400022ac:	6f00e400 	movi	v0.2d, #0x0
    400022b0:	8b170268 	add	x8, x19, x23
    400022b4:	aa0803e9 	mov	x9, x8
    400022b8:	3d8003e0 	str	q0, [sp]
    400022bc:	f94003ea 	ldr	x10, [sp]
    400022c0:	3900010a 	strb	w10, [x8]
    400022c4:	f94007eb 	ldr	x11, [sp, #8]
    400022c8:	38008d2b 	strb	w11, [x9, #8]!
    400022cc:	d358fd6c 	lsr	x12, x11, #24
    400022d0:	39000d2c 	strb	w12, [x9, #3]
    400022d4:	d350fd6c 	lsr	x12, x11, #16
    400022d8:	3900092c 	strb	w12, [x9, #2]
    400022dc:	d360fd6c 	lsr	x12, x11, #32
    400022e0:	91004100 	add	x0, x8, #0x10
    400022e4:	38004d2c 	strb	w12, [x9, #4]!
    400022e8:	d378fd6c 	lsr	x12, x11, #56
    400022ec:	39000d2c 	strb	w12, [x9, #3]
    400022f0:	d370fd6c 	lsr	x12, x11, #48
    400022f4:	3900092c 	strb	w12, [x9, #2]
    400022f8:	d368fd49 	lsr	x9, x10, #40
    400022fc:	39001509 	strb	w9, [x8, #5]
    40002300:	d358fd49 	lsr	x9, x10, #24
    40002304:	39000d09 	strb	w9, [x8, #3]
    40002308:	d350fd49 	lsr	x9, x10, #16
    4000230c:	39000909 	strb	w9, [x8, #2]
    40002310:	d348fd49 	lsr	x9, x10, #8
    40002314:	39000509 	strb	w9, [x8, #1]
    40002318:	d368fd69 	lsr	x9, x11, #40
    4000231c:	d348fd6b 	lsr	x11, x11, #8
    40002320:	39003509 	strb	w9, [x8, #13]
    40002324:	d360fd49 	lsr	x9, x10, #32
    40002328:	3900250b 	strb	w11, [x8, #9]
    4000232c:	d378fd4b 	lsr	x11, x10, #56
    40002330:	38004d09 	strb	w9, [x8, #4]!
    40002334:	d370fd49 	lsr	x9, x10, #48
    40002338:	2a1f03e1 	mov	w1, wzr
    4000233c:	52800602 	mov	w2, #0x30                  	// #48
    40002340:	39000d0b 	strb	w11, [x8, #3]
    40002344:	39000909 	strb	w9, [x8, #2]
    40002348:	9400002e 	bl	40002400 <memset>
    4000234c:	eb1402bf 	cmp	x21, x20
    40002350:	540000c0 	b.eq	40002368 <memset_s+0x288>  // b.none
    40002354:	8b150273 	add	x19, x19, x21
    40002358:	cb150294 	sub	x20, x20, x21
    4000235c:	f1000694 	subs	x20, x20, #0x1
    40002360:	3800167f 	strb	wzr, [x19], #1
    40002364:	54ffffc1 	b.ne	4000235c <memset_s+0x27c>  // b.any
    40002368:	d0000009 	adrp	x9, 40004000 <__stack_chk_guard>
    4000236c:	f9401fe8 	ldr	x8, [sp, #56]
    40002370:	f9400129 	ldr	x9, [x9]
    40002374:	eb08013f 	cmp	x9, x8
    40002378:	54000101 	b.ne	40002398 <memset_s+0x2b8>  // b.any
    4000237c:	a9487bfd 	ldp	x29, x30, [sp, #128]
    40002380:	f94023f9 	ldr	x25, [sp, #64]
    40002384:	a9474ff4 	ldp	x20, x19, [sp, #112]
    40002388:	a94657f6 	ldp	x22, x21, [sp, #96]
    4000238c:	a9455ff8 	ldp	x24, x23, [sp, #80]
    40002390:	910243ff 	add	sp, sp, #0x90
    40002394:	d65f03c0 	ret
    40002398:	94000012 	bl	400023e0 <__stack_chk_fail>
    4000239c:	b0000000 	adrp	x0, 40003000 <rodata_begin>
    400023a0:	9105c400 	add	x0, x0, #0x171
    400023a4:	14000009 	b	400023c8 <memset_s+0x2e8>
    400023a8:	b0000000 	adrp	x0, 40003000 <rodata_begin>
    400023ac:	91054800 	add	x0, x0, #0x152
    400023b0:	14000006 	b	400023c8 <memset_s+0x2e8>
    400023b4:	aa1303e0 	mov	x0, x19
    400023b8:	aa0103e2 	mov	x2, x1
    400023bc:	97ffff49 	bl	400020e0 <memset_s>
    400023c0:	b0000000 	adrp	x0, 40003000 <rodata_begin>
    400023c4:	91019400 	add	x0, x0, #0x65
    400023c8:	b0000001 	adrp	x1, 40003000 <rodata_begin>
    400023cc:	91027821 	add	x1, x1, #0x9e
    400023d0:	940001dc 	bl	40002b40 <panic>
	...

00000000400023e0 <__stack_chk_fail>:
    400023e0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    400023e4:	910003fd 	mov	x29, sp
    400023e8:	b0000000 	adrp	x0, 40003000 <rodata_begin>
    400023ec:	91029c00 	add	x0, x0, #0xa7
    400023f0:	940001d4 	bl	40002b40 <panic>
	...

0000000040002400 <memset>:
    40002400:	d10383ff 	sub	sp, sp, #0xe0
    40002404:	a90d7bfd 	stp	x29, x30, [sp, #208]
    40002408:	910343fd 	add	x29, sp, #0xd0
    4000240c:	d0000008 	adrp	x8, 40004000 <__stack_chk_guard>
    40002410:	f9400108 	ldr	x8, [x8]
    40002414:	f81f83a8 	stur	x8, [x29, #-8]
    40002418:	b40037e2 	cbz	x2, 40002b14 <memset+0x714>
    4000241c:	f101005f 	cmp	x2, #0x40
    40002420:	54000062 	b.cs	4000242c <memset+0x2c>  // b.hs, b.nlast
    40002424:	aa0003e9 	mov	x9, x0
    40002428:	140001b8 	b	40002b08 <memset+0x708>
    4000242c:	4e010c20 	dup	v0.16b, w1
    40002430:	927ae448 	and	x8, x2, #0xffffffffffffffc0
    40002434:	f1010109 	subs	x9, x8, #0x40
    40002438:	d346fd29 	lsr	x9, x9, #6
    4000243c:	9100052b 	add	x11, x9, #0x1
    40002440:	92400169 	and	x9, x11, #0x1
    40002444:	aa1f03ea 	mov	x10, xzr
    40002448:	540023c0 	b.eq	400028c0 <memset+0x4c0>  // b.none
    4000244c:	cb09016b 	sub	x11, x11, x9
    40002450:	3d8013e0 	str	q0, [sp, #64]
    40002454:	f94023ed 	ldr	x13, [sp, #64]
    40002458:	8b0a000c 	add	x12, x0, x10
    4000245c:	aa0c03f2 	mov	x18, x12
    40002460:	3900018d 	strb	w13, [x12]
    40002464:	f94027ef 	ldr	x15, [sp, #72]
    40002468:	d368fdb0 	lsr	x16, x13, #40
    4000246c:	39001590 	strb	w16, [x12, #5]
    40002470:	d360fdb0 	lsr	x16, x13, #32
    40002474:	aa0c03ee 	mov	x14, x12
    40002478:	d358fdb1 	lsr	x17, x13, #24
    4000247c:	39000d91 	strb	w17, [x12, #3]
    40002480:	d358fdf1 	lsr	x17, x15, #24
    40002484:	38004e50 	strb	w16, [x18, #4]!
    40002488:	d350fdb0 	lsr	x16, x13, #16
    4000248c:	39000990 	strb	w16, [x12, #2]
    40002490:	d368fdf0 	lsr	x16, x15, #40
    40002494:	38008dcf 	strb	w15, [x14, #8]!
    40002498:	d350fde3 	lsr	x3, x15, #16
    4000249c:	39003590 	strb	w16, [x12, #13]
    400024a0:	d348fdf0 	lsr	x16, x15, #8
    400024a4:	39000dd1 	strb	w17, [x14, #3]
    400024a8:	d360fdf1 	lsr	x17, x15, #32
    400024ac:	d348fda4 	lsr	x4, x13, #8
    400024b0:	390009c3 	strb	w3, [x14, #2]
    400024b4:	d378fde3 	lsr	x3, x15, #56
    400024b8:	d370fdef 	lsr	x15, x15, #48
    400024bc:	38004dd1 	strb	w17, [x14, #4]!
    400024c0:	39002590 	strb	w16, [x12, #9]
    400024c4:	d378fdb0 	lsr	x16, x13, #56
    400024c8:	d370fdad 	lsr	x13, x13, #48
    400024cc:	39000584 	strb	w4, [x12, #1]
    400024d0:	9102014a 	add	x10, x10, #0x80
    400024d4:	f100096b 	subs	x11, x11, #0x2
    400024d8:	39000e50 	strb	w16, [x18, #3]
    400024dc:	39000dc3 	strb	w3, [x14, #3]
    400024e0:	39000a4d 	strb	w13, [x18, #2]
    400024e4:	aa0c03ed 	mov	x13, x12
    400024e8:	390009cf 	strb	w15, [x14, #2]
    400024ec:	3c9e03a0 	stur	q0, [x29, #-32]
    400024f0:	f85e03ae 	ldur	x14, [x29, #-32]
    400024f4:	d358fdd1 	lsr	x17, x14, #24
    400024f8:	d368fdd0 	lsr	x16, x14, #40
    400024fc:	38010dae 	strb	w14, [x13, #16]!
    40002500:	f85e83af 	ldur	x15, [x29, #-24]
    40002504:	aa0d03f2 	mov	x18, x13
    40002508:	d348fde3 	lsr	x3, x15, #8
    4000250c:	39000db1 	strb	w17, [x13, #3]
    40002510:	d350fdd1 	lsr	x17, x14, #16
    40002514:	39005590 	strb	w16, [x12, #21]
    40002518:	d368fdf0 	lsr	x16, x15, #40
    4000251c:	390009b1 	strb	w17, [x13, #2]
    40002520:	d358fdf1 	lsr	x17, x15, #24
    40002524:	d360fde4 	lsr	x4, x15, #32
    40002528:	390035b0 	strb	w16, [x13, #13]
    4000252c:	d348fdd0 	lsr	x16, x14, #8
    40002530:	38008e4f 	strb	w15, [x18, #8]!
    40002534:	39000e51 	strb	w17, [x18, #3]
    40002538:	d360fdd1 	lsr	x17, x14, #32
    4000253c:	390025a3 	strb	w3, [x13, #9]
    40002540:	d350fde3 	lsr	x3, x15, #16
    40002544:	39004590 	strb	w16, [x12, #17]
    40002548:	d378fdd0 	lsr	x16, x14, #56
    4000254c:	d370fdce 	lsr	x14, x14, #48
    40002550:	39000a43 	strb	w3, [x18, #2]
    40002554:	38004db1 	strb	w17, [x13, #4]!
    40002558:	38004e44 	strb	w4, [x18, #4]!
    4000255c:	39000db0 	strb	w16, [x13, #3]
    40002560:	d378fdf0 	lsr	x16, x15, #56
    40002564:	390009ae 	strb	w14, [x13, #2]
    40002568:	d370fded 	lsr	x13, x15, #48
    4000256c:	39000e50 	strb	w16, [x18, #3]
    40002570:	39000a4d 	strb	w13, [x18, #2]
    40002574:	aa0c03ed 	mov	x13, x12
    40002578:	3c9d03a0 	stur	q0, [x29, #-48]
    4000257c:	f85d03ae 	ldur	x14, [x29, #-48]
    40002580:	d358fdd1 	lsr	x17, x14, #24
    40002584:	d368fdd0 	lsr	x16, x14, #40
    40002588:	38020dae 	strb	w14, [x13, #32]!
    4000258c:	f85d83af 	ldur	x15, [x29, #-40]
    40002590:	aa0d03f2 	mov	x18, x13
    40002594:	d348fde3 	lsr	x3, x15, #8
    40002598:	d360fde4 	lsr	x4, x15, #32
    4000259c:	39000db1 	strb	w17, [x13, #3]
    400025a0:	d350fdd1 	lsr	x17, x14, #16
    400025a4:	39009590 	strb	w16, [x12, #37]
    400025a8:	d368fdf0 	lsr	x16, x15, #40
    400025ac:	390009b1 	strb	w17, [x13, #2]
    400025b0:	d358fdf1 	lsr	x17, x15, #24
    400025b4:	390035b0 	strb	w16, [x13, #13]
    400025b8:	d348fdd0 	lsr	x16, x14, #8
    400025bc:	38008e4f 	strb	w15, [x18, #8]!
    400025c0:	39000e51 	strb	w17, [x18, #3]
    400025c4:	d360fdd1 	lsr	x17, x14, #32
    400025c8:	390025a3 	strb	w3, [x13, #9]
    400025cc:	d350fde3 	lsr	x3, x15, #16
    400025d0:	39008590 	strb	w16, [x12, #33]
    400025d4:	d378fdd0 	lsr	x16, x14, #56
    400025d8:	d370fdce 	lsr	x14, x14, #48
    400025dc:	39000a43 	strb	w3, [x18, #2]
    400025e0:	38004db1 	strb	w17, [x13, #4]!
    400025e4:	38004e44 	strb	w4, [x18, #4]!
    400025e8:	39000db0 	strb	w16, [x13, #3]
    400025ec:	d378fdf0 	lsr	x16, x15, #56
    400025f0:	390009ae 	strb	w14, [x13, #2]
    400025f4:	d370fded 	lsr	x13, x15, #48
    400025f8:	39000e50 	strb	w16, [x18, #3]
    400025fc:	39000a4d 	strb	w13, [x18, #2]
    40002600:	aa0c03ed 	mov	x13, x12
    40002604:	3c9c03a0 	stur	q0, [x29, #-64]
    40002608:	f85c03ae 	ldur	x14, [x29, #-64]
    4000260c:	d358fdd1 	lsr	x17, x14, #24
    40002610:	d368fdd0 	lsr	x16, x14, #40
    40002614:	38030dae 	strb	w14, [x13, #48]!
    40002618:	f85c83af 	ldur	x15, [x29, #-56]
    4000261c:	aa0d03f2 	mov	x18, x13
    40002620:	d348fde3 	lsr	x3, x15, #8
    40002624:	d360fde4 	lsr	x4, x15, #32
    40002628:	39000db1 	strb	w17, [x13, #3]
    4000262c:	d350fdd1 	lsr	x17, x14, #16
    40002630:	3900d590 	strb	w16, [x12, #53]
    40002634:	d368fdf0 	lsr	x16, x15, #40
    40002638:	390009b1 	strb	w17, [x13, #2]
    4000263c:	d358fdf1 	lsr	x17, x15, #24
    40002640:	390035b0 	strb	w16, [x13, #13]
    40002644:	d348fdd0 	lsr	x16, x14, #8
    40002648:	38008e4f 	strb	w15, [x18, #8]!
    4000264c:	39000e51 	strb	w17, [x18, #3]
    40002650:	d360fdd1 	lsr	x17, x14, #32
    40002654:	390025a3 	strb	w3, [x13, #9]
    40002658:	d350fde3 	lsr	x3, x15, #16
    4000265c:	3900c590 	strb	w16, [x12, #49]
    40002660:	d378fdd0 	lsr	x16, x14, #56
    40002664:	d370fdce 	lsr	x14, x14, #48
    40002668:	39000a43 	strb	w3, [x18, #2]
    4000266c:	38004db1 	strb	w17, [x13, #4]!
    40002670:	38004e44 	strb	w4, [x18, #4]!
    40002674:	39000db0 	strb	w16, [x13, #3]
    40002678:	d378fdf0 	lsr	x16, x15, #56
    4000267c:	390009ae 	strb	w14, [x13, #2]
    40002680:	d370fded 	lsr	x13, x15, #48
    40002684:	39000e50 	strb	w16, [x18, #3]
    40002688:	39000a4d 	strb	w13, [x18, #2]
    4000268c:	aa0c03ed 	mov	x13, x12
    40002690:	3c9b03a0 	stur	q0, [x29, #-80]
    40002694:	f85b03ae 	ldur	x14, [x29, #-80]
    40002698:	d358fdd1 	lsr	x17, x14, #24
    4000269c:	d368fdd0 	lsr	x16, x14, #40
    400026a0:	38040dae 	strb	w14, [x13, #64]!
    400026a4:	f85b83af 	ldur	x15, [x29, #-72]
    400026a8:	aa0d03f2 	mov	x18, x13
    400026ac:	d348fde3 	lsr	x3, x15, #8
    400026b0:	d360fde4 	lsr	x4, x15, #32
    400026b4:	39000db1 	strb	w17, [x13, #3]
    400026b8:	d350fdd1 	lsr	x17, x14, #16
    400026bc:	39011590 	strb	w16, [x12, #69]
    400026c0:	d368fdf0 	lsr	x16, x15, #40
    400026c4:	390009b1 	strb	w17, [x13, #2]
    400026c8:	d358fdf1 	lsr	x17, x15, #24
    400026cc:	390035b0 	strb	w16, [x13, #13]
    400026d0:	d348fdd0 	lsr	x16, x14, #8
    400026d4:	38008e4f 	strb	w15, [x18, #8]!
    400026d8:	39000e51 	strb	w17, [x18, #3]
    400026dc:	d360fdd1 	lsr	x17, x14, #32
    400026e0:	390025a3 	strb	w3, [x13, #9]
    400026e4:	d350fde3 	lsr	x3, x15, #16
    400026e8:	39010590 	strb	w16, [x12, #65]
    400026ec:	d378fdd0 	lsr	x16, x14, #56
    400026f0:	d370fdce 	lsr	x14, x14, #48
    400026f4:	39000a43 	strb	w3, [x18, #2]
    400026f8:	38004db1 	strb	w17, [x13, #4]!
    400026fc:	38004e44 	strb	w4, [x18, #4]!
    40002700:	39000db0 	strb	w16, [x13, #3]
    40002704:	d378fdf0 	lsr	x16, x15, #56
    40002708:	390009ae 	strb	w14, [x13, #2]
    4000270c:	d370fded 	lsr	x13, x15, #48
    40002710:	39000e50 	strb	w16, [x18, #3]
    40002714:	39000a4d 	strb	w13, [x18, #2]
    40002718:	aa0c03ed 	mov	x13, x12
    4000271c:	3c9a03a0 	stur	q0, [x29, #-96]
    40002720:	f85a03ae 	ldur	x14, [x29, #-96]
    40002724:	d358fdd1 	lsr	x17, x14, #24
    40002728:	d368fdd0 	lsr	x16, x14, #40
    4000272c:	38050dae 	strb	w14, [x13, #80]!
    40002730:	f85a83af 	ldur	x15, [x29, #-88]
    40002734:	aa0d03f2 	mov	x18, x13
    40002738:	d348fde3 	lsr	x3, x15, #8
    4000273c:	d360fde4 	lsr	x4, x15, #32
    40002740:	39000db1 	strb	w17, [x13, #3]
    40002744:	d350fdd1 	lsr	x17, x14, #16
    40002748:	39015590 	strb	w16, [x12, #85]
    4000274c:	d368fdf0 	lsr	x16, x15, #40
    40002750:	390009b1 	strb	w17, [x13, #2]
    40002754:	d358fdf1 	lsr	x17, x15, #24
    40002758:	390035b0 	strb	w16, [x13, #13]
    4000275c:	d348fdd0 	lsr	x16, x14, #8
    40002760:	38008e4f 	strb	w15, [x18, #8]!
    40002764:	39000e51 	strb	w17, [x18, #3]
    40002768:	d360fdd1 	lsr	x17, x14, #32
    4000276c:	390025a3 	strb	w3, [x13, #9]
    40002770:	d350fde3 	lsr	x3, x15, #16
    40002774:	39014590 	strb	w16, [x12, #81]
    40002778:	d378fdd0 	lsr	x16, x14, #56
    4000277c:	d370fdce 	lsr	x14, x14, #48
    40002780:	39000a43 	strb	w3, [x18, #2]
    40002784:	38004db1 	strb	w17, [x13, #4]!
    40002788:	38004e44 	strb	w4, [x18, #4]!
    4000278c:	39000db0 	strb	w16, [x13, #3]
    40002790:	d378fdf0 	lsr	x16, x15, #56
    40002794:	390009ae 	strb	w14, [x13, #2]
    40002798:	d370fded 	lsr	x13, x15, #48
    4000279c:	39000e50 	strb	w16, [x18, #3]
    400027a0:	39000a4d 	strb	w13, [x18, #2]
    400027a4:	aa0c03ed 	mov	x13, x12
    400027a8:	3d801be0 	str	q0, [sp, #96]
    400027ac:	f94033ee 	ldr	x14, [sp, #96]
    400027b0:	d358fdd1 	lsr	x17, x14, #24
    400027b4:	d368fdd0 	lsr	x16, x14, #40
    400027b8:	38060dae 	strb	w14, [x13, #96]!
    400027bc:	f94037ef 	ldr	x15, [sp, #104]
    400027c0:	aa0d03f2 	mov	x18, x13
    400027c4:	d348fde3 	lsr	x3, x15, #8
    400027c8:	d360fde4 	lsr	x4, x15, #32
    400027cc:	39000db1 	strb	w17, [x13, #3]
    400027d0:	d350fdd1 	lsr	x17, x14, #16
    400027d4:	39019590 	strb	w16, [x12, #101]
    400027d8:	d368fdf0 	lsr	x16, x15, #40
    400027dc:	390009b1 	strb	w17, [x13, #2]
    400027e0:	d358fdf1 	lsr	x17, x15, #24
    400027e4:	390035b0 	strb	w16, [x13, #13]
    400027e8:	d348fdd0 	lsr	x16, x14, #8
    400027ec:	38008e4f 	strb	w15, [x18, #8]!
    400027f0:	39000e51 	strb	w17, [x18, #3]
    400027f4:	d360fdd1 	lsr	x17, x14, #32
    400027f8:	390025a3 	strb	w3, [x13, #9]
    400027fc:	d350fde3 	lsr	x3, x15, #16
    40002800:	39018590 	strb	w16, [x12, #97]
    40002804:	d378fdd0 	lsr	x16, x14, #56
    40002808:	d370fdce 	lsr	x14, x14, #48
    4000280c:	39000a43 	strb	w3, [x18, #2]
    40002810:	38004db1 	strb	w17, [x13, #4]!
    40002814:	38004e44 	strb	w4, [x18, #4]!
    40002818:	39000db0 	strb	w16, [x13, #3]
    4000281c:	d378fdf0 	lsr	x16, x15, #56
    40002820:	390009ae 	strb	w14, [x13, #2]
    40002824:	d370fded 	lsr	x13, x15, #48
    40002828:	39000e50 	strb	w16, [x18, #3]
    4000282c:	39000a4d 	strb	w13, [x18, #2]
    40002830:	aa0c03ed 	mov	x13, x12
    40002834:	3d8017e0 	str	q0, [sp, #80]
    40002838:	f9402bee 	ldr	x14, [sp, #80]
    4000283c:	d368fdd0 	lsr	x16, x14, #40
    40002840:	d350fdd1 	lsr	x17, x14, #16
    40002844:	38070dae 	strb	w14, [x13, #112]!
    40002848:	f9402fef 	ldr	x15, [sp, #88]
    4000284c:	aa0d03f2 	mov	x18, x13
    40002850:	d348fde3 	lsr	x3, x15, #8
    40002854:	3901d590 	strb	w16, [x12, #117]
    40002858:	d358fdd0 	lsr	x16, x14, #24
    4000285c:	390009b1 	strb	w17, [x13, #2]
    40002860:	d348fdd1 	lsr	x17, x14, #8
    40002864:	39000db0 	strb	w16, [x13, #3]
    40002868:	d368fdf0 	lsr	x16, x15, #40
    4000286c:	38008e4f 	strb	w15, [x18, #8]!
    40002870:	3901c591 	strb	w17, [x12, #113]
    40002874:	d358fdec 	lsr	x12, x15, #24
    40002878:	d360fdd1 	lsr	x17, x14, #32
    4000287c:	390035b0 	strb	w16, [x13, #13]
    40002880:	d350fdf0 	lsr	x16, x15, #16
    40002884:	390025a3 	strb	w3, [x13, #9]
    40002888:	d360fde3 	lsr	x3, x15, #32
    4000288c:	39000e4c 	strb	w12, [x18, #3]
    40002890:	d378fdcc 	lsr	x12, x14, #56
    40002894:	38004db1 	strb	w17, [x13, #4]!
    40002898:	39000dac 	strb	w12, [x13, #3]
    4000289c:	d370fdcc 	lsr	x12, x14, #48
    400028a0:	39000a50 	strb	w16, [x18, #2]
    400028a4:	38004e43 	strb	w3, [x18, #4]!
    400028a8:	390009ac 	strb	w12, [x13, #2]
    400028ac:	d378fdec 	lsr	x12, x15, #56
    400028b0:	d370fded 	lsr	x13, x15, #48
    400028b4:	39000e4c 	strb	w12, [x18, #3]
    400028b8:	39000a4d 	strb	w13, [x18, #2]
    400028bc:	54ffdca1 	b.ne	40002450 <memset+0x50>  // b.any
    400028c0:	b40011c9 	cbz	x9, 40002af8 <memset+0x6f8>
    400028c4:	3d8003e0 	str	q0, [sp]
    400028c8:	8b0a0009 	add	x9, x0, x10
    400028cc:	f94003ea 	ldr	x10, [sp]
    400028d0:	d368fd4d 	lsr	x13, x10, #40
    400028d4:	3900012a 	strb	w10, [x9]
    400028d8:	f94007ee 	ldr	x14, [sp, #8]
    400028dc:	3900152d 	strb	w13, [x9, #5]
    400028e0:	d358fd4d 	lsr	x13, x10, #24
    400028e4:	aa0903ec 	mov	x12, x9
    400028e8:	aa0903eb 	mov	x11, x9
    400028ec:	39000d2d 	strb	w13, [x9, #3]
    400028f0:	d360fd4d 	lsr	x13, x10, #32
    400028f4:	38004d8d 	strb	w13, [x12, #4]!
    400028f8:	d350fd4d 	lsr	x13, x10, #16
    400028fc:	3900092d 	strb	w13, [x9, #2]
    40002900:	d348fd4d 	lsr	x13, x10, #8
    40002904:	3900052d 	strb	w13, [x9, #1]
    40002908:	d378fd4d 	lsr	x13, x10, #56
    4000290c:	d370fd4a 	lsr	x10, x10, #48
    40002910:	38008d6e 	strb	w14, [x11, #8]!
    40002914:	39000d8d 	strb	w13, [x12, #3]
    40002918:	3900098a 	strb	w10, [x12, #2]
    4000291c:	d358fdcc 	lsr	x12, x14, #24
    40002920:	d368fdca 	lsr	x10, x14, #40
    40002924:	d350fdcd 	lsr	x13, x14, #16
    40002928:	39000d6c 	strb	w12, [x11, #3]
    4000292c:	d360fdcc 	lsr	x12, x14, #32
    40002930:	3900352a 	strb	w10, [x9, #13]
    40002934:	d348fdca 	lsr	x10, x14, #8
    40002938:	3900096d 	strb	w13, [x11, #2]
    4000293c:	d378fdcd 	lsr	x13, x14, #56
    40002940:	d370fdce 	lsr	x14, x14, #48
    40002944:	38004d6c 	strb	w12, [x11, #4]!
    40002948:	3900252a 	strb	w10, [x9, #9]
    4000294c:	aa0903ea 	mov	x10, x9
    40002950:	39000d6d 	strb	w13, [x11, #3]
    40002954:	3900096e 	strb	w14, [x11, #2]
    40002958:	3d800fe0 	str	q0, [sp, #48]
    4000295c:	f9401beb 	ldr	x11, [sp, #48]
    40002960:	d368fd6c 	lsr	x12, x11, #40
    40002964:	d358fd6d 	lsr	x13, x11, #24
    40002968:	38010d4b 	strb	w11, [x10, #16]!
    4000296c:	f9401fee 	ldr	x14, [sp, #56]
    40002970:	3900552c 	strb	w12, [x9, #21]
    40002974:	d368fdcc 	lsr	x12, x14, #40
    40002978:	3900354c 	strb	w12, [x10, #13]
    4000297c:	d348fdcc 	lsr	x12, x14, #8
    40002980:	3900254c 	strb	w12, [x10, #9]
    40002984:	d350fd6c 	lsr	x12, x11, #16
    40002988:	39000d4d 	strb	w13, [x10, #3]
    4000298c:	aa0a03ed 	mov	x13, x10
    40002990:	38008dae 	strb	w14, [x13, #8]!
    40002994:	3900094c 	strb	w12, [x10, #2]
    40002998:	d348fd6c 	lsr	x12, x11, #8
    4000299c:	3900452c 	strb	w12, [x9, #17]
    400029a0:	d358fdcc 	lsr	x12, x14, #24
    400029a4:	39000dac 	strb	w12, [x13, #3]
    400029a8:	d350fdcc 	lsr	x12, x14, #16
    400029ac:	390009ac 	strb	w12, [x13, #2]
    400029b0:	d360fd6c 	lsr	x12, x11, #32
    400029b4:	38004d4c 	strb	w12, [x10, #4]!
    400029b8:	d378fd6c 	lsr	x12, x11, #56
    400029bc:	d370fd6b 	lsr	x11, x11, #48
    400029c0:	39000d4c 	strb	w12, [x10, #3]
    400029c4:	d360fdcc 	lsr	x12, x14, #32
    400029c8:	3900094b 	strb	w11, [x10, #2]
    400029cc:	d378fdca 	lsr	x10, x14, #56
    400029d0:	aa0903eb 	mov	x11, x9
    400029d4:	38004dac 	strb	w12, [x13, #4]!
    400029d8:	39000daa 	strb	w10, [x13, #3]
    400029dc:	d370fdca 	lsr	x10, x14, #48
    400029e0:	390009aa 	strb	w10, [x13, #2]
    400029e4:	3d800be0 	str	q0, [sp, #32]
    400029e8:	f94013ea 	ldr	x10, [sp, #32]
    400029ec:	38020d6a 	strb	w10, [x11, #32]!
    400029f0:	f94017ec 	ldr	x12, [sp, #40]
    400029f4:	d368fd8d 	lsr	x13, x12, #40
    400029f8:	3900356d 	strb	w13, [x11, #13]
    400029fc:	d348fd8d 	lsr	x13, x12, #8
    40002a00:	3900256d 	strb	w13, [x11, #9]
    40002a04:	d368fd4d 	lsr	x13, x10, #40
    40002a08:	3900952d 	strb	w13, [x9, #37]
    40002a0c:	d358fd4d 	lsr	x13, x10, #24
    40002a10:	39000d6d 	strb	w13, [x11, #3]
    40002a14:	d350fd4d 	lsr	x13, x10, #16
    40002a18:	3900096d 	strb	w13, [x11, #2]
    40002a1c:	d348fd4d 	lsr	x13, x10, #8
    40002a20:	aa0b03ee 	mov	x14, x11
    40002a24:	3900852d 	strb	w13, [x9, #33]
    40002a28:	d358fd8d 	lsr	x13, x12, #24
    40002a2c:	38008dcc 	strb	w12, [x14, #8]!
    40002a30:	39000dcd 	strb	w13, [x14, #3]
    40002a34:	d350fd8d 	lsr	x13, x12, #16
    40002a38:	390009cd 	strb	w13, [x14, #2]
    40002a3c:	d360fd4d 	lsr	x13, x10, #32
    40002a40:	38004d6d 	strb	w13, [x11, #4]!
    40002a44:	d378fd4d 	lsr	x13, x10, #56
    40002a48:	d370fd4a 	lsr	x10, x10, #48
    40002a4c:	39000d6d 	strb	w13, [x11, #3]
    40002a50:	d360fd8d 	lsr	x13, x12, #32
    40002a54:	3900096a 	strb	w10, [x11, #2]
    40002a58:	d378fd8a 	lsr	x10, x12, #56
    40002a5c:	38004dcd 	strb	w13, [x14, #4]!
    40002a60:	39000dca 	strb	w10, [x14, #3]
    40002a64:	d370fd8a 	lsr	x10, x12, #48
    40002a68:	390009ca 	strb	w10, [x14, #2]
    40002a6c:	3d8007e0 	str	q0, [sp, #16]
    40002a70:	f9400bea 	ldr	x10, [sp, #16]
    40002a74:	aa0903eb 	mov	x11, x9
    40002a78:	38030d6a 	strb	w10, [x11, #48]!
    40002a7c:	f9400fec 	ldr	x12, [sp, #24]
    40002a80:	d368fd8d 	lsr	x13, x12, #40
    40002a84:	3900356d 	strb	w13, [x11, #13]
    40002a88:	d348fd8d 	lsr	x13, x12, #8
    40002a8c:	3900256d 	strb	w13, [x11, #9]
    40002a90:	d368fd4d 	lsr	x13, x10, #40
    40002a94:	3900d52d 	strb	w13, [x9, #53]
    40002a98:	d358fd4d 	lsr	x13, x10, #24
    40002a9c:	39000d6d 	strb	w13, [x11, #3]
    40002aa0:	d350fd4d 	lsr	x13, x10, #16
    40002aa4:	3900096d 	strb	w13, [x11, #2]
    40002aa8:	d348fd4d 	lsr	x13, x10, #8
    40002aac:	aa0b03ee 	mov	x14, x11
    40002ab0:	3900c52d 	strb	w13, [x9, #49]
    40002ab4:	d358fd89 	lsr	x9, x12, #24
    40002ab8:	38008dcc 	strb	w12, [x14, #8]!
    40002abc:	39000dc9 	strb	w9, [x14, #3]
    40002ac0:	d350fd89 	lsr	x9, x12, #16
    40002ac4:	390009c9 	strb	w9, [x14, #2]
    40002ac8:	d360fd49 	lsr	x9, x10, #32
    40002acc:	38004d69 	strb	w9, [x11, #4]!
    40002ad0:	d378fd49 	lsr	x9, x10, #56
    40002ad4:	39000d69 	strb	w9, [x11, #3]
    40002ad8:	d360fd89 	lsr	x9, x12, #32
    40002adc:	38004dc9 	strb	w9, [x14, #4]!
    40002ae0:	d370fd49 	lsr	x9, x10, #48
    40002ae4:	39000969 	strb	w9, [x11, #2]
    40002ae8:	d378fd89 	lsr	x9, x12, #56
    40002aec:	39000dc9 	strb	w9, [x14, #3]
    40002af0:	d370fd89 	lsr	x9, x12, #48
    40002af4:	390009c9 	strb	w9, [x14, #2]
    40002af8:	eb02011f 	cmp	x8, x2
    40002afc:	540000c0 	b.eq	40002b14 <memset+0x714>  // b.none
    40002b00:	8b080009 	add	x9, x0, x8
    40002b04:	cb080042 	sub	x2, x2, x8
    40002b08:	f1000442 	subs	x2, x2, #0x1
    40002b0c:	38001521 	strb	w1, [x9], #1
    40002b10:	54ffffc1 	b.ne	40002b08 <memset+0x708>  // b.any
    40002b14:	d0000009 	adrp	x9, 40004000 <__stack_chk_guard>
    40002b18:	f85f83a8 	ldur	x8, [x29, #-8]
    40002b1c:	f9400129 	ldr	x9, [x9]
    40002b20:	eb08013f 	cmp	x9, x8
    40002b24:	54000081 	b.ne	40002b34 <memset+0x734>  // b.any
    40002b28:	a94d7bfd 	ldp	x29, x30, [sp, #208]
    40002b2c:	910383ff 	add	sp, sp, #0xe0
    40002b30:	d65f03c0 	ret
    40002b34:	97fffe2b 	bl	400023e0 <__stack_chk_fail>
	...

0000000040002b40 <panic>:
    40002b40:	d10483ff 	sub	sp, sp, #0x120
    40002b44:	a9104ffc 	stp	x28, x19, [sp, #256]
    40002b48:	a9117bfd 	stp	x29, x30, [sp, #272]
    40002b4c:	910443fd 	add	x29, sp, #0x110
    40002b50:	aa0003f3 	mov	x19, x0
    40002b54:	b0000000 	adrp	x0, 40003000 <rodata_begin>
    40002b58:	91093400 	add	x0, x0, #0x24d
    40002b5c:	a9088be1 	stp	x1, x2, [sp, #136]
    40002b60:	f9005fe7 	str	x7, [sp, #184]
    40002b64:	a90993e3 	stp	x3, x4, [sp, #152]
    40002b68:	a90a9be5 	stp	x5, x6, [sp, #168]
    40002b6c:	ad0007e0 	stp	q0, q1, [sp]
    40002b70:	ad010fe2 	stp	q2, q3, [sp, #32]
    40002b74:	ad0217e4 	stp	q4, q5, [sp, #64]
    40002b78:	ad031fe6 	stp	q6, q7, [sp, #96]
    40002b7c:	97fffd31 	bl	40002040 <dlog>
    40002b80:	910003e8 	mov	x8, sp
    40002b84:	928006e9 	mov	x9, #0xffffffffffffffc8    	// #-56
    40002b88:	910223ea 	add	x10, sp, #0x88
    40002b8c:	f2dff009 	movk	x9, #0xff80, lsl #32
    40002b90:	91020108 	add	x8, x8, #0x80
    40002b94:	910043ab 	add	x11, x29, #0x10
    40002b98:	a93e27a8 	stp	x8, x9, [x29, #-32]
    40002b9c:	9100e14a 	add	x10, x10, #0x38
    40002ba0:	d10143a1 	sub	x1, x29, #0x50
    40002ba4:	a93d2bab 	stp	x11, x10, [x29, #-48]
    40002ba8:	aa1303e0 	mov	x0, x19
    40002bac:	a93c27a8 	stp	x8, x9, [x29, #-64]
    40002bb0:	a93b2bab 	stp	x11, x10, [x29, #-80]
    40002bb4:	97fffb03 	bl	400017c0 <vdlog>
    40002bb8:	b0000000 	adrp	x0, 40003000 <rodata_begin>
    40002bbc:	910a3800 	add	x0, x0, #0x28e
    40002bc0:	97fffd20 	bl	40002040 <dlog>
    40002bc4:	97fff943 	bl	400010d0 <abort>
	...

0000000040002bd0 <arch_power_off>:
    40002bd0:	52800100 	mov	w0, #0x8                   	// #8
    40002bd4:	72b08000 	movk	w0, #0x8400, lsl #16
    40002bd8:	aa1f03e1 	mov	x1, xzr
    40002bdc:	aa1f03e2 	mov	x2, xzr
    40002be0:	aa1f03e3 	mov	x3, xzr
    40002be4:	aa1f03e4 	mov	x4, xzr
    40002be8:	aa1f03e5 	mov	x5, xzr
    40002bec:	aa1f03e6 	mov	x6, xzr
    40002bf0:	aa1f03e7 	mov	x7, xzr
    40002bf4:	d4000003 	smc	#0x0
    40002bf8:	14000000 	b	40002bf8 <arch_power_off+0x28>
