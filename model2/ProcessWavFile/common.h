#pragma once
#include <math.h>

#include "fixed_point_math.h"
#include "stdfix_emu.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define CHN_NO 6

#define DB_TO_LINEAR(X) pow(10.0, ((X) / 20.0))

enum mode { MODE2_0_0, MODE3_2_0, MODE3_2_1 };

#define CH_L   0
#define CH_R   1
#define CH_C   2
#define CH_LS  3
#define CH_RS  4
#define CH_LFE 5

typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
typedef fract DSPfract;					/* DSP fixed-point fractional */
typedef long_accum DSPaccum;			/* DSP fixed-point fractional */
