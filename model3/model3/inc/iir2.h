#ifndef __IIR2_H_INCLUDED__
#define __IIR2_H_INCLUDED__

#include "common.h"

DSPfract second_order_IIR(DSPfract input, DSPfract __memX * coefficients, DSPfract __memY * x_history, DSPfract __memY * y_history);

#endif // __IIR2_H_INCLUDED__
