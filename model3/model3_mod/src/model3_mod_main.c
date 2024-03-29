/*
 * model3_mod_impl.c
 *
 * This file defines the actual implementation of the functions for 
 * model3_mod.
 */
#include <model3_mod_impl.h>
#include <processing.h>

/*
 * It is a good practice to make MCV shadow. That way host changes
 * are less likely to produce inconsistent state
 */
__memY mcv_t model3_mod_mcv_HOST = MCV_INITIAL_VALUES;
__memY mcv_t model3_mod_mcv;

extern __memY const pcm_sample_ptr_t __X_BY_IOBUFFER_PTRS[16];
extern fract gain1;

void __fg_call model3_mod_preKickstart(__memY void * mif_ptr)
{
	// <your code here>
}

void __fg_call model3_mod_postKickstart(void)
{
	// <your code here>
}

void __fg_call model3_mod_timer(void)
{
	// <your code here>
}

void __fg_call model3_mod_frame(void)
{
	// <your code here>
}

void __fg_call model3_mod_brick(void)
{
	if (model3_mod_mcv.enable) {
		processing(__X_BY_IOBUFFER_PTRS, __X_BY_IOBUFFER_PTRS);
	}
}

void __bg_call model3_mod_background(void)
{
	// make a shadow copy of the MCV so that changes won't affect this function
	model3_mod_mcv = model3_mod_mcv_HOST;

	// <your code here>
}

void __fg_call model3_mod_preMallocInit(void)
{
	// <your code here>
}

void __fg_call model3_mod_postMallocInit(void)
{
	// <your code here>
}
