#ifndef __IIR2_H_INCLUDED__
#define __IIR2_H_INCLUDED__

#include "common.h"

fract second_order_IIR(fract input, fract __memX * coefficients, fract __memY * x_history, fract __memY * y_history);

#endif // __IIR2_H_INCLUDED__
