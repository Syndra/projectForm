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
	.file	"HIL_gpio.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	gpio_write
	.syntax unified
	.arm
	.fpu vfp
	.type	gpio_write, %function
gpio_write:
.LFB0:
	.file 1 "./src/HIL_gpio.c"
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
	.loc 1 12 0
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	dev_gpio_write
	str	r0, [fp, #-8]
	.loc 1 15 0
	ldr	r3, [fp, #-8]
	.loc 1 16 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE0:
	.size	gpio_write, .-gpio_write
	.align	2
	.global	gpio_read
	.syntax unified
	.arm
	.fpu vfp
	.type	gpio_read, %function
gpio_read:
.LFB1:
	.loc 1 18 0
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
	.loc 1 22 0
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	dev_gpio_read
	str	r0, [fp, #-8]
	.loc 1 25 0
	ldr	r3, [fp, #-8]
	.loc 1 26 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE1:
	.size	gpio_read, .-gpio_read
.Letext0:
	.file 2 "../../hdr/HIL_types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF9
	.byte	0xc
	.4byte	.LASF10
	.4byte	.LASF11
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
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x12
	.4byte	0x60
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6
	.uleb128 0x8
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF7
	.byte	0x1
	.byte	0x12
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF8
	.byte	0x1
	.byte	0x13
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x8
	.4byte	0x60
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF7
	.byte	0x1
	.byte	0x8
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF8
	.byte	0x1
	.byte	0x9
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
.LASF9:
	.ascii	"GNU C11 6.3.0 20170516 -march=armv6 -mfloat-abi=har"
	.ascii	"d -mfpu=vfp -mtls-dialect=gnu -g\000"
.LASF13:
	.ascii	"gpio_write\000"
.LASF12:
	.ascii	"gpio_read\000"
.LASF10:
	.ascii	"./src/HIL_gpio.c\000"
.LASF1:
	.ascii	"long unsigned int\000"
.LASF11:
	.ascii	"/home/pi/Desktop/gpio_control/src/gpio\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF8:
	.ascii	"result\000"
.LASF0:
	.ascii	"long int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF7:
	.ascii	"value\000"
.LASF6:
	.ascii	"HIL_RESULT\000"
.LASF2:
	.ascii	"short int\000"
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
