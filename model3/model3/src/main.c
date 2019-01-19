/////////////////////////////////////////////////////////////////////////////////
// @file main.cpp
//
// Module: multitapEchoDSP
// Description:  Add multitap echo to input signal
// $Source: $
// $Revision: 1.0 $
// $Date: <date> $
// $Author: <student name> $
//
/////////////////////////////////////////////////////////////////////////////////
#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include <common.h>
#include <iir2.h>
#include <circbuff.h>
#include <common.h>

/////////////////////////////////////////////////////////////////////////////////
// IO buffers
/////////////////////////////////////////////////////////////////////////////////
__memY DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Gains
/////////////////////////////////////////////////////////////////////////////////
__memX DSPfract gain1 = FRACT_NUM(0.63095734448);
__memX DSPfract gain2 = FRACT_NUM(0.63095734448);
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Enable
/////////////////////////////////////////////////////////////////////////////////
__memX DSPint enable = 1;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Output mode
/////////////////////////////////////////////////////////////////////////////////
mode output_mode = MODE2_0_0;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Filter coefficients
/////////////////////////////////////////////////////////////////////////////////
__memX DSPfract __attribute__((__aligned__(8))) l_coefs[8] = { FRACT_NUM(0.6828), FRACT_NUM(0.68285), FRACT_NUM(0.6828), FRACT_NUM(1.0), FRACT_NUM(0.5657), FRACT_NUM(0.6) };
__memX DSPfract __attribute__((__aligned__(8))) c_coefs[8] = { FRACT_NUM(0.9617), FRACT_NUM(-0.9617), FRACT_NUM(0.9617), FRACT_NUM(1.0), FRACT_NUM(-0.9591), FRACT_NUM(0.9287) };
__memX DSPfract __attribute__((__aligned__(8))) ls_coefs[8] = { FRACT_NUM(0.4139), FRACT_NUM(0.0), FRACT_NUM(-0.4139), FRACT_NUM(1.0), FRACT_NUM(-0.3192), FRACT_NUM(0.1722) };
__memX DSPfract __attribute__((__aligned__(8))) rs_coefs[8] = { FRACT_NUM(0.4139), FRACT_NUM(0.0), FRACT_NUM(-0.4139), FRACT_NUM(1.0), FRACT_NUM(-0.3192), FRACT_NUM(0.1722) };
__memX DSPfract __attribute__((__aligned__(8))) r_coefs[8] = { FRACT_NUM(0.9617), FRACT_NUM(-0.9617), FRACT_NUM(0.9617), FRACT_NUM(1.0), FRACT_NUM(-0.9591), FRACT_NUM(0.9287) };
__memX DSPfract __attribute__((__aligned__(8))) lfe_coefs[8] = { FRACT_NUM(0.6828), FRACT_NUM(0.68285), FRACT_NUM(0.6828), FRACT_NUM(1.0), FRACT_NUM(0.5657), FRACT_NUM(0.6) };
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// History
/////////////////////////////////////////////////////////////////////////////////
__memY DSPfract l_x_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract l_y_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract c_x_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract c_y_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract ls_x_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract ls_y_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract rs_x_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract rs_y_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract r_x_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract r_y_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract lfe_x_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };
__memY DSPfract lfe_y_history[2] = { FRACT_NUM(0.0), FRACT_NUM(0.0) };

void processing() {
        DSPint i;
        DSPfract __memY* sampleBuffer_l = sampleBuffer[CH_L];
        DSPfract __memY* sampleBuffer_r = sampleBuffer[CH_R];
        DSPfract __memY* sampleBuffer_c = sampleBuffer[CH_C];
        DSPfract __memY* sampleBuffer_ls = sampleBuffer[CH_LS];
        DSPfract __memY* sampleBuffer_rs = sampleBuffer[CH_RS];
        DSPfract __memY* sampleBuffer_lfe = sampleBuffer[CH_LFE];

        for (i = 0; i < BLOCK_SIZE; i++) {
                if (output_mode != MODE2_0_0) {
                        *sampleBuffer_c = second_order_IIR(gain1 * *sampleBuffer_l, c_coefs, c_x_history, c_y_history);
                        *sampleBuffer_ls = second_order_IIR(gain1 * *sampleBuffer_l, ls_coefs, ls_x_history, ls_y_history);
                        *sampleBuffer_rs = second_order_IIR(gain2 * *sampleBuffer_l, rs_coefs, rs_x_history, rs_y_history);
                }
                if (output_mode == MODE3_2_1) {
                        *sampleBuffer_lfe = second_order_IIR(gain2 * *sampleBuffer_l, lfe_coefs, lfe_x_history, lfe_y_history);
                }
                *sampleBuffer_r = second_order_IIR(gain2 * *sampleBuffer_l, r_coefs, r_x_history, r_y_history);
                *sampleBuffer_l = second_order_IIR(gain1 * *sampleBuffer_l, l_coefs, l_x_history, l_y_history);

                sampleBuffer_l++;
                sampleBuffer_r++;
                sampleBuffer_c++;
                sampleBuffer_ls++;
                sampleBuffer_rs++;
                sampleBuffer_lfe++;
        }
}

/////////////////////////////////////////////////////////////////////////////////
// @Author    <student name>
// @Date        <date>  
//
// Function:
// main
//
// @param - nothing
// @return - nothing
// Comment: main routine of a program
//
/////////////////////////////////////////////////////////////////////////////////

int main(int argc, char *argv[])
 {

    WAVREAD_HANDLE * wav_in;
    WAVWRITE_HANDLE * wav_out;

	char WavInputName[256];
	char WavOutputName[256];

    int nChannels;
	int bitsPerSample;
    int sampleRate;
    int iNumSamples;

    // Check params
    //-------------------------------------------------
    if (argc > 3) {
    	if (strcmp(argv[3], "0") == 0) {
    		enable = 0;
    	}
    }
    //MODE2_0_0, MODE3_2_0, MODE3_2_1
    if (argc > 4) {
    	if (strcmp(argv[2], "3_2_0") == 0) {
    		output_mode = MODE3_2_0;
    	} else if (strcmp(argv[2], "3_2_1") == 0) {
    		output_mode  = MODE3_2_1;
    	} else if (strcmp(argv[2], "2_0_0") == 0) {
    		output_mode  = MODE2_0_0;
    	} else {
            printf("Error: Unknown mode.\n");
    		return -1;
    	}
    }
    //-------------------------------------------------

	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName, argv[0]);
	wav_in = cl_wavread_open(WavInputName);
	if(wav_in == NULL)
    {
        printf("Error: Could not open input wavefile.\n");
        return -1;
    }
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	nChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------

	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName, argv[1]);
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, CHN_NO, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open output wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Processing loop
	//-------------------------------------------------
    {
		int i;
		int j;
		int k;
		int sample;
		int bound = iNumSamples/BLOCK_SIZE;

		for(i=0; i< bound; i++)
		{
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{
					sample = cl_wavread_recvsample(wav_in);
					sampleBuffer[k][j] = rbits(sample);
				}
			}

			// Do processing...
			//-------------------------------------------------
			if (enable) {
				processing();
			}
			//-------------------------------------------------

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<CHN_NO; k++)
				{
					sample = bitsr(sampleBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}
		}
	}

	// Close files
	//-------------------------------------------------
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------

    return 0;
 }
