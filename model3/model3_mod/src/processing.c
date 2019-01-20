#include <common.h>
#include <model3_mod_impl.h>
#include <iir2.h>

static int __X_VY_BLOCK_SIZE = 16;
/////////////////////////////////////////////////////////////////////////////////
// Gains
/////////////////////////////////////////////////////////////////////////////////
__memX fract gain1 = 0.63095734448;
__memX fract gain2 = 0.63095734448;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Enable
/////////////////////////////////////////////////////////////////////////////////
__memX int enable = 1;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Output mode
/////////////////////////////////////////////////////////////////////////////////
mode output_mode = MODE2_0_0;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Filter coefficients
/////////////////////////////////////////////////////////////////////////////////
__memX fract l_coefs[] = { (0.6828), (0.68285), (0.6828), (1.0), (0.5657), (0.6) };
__memX fract c_coefs[] = { (0.9617), (-0.9617), (0.9617), (1.0), (-0.9591), (0.9287) };
__memX fract ls_coefs[] = { (0.4139), (0.0), (-0.4139), (1.0), (-0.3192), (0.1722) };
__memX fract rs_coefs[] = { (0.4139), (0.0), (-0.4139), (1.0), (-0.3192), (0.1722) };
__memX fract r_coefs[] = { (0.9617), (-0.9617), (0.9617), (1.0), (-0.9591), (0.9287) };
__memX fract lfe_coefs[] = { (0.6828), (0.68285), (0.6828), (1.0), (0.5657), (0.6) };
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// History
/////////////////////////////////////////////////////////////////////////////////
__memY fract l_x_history[2] = { (0.0), (0.0) };
__memY fract l_y_history[2] = { (0.0), (0.0) };
__memY fract c_x_history[2] = { (0.0), (0.0) };
__memY fract c_y_history[2] = { (0.0), (0.0) };
__memY fract ls_x_history[2] = { (0.0), (0.0) };
__memY fract ls_y_history[2] = { (0.0), (0.0) };
__memY fract rs_x_history[2] = { (0.0), (0.0) };
__memY fract rs_y_history[2] = { (0.0), (0.0) };
__memY fract r_x_history[2] = { (0.0), (0.0) };
__memY fract r_y_history[2] = { (0.0), (0.0) };
__memY fract lfe_x_history[2] = { (0.0), (0.0) };
__memY fract lfe_y_history[2] = { (0.0), (0.0) };

void processing(const pcm_sample_ptr_t __memY *inputBuffer, pcm_sample_ptr_t __memY *outputBuffer) {
        int i;
        pcm_sample_ptr_t inputBuffer_l = inputBuffer[CH_L];
        pcm_sample_ptr_t sampleBuffer_l = outputBuffer[CH_L];
        pcm_sample_ptr_t sampleBuffer_r = outputBuffer[CH_R];
        pcm_sample_ptr_t sampleBuffer_c = outputBuffer[CH_C];
        pcm_sample_ptr_t sampleBuffer_ls = outputBuffer[CH_LS];
        pcm_sample_ptr_t sampleBuffer_rs = outputBuffer[CH_RS];
        pcm_sample_ptr_t sampleBuffer_lfe = outputBuffer[CH_LFE];

        for (i = 0; i < __X_VY_BLOCK_SIZE; i++) {
                if (output_mode != MODE2_0_0) {
                        *sampleBuffer_c = second_order_IIR(model3_mod_mcv.gain1 * *inputBuffer_l, c_coefs, c_x_history, c_y_history);
                        *sampleBuffer_ls = second_order_IIR(model3_mod_mcv.gain1 * *inputBuffer_l, ls_coefs, ls_x_history, ls_y_history);
                        *sampleBuffer_rs = second_order_IIR(model3_mod_mcv.gain2 * *inputBuffer_l, rs_coefs, rs_x_history, rs_y_history);
                }
                if (output_mode == MODE3_2_1) {
                        *sampleBuffer_lfe = second_order_IIR(model3_mod_mcv.gain2 * *inputBuffer_l, lfe_coefs, lfe_x_history, lfe_y_history);
                }
                *sampleBuffer_r = second_order_IIR(model3_mod_mcv.gain2 * *inputBuffer_l, r_coefs, r_x_history, r_y_history);
                *sampleBuffer_l = second_order_IIR(model3_mod_mcv.gain1 * *inputBuffer_l, l_coefs, l_x_history, l_y_history);

                sampleBuffer_l++;
                sampleBuffer_r++;
                sampleBuffer_c++;
                sampleBuffer_ls++;
                sampleBuffer_rs++;
                sampleBuffer_lfe++;
        }
}
