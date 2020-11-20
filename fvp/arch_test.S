
./arch_test.elf:     file format elf64-littleaarch64


Disassembly of section .init:

0000000080000000 <entry>:
    80000000:	14000010 	b	80000040 <entry+0x40>
    80000004:	00000000 	.word	0x00000000
    80000008:	00001000 	.word	0x00001000
    8000000c:	00000000 	.word	0x00000000
    80000010:	0000c000 	.word	0x0000c000
	...
    80000038:	644d5241 	.word	0x644d5241
    8000003c:	00000000 	.word	0x00000000
    80000040:	90000019 	adrp	x25, 80000000 <entry>
    80000044:	91000339 	add	x25, x25, #0x0
    80000048:	1800031d 	ldr	w29, 800000a8 <entry+0xa8>
    8000004c:	cb1d0339 	sub	x25, x25, x29
    80000050:	b000003d 	adrp	x29, 80005000 <rodata_begin>
    80000054:	912423bd 	add	x29, x29, #0x908
    80000058:	d000003e 	adrp	x30, 80006000 <rela_begin+0x6f8>
    8000005c:	910763de 	add	x30, x30, #0x1d8
    80000060:	eb1e03bf 	cmp	x29, x30
    80000064:	54000100 	b.eq	80000084 <entry+0x84>  // b.none
    80000068:	a8c16fba 	ldp	x26, x27, [x29], #16
    8000006c:	f84087bc 	ldr	x28, [x29], #8
    80000070:	71100f7f 	cmp	w27, #0x403
    80000074:	54000001 	b.ne	80000074 <entry+0x74>  // b.any
    80000078:	8b19039c 	add	x28, x28, x25
    8000007c:	f8396b5c 	str	x28, [x26, x25]
    80000080:	17fffff8 	b	80000060 <entry+0x60>
    80000084:	f000003d 	adrp	x29, 80007000 <__stack_chk_guard>
    80000088:	910643bd 	add	x29, x29, #0x190
    8000008c:	f000005e 	adrp	x30, 8000b000 <dlog_buffer+0x17e8>
    80000090:	912083de 	add	x30, x30, #0x820
    80000094:	eb1e03bf 	cmp	x29, x30
    80000098:	54000062 	b.cs	800000a4 <entry+0xa4>  // b.hs, b.nlast
    8000009c:	a8817fbf 	stp	xzr, xzr, [x29], #16
    800000a0:	17fffffd 	b	80000094 <entry+0x94>
    800000a4:	14000002 	b	800000ac <image_entry>
    800000a8:	80000000 	.word	0x80000000

00000000800000ac <image_entry>:
    800000ac:	10047abe 	adr	x30, 80009000 <global_context>
    800000b0:	910003df 	mov	sp, x30
    800000b4:	d2a0061e 	mov	x30, #0x300000              	// #3145728
    800000b8:	d518105e 	msr	cpacr_el1, x30
    800000bc:	d5033fdf 	isb
    800000c0:	940009b6 	bl	80002798 <kmain>
    800000c4:	9400135c 	bl	80004e34 <arch_power_off>
    800000c8:	d503207f 	wfi
    800000cc:	17ffffff 	b	800000c8 <image_entry+0x1c>

Disassembly of section .text:

0000000080000800 <vector_table_el1>:
    80000800:	14000000 	b	80000800 <vector_table_el1>
    80000804:	d503201f 	nop
    80000808:	d503201f 	nop
    8000080c:	d503201f 	nop
    80000810:	d503201f 	nop
    80000814:	d503201f 	nop
    80000818:	d503201f 	nop
    8000081c:	d503201f 	nop
    80000820:	d503201f 	nop
    80000824:	d503201f 	nop
    80000828:	d503201f 	nop
    8000082c:	d503201f 	nop
    80000830:	d503201f 	nop
    80000834:	d503201f 	nop
    80000838:	d503201f 	nop
    8000083c:	d503201f 	nop
    80000840:	d503201f 	nop
    80000844:	d503201f 	nop
    80000848:	d503201f 	nop
    8000084c:	d503201f 	nop
    80000850:	d503201f 	nop
    80000854:	d503201f 	nop
    80000858:	d503201f 	nop
    8000085c:	d503201f 	nop
    80000860:	d503201f 	nop
    80000864:	d503201f 	nop
    80000868:	d503201f 	nop
    8000086c:	d503201f 	nop
    80000870:	d503201f 	nop
    80000874:	d503201f 	nop
    80000878:	d503201f 	nop
    8000087c:	d503201f 	nop

0000000080000880 <irq_cur_sp0>:
    80000880:	d50041bf 	msr	spsel, #0x1
    80000884:	a9b407e0 	stp	x0, x1, [sp, #-192]!
    80000888:	a9010fe2 	stp	x2, x3, [sp, #16]
    8000088c:	a90217e4 	stp	x4, x5, [sp, #32]
    80000890:	a9031fe6 	stp	x6, x7, [sp, #48]
    80000894:	a90427e8 	stp	x8, x9, [sp, #64]
    80000898:	a9052fea 	stp	x10, x11, [sp, #80]
    8000089c:	a90637ec 	stp	x12, x13, [sp, #96]
    800008a0:	a9073fee 	stp	x14, x15, [sp, #112]
    800008a4:	a90847f0 	stp	x16, x17, [sp, #128]
    800008a8:	f9004bf2 	str	x18, [sp, #144]
    800008ac:	a90a7bfd 	stp	x29, x30, [sp, #160]
    800008b0:	d5384020 	mrs	x0, elr_el1
    800008b4:	d5384001 	mrs	x1, spsr_el1
    800008b8:	a90b07e0 	stp	x0, x1, [sp, #176]
    800008bc:	94001169 	bl	80004e60 <irq_current>
    800008c0:	a9410fe2 	ldp	x2, x3, [sp, #16]
    800008c4:	a94217e4 	ldp	x4, x5, [sp, #32]
    800008c8:	a9431fe6 	ldp	x6, x7, [sp, #48]
    800008cc:	a94427e8 	ldp	x8, x9, [sp, #64]
    800008d0:	a9452fea 	ldp	x10, x11, [sp, #80]
    800008d4:	a94637ec 	ldp	x12, x13, [sp, #96]
    800008d8:	a9473fee 	ldp	x14, x15, [sp, #112]
    800008dc:	a94847f0 	ldp	x16, x17, [sp, #128]
    800008e0:	f9404bf2 	ldr	x18, [sp, #144]
    800008e4:	a94a7bfd 	ldp	x29, x30, [sp, #160]
    800008e8:	a94b07e0 	ldp	x0, x1, [sp, #176]
    800008ec:	d5184020 	msr	elr_el1, x0
    800008f0:	d5184001 	msr	spsr_el1, x1
    800008f4:	a8cc07e0 	ldp	x0, x1, [sp], #192
    800008f8:	d50040bf 	msr	spsel, #0x0
    800008fc:	140001c1 	b	80001000 <exception_handler_return>

0000000080000900 <fiq_cur_sp0>:
    80000900:	14000000 	b	80000900 <fiq_cur_sp0>
    80000904:	d503201f 	nop
    80000908:	d503201f 	nop
    8000090c:	d503201f 	nop
    80000910:	d503201f 	nop
    80000914:	d503201f 	nop
    80000918:	d503201f 	nop
    8000091c:	d503201f 	nop
    80000920:	d503201f 	nop
    80000924:	d503201f 	nop
    80000928:	d503201f 	nop
    8000092c:	d503201f 	nop
    80000930:	d503201f 	nop
    80000934:	d503201f 	nop
    80000938:	d503201f 	nop
    8000093c:	d503201f 	nop
    80000940:	d503201f 	nop
    80000944:	d503201f 	nop
    80000948:	d503201f 	nop
    8000094c:	d503201f 	nop
    80000950:	d503201f 	nop
    80000954:	d503201f 	nop
    80000958:	d503201f 	nop
    8000095c:	d503201f 	nop
    80000960:	d503201f 	nop
    80000964:	d503201f 	nop
    80000968:	d503201f 	nop
    8000096c:	d503201f 	nop
    80000970:	d503201f 	nop
    80000974:	d503201f 	nop
    80000978:	d503201f 	nop
    8000097c:	d503201f 	nop

0000000080000980 <serr_cur_sp0>:
    80000980:	14000000 	b	80000980 <serr_cur_sp0>
    80000984:	d503201f 	nop
    80000988:	d503201f 	nop
    8000098c:	d503201f 	nop
    80000990:	d503201f 	nop
    80000994:	d503201f 	nop
    80000998:	d503201f 	nop
    8000099c:	d503201f 	nop
    800009a0:	d503201f 	nop
    800009a4:	d503201f 	nop
    800009a8:	d503201f 	nop
    800009ac:	d503201f 	nop
    800009b0:	d503201f 	nop
    800009b4:	d503201f 	nop
    800009b8:	d503201f 	nop
    800009bc:	d503201f 	nop
    800009c0:	d503201f 	nop
    800009c4:	d503201f 	nop
    800009c8:	d503201f 	nop
    800009cc:	d503201f 	nop
    800009d0:	d503201f 	nop
    800009d4:	d503201f 	nop
    800009d8:	d503201f 	nop
    800009dc:	d503201f 	nop
    800009e0:	d503201f 	nop
    800009e4:	d503201f 	nop
    800009e8:	d503201f 	nop
    800009ec:	d503201f 	nop
    800009f0:	d503201f 	nop
    800009f4:	d503201f 	nop
    800009f8:	d503201f 	nop
    800009fc:	d503201f 	nop

0000000080000a00 <sync_cur_spx>:
    80000a00:	a9b407e0 	stp	x0, x1, [sp, #-192]!
    80000a04:	a9010fe2 	stp	x2, x3, [sp, #16]
    80000a08:	a90217e4 	stp	x4, x5, [sp, #32]
    80000a0c:	a9031fe6 	stp	x6, x7, [sp, #48]
    80000a10:	a90427e8 	stp	x8, x9, [sp, #64]
    80000a14:	a9052fea 	stp	x10, x11, [sp, #80]
    80000a18:	a90637ec 	stp	x12, x13, [sp, #96]
    80000a1c:	a9073fee 	stp	x14, x15, [sp, #112]
    80000a20:	a90847f0 	stp	x16, x17, [sp, #128]
    80000a24:	f9004bf2 	str	x18, [sp, #144]
    80000a28:	a90a7bfd 	stp	x29, x30, [sp, #160]
    80000a2c:	d5384020 	mrs	x0, elr_el1
    80000a30:	d5384001 	mrs	x1, spsr_el1
    80000a34:	a90b07e0 	stp	x0, x1, [sp, #176]
    80000a38:	9400112f 	bl	80004ef4 <sync_exception_current>
    80000a3c:	14000161 	b	80000fc0 <restore_from_stack_and_return>
    80000a40:	d503201f 	nop
    80000a44:	d503201f 	nop
    80000a48:	d503201f 	nop
    80000a4c:	d503201f 	nop
    80000a50:	d503201f 	nop
    80000a54:	d503201f 	nop
    80000a58:	d503201f 	nop
    80000a5c:	d503201f 	nop
    80000a60:	d503201f 	nop
    80000a64:	d503201f 	nop
    80000a68:	d503201f 	nop
    80000a6c:	d503201f 	nop
    80000a70:	d503201f 	nop
    80000a74:	d503201f 	nop
    80000a78:	d503201f 	nop
    80000a7c:	d503201f 	nop

0000000080000a80 <irq_cur_spx>:
    80000a80:	a9b407e0 	stp	x0, x1, [sp, #-192]!
    80000a84:	a9010fe2 	stp	x2, x3, [sp, #16]
    80000a88:	a90217e4 	stp	x4, x5, [sp, #32]
    80000a8c:	a9031fe6 	stp	x6, x7, [sp, #48]
    80000a90:	a90427e8 	stp	x8, x9, [sp, #64]
    80000a94:	a9052fea 	stp	x10, x11, [sp, #80]
    80000a98:	a90637ec 	stp	x12, x13, [sp, #96]
    80000a9c:	a9073fee 	stp	x14, x15, [sp, #112]
    80000aa0:	a90847f0 	stp	x16, x17, [sp, #128]
    80000aa4:	f9004bf2 	str	x18, [sp, #144]
    80000aa8:	a90a7bfd 	stp	x29, x30, [sp, #160]
    80000aac:	d5384020 	mrs	x0, elr_el1
    80000ab0:	d5384001 	mrs	x1, spsr_el1
    80000ab4:	a90b07e0 	stp	x0, x1, [sp, #176]
    80000ab8:	940010ea 	bl	80004e60 <irq_current>
    80000abc:	14000141 	b	80000fc0 <restore_from_stack_and_return>
    80000ac0:	d503201f 	nop
    80000ac4:	d503201f 	nop
    80000ac8:	d503201f 	nop
    80000acc:	d503201f 	nop
    80000ad0:	d503201f 	nop
    80000ad4:	d503201f 	nop
    80000ad8:	d503201f 	nop
    80000adc:	d503201f 	nop
    80000ae0:	d503201f 	nop
    80000ae4:	d503201f 	nop
    80000ae8:	d503201f 	nop
    80000aec:	d503201f 	nop
    80000af0:	d503201f 	nop
    80000af4:	d503201f 	nop
    80000af8:	d503201f 	nop
    80000afc:	d503201f 	nop

0000000080000b00 <fiq_cur_spx>:
    80000b00:	14000000 	b	80000b00 <fiq_cur_spx>
    80000b04:	d503201f 	nop
    80000b08:	d503201f 	nop
    80000b0c:	d503201f 	nop
    80000b10:	d503201f 	nop
    80000b14:	d503201f 	nop
    80000b18:	d503201f 	nop
    80000b1c:	d503201f 	nop
    80000b20:	d503201f 	nop
    80000b24:	d503201f 	nop
    80000b28:	d503201f 	nop
    80000b2c:	d503201f 	nop
    80000b30:	d503201f 	nop
    80000b34:	d503201f 	nop
    80000b38:	d503201f 	nop
    80000b3c:	d503201f 	nop
    80000b40:	d503201f 	nop
    80000b44:	d503201f 	nop
    80000b48:	d503201f 	nop
    80000b4c:	d503201f 	nop
    80000b50:	d503201f 	nop
    80000b54:	d503201f 	nop
    80000b58:	d503201f 	nop
    80000b5c:	d503201f 	nop
    80000b60:	d503201f 	nop
    80000b64:	d503201f 	nop
    80000b68:	d503201f 	nop
    80000b6c:	d503201f 	nop
    80000b70:	d503201f 	nop
    80000b74:	d503201f 	nop
    80000b78:	d503201f 	nop
    80000b7c:	d503201f 	nop

0000000080000b80 <serr_cur_spx>:
    80000b80:	14000000 	b	80000b80 <serr_cur_spx>
    80000b84:	d503201f 	nop
    80000b88:	d503201f 	nop
    80000b8c:	d503201f 	nop
    80000b90:	d503201f 	nop
    80000b94:	d503201f 	nop
    80000b98:	d503201f 	nop
    80000b9c:	d503201f 	nop
    80000ba0:	d503201f 	nop
    80000ba4:	d503201f 	nop
    80000ba8:	d503201f 	nop
    80000bac:	d503201f 	nop
    80000bb0:	d503201f 	nop
    80000bb4:	d503201f 	nop
    80000bb8:	d503201f 	nop
    80000bbc:	d503201f 	nop
    80000bc0:	d503201f 	nop
    80000bc4:	d503201f 	nop
    80000bc8:	d503201f 	nop
    80000bcc:	d503201f 	nop
    80000bd0:	d503201f 	nop
    80000bd4:	d503201f 	nop
    80000bd8:	d503201f 	nop
    80000bdc:	d503201f 	nop
    80000be0:	d503201f 	nop
    80000be4:	d503201f 	nop
    80000be8:	d503201f 	nop
    80000bec:	d503201f 	nop
    80000bf0:	d503201f 	nop
    80000bf4:	d503201f 	nop
    80000bf8:	d503201f 	nop
    80000bfc:	d503201f 	nop

0000000080000c00 <sync_lower_64>:
    80000c00:	14000000 	b	80000c00 <sync_lower_64>
    80000c04:	d503201f 	nop
    80000c08:	d503201f 	nop
    80000c0c:	d503201f 	nop
    80000c10:	d503201f 	nop
    80000c14:	d503201f 	nop
    80000c18:	d503201f 	nop
    80000c1c:	d503201f 	nop
    80000c20:	d503201f 	nop
    80000c24:	d503201f 	nop
    80000c28:	d503201f 	nop
    80000c2c:	d503201f 	nop
    80000c30:	d503201f 	nop
    80000c34:	d503201f 	nop
    80000c38:	d503201f 	nop
    80000c3c:	d503201f 	nop
    80000c40:	d503201f 	nop
    80000c44:	d503201f 	nop
    80000c48:	d503201f 	nop
    80000c4c:	d503201f 	nop
    80000c50:	d503201f 	nop
    80000c54:	d503201f 	nop
    80000c58:	d503201f 	nop
    80000c5c:	d503201f 	nop
    80000c60:	d503201f 	nop
    80000c64:	d503201f 	nop
    80000c68:	d503201f 	nop
    80000c6c:	d503201f 	nop
    80000c70:	d503201f 	nop
    80000c74:	d503201f 	nop
    80000c78:	d503201f 	nop
    80000c7c:	d503201f 	nop

0000000080000c80 <irq_lower_64>:
    80000c80:	14000000 	b	80000c80 <irq_lower_64>
    80000c84:	d503201f 	nop
    80000c88:	d503201f 	nop
    80000c8c:	d503201f 	nop
    80000c90:	d503201f 	nop
    80000c94:	d503201f 	nop
    80000c98:	d503201f 	nop
    80000c9c:	d503201f 	nop
    80000ca0:	d503201f 	nop
    80000ca4:	d503201f 	nop
    80000ca8:	d503201f 	nop
    80000cac:	d503201f 	nop
    80000cb0:	d503201f 	nop
    80000cb4:	d503201f 	nop
    80000cb8:	d503201f 	nop
    80000cbc:	d503201f 	nop
    80000cc0:	d503201f 	nop
    80000cc4:	d503201f 	nop
    80000cc8:	d503201f 	nop
    80000ccc:	d503201f 	nop
    80000cd0:	d503201f 	nop
    80000cd4:	d503201f 	nop
    80000cd8:	d503201f 	nop
    80000cdc:	d503201f 	nop
    80000ce0:	d503201f 	nop
    80000ce4:	d503201f 	nop
    80000ce8:	d503201f 	nop
    80000cec:	d503201f 	nop
    80000cf0:	d503201f 	nop
    80000cf4:	d503201f 	nop
    80000cf8:	d503201f 	nop
    80000cfc:	d503201f 	nop

0000000080000d00 <fiq_lower_64>:
    80000d00:	14000000 	b	80000d00 <fiq_lower_64>
    80000d04:	d503201f 	nop
    80000d08:	d503201f 	nop
    80000d0c:	d503201f 	nop
    80000d10:	d503201f 	nop
    80000d14:	d503201f 	nop
    80000d18:	d503201f 	nop
    80000d1c:	d503201f 	nop
    80000d20:	d503201f 	nop
    80000d24:	d503201f 	nop
    80000d28:	d503201f 	nop
    80000d2c:	d503201f 	nop
    80000d30:	d503201f 	nop
    80000d34:	d503201f 	nop
    80000d38:	d503201f 	nop
    80000d3c:	d503201f 	nop
    80000d40:	d503201f 	nop
    80000d44:	d503201f 	nop
    80000d48:	d503201f 	nop
    80000d4c:	d503201f 	nop
    80000d50:	d503201f 	nop
    80000d54:	d503201f 	nop
    80000d58:	d503201f 	nop
    80000d5c:	d503201f 	nop
    80000d60:	d503201f 	nop
    80000d64:	d503201f 	nop
    80000d68:	d503201f 	nop
    80000d6c:	d503201f 	nop
    80000d70:	d503201f 	nop
    80000d74:	d503201f 	nop
    80000d78:	d503201f 	nop
    80000d7c:	d503201f 	nop

0000000080000d80 <serr_lower_64>:
    80000d80:	14000000 	b	80000d80 <serr_lower_64>
    80000d84:	d503201f 	nop
    80000d88:	d503201f 	nop
    80000d8c:	d503201f 	nop
    80000d90:	d503201f 	nop
    80000d94:	d503201f 	nop
    80000d98:	d503201f 	nop
    80000d9c:	d503201f 	nop
    80000da0:	d503201f 	nop
    80000da4:	d503201f 	nop
    80000da8:	d503201f 	nop
    80000dac:	d503201f 	nop
    80000db0:	d503201f 	nop
    80000db4:	d503201f 	nop
    80000db8:	d503201f 	nop
    80000dbc:	d503201f 	nop
    80000dc0:	d503201f 	nop
    80000dc4:	d503201f 	nop
    80000dc8:	d503201f 	nop
    80000dcc:	d503201f 	nop
    80000dd0:	d503201f 	nop
    80000dd4:	d503201f 	nop
    80000dd8:	d503201f 	nop
    80000ddc:	d503201f 	nop
    80000de0:	d503201f 	nop
    80000de4:	d503201f 	nop
    80000de8:	d503201f 	nop
    80000dec:	d503201f 	nop
    80000df0:	d503201f 	nop
    80000df4:	d503201f 	nop
    80000df8:	d503201f 	nop
    80000dfc:	d503201f 	nop

0000000080000e00 <sync_lower_32>:
    80000e00:	14000000 	b	80000e00 <sync_lower_32>
    80000e04:	d503201f 	nop
    80000e08:	d503201f 	nop
    80000e0c:	d503201f 	nop
    80000e10:	d503201f 	nop
    80000e14:	d503201f 	nop
    80000e18:	d503201f 	nop
    80000e1c:	d503201f 	nop
    80000e20:	d503201f 	nop
    80000e24:	d503201f 	nop
    80000e28:	d503201f 	nop
    80000e2c:	d503201f 	nop
    80000e30:	d503201f 	nop
    80000e34:	d503201f 	nop
    80000e38:	d503201f 	nop
    80000e3c:	d503201f 	nop
    80000e40:	d503201f 	nop
    80000e44:	d503201f 	nop
    80000e48:	d503201f 	nop
    80000e4c:	d503201f 	nop
    80000e50:	d503201f 	nop
    80000e54:	d503201f 	nop
    80000e58:	d503201f 	nop
    80000e5c:	d503201f 	nop
    80000e60:	d503201f 	nop
    80000e64:	d503201f 	nop
    80000e68:	d503201f 	nop
    80000e6c:	d503201f 	nop
    80000e70:	d503201f 	nop
    80000e74:	d503201f 	nop
    80000e78:	d503201f 	nop
    80000e7c:	d503201f 	nop

0000000080000e80 <irq_lower_32>:
    80000e80:	14000000 	b	80000e80 <irq_lower_32>
    80000e84:	d503201f 	nop
    80000e88:	d503201f 	nop
    80000e8c:	d503201f 	nop
    80000e90:	d503201f 	nop
    80000e94:	d503201f 	nop
    80000e98:	d503201f 	nop
    80000e9c:	d503201f 	nop
    80000ea0:	d503201f 	nop
    80000ea4:	d503201f 	nop
    80000ea8:	d503201f 	nop
    80000eac:	d503201f 	nop
    80000eb0:	d503201f 	nop
    80000eb4:	d503201f 	nop
    80000eb8:	d503201f 	nop
    80000ebc:	d503201f 	nop
    80000ec0:	d503201f 	nop
    80000ec4:	d503201f 	nop
    80000ec8:	d503201f 	nop
    80000ecc:	d503201f 	nop
    80000ed0:	d503201f 	nop
    80000ed4:	d503201f 	nop
    80000ed8:	d503201f 	nop
    80000edc:	d503201f 	nop
    80000ee0:	d503201f 	nop
    80000ee4:	d503201f 	nop
    80000ee8:	d503201f 	nop
    80000eec:	d503201f 	nop
    80000ef0:	d503201f 	nop
    80000ef4:	d503201f 	nop
    80000ef8:	d503201f 	nop
    80000efc:	d503201f 	nop

0000000080000f00 <fiq_lower_32>:
    80000f00:	14000000 	b	80000f00 <fiq_lower_32>
    80000f04:	d503201f 	nop
    80000f08:	d503201f 	nop
    80000f0c:	d503201f 	nop
    80000f10:	d503201f 	nop
    80000f14:	d503201f 	nop
    80000f18:	d503201f 	nop
    80000f1c:	d503201f 	nop
    80000f20:	d503201f 	nop
    80000f24:	d503201f 	nop
    80000f28:	d503201f 	nop
    80000f2c:	d503201f 	nop
    80000f30:	d503201f 	nop
    80000f34:	d503201f 	nop
    80000f38:	d503201f 	nop
    80000f3c:	d503201f 	nop
    80000f40:	d503201f 	nop
    80000f44:	d503201f 	nop
    80000f48:	d503201f 	nop
    80000f4c:	d503201f 	nop
    80000f50:	d503201f 	nop
    80000f54:	d503201f 	nop
    80000f58:	d503201f 	nop
    80000f5c:	d503201f 	nop
    80000f60:	d503201f 	nop
    80000f64:	d503201f 	nop
    80000f68:	d503201f 	nop
    80000f6c:	d503201f 	nop
    80000f70:	d503201f 	nop
    80000f74:	d503201f 	nop
    80000f78:	d503201f 	nop
    80000f7c:	d503201f 	nop

0000000080000f80 <serr_lower_32>:
    80000f80:	14000000 	b	80000f80 <serr_lower_32>
    80000f84:	d503201f 	nop
    80000f88:	d503201f 	nop
    80000f8c:	d503201f 	nop
    80000f90:	d503201f 	nop
    80000f94:	d503201f 	nop
    80000f98:	d503201f 	nop
    80000f9c:	d503201f 	nop
    80000fa0:	d503201f 	nop
    80000fa4:	d503201f 	nop
    80000fa8:	d503201f 	nop
    80000fac:	d503201f 	nop
    80000fb0:	d503201f 	nop
    80000fb4:	d503201f 	nop
    80000fb8:	d503201f 	nop
    80000fbc:	d503201f 	nop

0000000080000fc0 <restore_from_stack_and_return>:
    80000fc0:	a9410fe2 	ldp	x2, x3, [sp, #16]
    80000fc4:	a94217e4 	ldp	x4, x5, [sp, #32]
    80000fc8:	a9431fe6 	ldp	x6, x7, [sp, #48]
    80000fcc:	a94427e8 	ldp	x8, x9, [sp, #64]
    80000fd0:	a9452fea 	ldp	x10, x11, [sp, #80]
    80000fd4:	a94637ec 	ldp	x12, x13, [sp, #96]
    80000fd8:	a9473fee 	ldp	x14, x15, [sp, #112]
    80000fdc:	a94847f0 	ldp	x16, x17, [sp, #128]
    80000fe0:	f9404bf2 	ldr	x18, [sp, #144]
    80000fe4:	a94a7bfd 	ldp	x29, x30, [sp, #160]
    80000fe8:	b5000060 	cbnz	x0, 80000ff4 <skip_elr>
    80000fec:	f9405be1 	ldr	x1, [sp, #176]
    80000ff0:	d5184021 	msr	elr_el1, x1

0000000080000ff4 <skip_elr>:
    80000ff4:	f9405fe1 	ldr	x1, [sp, #184]
    80000ff8:	d5184001 	msr	spsr_el1, x1
    80000ffc:	a8cc07e0 	ldp	x0, x1, [sp], #192

0000000080001000 <exception_handler_return>:
    80001000:	d69f03e0 	eret
    80001004:	d503379f 	dsb	nsh
    80001008:	d5033fdf 	isb

000000008000100c <hftest_test_ctor_dlog_log_buffer>:
    8000100c:	d100c3ff 	sub	sp, sp, #0x30
    80001010:	f9000bf3 	str	x19, [sp, #16]
    80001014:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001018:	910083fd 	add	x29, sp, #0x20
    8000101c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001020:	f9400108 	ldr	x8, [x8]
    80001024:	f90007e8 	str	x8, [sp, #8]
    80001028:	90000049 	adrp	x9, 80009000 <global_context>
    8000102c:	f9401928 	ldr	x8, [x9, #48]
    80001030:	f100c51f 	cmp	x8, #0x31
    80001034:	54000248 	b.hi	8000107c <hftest_test_ctor_dlog_log_buffer+0x70>  // b.pmore
    80001038:	9100050a 	add	x10, x8, #0x1
    8000103c:	f900192a 	str	x10, [x9, #48]
    80001040:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001044:	f94007e9 	ldr	x9, [sp, #8]
    80001048:	f940014a 	ldr	x10, [x10]
    8000104c:	eb09015f 	cmp	x10, x9
    80001050:	540004c1 	b.ne	800010e8 <hftest_test_ctor_dlog_log_buffer+0xdc>  // b.any
    80001054:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001058:	52800502 	mov	w2, #0x28                  	// #40
    8000105c:	f9400bf3 	ldr	x19, [sp, #16]
    80001060:	90000049 	adrp	x9, 80009000 <global_context>
    80001064:	9100e129 	add	x9, x9, #0x38
    80001068:	9b022500 	madd	x0, x8, x2, x9
    8000106c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001070:	9115a021 	add	x1, x1, #0x568
    80001074:	9100c3ff 	add	sp, sp, #0x30
    80001078:	14000d25 	b	8000450c <memcpy>
    8000107c:	90000053 	adrp	x19, 80009000 <global_context>
    80001080:	91000273 	add	x19, x19, #0x0
    80001084:	b9400268 	ldr	w8, [x19]
    80001088:	11000508 	add	w8, w8, #0x1
    8000108c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001090:	91183400 	add	x0, x0, #0x60d
    80001094:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001098:	910a0821 	add	x1, x1, #0x282
    8000109c:	52800522 	mov	w2, #0x29                  	// #41
    800010a0:	b9000268 	str	w8, [x19]
    800010a4:	94000cf7 	bl	80004480 <dlog>
    800010a8:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800010ac:	91053000 	add	x0, x0, #0x14c
    800010b0:	94000cf4 	bl	80004480 <dlog>
    800010b4:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800010b8:	91240400 	add	x0, x0, #0x901
    800010bc:	94000cf1 	bl	80004480 <dlog>
    800010c0:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    800010c4:	f9400660 	ldr	x0, [x19, #8]
    800010c8:	f94007e8 	ldr	x8, [sp, #8]
    800010cc:	f9400129 	ldr	x9, [x9]
    800010d0:	eb08013f 	cmp	x9, x8
    800010d4:	540000a1 	b.ne	800010e8 <hftest_test_ctor_dlog_log_buffer+0xdc>  // b.any
    800010d8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800010dc:	f9400bf3 	ldr	x19, [sp, #16]
    800010e0:	9100c3ff 	add	sp, sp, #0x30
    800010e4:	d61f0000 	br	x0
    800010e8:	94000d04 	bl	800044f8 <__stack_chk_fail>

00000000800010ec <hftest_test_fn_dlog_log_buffer>:
    800010ec:	d10203ff 	sub	sp, sp, #0x80
    800010f0:	a9026ffc 	stp	x28, x27, [sp, #32]
    800010f4:	a90367fa 	stp	x26, x25, [sp, #48]
    800010f8:	a9045ff8 	stp	x24, x23, [sp, #64]
    800010fc:	a90557f6 	stp	x22, x21, [sp, #80]
    80001100:	a9064ff4 	stp	x20, x19, [sp, #96]
    80001104:	a9077bfd 	stp	x29, x30, [sp, #112]
    80001108:	9101c3fd 	add	x29, sp, #0x70
    8000110c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001110:	f9400108 	ldr	x8, [x8]
    80001114:	f9000fe8 	str	x8, [sp, #24]
    80001118:	528dcd28 	mov	w8, #0x6e69                	// #28265
    8000111c:	72a14ce8 	movk	w8, #0xa67, lsl #16
    80001120:	90000029 	adrp	x9, 80005000 <rodata_begin>
    80001124:	91197529 	add	x9, x9, #0x65d
    80001128:	3940092a 	ldrb	w10, [x9, #2]
    8000112c:	b90013e8 	str	w8, [sp, #16]
    80001130:	39400d28 	ldrb	w8, [x9, #3]
    80001134:	b3781d0a 	bfi	x10, x8, #8, #8
    80001138:	39400528 	ldrb	w8, [x9, #1]
    8000113c:	3940012b 	ldrb	w11, [x9]
    80001140:	b3781d0b 	bfi	x11, x8, #8, #8
    80001144:	390053ff 	strb	wzr, [sp, #20]
    80001148:	b3703d4b 	bfi	x11, x10, #16, #16
    8000114c:	39401528 	ldrb	w8, [x9, #5]
    80001150:	910023e0 	add	x0, sp, #0x8
    80001154:	38404d2a 	ldrb	w10, [x9, #4]!
    80001158:	33181d0a 	bfi	w10, w8, #8, #8
    8000115c:	39400d2c 	ldrb	w12, [x9, #3]
    80001160:	39400929 	ldrb	w9, [x9, #2]
    80001164:	33181d89 	bfi	w9, w12, #8, #8
    80001168:	33103d2a 	bfi	w10, w9, #16, #16
    8000116c:	b3607d4b 	bfi	x11, x10, #32, #32
    80001170:	f90007eb 	str	x11, [sp, #8]
    80001174:	910023f3 	add	x19, sp, #0x8
    80001178:	94000cc2 	bl	80004480 <dlog>
    8000117c:	aa1f03e8 	mov	x8, xzr
    80001180:	b2400269 	orr	x9, x19, #0x1
    80001184:	52800a8a 	mov	w10, #0x54                  	// #84
    80001188:	9000004c 	adrp	x12, 80009000 <global_context>
    8000118c:	9120618c 	add	x12, x12, #0x818
    80001190:	3868698b 	ldrb	w11, [x12, x8]
    80001194:	72001d5f 	tst	w10, #0xff
    80001198:	540000e0 	b.eq	800011b4 <hftest_test_fn_dlog_log_buffer+0xc8>  // b.none
    8000119c:	6b2a017f 	cmp	w11, w10, uxtb
    800011a0:	fa4c0904 	ccmp	x8, #0xc, #0x4, eq  // eq = none
    800011a4:	54000080 	b.eq	800011b4 <hftest_test_fn_dlog_log_buffer+0xc8>  // b.none
    800011a8:	3868692a 	ldrb	w10, [x9, x8]
    800011ac:	91000508 	add	x8, x8, #0x1
    800011b0:	17fffff8 	b	80001190 <hftest_test_fn_dlog_log_buffer+0xa4>
    800011b4:	12001d48 	and	w8, w10, #0xff
    800011b8:	6b0b0113 	subs	w19, w8, w11
    800011bc:	90000056 	adrp	x22, 80009000 <global_context>
    800011c0:	910002d6 	add	x22, x22, #0x0
    800011c4:	54000500 	b.eq	80001264 <hftest_test_fn_dlog_log_buffer+0x178>  // b.none
    800011c8:	b94002c8 	ldr	w8, [x22]
    800011cc:	11000508 	add	w8, w8, #0x1
    800011d0:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800011d4:	91183400 	add	x0, x0, #0x60d
    800011d8:	90000021 	adrp	x1, 80005000 <rodata_begin>
    800011dc:	91083821 	add	x1, x1, #0x20e
    800011e0:	528002a2 	mov	w2, #0x15                  	// #21
    800011e4:	b90002c8 	str	w8, [x22]
    800011e8:	94000ca6 	bl	80004480 <dlog>
    800011ec:	90000034 	adrp	x20, 80005000 <rodata_begin>
    800011f0:	91149a94 	add	x20, x20, #0x526
    800011f4:	90000021 	adrp	x1, 80005000 <rodata_begin>
    800011f8:	91151c21 	add	x1, x1, #0x547
    800011fc:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001200:	910b7400 	add	x0, x0, #0x2dd
    80001204:	90000022 	adrp	x2, 80005000 <rodata_begin>
    80001208:	910bf842 	add	x2, x2, #0x2fe
    8000120c:	aa1403e3 	mov	x3, x20
    80001210:	aa0103e4 	mov	x4, x1
    80001214:	94000c9b 	bl	80004480 <dlog>
    80001218:	90000035 	adrp	x21, 80005000 <rodata_begin>
    8000121c:	91082eb5 	add	x21, x21, #0x20b
    80001220:	aa1503e0 	mov	x0, x21
    80001224:	2a1303e1 	mov	w1, w19
    80001228:	94000c96 	bl	80004480 <dlog>
    8000122c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001230:	910be000 	add	x0, x0, #0x2f8
    80001234:	aa1403e1 	mov	x1, x20
    80001238:	94000c92 	bl	80004480 <dlog>
    8000123c:	aa1503e0 	mov	x0, x21
    80001240:	2a1f03e1 	mov	w1, wzr
    80001244:	94000c8f 	bl	80004480 <dlog>
    80001248:	90000020 	adrp	x0, 80005000 <rodata_begin>
    8000124c:	91240000 	add	x0, x0, #0x900
    80001250:	94000c8c 	bl	80004480 <dlog>
    80001254:	f94006c8 	ldr	x8, [x22, #8]
    80001258:	d63f0100 	blr	x8
    8000125c:	9000004c 	adrp	x12, 80009000 <global_context>
    80001260:	9120618c 	add	x12, x12, #0x818
    80001264:	90000048 	adrp	x8, 80009000 <global_context>
    80001268:	f9440913 	ldr	x19, [x8, #2064]
    8000126c:	f100327f 	cmp	x19, #0xc
    80001270:	54000500 	b.eq	80001310 <hftest_test_fn_dlog_log_buffer+0x224>  // b.none
    80001274:	b94002c8 	ldr	w8, [x22]
    80001278:	11000508 	add	w8, w8, #0x1
    8000127c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001280:	91183400 	add	x0, x0, #0x60d
    80001284:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001288:	91083821 	add	x1, x1, #0x20e
    8000128c:	528002e2 	mov	w2, #0x17                  	// #23
    80001290:	b90002c8 	str	w8, [x22]
    80001294:	94000c7b 	bl	80004480 <dlog>
    80001298:	90000034 	adrp	x20, 80005000 <rodata_begin>
    8000129c:	9111de94 	add	x20, x20, #0x477
    800012a0:	90000021 	adrp	x1, 80005000 <rodata_begin>
    800012a4:	9104e421 	add	x1, x1, #0x139
    800012a8:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800012ac:	910b7400 	add	x0, x0, #0x2dd
    800012b0:	90000022 	adrp	x2, 80005000 <rodata_begin>
    800012b4:	910bf842 	add	x2, x2, #0x2fe
    800012b8:	aa1403e3 	mov	x3, x20
    800012bc:	aa0103e4 	mov	x4, x1
    800012c0:	94000c70 	bl	80004480 <dlog>
    800012c4:	90000035 	adrp	x21, 80005000 <rodata_begin>
    800012c8:	910436b5 	add	x21, x21, #0x10d
    800012cc:	aa1503e0 	mov	x0, x21
    800012d0:	aa1303e1 	mov	x1, x19
    800012d4:	94000c6b 	bl	80004480 <dlog>
    800012d8:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800012dc:	910be000 	add	x0, x0, #0x2f8
    800012e0:	aa1403e1 	mov	x1, x20
    800012e4:	94000c67 	bl	80004480 <dlog>
    800012e8:	aa1503e0 	mov	x0, x21
    800012ec:	52800181 	mov	w1, #0xc                   	// #12
    800012f0:	94000c64 	bl	80004480 <dlog>
    800012f4:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800012f8:	91240000 	add	x0, x0, #0x900
    800012fc:	94000c61 	bl	80004480 <dlog>
    80001300:	f94006c8 	ldr	x8, [x22, #8]
    80001304:	d63f0100 	blr	x8
    80001308:	9000004c 	adrp	x12, 80009000 <global_context>
    8000130c:	9120618c 	add	x12, x12, #0x818
    80001310:	90000037 	adrp	x23, 80005000 <rodata_begin>
    80001314:	911622f7 	add	x23, x23, #0x588
    80001318:	90000038 	adrp	x24, 80005000 <rodata_begin>
    8000131c:	910ac318 	add	x24, x24, #0x2b0
    80001320:	90000039 	adrp	x25, 80005000 <rodata_begin>
    80001324:	910ab739 	add	x25, x25, #0x2ad
    80001328:	52800195 	mov	w21, #0xc                   	// #12
    8000132c:	9000003a 	adrp	x26, 80005000 <rodata_begin>
    80001330:	910be35a 	add	x26, x26, #0x2f8
    80001334:	90000056 	adrp	x22, 80009000 <global_context>
    80001338:	9000003b 	adrp	x27, 80005000 <rodata_begin>
    8000133c:	91082f7b 	add	x27, x27, #0x20b
    80001340:	5280033c 	mov	w28, #0x19                  	// #25
    80001344:	90000033 	adrp	x19, 80005000 <rodata_begin>
    80001348:	91240273 	add	x19, x19, #0x900
    8000134c:	38756994 	ldrb	w20, [x12, x21]
    80001350:	350000d4 	cbnz	w20, 80001368 <hftest_test_fn_dlog_log_buffer+0x27c>
    80001354:	910006b5 	add	x21, x21, #0x1
    80001358:	f1400abf 	cmp	x21, #0x2, lsl #12
    8000135c:	54000440 	b.eq	800013e4 <hftest_test_fn_dlog_log_buffer+0x2f8>  // b.none
    80001360:	38756994 	ldrb	w20, [x12, x21]
    80001364:	34ffff94 	cbz	w20, 80001354 <hftest_test_fn_dlog_log_buffer+0x268>
    80001368:	b94002c8 	ldr	w8, [x22]
    8000136c:	11000508 	add	w8, w8, #0x1
    80001370:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001374:	91183400 	add	x0, x0, #0x60d
    80001378:	90000021 	adrp	x1, 80005000 <rodata_begin>
    8000137c:	91083821 	add	x1, x1, #0x20e
    80001380:	2a1c03e2 	mov	w2, w28
    80001384:	b90002c8 	str	w8, [x22]
    80001388:	94000c3e 	bl	80004480 <dlog>
    8000138c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001390:	910b7400 	add	x0, x0, #0x2dd
    80001394:	aa1803e1 	mov	x1, x24
    80001398:	90000022 	adrp	x2, 80005000 <rodata_begin>
    8000139c:	910bf842 	add	x2, x2, #0x2fe
    800013a0:	aa1703e3 	mov	x3, x23
    800013a4:	aa1803e4 	mov	x4, x24
    800013a8:	94000c36 	bl	80004480 <dlog>
    800013ac:	aa1903e0 	mov	x0, x25
    800013b0:	2a1403e1 	mov	w1, w20
    800013b4:	94000c33 	bl	80004480 <dlog>
    800013b8:	aa1a03e0 	mov	x0, x26
    800013bc:	aa1703e1 	mov	x1, x23
    800013c0:	94000c30 	bl	80004480 <dlog>
    800013c4:	aa1b03e0 	mov	x0, x27
    800013c8:	2a1f03e1 	mov	w1, wzr
    800013cc:	94000c2d 	bl	80004480 <dlog>
    800013d0:	aa1303e0 	mov	x0, x19
    800013d4:	94000c2b 	bl	80004480 <dlog>
    800013d8:	9000004c 	adrp	x12, 80009000 <global_context>
    800013dc:	9120618c 	add	x12, x12, #0x818
    800013e0:	17ffffdd 	b	80001354 <hftest_test_fn_dlog_log_buffer+0x268>
    800013e4:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    800013e8:	f9400fe8 	ldr	x8, [sp, #24]
    800013ec:	f9400129 	ldr	x9, [x9]
    800013f0:	eb08013f 	cmp	x9, x8
    800013f4:	54000121 	b.ne	80001418 <hftest_test_fn_dlog_log_buffer+0x32c>  // b.any
    800013f8:	a9477bfd 	ldp	x29, x30, [sp, #112]
    800013fc:	a9464ff4 	ldp	x20, x19, [sp, #96]
    80001400:	a94557f6 	ldp	x22, x21, [sp, #80]
    80001404:	a9445ff8 	ldp	x24, x23, [sp, #64]
    80001408:	a94367fa 	ldp	x26, x25, [sp, #48]
    8000140c:	a9426ffc 	ldp	x28, x27, [sp, #32]
    80001410:	910203ff 	add	sp, sp, #0x80
    80001414:	d65f03c0 	ret
    80001418:	94000c38 	bl	800044f8 <__stack_chk_fail>

000000008000141c <hftest_test_ctor_arch_mm_block_allowed_at_level0>:
    8000141c:	d100c3ff 	sub	sp, sp, #0x30
    80001420:	f9000bf3 	str	x19, [sp, #16]
    80001424:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001428:	910083fd 	add	x29, sp, #0x20
    8000142c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001430:	f9400108 	ldr	x8, [x8]
    80001434:	f90007e8 	str	x8, [sp, #8]
    80001438:	90000049 	adrp	x9, 80009000 <global_context>
    8000143c:	f9401928 	ldr	x8, [x9, #48]
    80001440:	f100c51f 	cmp	x8, #0x31
    80001444:	54000248 	b.hi	8000148c <hftest_test_ctor_arch_mm_block_allowed_at_level0+0x70>  // b.pmore
    80001448:	9100050a 	add	x10, x8, #0x1
    8000144c:	f900192a 	str	x10, [x9, #48]
    80001450:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001454:	f94007e9 	ldr	x9, [sp, #8]
    80001458:	f940014a 	ldr	x10, [x10]
    8000145c:	eb09015f 	cmp	x10, x9
    80001460:	540004c1 	b.ne	800014f8 <hftest_test_ctor_arch_mm_block_allowed_at_level0+0xdc>  // b.any
    80001464:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001468:	52800502 	mov	w2, #0x28                  	// #40
    8000146c:	f9400bf3 	ldr	x19, [sp, #16]
    80001470:	90000049 	adrp	x9, 80009000 <global_context>
    80001474:	9100e129 	add	x9, x9, #0x38
    80001478:	9b022500 	madd	x0, x8, x2, x9
    8000147c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001480:	91150021 	add	x1, x1, #0x540
    80001484:	9100c3ff 	add	sp, sp, #0x30
    80001488:	14000c21 	b	8000450c <memcpy>
    8000148c:	90000053 	adrp	x19, 80009000 <global_context>
    80001490:	91000273 	add	x19, x19, #0x0
    80001494:	b9400268 	ldr	w8, [x19]
    80001498:	11000508 	add	w8, w8, #0x1
    8000149c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800014a0:	91183400 	add	x0, x0, #0x60d
    800014a4:	90000021 	adrp	x1, 80005000 <rodata_begin>
    800014a8:	910a0821 	add	x1, x1, #0x282
    800014ac:	52800522 	mov	w2, #0x29                  	// #41
    800014b0:	b9000268 	str	w8, [x19]
    800014b4:	94000bf3 	bl	80004480 <dlog>
    800014b8:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800014bc:	91053000 	add	x0, x0, #0x14c
    800014c0:	94000bf0 	bl	80004480 <dlog>
    800014c4:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800014c8:	91240400 	add	x0, x0, #0x901
    800014cc:	94000bed 	bl	80004480 <dlog>
    800014d0:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    800014d4:	f9400660 	ldr	x0, [x19, #8]
    800014d8:	f94007e8 	ldr	x8, [sp, #8]
    800014dc:	f9400129 	ldr	x9, [x9]
    800014e0:	eb08013f 	cmp	x9, x8
    800014e4:	540000a1 	b.ne	800014f8 <hftest_test_ctor_arch_mm_block_allowed_at_level0+0xdc>  // b.any
    800014e8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800014ec:	f9400bf3 	ldr	x19, [sp, #16]
    800014f0:	9100c3ff 	add	sp, sp, #0x30
    800014f4:	d61f0000 	br	x0
    800014f8:	94000c00 	bl	800044f8 <__stack_chk_fail>

00000000800014fc <hftest_test_ctor_arch_mm_max_level_stage1>:
    800014fc:	d100c3ff 	sub	sp, sp, #0x30
    80001500:	f9000bf3 	str	x19, [sp, #16]
    80001504:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001508:	910083fd 	add	x29, sp, #0x20
    8000150c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001510:	f9400108 	ldr	x8, [x8]
    80001514:	f90007e8 	str	x8, [sp, #8]
    80001518:	90000049 	adrp	x9, 80009000 <global_context>
    8000151c:	f9401928 	ldr	x8, [x9, #48]
    80001520:	f100c51f 	cmp	x8, #0x31
    80001524:	54000248 	b.hi	8000156c <hftest_test_ctor_arch_mm_max_level_stage1+0x70>  // b.pmore
    80001528:	9100050a 	add	x10, x8, #0x1
    8000152c:	f900192a 	str	x10, [x9, #48]
    80001530:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001534:	f94007e9 	ldr	x9, [sp, #8]
    80001538:	f940014a 	ldr	x10, [x10]
    8000153c:	eb09015f 	cmp	x10, x9
    80001540:	540004c1 	b.ne	800015d8 <hftest_test_ctor_arch_mm_max_level_stage1+0xdc>  // b.any
    80001544:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001548:	52800502 	mov	w2, #0x28                  	// #40
    8000154c:	f9400bf3 	ldr	x19, [sp, #16]
    80001550:	90000049 	adrp	x9, 80009000 <global_context>
    80001554:	9100e129 	add	x9, x9, #0x38
    80001558:	9b022500 	madd	x0, x8, x2, x9
    8000155c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001560:	91146021 	add	x1, x1, #0x518
    80001564:	9100c3ff 	add	sp, sp, #0x30
    80001568:	14000be9 	b	8000450c <memcpy>
    8000156c:	90000053 	adrp	x19, 80009000 <global_context>
    80001570:	91000273 	add	x19, x19, #0x0
    80001574:	b9400268 	ldr	w8, [x19]
    80001578:	11000508 	add	w8, w8, #0x1
    8000157c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001580:	91183400 	add	x0, x0, #0x60d
    80001584:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001588:	910a0821 	add	x1, x1, #0x282
    8000158c:	52800522 	mov	w2, #0x29                  	// #41
    80001590:	b9000268 	str	w8, [x19]
    80001594:	94000bbb 	bl	80004480 <dlog>
    80001598:	90000020 	adrp	x0, 80005000 <rodata_begin>
    8000159c:	91053000 	add	x0, x0, #0x14c
    800015a0:	94000bb8 	bl	80004480 <dlog>
    800015a4:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800015a8:	91240400 	add	x0, x0, #0x901
    800015ac:	94000bb5 	bl	80004480 <dlog>
    800015b0:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    800015b4:	f9400660 	ldr	x0, [x19, #8]
    800015b8:	f94007e8 	ldr	x8, [sp, #8]
    800015bc:	f9400129 	ldr	x9, [x9]
    800015c0:	eb08013f 	cmp	x9, x8
    800015c4:	540000a1 	b.ne	800015d8 <hftest_test_ctor_arch_mm_max_level_stage1+0xdc>  // b.any
    800015c8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800015cc:	f9400bf3 	ldr	x19, [sp, #16]
    800015d0:	9100c3ff 	add	sp, sp, #0x30
    800015d4:	d61f0000 	br	x0
    800015d8:	94000bc8 	bl	800044f8 <__stack_chk_fail>

00000000800015dc <hftest_test_ctor_arch_mm_absent_properties_level0>:
    800015dc:	d100c3ff 	sub	sp, sp, #0x30
    800015e0:	f9000bf3 	str	x19, [sp, #16]
    800015e4:	a9027bfd 	stp	x29, x30, [sp, #32]
    800015e8:	910083fd 	add	x29, sp, #0x20
    800015ec:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    800015f0:	f9400108 	ldr	x8, [x8]
    800015f4:	f90007e8 	str	x8, [sp, #8]
    800015f8:	90000049 	adrp	x9, 80009000 <global_context>
    800015fc:	f9401928 	ldr	x8, [x9, #48]
    80001600:	f100c51f 	cmp	x8, #0x31
    80001604:	54000248 	b.hi	8000164c <hftest_test_ctor_arch_mm_absent_properties_level0+0x70>  // b.pmore
    80001608:	9100050a 	add	x10, x8, #0x1
    8000160c:	f900192a 	str	x10, [x9, #48]
    80001610:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001614:	f94007e9 	ldr	x9, [sp, #8]
    80001618:	f940014a 	ldr	x10, [x10]
    8000161c:	eb09015f 	cmp	x10, x9
    80001620:	540004c1 	b.ne	800016b8 <hftest_test_ctor_arch_mm_absent_properties_level0+0xdc>  // b.any
    80001624:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001628:	52800502 	mov	w2, #0x28                  	// #40
    8000162c:	f9400bf3 	ldr	x19, [sp, #16]
    80001630:	90000049 	adrp	x9, 80009000 <global_context>
    80001634:	9100e129 	add	x9, x9, #0x38
    80001638:	9b022500 	madd	x0, x8, x2, x9
    8000163c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001640:	9113c021 	add	x1, x1, #0x4f0
    80001644:	9100c3ff 	add	sp, sp, #0x30
    80001648:	14000bb1 	b	8000450c <memcpy>
    8000164c:	90000053 	adrp	x19, 80009000 <global_context>
    80001650:	91000273 	add	x19, x19, #0x0
    80001654:	b9400268 	ldr	w8, [x19]
    80001658:	11000508 	add	w8, w8, #0x1
    8000165c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001660:	91183400 	add	x0, x0, #0x60d
    80001664:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001668:	910a0821 	add	x1, x1, #0x282
    8000166c:	52800522 	mov	w2, #0x29                  	// #41
    80001670:	b9000268 	str	w8, [x19]
    80001674:	94000b83 	bl	80004480 <dlog>
    80001678:	90000020 	adrp	x0, 80005000 <rodata_begin>
    8000167c:	91053000 	add	x0, x0, #0x14c
    80001680:	94000b80 	bl	80004480 <dlog>
    80001684:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001688:	91240400 	add	x0, x0, #0x901
    8000168c:	94000b7d 	bl	80004480 <dlog>
    80001690:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001694:	f9400660 	ldr	x0, [x19, #8]
    80001698:	f94007e8 	ldr	x8, [sp, #8]
    8000169c:	f9400129 	ldr	x9, [x9]
    800016a0:	eb08013f 	cmp	x9, x8
    800016a4:	540000a1 	b.ne	800016b8 <hftest_test_ctor_arch_mm_absent_properties_level0+0xdc>  // b.any
    800016a8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800016ac:	f9400bf3 	ldr	x19, [sp, #16]
    800016b0:	9100c3ff 	add	sp, sp, #0x30
    800016b4:	d61f0000 	br	x0
    800016b8:	94000b90 	bl	800044f8 <__stack_chk_fail>

00000000800016bc <hftest_test_ctor_arch_mm_absent_properties_level1>:
    800016bc:	d100c3ff 	sub	sp, sp, #0x30
    800016c0:	f9000bf3 	str	x19, [sp, #16]
    800016c4:	a9027bfd 	stp	x29, x30, [sp, #32]
    800016c8:	910083fd 	add	x29, sp, #0x20
    800016cc:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    800016d0:	f9400108 	ldr	x8, [x8]
    800016d4:	f90007e8 	str	x8, [sp, #8]
    800016d8:	90000049 	adrp	x9, 80009000 <global_context>
    800016dc:	f9401928 	ldr	x8, [x9, #48]
    800016e0:	f100c51f 	cmp	x8, #0x31
    800016e4:	54000248 	b.hi	8000172c <hftest_test_ctor_arch_mm_absent_properties_level1+0x70>  // b.pmore
    800016e8:	9100050a 	add	x10, x8, #0x1
    800016ec:	f900192a 	str	x10, [x9, #48]
    800016f0:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    800016f4:	f94007e9 	ldr	x9, [sp, #8]
    800016f8:	f940014a 	ldr	x10, [x10]
    800016fc:	eb09015f 	cmp	x10, x9
    80001700:	540004c1 	b.ne	80001798 <hftest_test_ctor_arch_mm_absent_properties_level1+0xdc>  // b.any
    80001704:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001708:	52800502 	mov	w2, #0x28                  	// #40
    8000170c:	f9400bf3 	ldr	x19, [sp, #16]
    80001710:	90000049 	adrp	x9, 80009000 <global_context>
    80001714:	9100e129 	add	x9, x9, #0x38
    80001718:	9b022500 	madd	x0, x8, x2, x9
    8000171c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001720:	91132021 	add	x1, x1, #0x4c8
    80001724:	9100c3ff 	add	sp, sp, #0x30
    80001728:	14000b79 	b	8000450c <memcpy>
    8000172c:	90000053 	adrp	x19, 80009000 <global_context>
    80001730:	91000273 	add	x19, x19, #0x0
    80001734:	b9400268 	ldr	w8, [x19]
    80001738:	11000508 	add	w8, w8, #0x1
    8000173c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001740:	91183400 	add	x0, x0, #0x60d
    80001744:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001748:	910a0821 	add	x1, x1, #0x282
    8000174c:	52800522 	mov	w2, #0x29                  	// #41
    80001750:	b9000268 	str	w8, [x19]
    80001754:	94000b4b 	bl	80004480 <dlog>
    80001758:	90000020 	adrp	x0, 80005000 <rodata_begin>
    8000175c:	91053000 	add	x0, x0, #0x14c
    80001760:	94000b48 	bl	80004480 <dlog>
    80001764:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001768:	91240400 	add	x0, x0, #0x901
    8000176c:	94000b45 	bl	80004480 <dlog>
    80001770:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001774:	f9400660 	ldr	x0, [x19, #8]
    80001778:	f94007e8 	ldr	x8, [sp, #8]
    8000177c:	f9400129 	ldr	x9, [x9]
    80001780:	eb08013f 	cmp	x9, x8
    80001784:	540000a1 	b.ne	80001798 <hftest_test_ctor_arch_mm_absent_properties_level1+0xdc>  // b.any
    80001788:	a9427bfd 	ldp	x29, x30, [sp, #32]
    8000178c:	f9400bf3 	ldr	x19, [sp, #16]
    80001790:	9100c3ff 	add	sp, sp, #0x30
    80001794:	d61f0000 	br	x0
    80001798:	94000b58 	bl	800044f8 <__stack_chk_fail>

000000008000179c <hftest_test_ctor_arch_mm_absent_properties_level2>:
    8000179c:	d100c3ff 	sub	sp, sp, #0x30
    800017a0:	f9000bf3 	str	x19, [sp, #16]
    800017a4:	a9027bfd 	stp	x29, x30, [sp, #32]
    800017a8:	910083fd 	add	x29, sp, #0x20
    800017ac:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    800017b0:	f9400108 	ldr	x8, [x8]
    800017b4:	f90007e8 	str	x8, [sp, #8]
    800017b8:	90000049 	adrp	x9, 80009000 <global_context>
    800017bc:	f9401928 	ldr	x8, [x9, #48]
    800017c0:	f100c51f 	cmp	x8, #0x31
    800017c4:	54000248 	b.hi	8000180c <hftest_test_ctor_arch_mm_absent_properties_level2+0x70>  // b.pmore
    800017c8:	9100050a 	add	x10, x8, #0x1
    800017cc:	f900192a 	str	x10, [x9, #48]
    800017d0:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    800017d4:	f94007e9 	ldr	x9, [sp, #8]
    800017d8:	f940014a 	ldr	x10, [x10]
    800017dc:	eb09015f 	cmp	x10, x9
    800017e0:	540004c1 	b.ne	80001878 <hftest_test_ctor_arch_mm_absent_properties_level2+0xdc>  // b.any
    800017e4:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800017e8:	52800502 	mov	w2, #0x28                  	// #40
    800017ec:	f9400bf3 	ldr	x19, [sp, #16]
    800017f0:	90000049 	adrp	x9, 80009000 <global_context>
    800017f4:	9100e129 	add	x9, x9, #0x38
    800017f8:	9b022500 	madd	x0, x8, x2, x9
    800017fc:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001800:	91128021 	add	x1, x1, #0x4a0
    80001804:	9100c3ff 	add	sp, sp, #0x30
    80001808:	14000b41 	b	8000450c <memcpy>
    8000180c:	90000053 	adrp	x19, 80009000 <global_context>
    80001810:	91000273 	add	x19, x19, #0x0
    80001814:	b9400268 	ldr	w8, [x19]
    80001818:	11000508 	add	w8, w8, #0x1
    8000181c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001820:	91183400 	add	x0, x0, #0x60d
    80001824:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001828:	910a0821 	add	x1, x1, #0x282
    8000182c:	52800522 	mov	w2, #0x29                  	// #41
    80001830:	b9000268 	str	w8, [x19]
    80001834:	94000b13 	bl	80004480 <dlog>
    80001838:	90000020 	adrp	x0, 80005000 <rodata_begin>
    8000183c:	91053000 	add	x0, x0, #0x14c
    80001840:	94000b10 	bl	80004480 <dlog>
    80001844:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001848:	91240400 	add	x0, x0, #0x901
    8000184c:	94000b0d 	bl	80004480 <dlog>
    80001850:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001854:	f9400660 	ldr	x0, [x19, #8]
    80001858:	f94007e8 	ldr	x8, [sp, #8]
    8000185c:	f9400129 	ldr	x9, [x9]
    80001860:	eb08013f 	cmp	x9, x8
    80001864:	540000a1 	b.ne	80001878 <hftest_test_ctor_arch_mm_absent_properties_level2+0xdc>  // b.any
    80001868:	a9427bfd 	ldp	x29, x30, [sp, #32]
    8000186c:	f9400bf3 	ldr	x19, [sp, #16]
    80001870:	9100c3ff 	add	sp, sp, #0x30
    80001874:	d61f0000 	br	x0
    80001878:	94000b20 	bl	800044f8 <__stack_chk_fail>

000000008000187c <hftest_test_ctor_arch_mm_absent_properties_level3>:
    8000187c:	d100c3ff 	sub	sp, sp, #0x30
    80001880:	f9000bf3 	str	x19, [sp, #16]
    80001884:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001888:	910083fd 	add	x29, sp, #0x20
    8000188c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001890:	f9400108 	ldr	x8, [x8]
    80001894:	f90007e8 	str	x8, [sp, #8]
    80001898:	90000049 	adrp	x9, 80009000 <global_context>
    8000189c:	f9401928 	ldr	x8, [x9, #48]
    800018a0:	f100c51f 	cmp	x8, #0x31
    800018a4:	54000248 	b.hi	800018ec <hftest_test_ctor_arch_mm_absent_properties_level3+0x70>  // b.pmore
    800018a8:	9100050a 	add	x10, x8, #0x1
    800018ac:	f900192a 	str	x10, [x9, #48]
    800018b0:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    800018b4:	f94007e9 	ldr	x9, [sp, #8]
    800018b8:	f940014a 	ldr	x10, [x10]
    800018bc:	eb09015f 	cmp	x10, x9
    800018c0:	540004c1 	b.ne	80001958 <hftest_test_ctor_arch_mm_absent_properties_level3+0xdc>  // b.any
    800018c4:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800018c8:	52800502 	mov	w2, #0x28                  	// #40
    800018cc:	f9400bf3 	ldr	x19, [sp, #16]
    800018d0:	90000049 	adrp	x9, 80009000 <global_context>
    800018d4:	9100e129 	add	x9, x9, #0x38
    800018d8:	9b022500 	madd	x0, x8, x2, x9
    800018dc:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    800018e0:	9111e021 	add	x1, x1, #0x478
    800018e4:	9100c3ff 	add	sp, sp, #0x30
    800018e8:	14000b09 	b	8000450c <memcpy>
    800018ec:	90000053 	adrp	x19, 80009000 <global_context>
    800018f0:	91000273 	add	x19, x19, #0x0
    800018f4:	b9400268 	ldr	w8, [x19]
    800018f8:	11000508 	add	w8, w8, #0x1
    800018fc:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001900:	91183400 	add	x0, x0, #0x60d
    80001904:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001908:	910a0821 	add	x1, x1, #0x282
    8000190c:	52800522 	mov	w2, #0x29                  	// #41
    80001910:	b9000268 	str	w8, [x19]
    80001914:	94000adb 	bl	80004480 <dlog>
    80001918:	90000020 	adrp	x0, 80005000 <rodata_begin>
    8000191c:	91053000 	add	x0, x0, #0x14c
    80001920:	94000ad8 	bl	80004480 <dlog>
    80001924:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001928:	91240400 	add	x0, x0, #0x901
    8000192c:	94000ad5 	bl	80004480 <dlog>
    80001930:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001934:	f9400660 	ldr	x0, [x19, #8]
    80001938:	f94007e8 	ldr	x8, [sp, #8]
    8000193c:	f9400129 	ldr	x9, [x9]
    80001940:	eb08013f 	cmp	x9, x8
    80001944:	540000a1 	b.ne	80001958 <hftest_test_ctor_arch_mm_absent_properties_level3+0xdc>  // b.any
    80001948:	a9427bfd 	ldp	x29, x30, [sp, #32]
    8000194c:	f9400bf3 	ldr	x19, [sp, #16]
    80001950:	9100c3ff 	add	sp, sp, #0x30
    80001954:	d61f0000 	br	x0
    80001958:	94000ae8 	bl	800044f8 <__stack_chk_fail>

000000008000195c <hftest_test_ctor_arch_mm_invalid_block_properties_level0>:
    8000195c:	d100c3ff 	sub	sp, sp, #0x30
    80001960:	f9000bf3 	str	x19, [sp, #16]
    80001964:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001968:	910083fd 	add	x29, sp, #0x20
    8000196c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001970:	f9400108 	ldr	x8, [x8]
    80001974:	f90007e8 	str	x8, [sp, #8]
    80001978:	90000049 	adrp	x9, 80009000 <global_context>
    8000197c:	f9401928 	ldr	x8, [x9, #48]
    80001980:	f100c51f 	cmp	x8, #0x31
    80001984:	54000248 	b.hi	800019cc <hftest_test_ctor_arch_mm_invalid_block_properties_level0+0x70>  // b.pmore
    80001988:	9100050a 	add	x10, x8, #0x1
    8000198c:	f900192a 	str	x10, [x9, #48]
    80001990:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001994:	f94007e9 	ldr	x9, [sp, #8]
    80001998:	f940014a 	ldr	x10, [x10]
    8000199c:	eb09015f 	cmp	x10, x9
    800019a0:	540004c1 	b.ne	80001a38 <hftest_test_ctor_arch_mm_invalid_block_properties_level0+0xdc>  // b.any
    800019a4:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800019a8:	52800502 	mov	w2, #0x28                  	// #40
    800019ac:	f9400bf3 	ldr	x19, [sp, #16]
    800019b0:	90000049 	adrp	x9, 80009000 <global_context>
    800019b4:	9100e129 	add	x9, x9, #0x38
    800019b8:	9b022500 	madd	x0, x8, x2, x9
    800019bc:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    800019c0:	91114021 	add	x1, x1, #0x450
    800019c4:	9100c3ff 	add	sp, sp, #0x30
    800019c8:	14000ad1 	b	8000450c <memcpy>
    800019cc:	90000053 	adrp	x19, 80009000 <global_context>
    800019d0:	91000273 	add	x19, x19, #0x0
    800019d4:	b9400268 	ldr	w8, [x19]
    800019d8:	11000508 	add	w8, w8, #0x1
    800019dc:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800019e0:	91183400 	add	x0, x0, #0x60d
    800019e4:	90000021 	adrp	x1, 80005000 <rodata_begin>
    800019e8:	910a0821 	add	x1, x1, #0x282
    800019ec:	52800522 	mov	w2, #0x29                  	// #41
    800019f0:	b9000268 	str	w8, [x19]
    800019f4:	94000aa3 	bl	80004480 <dlog>
    800019f8:	90000020 	adrp	x0, 80005000 <rodata_begin>
    800019fc:	91053000 	add	x0, x0, #0x14c
    80001a00:	94000aa0 	bl	80004480 <dlog>
    80001a04:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001a08:	91240400 	add	x0, x0, #0x901
    80001a0c:	94000a9d 	bl	80004480 <dlog>
    80001a10:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001a14:	f9400660 	ldr	x0, [x19, #8]
    80001a18:	f94007e8 	ldr	x8, [sp, #8]
    80001a1c:	f9400129 	ldr	x9, [x9]
    80001a20:	eb08013f 	cmp	x9, x8
    80001a24:	540000a1 	b.ne	80001a38 <hftest_test_ctor_arch_mm_invalid_block_properties_level0+0xdc>  // b.any
    80001a28:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001a2c:	f9400bf3 	ldr	x19, [sp, #16]
    80001a30:	9100c3ff 	add	sp, sp, #0x30
    80001a34:	d61f0000 	br	x0
    80001a38:	94000ab0 	bl	800044f8 <__stack_chk_fail>

0000000080001a3c <hftest_test_ctor_arch_mm_invalid_block_properties_level1>:
    80001a3c:	d100c3ff 	sub	sp, sp, #0x30
    80001a40:	f9000bf3 	str	x19, [sp, #16]
    80001a44:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001a48:	910083fd 	add	x29, sp, #0x20
    80001a4c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001a50:	f9400108 	ldr	x8, [x8]
    80001a54:	f90007e8 	str	x8, [sp, #8]
    80001a58:	90000049 	adrp	x9, 80009000 <global_context>
    80001a5c:	f9401928 	ldr	x8, [x9, #48]
    80001a60:	f100c51f 	cmp	x8, #0x31
    80001a64:	54000248 	b.hi	80001aac <hftest_test_ctor_arch_mm_invalid_block_properties_level1+0x70>  // b.pmore
    80001a68:	9100050a 	add	x10, x8, #0x1
    80001a6c:	f900192a 	str	x10, [x9, #48]
    80001a70:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001a74:	f94007e9 	ldr	x9, [sp, #8]
    80001a78:	f940014a 	ldr	x10, [x10]
    80001a7c:	eb09015f 	cmp	x10, x9
    80001a80:	540004c1 	b.ne	80001b18 <hftest_test_ctor_arch_mm_invalid_block_properties_level1+0xdc>  // b.any
    80001a84:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001a88:	52800502 	mov	w2, #0x28                  	// #40
    80001a8c:	f9400bf3 	ldr	x19, [sp, #16]
    80001a90:	90000049 	adrp	x9, 80009000 <global_context>
    80001a94:	9100e129 	add	x9, x9, #0x38
    80001a98:	9b022500 	madd	x0, x8, x2, x9
    80001a9c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001aa0:	9110a021 	add	x1, x1, #0x428
    80001aa4:	9100c3ff 	add	sp, sp, #0x30
    80001aa8:	14000a99 	b	8000450c <memcpy>
    80001aac:	90000053 	adrp	x19, 80009000 <global_context>
    80001ab0:	91000273 	add	x19, x19, #0x0
    80001ab4:	b9400268 	ldr	w8, [x19]
    80001ab8:	11000508 	add	w8, w8, #0x1
    80001abc:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001ac0:	91183400 	add	x0, x0, #0x60d
    80001ac4:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001ac8:	910a0821 	add	x1, x1, #0x282
    80001acc:	52800522 	mov	w2, #0x29                  	// #41
    80001ad0:	b9000268 	str	w8, [x19]
    80001ad4:	94000a6b 	bl	80004480 <dlog>
    80001ad8:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001adc:	91053000 	add	x0, x0, #0x14c
    80001ae0:	94000a68 	bl	80004480 <dlog>
    80001ae4:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001ae8:	91240400 	add	x0, x0, #0x901
    80001aec:	94000a65 	bl	80004480 <dlog>
    80001af0:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001af4:	f9400660 	ldr	x0, [x19, #8]
    80001af8:	f94007e8 	ldr	x8, [sp, #8]
    80001afc:	f9400129 	ldr	x9, [x9]
    80001b00:	eb08013f 	cmp	x9, x8
    80001b04:	540000a1 	b.ne	80001b18 <hftest_test_ctor_arch_mm_invalid_block_properties_level1+0xdc>  // b.any
    80001b08:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001b0c:	f9400bf3 	ldr	x19, [sp, #16]
    80001b10:	9100c3ff 	add	sp, sp, #0x30
    80001b14:	d61f0000 	br	x0
    80001b18:	94000a78 	bl	800044f8 <__stack_chk_fail>

0000000080001b1c <hftest_test_ctor_arch_mm_invalid_block_properties_level2>:
    80001b1c:	d100c3ff 	sub	sp, sp, #0x30
    80001b20:	f9000bf3 	str	x19, [sp, #16]
    80001b24:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001b28:	910083fd 	add	x29, sp, #0x20
    80001b2c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001b30:	f9400108 	ldr	x8, [x8]
    80001b34:	f90007e8 	str	x8, [sp, #8]
    80001b38:	90000049 	adrp	x9, 80009000 <global_context>
    80001b3c:	f9401928 	ldr	x8, [x9, #48]
    80001b40:	f100c51f 	cmp	x8, #0x31
    80001b44:	54000248 	b.hi	80001b8c <hftest_test_ctor_arch_mm_invalid_block_properties_level2+0x70>  // b.pmore
    80001b48:	9100050a 	add	x10, x8, #0x1
    80001b4c:	f900192a 	str	x10, [x9, #48]
    80001b50:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001b54:	f94007e9 	ldr	x9, [sp, #8]
    80001b58:	f940014a 	ldr	x10, [x10]
    80001b5c:	eb09015f 	cmp	x10, x9
    80001b60:	540004c1 	b.ne	80001bf8 <hftest_test_ctor_arch_mm_invalid_block_properties_level2+0xdc>  // b.any
    80001b64:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001b68:	52800502 	mov	w2, #0x28                  	// #40
    80001b6c:	f9400bf3 	ldr	x19, [sp, #16]
    80001b70:	90000049 	adrp	x9, 80009000 <global_context>
    80001b74:	9100e129 	add	x9, x9, #0x38
    80001b78:	9b022500 	madd	x0, x8, x2, x9
    80001b7c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001b80:	91100021 	add	x1, x1, #0x400
    80001b84:	9100c3ff 	add	sp, sp, #0x30
    80001b88:	14000a61 	b	8000450c <memcpy>
    80001b8c:	90000053 	adrp	x19, 80009000 <global_context>
    80001b90:	91000273 	add	x19, x19, #0x0
    80001b94:	b9400268 	ldr	w8, [x19]
    80001b98:	11000508 	add	w8, w8, #0x1
    80001b9c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001ba0:	91183400 	add	x0, x0, #0x60d
    80001ba4:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001ba8:	910a0821 	add	x1, x1, #0x282
    80001bac:	52800522 	mov	w2, #0x29                  	// #41
    80001bb0:	b9000268 	str	w8, [x19]
    80001bb4:	94000a33 	bl	80004480 <dlog>
    80001bb8:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001bbc:	91053000 	add	x0, x0, #0x14c
    80001bc0:	94000a30 	bl	80004480 <dlog>
    80001bc4:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001bc8:	91240400 	add	x0, x0, #0x901
    80001bcc:	94000a2d 	bl	80004480 <dlog>
    80001bd0:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001bd4:	f9400660 	ldr	x0, [x19, #8]
    80001bd8:	f94007e8 	ldr	x8, [sp, #8]
    80001bdc:	f9400129 	ldr	x9, [x9]
    80001be0:	eb08013f 	cmp	x9, x8
    80001be4:	540000a1 	b.ne	80001bf8 <hftest_test_ctor_arch_mm_invalid_block_properties_level2+0xdc>  // b.any
    80001be8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001bec:	f9400bf3 	ldr	x19, [sp, #16]
    80001bf0:	9100c3ff 	add	sp, sp, #0x30
    80001bf4:	d61f0000 	br	x0
    80001bf8:	94000a40 	bl	800044f8 <__stack_chk_fail>

0000000080001bfc <hftest_test_ctor_arch_mm_invalid_block_properties_level3>:
    80001bfc:	d100c3ff 	sub	sp, sp, #0x30
    80001c00:	f9000bf3 	str	x19, [sp, #16]
    80001c04:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001c08:	910083fd 	add	x29, sp, #0x20
    80001c0c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001c10:	f9400108 	ldr	x8, [x8]
    80001c14:	f90007e8 	str	x8, [sp, #8]
    80001c18:	90000049 	adrp	x9, 80009000 <global_context>
    80001c1c:	f9401928 	ldr	x8, [x9, #48]
    80001c20:	f100c51f 	cmp	x8, #0x31
    80001c24:	54000248 	b.hi	80001c6c <hftest_test_ctor_arch_mm_invalid_block_properties_level3+0x70>  // b.pmore
    80001c28:	9100050a 	add	x10, x8, #0x1
    80001c2c:	f900192a 	str	x10, [x9, #48]
    80001c30:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001c34:	f94007e9 	ldr	x9, [sp, #8]
    80001c38:	f940014a 	ldr	x10, [x10]
    80001c3c:	eb09015f 	cmp	x10, x9
    80001c40:	540004c1 	b.ne	80001cd8 <hftest_test_ctor_arch_mm_invalid_block_properties_level3+0xdc>  // b.any
    80001c44:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001c48:	52800502 	mov	w2, #0x28                  	// #40
    80001c4c:	f9400bf3 	ldr	x19, [sp, #16]
    80001c50:	90000049 	adrp	x9, 80009000 <global_context>
    80001c54:	9100e129 	add	x9, x9, #0x38
    80001c58:	9b022500 	madd	x0, x8, x2, x9
    80001c5c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001c60:	910f6021 	add	x1, x1, #0x3d8
    80001c64:	9100c3ff 	add	sp, sp, #0x30
    80001c68:	14000a29 	b	8000450c <memcpy>
    80001c6c:	90000053 	adrp	x19, 80009000 <global_context>
    80001c70:	91000273 	add	x19, x19, #0x0
    80001c74:	b9400268 	ldr	w8, [x19]
    80001c78:	11000508 	add	w8, w8, #0x1
    80001c7c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001c80:	91183400 	add	x0, x0, #0x60d
    80001c84:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001c88:	910a0821 	add	x1, x1, #0x282
    80001c8c:	52800522 	mov	w2, #0x29                  	// #41
    80001c90:	b9000268 	str	w8, [x19]
    80001c94:	940009fb 	bl	80004480 <dlog>
    80001c98:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001c9c:	91053000 	add	x0, x0, #0x14c
    80001ca0:	940009f8 	bl	80004480 <dlog>
    80001ca4:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001ca8:	91240400 	add	x0, x0, #0x901
    80001cac:	940009f5 	bl	80004480 <dlog>
    80001cb0:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001cb4:	f9400660 	ldr	x0, [x19, #8]
    80001cb8:	f94007e8 	ldr	x8, [sp, #8]
    80001cbc:	f9400129 	ldr	x9, [x9]
    80001cc0:	eb08013f 	cmp	x9, x8
    80001cc4:	540000a1 	b.ne	80001cd8 <hftest_test_ctor_arch_mm_invalid_block_properties_level3+0xdc>  // b.any
    80001cc8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001ccc:	f9400bf3 	ldr	x19, [sp, #16]
    80001cd0:	9100c3ff 	add	sp, sp, #0x30
    80001cd4:	d61f0000 	br	x0
    80001cd8:	94000a08 	bl	800044f8 <__stack_chk_fail>

0000000080001cdc <hftest_test_ctor_arch_mm_valid_block_properties_level0>:
    80001cdc:	d100c3ff 	sub	sp, sp, #0x30
    80001ce0:	f9000bf3 	str	x19, [sp, #16]
    80001ce4:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001ce8:	910083fd 	add	x29, sp, #0x20
    80001cec:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001cf0:	f9400108 	ldr	x8, [x8]
    80001cf4:	f90007e8 	str	x8, [sp, #8]
    80001cf8:	90000049 	adrp	x9, 80009000 <global_context>
    80001cfc:	f9401928 	ldr	x8, [x9, #48]
    80001d00:	f100c51f 	cmp	x8, #0x31
    80001d04:	54000248 	b.hi	80001d4c <hftest_test_ctor_arch_mm_valid_block_properties_level0+0x70>  // b.pmore
    80001d08:	9100050a 	add	x10, x8, #0x1
    80001d0c:	f900192a 	str	x10, [x9, #48]
    80001d10:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001d14:	f94007e9 	ldr	x9, [sp, #8]
    80001d18:	f940014a 	ldr	x10, [x10]
    80001d1c:	eb09015f 	cmp	x10, x9
    80001d20:	540004c1 	b.ne	80001db8 <hftest_test_ctor_arch_mm_valid_block_properties_level0+0xdc>  // b.any
    80001d24:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001d28:	52800502 	mov	w2, #0x28                  	// #40
    80001d2c:	f9400bf3 	ldr	x19, [sp, #16]
    80001d30:	90000049 	adrp	x9, 80009000 <global_context>
    80001d34:	9100e129 	add	x9, x9, #0x38
    80001d38:	9b022500 	madd	x0, x8, x2, x9
    80001d3c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001d40:	910ec021 	add	x1, x1, #0x3b0
    80001d44:	9100c3ff 	add	sp, sp, #0x30
    80001d48:	140009f1 	b	8000450c <memcpy>
    80001d4c:	90000053 	adrp	x19, 80009000 <global_context>
    80001d50:	91000273 	add	x19, x19, #0x0
    80001d54:	b9400268 	ldr	w8, [x19]
    80001d58:	11000508 	add	w8, w8, #0x1
    80001d5c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001d60:	91183400 	add	x0, x0, #0x60d
    80001d64:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001d68:	910a0821 	add	x1, x1, #0x282
    80001d6c:	52800522 	mov	w2, #0x29                  	// #41
    80001d70:	b9000268 	str	w8, [x19]
    80001d74:	940009c3 	bl	80004480 <dlog>
    80001d78:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001d7c:	91053000 	add	x0, x0, #0x14c
    80001d80:	940009c0 	bl	80004480 <dlog>
    80001d84:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001d88:	91240400 	add	x0, x0, #0x901
    80001d8c:	940009bd 	bl	80004480 <dlog>
    80001d90:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001d94:	f9400660 	ldr	x0, [x19, #8]
    80001d98:	f94007e8 	ldr	x8, [sp, #8]
    80001d9c:	f9400129 	ldr	x9, [x9]
    80001da0:	eb08013f 	cmp	x9, x8
    80001da4:	540000a1 	b.ne	80001db8 <hftest_test_ctor_arch_mm_valid_block_properties_level0+0xdc>  // b.any
    80001da8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001dac:	f9400bf3 	ldr	x19, [sp, #16]
    80001db0:	9100c3ff 	add	sp, sp, #0x30
    80001db4:	d61f0000 	br	x0
    80001db8:	940009d0 	bl	800044f8 <__stack_chk_fail>

0000000080001dbc <hftest_test_ctor_arch_mm_valid_block_properties_level1>:
    80001dbc:	d100c3ff 	sub	sp, sp, #0x30
    80001dc0:	f9000bf3 	str	x19, [sp, #16]
    80001dc4:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001dc8:	910083fd 	add	x29, sp, #0x20
    80001dcc:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001dd0:	f9400108 	ldr	x8, [x8]
    80001dd4:	f90007e8 	str	x8, [sp, #8]
    80001dd8:	90000049 	adrp	x9, 80009000 <global_context>
    80001ddc:	f9401928 	ldr	x8, [x9, #48]
    80001de0:	f100c51f 	cmp	x8, #0x31
    80001de4:	54000248 	b.hi	80001e2c <hftest_test_ctor_arch_mm_valid_block_properties_level1+0x70>  // b.pmore
    80001de8:	9100050a 	add	x10, x8, #0x1
    80001dec:	f900192a 	str	x10, [x9, #48]
    80001df0:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001df4:	f94007e9 	ldr	x9, [sp, #8]
    80001df8:	f940014a 	ldr	x10, [x10]
    80001dfc:	eb09015f 	cmp	x10, x9
    80001e00:	540004c1 	b.ne	80001e98 <hftest_test_ctor_arch_mm_valid_block_properties_level1+0xdc>  // b.any
    80001e04:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001e08:	52800502 	mov	w2, #0x28                  	// #40
    80001e0c:	f9400bf3 	ldr	x19, [sp, #16]
    80001e10:	90000049 	adrp	x9, 80009000 <global_context>
    80001e14:	9100e129 	add	x9, x9, #0x38
    80001e18:	9b022500 	madd	x0, x8, x2, x9
    80001e1c:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001e20:	910e2021 	add	x1, x1, #0x388
    80001e24:	9100c3ff 	add	sp, sp, #0x30
    80001e28:	140009b9 	b	8000450c <memcpy>
    80001e2c:	90000053 	adrp	x19, 80009000 <global_context>
    80001e30:	91000273 	add	x19, x19, #0x0
    80001e34:	b9400268 	ldr	w8, [x19]
    80001e38:	11000508 	add	w8, w8, #0x1
    80001e3c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001e40:	91183400 	add	x0, x0, #0x60d
    80001e44:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001e48:	910a0821 	add	x1, x1, #0x282
    80001e4c:	52800522 	mov	w2, #0x29                  	// #41
    80001e50:	b9000268 	str	w8, [x19]
    80001e54:	9400098b 	bl	80004480 <dlog>
    80001e58:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001e5c:	91053000 	add	x0, x0, #0x14c
    80001e60:	94000988 	bl	80004480 <dlog>
    80001e64:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001e68:	91240400 	add	x0, x0, #0x901
    80001e6c:	94000985 	bl	80004480 <dlog>
    80001e70:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001e74:	f9400660 	ldr	x0, [x19, #8]
    80001e78:	f94007e8 	ldr	x8, [sp, #8]
    80001e7c:	f9400129 	ldr	x9, [x9]
    80001e80:	eb08013f 	cmp	x9, x8
    80001e84:	540000a1 	b.ne	80001e98 <hftest_test_ctor_arch_mm_valid_block_properties_level1+0xdc>  // b.any
    80001e88:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001e8c:	f9400bf3 	ldr	x19, [sp, #16]
    80001e90:	9100c3ff 	add	sp, sp, #0x30
    80001e94:	d61f0000 	br	x0
    80001e98:	94000998 	bl	800044f8 <__stack_chk_fail>

0000000080001e9c <hftest_test_ctor_arch_mm_valid_block_properties_level2>:
    80001e9c:	d100c3ff 	sub	sp, sp, #0x30
    80001ea0:	f9000bf3 	str	x19, [sp, #16]
    80001ea4:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001ea8:	910083fd 	add	x29, sp, #0x20
    80001eac:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001eb0:	f9400108 	ldr	x8, [x8]
    80001eb4:	f90007e8 	str	x8, [sp, #8]
    80001eb8:	90000049 	adrp	x9, 80009000 <global_context>
    80001ebc:	f9401928 	ldr	x8, [x9, #48]
    80001ec0:	f100c51f 	cmp	x8, #0x31
    80001ec4:	54000248 	b.hi	80001f0c <hftest_test_ctor_arch_mm_valid_block_properties_level2+0x70>  // b.pmore
    80001ec8:	9100050a 	add	x10, x8, #0x1
    80001ecc:	f900192a 	str	x10, [x9, #48]
    80001ed0:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001ed4:	f94007e9 	ldr	x9, [sp, #8]
    80001ed8:	f940014a 	ldr	x10, [x10]
    80001edc:	eb09015f 	cmp	x10, x9
    80001ee0:	540004c1 	b.ne	80001f78 <hftest_test_ctor_arch_mm_valid_block_properties_level2+0xdc>  // b.any
    80001ee4:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001ee8:	52800502 	mov	w2, #0x28                  	// #40
    80001eec:	f9400bf3 	ldr	x19, [sp, #16]
    80001ef0:	90000049 	adrp	x9, 80009000 <global_context>
    80001ef4:	9100e129 	add	x9, x9, #0x38
    80001ef8:	9b022500 	madd	x0, x8, x2, x9
    80001efc:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001f00:	910d8021 	add	x1, x1, #0x360
    80001f04:	9100c3ff 	add	sp, sp, #0x30
    80001f08:	14000981 	b	8000450c <memcpy>
    80001f0c:	90000053 	adrp	x19, 80009000 <global_context>
    80001f10:	91000273 	add	x19, x19, #0x0
    80001f14:	b9400268 	ldr	w8, [x19]
    80001f18:	11000508 	add	w8, w8, #0x1
    80001f1c:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001f20:	91183400 	add	x0, x0, #0x60d
    80001f24:	90000021 	adrp	x1, 80005000 <rodata_begin>
    80001f28:	910a0821 	add	x1, x1, #0x282
    80001f2c:	52800522 	mov	w2, #0x29                  	// #41
    80001f30:	b9000268 	str	w8, [x19]
    80001f34:	94000953 	bl	80004480 <dlog>
    80001f38:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001f3c:	91053000 	add	x0, x0, #0x14c
    80001f40:	94000950 	bl	80004480 <dlog>
    80001f44:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80001f48:	91240400 	add	x0, x0, #0x901
    80001f4c:	9400094d 	bl	80004480 <dlog>
    80001f50:	d0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80001f54:	f9400660 	ldr	x0, [x19, #8]
    80001f58:	f94007e8 	ldr	x8, [sp, #8]
    80001f5c:	f9400129 	ldr	x9, [x9]
    80001f60:	eb08013f 	cmp	x9, x8
    80001f64:	540000a1 	b.ne	80001f78 <hftest_test_ctor_arch_mm_valid_block_properties_level2+0xdc>  // b.any
    80001f68:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001f6c:	f9400bf3 	ldr	x19, [sp, #16]
    80001f70:	9100c3ff 	add	sp, sp, #0x30
    80001f74:	d61f0000 	br	x0
    80001f78:	94000960 	bl	800044f8 <__stack_chk_fail>

0000000080001f7c <hftest_test_ctor_arch_mm_valid_block_properties_level3>:
    80001f7c:	d100c3ff 	sub	sp, sp, #0x30
    80001f80:	f9000bf3 	str	x19, [sp, #16]
    80001f84:	a9027bfd 	stp	x29, x30, [sp, #32]
    80001f88:	910083fd 	add	x29, sp, #0x20
    80001f8c:	d0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80001f90:	f9400108 	ldr	x8, [x8]
    80001f94:	f90007e8 	str	x8, [sp, #8]
    80001f98:	90000049 	adrp	x9, 80009000 <global_context>
    80001f9c:	f9401928 	ldr	x8, [x9, #48]
    80001fa0:	f100c51f 	cmp	x8, #0x31
    80001fa4:	54000248 	b.hi	80001fec <hftest_test_ctor_arch_mm_valid_block_properties_level3+0x70>  // b.pmore
    80001fa8:	9100050a 	add	x10, x8, #0x1
    80001fac:	f900192a 	str	x10, [x9, #48]
    80001fb0:	d000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80001fb4:	f94007e9 	ldr	x9, [sp, #8]
    80001fb8:	f940014a 	ldr	x10, [x10]
    80001fbc:	eb09015f 	cmp	x10, x9
    80001fc0:	540004c1 	b.ne	80002058 <hftest_test_ctor_arch_mm_valid_block_properties_level3+0xdc>  // b.any
    80001fc4:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80001fc8:	52800502 	mov	w2, #0x28                  	// #40
    80001fcc:	f9400bf3 	ldr	x19, [sp, #16]
    80001fd0:	90000049 	adrp	x9, 80009000 <global_context>
    80001fd4:	9100e129 	add	x9, x9, #0x38
    80001fd8:	9b022500 	madd	x0, x8, x2, x9
    80001fdc:	b0000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80001fe0:	910ce021 	add	x1, x1, #0x338
    80001fe4:	9100c3ff 	add	sp, sp, #0x30
    80001fe8:	14000949 	b	8000450c <memcpy>
    80001fec:	90000053 	adrp	x19, 80009000 <global_context>
    80001ff0:	91000273 	add	x19, x19, #0x0
    80001ff4:	b9400268 	ldr	w8, [x19]
    80001ff8:	11000508 	add	w8, w8, #0x1
    80001ffc:	90000020 	adrp	x0, 80005000 <rodata_begin>
    80002000:	91183400 	add	x0, x0, #0x60d
    80002004:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    80002008:	910a0821 	add	x1, x1, #0x282
    8000200c:	52800522 	mov	w2, #0x29                  	// #41
    80002010:	b9000268 	str	w8, [x19]
    80002014:	9400091b 	bl	80004480 <dlog>
    80002018:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    8000201c:	91053000 	add	x0, x0, #0x14c
    80002020:	94000918 	bl	80004480 <dlog>
    80002024:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002028:	91240400 	add	x0, x0, #0x901
    8000202c:	94000915 	bl	80004480 <dlog>
    80002030:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80002034:	f9400660 	ldr	x0, [x19, #8]
    80002038:	f94007e8 	ldr	x8, [sp, #8]
    8000203c:	f9400129 	ldr	x9, [x9]
    80002040:	eb08013f 	cmp	x9, x8
    80002044:	540000a1 	b.ne	80002058 <hftest_test_ctor_arch_mm_valid_block_properties_level3+0xdc>  // b.any
    80002048:	a9427bfd 	ldp	x29, x30, [sp, #32]
    8000204c:	f9400bf3 	ldr	x19, [sp, #16]
    80002050:	9100c3ff 	add	sp, sp, #0x30
    80002054:	d61f0000 	br	x0
    80002058:	94000928 	bl	800044f8 <__stack_chk_fail>

000000008000205c <hftest_test_ctor_arch_mm_table_properties_level0>:
    8000205c:	d100c3ff 	sub	sp, sp, #0x30
    80002060:	f9000bf3 	str	x19, [sp, #16]
    80002064:	a9027bfd 	stp	x29, x30, [sp, #32]
    80002068:	910083fd 	add	x29, sp, #0x20
    8000206c:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80002070:	f9400108 	ldr	x8, [x8]
    80002074:	f90007e8 	str	x8, [sp, #8]
    80002078:	f0000029 	adrp	x9, 80009000 <global_context>
    8000207c:	f9401928 	ldr	x8, [x9, #48]
    80002080:	f100c51f 	cmp	x8, #0x31
    80002084:	54000248 	b.hi	800020cc <hftest_test_ctor_arch_mm_table_properties_level0+0x70>  // b.pmore
    80002088:	9100050a 	add	x10, x8, #0x1
    8000208c:	f900192a 	str	x10, [x9, #48]
    80002090:	b000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80002094:	f94007e9 	ldr	x9, [sp, #8]
    80002098:	f940014a 	ldr	x10, [x10]
    8000209c:	eb09015f 	cmp	x10, x9
    800020a0:	540004c1 	b.ne	80002138 <hftest_test_ctor_arch_mm_table_properties_level0+0xdc>  // b.any
    800020a4:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800020a8:	52800502 	mov	w2, #0x28                  	// #40
    800020ac:	f9400bf3 	ldr	x19, [sp, #16]
    800020b0:	f0000029 	adrp	x9, 80009000 <global_context>
    800020b4:	9100e129 	add	x9, x9, #0x38
    800020b8:	9b022500 	madd	x0, x8, x2, x9
    800020bc:	90000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    800020c0:	910c4021 	add	x1, x1, #0x310
    800020c4:	9100c3ff 	add	sp, sp, #0x30
    800020c8:	14000911 	b	8000450c <memcpy>
    800020cc:	f0000033 	adrp	x19, 80009000 <global_context>
    800020d0:	91000273 	add	x19, x19, #0x0
    800020d4:	b9400268 	ldr	w8, [x19]
    800020d8:	11000508 	add	w8, w8, #0x1
    800020dc:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    800020e0:	91183400 	add	x0, x0, #0x60d
    800020e4:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    800020e8:	910a0821 	add	x1, x1, #0x282
    800020ec:	52800522 	mov	w2, #0x29                  	// #41
    800020f0:	b9000268 	str	w8, [x19]
    800020f4:	940008e3 	bl	80004480 <dlog>
    800020f8:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    800020fc:	91053000 	add	x0, x0, #0x14c
    80002100:	940008e0 	bl	80004480 <dlog>
    80002104:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002108:	91240400 	add	x0, x0, #0x901
    8000210c:	940008dd 	bl	80004480 <dlog>
    80002110:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80002114:	f9400660 	ldr	x0, [x19, #8]
    80002118:	f94007e8 	ldr	x8, [sp, #8]
    8000211c:	f9400129 	ldr	x9, [x9]
    80002120:	eb08013f 	cmp	x9, x8
    80002124:	540000a1 	b.ne	80002138 <hftest_test_ctor_arch_mm_table_properties_level0+0xdc>  // b.any
    80002128:	a9427bfd 	ldp	x29, x30, [sp, #32]
    8000212c:	f9400bf3 	ldr	x19, [sp, #16]
    80002130:	9100c3ff 	add	sp, sp, #0x30
    80002134:	d61f0000 	br	x0
    80002138:	940008f0 	bl	800044f8 <__stack_chk_fail>

000000008000213c <hftest_test_ctor_arch_mm_table_properties_level1>:
    8000213c:	d100c3ff 	sub	sp, sp, #0x30
    80002140:	f9000bf3 	str	x19, [sp, #16]
    80002144:	a9027bfd 	stp	x29, x30, [sp, #32]
    80002148:	910083fd 	add	x29, sp, #0x20
    8000214c:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80002150:	f9400108 	ldr	x8, [x8]
    80002154:	f90007e8 	str	x8, [sp, #8]
    80002158:	f0000029 	adrp	x9, 80009000 <global_context>
    8000215c:	f9401928 	ldr	x8, [x9, #48]
    80002160:	f100c51f 	cmp	x8, #0x31
    80002164:	54000248 	b.hi	800021ac <hftest_test_ctor_arch_mm_table_properties_level1+0x70>  // b.pmore
    80002168:	9100050a 	add	x10, x8, #0x1
    8000216c:	f900192a 	str	x10, [x9, #48]
    80002170:	b000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80002174:	f94007e9 	ldr	x9, [sp, #8]
    80002178:	f940014a 	ldr	x10, [x10]
    8000217c:	eb09015f 	cmp	x10, x9
    80002180:	540004c1 	b.ne	80002218 <hftest_test_ctor_arch_mm_table_properties_level1+0xdc>  // b.any
    80002184:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80002188:	52800502 	mov	w2, #0x28                  	// #40
    8000218c:	f9400bf3 	ldr	x19, [sp, #16]
    80002190:	f0000029 	adrp	x9, 80009000 <global_context>
    80002194:	9100e129 	add	x9, x9, #0x38
    80002198:	9b022500 	madd	x0, x8, x2, x9
    8000219c:	90000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    800021a0:	910ba021 	add	x1, x1, #0x2e8
    800021a4:	9100c3ff 	add	sp, sp, #0x30
    800021a8:	140008d9 	b	8000450c <memcpy>
    800021ac:	f0000033 	adrp	x19, 80009000 <global_context>
    800021b0:	91000273 	add	x19, x19, #0x0
    800021b4:	b9400268 	ldr	w8, [x19]
    800021b8:	11000508 	add	w8, w8, #0x1
    800021bc:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    800021c0:	91183400 	add	x0, x0, #0x60d
    800021c4:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    800021c8:	910a0821 	add	x1, x1, #0x282
    800021cc:	52800522 	mov	w2, #0x29                  	// #41
    800021d0:	b9000268 	str	w8, [x19]
    800021d4:	940008ab 	bl	80004480 <dlog>
    800021d8:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    800021dc:	91053000 	add	x0, x0, #0x14c
    800021e0:	940008a8 	bl	80004480 <dlog>
    800021e4:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    800021e8:	91240400 	add	x0, x0, #0x901
    800021ec:	940008a5 	bl	80004480 <dlog>
    800021f0:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    800021f4:	f9400660 	ldr	x0, [x19, #8]
    800021f8:	f94007e8 	ldr	x8, [sp, #8]
    800021fc:	f9400129 	ldr	x9, [x9]
    80002200:	eb08013f 	cmp	x9, x8
    80002204:	540000a1 	b.ne	80002218 <hftest_test_ctor_arch_mm_table_properties_level1+0xdc>  // b.any
    80002208:	a9427bfd 	ldp	x29, x30, [sp, #32]
    8000220c:	f9400bf3 	ldr	x19, [sp, #16]
    80002210:	9100c3ff 	add	sp, sp, #0x30
    80002214:	d61f0000 	br	x0
    80002218:	940008b8 	bl	800044f8 <__stack_chk_fail>

000000008000221c <hftest_test_ctor_arch_mm_table_properties_level2>:
    8000221c:	d100c3ff 	sub	sp, sp, #0x30
    80002220:	f9000bf3 	str	x19, [sp, #16]
    80002224:	a9027bfd 	stp	x29, x30, [sp, #32]
    80002228:	910083fd 	add	x29, sp, #0x20
    8000222c:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80002230:	f9400108 	ldr	x8, [x8]
    80002234:	f90007e8 	str	x8, [sp, #8]
    80002238:	f0000029 	adrp	x9, 80009000 <global_context>
    8000223c:	f9401928 	ldr	x8, [x9, #48]
    80002240:	f100c51f 	cmp	x8, #0x31
    80002244:	54000248 	b.hi	8000228c <hftest_test_ctor_arch_mm_table_properties_level2+0x70>  // b.pmore
    80002248:	9100050a 	add	x10, x8, #0x1
    8000224c:	f900192a 	str	x10, [x9, #48]
    80002250:	b000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80002254:	f94007e9 	ldr	x9, [sp, #8]
    80002258:	f940014a 	ldr	x10, [x10]
    8000225c:	eb09015f 	cmp	x10, x9
    80002260:	540004c1 	b.ne	800022f8 <hftest_test_ctor_arch_mm_table_properties_level2+0xdc>  // b.any
    80002264:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80002268:	52800502 	mov	w2, #0x28                  	// #40
    8000226c:	f9400bf3 	ldr	x19, [sp, #16]
    80002270:	f0000029 	adrp	x9, 80009000 <global_context>
    80002274:	9100e129 	add	x9, x9, #0x38
    80002278:	9b022500 	madd	x0, x8, x2, x9
    8000227c:	90000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80002280:	910b0021 	add	x1, x1, #0x2c0
    80002284:	9100c3ff 	add	sp, sp, #0x30
    80002288:	140008a1 	b	8000450c <memcpy>
    8000228c:	f0000033 	adrp	x19, 80009000 <global_context>
    80002290:	91000273 	add	x19, x19, #0x0
    80002294:	b9400268 	ldr	w8, [x19]
    80002298:	11000508 	add	w8, w8, #0x1
    8000229c:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    800022a0:	91183400 	add	x0, x0, #0x60d
    800022a4:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    800022a8:	910a0821 	add	x1, x1, #0x282
    800022ac:	52800522 	mov	w2, #0x29                  	// #41
    800022b0:	b9000268 	str	w8, [x19]
    800022b4:	94000873 	bl	80004480 <dlog>
    800022b8:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    800022bc:	91053000 	add	x0, x0, #0x14c
    800022c0:	94000870 	bl	80004480 <dlog>
    800022c4:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    800022c8:	91240400 	add	x0, x0, #0x901
    800022cc:	9400086d 	bl	80004480 <dlog>
    800022d0:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    800022d4:	f9400660 	ldr	x0, [x19, #8]
    800022d8:	f94007e8 	ldr	x8, [sp, #8]
    800022dc:	f9400129 	ldr	x9, [x9]
    800022e0:	eb08013f 	cmp	x9, x8
    800022e4:	540000a1 	b.ne	800022f8 <hftest_test_ctor_arch_mm_table_properties_level2+0xdc>  // b.any
    800022e8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800022ec:	f9400bf3 	ldr	x19, [sp, #16]
    800022f0:	9100c3ff 	add	sp, sp, #0x30
    800022f4:	d61f0000 	br	x0
    800022f8:	94000880 	bl	800044f8 <__stack_chk_fail>

00000000800022fc <hftest_test_ctor_arch_mm_table_properties_level3>:
    800022fc:	d100c3ff 	sub	sp, sp, #0x30
    80002300:	f9000bf3 	str	x19, [sp, #16]
    80002304:	a9027bfd 	stp	x29, x30, [sp, #32]
    80002308:	910083fd 	add	x29, sp, #0x20
    8000230c:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80002310:	f9400108 	ldr	x8, [x8]
    80002314:	f90007e8 	str	x8, [sp, #8]
    80002318:	f0000029 	adrp	x9, 80009000 <global_context>
    8000231c:	f9401928 	ldr	x8, [x9, #48]
    80002320:	f100c51f 	cmp	x8, #0x31
    80002324:	54000248 	b.hi	8000236c <hftest_test_ctor_arch_mm_table_properties_level3+0x70>  // b.pmore
    80002328:	9100050a 	add	x10, x8, #0x1
    8000232c:	f900192a 	str	x10, [x9, #48]
    80002330:	b000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80002334:	f94007e9 	ldr	x9, [sp, #8]
    80002338:	f940014a 	ldr	x10, [x10]
    8000233c:	eb09015f 	cmp	x10, x9
    80002340:	540004c1 	b.ne	800023d8 <hftest_test_ctor_arch_mm_table_properties_level3+0xdc>  // b.any
    80002344:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80002348:	52800502 	mov	w2, #0x28                  	// #40
    8000234c:	f9400bf3 	ldr	x19, [sp, #16]
    80002350:	f0000029 	adrp	x9, 80009000 <global_context>
    80002354:	9100e129 	add	x9, x9, #0x38
    80002358:	9b022500 	madd	x0, x8, x2, x9
    8000235c:	90000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80002360:	910a6021 	add	x1, x1, #0x298
    80002364:	9100c3ff 	add	sp, sp, #0x30
    80002368:	14000869 	b	8000450c <memcpy>
    8000236c:	f0000033 	adrp	x19, 80009000 <global_context>
    80002370:	91000273 	add	x19, x19, #0x0
    80002374:	b9400268 	ldr	w8, [x19]
    80002378:	11000508 	add	w8, w8, #0x1
    8000237c:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002380:	91183400 	add	x0, x0, #0x60d
    80002384:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    80002388:	910a0821 	add	x1, x1, #0x282
    8000238c:	52800522 	mov	w2, #0x29                  	// #41
    80002390:	b9000268 	str	w8, [x19]
    80002394:	9400083b 	bl	80004480 <dlog>
    80002398:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    8000239c:	91053000 	add	x0, x0, #0x14c
    800023a0:	94000838 	bl	80004480 <dlog>
    800023a4:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    800023a8:	91240400 	add	x0, x0, #0x901
    800023ac:	94000835 	bl	80004480 <dlog>
    800023b0:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    800023b4:	f9400660 	ldr	x0, [x19, #8]
    800023b8:	f94007e8 	ldr	x8, [sp, #8]
    800023bc:	f9400129 	ldr	x9, [x9]
    800023c0:	eb08013f 	cmp	x9, x8
    800023c4:	540000a1 	b.ne	800023d8 <hftest_test_ctor_arch_mm_table_properties_level3+0xdc>  // b.any
    800023c8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800023cc:	f9400bf3 	ldr	x19, [sp, #16]
    800023d0:	9100c3ff 	add	sp, sp, #0x30
    800023d4:	d61f0000 	br	x0
    800023d8:	94000848 	bl	800044f8 <__stack_chk_fail>

00000000800023dc <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level0>:
    800023dc:	d100c3ff 	sub	sp, sp, #0x30
    800023e0:	f9000bf3 	str	x19, [sp, #16]
    800023e4:	a9027bfd 	stp	x29, x30, [sp, #32]
    800023e8:	910083fd 	add	x29, sp, #0x20
    800023ec:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    800023f0:	f9400108 	ldr	x8, [x8]
    800023f4:	f90007e8 	str	x8, [sp, #8]
    800023f8:	f0000029 	adrp	x9, 80009000 <global_context>
    800023fc:	f9401928 	ldr	x8, [x9, #48]
    80002400:	f100c51f 	cmp	x8, #0x31
    80002404:	54000248 	b.hi	8000244c <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level0+0x70>  // b.pmore
    80002408:	9100050a 	add	x10, x8, #0x1
    8000240c:	f900192a 	str	x10, [x9, #48]
    80002410:	b000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    80002414:	f94007e9 	ldr	x9, [sp, #8]
    80002418:	f940014a 	ldr	x10, [x10]
    8000241c:	eb09015f 	cmp	x10, x9
    80002420:	540004c1 	b.ne	800024b8 <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level0+0xdc>  // b.any
    80002424:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80002428:	52800502 	mov	w2, #0x28                  	// #40
    8000242c:	f9400bf3 	ldr	x19, [sp, #16]
    80002430:	f0000029 	adrp	x9, 80009000 <global_context>
    80002434:	9100e129 	add	x9, x9, #0x38
    80002438:	9b022500 	madd	x0, x8, x2, x9
    8000243c:	90000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80002440:	9109c021 	add	x1, x1, #0x270
    80002444:	9100c3ff 	add	sp, sp, #0x30
    80002448:	14000831 	b	8000450c <memcpy>
    8000244c:	f0000033 	adrp	x19, 80009000 <global_context>
    80002450:	91000273 	add	x19, x19, #0x0
    80002454:	b9400268 	ldr	w8, [x19]
    80002458:	11000508 	add	w8, w8, #0x1
    8000245c:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002460:	91183400 	add	x0, x0, #0x60d
    80002464:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    80002468:	910a0821 	add	x1, x1, #0x282
    8000246c:	52800522 	mov	w2, #0x29                  	// #41
    80002470:	b9000268 	str	w8, [x19]
    80002474:	94000803 	bl	80004480 <dlog>
    80002478:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    8000247c:	91053000 	add	x0, x0, #0x14c
    80002480:	94000800 	bl	80004480 <dlog>
    80002484:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002488:	91240400 	add	x0, x0, #0x901
    8000248c:	940007fd 	bl	80004480 <dlog>
    80002490:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80002494:	f9400660 	ldr	x0, [x19, #8]
    80002498:	f94007e8 	ldr	x8, [sp, #8]
    8000249c:	f9400129 	ldr	x9, [x9]
    800024a0:	eb08013f 	cmp	x9, x8
    800024a4:	540000a1 	b.ne	800024b8 <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level0+0xdc>  // b.any
    800024a8:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800024ac:	f9400bf3 	ldr	x19, [sp, #16]
    800024b0:	9100c3ff 	add	sp, sp, #0x30
    800024b4:	d61f0000 	br	x0
    800024b8:	94000810 	bl	800044f8 <__stack_chk_fail>

00000000800024bc <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level1>:
    800024bc:	d100c3ff 	sub	sp, sp, #0x30
    800024c0:	f9000bf3 	str	x19, [sp, #16]
    800024c4:	a9027bfd 	stp	x29, x30, [sp, #32]
    800024c8:	910083fd 	add	x29, sp, #0x20
    800024cc:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    800024d0:	f9400108 	ldr	x8, [x8]
    800024d4:	f90007e8 	str	x8, [sp, #8]
    800024d8:	f0000029 	adrp	x9, 80009000 <global_context>
    800024dc:	f9401928 	ldr	x8, [x9, #48]
    800024e0:	f100c51f 	cmp	x8, #0x31
    800024e4:	54000248 	b.hi	8000252c <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level1+0x70>  // b.pmore
    800024e8:	9100050a 	add	x10, x8, #0x1
    800024ec:	f900192a 	str	x10, [x9, #48]
    800024f0:	b000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    800024f4:	f94007e9 	ldr	x9, [sp, #8]
    800024f8:	f940014a 	ldr	x10, [x10]
    800024fc:	eb09015f 	cmp	x10, x9
    80002500:	540004c1 	b.ne	80002598 <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level1+0xdc>  // b.any
    80002504:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80002508:	52800502 	mov	w2, #0x28                  	// #40
    8000250c:	f9400bf3 	ldr	x19, [sp, #16]
    80002510:	f0000029 	adrp	x9, 80009000 <global_context>
    80002514:	9100e129 	add	x9, x9, #0x38
    80002518:	9b022500 	madd	x0, x8, x2, x9
    8000251c:	90000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80002520:	91092021 	add	x1, x1, #0x248
    80002524:	9100c3ff 	add	sp, sp, #0x30
    80002528:	140007f9 	b	8000450c <memcpy>
    8000252c:	f0000033 	adrp	x19, 80009000 <global_context>
    80002530:	91000273 	add	x19, x19, #0x0
    80002534:	b9400268 	ldr	w8, [x19]
    80002538:	11000508 	add	w8, w8, #0x1
    8000253c:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002540:	91183400 	add	x0, x0, #0x60d
    80002544:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    80002548:	910a0821 	add	x1, x1, #0x282
    8000254c:	52800522 	mov	w2, #0x29                  	// #41
    80002550:	b9000268 	str	w8, [x19]
    80002554:	940007cb 	bl	80004480 <dlog>
    80002558:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    8000255c:	91053000 	add	x0, x0, #0x14c
    80002560:	940007c8 	bl	80004480 <dlog>
    80002564:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002568:	91240400 	add	x0, x0, #0x901
    8000256c:	940007c5 	bl	80004480 <dlog>
    80002570:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80002574:	f9400660 	ldr	x0, [x19, #8]
    80002578:	f94007e8 	ldr	x8, [sp, #8]
    8000257c:	f9400129 	ldr	x9, [x9]
    80002580:	eb08013f 	cmp	x9, x8
    80002584:	540000a1 	b.ne	80002598 <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level1+0xdc>  // b.any
    80002588:	a9427bfd 	ldp	x29, x30, [sp, #32]
    8000258c:	f9400bf3 	ldr	x19, [sp, #16]
    80002590:	9100c3ff 	add	sp, sp, #0x30
    80002594:	d61f0000 	br	x0
    80002598:	940007d8 	bl	800044f8 <__stack_chk_fail>

000000008000259c <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level2>:
    8000259c:	d100c3ff 	sub	sp, sp, #0x30
    800025a0:	f9000bf3 	str	x19, [sp, #16]
    800025a4:	a9027bfd 	stp	x29, x30, [sp, #32]
    800025a8:	910083fd 	add	x29, sp, #0x20
    800025ac:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    800025b0:	f9400108 	ldr	x8, [x8]
    800025b4:	f90007e8 	str	x8, [sp, #8]
    800025b8:	f0000029 	adrp	x9, 80009000 <global_context>
    800025bc:	f9401928 	ldr	x8, [x9, #48]
    800025c0:	f100c51f 	cmp	x8, #0x31
    800025c4:	54000248 	b.hi	8000260c <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level2+0x70>  // b.pmore
    800025c8:	9100050a 	add	x10, x8, #0x1
    800025cc:	f900192a 	str	x10, [x9, #48]
    800025d0:	b000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    800025d4:	f94007e9 	ldr	x9, [sp, #8]
    800025d8:	f940014a 	ldr	x10, [x10]
    800025dc:	eb09015f 	cmp	x10, x9
    800025e0:	540004c1 	b.ne	80002678 <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level2+0xdc>  // b.any
    800025e4:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800025e8:	52800502 	mov	w2, #0x28                  	// #40
    800025ec:	f9400bf3 	ldr	x19, [sp, #16]
    800025f0:	f0000029 	adrp	x9, 80009000 <global_context>
    800025f4:	9100e129 	add	x9, x9, #0x38
    800025f8:	9b022500 	madd	x0, x8, x2, x9
    800025fc:	90000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    80002600:	91088021 	add	x1, x1, #0x220
    80002604:	9100c3ff 	add	sp, sp, #0x30
    80002608:	140007c1 	b	8000450c <memcpy>
    8000260c:	f0000033 	adrp	x19, 80009000 <global_context>
    80002610:	91000273 	add	x19, x19, #0x0
    80002614:	b9400268 	ldr	w8, [x19]
    80002618:	11000508 	add	w8, w8, #0x1
    8000261c:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002620:	91183400 	add	x0, x0, #0x60d
    80002624:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    80002628:	910a0821 	add	x1, x1, #0x282
    8000262c:	52800522 	mov	w2, #0x29                  	// #41
    80002630:	b9000268 	str	w8, [x19]
    80002634:	94000793 	bl	80004480 <dlog>
    80002638:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    8000263c:	91053000 	add	x0, x0, #0x14c
    80002640:	94000790 	bl	80004480 <dlog>
    80002644:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002648:	91240400 	add	x0, x0, #0x901
    8000264c:	9400078d 	bl	80004480 <dlog>
    80002650:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80002654:	f9400660 	ldr	x0, [x19, #8]
    80002658:	f94007e8 	ldr	x8, [sp, #8]
    8000265c:	f9400129 	ldr	x9, [x9]
    80002660:	eb08013f 	cmp	x9, x8
    80002664:	540000a1 	b.ne	80002678 <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level2+0xdc>  // b.any
    80002668:	a9427bfd 	ldp	x29, x30, [sp, #32]
    8000266c:	f9400bf3 	ldr	x19, [sp, #16]
    80002670:	9100c3ff 	add	sp, sp, #0x30
    80002674:	d61f0000 	br	x0
    80002678:	940007a0 	bl	800044f8 <__stack_chk_fail>

000000008000267c <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level3>:
    8000267c:	d100c3ff 	sub	sp, sp, #0x30
    80002680:	f9000bf3 	str	x19, [sp, #16]
    80002684:	a9027bfd 	stp	x29, x30, [sp, #32]
    80002688:	910083fd 	add	x29, sp, #0x20
    8000268c:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80002690:	f9400108 	ldr	x8, [x8]
    80002694:	f90007e8 	str	x8, [sp, #8]
    80002698:	f0000029 	adrp	x9, 80009000 <global_context>
    8000269c:	f9401928 	ldr	x8, [x9, #48]
    800026a0:	f100c51f 	cmp	x8, #0x31
    800026a4:	54000248 	b.hi	800026ec <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level3+0x70>  // b.pmore
    800026a8:	9100050a 	add	x10, x8, #0x1
    800026ac:	f900192a 	str	x10, [x9, #48]
    800026b0:	b000002a 	adrp	x10, 80007000 <__stack_chk_guard>
    800026b4:	f94007e9 	ldr	x9, [sp, #8]
    800026b8:	f940014a 	ldr	x10, [x10]
    800026bc:	eb09015f 	cmp	x10, x9
    800026c0:	540004c1 	b.ne	80002758 <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level3+0xdc>  // b.any
    800026c4:	a9427bfd 	ldp	x29, x30, [sp, #32]
    800026c8:	52800502 	mov	w2, #0x28                  	// #40
    800026cc:	f9400bf3 	ldr	x19, [sp, #16]
    800026d0:	f0000029 	adrp	x9, 80009000 <global_context>
    800026d4:	9100e129 	add	x9, x9, #0x38
    800026d8:	9b022500 	madd	x0, x8, x2, x9
    800026dc:	90000021 	adrp	x1, 80006000 <rela_begin+0x6f8>
    800026e0:	9107e021 	add	x1, x1, #0x1f8
    800026e4:	9100c3ff 	add	sp, sp, #0x30
    800026e8:	14000789 	b	8000450c <memcpy>
    800026ec:	f0000033 	adrp	x19, 80009000 <global_context>
    800026f0:	91000273 	add	x19, x19, #0x0
    800026f4:	b9400268 	ldr	w8, [x19]
    800026f8:	11000508 	add	w8, w8, #0x1
    800026fc:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002700:	91183400 	add	x0, x0, #0x60d
    80002704:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    80002708:	910a0821 	add	x1, x1, #0x282
    8000270c:	52800522 	mov	w2, #0x29                  	// #41
    80002710:	b9000268 	str	w8, [x19]
    80002714:	9400075b 	bl	80004480 <dlog>
    80002718:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    8000271c:	91053000 	add	x0, x0, #0x14c
    80002720:	94000758 	bl	80004480 <dlog>
    80002724:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002728:	91240400 	add	x0, x0, #0x901
    8000272c:	94000755 	bl	80004480 <dlog>
    80002730:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80002734:	f9400660 	ldr	x0, [x19, #8]
    80002738:	f94007e8 	ldr	x8, [sp, #8]
    8000273c:	f9400129 	ldr	x9, [x9]
    80002740:	eb08013f 	cmp	x9, x8
    80002744:	540000a1 	b.ne	80002758 <hftest_test_ctor_arch_mm_block_addr_and_attrs_preserved_level3+0xdc>  // b.any
    80002748:	a9427bfd 	ldp	x29, x30, [sp, #32]
    8000274c:	f9400bf3 	ldr	x19, [sp, #16]
    80002750:	9100c3ff 	add	sp, sp, #0x30
    80002754:	d61f0000 	br	x0
    80002758:	94000768 	bl	800044f8 <__stack_chk_fail>

000000008000275c <hftest_test_fn_arch_mm_absent_properties_level0>:
    8000275c:	d10083ff 	sub	sp, sp, #0x20
    80002760:	a9017bfd 	stp	x29, x30, [sp, #16]
    80002764:	910043fd 	add	x29, sp, #0x10
    80002768:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    8000276c:	f9400108 	ldr	x8, [x8]
    80002770:	f90007e8 	str	x8, [sp, #8]
    80002774:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    80002778:	f9400129 	ldr	x9, [x9]
    8000277c:	f94007e8 	ldr	x8, [sp, #8]
    80002780:	eb08013f 	cmp	x9, x8
    80002784:	54000081 	b.ne	80002794 <hftest_test_fn_arch_mm_absent_properties_level0+0x38>  // b.any
    80002788:	a9417bfd 	ldp	x29, x30, [sp, #16]
    8000278c:	910083ff 	add	sp, sp, #0x20
    80002790:	d65f03c0 	ret
    80002794:	94000759 	bl	800044f8 <__stack_chk_fail>

0000000080002798 <kmain>:
    80002798:	d10303ff 	sub	sp, sp, #0xc0
    8000279c:	a9066ffc 	stp	x28, x27, [sp, #96]
    800027a0:	a90767fa 	stp	x26, x25, [sp, #112]
    800027a4:	a9085ff8 	stp	x24, x23, [sp, #128]
    800027a8:	a90957f6 	stp	x22, x21, [sp, #144]
    800027ac:	a90a4ff4 	stp	x20, x19, [sp, #160]
    800027b0:	a90b7bfd 	stp	x29, x30, [sp, #176]
    800027b4:	9102c3fd 	add	x29, sp, #0xb0
    800027b8:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    800027bc:	f9400108 	ldr	x8, [x8]
    800027c0:	f9002fe8 	str	x8, [sp, #88]
    800027c4:	b0000028 	adrp	x8, 80007000 <__stack_chk_guard>
    800027c8:	d0ffffe9 	adrp	x9, 80000000 <ORIGIN_ADDRESS>
    800027cc:	91200129 	add	x9, x9, #0x800
    800027d0:	d518c009 	msr	vbar_el1, x9
    800027d4:	f9400508 	ldr	x8, [x8, #8]
    800027d8:	f000003a 	adrp	x26, 80009000 <global_context>
    800027dc:	f9040748 	str	x8, [x26, #2056]
    800027e0:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    800027e4:	f9400929 	ldr	x9, [x9, #16]
    800027e8:	cb080128 	sub	x8, x9, x8
    800027ec:	b203e7e9 	mov	x9, #0x6666666666666666    	// #7378697629483820646
    800027f0:	f28ccce9 	movk	x9, #0x6667
    800027f4:	9b497d08 	smulh	x8, x8, x9
    800027f8:	9344fd09 	asr	x9, x8, #4
    800027fc:	8b48fd28 	add	x8, x9, x8, lsr #63
    80002800:	f0000036 	adrp	x22, 80009000 <global_context>
    80002804:	aa0003f3 	mov	x19, x0
    80002808:	f9001ac8 	str	x8, [x22, #48]
    8000280c:	940007b6 	bl	800046e4 <fdt_check_header>
    80002810:	35000200 	cbnz	w0, 80002850 <kmain+0xb8>
    80002814:	aa1303f7 	mov	x23, x19
    80002818:	38404ee8 	ldrb	w8, [x23, #4]!
    8000281c:	d3689d08 	lsl	x8, x8, #24
    80002820:	394006e9 	ldrb	w9, [x23, #1]
    80002824:	b3701d28 	bfi	x8, x9, #16, #8
    80002828:	39400ae9 	ldrb	w9, [x23, #2]
    8000282c:	b3781d28 	bfi	x8, x9, #8, #8
    80002830:	39400ee9 	ldrb	w9, [x23, #3]
    80002834:	b90057ff 	str	wzr, [sp, #84]
    80002838:	aa090118 	orr	x24, x8, x9
    8000283c:	f100731f 	cmp	x24, #0x1c
    80002840:	54000083 	b.cc	80002850 <kmain+0xb8>  // b.lo, b.ul, b.last
    80002844:	aa1303e0 	mov	x0, x19
    80002848:	940007a7 	bl	800046e4 <fdt_check_header>
    8000284c:	34000280 	cbz	w0, 8000289c <kmain+0x104>
    80002850:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002854:	9121e800 	add	x0, x0, #0x87a
    80002858:	f0000001 	adrp	x1, 80005000 <rodata_begin>
    8000285c:	91163421 	add	x1, x1, #0x58d
    80002860:	2a1f03e2 	mov	w2, wzr
    80002864:	94000707 	bl	80004480 <dlog>
    80002868:	b0000029 	adrp	x9, 80007000 <__stack_chk_guard>
    8000286c:	f9402fe8 	ldr	x8, [sp, #88]
    80002870:	f9400129 	ldr	x9, [x9]
    80002874:	eb08013f 	cmp	x9, x8
    80002878:	54004721 	b.ne	8000315c <kmain+0x9c4>  // b.any
    8000287c:	a94b7bfd 	ldp	x29, x30, [sp, #176]
    80002880:	a94a4ff4 	ldp	x20, x19, [sp, #160]
    80002884:	a94957f6 	ldp	x22, x21, [sp, #144]
    80002888:	a9485ff8 	ldp	x24, x23, [sp, #128]
    8000288c:	a94767fa 	ldp	x26, x25, [sp, #112]
    80002890:	a9466ffc 	ldp	x28, x27, [sp, #96]
    80002894:	910303ff 	add	sp, sp, #0xc0
    80002898:	d65f03c0 	ret
    8000289c:	3940426a 	ldrb	w10, [x19, #16]
    800028a0:	d3689d4e 	lsl	x14, x10, #24
    800028a4:	3940466b 	ldrb	w11, [x19, #17]
    800028a8:	39404a6c 	ldrb	w12, [x19, #18]
    800028ac:	53081d49 	lsl	w9, w10, #24
    800028b0:	39404e6d 	ldrb	w13, [x19, #19]
    800028b4:	b3701d6e 	bfi	x14, x11, #16, #8
    800028b8:	33101d69 	bfi	w9, w11, #16, #8
    800028bc:	b3781d8e 	bfi	x14, x12, #8, #8
    800028c0:	33181d89 	bfi	w9, w12, #8, #8
    800028c4:	aa0d01cb 	orr	x11, x14, x13
    800028c8:	2a0d0129 	orr	w9, w9, w13
    800028cc:	8b13016b 	add	x11, x11, x19
    800028d0:	2a1f03e8 	mov	w8, wzr
    800028d4:	d100430a 	sub	x10, x24, #0x10
    800028d8:	2a0903ec 	mov	w12, w9
    800028dc:	91003d6b 	add	x11, x11, #0xf
    800028e0:	eb2cc15f 	cmp	x10, w12, sxtw
    800028e4:	54fffb63 	b.cc	80002850 <kmain+0xb8>  // b.lo, b.ul, b.last
    800028e8:	f1003d7f 	cmp	x11, #0xf
    800028ec:	54fffb20 	b.eq	80002850 <kmain+0xb8>  // b.none
    800028f0:	385f916d 	ldurb	w13, [x11, #-7]
    800028f4:	d3481dad 	lsl	x13, x13, #56
    800028f8:	385fa16e 	ldurb	w14, [x11, #-6]
    800028fc:	b3501dcd 	bfi	x13, x14, #48, #8
    80002900:	385fb16e 	ldurb	w14, [x11, #-5]
    80002904:	b3581dcd 	bfi	x13, x14, #40, #8
    80002908:	385fc16e 	ldurb	w14, [x11, #-4]
    8000290c:	b3601dcd 	bfi	x13, x14, #32, #8
    80002910:	385fd16e 	ldurb	w14, [x11, #-3]
    80002914:	b3681dcd 	bfi	x13, x14, #24, #8
    80002918:	385fe16e 	ldurb	w14, [x11, #-2]
    8000291c:	b3701dcd 	bfi	x13, x14, #16, #8
    80002920:	385ff16e 	ldurb	w14, [x11, #-1]
    80002924:	b3781dcd 	bfi	x13, x14, #8, #8
    80002928:	3940016e 	ldrb	w14, [x11]
    8000292c:	aa0e01ad 	orr	x13, x13, x14
    80002930:	b40000ed 	cbz	x13, 8000294c <kmain+0x1b4>
    80002934:	1100418c 	add	w12, w12, #0x10
    80002938:	11000508 	add	w8, w8, #0x1
    8000293c:	9100416b 	add	x11, x11, #0x10
    80002940:	6b09019f 	cmp	w12, w9
    80002944:	54fffce2 	b.cs	800028e0 <kmain+0x148>  // b.hs, b.nlast
    80002948:	17ffffc2 	b	80002850 <kmain+0xb8>
    8000294c:	37fff828 	tbnz	w8, #31, 80002850 <kmain+0xb8>
    80002950:	910153e2 	add	x2, sp, #0x54
    80002954:	aa1303e0 	mov	x0, x19
    80002958:	2a1f03e1 	mov	w1, wzr
    8000295c:	9400083f 	bl	80004a58 <fdt_next_tag>
    80002960:	b94057e8 	ldr	w8, [sp, #84]
    80002964:	37fff768 	tbnz	w8, #31, 80002850 <kmain+0xb8>
    80002968:	2a1f03f4 	mov	w20, wzr
    8000296c:	2a1f03f9 	mov	w25, wzr
    80002970:	f000001b 	adrp	x27, 80005000 <rodata_begin>
    80002974:	9100037b 	add	x27, x27, #0x0
    80002978:	14000009 	b	8000299c <kmain+0x204>
    8000297c:	31000739 	adds	w25, w25, #0x1
    80002980:	54fff684 	b.mi	80002850 <kmain+0xb8>  // b.first
    80002984:	910153e2 	add	x2, sp, #0x54
    80002988:	aa1303e0 	mov	x0, x19
    8000298c:	2a1403e1 	mov	w1, w20
    80002990:	94000832 	bl	80004a58 <fdt_next_tag>
    80002994:	b94057e8 	ldr	w8, [sp, #84]
    80002998:	37fff5c8 	tbnz	w8, #31, 80002850 <kmain+0xb8>
    8000299c:	2a1403f5 	mov	w21, w20
    800029a0:	2a0803f4 	mov	w20, w8
    800029a4:	51000408 	sub	w8, w0, #0x1
    800029a8:	7100211f 	cmp	w8, #0x8
    800029ac:	54fff528 	b.hi	80002850 <kmain+0xb8>  // b.pmore
    800029b0:	10fff509 	adr	x9, 80002850 <kmain+0xb8>
    800029b4:	38686b6a 	ldrb	w10, [x27, x8]
    800029b8:	8b0a0929 	add	x9, x9, x10, lsl #2
    800029bc:	d61f0120 	br	x9
    800029c0:	34fff499 	cbz	w25, 80002850 <kmain+0xb8>
    800029c4:	51000739 	sub	w25, w25, #0x1
    800029c8:	17ffffef 	b	80002984 <kmain+0x1ec>
    800029cc:	72010abf 	tst	w21, #0x80000003
    800029d0:	b90043f5 	str	w21, [sp, #64]
    800029d4:	54fff3e1 	b.ne	80002850 <kmain+0xb8>  // b.any
    800029d8:	910103e2 	add	x2, sp, #0x40
    800029dc:	aa1303e0 	mov	x0, x19
    800029e0:	2a1503e1 	mov	w1, w21
    800029e4:	9400081d 	bl	80004a58 <fdt_next_tag>
    800029e8:	71000c1f 	cmp	w0, #0x3
    800029ec:	54fff321 	b.ne	80002850 <kmain+0xb8>  // b.any
    800029f0:	b94043e8 	ldr	w8, [sp, #64]
    800029f4:	37fff2e8 	tbnz	w8, #31, 80002850 <kmain+0xb8>
    800029f8:	aa1303e8 	mov	x8, x19
    800029fc:	38408d09 	ldrb	w9, [x8, #8]!
    80002a00:	3940266a 	ldrb	w10, [x19, #9]
    80002a04:	d3689d29 	lsl	x9, x9, #24
    80002a08:	b3701d49 	bfi	x9, x10, #16, #8
    80002a0c:	39402a6a 	ldrb	w10, [x19, #10]
    80002a10:	b3781d49 	bfi	x9, x10, #8, #8
    80002a14:	39402e6a 	ldrb	w10, [x19, #11]
    80002a18:	aa0a0129 	orr	x9, x9, x10
    80002a1c:	8b090108 	add	x8, x8, x9
    80002a20:	8b35c108 	add	x8, x8, w21, sxtw
    80002a24:	39400109 	ldrb	w9, [x8]
    80002a28:	3940050a 	ldrb	w10, [x8, #1]
    80002a2c:	53081d29 	lsl	w9, w9, #24
    80002a30:	33101d49 	bfi	w9, w10, #16, #8
    80002a34:	3940090a 	ldrb	w10, [x8, #2]
    80002a38:	39400d08 	ldrb	w8, [x8, #3]
    80002a3c:	33181d49 	bfi	w9, w10, #8, #8
    80002a40:	2a080121 	orr	w1, w9, w8
    80002a44:	910103e2 	add	x2, sp, #0x40
    80002a48:	aa1303e0 	mov	x0, x19
    80002a4c:	9400085e 	bl	80004bc4 <fdt_get_string>
    80002a50:	b5fff9a0 	cbnz	x0, 80002984 <kmain+0x1ec>
    80002a54:	b94043e8 	ldr	w8, [sp, #64]
    80002a58:	35ffefc8 	cbnz	w8, 80002850 <kmain+0xb8>
    80002a5c:	14000002 	b	80002a64 <kmain+0x2cc>
    80002a60:	35ffef99 	cbnz	w25, 80002850 <kmain+0xb8>
    80002a64:	8b180268 	add	x8, x19, x24
    80002a68:	aa1303e0 	mov	x0, x19
    80002a6c:	a90423f3 	stp	x19, x8, [sp, #64]
    80002a70:	940006cf 	bl	800045ac <fdt_ro_probe_>
    80002a74:	37f82160 	tbnz	w0, #31, 80002ea0 <kmain+0x708>
    80002a78:	f000000b 	adrp	x11, 80005000 <rodata_begin>
    80002a7c:	9106596b 	add	x11, x11, #0x196
    80002a80:	2a1f03f5 	mov	w21, wzr
    80002a84:	91001668 	add	x8, x19, #0x5
    80002a88:	f9000be8 	str	x8, [sp, #16]
    80002a8c:	f000000c 	adrp	x12, 80005000 <rodata_begin>
    80002a90:	9106758c 	add	x12, x12, #0x19d
    80002a94:	aa0b03f9 	mov	x25, x11
    80002a98:	eb0c033f 	cmp	x25, x12
    80002a9c:	54001ec2 	b.cs	80002e74 <kmain+0x6dc>  // b.hs, b.nlast
    80002aa0:	39400329 	ldrb	w9, [x25]
    80002aa4:	7100bd3f 	cmp	w9, #0x2f
    80002aa8:	540000a1 	b.ne	80002abc <kmain+0x324>  // b.any
    80002aac:	91000739 	add	x25, x25, #0x1
    80002ab0:	eb19019f 	cmp	x12, x25
    80002ab4:	54ffff61 	b.ne	80002aa0 <kmain+0x308>  // b.any
    80002ab8:	140000ee 	b	80002e70 <kmain+0x6d8>
    80002abc:	cb190168 	sub	x8, x11, x25
    80002ac0:	b1001d1f 	cmn	x8, #0x7
    80002ac4:	540001c0 	b.eq	80002afc <kmain+0x364>  // b.none
    80002ac8:	aa3903ea 	mvn	x10, x25
    80002acc:	8b0a016a 	add	x10, x11, x10
    80002ad0:	aa1f03e8 	mov	x8, xzr
    80002ad4:	91001d4a 	add	x10, x10, #0x7
    80002ad8:	12001d29 	and	w9, w9, #0xff
    80002adc:	7100bd3f 	cmp	w9, #0x2f
    80002ae0:	54000120 	b.eq	80002b04 <kmain+0x36c>  // b.none
    80002ae4:	eb08015f 	cmp	x10, x8
    80002ae8:	540000a0 	b.eq	80002afc <kmain+0x364>  // b.none
    80002aec:	8b080329 	add	x9, x25, x8
    80002af0:	91000508 	add	x8, x8, #0x1
    80002af4:	39400529 	ldrb	w9, [x9, #1]
    80002af8:	17fffff8 	b	80002ad8 <kmain+0x340>
    80002afc:	aa1f03e8 	mov	x8, xzr
    80002b00:	14000002 	b	80002b08 <kmain+0x370>
    80002b04:	8b080328 	add	x8, x25, x8
    80002b08:	f100011f 	cmp	x8, #0x0
    80002b0c:	aa1303e0 	mov	x0, x19
    80002b10:	9a880198 	csel	x24, x12, x8, eq  // eq = none
    80002b14:	940006a6 	bl	800045ac <fdt_ro_probe_>
    80002b18:	2a150008 	orr	w8, w0, w21
    80002b1c:	37f81c28 	tbnz	w8, #31, 80002ea0 <kmain+0x708>
    80002b20:	cb190308 	sub	x8, x24, x25
    80002b24:	d3607d09 	lsl	x9, x8, #32
    80002b28:	2a1f03f4 	mov	w20, wzr
    80002b2c:	a901a3e9 	stp	x9, x8, [sp, #24]
    80002b30:	93407d09 	sxtw	x9, w8
    80002b34:	93407d08 	sxtw	x8, w8
    80002b38:	a90063e9 	stp	x9, x24, [sp]
    80002b3c:	f90017e8 	str	x8, [sp, #40]
    80002b40:	7100069f 	cmp	w20, #0x1
    80002b44:	54000261 	b.ne	80002b90 <kmain+0x3f8>  // b.any
    80002b48:	14000007 	b	80002b64 <kmain+0x3cc>
    80002b4c:	12800075 	mov	w21, #0xfffffffc            	// #-4
    80002b50:	b9003ff5 	str	w21, [sp, #60]
    80002b54:	2a1402a8 	orr	w8, w21, w20
    80002b58:	37f81788 	tbnz	w8, #31, 80002e48 <kmain+0x6b0>
    80002b5c:	7100069f 	cmp	w20, #0x1
    80002b60:	54000181 	b.ne	80002b90 <kmain+0x3f8>  // b.any
    80002b64:	39402e68 	ldrb	w8, [x19, #11]
    80002b68:	aa1303e0 	mov	x0, x19
    80002b6c:	f9001be8 	str	x8, [sp, #48]
    80002b70:	39402278 	ldrb	w24, [x19, #8]
    80002b74:	3940267b 	ldrb	w27, [x19, #9]
    80002b78:	39402a7c 	ldrb	w28, [x19, #10]
    80002b7c:	9400068c 	bl	800045ac <fdt_ro_probe_>
    80002b80:	37f80080 	tbnz	w0, #31, 80002b90 <kmain+0x3f8>
    80002b84:	72010abf 	tst	w21, #0x80000003
    80002b88:	b90057f5 	str	w21, [sp, #84]
    80002b8c:	54000640 	b.eq	80002c54 <kmain+0x4bc>  // b.none
    80002b90:	b9003fff 	str	wzr, [sp, #60]
    80002b94:	37f801d5 	tbnz	w21, #31, 80002bcc <kmain+0x434>
    80002b98:	72010abf 	tst	w21, #0x80000003
    80002b9c:	b90057f5 	str	w21, [sp, #84]
    80002ba0:	54fffd61 	b.ne	80002b4c <kmain+0x3b4>  // b.any
    80002ba4:	910153e2 	add	x2, sp, #0x54
    80002ba8:	aa1303e0 	mov	x0, x19
    80002bac:	2a1503e1 	mov	w1, w21
    80002bb0:	940007aa 	bl	80004a58 <fdt_next_tag>
    80002bb4:	7100041f 	cmp	w0, #0x1
    80002bb8:	54fffca1 	b.ne	80002b4c <kmain+0x3b4>  // b.any
    80002bbc:	b94057f5 	ldr	w21, [sp, #84]
    80002bc0:	b9003ff5 	str	w21, [sp, #60]
    80002bc4:	36f80075 	tbz	w21, #31, 80002bd0 <kmain+0x438>
    80002bc8:	17ffffe3 	b	80002b54 <kmain+0x3bc>
    80002bcc:	2a1f03f5 	mov	w21, wzr
    80002bd0:	9100f3e2 	add	x2, sp, #0x3c
    80002bd4:	aa1303e0 	mov	x0, x19
    80002bd8:	2a1503e1 	mov	w1, w21
    80002bdc:	9400079f 	bl	80004a58 <fdt_next_tag>
    80002be0:	7100081f 	cmp	w0, #0x2
    80002be4:	540000e0 	b.eq	80002c00 <kmain+0x468>  // b.none
    80002be8:	7100041f 	cmp	w0, #0x1
    80002bec:	54000160 	b.eq	80002c18 <kmain+0x480>  // b.none
    80002bf0:	7100241f 	cmp	w0, #0x9
    80002bf4:	540001a0 	b.eq	80002c28 <kmain+0x490>  // b.none
    80002bf8:	b9403ff5 	ldr	w21, [sp, #60]
    80002bfc:	17fffff5 	b	80002bd0 <kmain+0x438>
    80002c00:	51000688 	sub	w8, w20, #0x1
    80002c04:	7100029f 	cmp	w20, #0x0
    80002c08:	540001cd 	b.le	80002c40 <kmain+0x4a8>
    80002c0c:	b9403ff5 	ldr	w21, [sp, #60]
    80002c10:	2a0803f4 	mov	w20, w8
    80002c14:	17ffffef 	b	80002bd0 <kmain+0x438>
    80002c18:	11000694 	add	w20, w20, #0x1
    80002c1c:	2a1402a8 	orr	w8, w21, w20
    80002c20:	36fff9e8 	tbz	w8, #31, 80002b5c <kmain+0x3c4>
    80002c24:	14000089 	b	80002e48 <kmain+0x6b0>
    80002c28:	b9403fe8 	ldr	w8, [sp, #60]
    80002c2c:	3100051f 	cmn	w8, #0x1
    80002c30:	5a9fb115 	csinv	w21, w8, wzr, lt  // lt = tstop
    80002c34:	2a1402a8 	orr	w8, w21, w20
    80002c38:	36fff928 	tbz	w8, #31, 80002b5c <kmain+0x3c4>
    80002c3c:	14000083 	b	80002e48 <kmain+0x6b0>
    80002c40:	b9403ff5 	ldr	w21, [sp, #60]
    80002c44:	2a0803f4 	mov	w20, w8
    80002c48:	2a1402a8 	orr	w8, w21, w20
    80002c4c:	36fff888 	tbz	w8, #31, 80002b5c <kmain+0x3c4>
    80002c50:	1400007e 	b	80002e48 <kmain+0x6b0>
    80002c54:	910153e2 	add	x2, sp, #0x54
    80002c58:	aa1303e0 	mov	x0, x19
    80002c5c:	2a1503e1 	mov	w1, w21
    80002c60:	9400077e 	bl	80004a58 <fdt_next_tag>
    80002c64:	7100041f 	cmp	w0, #0x1
    80002c68:	54fff941 	b.ne	80002b90 <kmain+0x3f8>  // b.any
    80002c6c:	b94057e8 	ldr	w8, [sp, #84]
    80002c70:	37fff908 	tbnz	w8, #31, 80002b90 <kmain+0x3f8>
    80002c74:	3940526b 	ldrb	w11, [x19, #20]
    80002c78:	53081d6b 	lsl	w11, w11, #24
    80002c7c:	3940566c 	ldrb	w12, [x19, #21]
    80002c80:	33101d8b 	bfi	w11, w12, #16, #8
    80002c84:	39405a6c 	ldrb	w12, [x19, #22]
    80002c88:	d3689f08 	lsl	x8, x24, #24
    80002c8c:	b3701f68 	bfi	x8, x27, #16, #8
    80002c90:	f9401be9 	ldr	x9, [sp, #48]
    80002c94:	b3781f88 	bfi	x8, x28, #8, #8
    80002c98:	aa090109 	orr	x9, x8, x9
    80002c9c:	93407eaa 	sxtw	x10, w21
    80002ca0:	8b0902e8 	add	x8, x23, x9
    80002ca4:	8b0a0108 	add	x8, x8, x10
    80002ca8:	33181d8b 	bfi	w11, w12, #8, #8
    80002cac:	39405e6c 	ldrb	w12, [x19, #23]
    80002cb0:	2a0c016b 	orr	w11, w11, w12
    80002cb4:	71003d7f 	cmp	w11, #0xf
    80002cb8:	54000568 	b.hi	80002d64 <kmain+0x5cc>  // b.pmore
    80002cbc:	aa1f03eb 	mov	x11, xzr
    80002cc0:	52a1000e 	mov	w14, #0x8000000             	// #134217728
    80002cc4:	386b690c 	ldrb	w12, [x8, x11]
    80002cc8:	340001ec 	cbz	w12, 80002d04 <kmain+0x56c>
    80002ccc:	8b0b010c 	add	x12, x8, x11
    80002cd0:	3940058d 	ldrb	w13, [x12, #1]
    80002cd4:	340001ed 	cbz	w13, 80002d10 <kmain+0x578>
    80002cd8:	3940098d 	ldrb	w13, [x12, #2]
    80002cdc:	3400022d 	cbz	w13, 80002d20 <kmain+0x588>
    80002ce0:	39400d8c 	ldrb	w12, [x12, #3]
    80002ce4:	3400026c 	cbz	w12, 80002d30 <kmain+0x598>
    80002ce8:	9100116b 	add	x11, x11, #0x4
    80002cec:	eb0e017f 	cmp	x11, x14
    80002cf0:	54fffea1 	b.ne	80002cc4 <kmain+0x52c>  // b.any
    80002cf4:	386e6908 	ldrb	w8, [x8, x14]
    80002cf8:	52a1000b 	mov	w11, #0x8000000             	// #134217728
    80002cfc:	34000208 	cbz	w8, 80002d3c <kmain+0x5a4>
    80002d00:	14000329 	b	800039a4 <kmain+0x120c>
    80002d04:	2a1f03e8 	mov	w8, wzr
    80002d08:	340001a8 	cbz	w8, 80002d3c <kmain+0x5a4>
    80002d0c:	14000326 	b	800039a4 <kmain+0x120c>
    80002d10:	2a1f03e8 	mov	w8, wzr
    80002d14:	9100056b 	add	x11, x11, #0x1
    80002d18:	34000128 	cbz	w8, 80002d3c <kmain+0x5a4>
    80002d1c:	14000322 	b	800039a4 <kmain+0x120c>
    80002d20:	2a1f03e8 	mov	w8, wzr
    80002d24:	9100096b 	add	x11, x11, #0x2
    80002d28:	340000a8 	cbz	w8, 80002d3c <kmain+0x5a4>
    80002d2c:	1400031e 	b	800039a4 <kmain+0x120c>
    80002d30:	2a1f03e8 	mov	w8, wzr
    80002d34:	91000d6b 	add	x11, x11, #0x3
    80002d38:	35006368 	cbnz	w8, 800039a4 <kmain+0x120c>
    80002d3c:	8b090168 	add	x8, x11, x9
    80002d40:	f9400be9 	ldr	x9, [sp, #16]
    80002d44:	8b0a0108 	add	x8, x8, x10
    80002d48:	8b080128 	add	x8, x9, x8
    80002d4c:	b4fff22b 	cbz	x11, 80002b90 <kmain+0x3f8>
    80002d50:	385fe109 	ldurb	w9, [x8, #-2]
    80002d54:	d100056b 	sub	x11, x11, #0x1
    80002d58:	d1000508 	sub	x8, x8, #0x1
    80002d5c:	7100bd3f 	cmp	w9, #0x2f
    80002d60:	54ffff61 	b.ne	80002d4c <kmain+0x5b4>  // b.any
    80002d64:	aa1f03e9 	mov	x9, xzr
    80002d68:	9100050a 	add	x10, x8, #0x1
    80002d6c:	52a1000d 	mov	w13, #0x8000000             	// #134217728
    80002d70:	8b09014b 	add	x11, x10, x9
    80002d74:	385ff16c 	ldurb	w12, [x11, #-1]
    80002d78:	3400018c 	cbz	w12, 80002da8 <kmain+0x610>
    80002d7c:	3869694c 	ldrb	w12, [x10, x9]
    80002d80:	3400018c 	cbz	w12, 80002db0 <kmain+0x618>
    80002d84:	3940056c 	ldrb	w12, [x11, #1]
    80002d88:	3400018c 	cbz	w12, 80002db8 <kmain+0x620>
    80002d8c:	3940096b 	ldrb	w11, [x11, #2]
    80002d90:	3400018b 	cbz	w11, 80002dc0 <kmain+0x628>
    80002d94:	91001129 	add	x9, x9, #0x4
    80002d98:	eb0d013f 	cmp	x9, x13
    80002d9c:	52a1000b 	mov	w11, #0x8000000             	// #134217728
    80002da0:	54fffe81 	b.ne	80002d70 <kmain+0x5d8>  // b.any
    80002da4:	14000008 	b	80002dc4 <kmain+0x62c>
    80002da8:	aa0903eb 	mov	x11, x9
    80002dac:	14000006 	b	80002dc4 <kmain+0x62c>
    80002db0:	9100052b 	add	x11, x9, #0x1
    80002db4:	14000004 	b	80002dc4 <kmain+0x62c>
    80002db8:	9100092b 	add	x11, x9, #0x2
    80002dbc:	14000002 	b	80002dc4 <kmain+0x62c>
    80002dc0:	91000d2b 	add	x11, x9, #0x3
    80002dc4:	f94013e9 	ldr	x9, [sp, #32]
    80002dc8:	6b09017f 	cmp	w11, w9
    80002dcc:	54ffee2b 	b.lt	80002b90 <kmain+0x3f8>  // b.tstop
    80002dd0:	f9400fe9 	ldr	x9, [sp, #24]
    80002dd4:	b4000149 	cbz	x9, 80002dfc <kmain+0x664>
    80002dd8:	aa1f03e9 	mov	x9, xzr
    80002ddc:	3869690a 	ldrb	w10, [x8, x9]
    80002de0:	38696b2b 	ldrb	w11, [x25, x9]
    80002de4:	6b0b015f 	cmp	w10, w11
    80002de8:	54ffed41 	b.ne	80002b90 <kmain+0x3f8>  // b.any
    80002dec:	f94017ea 	ldr	x10, [sp, #40]
    80002df0:	91000529 	add	x9, x9, #0x1
    80002df4:	eb09015f 	cmp	x10, x9
    80002df8:	54ffff21 	b.ne	80002ddc <kmain+0x644>  // b.any
    80002dfc:	f94003e9 	ldr	x9, [sp]
    80002e00:	38696908 	ldrb	w8, [x8, x9]
    80002e04:	34000248 	cbz	w8, 80002e4c <kmain+0x6b4>
    80002e08:	f9400fe9 	ldr	x9, [sp, #24]
    80002e0c:	b4000189 	cbz	x9, 80002e3c <kmain+0x6a4>
    80002e10:	aa1f03e9 	mov	x9, xzr
    80002e14:	38696b2a 	ldrb	w10, [x25, x9]
    80002e18:	7101015f 	cmp	w10, #0x40
    80002e1c:	540000c0 	b.eq	80002e34 <kmain+0x69c>  // b.none
    80002e20:	f94017ea 	ldr	x10, [sp, #40]
    80002e24:	91000529 	add	x9, x9, #0x1
    80002e28:	eb09015f 	cmp	x10, x9
    80002e2c:	54ffff41 	b.ne	80002e14 <kmain+0x67c>  // b.any
    80002e30:	14000003 	b	80002e3c <kmain+0x6a4>
    80002e34:	ab09033f 	cmn	x25, x9
    80002e38:	54ffeac1 	b.ne	80002b90 <kmain+0x3f8>  // b.any
    80002e3c:	7101011f 	cmp	w8, #0x40
    80002e40:	54ffea81 	b.ne	80002b90 <kmain+0x3f8>  // b.any
    80002e44:	14000002 	b	80002e4c <kmain+0x6b4>
    80002e48:	37f802d4 	tbnz	w20, #31, 80002ea0 <kmain+0x708>
    80002e4c:	f94007f9 	ldr	x25, [sp, #8]
    80002e50:	f0000009 	adrp	x9, 80005000 <rodata_begin>
    80002e54:	9120f129 	add	x9, x9, #0x83c
    80002e58:	f000000b 	adrp	x11, 80005000 <rodata_begin>
    80002e5c:	9106596b 	add	x11, x11, #0x196
    80002e60:	f000000c 	adrp	x12, 80005000 <rodata_begin>
    80002e64:	9106758c 	add	x12, x12, #0x19d
    80002e68:	36ffe195 	tbz	w21, #31, 80002a98 <kmain+0x300>
    80002e6c:	1400000f 	b	80002ea8 <kmain+0x710>
    80002e70:	37f80195 	tbnz	w21, #31, 80002ea0 <kmain+0x708>
    80002e74:	f94023f3 	ldr	x19, [sp, #64]
    80002e78:	52800108 	mov	w8, #0x8                   	// #8
    80002e7c:	b4000068 	cbz	x8, 80002e88 <kmain+0x6f0>
    80002e80:	d1000508 	sub	x8, x8, #0x1
    80002e84:	b5ffffe8 	cbnz	x8, 80002e80 <kmain+0x6e8>
    80002e88:	72010abf 	tst	w21, #0x80000003
    80002e8c:	b90057f5 	str	w21, [sp, #84]
    80002e90:	54000200 	b.eq	80002ed0 <kmain+0x738>  // b.none
    80002e94:	f0000009 	adrp	x9, 80005000 <rodata_begin>
    80002e98:	911e4529 	add	x9, x9, #0x791
    80002e9c:	14000003 	b	80002ea8 <kmain+0x710>
    80002ea0:	f0000009 	adrp	x9, 80005000 <rodata_begin>
    80002ea4:	9120f129 	add	x9, x9, #0x83c
    80002ea8:	f0000013 	adrp	x19, 80005000 <rodata_begin>
    80002eac:	91163673 	add	x19, x19, #0x58d
    80002eb0:	aa0903e0 	mov	x0, x9
    80002eb4:	aa1303e1 	mov	x1, x19
    80002eb8:	2a1f03e2 	mov	w2, wzr
    80002ebc:	94000571 	bl	80004480 <dlog>
    80002ec0:	f0000000 	adrp	x0, 80005000 <rodata_begin>
    80002ec4:	91206000 	add	x0, x0, #0x818
    80002ec8:	aa1303e1 	mov	x1, x19
    80002ecc:	17fffe65 	b	80002860 <kmain+0xc8>
    80002ed0:	910153e2 	add	x2, sp, #0x54
    80002ed4:	aa1303e0 	mov	x0, x19
    80002ed8:	2a1503e1 	mov	w1, w21
    80002edc:	940006df 	bl	80004a58 <fdt_next_tag>
    80002ee0:	f0000009 	adrp	x9, 80005000 <rodata_begin>
    80002ee4:	911e4529 	add	x9, x9, #0x791
    80002ee8:	7100041f 	cmp	w0, #0x1
    80002eec:	54fffde1 	b.ne	80002ea8 <kmain+0x710>  // b.any
    80002ef0:	b94057f5 	ldr	w21, [sp, #84]
    80002ef4:	37fffdb5 	tbnz	w21, #31, 80002ea8 <kmain+0x710>
    80002ef8:	910153e2 	add	x2, sp, #0x54
    80002efc:	aa1303e0 	mov	x0, x19
    80002f00:	2a1503e1 	mov	w1, w21
    80002f04:	940006d5 	bl	80004a58 <fdt_next_tag>
    80002f08:	71000c1f 	cmp	w0, #0x3
    80002f0c:	540000e0 	b.eq	80002f28 <kmain+0x790>  // b.none
    80002f10:	7100241f 	cmp	w0, #0x9
    80002f14:	54fffc00 	b.eq	80002e94 <kmain+0x6fc>  // b.none
    80002f18:	b94057f5 	ldr	w21, [sp, #84]
    80002f1c:	7100101f 	cmp	w0, #0x4
    80002f20:	54fffec0 	b.eq	80002ef8 <kmain+0x760>  // b.none
    80002f24:	17ffffdc 	b	80002e94 <kmain+0x6fc>
    80002f28:	f0000009 	adrp	x9, 80005000 <rodata_begin>
    80002f2c:	911e4529 	add	x9, x9, #0x791
    80002f30:	37fffbd5 	tbnz	w21, #31, 80002ea8 <kmain+0x710>
    80002f34:	f0000017 	adrp	x23, 80005000 <rodata_begin>
    80002f38:	9105a2f7 	add	x23, x23, #0x168
    80002f3c:	72010abf 	tst	w21, #0x80000003
    80002f40:	b90057f5 	str	w21, [sp, #84]
    80002f44:	54fffa81 	b.ne	80002e94 <kmain+0x6fc>  // b.any
    80002f48:	910153e2 	add	x2, sp, #0x54
    80002f4c:	aa1303e0 	mov	x0, x19
    80002f50:	2a1503e1 	mov	w1, w21
    80002f54:	aa0903f9 	mov	x25, x9
    80002f58:	940006c0 	bl	80004a58 <fdt_next_tag>
    80002f5c:	71000c1f 	cmp	w0, #0x3
    80002f60:	54001001 	b.ne	80003160 <kmain+0x9c8>  // b.any
    80002f64:	b94057e8 	ldr	w8, [sp, #84]
    80002f68:	aa1903e9 	mov	x9, x25
    80002f6c:	37fff9e8 	tbnz	w8, #31, 80002ea8 <kmain+0x710>
    80002f70:	39402268 	ldrb	w8, [x19, #8]
    80002f74:	d3689d08 	lsl	x8, x8, #24
    80002f78:	39402669 	ldrb	w9, [x19, #9]
    80002f7c:	b3701d28 	bfi	x8, x9, #16, #8
    80002f80:	39402a69 	ldrb	w9, [x19, #10]
    80002f84:	b3781d28 	bfi	x8, x9, #8, #8
    80002f88:	39402e69 	ldrb	w9, [x19, #11]
    80002f8c:	aa090108 	orr	x8, x8, x9
    80002f90:	f90017e8 	str	x8, [sp, #40]
    80002f94:	8b080268 	add	x8, x19, x8
    80002f98:	8b35c118 	add	x24, x8, w21, sxtw
    80002f9c:	39401f08 	ldrb	w8, [x24, #7]
    80002fa0:	b90033e8 	str	w8, [sp, #48]
    80002fa4:	39402308 	ldrb	w8, [x24, #8]
    80002fa8:	39402709 	ldrb	w9, [x24, #9]
    80002fac:	39401314 	ldrb	w20, [x24, #4]
    80002fb0:	3940171c 	ldrb	w28, [x24, #5]
    80002fb4:	39401b1b 	ldrb	w27, [x24, #6]
    80002fb8:	53081d08 	lsl	w8, w8, #24
    80002fbc:	33101d28 	bfi	w8, w9, #16, #8
    80002fc0:	39402b09 	ldrb	w9, [x24, #10]
    80002fc4:	33181d28 	bfi	w8, w9, #8, #8
    80002fc8:	39402f09 	ldrb	w9, [x24, #11]
    80002fcc:	2a090101 	orr	w1, w8, w9
    80002fd0:	910153e2 	add	x2, sp, #0x54
    80002fd4:	aa1303e0 	mov	x0, x19
    80002fd8:	940006fb 	bl	80004bc4 <fdt_get_string>
    80002fdc:	b94057e8 	ldr	w8, [sp, #84]
    80002fe0:	f100001f 	cmp	x0, #0x0
    80002fe4:	7a481900 	ccmp	w8, #0x8, #0x0, ne  // ne = any
    80002fe8:	54000361 	b.ne	80003054 <kmain+0x8bc>  // b.any
    80002fec:	aa1f03eb 	mov	x11, xzr
    80002ff0:	8b0b02ec 	add	x12, x23, x11
    80002ff4:	8b0b000d 	add	x13, x0, x11
    80002ff8:	394001a9 	ldrb	w9, [x13]
    80002ffc:	3940018a 	ldrb	w10, [x12]
    80003000:	6b0a013f 	cmp	w9, w10
    80003004:	53081e88 	lsl	w8, w20, #24
    80003008:	54000221 	b.ne	8000304c <kmain+0x8b4>  // b.any
    8000300c:	394005a9 	ldrb	w9, [x13, #1]
    80003010:	3940058a 	ldrb	w10, [x12, #1]
    80003014:	6b0a013f 	cmp	w9, w10
    80003018:	540001a1 	b.ne	8000304c <kmain+0x8b4>  // b.any
    8000301c:	394009a9 	ldrb	w9, [x13, #2]
    80003020:	3940098a 	ldrb	w10, [x12, #2]
    80003024:	6b0a013f 	cmp	w9, w10
    80003028:	54000121 	b.ne	8000304c <kmain+0x8b4>  // b.any
    8000302c:	39400da9 	ldrb	w9, [x13, #3]
    80003030:	39400d8a 	ldrb	w10, [x12, #3]
    80003034:	6b0a013f 	cmp	w9, w10
    80003038:	540000a1 	b.ne	8000304c <kmain+0x8b4>  // b.any
    8000303c:	9100116b 	add	x11, x11, #0x4
    80003040:	f100217f 	cmp	x11, #0x8
    80003044:	54fffd61 	b.ne	80002ff0 <kmain+0x858>  // b.any
    80003048:	1400001c 	b	800030b8 <kmain+0x920>
    8000304c:	6b0a013f 	cmp	w9, w10
    80003050:	54000340 	b.eq	800030b8 <kmain+0x920>  // b.none
    80003054:	910153e2 	add	x2, sp, #0x54
    80003058:	aa1303e0 	mov	x0, x19
    8000305c:	b90057f5 	str	w21, [sp, #84]
    80003060:	2a1503e1 	mov	w1, w21
    80003064:	9400067d 	bl	80004a58 <fdt_next_tag>
    80003068:	71000c1f 	cmp	w0, #0x3
    8000306c:	540007a1 	b.ne	80003160 <kmain+0x9c8>  // b.any
    80003070:	b94057f5 	ldr	w21, [sp, #84]
    80003074:	aa1903e9 	mov	x9, x25
    80003078:	37fff195 	tbnz	w21, #31, 80002ea8 <kmain+0x710>
    8000307c:	910153e2 	add	x2, sp, #0x54
    80003080:	aa1303e0 	mov	x0, x19
    80003084:	2a1503e1 	mov	w1, w21
    80003088:	94000674 	bl	80004a58 <fdt_next_tag>
    8000308c:	71000c1f 	cmp	w0, #0x3
    80003090:	540000e0 	b.eq	800030ac <kmain+0x914>  // b.none
    80003094:	7100241f 	cmp	w0, #0x9
    80003098:	54ffefe0 	b.eq	80002e94 <kmain+0x6fc>  // b.none
    8000309c:	b94057f5 	ldr	w21, [sp, #84]
    800030a0:	7100101f 	cmp	w0, #0x4
    800030a4:	54fffec0 	b.eq	8000307c <kmain+0x8e4>  // b.none
    800030a8:	17ffff7b 	b	80002e94 <kmain+0x6fc>
    800030ac:	aa1903e9 	mov	x9, x25
    800030b0:	36fff475 	tbz	w21, #31, 80002f3c <kmain+0x7a4>
    800030b4:	17ffff7d 	b	80002ea8 <kmain+0x710>
    800030b8:	33101f88 	bfi	w8, w28, #16, #8
    800030bc:	b94033e9 	ldr	w9, [sp, #48]
    800030c0:	33181f68 	bfi	w8, w27, #8, #8
    800030c4:	2a090109 	orr	w9, w8, w9
    800030c8:	b4ffee78 	cbz	x24, 80002e94 <kmain+0x6fc>
    800030cc:	39405268 	ldrb	w8, [x19, #20]
    800030d0:	53081d08 	lsl	w8, w8, #24
    800030d4:	3940566a 	ldrb	w10, [x19, #21]
    800030d8:	33101d48 	bfi	w8, w10, #16, #8
    800030dc:	39405a6a 	ldrb	w10, [x19, #22]
    800030e0:	33181d48 	bfi	w8, w10, #8, #8
    800030e4:	39405e6a 	ldrb	w10, [x19, #23]
    800030e8:	2a0a0108 	orr	w8, w8, w10
    800030ec:	71003d1f 	cmp	w8, #0xf
    800030f0:	110012a8 	add	w8, w21, #0x4
    800030f4:	12000908 	and	w8, w8, #0x7
    800030f8:	7a409904 	ccmp	w8, #0x0, #0x4, ls  // ls = plast
    800030fc:	540007c1 	b.ne	800031f4 <kmain+0xa5c>  // b.any
    80003100:	52800188 	mov	w8, #0xc                   	// #12
    80003104:	37f80909 	tbnz	w9, #31, 80003224 <kmain+0xa8c>
    80003108:	340045e9 	cbz	w9, 800039c4 <kmain+0x122c>
    8000310c:	93407d2a 	sxtw	x10, w9
    80003110:	d1000549 	sub	x9, x10, #0x1
    80003114:	8b08030b 	add	x11, x24, x8
    80003118:	f100053f 	cmp	x9, #0x1
    8000311c:	5400026b 	b.lt	80003168 <kmain+0x9d0>  // b.tstop
    80003120:	d284c00e 	mov	x14, #0x2600                	// #9728
    80003124:	5280002c 	mov	w12, #0x1                   	// #1
    80003128:	aa0903ef 	mov	x15, x9
    8000312c:	f2c0002e 	movk	x14, #0x1, lsl #32
    80003130:	aa0b03ed 	mov	x13, x11
    80003134:	394001b0 	ldrb	w16, [x13]
    80003138:	7100821f 	cmp	w16, #0x20
    8000313c:	9ad02190 	lsl	x16, x12, x16
    80003140:	8a0e0210 	and	x16, x16, x14
    80003144:	fa409a04 	ccmp	x16, #0x0, #0x4, ls  // ls = plast
    80003148:	54000120 	b.eq	8000316c <kmain+0x9d4>  // b.none
    8000314c:	910005ad 	add	x13, x13, #0x1
    80003150:	f10005ef 	subs	x15, x15, #0x1
    80003154:	54ffff01 	b.ne	80003134 <kmain+0x99c>  // b.any
    80003158:	14000024 	b	800031e8 <kmain+0xa50>
    8000315c:	940004e7 	bl	800044f8 <__stack_chk_fail>
    80003160:	aa1903e9 	mov	x9, x25
    80003164:	17ffff51 	b	80002ea8 <kmain+0x710>
    80003168:	aa0b03ed 	mov	x13, x11
    8000316c:	8b090169 	add	x9, x11, x9
    80003170:	eb0901bf 	cmp	x13, x9
    80003174:	540003a2 	b.cs	800031e8 <kmain+0xa50>  // b.hs, b.nlast
    80003178:	8b0a010b 	add	x11, x8, x10
    8000317c:	f94017ea 	ldr	x10, [sp, #40]
    80003180:	cb0d0168 	sub	x8, x11, x13
    80003184:	8b130108 	add	x8, x8, x19
    80003188:	8b35c14c 	add	x12, x10, w21, sxtw
    8000318c:	d284c00a 	mov	x10, #0x2600                	// #9728
    80003190:	f2c0002a 	movk	x10, #0x1, lsl #32
    80003194:	8b0c0108 	add	x8, x8, x12
    80003198:	d100050e 	sub	x14, x8, #0x1
    8000319c:	5280002f 	mov	w15, #0x1                   	// #1
    800031a0:	aa0d03e8 	mov	x8, x13
    800031a4:	39400110 	ldrb	w16, [x8]
    800031a8:	7100821f 	cmp	w16, #0x20
    800031ac:	9ad021f0 	lsl	x16, x15, x16
    800031b0:	8a0a0210 	and	x16, x16, x10
    800031b4:	fa409a04 	ccmp	x16, #0x0, #0x4, ls  // ls = plast
    800031b8:	540000a1 	b.ne	800031cc <kmain+0xa34>  // b.any
    800031bc:	91000508 	add	x8, x8, #0x1
    800031c0:	f10005ce 	subs	x14, x14, #0x1
    800031c4:	54ffff01 	b.ne	800031a4 <kmain+0xa0c>  // b.any
    800031c8:	aa0903e8 	mov	x8, x9
    800031cc:	cb0d010e 	sub	x14, x8, x13
    800031d0:	b10005cf 	adds	x15, x14, #0x1
    800031d4:	54000383 	b.cc	80003244 <kmain+0xaac>  // b.lo, b.ul, b.last
    800031d8:	aa1f03f0 	mov	x16, xzr
    800031dc:	eb0e021f 	cmp	x16, x14
    800031e0:	54000400 	b.eq	80003260 <kmain+0xac8>  // b.none
    800031e4:	14000035 	b	800032b8 <kmain+0xb20>
    800031e8:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800031ec:	91217800 	add	x0, x0, #0x85e
    800031f0:	17fffd9a 	b	80002858 <kmain+0xc0>
    800031f4:	39401308 	ldrb	w8, [x24, #4]
    800031f8:	53081d08 	lsl	w8, w8, #24
    800031fc:	3940170a 	ldrb	w10, [x24, #5]
    80003200:	33101d48 	bfi	w8, w10, #16, #8
    80003204:	39401b0a 	ldrb	w10, [x24, #6]
    80003208:	33181d48 	bfi	w8, w10, #8, #8
    8000320c:	39401f0a 	ldrb	w10, [x24, #7]
    80003210:	2a0a0108 	orr	w8, w8, w10
    80003214:	71001d1f 	cmp	w8, #0x7
    80003218:	54fff749 	b.ls	80003100 <kmain+0x968>  // b.plast
    8000321c:	52800208 	mov	w8, #0x10                  	// #16
    80003220:	36fff749 	tbz	w9, #31, 80003108 <kmain+0x970>
    80003224:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003228:	9107bc00 	add	x0, x0, #0x1ef
    8000322c:	d0000001 	adrp	x1, 80005000 <rodata_begin>
    80003230:	91147821 	add	x1, x1, #0x51e
    80003234:	d0000002 	adrp	x2, 80005000 <rodata_begin>
    80003238:	91091c42 	add	x2, x2, #0x247
    8000323c:	528011e3 	mov	w3, #0x8f                  	// #143
    80003240:	940006e1 	bl	80004dc4 <panic>
    80003244:	b40003ce 	cbz	x14, 800032bc <kmain+0xb24>
    80003248:	d10009f0 	sub	x16, x15, #0x2
    8000324c:	f1000e1f 	cmp	x16, #0x3
    80003250:	54000363 	b.cc	800032bc <kmain+0xb24>  // b.lo, b.ul, b.last
    80003254:	52800090 	mov	w16, #0x4                   	// #4
    80003258:	eb0e021f 	cmp	x16, x14
    8000325c:	540002e1 	b.ne	800032b8 <kmain+0xb20>  // b.any
    80003260:	b40001ae 	cbz	x14, 80003294 <kmain+0xafc>
    80003264:	cb0801b0 	sub	x16, x13, x8
    80003268:	aa0d03f1 	mov	x17, x13
    8000326c:	d0000012 	adrp	x18, 80005000 <rodata_begin>
    80003270:	9104d252 	add	x18, x18, #0x134
    80003274:	39400220 	ldrb	w0, [x17]
    80003278:	39400241 	ldrb	w1, [x18]
    8000327c:	6b01001f 	cmp	w0, w1
    80003280:	540001c1 	b.ne	800032b8 <kmain+0xb20>  // b.any
    80003284:	91000631 	add	x17, x17, #0x1
    80003288:	91000652 	add	x18, x18, #0x1
    8000328c:	b1000610 	adds	x16, x16, #0x1
    80003290:	54ffff23 	b.cc	80003274 <kmain+0xadc>  // b.lo, b.ul, b.last
    80003294:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003298:	9119a800 	add	x0, x0, #0x66a
    8000329c:	d0000001 	adrp	x1, 80005000 <rodata_begin>
    800032a0:	91163421 	add	x1, x1, #0x58d
    800032a4:	d0000002 	adrp	x2, 80005000 <rodata_begin>
    800032a8:	91044042 	add	x2, x2, #0x110
    800032ac:	2a1f03e3 	mov	w3, wzr
    800032b0:	94000474 	bl	80004480 <dlog>
    800032b4:	17fffd6d 	b	80002868 <kmain+0xd0>
    800032b8:	b400012f 	cbz	x15, 800032dc <kmain+0xb44>
    800032bc:	b400126e 	cbz	x14, 80003508 <kmain+0xd70>
    800032c0:	d10009f0 	sub	x16, x15, #0x2
    800032c4:	f1000e1f 	cmp	x16, #0x3
    800032c8:	54001203 	b.cc	80003508 <kmain+0xd70>  // b.lo, b.ul, b.last
    800032cc:	52800090 	mov	w16, #0x4                   	// #4
    800032d0:	eb0e021f 	cmp	x16, x14
    800032d4:	540000a0 	b.eq	800032e8 <kmain+0xb50>  // b.none
    800032d8:	1400008b 	b	80003504 <kmain+0xd6c>
    800032dc:	aa1f03f0 	mov	x16, xzr
    800032e0:	eb0e021f 	cmp	x16, x14
    800032e4:	54001101 	b.ne	80003504 <kmain+0xd6c>  // b.any
    800032e8:	b40001ae 	cbz	x14, 8000331c <kmain+0xb84>
    800032ec:	cb0801b0 	sub	x16, x13, x8
    800032f0:	aa0d03f1 	mov	x17, x13
    800032f4:	d0000012 	adrp	x18, 80005000 <rodata_begin>
    800032f8:	91060252 	add	x18, x18, #0x180
    800032fc:	39400220 	ldrb	w0, [x17]
    80003300:	39400241 	ldrb	w1, [x18]
    80003304:	6b01001f 	cmp	w0, w1
    80003308:	54000fe1 	b.ne	80003504 <kmain+0xd6c>  // b.any
    8000330c:	91000631 	add	x17, x17, #0x1
    80003310:	91000652 	add	x18, x18, #0x1
    80003314:	b1000610 	adds	x16, x16, #0x1
    80003318:	54ffff23 	b.cc	800032fc <kmain+0xb64>  // b.lo, b.ul, b.last
    8000331c:	d0000013 	adrp	x19, 80005000 <rodata_begin>
    80003320:	91163673 	add	x19, x19, #0x58d
    80003324:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003328:	9116e400 	add	x0, x0, #0x5b9
    8000332c:	aa1303e1 	mov	x1, x19
    80003330:	2a1f03e2 	mov	w2, wzr
    80003334:	94000453 	bl	80004480 <dlog>
    80003338:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    8000333c:	911a9000 	add	x0, x0, #0x6a4
    80003340:	aa1303e1 	mov	x1, x19
    80003344:	2a1f03e2 	mov	w2, wzr
    80003348:	9400044e 	bl	80004480 <dlog>
    8000334c:	f9401ac8 	ldr	x8, [x22, #48]
    80003350:	b4001b68 	cbz	x8, 800036bc <kmain+0xf24>
    80003354:	aa1f03f5 	mov	x21, xzr
    80003358:	aa1f03f9 	mov	x25, xzr
    8000335c:	aa1f03f7 	mov	x23, xzr
    80003360:	aa1f03f3 	mov	x19, xzr
    80003364:	d0000014 	adrp	x20, 80005000 <rodata_begin>
    80003368:	91163694 	add	x20, x20, #0x58d
    8000336c:	d000001b 	adrp	x27, 80005000 <rodata_begin>
    80003370:	9117337b 	add	x27, x27, #0x5cc
    80003374:	d000001c 	adrp	x28, 80005000 <rodata_begin>
    80003378:	91233b9c 	add	x28, x28, #0x8ce
    8000337c:	14000027 	b	80003418 <kmain+0xc80>
    80003380:	f10002ff 	cmp	x23, #0x0
    80003384:	52800408 	mov	w8, #0x20                  	// #32
    80003388:	52800589 	mov	w9, #0x2c                  	// #44
    8000338c:	1a881122 	csel	w2, w9, w8, ne  // ne = any
    80003390:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003394:	9116f800 	add	x0, x0, #0x5be
    80003398:	aa1403e1 	mov	x1, x20
    8000339c:	2a1f03e3 	mov	w3, wzr
    800033a0:	94000438 	bl	80004480 <dlog>
    800033a4:	f9400b02 	ldr	x2, [x24, #16]
    800033a8:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800033ac:	91239400 	add	x0, x0, #0x8e5
    800033b0:	aa1403e1 	mov	x1, x20
    800033b4:	2a1f03e3 	mov	w3, wzr
    800033b8:	94000432 	bl	80004480 <dlog>
    800033bc:	39406308 	ldrb	w8, [x24, #24]
    800033c0:	7100011f 	cmp	w8, #0x0
    800033c4:	d0000008 	adrp	x8, 80005000 <rodata_begin>
    800033c8:	91075908 	add	x8, x8, #0x1d6
    800033cc:	d0000009 	adrp	x9, 80005000 <rodata_begin>
    800033d0:	91076d29 	add	x9, x9, #0x1db
    800033d4:	9a880122 	csel	x2, x9, x8, eq  // eq = none
    800033d8:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800033dc:	91189800 	add	x0, x0, #0x626
    800033e0:	aa1403e1 	mov	x1, x20
    800033e4:	2a1f03e3 	mov	w3, wzr
    800033e8:	94000426 	bl	80004480 <dlog>
    800033ec:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800033f0:	9116b400 	add	x0, x0, #0x5ad
    800033f4:	aa1403e1 	mov	x1, x20
    800033f8:	2a1f03e2 	mov	w2, wzr
    800033fc:	94000421 	bl	80004480 <dlog>
    80003400:	910006f7 	add	x23, x23, #0x1
    80003404:	f9401ac8 	ldr	x8, [x22, #48]
    80003408:	91000673 	add	x19, x19, #0x1
    8000340c:	9100a2b5 	add	x21, x21, #0x28
    80003410:	eb08027f 	cmp	x19, x8
    80003414:	540013a2 	b.cs	80003688 <kmain+0xef0>  // b.hs, b.nlast
    80003418:	f9440758 	ldr	x24, [x26, #2056]
    8000341c:	f8756b08 	ldr	x8, [x24, x21]
    80003420:	eb19011f 	cmp	x8, x25
    80003424:	54000320 	b.eq	80003488 <kmain+0xcf0>  // b.none
    80003428:	b40001b7 	cbz	x23, 8000345c <kmain+0xcc4>
    8000342c:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003430:	911a1400 	add	x0, x0, #0x685
    80003434:	aa1403e1 	mov	x1, x20
    80003438:	2a1f03e2 	mov	w2, wzr
    8000343c:	94000411 	bl	80004480 <dlog>
    80003440:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003444:	91224400 	add	x0, x0, #0x891
    80003448:	aa1403e1 	mov	x1, x20
    8000344c:	2a1f03e2 	mov	w2, wzr
    80003450:	9400040c 	bl	80004480 <dlog>
    80003454:	f8756b19 	ldr	x25, [x24, x21]
    80003458:	14000002 	b	80003460 <kmain+0xcc8>
    8000345c:	aa0803f9 	mov	x25, x8
    80003460:	aa1b03e0 	mov	x0, x27
    80003464:	aa1403e1 	mov	x1, x20
    80003468:	2a1f03e2 	mov	w2, wzr
    8000346c:	94000405 	bl	80004480 <dlog>
    80003470:	f8756b02 	ldr	x2, [x24, x21]
    80003474:	aa1c03e0 	mov	x0, x28
    80003478:	aa1403e1 	mov	x1, x20
    8000347c:	2a1f03e3 	mov	w3, wzr
    80003480:	94000400 	bl	80004480 <dlog>
    80003484:	aa1f03f7 	mov	x23, xzr
    80003488:	8b150318 	add	x24, x24, x21
    8000348c:	b9400b08 	ldr	w8, [x24, #8]
    80003490:	34000188 	cbz	w8, 800034c0 <kmain+0xd28>
    80003494:	7100091f 	cmp	w8, #0x2
    80003498:	54000241 	b.ne	800034e0 <kmain+0xd48>  // b.any
    8000349c:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800034a0:	9122cc00 	add	x0, x0, #0x8b3
    800034a4:	aa1403e1 	mov	x1, x20
    800034a8:	2a1f03e2 	mov	w2, wzr
    800034ac:	940003f5 	bl	80004480 <dlog>
    800034b0:	b9400b08 	ldr	w8, [x24, #8]
    800034b4:	7100051f 	cmp	w8, #0x1
    800034b8:	54fffa61 	b.ne	80003404 <kmain+0xc6c>  // b.any
    800034bc:	1400000b 	b	800034e8 <kmain+0xd50>
    800034c0:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800034c4:	91226c00 	add	x0, x0, #0x89b
    800034c8:	aa1403e1 	mov	x1, x20
    800034cc:	2a1f03e2 	mov	w2, wzr
    800034d0:	940003ec 	bl	80004480 <dlog>
    800034d4:	b9400b08 	ldr	w8, [x24, #8]
    800034d8:	7100091f 	cmp	w8, #0x2
    800034dc:	54fffe00 	b.eq	8000349c <kmain+0xd04>  // b.none
    800034e0:	7100051f 	cmp	w8, #0x1
    800034e4:	54fff901 	b.ne	80003404 <kmain+0xc6c>  // b.any
    800034e8:	b5fff4d7 	cbnz	x23, 80003380 <kmain+0xbe8>
    800034ec:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800034f0:	911a4000 	add	x0, x0, #0x690
    800034f4:	aa1403e1 	mov	x1, x20
    800034f8:	2a1f03e2 	mov	w2, wzr
    800034fc:	940003e1 	bl	80004480 <dlog>
    80003500:	17ffffa0 	b	80003380 <kmain+0xbe8>
    80003504:	b40000cf 	cbz	x15, 8000351c <kmain+0xd84>
    80003508:	b24001ef 	orr	x15, x15, #0x1
    8000350c:	f1000dff 	cmp	x15, #0x3
    80003510:	54000420 	b.eq	80003594 <kmain+0xdfc>  // b.none
    80003514:	b400040e 	cbz	x14, 80003594 <kmain+0xdfc>
    80003518:	5280006f 	mov	w15, #0x3                   	// #3
    8000351c:	eb0e01ff 	cmp	x15, x14
    80003520:	540003a1 	b.ne	80003594 <kmain+0xdfc>  // b.any
    80003524:	cb0801ae 	sub	x14, x13, x8
    80003528:	d000000f 	adrp	x15, 80005000 <rodata_begin>
    8000352c:	9105f1ef 	add	x15, x15, #0x17c
    80003530:	394001b0 	ldrb	w16, [x13]
    80003534:	394001f1 	ldrb	w17, [x15]
    80003538:	6b11021f 	cmp	w16, w17
    8000353c:	540002c1 	b.ne	80003594 <kmain+0xdfc>  // b.any
    80003540:	910005ad 	add	x13, x13, #0x1
    80003544:	910005ef 	add	x15, x15, #0x1
    80003548:	b10005ce 	adds	x14, x14, #0x1
    8000354c:	54ffff23 	b.cc	80003530 <kmain+0xd98>  // b.lo, b.ul, b.last
    80003550:	eb09011f 	cmp	x8, x9
    80003554:	54000c82 	b.cs	800036e4 <kmain+0xf4c>  // b.hs, b.nlast
    80003558:	cb08016d 	sub	x13, x11, x8
    8000355c:	8b1301ad 	add	x13, x13, x19
    80003560:	8b0c01ad 	add	x13, x13, x12
    80003564:	d10005ad 	sub	x13, x13, #0x1
    80003568:	5280002e 	mov	w14, #0x1                   	// #1
    8000356c:	3940010f 	ldrb	w15, [x8]
    80003570:	710081ff 	cmp	w15, #0x20
    80003574:	9acf21cf 	lsl	x15, x14, x15
    80003578:	8a0a01ef 	and	x15, x15, x10
    8000357c:	fa4099e4 	ccmp	x15, #0x0, #0x4, ls  // ls = plast
    80003580:	54000b20 	b.eq	800036e4 <kmain+0xf4c>  // b.none
    80003584:	91000508 	add	x8, x8, #0x1
    80003588:	f10005ad 	subs	x13, x13, #0x1
    8000358c:	54ffff01 	b.ne	8000356c <kmain+0xdd4>  // b.any
    80003590:	14000067 	b	8000372c <kmain+0xf94>
    80003594:	d0000013 	adrp	x19, 80005000 <rodata_begin>
    80003598:	91163673 	add	x19, x19, #0x58d
    8000359c:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800035a0:	911b8400 	add	x0, x0, #0x6e1
    800035a4:	aa1303e1 	mov	x1, x19
    800035a8:	2a1f03e2 	mov	w2, wzr
    800035ac:	940003b5 	bl	80004480 <dlog>
    800035b0:	d0000014 	adrp	x20, 80005000 <rodata_begin>
    800035b4:	91191694 	add	x20, x20, #0x645
    800035b8:	aa1403e0 	mov	x0, x20
    800035bc:	aa1303e1 	mov	x1, x19
    800035c0:	2a1f03e2 	mov	w2, wzr
    800035c4:	940003af 	bl	80004480 <dlog>
    800035c8:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800035cc:	91192400 	add	x0, x0, #0x649
    800035d0:	aa1303e1 	mov	x1, x19
    800035d4:	2a1f03e2 	mov	w2, wzr
    800035d8:	940003aa 	bl	80004480 <dlog>
    800035dc:	aa1403e0 	mov	x0, x20
    800035e0:	aa1303e1 	mov	x1, x19
    800035e4:	2a1f03e2 	mov	w2, wzr
    800035e8:	940003a6 	bl	80004480 <dlog>
    800035ec:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800035f0:	911eb400 	add	x0, x0, #0x7ad
    800035f4:	aa1303e1 	mov	x1, x19
    800035f8:	2a1f03e2 	mov	w2, wzr
    800035fc:	940003a1 	bl	80004480 <dlog>
    80003600:	aa1403e0 	mov	x0, x20
    80003604:	aa1303e1 	mov	x1, x19
    80003608:	2a1f03e2 	mov	w2, wzr
    8000360c:	9400039d 	bl	80004480 <dlog>
    80003610:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003614:	91194c00 	add	x0, x0, #0x653
    80003618:	aa1303e1 	mov	x1, x19
    8000361c:	2a1f03e2 	mov	w2, wzr
    80003620:	94000398 	bl	80004480 <dlog>
    80003624:	aa1403e0 	mov	x0, x20
    80003628:	aa1303e1 	mov	x1, x19
    8000362c:	2a1f03e2 	mov	w2, wzr
    80003630:	94000394 	bl	80004480 <dlog>
    80003634:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003638:	911cb000 	add	x0, x0, #0x72c
    8000363c:	aa1303e1 	mov	x1, x19
    80003640:	2a1f03e2 	mov	w2, wzr
    80003644:	9400038f 	bl	80004480 <dlog>
    80003648:	aa1403e0 	mov	x0, x20
    8000364c:	aa1303e1 	mov	x1, x19
    80003650:	2a1f03e2 	mov	w2, wzr
    80003654:	9400038b 	bl	80004480 <dlog>
    80003658:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    8000365c:	911b2400 	add	x0, x0, #0x6c9
    80003660:	aa1303e1 	mov	x1, x19
    80003664:	2a1f03e2 	mov	w2, wzr
    80003668:	94000386 	bl	80004480 <dlog>
    8000366c:	aa1403e0 	mov	x0, x20
    80003670:	aa1303e1 	mov	x1, x19
    80003674:	2a1f03e2 	mov	w2, wzr
    80003678:	94000382 	bl	80004480 <dlog>
    8000367c:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003680:	911f8c00 	add	x0, x0, #0x7e3
    80003684:	17fffe11 	b	80002ec8 <kmain+0x730>
    80003688:	b40001b7 	cbz	x23, 800036bc <kmain+0xf24>
    8000368c:	d0000013 	adrp	x19, 80005000 <rodata_begin>
    80003690:	91163673 	add	x19, x19, #0x58d
    80003694:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003698:	911a1400 	add	x0, x0, #0x685
    8000369c:	aa1303e1 	mov	x1, x19
    800036a0:	2a1f03e2 	mov	w2, wzr
    800036a4:	94000377 	bl	80004480 <dlog>
    800036a8:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800036ac:	91169000 	add	x0, x0, #0x5a4
    800036b0:	aa1303e1 	mov	x1, x19
    800036b4:	2a1f03e2 	mov	w2, wzr
    800036b8:	94000372 	bl	80004480 <dlog>
    800036bc:	d0000013 	adrp	x19, 80005000 <rodata_begin>
    800036c0:	91163673 	add	x19, x19, #0x58d
    800036c4:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800036c8:	9119f800 	add	x0, x0, #0x67e
    800036cc:	aa1303e1 	mov	x1, x19
    800036d0:	2a1f03e2 	mov	w2, wzr
    800036d4:	9400036b 	bl	80004480 <dlog>
    800036d8:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800036dc:	91167c00 	add	x0, x0, #0x59f
    800036e0:	17fffdfa 	b	80002ec8 <kmain+0x730>
    800036e4:	eb09011f 	cmp	x8, x9
    800036e8:	54000222 	b.cs	8000372c <kmain+0xf94>  // b.hs, b.nlast
    800036ec:	cb08016d 	sub	x13, x11, x8
    800036f0:	8b1301ad 	add	x13, x13, x19
    800036f4:	8b0c01ad 	add	x13, x13, x12
    800036f8:	d10005ad 	sub	x13, x13, #0x1
    800036fc:	5280002e 	mov	w14, #0x1                   	// #1
    80003700:	aa0803f2 	mov	x18, x8
    80003704:	3940024f 	ldrb	w15, [x18]
    80003708:	710081ff 	cmp	w15, #0x20
    8000370c:	9acf21cf 	lsl	x15, x14, x15
    80003710:	8a0a01ef 	and	x15, x15, x10
    80003714:	fa4099e4 	ccmp	x15, #0x0, #0x4, ls  // ls = plast
    80003718:	54000101 	b.ne	80003738 <kmain+0xfa0>  // b.any
    8000371c:	91000652 	add	x18, x18, #0x1
    80003720:	f10005ad 	subs	x13, x13, #0x1
    80003724:	54ffff01 	b.ne	80003704 <kmain+0xf6c>  // b.any
    80003728:	14000039 	b	8000380c <kmain+0x1074>
    8000372c:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003730:	911f1000 	add	x0, x0, #0x7c4
    80003734:	17fffc49 	b	80002858 <kmain+0xc0>
    80003738:	eb09025f 	cmp	x18, x9
    8000373c:	54000222 	b.cs	80003780 <kmain+0xfe8>  // b.hs, b.nlast
    80003740:	cb12016d 	sub	x13, x11, x18
    80003744:	8b1301ad 	add	x13, x13, x19
    80003748:	8b0c01ad 	add	x13, x13, x12
    8000374c:	d10005ae 	sub	x14, x13, #0x1
    80003750:	5280002f 	mov	w15, #0x1                   	// #1
    80003754:	aa1203ed 	mov	x13, x18
    80003758:	394001b0 	ldrb	w16, [x13]
    8000375c:	7100821f 	cmp	w16, #0x20
    80003760:	9ad021f0 	lsl	x16, x15, x16
    80003764:	8a0a0210 	and	x16, x16, x10
    80003768:	fa409a04 	ccmp	x16, #0x0, #0x4, ls  // ls = plast
    8000376c:	540000c0 	b.eq	80003784 <kmain+0xfec>  // b.none
    80003770:	910005ad 	add	x13, x13, #0x1
    80003774:	f10005ce 	subs	x14, x14, #0x1
    80003778:	54ffff01 	b.ne	80003758 <kmain+0xfc0>  // b.any
    8000377c:	14000024 	b	8000380c <kmain+0x1074>
    80003780:	aa1203ed 	mov	x13, x18
    80003784:	eb0901bf 	cmp	x13, x9
    80003788:	54000422 	b.cs	8000380c <kmain+0x1074>  // b.hs, b.nlast
    8000378c:	cb0d016b 	sub	x11, x11, x13
    80003790:	8b13016b 	add	x11, x11, x19
    80003794:	8b0c016b 	add	x11, x11, x12
    80003798:	5280002c 	mov	w12, #0x1                   	// #1
    8000379c:	d100056b 	sub	x11, x11, #0x1
    800037a0:	aa0d03e0 	mov	x0, x13
    800037a4:	3940000e 	ldrb	w14, [x0]
    800037a8:	710081df 	cmp	w14, #0x20
    800037ac:	9ace218e 	lsl	x14, x12, x14
    800037b0:	8a0a01ce 	and	x14, x14, x10
    800037b4:	fa4099c4 	ccmp	x14, #0x0, #0x4, ls  // ls = plast
    800037b8:	540000a1 	b.ne	800037cc <kmain+0x1034>  // b.any
    800037bc:	91000400 	add	x0, x0, #0x1
    800037c0:	f100056b 	subs	x11, x11, #0x1
    800037c4:	54ffff01 	b.ne	800037a4 <kmain+0x100c>  // b.any
    800037c8:	aa0903e0 	mov	x0, x9
    800037cc:	f9401acb 	ldr	x11, [x22, #48]
    800037d0:	b4000e4b 	cbz	x11, 80003998 <kmain+0x1200>
    800037d4:	f944074c 	ldr	x12, [x26, #2056]
    800037d8:	cb08024e 	sub	x14, x18, x8
    800037dc:	cb0d0010 	sub	x16, x0, x13
    800037e0:	aa1f03ea 	mov	x10, xzr
    800037e4:	aa1f03f3 	mov	x19, xzr
    800037e8:	aa1f03e9 	mov	x9, xzr
    800037ec:	910005cf 	add	x15, x14, #0x1
    800037f0:	91000611 	add	x17, x16, #0x1
    800037f4:	cb120112 	sub	x18, x8, x18
    800037f8:	cb0001a1 	sub	x1, x13, x0
    800037fc:	52800502 	mov	w2, #0x28                  	// #40
    80003800:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003804:	911db800 	add	x0, x0, #0x76e
    80003808:	14000009 	b	8000382c <kmain+0x1094>
    8000380c:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003810:	911bac00 	add	x0, x0, #0x6eb
    80003814:	17fffc11 	b	80002858 <kmain+0xc0>
    80003818:	9b023143 	madd	x3, x10, x2, x12
    8000381c:	f9401073 	ldr	x19, [x3, #32]
    80003820:	9100054a 	add	x10, x10, #0x1
    80003824:	eb0b015f 	cmp	x10, x11
    80003828:	54ff8180 	b.eq	80002858 <kmain+0xc0>  // b.none
    8000382c:	9b027d43 	mul	x3, x10, x2
    80003830:	f8636983 	ldr	x3, [x12, x3]
    80003834:	f100007f 	cmp	x3, #0x0
    80003838:	aa1f03e4 	mov	x4, xzr
    8000383c:	fa4019e4 	ccmp	x15, #0x0, #0x4, ne  // ne = any
    80003840:	540000e0 	b.eq	8000385c <kmain+0x10c4>  // b.none
    80003844:	38646865 	ldrb	w5, [x3, x4]
    80003848:	340000a5 	cbz	w5, 8000385c <kmain+0x10c4>
    8000384c:	91000484 	add	x4, x4, #0x1
    80003850:	eb0401ff 	cmp	x15, x4
    80003854:	54ffff81 	b.ne	80003844 <kmain+0x10ac>  // b.any
    80003858:	17fffff2 	b	80003820 <kmain+0x1088>
    8000385c:	eb0e009f 	cmp	x4, x14
    80003860:	54fffe01 	b.ne	80003820 <kmain+0x1088>  // b.any
    80003864:	b400016e 	cbz	x14, 80003890 <kmain+0x10f8>
    80003868:	aa1203e4 	mov	x4, x18
    8000386c:	aa0803e5 	mov	x5, x8
    80003870:	394000a6 	ldrb	w6, [x5]
    80003874:	39400067 	ldrb	w7, [x3]
    80003878:	6b0700df 	cmp	w6, w7
    8000387c:	54fffd21 	b.ne	80003820 <kmain+0x1088>  // b.any
    80003880:	910004a5 	add	x5, x5, #0x1
    80003884:	91000463 	add	x3, x3, #0x1
    80003888:	b1000484 	adds	x4, x4, #0x1
    8000388c:	54ffff23 	b.cc	80003870 <kmain+0x10d8>  // b.lo, b.ul, b.last
    80003890:	9b023143 	madd	x3, x10, x2, x12
    80003894:	b9400863 	ldr	w3, [x3, #8]
    80003898:	7100087f 	cmp	w3, #0x2
    8000389c:	54fffbe0 	b.eq	80003818 <kmain+0x1080>  // b.none
    800038a0:	7100047f 	cmp	w3, #0x1
    800038a4:	540000a0 	b.eq	800038b8 <kmain+0x1120>  // b.none
    800038a8:	35fffbc3 	cbnz	w3, 80003820 <kmain+0x1088>
    800038ac:	9b023149 	madd	x9, x10, x2, x12
    800038b0:	f9401129 	ldr	x9, [x9, #32]
    800038b4:	17ffffdb 	b	80003820 <kmain+0x1088>
    800038b8:	9b023143 	madd	x3, x10, x2, x12
    800038bc:	f9400863 	ldr	x3, [x3, #16]
    800038c0:	aa1f03e4 	mov	x4, xzr
    800038c4:	b4000123 	cbz	x3, 800038e8 <kmain+0x1150>
    800038c8:	b4000111 	cbz	x17, 800038e8 <kmain+0x1150>
    800038cc:	aa1f03e4 	mov	x4, xzr
    800038d0:	38646865 	ldrb	w5, [x3, x4]
    800038d4:	340000a5 	cbz	w5, 800038e8 <kmain+0x1150>
    800038d8:	91000484 	add	x4, x4, #0x1
    800038dc:	eb04023f 	cmp	x17, x4
    800038e0:	54ffff81 	b.ne	800038d0 <kmain+0x1138>  // b.any
    800038e4:	17ffffcf 	b	80003820 <kmain+0x1088>
    800038e8:	eb10009f 	cmp	x4, x16
    800038ec:	54fff9a1 	b.ne	80003820 <kmain+0x1088>  // b.any
    800038f0:	b4000170 	cbz	x16, 8000391c <kmain+0x1184>
    800038f4:	aa0103e4 	mov	x4, x1
    800038f8:	aa0d03e5 	mov	x5, x13
    800038fc:	394000a6 	ldrb	w6, [x5]
    80003900:	39400067 	ldrb	w7, [x3]
    80003904:	6b0700df 	cmp	w6, w7
    80003908:	54fff8c1 	b.ne	80003820 <kmain+0x1088>  // b.any
    8000390c:	910004a5 	add	x5, x5, #0x1
    80003910:	91000463 	add	x3, x3, #0x1
    80003914:	b1000484 	adds	x4, x4, #0x1
    80003918:	54ffff23 	b.cc	800038fc <kmain+0x1164>  // b.lo, b.ul, b.last
    8000391c:	5280050b 	mov	w11, #0x28                  	// #40
    80003920:	9b0b314a 	madd	x10, x10, x11, x12
    80003924:	f9401154 	ldr	x20, [x10, #32]
    80003928:	aa1f03e8 	mov	x8, xzr
    8000392c:	d000002a 	adrp	x10, 80009000 <global_context>
    80003930:	9100014a 	add	x10, x10, #0x0
    80003934:	b828695f 	str	wzr, [x10, x8]
    80003938:	91001108 	add	x8, x8, #0x4
    8000393c:	f100c11f 	cmp	x8, #0x30
    80003940:	54ffffa1 	b.ne	80003934 <kmain+0x119c>  // b.any
    80003944:	d0000028 	adrp	x8, 80009000 <global_context>
    80003948:	91002108 	add	x8, x8, #0x8
    8000394c:	910103ea 	add	x10, sp, #0x40
    80003950:	9000000b 	adrp	x11, 80003000 <kmain+0x868>
    80003954:	9127a16b 	add	x11, x11, #0x9e8
    80003958:	d0000035 	adrp	x21, 80009000 <global_context>
    8000395c:	a900290b 	stp	x11, x10, [x8]
    80003960:	b4000089 	cbz	x9, 80003970 <kmain+0x11d8>
    80003964:	d63f0120 	blr	x9
    80003968:	b94002a8 	ldr	w8, [x21]
    8000396c:	350003c8 	cbnz	w8, 800039e4 <kmain+0x124c>
    80003970:	d63f0280 	blr	x20
    80003974:	b94002a8 	ldr	w8, [x21]
    80003978:	35000368 	cbnz	w8, 800039e4 <kmain+0x124c>
    8000397c:	b4000093 	cbz	x19, 8000398c <kmain+0x11f4>
    80003980:	d63f0260 	blr	x19
    80003984:	b94002a8 	ldr	w8, [x21]
    80003988:	350002e8 	cbnz	w8, 800039e4 <kmain+0x124c>
    8000398c:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    80003990:	911af400 	add	x0, x0, #0x6bd
    80003994:	17fffbb1 	b	80002858 <kmain+0xc0>
    80003998:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    8000399c:	911db800 	add	x0, x0, #0x76e
    800039a0:	17fffbae 	b	80002858 <kmain+0xc0>
    800039a4:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800039a8:	9107bc00 	add	x0, x0, #0x1ef
    800039ac:	d0000001 	adrp	x1, 80005000 <rodata_begin>
    800039b0:	9115f821 	add	x1, x1, #0x57e
    800039b4:	d0000002 	adrp	x2, 80005000 <rodata_begin>
    800039b8:	91069842 	add	x2, x2, #0x1a6
    800039bc:	52800363 	mov	w3, #0x1b                  	// #27
    800039c0:	94000501 	bl	80004dc4 <panic>
    800039c4:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800039c8:	9107bc00 	add	x0, x0, #0x1ef
    800039cc:	d0000001 	adrp	x1, 80005000 <rodata_begin>
    800039d0:	9114a021 	add	x1, x1, #0x528
    800039d4:	d0000002 	adrp	x2, 80005000 <rodata_begin>
    800039d8:	9108a842 	add	x2, x2, #0x22a
    800039dc:	528003a3 	mov	w3, #0x1d                  	// #29
    800039e0:	940004f9 	bl	80004dc4 <panic>
    800039e4:	94000001 	bl	800039e8 <abort>

00000000800039e8 <abort>:
    800039e8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    800039ec:	910003fd 	mov	x29, sp
    800039f0:	d0000000 	adrp	x0, 80005000 <rodata_begin>
    800039f4:	911ad400 	add	x0, x0, #0x6b5
    800039f8:	d0000001 	adrp	x1, 80005000 <rodata_begin>
    800039fc:	91163421 	add	x1, x1, #0x58d
    80003a00:	2a1f03e2 	mov	w2, wzr
    80003a04:	9400029f 	bl	80004480 <dlog>
    80003a08:	9400050b 	bl	80004e34 <arch_power_off>

0000000080003a0c <vdlog>:
    80003a0c:	d10343ff 	sub	sp, sp, #0xd0
    80003a10:	a9076ffc 	stp	x28, x27, [sp, #112]
    80003a14:	a90867fa 	stp	x26, x25, [sp, #128]
    80003a18:	a9095ff8 	stp	x24, x23, [sp, #144]
    80003a1c:	a90a57f6 	stp	x22, x21, [sp, #160]
    80003a20:	a90b4ff4 	stp	x20, x19, [sp, #176]
    80003a24:	a90c7bfd 	stp	x29, x30, [sp, #192]
    80003a28:	910303fd 	add	x29, sp, #0xc0
    80003a2c:	90000028 	adrp	x8, 80007000 <__stack_chk_guard>
    80003a30:	f9400108 	ldr	x8, [x8]
    80003a34:	9100a3e9 	add	x9, sp, #0x28
    80003a38:	9100fd2a 	add	x10, x9, #0x3f
    80003a3c:	b202e7fc 	mov	x28, #0xcccccccccccccccc    	// #-3689348814741910324
    80003a40:	f9000bea 	str	x10, [sp, #16]
    80003a44:	aa0103f3 	mov	x19, x1
    80003a48:	52800314 	mov	w20, #0x18                  	// #24
    80003a4c:	72a38134 	movk	w20, #0x1c09, lsl #16
    80003a50:	52800155 	mov	w21, #0xa                   	// #10
    80003a54:	9100f92a 	add	x10, x9, #0x3e
    80003a58:	f9000fea 	str	x10, [sp, #24]
    80003a5c:	91010129 	add	x9, x9, #0x40
    80003a60:	f90007e9 	str	x9, [sp, #8]
    80003a64:	f81a83a8 	stur	x8, [x29, #-88]
    80003a68:	d0000039 	adrp	x25, 80009000 <global_context>
    80003a6c:	d000003a 	adrp	x26, 80009000 <global_context>
    80003a70:	9120635a 	add	x26, x26, #0x818
    80003a74:	52a3813b 	mov	w27, #0x1c090000            	// #470351872
    80003a78:	f29999bc 	movk	x28, #0xcccd
    80003a7c:	92800136 	mov	x22, #0xfffffffffffffff6    	// #-10
    80003a80:	d0000018 	adrp	x24, 80005000 <rodata_begin>
    80003a84:	91002b18 	add	x24, x24, #0xa
    80003a88:	14000006 	b	80003aa0 <vdlog+0x94>
    80003a8c:	2a0803e3 	mov	w3, w8
    80003a90:	52800604 	mov	w4, #0x30                  	// #48
    80003a94:	940001c6 	bl	800041ac <print_string>
    80003a98:	aa1703e0 	mov	x0, x23
    80003a9c:	910006e0 	add	x0, x23, #0x1
    80003aa0:	39400008 	ldrb	w8, [x0]
    80003aa4:	7100951f 	cmp	w8, #0x25
    80003aa8:	54000380 	b.eq	80003b18 <vdlog+0x10c>  // b.none
    80003aac:	34003648 	cbz	w8, 80004174 <vdlog+0x768>
    80003ab0:	f9440b29 	ldr	x9, [x25, #2064]
    80003ab4:	38296b48 	strb	w8, [x26, x9]
    80003ab8:	11000529 	add	w9, w9, #0x1
    80003abc:	92403129 	and	x9, x9, #0x1fff
    80003ac0:	7100291f 	cmp	w8, #0xa
    80003ac4:	f9040b29 	str	x9, [x25, #2064]
    80003ac8:	54000141 	b.ne	80003af0 <vdlog+0xe4>  // b.any
    80003acc:	b9400289 	ldr	w9, [x20]
    80003ad0:	372fffe9 	tbnz	w9, #5, 80003acc <vdlog+0xc0>
    80003ad4:	528001a9 	mov	w9, #0xd                   	// #13
    80003ad8:	d5033fbf 	dmb	sy
    80003adc:	b9000369 	str	w9, [x27]
    80003ae0:	d5033fbf 	dmb	sy
    80003ae4:	b9400289 	ldr	w9, [x20]
    80003ae8:	d5033f9f 	dsb	sy
    80003aec:	371fffc9 	tbnz	w9, #3, 80003ae4 <vdlog+0xd8>
    80003af0:	b9400289 	ldr	w9, [x20]
    80003af4:	372fffe9 	tbnz	w9, #5, 80003af0 <vdlog+0xe4>
    80003af8:	d5033fbf 	dmb	sy
    80003afc:	b9000368 	str	w8, [x27]
    80003b00:	d5033fbf 	dmb	sy
    80003b04:	b9400288 	ldr	w8, [x20]
    80003b08:	d5033f9f 	dsb	sy
    80003b0c:	371fffc8 	tbnz	w8, #3, 80003b04 <vdlog+0xf8>
    80003b10:	91000400 	add	x0, x0, #0x1
    80003b14:	17ffffe3 	b	80003aa0 <vdlog+0x94>
    80003b18:	2a1f03e3 	mov	w3, wzr
    80003b1c:	14000003 	b	80003b28 <vdlog+0x11c>
    80003b20:	321d0063 	orr	w3, w3, #0x8
    80003b24:	321c0063 	orr	w3, w3, #0x10
    80003b28:	38401c08 	ldrb	w8, [x0, #1]!
    80003b2c:	51008109 	sub	w9, w8, #0x20
    80003b30:	7100413f 	cmp	w9, #0x10
    80003b34:	54000168 	b.hi	80003b60 <vdlog+0x154>  // b.pmore
    80003b38:	10ffff4a 	adr	x10, 80003b20 <vdlog+0x114>
    80003b3c:	38696b0b 	ldrb	w11, [x24, x9]
    80003b40:	8b0b094a 	add	x10, x10, x11, lsl #2
    80003b44:	d61f0140 	br	x10
    80003b48:	32000063 	orr	w3, w3, #0x1
    80003b4c:	17fffff7 	b	80003b28 <vdlog+0x11c>
    80003b50:	321e0063 	orr	w3, w3, #0x4
    80003b54:	17fffff5 	b	80003b28 <vdlog+0x11c>
    80003b58:	321f0063 	orr	w3, w3, #0x2
    80003b5c:	17fffff3 	b	80003b28 <vdlog+0x11c>
    80003b60:	5100c109 	sub	w9, w8, #0x30
    80003b64:	7100253f 	cmp	w9, #0x9
    80003b68:	54000388 	b.hi	80003bd8 <vdlog+0x1cc>  // b.pmore
    80003b6c:	aa1f03e2 	mov	x2, xzr
    80003b70:	9b157c49 	mul	x9, x2, x21
    80003b74:	8b280128 	add	x8, x9, w8, uxtb
    80003b78:	d100c102 	sub	x2, x8, #0x30
    80003b7c:	38401c08 	ldrb	w8, [x0, #1]!
    80003b80:	5100c109 	sub	w9, w8, #0x30
    80003b84:	7100293f 	cmp	w9, #0xa
    80003b88:	54ffff43 	b.cc	80003b70 <vdlog+0x164>  // b.lo, b.ul, b.last
    80003b8c:	d1000409 	sub	x9, x0, #0x1
    80003b90:	b50002c2 	cbnz	x2, 80003be8 <vdlog+0x1dc>
    80003b94:	7100a91f 	cmp	w8, #0x2a
    80003b98:	54000261 	b.ne	80003be4 <vdlog+0x1d8>  // b.any
    80003b9c:	b9801a68 	ldrsw	x8, [x19, #24]
    80003ba0:	36f800a8 	tbz	w8, #31, 80003bb4 <vdlog+0x1a8>
    80003ba4:	11002109 	add	w9, w8, #0x8
    80003ba8:	7100013f 	cmp	w9, #0x0
    80003bac:	b9001a69 	str	w9, [x19, #24]
    80003bb0:	540029cd 	b.le	800040e8 <vdlog+0x6dc>
    80003bb4:	f9400268 	ldr	x8, [x19]
    80003bb8:	91002109 	add	x9, x8, #0x8
    80003bbc:	f9000269 	str	x9, [x19]
    80003bc0:	b9400108 	ldr	w8, [x8]
    80003bc4:	321e0069 	orr	w9, w3, #0x4
    80003bc8:	7100011f 	cmp	w8, #0x0
    80003bcc:	1a89a063 	csel	w3, w3, w9, ge  // ge = tcont
    80003bd0:	5a885502 	cneg	w2, w8, mi  // mi = first
    80003bd4:	14000006 	b	80003bec <vdlog+0x1e0>
    80003bd8:	d1000409 	sub	x9, x0, #0x1
    80003bdc:	7100a91f 	cmp	w8, #0x2a
    80003be0:	54fffde0 	b.eq	80003b9c <vdlog+0x190>  // b.none
    80003be4:	aa1f03e2 	mov	x2, xzr
    80003be8:	aa0903e0 	mov	x0, x9
    80003bec:	aa0003f7 	mov	x23, x0
    80003bf0:	38401ee8 	ldrb	w8, [x23, #1]!
    80003bf4:	51009508 	sub	w8, w8, #0x25
    80003bf8:	71014d1f 	cmp	w8, #0x53
    80003bfc:	54000588 	b.hi	80003cac <vdlog+0x2a0>  // b.pmore
    80003c00:	d000000b 	adrp	x11, 80005000 <rodata_begin>
    80003c04:	9100716b 	add	x11, x11, #0x1c
    80003c08:	10fff849 	adr	x9, 80003b10 <vdlog+0x104>
    80003c0c:	7868796a 	ldrh	w10, [x11, x8, lsl #1]
    80003c10:	8b0a0929 	add	x9, x9, x10, lsl #2
    80003c14:	d61f0120 	br	x9
    80003c18:	b9801a68 	ldrsw	x8, [x19, #24]
    80003c1c:	36f800a8 	tbz	w8, #31, 80003c30 <vdlog+0x224>
    80003c20:	11002109 	add	w9, w8, #0x8
    80003c24:	7100013f 	cmp	w9, #0x0
    80003c28:	b9001a69 	str	w9, [x19, #24]
    80003c2c:	5400268d 	b.le	800040fc <vdlog+0x6f0>
    80003c30:	f9400268 	ldr	x8, [x19]
    80003c34:	91002109 	add	x9, x8, #0x8
    80003c38:	f9000269 	str	x9, [x19]
    80003c3c:	b9400108 	ldr	w8, [x8]
    80003c40:	321a0069 	orr	w9, w3, #0x40
    80003c44:	7100011f 	cmp	w8, #0x0
    80003c48:	1a83b123 	csel	w3, w9, w3, lt  // lt = tstop
    80003c4c:	5a885509 	cneg	w9, w8, mi  // mi = first
    80003c50:	f9400fe8 	ldr	x8, [sp, #24]
    80003c54:	d000000a 	adrp	x10, 80005000 <rodata_begin>
    80003c58:	910afd4a 	add	x10, x10, #0x2bf
    80003c5c:	d000000b 	adrp	x11, 80005000 <rodata_begin>
    80003c60:	9103356b 	add	x11, x11, #0xcd
    80003c64:	39019fff 	strb	wzr, [sp, #103]
    80003c68:	721b007f 	tst	w3, #0x20
    80003c6c:	9a8a016a 	csel	x10, x11, x10, eq  // eq = none
    80003c70:	9bdc7d2b 	umulh	x11, x9, x28
    80003c74:	d343fd6b 	lsr	x11, x11, #3
    80003c78:	9b16256c 	madd	x12, x11, x22, x9
    80003c7c:	386c694c 	ldrb	w12, [x10, x12]
    80003c80:	f100253f 	cmp	x9, #0x9
    80003c84:	381ff50c 	strb	w12, [x8], #-1
    80003c88:	aa0b03e9 	mov	x9, x11
    80003c8c:	54ffff28 	b.hi	80003c70 <vdlog+0x264>  // b.pmore
    80003c90:	91000501 	add	x1, x8, #0x1
    80003c94:	37301ce3 	tbnz	w3, #6, 80004030 <vdlog+0x624>
    80003c98:	37181c83 	tbnz	w3, #3, 80004028 <vdlog+0x61c>
    80003c9c:	aa0103e0 	mov	x0, x1
    80003ca0:	36001ce3 	tbz	w3, #0, 8000403c <vdlog+0x630>
    80003ca4:	52800409 	mov	w9, #0x20                  	// #32
    80003ca8:	140000e3 	b	80004034 <vdlog+0x628>
    80003cac:	f9440b28 	ldr	x8, [x25, #2064]
    80003cb0:	528004a9 	mov	w9, #0x25                  	// #37
    80003cb4:	38286b49 	strb	w9, [x26, x8]
    80003cb8:	11000508 	add	w8, w8, #0x1
    80003cbc:	92403108 	and	x8, x8, #0x1fff
    80003cc0:	f9040b28 	str	x8, [x25, #2064]
    80003cc4:	b9400288 	ldr	w8, [x20]
    80003cc8:	372fffe8 	tbnz	w8, #5, 80003cc4 <vdlog+0x2b8>
    80003ccc:	528004a8 	mov	w8, #0x25                  	// #37
    80003cd0:	d5033fbf 	dmb	sy
    80003cd4:	b9000368 	str	w8, [x27]
    80003cd8:	d5033fbf 	dmb	sy
    80003cdc:	b9400288 	ldr	w8, [x20]
    80003ce0:	d5033f9f 	dsb	sy
    80003ce4:	371fffc8 	tbnz	w8, #3, 80003cdc <vdlog+0x2d0>
    80003ce8:	17ffff8a 	b	80003b10 <vdlog+0x104>
    80003cec:	b9801a69 	ldrsw	x9, [x19, #24]
    80003cf0:	321b0068 	orr	w8, w3, #0x20
    80003cf4:	36f800a9 	tbz	w9, #31, 80003d08 <vdlog+0x2fc>
    80003cf8:	1100212a 	add	w10, w9, #0x8
    80003cfc:	7100015f 	cmp	w10, #0x0
    80003d00:	b9001a6a 	str	w10, [x19, #24]
    80003d04:	540020ed 	b.le	80004120 <vdlog+0x714>
    80003d08:	f9400269 	ldr	x9, [x19]
    80003d0c:	9100212a 	add	x10, x9, #0x8
    80003d10:	f900026a 	str	x10, [x19]
    80003d14:	f9400129 	ldr	x9, [x9]
    80003d18:	d000000b 	adrp	x11, 80005000 <rodata_begin>
    80003d1c:	910afd6b 	add	x11, x11, #0x2bf
    80003d20:	f9400be1 	ldr	x1, [sp, #16]
    80003d24:	39019fff 	strb	wzr, [sp, #103]
    80003d28:	92400d2a 	and	x10, x9, #0xf
    80003d2c:	386a696a 	ldrb	w10, [x11, x10]
    80003d30:	381ffc2a 	strb	w10, [x1, #-1]!
    80003d34:	f1003d3f 	cmp	x9, #0xf
    80003d38:	d344fd29 	lsr	x9, x9, #4
    80003d3c:	54ffff68 	b.hi	80003d28 <vdlog+0x31c>  // b.pmore
    80003d40:	aa0103e0 	mov	x0, x1
    80003d44:	362000c3 	tbz	w3, #4, 80003d5c <vdlog+0x350>
    80003d48:	aa0103e0 	mov	x0, x1
    80003d4c:	52800609 	mov	w9, #0x30                  	// #48
    80003d50:	381fec09 	strb	w9, [x0, #-2]!
    80003d54:	52800b09 	mov	w9, #0x58                  	// #88
    80003d58:	39000409 	strb	w9, [x0, #1]
    80003d5c:	37301cc3 	tbnz	w3, #6, 800040f4 <vdlog+0x6e8>
    80003d60:	37181d43 	tbnz	w3, #3, 80004108 <vdlog+0x6fc>
    80003d64:	36001d63 	tbz	w3, #0, 80004110 <vdlog+0x704>
    80003d68:	52800409 	mov	w9, #0x20                  	// #32
    80003d6c:	140000e8 	b	8000410c <vdlog+0x700>
    80003d70:	390097ff 	strb	wzr, [sp, #37]
    80003d74:	b9801a68 	ldrsw	x8, [x19, #24]
    80003d78:	36f800a8 	tbz	w8, #31, 80003d8c <vdlog+0x380>
    80003d7c:	11002109 	add	w9, w8, #0x8
    80003d80:	7100013f 	cmp	w9, #0x0
    80003d84:	b9001a69 	str	w9, [x19, #24]
    80003d88:	54001d2d 	b.le	8000412c <vdlog+0x720>
    80003d8c:	f9400268 	ldr	x8, [x19]
    80003d90:	91002109 	add	x9, x8, #0x8
    80003d94:	f9000269 	str	x9, [x19]
    80003d98:	b9400108 	ldr	w8, [x8]
    80003d9c:	390093e8 	strb	w8, [sp, #36]
    80003da0:	910093e0 	add	x0, sp, #0x24
    80003da4:	910093e1 	add	x1, sp, #0x24
    80003da8:	140000ce 	b	800040e0 <vdlog+0x6d4>
    80003dac:	b9801a68 	ldrsw	x8, [x19, #24]
    80003db0:	36f800a8 	tbz	w8, #31, 80003dc4 <vdlog+0x3b8>
    80003db4:	11002109 	add	w9, w8, #0x8
    80003db8:	7100013f 	cmp	w9, #0x0
    80003dbc:	b9001a69 	str	w9, [x19, #24]
    80003dc0:	54001bcd 	b.le	80004138 <vdlog+0x72c>
    80003dc4:	f9400268 	ldr	x8, [x19]
    80003dc8:	91002109 	add	x9, x8, #0x8
    80003dcc:	f9000269 	str	x9, [x19]
    80003dd0:	f9400109 	ldr	x9, [x8]
    80003dd4:	d000000a 	adrp	x10, 80005000 <rodata_begin>
    80003dd8:	910afd4a 	add	x10, x10, #0x2bf
    80003ddc:	f9400fe8 	ldr	x8, [sp, #24]
    80003de0:	d000000b 	adrp	x11, 80005000 <rodata_begin>
    80003de4:	9103356b 	add	x11, x11, #0xcd
    80003de8:	721b007f 	tst	w3, #0x20
    80003dec:	9a8a016a 	csel	x10, x11, x10, eq  // eq = none
    80003df0:	39019fff 	strb	wzr, [sp, #103]
    80003df4:	9240092b 	and	x11, x9, #0x7
    80003df8:	386b694b 	ldrb	w11, [x10, x11]
    80003dfc:	381ff50b 	strb	w11, [x8], #-1
    80003e00:	f1001d3f 	cmp	x9, #0x7
    80003e04:	d343fd29 	lsr	x9, x9, #3
    80003e08:	54ffff68 	b.hi	80003df4 <vdlog+0x3e8>  // b.pmore
    80003e0c:	91000501 	add	x1, x8, #0x1
    80003e10:	aa0103e0 	mov	x0, x1
    80003e14:	36200083 	tbz	w3, #4, 80003e24 <vdlog+0x418>
    80003e18:	52800609 	mov	w9, #0x30                  	// #48
    80003e1c:	aa0803e0 	mov	x0, x8
    80003e20:	39000109 	strb	w9, [x8]
    80003e24:	37301563 	tbnz	w3, #6, 800040d0 <vdlog+0x6c4>
    80003e28:	37181503 	tbnz	w3, #3, 800040c8 <vdlog+0x6bc>
    80003e2c:	36001083 	tbz	w3, #0, 8000403c <vdlog+0x630>
    80003e30:	52800408 	mov	w8, #0x20                  	// #32
    80003e34:	140000a8 	b	800040d4 <vdlog+0x6c8>
    80003e38:	b9801a68 	ldrsw	x8, [x19, #24]
    80003e3c:	36f800a8 	tbz	w8, #31, 80003e50 <vdlog+0x444>
    80003e40:	11002109 	add	w9, w8, #0x8
    80003e44:	7100013f 	cmp	w9, #0x0
    80003e48:	b9001a69 	str	w9, [x19, #24]
    80003e4c:	540017cd 	b.le	80004144 <vdlog+0x738>
    80003e50:	f9400268 	ldr	x8, [x19]
    80003e54:	91002109 	add	x9, x8, #0x8
    80003e58:	f9000269 	str	x9, [x19]
    80003e5c:	f9400108 	ldr	x8, [x8]
    80003e60:	5280060d 	mov	w13, #0x30                  	// #48
    80003e64:	d000000a 	adrp	x10, 80005000 <rodata_begin>
    80003e68:	9103354a 	add	x10, x10, #0xcd
    80003e6c:	f94007eb 	ldr	x11, [sp, #8]
    80003e70:	528001ae 	mov	w14, #0xd                   	// #13
    80003e74:	39019fff 	strb	wzr, [sp, #103]
    80003e78:	92400d09 	and	x9, x8, #0xf
    80003e7c:	38696949 	ldrb	w9, [x10, x9]
    80003e80:	f1003d1f 	cmp	x8, #0xf
    80003e84:	d344fd08 	lsr	x8, x8, #4
    80003e88:	381fe169 	sturb	w9, [x11, #-2]
    80003e8c:	d100056b 	sub	x11, x11, #0x1
    80003e90:	54ffff48 	b.hi	80003e78 <vdlog+0x46c>  // b.pmore
    80003e94:	aa1f03ea 	mov	x10, xzr
    80003e98:	d1000568 	sub	x8, x11, #0x1
    80003e9c:	2a0903ec 	mov	w12, w9
    80003ea0:	72001d9f 	tst	w12, #0xff
    80003ea4:	540000e0 	b.eq	80003ec0 <vdlog+0x4b4>  // b.none
    80003ea8:	f100fd5f 	cmp	x10, #0x3f
    80003eac:	54000300 	b.eq	80003f0c <vdlog+0x500>  // b.none
    80003eb0:	386a696c 	ldrb	w12, [x11, x10]
    80003eb4:	9100054a 	add	x10, x10, #0x1
    80003eb8:	72001d9f 	tst	w12, #0xff
    80003ebc:	54ffff61 	b.ne	80003ea8 <vdlog+0x49c>  // b.any
    80003ec0:	f1003d5f 	cmp	x10, #0xf
    80003ec4:	54000248 	b.hi	80003f0c <vdlog+0x500>  // b.pmore
    80003ec8:	f9440b29 	ldr	x9, [x25, #2064]
    80003ecc:	38296b4d 	strb	w13, [x26, x9]
    80003ed0:	11000529 	add	w9, w9, #0x1
    80003ed4:	92403129 	and	x9, x9, #0x1fff
    80003ed8:	f9040b29 	str	x9, [x25, #2064]
    80003edc:	b9400289 	ldr	w9, [x20]
    80003ee0:	372fffe9 	tbnz	w9, #5, 80003edc <vdlog+0x4d0>
    80003ee4:	d5033fbf 	dmb	sy
    80003ee8:	b900036d 	str	w13, [x27]
    80003eec:	d5033fbf 	dmb	sy
    80003ef0:	b9400289 	ldr	w9, [x20]
    80003ef4:	d5033f9f 	dsb	sy
    80003ef8:	371fffc9 	tbnz	w9, #3, 80003ef0 <vdlog+0x4e4>
    80003efc:	9100054a 	add	x10, x10, #0x1
    80003f00:	f100415f 	cmp	x10, #0x10
    80003f04:	54fffe21 	b.ne	80003ec8 <vdlog+0x4bc>  // b.any
    80003f08:	39400109 	ldrb	w9, [x8]
    80003f0c:	34000389 	cbz	w9, 80003f7c <vdlog+0x570>
    80003f10:	f9440b2a 	ldr	x10, [x25, #2064]
    80003f14:	382a6b49 	strb	w9, [x26, x10]
    80003f18:	1100054a 	add	w10, w10, #0x1
    80003f1c:	12001d29 	and	w9, w9, #0xff
    80003f20:	9240314a 	and	x10, x10, #0x1fff
    80003f24:	7100293f 	cmp	w9, #0xa
    80003f28:	f9040b2a 	str	x10, [x25, #2064]
    80003f2c:	54000121 	b.ne	80003f50 <vdlog+0x544>  // b.any
    80003f30:	b940028a 	ldr	w10, [x20]
    80003f34:	372fffea 	tbnz	w10, #5, 80003f30 <vdlog+0x524>
    80003f38:	d5033fbf 	dmb	sy
    80003f3c:	b900036e 	str	w14, [x27]
    80003f40:	d5033fbf 	dmb	sy
    80003f44:	b940028a 	ldr	w10, [x20]
    80003f48:	d5033f9f 	dsb	sy
    80003f4c:	371fffca 	tbnz	w10, #3, 80003f44 <vdlog+0x538>
    80003f50:	91000508 	add	x8, x8, #0x1
    80003f54:	b940028a 	ldr	w10, [x20]
    80003f58:	372fffea 	tbnz	w10, #5, 80003f54 <vdlog+0x548>
    80003f5c:	d5033fbf 	dmb	sy
    80003f60:	b9000369 	str	w9, [x27]
    80003f64:	d5033fbf 	dmb	sy
    80003f68:	b9400289 	ldr	w9, [x20]
    80003f6c:	d5033f9f 	dsb	sy
    80003f70:	371fffc9 	tbnz	w9, #3, 80003f68 <vdlog+0x55c>
    80003f74:	39400109 	ldrb	w9, [x8]
    80003f78:	35fffcc9 	cbnz	w9, 80003f10 <vdlog+0x504>
    80003f7c:	aa1703e0 	mov	x0, x23
    80003f80:	910006e0 	add	x0, x23, #0x1
    80003f84:	17fffec7 	b	80003aa0 <vdlog+0x94>
    80003f88:	b9801a68 	ldrsw	x8, [x19, #24]
    80003f8c:	36f800a8 	tbz	w8, #31, 80003fa0 <vdlog+0x594>
    80003f90:	11002109 	add	w9, w8, #0x8
    80003f94:	7100013f 	cmp	w9, #0x0
    80003f98:	b9001a69 	str	w9, [x19, #24]
    80003f9c:	54000dad 	b.le	80004150 <vdlog+0x744>
    80003fa0:	f9400268 	ldr	x8, [x19]
    80003fa4:	91002109 	add	x9, x8, #0x8
    80003fa8:	f9000269 	str	x9, [x19]
    80003fac:	f9400100 	ldr	x0, [x8]
    80003fb0:	1400004b 	b	800040dc <vdlog+0x6d0>
    80003fb4:	b9801a68 	ldrsw	x8, [x19, #24]
    80003fb8:	36f800a8 	tbz	w8, #31, 80003fcc <vdlog+0x5c0>
    80003fbc:	11002109 	add	w9, w8, #0x8
    80003fc0:	7100013f 	cmp	w9, #0x0
    80003fc4:	b9001a69 	str	w9, [x19, #24]
    80003fc8:	54000cad 	b.le	8000415c <vdlog+0x750>
    80003fcc:	f9400268 	ldr	x8, [x19]
    80003fd0:	91002109 	add	x9, x8, #0x8
    80003fd4:	f9000269 	str	x9, [x19]
    80003fd8:	f9400109 	ldr	x9, [x8]
    80003fdc:	d000000a 	adrp	x10, 80005000 <rodata_begin>
    80003fe0:	910afd4a 	add	x10, x10, #0x2bf
    80003fe4:	f9400fe8 	ldr	x8, [sp, #24]
    80003fe8:	d000000b 	adrp	x11, 80005000 <rodata_begin>
    80003fec:	9103356b 	add	x11, x11, #0xcd
    80003ff0:	721b007f 	tst	w3, #0x20
    80003ff4:	9a8a016a 	csel	x10, x11, x10, eq  // eq = none
    80003ff8:	39019fff 	strb	wzr, [sp, #103]
    80003ffc:	9bdc7d2b 	umulh	x11, x9, x28
    80004000:	d343fd6b 	lsr	x11, x11, #3
    80004004:	9b16256c 	madd	x12, x11, x22, x9
    80004008:	386c694c 	ldrb	w12, [x10, x12]
    8000400c:	f100253f 	cmp	x9, #0x9
    80004010:	381ff50c 	strb	w12, [x8], #-1
    80004014:	aa0b03e9 	mov	x9, x11
    80004018:	54ffff28 	b.hi	80003ffc <vdlog+0x5f0>  // b.pmore
    8000401c:	91000501 	add	x1, x8, #0x1
    80004020:	37300083 	tbnz	w3, #6, 80004030 <vdlog+0x624>
    80004024:	361fe3c3 	tbz	w3, #3, 80003c9c <vdlog+0x290>
    80004028:	52800569 	mov	w9, #0x2b                  	// #43
    8000402c:	14000002 	b	80004034 <vdlog+0x628>
    80004030:	528005a9 	mov	w9, #0x2d                  	// #45
    80004034:	aa0803e0 	mov	x0, x8
    80004038:	39000109 	strb	w9, [x8]
    8000403c:	36080503 	tbz	w3, #1, 800040dc <vdlog+0x6d0>
    80004040:	17fffe94 	b	80003a90 <vdlog+0x84>
    80004044:	b9801a68 	ldrsw	x8, [x19, #24]
    80004048:	36f800a8 	tbz	w8, #31, 8000405c <vdlog+0x650>
    8000404c:	11002109 	add	w9, w8, #0x8
    80004050:	7100013f 	cmp	w9, #0x0
    80004054:	b9001a69 	str	w9, [x19, #24]
    80004058:	5400088d 	b.le	80004168 <vdlog+0x75c>
    8000405c:	f9400268 	ldr	x8, [x19]
    80004060:	91002109 	add	x9, x8, #0x8
    80004064:	f9000269 	str	x9, [x19]
    80004068:	f9400109 	ldr	x9, [x8]
    8000406c:	b000000a 	adrp	x10, 80005000 <rodata_begin>
    80004070:	910afd4a 	add	x10, x10, #0x2bf
    80004074:	f9400be1 	ldr	x1, [sp, #16]
    80004078:	b000000b 	adrp	x11, 80005000 <rodata_begin>
    8000407c:	9103356b 	add	x11, x11, #0xcd
    80004080:	721b007f 	tst	w3, #0x20
    80004084:	9a8a0168 	csel	x8, x11, x10, eq  // eq = none
    80004088:	39019fff 	strb	wzr, [sp, #103]
    8000408c:	92400d2a 	and	x10, x9, #0xf
    80004090:	386a690a 	ldrb	w10, [x8, x10]
    80004094:	381ffc2a 	strb	w10, [x1, #-1]!
    80004098:	f1003d3f 	cmp	x9, #0xf
    8000409c:	d344fd29 	lsr	x9, x9, #4
    800040a0:	54ffff68 	b.hi	8000408c <vdlog+0x680>  // b.pmore
    800040a4:	aa0103e0 	mov	x0, x1
    800040a8:	362000c3 	tbz	w3, #4, 800040c0 <vdlog+0x6b4>
    800040ac:	39404108 	ldrb	w8, [x8, #16]
    800040b0:	aa0103e0 	mov	x0, x1
    800040b4:	52800609 	mov	w9, #0x30                  	// #48
    800040b8:	381fec09 	strb	w9, [x0, #-2]!
    800040bc:	39000408 	strb	w8, [x0, #1]
    800040c0:	37300083 	tbnz	w3, #6, 800040d0 <vdlog+0x6c4>
    800040c4:	361feb43 	tbz	w3, #3, 80003e2c <vdlog+0x420>
    800040c8:	52800568 	mov	w8, #0x2b                  	// #43
    800040cc:	14000002 	b	800040d4 <vdlog+0x6c8>
    800040d0:	528005a8 	mov	w8, #0x2d                  	// #45
    800040d4:	381ffc08 	strb	w8, [x0, #-1]!
    800040d8:	370fcdc3 	tbnz	w3, #1, 80003a90 <vdlog+0x84>
    800040dc:	aa0003e1 	mov	x1, x0
    800040e0:	52800404 	mov	w4, #0x20                  	// #32
    800040e4:	17fffe6c 	b	80003a94 <vdlog+0x88>
    800040e8:	f9400669 	ldr	x9, [x19, #8]
    800040ec:	8b080128 	add	x8, x9, x8
    800040f0:	17fffeb4 	b	80003bc0 <vdlog+0x1b4>
    800040f4:	528005a9 	mov	w9, #0x2d                  	// #45
    800040f8:	14000005 	b	8000410c <vdlog+0x700>
    800040fc:	f9400669 	ldr	x9, [x19, #8]
    80004100:	8b080128 	add	x8, x9, x8
    80004104:	17fffece 	b	80003c3c <vdlog+0x230>
    80004108:	52800569 	mov	w9, #0x2b                  	// #43
    8000410c:	381ffc09 	strb	w9, [x0, #-1]!
    80004110:	370fcbe3 	tbnz	w3, #1, 80003a8c <vdlog+0x80>
    80004114:	aa0003e1 	mov	x1, x0
    80004118:	2a0803e3 	mov	w3, w8
    8000411c:	17fffff1 	b	800040e0 <vdlog+0x6d4>
    80004120:	f940066a 	ldr	x10, [x19, #8]
    80004124:	8b090149 	add	x9, x10, x9
    80004128:	17fffefb 	b	80003d14 <vdlog+0x308>
    8000412c:	f9400669 	ldr	x9, [x19, #8]
    80004130:	8b080128 	add	x8, x9, x8
    80004134:	17ffff19 	b	80003d98 <vdlog+0x38c>
    80004138:	f9400669 	ldr	x9, [x19, #8]
    8000413c:	8b080128 	add	x8, x9, x8
    80004140:	17ffff24 	b	80003dd0 <vdlog+0x3c4>
    80004144:	f9400669 	ldr	x9, [x19, #8]
    80004148:	8b080128 	add	x8, x9, x8
    8000414c:	17ffff44 	b	80003e5c <vdlog+0x450>
    80004150:	f9400669 	ldr	x9, [x19, #8]
    80004154:	8b080128 	add	x8, x9, x8
    80004158:	17ffff95 	b	80003fac <vdlog+0x5a0>
    8000415c:	f9400669 	ldr	x9, [x19, #8]
    80004160:	8b080128 	add	x8, x9, x8
    80004164:	17ffff9d 	b	80003fd8 <vdlog+0x5cc>
    80004168:	f9400669 	ldr	x9, [x19, #8]
    8000416c:	8b080128 	add	x8, x9, x8
    80004170:	17ffffbe 	b	80004068 <vdlog+0x65c>
    80004174:	f0000009 	adrp	x9, 80007000 <__stack_chk_guard>
    80004178:	f85a83a8 	ldur	x8, [x29, #-88]
    8000417c:	f9400129 	ldr	x9, [x9]
    80004180:	eb08013f 	cmp	x9, x8
    80004184:	54000121 	b.ne	800041a8 <vdlog+0x79c>  // b.any
    80004188:	a94c7bfd 	ldp	x29, x30, [sp, #192]
    8000418c:	a94b4ff4 	ldp	x20, x19, [sp, #176]
    80004190:	a94a57f6 	ldp	x22, x21, [sp, #160]
    80004194:	a9495ff8 	ldp	x24, x23, [sp, #144]
    80004198:	a94867fa 	ldp	x26, x25, [sp, #128]
    8000419c:	a9476ffc 	ldp	x28, x27, [sp, #112]
    800041a0:	910343ff 	add	sp, sp, #0xd0
    800041a4:	d65f03c0 	ret
    800041a8:	940000d4 	bl	800044f8 <__stack_chk_fail>

00000000800041ac <print_string>:
    800041ac:	d10083ff 	sub	sp, sp, #0x20
    800041b0:	a9017bfd 	stp	x29, x30, [sp, #16]
    800041b4:	910043fd 	add	x29, sp, #0x10
    800041b8:	f0000009 	adrp	x9, 80007000 <__stack_chk_guard>
    800041bc:	f9400129 	ldr	x9, [x9]
    800041c0:	52800308 	mov	w8, #0x18                  	// #24
    800041c4:	72a38128 	movk	w8, #0x1c09, lsl #16
    800041c8:	eb01001f 	cmp	x0, x1
    800041cc:	f90007e9 	str	x9, [sp, #8]
    800041d0:	b0000029 	adrp	x9, 80009000 <global_context>
    800041d4:	b000002a 	adrp	x10, 80009000 <global_context>
    800041d8:	9120614a 	add	x10, x10, #0x818
    800041dc:	540003c0 	b.eq	80004254 <print_string+0xa8>  // b.none
    800041e0:	52a3812b 	mov	w11, #0x1c090000            	// #470351872
    800041e4:	528001ac 	mov	w12, #0xd                   	// #13
    800041e8:	aa0003ed 	mov	x13, x0
    800041ec:	384015ae 	ldrb	w14, [x13], #1
    800041f0:	710029df 	cmp	w14, #0xa
    800041f4:	f944092f 	ldr	x15, [x9, #2064]
    800041f8:	382f694e 	strb	w14, [x10, x15]
    800041fc:	110005ef 	add	w15, w15, #0x1
    80004200:	924031ef 	and	x15, x15, #0x1fff
    80004204:	f904092f 	str	x15, [x9, #2064]
    80004208:	54000121 	b.ne	8000422c <print_string+0x80>  // b.any
    8000420c:	b940010f 	ldr	w15, [x8]
    80004210:	372fffef 	tbnz	w15, #5, 8000420c <print_string+0x60>
    80004214:	d5033fbf 	dmb	sy
    80004218:	b900016c 	str	w12, [x11]
    8000421c:	d5033fbf 	dmb	sy
    80004220:	b940010f 	ldr	w15, [x8]
    80004224:	d5033f9f 	dsb	sy
    80004228:	371fffcf 	tbnz	w15, #3, 80004220 <print_string+0x74>
    8000422c:	b940010f 	ldr	w15, [x8]
    80004230:	372fffef 	tbnz	w15, #5, 8000422c <print_string+0x80>
    80004234:	d5033fbf 	dmb	sy
    80004238:	b900016e 	str	w14, [x11]
    8000423c:	d5033fbf 	dmb	sy
    80004240:	b940010e 	ldr	w14, [x8]
    80004244:	d5033f9f 	dsb	sy
    80004248:	371fffce 	tbnz	w14, #3, 80004240 <print_string+0x94>
    8000424c:	eb0101bf 	cmp	x13, x1
    80004250:	54fffce1 	b.ne	800041ec <print_string+0x40>  // b.any
    80004254:	cb00002b 	sub	x11, x1, x0
    80004258:	37100183 	tbnz	w3, #2, 80004288 <print_string+0xdc>
    8000425c:	aa1f03ec 	mov	x12, xzr
    80004260:	b4000801 	cbz	x1, 80004360 <print_string+0x1b4>
    80004264:	386c682d 	ldrb	w13, [x1, x12]
    80004268:	340007cd 	cbz	w13, 80004360 <print_string+0x1b4>
    8000426c:	8b0c002d 	add	x13, x1, x12
    80004270:	394005ad 	ldrb	w13, [x13, #1]
    80004274:	3400074d 	cbz	w13, 8000435c <print_string+0x1b0>
    80004278:	9100098c 	add	x12, x12, #0x2
    8000427c:	f101019f 	cmp	x12, #0x40
    80004280:	54ffff21 	b.ne	80004264 <print_string+0xb8>  // b.any
    80004284:	14000037 	b	80004360 <print_string+0x1b4>
    80004288:	3940002d 	ldrb	w13, [x1]
    8000428c:	340003ed 	cbz	w13, 80004308 <print_string+0x15c>
    80004290:	52a3812b 	mov	w11, #0x1c090000            	// #470351872
    80004294:	528001ac 	mov	w12, #0xd                   	// #13
    80004298:	f944092e 	ldr	x14, [x9, #2064]
    8000429c:	382e694d 	strb	w13, [x10, x14]
    800042a0:	110005ce 	add	w14, w14, #0x1
    800042a4:	12001dad 	and	w13, w13, #0xff
    800042a8:	91000421 	add	x1, x1, #0x1
    800042ac:	924031ce 	and	x14, x14, #0x1fff
    800042b0:	710029bf 	cmp	w13, #0xa
    800042b4:	f904092e 	str	x14, [x9, #2064]
    800042b8:	54000121 	b.ne	800042dc <print_string+0x130>  // b.any
    800042bc:	b940010e 	ldr	w14, [x8]
    800042c0:	372fffee 	tbnz	w14, #5, 800042bc <print_string+0x110>
    800042c4:	d5033fbf 	dmb	sy
    800042c8:	b900016c 	str	w12, [x11]
    800042cc:	d5033fbf 	dmb	sy
    800042d0:	b940010e 	ldr	w14, [x8]
    800042d4:	d5033f9f 	dsb	sy
    800042d8:	371fffce 	tbnz	w14, #3, 800042d0 <print_string+0x124>
    800042dc:	b940010e 	ldr	w14, [x8]
    800042e0:	372fffee 	tbnz	w14, #5, 800042dc <print_string+0x130>
    800042e4:	d5033fbf 	dmb	sy
    800042e8:	b900016d 	str	w13, [x11]
    800042ec:	d5033fbf 	dmb	sy
    800042f0:	b940010d 	ldr	w13, [x8]
    800042f4:	d5033f9f 	dsb	sy
    800042f8:	371fffcd 	tbnz	w13, #3, 800042f0 <print_string+0x144>
    800042fc:	3940002d 	ldrb	w13, [x1]
    80004300:	35fffccd 	cbnz	w13, 80004298 <print_string+0xec>
    80004304:	cb00002b 	sub	x11, x1, x0
    80004308:	eb02017f 	cmp	x11, x2
    8000430c:	54000a82 	b.cs	8000445c <print_string+0x2b0>  // b.hs, b.nlast
    80004310:	5280040c 	mov	w12, #0x20                  	// #32
    80004314:	52a3812d 	mov	w13, #0x1c090000            	// #470351872
    80004318:	f944092e 	ldr	x14, [x9, #2064]
    8000431c:	382e694c 	strb	w12, [x10, x14]
    80004320:	110005ce 	add	w14, w14, #0x1
    80004324:	924031ce 	and	x14, x14, #0x1fff
    80004328:	f904092e 	str	x14, [x9, #2064]
    8000432c:	b940010e 	ldr	w14, [x8]
    80004330:	372fffee 	tbnz	w14, #5, 8000432c <print_string+0x180>
    80004334:	d5033fbf 	dmb	sy
    80004338:	b90001ac 	str	w12, [x13]
    8000433c:	d5033fbf 	dmb	sy
    80004340:	b940010e 	ldr	w14, [x8]
    80004344:	d5033f9f 	dsb	sy
    80004348:	371fffce 	tbnz	w14, #3, 80004340 <print_string+0x194>
    8000434c:	9100056b 	add	x11, x11, #0x1
    80004350:	eb02017f 	cmp	x11, x2
    80004354:	54fffe21 	b.ne	80004318 <print_string+0x16c>  // b.any
    80004358:	14000041 	b	8000445c <print_string+0x2b0>
    8000435c:	9100058c 	add	x12, x12, #0x1
    80004360:	8b0b018b 	add	x11, x12, x11
    80004364:	eb02017f 	cmp	x11, x2
    80004368:	540003c2 	b.cs	800043e0 <print_string+0x234>  // b.hs, b.nlast
    8000436c:	12001c8c 	and	w12, w4, #0xff
    80004370:	52a3812d 	mov	w13, #0x1c090000            	// #470351872
    80004374:	528001ae 	mov	w14, #0xd                   	// #13
    80004378:	f944092f 	ldr	x15, [x9, #2064]
    8000437c:	382f6944 	strb	w4, [x10, x15]
    80004380:	110005ef 	add	w15, w15, #0x1
    80004384:	924031ef 	and	x15, x15, #0x1fff
    80004388:	7100299f 	cmp	w12, #0xa
    8000438c:	f904092f 	str	x15, [x9, #2064]
    80004390:	54000121 	b.ne	800043b4 <print_string+0x208>  // b.any
    80004394:	b940010f 	ldr	w15, [x8]
    80004398:	372fffef 	tbnz	w15, #5, 80004394 <print_string+0x1e8>
    8000439c:	d5033fbf 	dmb	sy
    800043a0:	b90001ae 	str	w14, [x13]
    800043a4:	d5033fbf 	dmb	sy
    800043a8:	b940010f 	ldr	w15, [x8]
    800043ac:	d5033f9f 	dsb	sy
    800043b0:	371fffcf 	tbnz	w15, #3, 800043a8 <print_string+0x1fc>
    800043b4:	b940010f 	ldr	w15, [x8]
    800043b8:	372fffef 	tbnz	w15, #5, 800043b4 <print_string+0x208>
    800043bc:	d5033fbf 	dmb	sy
    800043c0:	b90001ac 	str	w12, [x13]
    800043c4:	d5033fbf 	dmb	sy
    800043c8:	b940010f 	ldr	w15, [x8]
    800043cc:	d5033f9f 	dsb	sy
    800043d0:	371fffcf 	tbnz	w15, #3, 800043c8 <print_string+0x21c>
    800043d4:	9100056b 	add	x11, x11, #0x1
    800043d8:	eb02017f 	cmp	x11, x2
    800043dc:	54fffce1 	b.ne	80004378 <print_string+0x1cc>  // b.any
    800043e0:	3940002d 	ldrb	w13, [x1]
    800043e4:	340003cd 	cbz	w13, 8000445c <print_string+0x2b0>
    800043e8:	52a3812b 	mov	w11, #0x1c090000            	// #470351872
    800043ec:	528001ac 	mov	w12, #0xd                   	// #13
    800043f0:	f944092e 	ldr	x14, [x9, #2064]
    800043f4:	382e694d 	strb	w13, [x10, x14]
    800043f8:	110005ce 	add	w14, w14, #0x1
    800043fc:	12001dad 	and	w13, w13, #0xff
    80004400:	924031ce 	and	x14, x14, #0x1fff
    80004404:	710029bf 	cmp	w13, #0xa
    80004408:	f904092e 	str	x14, [x9, #2064]
    8000440c:	54000121 	b.ne	80004430 <print_string+0x284>  // b.any
    80004410:	b940010e 	ldr	w14, [x8]
    80004414:	372fffee 	tbnz	w14, #5, 80004410 <print_string+0x264>
    80004418:	d5033fbf 	dmb	sy
    8000441c:	b900016c 	str	w12, [x11]
    80004420:	d5033fbf 	dmb	sy
    80004424:	b940010e 	ldr	w14, [x8]
    80004428:	d5033f9f 	dsb	sy
    8000442c:	371fffce 	tbnz	w14, #3, 80004424 <print_string+0x278>
    80004430:	91000421 	add	x1, x1, #0x1
    80004434:	b940010e 	ldr	w14, [x8]
    80004438:	372fffee 	tbnz	w14, #5, 80004434 <print_string+0x288>
    8000443c:	d5033fbf 	dmb	sy
    80004440:	b900016d 	str	w13, [x11]
    80004444:	d5033fbf 	dmb	sy
    80004448:	b940010d 	ldr	w13, [x8]
    8000444c:	d5033f9f 	dsb	sy
    80004450:	371fffcd 	tbnz	w13, #3, 80004448 <print_string+0x29c>
    80004454:	3940002d 	ldrb	w13, [x1]
    80004458:	35fffccd 	cbnz	w13, 800043f0 <print_string+0x244>
    8000445c:	f0000009 	adrp	x9, 80007000 <__stack_chk_guard>
    80004460:	f94007e8 	ldr	x8, [sp, #8]
    80004464:	f9400129 	ldr	x9, [x9]
    80004468:	eb08013f 	cmp	x9, x8
    8000446c:	54000081 	b.ne	8000447c <print_string+0x2d0>  // b.any
    80004470:	a9417bfd 	ldp	x29, x30, [sp, #16]
    80004474:	910083ff 	add	sp, sp, #0x20
    80004478:	d65f03c0 	ret
    8000447c:	9400001f 	bl	800044f8 <__stack_chk_fail>

0000000080004480 <dlog>:
    80004480:	d10243ff 	sub	sp, sp, #0x90
    80004484:	a9087bfd 	stp	x29, x30, [sp, #128]
    80004488:	910203fd 	add	x29, sp, #0x80
    8000448c:	f0000008 	adrp	x8, 80007000 <__stack_chk_guard>
    80004490:	f9400108 	ldr	x8, [x8]
    80004494:	910003e9 	mov	x9, sp
    80004498:	a9000be1 	stp	x1, x2, [sp]
    8000449c:	9100e129 	add	x9, x9, #0x38
    800044a0:	a90113e3 	stp	x3, x4, [sp, #16]
    800044a4:	910043aa 	add	x10, x29, #0x10
    800044a8:	9100e3e1 	add	x1, sp, #0x38
    800044ac:	f9001be7 	str	x7, [sp, #48]
    800044b0:	a9021be5 	stp	x5, x6, [sp, #32]
    800044b4:	f81f83a8 	stur	x8, [x29, #-8]
    800044b8:	128006e8 	mov	w8, #0xffffffc8            	// #-56
    800044bc:	f81f03a8 	stur	x8, [x29, #-16]
    800044c0:	a93da7aa 	stp	x10, x9, [x29, #-40]
    800044c4:	a903a7ea 	stp	x10, x9, [sp, #56]
    800044c8:	f85e83a9 	ldur	x9, [x29, #-24]
    800044cc:	a904a3e9 	stp	x9, x8, [sp, #72]
    800044d0:	97fffd4f 	bl	80003a0c <vdlog>
    800044d4:	f0000009 	adrp	x9, 80007000 <__stack_chk_guard>
    800044d8:	f85f83a8 	ldur	x8, [x29, #-8]
    800044dc:	f9400129 	ldr	x9, [x9]
    800044e0:	eb08013f 	cmp	x9, x8
    800044e4:	54000081 	b.ne	800044f4 <dlog+0x74>  // b.any
    800044e8:	a9487bfd 	ldp	x29, x30, [sp, #128]
    800044ec:	910243ff 	add	sp, sp, #0x90
    800044f0:	d65f03c0 	ret
    800044f4:	94000001 	bl	800044f8 <__stack_chk_fail>

00000000800044f8 <__stack_chk_fail>:
    800044f8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    800044fc:	910003fd 	mov	x29, sp
    80004500:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004504:	91061400 	add	x0, x0, #0x185
    80004508:	9400022f 	bl	80004dc4 <panic>

000000008000450c <memcpy>:
    8000450c:	d10083ff 	sub	sp, sp, #0x20
    80004510:	a9017bfd 	stp	x29, x30, [sp, #16]
    80004514:	910043fd 	add	x29, sp, #0x10
    80004518:	f0000008 	adrp	x8, 80007000 <__stack_chk_guard>
    8000451c:	f9400108 	ldr	x8, [x8]
    80004520:	f90007e8 	str	x8, [sp, #8]
    80004524:	b4000322 	cbz	x2, 80004588 <memcpy+0x7c>
    80004528:	d1000449 	sub	x9, x2, #0x1
    8000452c:	aa0003e8 	mov	x8, x0
    80004530:	f240044a 	ands	x10, x2, #0x3
    80004534:	540000e0 	b.eq	80004550 <memcpy+0x44>  // b.none
    80004538:	aa0a03eb 	mov	x11, x10
    8000453c:	3840142c 	ldrb	w12, [x1], #1
    80004540:	f100056b 	subs	x11, x11, #0x1
    80004544:	3800150c 	strb	w12, [x8], #1
    80004548:	54ffffa1 	b.ne	8000453c <memcpy+0x30>  // b.any
    8000454c:	cb0a0042 	sub	x2, x2, x10
    80004550:	f1000d3f 	cmp	x9, #0x3
    80004554:	540001a3 	b.cc	80004588 <memcpy+0x7c>  // b.lo, b.ul, b.last
    80004558:	39400029 	ldrb	w9, [x1]
    8000455c:	39000109 	strb	w9, [x8]
    80004560:	39400429 	ldrb	w9, [x1, #1]
    80004564:	39000509 	strb	w9, [x8, #1]
    80004568:	39400829 	ldrb	w9, [x1, #2]
    8000456c:	39000909 	strb	w9, [x8, #2]
    80004570:	39400c29 	ldrb	w9, [x1, #3]
    80004574:	f1001042 	subs	x2, x2, #0x4
    80004578:	91001021 	add	x1, x1, #0x4
    8000457c:	39000d09 	strb	w9, [x8, #3]
    80004580:	91001108 	add	x8, x8, #0x4
    80004584:	54fffea1 	b.ne	80004558 <memcpy+0x4c>  // b.any
    80004588:	f0000009 	adrp	x9, 80007000 <__stack_chk_guard>
    8000458c:	f94007e8 	ldr	x8, [sp, #8]
    80004590:	f9400129 	ldr	x9, [x9]
    80004594:	eb08013f 	cmp	x9, x8
    80004598:	54000081 	b.ne	800045a8 <memcpy+0x9c>  // b.any
    8000459c:	a9417bfd 	ldp	x29, x30, [sp, #16]
    800045a0:	910083ff 	add	sp, sp, #0x20
    800045a4:	d65f03c0 	ret
    800045a8:	97ffffd4 	bl	800044f8 <__stack_chk_fail>

00000000800045ac <fdt_ro_probe_>:
    800045ac:	d10083ff 	sub	sp, sp, #0x20
    800045b0:	a9017bfd 	stp	x29, x30, [sp, #16]
    800045b4:	910043fd 	add	x29, sp, #0x10
    800045b8:	f0000008 	adrp	x8, 80007000 <__stack_chk_guard>
    800045bc:	f9400108 	ldr	x8, [x8]
    800045c0:	f90007e8 	str	x8, [sp, #8]
    800045c4:	3940000c 	ldrb	w12, [x0]
    800045c8:	3940040d 	ldrb	w13, [x0, #1]
    800045cc:	3940100b 	ldrb	w11, [x0, #4]
    800045d0:	3940140a 	ldrb	w10, [x0, #5]
    800045d4:	39401808 	ldrb	w8, [x0, #6]
    800045d8:	39401c09 	ldrb	w9, [x0, #7]
    800045dc:	53081d8c 	lsl	w12, w12, #24
    800045e0:	33101dac 	bfi	w12, w13, #16, #8
    800045e4:	3940080d 	ldrb	w13, [x0, #2]
    800045e8:	33181dac 	bfi	w12, w13, #8, #8
    800045ec:	39400c0d 	ldrb	w13, [x0, #3]
    800045f0:	2a0d018c 	orr	w12, w12, w13
    800045f4:	5280224d 	mov	w13, #0x112                 	// #274
    800045f8:	72a5fe4d 	movk	w13, #0x2ff2, lsl #16
    800045fc:	6b0d019f 	cmp	w12, w13
    80004600:	54000360 	b.eq	8000466c <fdt_ro_probe_+0xc0>  // b.none
    80004604:	529fddad 	mov	w13, #0xfeed                	// #65261
    80004608:	72ba01ad 	movk	w13, #0xd00d, lsl #16
    8000460c:	6b0d019f 	cmp	w12, w13
    80004610:	54000521 	b.ne	800046b4 <fdt_ro_probe_+0x108>  // b.any
    80004614:	3940500c 	ldrb	w12, [x0, #20]
    80004618:	53081d8c 	lsl	w12, w12, #24
    8000461c:	3940540d 	ldrb	w13, [x0, #21]
    80004620:	33101dac 	bfi	w12, w13, #16, #8
    80004624:	3940580d 	ldrb	w13, [x0, #22]
    80004628:	33181dac 	bfi	w12, w13, #8, #8
    8000462c:	39405c0d 	ldrb	w13, [x0, #23]
    80004630:	2a0d018c 	orr	w12, w12, w13
    80004634:	7100099f 	cmp	w12, #0x2
    80004638:	54000163 	b.cc	80004664 <fdt_ro_probe_+0xb8>  // b.lo, b.ul, b.last
    8000463c:	3940600c 	ldrb	w12, [x0, #24]
    80004640:	53081d8c 	lsl	w12, w12, #24
    80004644:	3940640d 	ldrb	w13, [x0, #25]
    80004648:	33101dac 	bfi	w12, w13, #16, #8
    8000464c:	3940680d 	ldrb	w13, [x0, #26]
    80004650:	33181dac 	bfi	w12, w13, #8, #8
    80004654:	39406c0d 	ldrb	w13, [x0, #27]
    80004658:	2a0d018c 	orr	w12, w12, w13
    8000465c:	7100459f 	cmp	w12, #0x11
    80004660:	54000189 	b.ls	80004690 <fdt_ro_probe_+0xe4>  // b.plast
    80004664:	12800120 	mov	w0, #0xfffffff6            	// #-10
    80004668:	14000016 	b	800046c0 <fdt_ro_probe_+0x114>
    8000466c:	3940900c 	ldrb	w12, [x0, #36]
    80004670:	53081d8c 	lsl	w12, w12, #24
    80004674:	3940940d 	ldrb	w13, [x0, #37]
    80004678:	33101dac 	bfi	w12, w13, #16, #8
    8000467c:	3940980d 	ldrb	w13, [x0, #38]
    80004680:	33181dac 	bfi	w12, w13, #8, #8
    80004684:	39409c0d 	ldrb	w13, [x0, #39]
    80004688:	2a0d018c 	orr	w12, w12, w13
    8000468c:	3400018c 	cbz	w12, 800046bc <fdt_ro_probe_+0x110>
    80004690:	53081d6b 	lsl	w11, w11, #24
    80004694:	33101d4b 	bfi	w11, w10, #16, #8
    80004698:	33181d0b 	bfi	w11, w8, #8, #8
    8000469c:	2a090168 	orr	w8, w11, w9
    800046a0:	12b00009 	mov	w9, #0x7fffffff            	// #2147483647
    800046a4:	6b09011f 	cmp	w8, w9
    800046a8:	128000e9 	mov	w9, #0xfffffff8            	// #-8
    800046ac:	1a893100 	csel	w0, w8, w9, cc  // cc = lo, ul, last
    800046b0:	14000004 	b	800046c0 <fdt_ro_probe_+0x114>
    800046b4:	12800100 	mov	w0, #0xfffffff7            	// #-9
    800046b8:	14000002 	b	800046c0 <fdt_ro_probe_+0x114>
    800046bc:	128000c0 	mov	w0, #0xfffffff9            	// #-7
    800046c0:	f0000009 	adrp	x9, 80007000 <__stack_chk_guard>
    800046c4:	f94007e8 	ldr	x8, [sp, #8]
    800046c8:	f9400129 	ldr	x9, [x9]
    800046cc:	eb08013f 	cmp	x9, x8
    800046d0:	54000081 	b.ne	800046e0 <fdt_ro_probe_+0x134>  // b.any
    800046d4:	a9417bfd 	ldp	x29, x30, [sp, #16]
    800046d8:	910083ff 	add	sp, sp, #0x20
    800046dc:	d65f03c0 	ret
    800046e0:	97ffff86 	bl	800044f8 <__stack_chk_fail>

00000000800046e4 <fdt_check_header>:
    800046e4:	d10083ff 	sub	sp, sp, #0x20
    800046e8:	a9017bfd 	stp	x29, x30, [sp, #16]
    800046ec:	910043fd 	add	x29, sp, #0x10
    800046f0:	f0000008 	adrp	x8, 80007000 <__stack_chk_guard>
    800046f4:	f9400108 	ldr	x8, [x8]
    800046f8:	f90007e8 	str	x8, [sp, #8]
    800046fc:	39400008 	ldrb	w8, [x0]
    80004700:	39400409 	ldrb	w9, [x0, #1]
    80004704:	53081d08 	lsl	w8, w8, #24
    80004708:	33101d28 	bfi	w8, w9, #16, #8
    8000470c:	39400809 	ldrb	w9, [x0, #2]
    80004710:	33181d28 	bfi	w8, w9, #8, #8
    80004714:	39400c09 	ldrb	w9, [x0, #3]
    80004718:	2a090108 	orr	w8, w8, w9
    8000471c:	529fdda9 	mov	w9, #0xfeed                	// #65261
    80004720:	72ba01a9 	movk	w9, #0xd00d, lsl #16
    80004724:	6b09011f 	cmp	w8, w9
    80004728:	540001a1 	b.ne	8000475c <fdt_check_header+0x78>  // b.any
    8000472c:	39405008 	ldrb	w8, [x0, #20]
    80004730:	53081d08 	lsl	w8, w8, #24
    80004734:	39405409 	ldrb	w9, [x0, #21]
    80004738:	33101d28 	bfi	w8, w9, #16, #8
    8000473c:	39405809 	ldrb	w9, [x0, #22]
    80004740:	33181d28 	bfi	w8, w9, #8, #8
    80004744:	39405c09 	ldrb	w9, [x0, #23]
    80004748:	2a09010b 	orr	w11, w8, w9
    8000474c:	7100097f 	cmp	w11, #0x2
    80004750:	540001a2 	b.cs	80004784 <fdt_check_header+0xa0>  // b.hs, b.nlast
    80004754:	12800128 	mov	w8, #0xfffffff6            	// #-10
    80004758:	14000002 	b	80004760 <fdt_check_header+0x7c>
    8000475c:	12800108 	mov	w8, #0xfffffff7            	// #-9
    80004760:	f000000a 	adrp	x10, 80007000 <__stack_chk_guard>
    80004764:	f94007e9 	ldr	x9, [sp, #8]
    80004768:	f940014a 	ldr	x10, [x10]
    8000476c:	eb09015f 	cmp	x10, x9
    80004770:	54000ea1 	b.ne	80004944 <fdt_check_header+0x260>  // b.any
    80004774:	a9417bfd 	ldp	x29, x30, [sp, #16]
    80004778:	2a0803e0 	mov	w0, w8
    8000477c:	910083ff 	add	sp, sp, #0x20
    80004780:	d65f03c0 	ret
    80004784:	54000061 	b.ne	80004790 <fdt_check_header+0xac>  // b.any
    80004788:	52800409 	mov	w9, #0x20                  	// #32
    8000478c:	14000009 	b	800047b0 <fdt_check_header+0xcc>
    80004790:	7100117f 	cmp	w11, #0x4
    80004794:	54000062 	b.cs	800047a0 <fdt_check_header+0xbc>  // b.hs, b.nlast
    80004798:	52800489 	mov	w9, #0x24                  	// #36
    8000479c:	14000005 	b	800047b0 <fdt_check_header+0xcc>
    800047a0:	7100457f 	cmp	w11, #0x11
    800047a4:	52800508 	mov	w8, #0x28                  	// #40
    800047a8:	52800489 	mov	w9, #0x24                  	// #36
    800047ac:	9a883129 	csel	x9, x9, x8, cc  // cc = lo, ul, last
    800047b0:	39406008 	ldrb	w8, [x0, #24]
    800047b4:	53081d08 	lsl	w8, w8, #24
    800047b8:	3940640a 	ldrb	w10, [x0, #25]
    800047bc:	33101d48 	bfi	w8, w10, #16, #8
    800047c0:	3940680a 	ldrb	w10, [x0, #26]
    800047c4:	33181d48 	bfi	w8, w10, #8, #8
    800047c8:	39406c0a 	ldrb	w10, [x0, #27]
    800047cc:	2a0a010a 	orr	w10, w8, w10
    800047d0:	12800128 	mov	w8, #0xfffffff6            	// #-10
    800047d4:	7100455f 	cmp	w10, #0x11
    800047d8:	54fffc48 	b.hi	80004760 <fdt_check_header+0x7c>  // b.pmore
    800047dc:	6b0a017f 	cmp	w11, w10
    800047e0:	54fffc03 	b.cc	80004760 <fdt_check_header+0x7c>  // b.lo, b.ul, b.last
    800047e4:	39401008 	ldrb	w8, [x0, #4]
    800047e8:	d3689d08 	lsl	x8, x8, #24
    800047ec:	3940140a 	ldrb	w10, [x0, #5]
    800047f0:	b3701d48 	bfi	x8, x10, #16, #8
    800047f4:	3940180a 	ldrb	w10, [x0, #6]
    800047f8:	b3781d48 	bfi	x8, x10, #8, #8
    800047fc:	39401c0a 	ldrb	w10, [x0, #7]
    80004800:	aa0a010a 	orr	x10, x8, x10
    80004804:	128000e8 	mov	w8, #0xfffffff8            	// #-8
    80004808:	37fffaca 	tbnz	w10, #31, 80004760 <fdt_check_header+0x7c>
    8000480c:	eb0a013f 	cmp	x9, x10
    80004810:	54fffa88 	b.hi	80004760 <fdt_check_header+0x7c>  // b.pmore
    80004814:	39404008 	ldrb	w8, [x0, #16]
    80004818:	53081d08 	lsl	w8, w8, #24
    8000481c:	3940440c 	ldrb	w12, [x0, #17]
    80004820:	33101d88 	bfi	w8, w12, #16, #8
    80004824:	3940480c 	ldrb	w12, [x0, #18]
    80004828:	33181d88 	bfi	w8, w12, #8, #8
    8000482c:	39404c0c 	ldrb	w12, [x0, #19]
    80004830:	2a0c010c 	orr	w12, w8, w12
    80004834:	128000e8 	mov	w8, #0xfffffff8            	// #-8
    80004838:	6b09019f 	cmp	w12, w9
    8000483c:	54fff923 	b.cc	80004760 <fdt_check_header+0x7c>  // b.lo, b.ul, b.last
    80004840:	6b0a019f 	cmp	w12, w10
    80004844:	54fff8e8 	b.hi	80004760 <fdt_check_header+0x7c>  // b.pmore
    80004848:	39402008 	ldrb	w8, [x0, #8]
    8000484c:	53081d08 	lsl	w8, w8, #24
    80004850:	3940240c 	ldrb	w12, [x0, #9]
    80004854:	33101d88 	bfi	w8, w12, #16, #8
    80004858:	3940280c 	ldrb	w12, [x0, #10]
    8000485c:	33181d88 	bfi	w8, w12, #8, #8
    80004860:	39402c0c 	ldrb	w12, [x0, #11]
    80004864:	2a0c0108 	orr	w8, w8, w12
    80004868:	6b09011f 	cmp	w8, w9
    8000486c:	1a9f27ec 	cset	w12, cc  // cc = lo, ul, last
    80004870:	6b0a011f 	cmp	w8, w10
    80004874:	1a9f97ed 	cset	w13, hi  // hi = pmore
    80004878:	7100417f 	cmp	w11, #0x10
    8000487c:	2a0d018c 	orr	w12, w12, w13
    80004880:	540003c8 	b.hi	800048f8 <fdt_check_header+0x214>  // b.pmore
    80004884:	3700050c 	tbnz	w12, #0, 80004924 <fdt_check_header+0x240>
    80004888:	39403008 	ldrb	w8, [x0, #12]
    8000488c:	53081d08 	lsl	w8, w8, #24
    80004890:	3940340b 	ldrb	w11, [x0, #13]
    80004894:	33101d68 	bfi	w8, w11, #16, #8
    80004898:	3940380b 	ldrb	w11, [x0, #14]
    8000489c:	33181d68 	bfi	w8, w11, #8, #8
    800048a0:	39403c0b 	ldrb	w11, [x0, #15]
    800048a4:	2a0b0108 	orr	w8, w8, w11
    800048a8:	6b09011f 	cmp	w8, w9
    800048ac:	540003c3 	b.cc	80004924 <fdt_check_header+0x240>  // b.lo, b.ul, b.last
    800048b0:	6b0a011f 	cmp	w8, w10
    800048b4:	54000388 	b.hi	80004924 <fdt_check_header+0x240>  // b.pmore
    800048b8:	3940840b 	ldrb	w11, [x0, #33]
    800048bc:	53103d6b 	lsl	w11, w11, #16
    800048c0:	3940800c 	ldrb	w12, [x0, #32]
    800048c4:	33081d8b 	bfi	w11, w12, #24, #8
    800048c8:	3940880c 	ldrb	w12, [x0, #34]
    800048cc:	33181d8b 	bfi	w11, w12, #8, #8
    800048d0:	39408c0c 	ldrb	w12, [x0, #35]
    800048d4:	2a0c016b 	orr	w11, w11, w12
    800048d8:	2b080168 	adds	w8, w11, w8
    800048dc:	54000242 	b.cs	80004924 <fdt_check_header+0x240>  // b.hs, b.nlast
    800048e0:	6b09011f 	cmp	w8, w9
    800048e4:	54000203 	b.cc	80004924 <fdt_check_header+0x240>  // b.lo, b.ul, b.last
    800048e8:	6b0a011f 	cmp	w8, w10
    800048ec:	540001c8 	b.hi	80004924 <fdt_check_header+0x240>  // b.pmore
    800048f0:	2a1f03e8 	mov	w8, wzr
    800048f4:	17ffff9b 	b	80004760 <fdt_check_header+0x7c>
    800048f8:	3700016c 	tbnz	w12, #0, 80004924 <fdt_check_header+0x240>
    800048fc:	3940940b 	ldrb	w11, [x0, #37]
    80004900:	53103d6b 	lsl	w11, w11, #16
    80004904:	3940900c 	ldrb	w12, [x0, #36]
    80004908:	33081d8b 	bfi	w11, w12, #24, #8
    8000490c:	3940980c 	ldrb	w12, [x0, #38]
    80004910:	33181d8b 	bfi	w11, w12, #8, #8
    80004914:	39409c0c 	ldrb	w12, [x0, #39]
    80004918:	2a0c016b 	orr	w11, w11, w12
    8000491c:	2b08016b 	adds	w11, w11, w8
    80004920:	54000063 	b.cc	8000492c <fdt_check_header+0x248>  // b.lo, b.ul, b.last
    80004924:	128000e8 	mov	w8, #0xfffffff8            	// #-8
    80004928:	17ffff8e 	b	80004760 <fdt_check_header+0x7c>
    8000492c:	128000e8 	mov	w8, #0xfffffff8            	// #-8
    80004930:	6b09017f 	cmp	w11, w9
    80004934:	54fff163 	b.cc	80004760 <fdt_check_header+0x7c>  // b.lo, b.ul, b.last
    80004938:	6b0a017f 	cmp	w11, w10
    8000493c:	54fffa69 	b.ls	80004888 <fdt_check_header+0x1a4>  // b.plast
    80004940:	17ffff88 	b	80004760 <fdt_check_header+0x7c>
    80004944:	97fffeed 	bl	800044f8 <__stack_chk_fail>

0000000080004948 <fdt_offset_ptr>:
    80004948:	d10083ff 	sub	sp, sp, #0x20
    8000494c:	a9017bfd 	stp	x29, x30, [sp, #16]
    80004950:	910043fd 	add	x29, sp, #0x10
    80004954:	f0000008 	adrp	x8, 80007000 <__stack_chk_guard>
    80004958:	f9400108 	ldr	x8, [x8]
    8000495c:	f90007e8 	str	x8, [sp, #8]
    80004960:	3940200b 	ldrb	w11, [x0, #8]
    80004964:	39402408 	ldrb	w8, [x0, #9]
    80004968:	39402809 	ldrb	w9, [x0, #10]
    8000496c:	53081d6c 	lsl	w12, w11, #24
    80004970:	33101d0c 	bfi	w12, w8, #16, #8
    80004974:	39402c0a 	ldrb	w10, [x0, #11]
    80004978:	33181d2c 	bfi	w12, w9, #8, #8
    8000497c:	2a0a018c 	orr	w12, w12, w10
    80004980:	2b01018c 	adds	w12, w12, w1
    80004984:	54000462 	b.cs	80004a10 <fdt_offset_ptr+0xc8>  // b.hs, b.nlast
    80004988:	2b02018c 	adds	w12, w12, w2
    8000498c:	54000422 	b.cs	80004a10 <fdt_offset_ptr+0xc8>  // b.hs, b.nlast
    80004990:	3940100d 	ldrb	w13, [x0, #4]
    80004994:	53081dad 	lsl	w13, w13, #24
    80004998:	3940140e 	ldrb	w14, [x0, #5]
    8000499c:	33101dcd 	bfi	w13, w14, #16, #8
    800049a0:	3940180e 	ldrb	w14, [x0, #6]
    800049a4:	33181dcd 	bfi	w13, w14, #8, #8
    800049a8:	39401c0e 	ldrb	w14, [x0, #7]
    800049ac:	2a0e01ad 	orr	w13, w13, w14
    800049b0:	6b0d019f 	cmp	w12, w13
    800049b4:	540002e8 	b.hi	80004a10 <fdt_offset_ptr+0xc8>  // b.pmore
    800049b8:	3940500c 	ldrb	w12, [x0, #20]
    800049bc:	53081d8c 	lsl	w12, w12, #24
    800049c0:	3940540d 	ldrb	w13, [x0, #21]
    800049c4:	33101dac 	bfi	w12, w13, #16, #8
    800049c8:	3940580d 	ldrb	w13, [x0, #22]
    800049cc:	33181dac 	bfi	w12, w13, #8, #8
    800049d0:	39405c0d 	ldrb	w13, [x0, #23]
    800049d4:	2a0d018c 	orr	w12, w12, w13
    800049d8:	7100459f 	cmp	w12, #0x11
    800049dc:	540002c3 	b.cc	80004a34 <fdt_offset_ptr+0xec>  // b.lo, b.ul, b.last
    800049e0:	2b01004c 	adds	w12, w2, w1
    800049e4:	54000162 	b.cs	80004a10 <fdt_offset_ptr+0xc8>  // b.hs, b.nlast
    800049e8:	3940900d 	ldrb	w13, [x0, #36]
    800049ec:	53081dad 	lsl	w13, w13, #24
    800049f0:	3940940e 	ldrb	w14, [x0, #37]
    800049f4:	33101dcd 	bfi	w13, w14, #16, #8
    800049f8:	3940980e 	ldrb	w14, [x0, #38]
    800049fc:	33181dcd 	bfi	w13, w14, #8, #8
    80004a00:	39409c0e 	ldrb	w14, [x0, #39]
    80004a04:	2a0e01ad 	orr	w13, w13, w14
    80004a08:	6b0d019f 	cmp	w12, w13
    80004a0c:	54000149 	b.ls	80004a34 <fdt_offset_ptr+0xec>  // b.plast
    80004a10:	aa1f03e0 	mov	x0, xzr
    80004a14:	f0000009 	adrp	x9, 80007000 <__stack_chk_guard>
    80004a18:	f94007e8 	ldr	x8, [sp, #8]
    80004a1c:	f9400129 	ldr	x9, [x9]
    80004a20:	eb08013f 	cmp	x9, x8
    80004a24:	54000181 	b.ne	80004a54 <fdt_offset_ptr+0x10c>  // b.any
    80004a28:	a9417bfd 	ldp	x29, x30, [sp, #16]
    80004a2c:	910083ff 	add	sp, sp, #0x20
    80004a30:	d65f03c0 	ret
    80004a34:	92401d6b 	and	x11, x11, #0xff
    80004a38:	d3689d6b 	lsl	x11, x11, #24
    80004a3c:	b3701d0b 	bfi	x11, x8, #16, #8
    80004a40:	b3781d2b 	bfi	x11, x9, #8, #8
    80004a44:	aa0a0168 	orr	x8, x11, x10
    80004a48:	8b080008 	add	x8, x0, x8
    80004a4c:	8b21c100 	add	x0, x8, w1, sxtw
    80004a50:	17fffff1 	b	80004a14 <fdt_offset_ptr+0xcc>
    80004a54:	97fffea9 	bl	800044f8 <__stack_chk_fail>

0000000080004a58 <fdt_next_tag>:
    80004a58:	d10143ff 	sub	sp, sp, #0x50
    80004a5c:	a9015ff8 	stp	x24, x23, [sp, #16]
    80004a60:	a90257f6 	stp	x22, x21, [sp, #32]
    80004a64:	a9034ff4 	stp	x20, x19, [sp, #48]
    80004a68:	a9047bfd 	stp	x29, x30, [sp, #64]
    80004a6c:	910103fd 	add	x29, sp, #0x40
    80004a70:	f0000008 	adrp	x8, 80007000 <__stack_chk_guard>
    80004a74:	f9400108 	ldr	x8, [x8]
    80004a78:	f90007e8 	str	x8, [sp, #8]
    80004a7c:	128000e8 	mov	w8, #0xfffffff8            	// #-8
    80004a80:	aa0203f3 	mov	x19, x2
    80004a84:	2a0103f4 	mov	w20, w1
    80004a88:	aa0003f5 	mov	x21, x0
    80004a8c:	b9000048 	str	w8, [x2]
    80004a90:	52800082 	mov	w2, #0x4                   	// #4
    80004a94:	97ffffad 	bl	80004948 <fdt_offset_ptr>
    80004a98:	b40007a0 	cbz	x0, 80004b8c <fdt_next_tag+0x134>
    80004a9c:	b9400008 	ldr	w8, [x0]
    80004aa0:	5ac00918 	rev	w24, w8
    80004aa4:	12800148 	mov	w8, #0xfffffff5            	// #-11
    80004aa8:	b9000268 	str	w8, [x19]
    80004aac:	51000708 	sub	w8, w24, #0x1
    80004ab0:	52800137 	mov	w23, #0x9                   	// #9
    80004ab4:	7100211f 	cmp	w8, #0x8
    80004ab8:	540006c8 	b.hi	80004b90 <fdt_next_tag+0x138>  // b.pmore
    80004abc:	b0000009 	adrp	x9, 80005000 <rodata_begin>
    80004ac0:	91031129 	add	x9, x9, #0xc4
    80004ac4:	100000aa 	adr	x10, 80004ad8 <fdt_next_tag+0x80>
    80004ac8:	3868692b 	ldrb	w11, [x9, x8]
    80004acc:	8b0b094a 	add	x10, x10, x11, lsl #2
    80004ad0:	11001296 	add	w22, w20, #0x4
    80004ad4:	d61f0140 	br	x10
    80004ad8:	4b1402c2 	sub	w2, w22, w20
    80004adc:	aa1503e0 	mov	x0, x21
    80004ae0:	2a1403e1 	mov	w1, w20
    80004ae4:	97ffff99 	bl	80004948 <fdt_offset_ptr>
    80004ae8:	b4000520 	cbz	x0, 80004b8c <fdt_next_tag+0x134>
    80004aec:	11000ec8 	add	w8, w22, #0x3
    80004af0:	121e7508 	and	w8, w8, #0xfffffffc
    80004af4:	2a1803f7 	mov	w23, w24
    80004af8:	b9000268 	str	w8, [x19]
    80004afc:	14000025 	b	80004b90 <fdt_next_tag+0x138>
    80004b00:	52800137 	mov	w23, #0x9                   	// #9
    80004b04:	aa1503e0 	mov	x0, x21
    80004b08:	2a1603e1 	mov	w1, w22
    80004b0c:	52800022 	mov	w2, #0x1                   	// #1
    80004b10:	97ffff8e 	bl	80004948 <fdt_offset_ptr>
    80004b14:	b40003e0 	cbz	x0, 80004b90 <fdt_next_tag+0x138>
    80004b18:	39400008 	ldrb	w8, [x0]
    80004b1c:	110006d6 	add	w22, w22, #0x1
    80004b20:	35ffff28 	cbnz	w8, 80004b04 <fdt_next_tag+0xac>
    80004b24:	17ffffed 	b	80004ad8 <fdt_next_tag+0x80>
    80004b28:	aa1503e0 	mov	x0, x21
    80004b2c:	2a1603e1 	mov	w1, w22
    80004b30:	52800082 	mov	w2, #0x4                   	// #4
    80004b34:	97ffff85 	bl	80004948 <fdt_offset_ptr>
    80004b38:	b40002a0 	cbz	x0, 80004b8c <fdt_next_tag+0x134>
    80004b3c:	b9400008 	ldr	w8, [x0]
    80004b40:	5ac00909 	rev	w9, w8
    80004b44:	11003288 	add	w8, w20, #0xc
    80004b48:	0b090116 	add	w22, w8, w9
    80004b4c:	7100213f 	cmp	w9, #0x8
    80004b50:	54fffc43 	b.cc	80004ad8 <fdt_next_tag+0x80>  // b.lo, b.ul, b.last
    80004b54:	394052a9 	ldrb	w9, [x21, #20]
    80004b58:	53081d29 	lsl	w9, w9, #24
    80004b5c:	394056aa 	ldrb	w10, [x21, #21]
    80004b60:	33101d49 	bfi	w9, w10, #16, #8
    80004b64:	39405aaa 	ldrb	w10, [x21, #22]
    80004b68:	33181d49 	bfi	w9, w10, #8, #8
    80004b6c:	39405eaa 	ldrb	w10, [x21, #23]
    80004b70:	2a0a0129 	orr	w9, w9, w10
    80004b74:	71003d3f 	cmp	w9, #0xf
    80004b78:	54fffb08 	b.hi	80004ad8 <fdt_next_tag+0x80>  // b.pmore
    80004b7c:	110012c9 	add	w9, w22, #0x4
    80004b80:	7200091f 	tst	w8, #0x7
    80004b84:	1a8902d6 	csel	w22, w22, w9, eq  // eq = none
    80004b88:	17ffffd4 	b	80004ad8 <fdt_next_tag+0x80>
    80004b8c:	52800137 	mov	w23, #0x9                   	// #9
    80004b90:	f0000009 	adrp	x9, 80007000 <__stack_chk_guard>
    80004b94:	f94007e8 	ldr	x8, [sp, #8]
    80004b98:	f9400129 	ldr	x9, [x9]
    80004b9c:	eb08013f 	cmp	x9, x8
    80004ba0:	54000101 	b.ne	80004bc0 <fdt_next_tag+0x168>  // b.any
    80004ba4:	2a1703e0 	mov	w0, w23
    80004ba8:	a9447bfd 	ldp	x29, x30, [sp, #64]
    80004bac:	a9434ff4 	ldp	x20, x19, [sp, #48]
    80004bb0:	a94257f6 	ldp	x22, x21, [sp, #32]
    80004bb4:	a9415ff8 	ldp	x24, x23, [sp, #16]
    80004bb8:	910143ff 	add	sp, sp, #0x50
    80004bbc:	d65f03c0 	ret
    80004bc0:	97fffe4e 	bl	800044f8 <__stack_chk_fail>

0000000080004bc4 <fdt_get_string>:
    80004bc4:	d10103ff 	sub	sp, sp, #0x40
    80004bc8:	f9000bf5 	str	x21, [sp, #16]
    80004bcc:	a9024ff4 	stp	x20, x19, [sp, #32]
    80004bd0:	a9037bfd 	stp	x29, x30, [sp, #48]
    80004bd4:	9100c3fd 	add	x29, sp, #0x30
    80004bd8:	f0000008 	adrp	x8, 80007000 <__stack_chk_guard>
    80004bdc:	f9400108 	ldr	x8, [x8]
    80004be0:	aa0203f3 	mov	x19, x2
    80004be4:	2a0103f5 	mov	w21, w1
    80004be8:	aa0003f4 	mov	x20, x0
    80004bec:	f90007e8 	str	x8, [sp, #8]
    80004bf0:	97fffe6f 	bl	800045ac <fdt_ro_probe_>
    80004bf4:	37f80860 	tbnz	w0, #31, 80004d00 <fdt_get_string+0x13c>
    80004bf8:	39403288 	ldrb	w8, [x20, #12]
    80004bfc:	53081d08 	lsl	w8, w8, #24
    80004c00:	39403689 	ldrb	w9, [x20, #13]
    80004c04:	33101d28 	bfi	w8, w9, #16, #8
    80004c08:	39403a89 	ldrb	w9, [x20, #14]
    80004c0c:	33181d28 	bfi	w8, w9, #8, #8
    80004c10:	39403e89 	ldrb	w9, [x20, #15]
    80004c14:	2a090108 	orr	w8, w8, w9
    80004c18:	0b150108 	add	w8, w8, w21
    80004c1c:	6b080009 	subs	w9, w0, w8
    80004c20:	540006e9 	b.ls	80004cfc <fdt_get_string+0x138>  // b.plast
    80004c24:	3940028a 	ldrb	w10, [x20]
    80004c28:	53081d4a 	lsl	w10, w10, #24
    80004c2c:	3940068b 	ldrb	w11, [x20, #1]
    80004c30:	33101d6a 	bfi	w10, w11, #16, #8
    80004c34:	39400a8b 	ldrb	w11, [x20, #2]
    80004c38:	33181d6a 	bfi	w10, w11, #8, #8
    80004c3c:	39400e8b 	ldrb	w11, [x20, #3]
    80004c40:	2a0b014a 	orr	w10, w10, w11
    80004c44:	5280224b 	mov	w11, #0x112                 	// #274
    80004c48:	72a5fe4b 	movk	w11, #0x2ff2, lsl #16
    80004c4c:	6b0b015f 	cmp	w10, w11
    80004c50:	540003e0 	b.eq	80004ccc <fdt_get_string+0x108>  // b.none
    80004c54:	529fddab 	mov	w11, #0xfeed                	// #65261
    80004c58:	72ba01ab 	movk	w11, #0xd00d, lsl #16
    80004c5c:	6b0b015f 	cmp	w10, w11
    80004c60:	540006c1 	b.ne	80004d38 <fdt_get_string+0x174>  // b.any
    80004c64:	37f804d5 	tbnz	w21, #31, 80004cfc <fdt_get_string+0x138>
    80004c68:	3940528a 	ldrb	w10, [x20, #20]
    80004c6c:	53081d4a 	lsl	w10, w10, #24
    80004c70:	3940568b 	ldrb	w11, [x20, #21]
    80004c74:	33101d6a 	bfi	w10, w11, #16, #8
    80004c78:	39405a8b 	ldrb	w11, [x20, #22]
    80004c7c:	33181d6a 	bfi	w10, w11, #8, #8
    80004c80:	39405e8b 	ldrb	w11, [x20, #23]
    80004c84:	2a0b014a 	orr	w10, w10, w11
    80004c88:	7100455f 	cmp	w10, #0x11
    80004c8c:	54000663 	b.cc	80004d58 <fdt_get_string+0x194>  // b.lo, b.ul, b.last
    80004c90:	3940828a 	ldrb	w10, [x20, #32]
    80004c94:	53081d4a 	lsl	w10, w10, #24
    80004c98:	3940868b 	ldrb	w11, [x20, #33]
    80004c9c:	33101d6a 	bfi	w10, w11, #16, #8
    80004ca0:	39408a8b 	ldrb	w11, [x20, #34]
    80004ca4:	33181d6a 	bfi	w10, w11, #8, #8
    80004ca8:	39408e8b 	ldrb	w11, [x20, #35]
    80004cac:	2a0b014a 	orr	w10, w10, w11
    80004cb0:	6b15014a 	subs	w10, w10, w21
    80004cb4:	54000249 	b.ls	80004cfc <fdt_get_string+0x138>  // b.plast
    80004cb8:	6b09015f 	cmp	w10, w9
    80004cbc:	1a893149 	csel	w9, w10, w9, cc  // cc = lo, ul, last
    80004cc0:	ab284288 	adds	x8, x20, w8, uxtw
    80004cc4:	540004e1 	b.ne	80004d60 <fdt_get_string+0x19c>  // b.any
    80004cc8:	14000037 	b	80004da4 <fdt_get_string+0x1e0>
    80004ccc:	36f80195 	tbz	w21, #31, 80004cfc <fdt_get_string+0x138>
    80004cd0:	3940828a 	ldrb	w10, [x20, #32]
    80004cd4:	53081d4a 	lsl	w10, w10, #24
    80004cd8:	3940868b 	ldrb	w11, [x20, #33]
    80004cdc:	33101d6a 	bfi	w10, w11, #16, #8
    80004ce0:	39408a8b 	ldrb	w11, [x20, #34]
    80004ce4:	33181d6a 	bfi	w10, w11, #8, #8
    80004ce8:	39408e8b 	ldrb	w11, [x20, #35]
    80004cec:	2a0b014a 	orr	w10, w10, w11
    80004cf0:	4b0a03ea 	neg	w10, w10
    80004cf4:	6b15015f 	cmp	w10, w21
    80004cf8:	54000289 	b.ls	80004d48 <fdt_get_string+0x184>  // b.plast
    80004cfc:	12800060 	mov	w0, #0xfffffffc            	// #-4
    80004d00:	aa1f03e8 	mov	x8, xzr
    80004d04:	b4000053 	cbz	x19, 80004d0c <fdt_get_string+0x148>
    80004d08:	b9000260 	str	w0, [x19]
    80004d0c:	f000000a 	adrp	x10, 80007000 <__stack_chk_guard>
    80004d10:	f94007e9 	ldr	x9, [sp, #8]
    80004d14:	f940014a 	ldr	x10, [x10]
    80004d18:	eb09015f 	cmp	x10, x9
    80004d1c:	54000421 	b.ne	80004da0 <fdt_get_string+0x1dc>  // b.any
    80004d20:	a9437bfd 	ldp	x29, x30, [sp, #48]
    80004d24:	aa0803e0 	mov	x0, x8
    80004d28:	a9424ff4 	ldp	x20, x19, [sp, #32]
    80004d2c:	f9400bf5 	ldr	x21, [sp, #16]
    80004d30:	910103ff 	add	sp, sp, #0x40
    80004d34:	d65f03c0 	ret
    80004d38:	12800180 	mov	w0, #0xfffffff3            	// #-13
    80004d3c:	aa1f03e8 	mov	x8, xzr
    80004d40:	b5fffe53 	cbnz	x19, 80004d08 <fdt_get_string+0x144>
    80004d44:	17fffff2 	b	80004d0c <fdt_get_string+0x148>
    80004d48:	4b1503ea 	neg	w10, w21
    80004d4c:	93407d4a 	sxtw	x10, w10
    80004d50:	eb09015f 	cmp	x10, x9
    80004d54:	9a893149 	csel	x9, x10, x9, cc  // cc = lo, ul, last
    80004d58:	ab284288 	adds	x8, x20, w8, uxtw
    80004d5c:	54000240 	b.eq	80004da4 <fdt_get_string+0x1e0>  // b.none
    80004d60:	b4000129 	cbz	x9, 80004d84 <fdt_get_string+0x1c0>
    80004d64:	aa1f03ea 	mov	x10, xzr
    80004d68:	128000e0 	mov	w0, #0xfffffff8            	// #-8
    80004d6c:	386a690b 	ldrb	w11, [x8, x10]
    80004d70:	3400012b 	cbz	w11, 80004d94 <fdt_get_string+0x1d0>
    80004d74:	9100054a 	add	x10, x10, #0x1
    80004d78:	eb0a013f 	cmp	x9, x10
    80004d7c:	54ffff81 	b.ne	80004d6c <fdt_get_string+0x1a8>  // b.any
    80004d80:	17ffffe0 	b	80004d00 <fdt_get_string+0x13c>
    80004d84:	128000e0 	mov	w0, #0xfffffff8            	// #-8
    80004d88:	aa1f03e8 	mov	x8, xzr
    80004d8c:	b5fffbf3 	cbnz	x19, 80004d08 <fdt_get_string+0x144>
    80004d90:	17ffffdf 	b	80004d0c <fdt_get_string+0x148>
    80004d94:	b4fffbd3 	cbz	x19, 80004d0c <fdt_get_string+0x148>
    80004d98:	b900026a 	str	w10, [x19]
    80004d9c:	17ffffdc 	b	80004d0c <fdt_get_string+0x148>
    80004da0:	97fffdd6 	bl	800044f8 <__stack_chk_fail>
    80004da4:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004da8:	9107bc00 	add	x0, x0, #0x1ef
    80004dac:	b0000001 	adrp	x1, 80005000 <rodata_begin>
    80004db0:	910b4421 	add	x1, x1, #0x2d1
    80004db4:	b0000002 	adrp	x2, 80005000 <rodata_begin>
    80004db8:	910a7442 	add	x2, x2, #0x29d
    80004dbc:	52800d23 	mov	w3, #0x69                  	// #105
    80004dc0:	94000001 	bl	80004dc4 <panic>

0000000080004dc4 <panic>:
    80004dc4:	d10283ff 	sub	sp, sp, #0xa0
    80004dc8:	f90043f3 	str	x19, [sp, #128]
    80004dcc:	a9097bfd 	stp	x29, x30, [sp, #144]
    80004dd0:	910243fd 	add	x29, sp, #0x90
    80004dd4:	aa0003f3 	mov	x19, x0
    80004dd8:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004ddc:	91165c00 	add	x0, x0, #0x597
    80004de0:	a9008be1 	stp	x1, x2, [sp, #8]
    80004de4:	f9001fe7 	str	x7, [sp, #56]
    80004de8:	a90193e3 	stp	x3, x4, [sp, #24]
    80004dec:	a9029be5 	stp	x5, x6, [sp, #40]
    80004df0:	97fffda4 	bl	80004480 <dlog>
    80004df4:	910023e8 	add	x8, sp, #0x8
    80004df8:	9100e108 	add	x8, x8, #0x38
    80004dfc:	910043aa 	add	x10, x29, #0x10
    80004e00:	a93d23aa 	stp	x10, x8, [x29, #-48]
    80004e04:	128006e9 	mov	w9, #0xffffffc8            	// #-56
    80004e08:	a90423ea 	stp	x10, x8, [sp, #64]
    80004e0c:	f85e03a8 	ldur	x8, [x29, #-32]
    80004e10:	910103e1 	add	x1, sp, #0x40
    80004e14:	aa1303e0 	mov	x0, x19
    80004e18:	f81e83a9 	stur	x9, [x29, #-24]
    80004e1c:	a90527e8 	stp	x8, x9, [sp, #80]
    80004e20:	97fffafb 	bl	80003a0c <vdlog>
    80004e24:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004e28:	91240400 	add	x0, x0, #0x901
    80004e2c:	97fffd95 	bl	80004480 <dlog>
    80004e30:	97fffaee 	bl	800039e8 <abort>

0000000080004e34 <arch_power_off>:
    80004e34:	52800100 	mov	w0, #0x8                   	// #8
    80004e38:	72b08000 	movk	w0, #0x8400, lsl #16
    80004e3c:	aa1f03e1 	mov	x1, xzr
    80004e40:	aa1f03e2 	mov	x2, xzr
    80004e44:	aa1f03e3 	mov	x3, xzr
    80004e48:	aa1f03e4 	mov	x4, xzr
    80004e4c:	aa1f03e5 	mov	x5, xzr
    80004e50:	aa1f03e6 	mov	x6, xzr
    80004e54:	aa1f03e7 	mov	x7, xzr
    80004e58:	d4000003 	smc	#0x0
    80004e5c:	14000000 	b	80004e5c <arch_power_off+0x28>

0000000080004e60 <irq_current>:
    80004e60:	d100c3ff 	sub	sp, sp, #0x30
    80004e64:	f9000bf3 	str	x19, [sp, #16]
    80004e68:	a9027bfd 	stp	x29, x30, [sp, #32]
    80004e6c:	910083fd 	add	x29, sp, #0x20
    80004e70:	f0000008 	adrp	x8, 80007000 <__stack_chk_guard>
    80004e74:	f9400108 	ldr	x8, [x8]
    80004e78:	f90007e8 	str	x8, [sp, #8]
    80004e7c:	b0000033 	adrp	x19, 80009000 <global_context>
    80004e80:	91000273 	add	x19, x19, #0x0
    80004e84:	b9400268 	ldr	w8, [x19]
    80004e88:	11000508 	add	w8, w8, #0x1
    80004e8c:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004e90:	91183400 	add	x0, x0, #0x60d
    80004e94:	b0000001 	adrp	x1, 80005000 <rodata_begin>
    80004e98:	91095c21 	add	x1, x1, #0x257
    80004e9c:	52800422 	mov	w2, #0x21                  	// #33
    80004ea0:	b9000268 	str	w8, [x19]
    80004ea4:	97fffd77 	bl	80004480 <dlog>
    80004ea8:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004eac:	911c1000 	add	x0, x0, #0x704
    80004eb0:	97fffd74 	bl	80004480 <dlog>
    80004eb4:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004eb8:	91240400 	add	x0, x0, #0x901
    80004ebc:	97fffd71 	bl	80004480 <dlog>
    80004ec0:	f9400668 	ldr	x8, [x19, #8]
    80004ec4:	d63f0100 	blr	x8
    80004ec8:	f0000009 	adrp	x9, 80007000 <__stack_chk_guard>
    80004ecc:	f94007e8 	ldr	x8, [sp, #8]
    80004ed0:	f9400129 	ldr	x9, [x9]
    80004ed4:	eb08013f 	cmp	x9, x8
    80004ed8:	540000c1 	b.ne	80004ef0 <irq_current+0x90>  // b.any
    80004edc:	a9427bfd 	ldp	x29, x30, [sp, #32]
    80004ee0:	2a1f03e0 	mov	w0, wzr
    80004ee4:	f9400bf3 	ldr	x19, [sp, #16]
    80004ee8:	9100c3ff 	add	sp, sp, #0x30
    80004eec:	d65f03c0 	ret
    80004ef0:	97fffd82 	bl	800044f8 <__stack_chk_fail>

0000000080004ef4 <sync_exception_current>:
    80004ef4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    80004ef8:	910003fd 	mov	x29, sp
    80004efc:	94000001 	bl	80004f00 <default_sync_current_exception>

0000000080004f00 <default_sync_current_exception>:
    80004f00:	f81e0ff3 	str	x19, [sp, #-32]!
    80004f04:	a9017bfd 	stp	x29, x30, [sp, #16]
    80004f08:	910043fd 	add	x29, sp, #0x10
    80004f0c:	d5385213 	mrs	x19, esr_el1
    80004f10:	d35afe63 	lsr	x3, x19, #26
    80004f14:	f100947f 	cmp	x3, #0x25
    80004f18:	d5384021 	mrs	x1, elr_el1
    80004f1c:	54000161 	b.ne	80004f48 <default_sync_current_exception+0x48>  // b.any
    80004f20:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004f24:	9103a400 	add	x0, x0, #0xe9
    80004f28:	aa1303e2 	mov	x2, x19
    80004f2c:	97fffd55 	bl	80004480 <dlog>
    80004f30:	37500173 	tbnz	w19, #10, 80004f5c <default_sync_current_exception+0x5c>
    80004f34:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004f38:	91037c00 	add	x0, x0, #0xdf
    80004f3c:	d5386001 	mrs	x1, far_el1
    80004f40:	97fffd50 	bl	80004480 <dlog>
    80004f44:	14000009 	b	80004f68 <default_sync_current_exception+0x68>
    80004f48:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004f4c:	91175400 	add	x0, x0, #0x5d5
    80004f50:	aa1303e2 	mov	x2, x19
    80004f54:	97fffd4b 	bl	80004480 <dlog>
    80004f58:	14000007 	b	80004f74 <default_sync_current_exception+0x74>
    80004f5c:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004f60:	91078400 	add	x0, x0, #0x1e1
    80004f64:	97fffd47 	bl	80004480 <dlog>
    80004f68:	b0000000 	adrp	x0, 80005000 <rodata_begin>
    80004f6c:	91240400 	add	x0, x0, #0x901
    80004f70:	97fffd44 	bl	80004480 <dlog>
    80004f74:	14000000 	b	80004f74 <default_sync_current_exception+0x74>
