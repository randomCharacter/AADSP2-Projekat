/*
 * model3_mod.c
 *
 * This file defines the data structures necessary for a module that fits into
 * the Cirrus Logic OS Framework.
 */
#include <model3_mod_impl.h>
 
/*
 * Define the MCT for model3_mod
 */
static __memY mct_t model3_mod_mct = {
	&model3_mod_preKickstart,			// prekick function
	&model3_mod_postKickstart,			// postkick function
	&model3_mod_timer,					// timer function
	&model3_mod_frame,					// frame function
	&model3_mod_brick,					// block function
	0,										// reserved
	&model3_mod_background,			// background function
	&model3_mod_postMallocInit,		// post-malloc function
	&model3_mod_preMallocInit			// pre-malloc function
};

/* 
 * Define the MIF for model3_mod
 */
__memY mif_t model3_mod_mif = {
	&model3_mod_mcv_HOST,
	&model3_mod_mct
};
