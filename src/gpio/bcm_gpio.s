	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"bcm_gpio.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	bcm_gpio_write
	.syntax unified
	.arm
	.fpu vfp
	.type	bcm_gpio_write, %function
bcm_gpio_write:
.LFB0:
	.file 1 "./src/bcm_gpio.c"
	.loc 1 8 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	.loc 1 11 0
	bl	bcm2835_init
	mov	r3, r0
	str	r3, [fp, #-12]
	.loc 1 13 0
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L2
	.loc 1 13 0 is_stmt 0 discriminator 1
	mov	r3, #-2147483641
	str	r3, [fp, #-8]
.L2:
	.loc 1 14 0 is_stmt 1
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L3
	.loc 1 14 0 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L4
.L3:
	.loc 1 16 0 is_stmt 1
	ldr	r3, [fp, #-16]
	uxtb	r3, r3
	mov	r1, #1
	mov	r0, r3
	bl	bcm2835_gpio_fsel
	.loc 1 18 0
	ldr	r3, [fp, #-16]
	uxtb	r3, r3
	ldr	r2, [fp, #-20]
	uxtb	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	bcm2835_gpio_write
	.loc 1 20 0
	bl	bcm2835_close
	mov	r3, r0
	str	r3, [fp, #-12]
	.loc 1 22 0
	ldr	r3, [fp, #-12]
.L4:
	.loc 1 23 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE0:
	.size	bcm_gpio_write, .-bcm_gpio_write
	.align	2
	.global	bcm_gpio_read
	.syntax unified
	.arm
	.fpu vfp
	.type	bcm_gpio_read, %function
bcm_gpio_read:
.LFB1:
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	.loc 1 29 0
	bl	bcm2835_init
	mov	r3, r0
	str	r3, [fp, #-12]
	.loc 1 31 0
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L6
	.loc 1 31 0 is_stmt 0 discriminator 1
	mov	r3, #-2147483641
	str	r3, [fp, #-8]
.L6:
	.loc 1 32 0 is_stmt 1
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L7
	.loc 1 32 0 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-8]
	b	.L8
.L7:
	.loc 1 34 0 is_stmt 1
	ldr	r3, [fp, #-16]
	uxtb	r3, r3
	mov	r1, #0
	mov	r0, r3
	bl	bcm2835_gpio_fsel
	.loc 1 36 0
	ldr	r3, [fp, #-16]
	uxtb	r3, r3
	mov	r0, r3
	bl	bcm2835_gpio_lev
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	.loc 1 38 0
	bl	bcm2835_close
	mov	r3, r0
	str	r3, [fp, #-12]
	.loc 1 40 0
	ldr	r3, [fp, #-12]
.L8:
	.loc 1 41 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE1:
	.size	bcm_gpio_read, .-bcm_gpio_read
.Letext0:
	.file 2 "../../hdr/HIL_types.h"
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/local/include/bcm2835.h"
	.file 5 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stddef.h"
	.file 6 "/usr/include/arm-linux-gnueabihf/bits/types.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/arm-linux-gnueabihf/bits/sys_errlist.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4d4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xc
	.4byte	.LASF86
	.4byte	.LASF87
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF0
	.uleb128 0x3
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x25
	.4byte	0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x38
	.4byte	0x2c
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x3
	.byte	0x30
	.4byte	0x53
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x33
	.4byte	0x94
	.uleb128 0x7
	.4byte	0x84
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x25f
	.4byte	0xae
	.uleb128 0x4
	.byte	0x4
	.4byte	0x84
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x261
	.4byte	0x84
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x264
	.4byte	0xae
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x269
	.4byte	0xd8
	.uleb128 0x4
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x26e
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x273
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x278
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x27d
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x282
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x287
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x28c
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x291
	.4byte	0xd8
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x296
	.4byte	0xd8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x94
	.byte	0x4
	.2byte	0x2d9
	.4byte	0x18e
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x5
	.byte	0xd8
	.4byte	0x94
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x6
	.byte	0x37
	.4byte	0x72
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x6
	.byte	0x83
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x6
	.byte	0x84
	.4byte	0x199
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1c9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF39
	.uleb128 0xc
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x98
	.byte	0x7
	.byte	0xf1
	.4byte	0x352
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x7
	.byte	0xf2
	.4byte	0x6b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x7
	.byte	0xf7
	.4byte	0x1c3
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x7
	.byte	0xf8
	.4byte	0x1c3
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x7
	.byte	0xf9
	.4byte	0x1c3
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.byte	0xfa
	.4byte	0x1c3
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x7
	.byte	0xfb
	.4byte	0x1c3
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x7
	.byte	0xfc
	.4byte	0x1c3
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x7
	.byte	0xfd
	.4byte	0x1c3
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x7
	.byte	0xfe
	.4byte	0x1c3
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x100
	.4byte	0x1c3
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x7
	.2byte	0x101
	.4byte	0x1c3
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x7
	.2byte	0x102
	.4byte	0x1c3
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x104
	.4byte	0x38a
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x7
	.2byte	0x106
	.4byte	0x390
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x7
	.2byte	0x108
	.4byte	0x6b
	.byte	0x38
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x7
	.2byte	0x10c
	.4byte	0x6b
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x10e
	.4byte	0x1a4
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x112
	.4byte	0x45
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x113
	.4byte	0x4c
	.byte	0x46
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x114
	.4byte	0x396
	.byte	0x47
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x118
	.4byte	0x3a6
	.byte	0x48
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x121
	.4byte	0x1af
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x129
	.4byte	0x1c1
	.byte	0x58
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x12a
	.4byte	0x1c1
	.byte	0x5c
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x12b
	.4byte	0x1c1
	.byte	0x60
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x12c
	.4byte	0x1c1
	.byte	0x64
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x12e
	.4byte	0x18e
	.byte	0x68
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x12f
	.4byte	0x6b
	.byte	0x6c
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x131
	.4byte	0x3ac
	.byte	0x70
	.byte	0
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x7
	.byte	0x96
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xc
	.byte	0x7
	.byte	0x9c
	.4byte	0x38a
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x7
	.byte	0x9d
	.4byte	0x38a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x7
	.byte	0x9e
	.4byte	0x390
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x7
	.byte	0xa2
	.4byte	0x6b
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x359
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d5
	.uleb128 0x11
	.4byte	0x1c9
	.4byte	0x3a6
	.uleb128 0x12
	.4byte	0x1ba
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x352
	.uleb128 0x11
	.4byte	0x1c9
	.4byte	0x3bc
	.uleb128 0x12
	.4byte	0x1ba
	.byte	0x27
	.byte	0
	.uleb128 0x13
	.4byte	.LASF89
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x13b
	.4byte	0x3bc
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x13c
	.4byte	0x3bc
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x13d
	.4byte	0x3bc
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d0
	.uleb128 0xc
	.4byte	0x3e5
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x8
	.byte	0xaa
	.4byte	0x390
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x8
	.byte	0xab
	.4byte	0x390
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x8
	.byte	0xac
	.4byte	0x390
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x9
	.byte	0x1a
	.4byte	0x6b
	.uleb128 0x11
	.4byte	0x3eb
	.4byte	0x427
	.uleb128 0x15
	.byte	0
	.uleb128 0xc
	.4byte	0x41c
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x9
	.byte	0x1b
	.4byte	0x427
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0x19
	.4byte	0x60
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x489
	.uleb128 0x17
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x19
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x1
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x1
	.byte	0x1b
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x1
	.byte	0x1c
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x1
	.byte	0x7
	.4byte	0x60
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x7
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x1
	.byte	0x7
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x1
	.byte	0x9
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF85:
	.ascii	"GNU C11 6.3.0 20170516 -march=armv6 -mfloat-abi=har"
	.ascii	"d -mfpu=vfp -mtls-dialect=gnu -g\000"
.LASF41:
	.ascii	"_IO_read_ptr\000"
.LASF53:
	.ascii	"_chain\000"
.LASF34:
	.ascii	"size_t\000"
.LASF59:
	.ascii	"_shortbuf\000"
.LASF26:
	.ascii	"BCM2835_GPIO_FSEL_OUTP\000"
.LASF12:
	.ascii	"bcm2835_peripherals_base\000"
.LASF76:
	.ascii	"_IO_2_1_stderr_\000"
.LASF47:
	.ascii	"_IO_buf_base\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF7:
	.ascii	"long long int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF90:
	.ascii	"bcm_gpio_read\000"
.LASF6:
	.ascii	"HIL_RESULT\000"
.LASF27:
	.ascii	"BCM2835_GPIO_FSEL_ALT0\000"
.LASF28:
	.ascii	"BCM2835_GPIO_FSEL_ALT1\000"
.LASF29:
	.ascii	"BCM2835_GPIO_FSEL_ALT2\000"
.LASF15:
	.ascii	"bcm2835_st\000"
.LASF31:
	.ascii	"BCM2835_GPIO_FSEL_ALT4\000"
.LASF32:
	.ascii	"BCM2835_GPIO_FSEL_ALT5\000"
.LASF54:
	.ascii	"_fileno\000"
.LASF0:
	.ascii	"long int\000"
.LASF40:
	.ascii	"_flags\000"
.LASF48:
	.ascii	"_IO_buf_end\000"
.LASF57:
	.ascii	"_cur_column\000"
.LASF14:
	.ascii	"bcm2835_peripherals\000"
.LASF35:
	.ascii	"__quad_t\000"
.LASF56:
	.ascii	"_old_offset\000"
.LASF61:
	.ascii	"_offset\000"
.LASF86:
	.ascii	"./src/bcm_gpio.c\000"
.LASF82:
	.ascii	"value\000"
.LASF23:
	.ascii	"bcm2835_aux\000"
.LASF77:
	.ascii	"stdin\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"bcm2835_clk\000"
.LASF1:
	.ascii	"long unsigned int\000"
.LASF89:
	.ascii	"_IO_FILE_plus\000"
.LASF45:
	.ascii	"_IO_write_ptr\000"
.LASF80:
	.ascii	"sys_nerr\000"
.LASF16:
	.ascii	"bcm2835_gpio\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF49:
	.ascii	"_IO_save_base\000"
.LASF17:
	.ascii	"bcm2835_pwm\000"
.LASF60:
	.ascii	"_lock\000"
.LASF87:
	.ascii	"/home/pi/Desktop/gpio_control/src/gpio\000"
.LASF55:
	.ascii	"_flags2\000"
.LASF19:
	.ascii	"bcm2835_pads\000"
.LASF78:
	.ascii	"stdout\000"
.LASF21:
	.ascii	"bcm2835_bsc0\000"
.LASF22:
	.ascii	"bcm2835_bsc1\000"
.LASF25:
	.ascii	"BCM2835_GPIO_FSEL_INPT\000"
.LASF74:
	.ascii	"_IO_2_1_stdin_\000"
.LASF42:
	.ascii	"_IO_read_end\000"
.LASF38:
	.ascii	"sizetype\000"
.LASF46:
	.ascii	"_IO_write_end\000"
.LASF88:
	.ascii	"_IO_lock_t\000"
.LASF69:
	.ascii	"_IO_FILE\000"
.LASF36:
	.ascii	"__off_t\000"
.LASF67:
	.ascii	"_mode\000"
.LASF70:
	.ascii	"_IO_marker\000"
.LASF73:
	.ascii	"_pos\000"
.LASF81:
	.ascii	"sys_errlist\000"
.LASF52:
	.ascii	"_markers\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF2:
	.ascii	"short int\000"
.LASF13:
	.ascii	"bcm2835_peripherals_size\000"
.LASF83:
	.ascii	"ret_val\000"
.LASF58:
	.ascii	"_vtable_offset\000"
.LASF75:
	.ascii	"_IO_2_1_stdout_\000"
.LASF30:
	.ascii	"BCM2835_GPIO_FSEL_ALT3\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF39:
	.ascii	"char\000"
.LASF33:
	.ascii	"BCM2835_GPIO_FSEL_MASK\000"
.LASF71:
	.ascii	"_next\000"
.LASF37:
	.ascii	"__off64_t\000"
.LASF43:
	.ascii	"_IO_read_base\000"
.LASF51:
	.ascii	"_IO_save_end\000"
.LASF62:
	.ascii	"__pad1\000"
.LASF63:
	.ascii	"__pad2\000"
.LASF64:
	.ascii	"__pad3\000"
.LASF65:
	.ascii	"__pad4\000"
.LASF66:
	.ascii	"__pad5\000"
.LASF68:
	.ascii	"_unused2\000"
.LASF79:
	.ascii	"stderr\000"
.LASF91:
	.ascii	"bcm_gpio_write\000"
.LASF8:
	.ascii	"uint8_t\000"
.LASF50:
	.ascii	"_IO_backup_base\000"
.LASF20:
	.ascii	"bcm2835_spi0\000"
.LASF24:
	.ascii	"bcm2835_spi1\000"
.LASF44:
	.ascii	"_IO_write_base\000"
.LASF84:
	.ascii	"result\000"
.LASF72:
	.ascii	"_sbuf\000"
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
