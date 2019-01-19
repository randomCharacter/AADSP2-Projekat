	.public _c_coefs
	.public _c_x_history
	.public _c_y_history
	.public _enable
	.public _gain1
	.public _gain2
	.public _l_coefs
	.public _l_x_history
	.public _l_y_history
	.public _lfe_coefs
	.public _lfe_x_history
	.public _lfe_y_history
	.public _ls_coefs
	.public _ls_x_history
	.public _ls_y_history
	.public _output_mode
	.public _r_coefs
	.public _r_x_history
	.public _r_y_history
	.public _rs_coefs
	.public _rs_x_history
	.public _rs_y_history
	.public _sampleBuffer
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.extern _printf
	.public _processing
	.extern _second_order_IIR
	.extern _strcmp
	.extern _strcpy
	.extern __div
	.xdata_ovly
_c_coefs
	.dw  (0x7b18fc50)
	.dw  (0x84e703b0)
	.dw  (0x7b18fc50)
	.dw  (0x7fffffff)
	.dw  (0x853c3611)
	.dw  (0x76dfa440)
	.ydata_ovly
_c_x_history
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_c_y_history
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_enable
	.dw  (0x1)
	.xdata_ovly
_gain1
	.dw  (0x50c335d4)
	.xdata_ovly
_gain2
	.dw  (0x50c335d4)
	.xdata_ovly
_l_coefs
	.dw  (0x5765fd8b)
	.dw  (0x5767a0f9)
	.dw  (0x5765fd8b)
	.dw  (0x7fffffff)
	.dw  (0x4868db8c)
	.dw  (0x4ccccccd)
	.ydata_ovly
_l_x_history
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_l_y_history
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_lfe_coefs
	.dw  (0x5765fd8b)
	.dw  (0x5767a0f9)
	.dw  (0x5765fd8b)
	.dw  (0x7fffffff)
	.dw  (0x4868db8c)
	.dw  (0x4ccccccd)
	.ydata_ovly
_lfe_x_history
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_lfe_y_history
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_ls_coefs
	.dw  (0x34faacda)
	.dw  (0x0)
	.dw  (0xcb055326)
	.dw  (0x7fffffff)
	.dw  (0xd7247454)
	.dw  (0x160aa64c)
	.ydata_ovly
_ls_x_history
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_ls_y_history
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_output_mode
	.dw  (0x0)
	.xdata_ovly
_r_coefs
	.dw  (0x7b18fc50)
	.dw  (0x84e703b0)
	.dw  (0x7b18fc50)
	.dw  (0x7fffffff)
	.dw  (0x853c3611)
	.dw  (0x76dfa440)
	.ydata_ovly
_r_x_history
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_r_y_history
	.dw  (0x0)
	.dw  (0x0)
	.xdata_ovly
_rs_coefs
	.dw  (0x34faacda)
	.dw  (0x0)
	.dw  (0xcb055326)
	.dw  (0x7fffffff)
	.dw  (0xd7247454)
	.dw  (0x160aa64c)
	.ydata_ovly
_rs_x_history
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_rs_y_history
	.dw  (0x0)
	.dw  (0x0)
	.ydata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x33)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x33)
	.dw  (0x5f)
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x31)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x32)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x5f)
	.dw  (0x30)
	.dw  (0x0)
	.xdata_ovly
_string_const_4
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x55)
	.dw  (0x6e)
	.dw  (0x6b)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x77)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x6d)
	.dw  (0x6f)
	.dw  (0x64)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_5
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x69)
	.dw  (0x6e)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_6
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x70)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = a2g; i7 += 1			# LN: 115, 115 | 
	xmem[i7] = a2h; i7 += 1			# LN: 115, 115 | 
	xmem[i7] = a2l; i7 += 1			# LN: 115, 115 | 
	xmem[i7] = i2; i7 += 1			# LN: 115, 115 | 
	xmem[i7] = i3; i7 += 1			# LN: 115, 115 | 
	xmem[i7] = a3g; i7 += 1			# LN: 115, 115 | 
	xmem[i7] = a3h; i7 += 1			# LN: 115, 115 | 
	xmem[i7] = a3l; i7 += 1			# LN: 115, 115 | 
	a2 =+ a0			# LN: 115 | 
	i7 = i7 + (0x200)			# LN: 115 | 
	i2 = i0			# LN: 115 | 
	uhalfword(a0) = (0x3)			# LN: 131 | 
	a2 - a0			# LN: 131 | 
	if (a <= 0) jmp (else_2)			# LN: 131 | 
	i0 = i2 + (0x3)			# LN: 132 | 
	i0 = xmem[i0]			# LN: 132 | 
	i1 = (0) + (_string_const_0)			# LN: 132 | 
	call (_strcmp)			# LN: 132 | 
	a0 & a0			# LN: 132 | 
	if (a != 0) jmp (else_2)			# LN: 132 | 
	a0 = 0			# LN: 133 | 
	xmem[_enable + 0] = a0h			# LN: 133 | 
endif_2:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x4)			# LN: 137 | 
	a2 - a0			# LN: 137 | 
	if (a <= 0) jmp (else_4)			# LN: 137 | 
	i0 = i2			# LN: 138 | 
	i1 = (0) + (_string_const_1)			# LN: 138 | 
	i0 += 2			# LN: 138 | 
	i0 = xmem[i0]			# LN: 138 | 
	call (_strcmp)			# LN: 138 | 
	a0 & a0			# LN: 138 | 
	if (a != 0) jmp (else_5)			# LN: 138 | 
	uhalfword(a0) = (0x1)			# LN: 139 | 
	xmem[_output_mode + 0] = a0h			# LN: 139 | 
	jmp (else_4)			# LN: 139 | 
else_5:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 140 | 
	i1 = (0) + (_string_const_2)			# LN: 140 | 
	i0 += 2			# LN: 140 | 
	i0 = xmem[i0]			# LN: 140 | 
	call (_strcmp)			# LN: 140 | 
	a0 & a0			# LN: 140 | 
	if (a != 0) jmp (else_6)			# LN: 140 | 
	uhalfword(a0) = (0x2)			# LN: 141 | 
	xmem[_output_mode + 0] = a0h			# LN: 141 | 
	jmp (else_4)			# LN: 141 | 
else_6:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 142 | 
	i1 = (0) + (_string_const_3)			# LN: 142 | 
	i0 += 2			# LN: 142 | 
	i0 = xmem[i0]			# LN: 142 | 
	call (_strcmp)			# LN: 142 | 
	a0 & a0			# LN: 142 | 
	if (a != 0) jmp (else_7)			# LN: 142 | 
	a0 = 0			# LN: 143 | 
	xmem[_output_mode + 0] = a0h			# LN: 143 | 
	jmp (else_4)			# LN: 143 | 
else_7:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_4)			# LN: 145 | 
	call (_printf)			# LN: 145 | 
	halfword(a0) = (0xffff)			# LN: 146 | 
	jmp (__epilogue_226)			# LN: 146 | 
endif_4:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i1 = xmem[i2]			# LN: 153 | 
	i0 = i7 - (256 - 0)			# LN: 153 | 
	call (_strcpy)			# LN: 153 | 
	i0 = i7 - (256 - 0)			# LN: 154 | 
	call (_cl_wavread_open)			# LN: 154 | 
	AnyReg(i3, a0h)			# LN: 154 | 
	a0 = i3			# LN: 155 | 
	a0 & a0			# LN: 155 | 
	if (a != 0) jmp (else_8)			# LN: 155 | 
	i0 = (0) + (_string_const_5)			# LN: 157 | 
	call (_printf)			# LN: 157 | 
	halfword(a0) = (0xffff)			# LN: 158 | 
	jmp (__epilogue_226)			# LN: 158 | 
endif_8:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i3			# LN: 164 | 
	call (_cl_wavread_getnchannels)			# LN: 164 | 
	i2 += 1; a2 =+ a0			# LN: 172, 164 | 
	i0 = i3			# LN: 165 | 
	call (_cl_wavread_bits_per_sample)			# LN: 165 | 
	a1 =+ a0			# LN: 165 | 
	i0 = i3			# LN: 166 | 
	call (_cl_wavread_frame_rate)			# LN: 166 | 
	b0 =+ a0			# LN: 166 | 
	i0 = i3			# LN: 167 | 
	call (_cl_wavread_number_of_frames)			# LN: 167 | 
	i0 = i7 - (512 - 0)			# LN: 172 | 
	i1 = xmem[i2]			# LN: 172 | 
	b1 =+ a0			# LN: 167 | 
	call (_strcpy)			# LN: 172 | 
	i0 = i7 - (512 - 0)			# LN: 173 | 
	a0 =+ a1			# LN: 173 | 
	uhalfword(a1) = (0x6)			# LN: 173 | 
	call (_cl_wavwrite_open)			# LN: 173 | 
	AnyReg(i2, a0h)			# LN: 173 | 
	a0 = i2			# LN: 174 | 
	a0 & a0			# LN: 174 | 
	if (a != 0) jmp (else_9)			# LN: 174 | 
	i0 = (0) + (_string_const_6)			# LN: 176 | 
	call (_printf)			# LN: 176 | 
	halfword(a0) = (0xffff)			# LN: 177 | 
	jmp (__epilogue_226)			# LN: 177 | 
endif_9:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 174 | CYCLE: 0 | RULES: () */ 
	uhalfword(a1) = (0x10)			# LN: 188 | 
	a0 =+ b1			# LN: 188 | 
	call (__div)			# LN: 188 | 
	AnyReg(i0, a0h)			# LN: 190 | 
	nop #empty cycle
	do (i0), label_end_97			# LN: 190 | 
label_begin_97:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	a3 = 0			# LN: 192 | 
	do (0x10), label_end_94			# LN: 192 | 
label_begin_94:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	AnyReg(i0, a2h)			# LN: 194 | 
	b0 = 0			# LN: 194 | 
	do (i0), label_end_93			# LN: 194 | 
label_begin_93:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	i0 = i3			# LN: 196 | 
	call (_cl_wavread_recvsample)			# LN: 196 | 
	a1 =+ a0; b1 =+ b0			# LN: 196, 197 | 
	b1 = b1 << 4			# LN: 197 | 
	i0 = b1; a0 =+ a1			# LN: 197, 197 | 
	uhalfword(a1) = (0x1)			# LN: 194 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 197 | 
	b1 = i0; b0 = b0 + a1			# LN: 197, 194 | 
	a1 = a3 + b1			# LN: 197 | 
	AnyReg(i0, a1h)			# LN: 197 | 
	nop #empty cycle
label_end_93:			# LN: 194 | CYCLE: 11 | RULES: ()
	ymem[i0] = a0h			# LN: 197 | 
init_latch_label_2:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 192 | 
label_end_94:			# LN: 192 | CYCLE: 1 | RULES: ()
	a3 = a3 + a0			# LN: 192 | 
for_end_2:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_enable + 0]			# LN: 203 | 
	a0 & a0			# LN: 203 | 
	if (a == 0) jmp (else_10)			# LN: 203 | 
	call (_processing)			# LN: 204 | 
endif_10:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 203 | CYCLE: 0 | RULES: () */ 
	a1 = 0			# LN: 208 | 
	do (0x10), label_end_96			# LN: 208 | 
label_begin_96:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
	b0 = 0			# LN: 210 | 
	do (0x6), label_end_95			# LN: 210 | 
label_begin_95:			/* LN: 210 | CYCLE: 0 | RULES: () */ 
	a0 =+ b0			# LN: 212 | 
	a0 = a0 << 4			# LN: 212 | 
	i1 = a0			# LN: 212 | 
	i0 = i2			# LN: 213 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 212 | 
	a0 = i1			# LN: 212 | 
	a0 = a0 + a1			# LN: 212 | 
	AnyReg(i1, a0h)			# LN: 212 | 
	uhalfword(a0) = (0x1)			# LN: 210 | 
	b1 = ymem[i1]; b0 = b0 + a0			# LN: 212, 210 | 
	a0 =+ b1			# LN: 212 | 
label_end_95:			# LN: 210 | CYCLE: 11 | RULES: ()
	call (_cl_wavwrite_sendsample)			# LN: 213 | 
init_latch_label_4:			/* LN: 215 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 210 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 208 | 
label_end_96:			# LN: 208 | CYCLE: 1 | RULES: ()
	a1 = a1 + a0			# LN: 208 | 
init_latch_label_5:			/* LN: 216 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 208 | CYCLE: 0 | RULES: () */ 
label_end_97:			# LN: 190 | CYCLE: 0 | RULES: ()
	nop #empty cycle
for_end_1:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	i0 = i3			# LN: 221 | 
	call (_cl_wavread_close)			# LN: 221 | 
	i0 = i2			# LN: 222 | 
	call (_cl_wavwrite_close)			# LN: 222 | 
	a0 = 0			# LN: 225 | 
__epilogue_226:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x200)			# LN: 226 | 
	i7 -= 1			# LN: 226 | 
	a3l = xmem[i7]; i7 -= 1			# LN: 226, 226 | 
	a3h = xmem[i7]; i7 -= 1			# LN: 226, 226 | 
	a3g = xmem[i7]; i7 -= 1			# LN: 226, 226 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 226, 226 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 226, 226 | 
	a2l = xmem[i7]; i7 -= 1			# LN: 226, 226 | 
	a2h = xmem[i7]; i7 -= 1			# LN: 226, 226 | 
	a2g = xmem[i7]			# LN: 226 | 
	ret			# LN: 226 | 



_processing:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i2; i7 += 1			# LN: 72, 72 | 
	xmem[i7] = i3; i7 += 1			# LN: 72, 72 | 
	xmem[i7] = i6; i7 += 1			# LN: 72, 72 | 
	i7 = i7 + (0x4)			# LN: 72 | 
	i2 = (0) + (_sampleBuffer + 0)			# LN: 74 | 
	i3 = (0) + (_sampleBuffer + 16)			# LN: 75 | 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 76 | 
	i1 = i7 - (0x4)			# LN: 76 | 
	xmem[i1] = i0			# LN: 76 | 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 77 | 
	i1 = i7 - (0x3)			# LN: 77 | 
	xmem[i1] = i0			# LN: 77 | 
	i0 = (0) + (_sampleBuffer + 64)			# LN: 78 | 
	i1 = i7 - (0x2)			# LN: 78 | 
	xmem[i1] = i0			# LN: 78 | 
	i0 = (0) + (_sampleBuffer + 80)			# LN: 79 | 
	i1 = i7 - (0x1)			# LN: 79 | 
	xmem[i1] = i0			# LN: 79 | 
	do (0x10), label_end_92			# LN: 81 | 
label_begin_92:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_output_mode + 0]			# LN: 82 | 
	a0 & a0			# LN: 82 | 
	if (a == 0) jmp (else_0)			# LN: 82 | 
	x0 = ymem[i2]			# LN: 83 | 
	x1 = xmem[_gain1 + 0]			# LN: 83 | 
	a0 = x1 * x0			# LN: 83 | 
	a0 = a0			# LN: 83 | 
	i0 = (0) + (_c_coefs)			# LN: 83 | 
	i1 = (0) + (_c_x_history)			# LN: 83 | 
	i4 = (0) + (_c_y_history)			# LN: 83 | 
	call (_second_order_IIR)			# LN: 83 | 
	i0 = i7 - (0x4)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	x1 = xmem[_gain1 + 0]			# LN: 84 | 
	ymem[i0] = a0h			# LN: 83 | 
	x0 = ymem[i2]			# LN: 84 | 
	a0 = x1 * x0			# LN: 84 | 
	a0 = a0			# LN: 84 | 
	i0 = (0) + (_ls_coefs)			# LN: 84 | 
	i1 = (0) + (_ls_x_history)			# LN: 84 | 
	i4 = (0) + (_ls_y_history)			# LN: 84 | 
	call (_second_order_IIR)			# LN: 84 | 
	i0 = i7 - (0x3)			# LN: 84 | 
	i0 = xmem[i0]			# LN: 84 | 
	x1 = xmem[_gain2 + 0]			# LN: 85 | 
	ymem[i0] = a0h			# LN: 84 | 
	x0 = ymem[i2]			# LN: 85 | 
	a0 = x1 * x0			# LN: 85 | 
	a0 = a0			# LN: 85 | 
	i0 = (0) + (_rs_coefs)			# LN: 85 | 
	i1 = (0) + (_rs_x_history)			# LN: 85 | 
	i4 = (0) + (_rs_y_history)			# LN: 85 | 
	call (_second_order_IIR)			# LN: 85 | 
	i0 = i7 - (0x2)			# LN: 85 | 
	i0 = xmem[i0]			# LN: 85 | 
	nop #empty cycle
	ymem[i0] = a0h			# LN: 85 | 
endif_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_output_mode + 0]			# LN: 87 | 
	uhalfword(a1) = (0x2)			# LN: 87 | 
	a0 - a1			# LN: 87 | 
	if (a != 0) jmp (else_1)			# LN: 87 | 
	x0 = ymem[i2]			# LN: 88 | 
	x1 = xmem[_gain2 + 0]			# LN: 88 | 
	a0 = x1 * x0			# LN: 88 | 
	a0 = a0			# LN: 88 | 
	i0 = (0) + (_lfe_coefs)			# LN: 88 | 
	i1 = (0) + (_lfe_x_history)			# LN: 88 | 
	i4 = (0) + (_lfe_y_history)			# LN: 88 | 
	call (_second_order_IIR)			# LN: 88 | 
	i0 = i7 - (0x1)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	nop #empty cycle
	ymem[i0] = a0h			# LN: 88 | 
endif_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	x0 = ymem[i2]			# LN: 90 | 
	i0 = i7 - (0x4)			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	x1 = xmem[_gain2 + 0]			# LN: 90 | 
	i0 += 1; a0 = x1 * x0			# LN: 95, 90 | 
	i1 = i7 - (0x4)			# LN: 95 | 
	xmem[i1] = i0			# LN: 95 | 
	a0 = a0			# LN: 90 | 
	i0 = (0) + (_r_coefs)			# LN: 90 | 
	i4 = i7 - (0x3)			# LN: 96 | 
	i4 = xmem[i4]			# LN: 96 | 
	i5 = (0) + (_r_y_history)			# LN: 90 | 
	i4 += 1			# LN: 96 | 
	i6 = i7 - (0x3)			# LN: 96 | 
	xmem[i6] = i4			# LN: 96 | 
	i4 = i5			# LN: 90 | 
	i1 = (0) + (_r_x_history)			# LN: 90 | 
	call (_second_order_IIR)			# LN: 90 | 
	i0 = i7 - (0x2)			# LN: 97 | 
	i0 = xmem[i0]			# LN: 97 | 
	i1 = i7 - (0x2)			# LN: 97 | 
	i0 += 1			# LN: 97 | 
	xmem[i1] = i0			# LN: 97 | 
	ymem[i3] = a0h; i3 += 1			# LN: 90, 94 | 
	x0 = ymem[i2]			# LN: 91 | 
	i0 = i7 - (0x1)			# LN: 98 | 
	i0 = xmem[i0]			# LN: 98 | 
	x1 = xmem[_gain1 + 0]			# LN: 91 | 
	i0 += 1; a0 = x1 * x0			# LN: 98, 91 | 
	i1 = i7 - (0x1)			# LN: 98 | 
	xmem[i1] = i0			# LN: 98 | 
	a0 = a0			# LN: 91 | 
	i0 = (0) + (_l_coefs)			# LN: 91 | 
	i1 = (0) + (_l_x_history)			# LN: 91 | 
	i4 = (0) + (_l_y_history)			# LN: 91 | 
	call (_second_order_IIR)			# LN: 91 | 
label_end_92:			# LN: 81 | CYCLE: 36 | RULES: ()
	ymem[i2] = a0h; i2 += 1			# LN: 91, 93 | 
for_end_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x4)			# LN: 100 | 
	i7 -= 1			# LN: 100 | 
	i6 = xmem[i7]; i7 -= 1			# LN: 100, 100 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 100, 100 | 
	i2 = xmem[i7]			# LN: 100 | 
	ret			# LN: 100 | 
