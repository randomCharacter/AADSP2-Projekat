#ifndef __COMMON_H__
#define __COMMON_H__

typedef enum mode_e { MODE2_0_0, MODE3_2_0, MODE3_2_1 } mode;

#define CH_L   0
#define CH_R   1
#define CH_C   2
#define CH_LS  3
#define CH_RS  4
#define CH_LFE 5

/* DSP type definitions */
typedef short DSPshort;					/* DSP integer */
typedef unsigned short DSPushort;		/* DSP unsigned integer */
typedef int DSPint;						/* native integer */
//typedef fract DSPfract;				    /* DSP fixed-point fractional */


#endif
