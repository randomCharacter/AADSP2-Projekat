/** @file model3_mod_impl.h
 *
 *  This file declares implementation data types for 
 *  model3_mod.
 */
 
#ifndef model3_mod_IMPL_H_
#define model3_mod_IMPL_H_ 

#include <stdfix.h>
#include <dsplib/cl_os.h>
#include <model3_mod_mcv.h>
#include <model3_mod_module.h>

extern __memY mcv_t model3_mod_mcv_HOST;
extern __memY mcv_t model3_mod_mcv;

extern void __fg_call model3_mod_preKickstart(__memY void * mif_ptr);
extern void __fg_call model3_mod_postKickstart(void);
extern void __fg_call model3_mod_timer(void);
extern void __fg_call model3_mod_frame(void);
extern void __fg_call model3_mod_brick(void);
extern void __bg_call model3_mod_background(void);
extern void __fg_call model3_mod_postMallocInit(void);
extern void __fg_call model3_mod_preMallocInit(void);

#endif
