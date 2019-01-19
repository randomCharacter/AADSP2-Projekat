	.public _second_order_IIR
	.code_ovly



_second_order_IIR:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = y3; i7 += 1			# LN: 15, 15 | 
	xmem[i7] = x2; i7 += 1			# LN: 15, 15 | 
	xmem[i7] = y2; i7 += 1			# LN: 15, 15 | 
	xmem[i7] = x3			# LN: 15 | 
	y3 = a0h; a0 = 0			# LN: 15, 20 | 
	x0 = xmem[i0]; i0 += 1; y0 = ymem[i4]			# LN: 20, 20, 25 | 
	x0 = xmem[i0]; y1 = ymem[i4]; a0 += x0 * y3			# LN: 21, 26, 20 | 
	x1 = xmem[i0]; i0 += 1; a0 = a0			# LN: 22, 22, 20 | 
	x2 = ymem[i1]			# LN: 21 | 
	x2 = ymem[i1]; a0 += x0 * x2			# LN: 22, 21 | 
	x0 = xmem[i0]; i0 += 1; a0 = a0			# LN: 23, 23, 21 | 
	i5 = i1			# LN: 22 | 
	i0 += 1; a0 += x1 * x2			# LN: 24, 22 | 
	i5 += 1			# LN: 22 | 
	a0 = a0; y2 = ymem[i5]			# LN: 22, 23 | 
	x1 = xmem[i0]; a0 += x0 * y2			# LN: 25, 23 | 
	x2 = xmem[i0]; i0 += 1; a0 = a0			# LN: 26, 26, 23 | 
	x3 = xmem[i0]; a0 -= x1 * y0			# LN: 27, 25 | 
	a0 = a0			# LN: 25 | 
	a1 = ymem[i4]; a0 -= x2 * y1			# LN: 29, 26 | 
	i0 = i4			# LN: 26 | 
	a0 = a0			# LN: 26 | 
	i0 += 1			# LN: 26 | 
	x0 = ymem[i0]			# LN: 27 | 
	x3 = xmem[i7]; i7 -= 1; a0 -= x3 * x0			# LN: 35, 35, 27 | 
	a0 = a0			# LN: 27 | 
	ymem[i0] = a1h			# LN: 29 | 
	ymem[i4] = a0h			# LN: 30 | 
	a1 = ymem[i1]			# LN: 31 | 
	ymem[i5] = a1h			# LN: 31 | 
	ymem[i1] = y3			# LN: 32 | 
	y2 = xmem[i7]; i7 -= 1			# LN: 35, 35 | 
	x2 = xmem[i7]; i7 -= 1			# LN: 35, 35 | 
	y3 = xmem[i7]			# LN: 35 | 
	ret			# LN: 35 | 
