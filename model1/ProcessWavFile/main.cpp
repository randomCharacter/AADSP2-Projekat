
#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"
#include "iir2.h"
#include "common.h"

// Buffer
double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

// Gain
static double gain1 = DB_TO_LINEAR(-4);
static double gain2 = DB_TO_LINEAR(-4);

// Enable
static int enable = 1;

// Output mode
static mode output_mode = MODE2_0_0;

// Filter coeficients
static double l_coefs[] = { (0.6828), (1.3657), (0.6828), (1.0), (1.1314), (0.6) };
static double c_coefs[] = { (0.9617), (-1.9234), (0.9617), (1.0), (-1.9182), (0.9287) };
static double ls_coefs[] = { (0.4139), (0.0), (-0.4139), (1.0), (-0.6384), (0.1722) };
static double rs_coefs[] = { (0.4139), (0.0), (-0.4139), (1.0), (-0.6384), (0.1722) };
static double r_coefs[] = { (0.9617), (-1.9234), (0.9617), (1.0), (-1.9182), (0.9287) };
static double lfe_coefs[] = { (0.6828), (1.3657), (0.6828), (1.0), (1.1314), (0.6) };

// History
static double l_x_history[2];
static double l_y_history[2];
static double c_x_history[2];
static double c_y_history[2];
static double ls_x_history[2];
static double ls_y_history[2];
static double rs_x_history[2];
static double rs_y_history[2];
static double r_x_history[2];
static double r_y_history[2];
static double lfe_x_history[2];
static double lfe_y_history[2];

void processing() {
	int i;
	double *sampleBuffer_l = sampleBuffer[CH_L];
	double *sampleBuffer_r = sampleBuffer[CH_R];
	double *sampleBuffer_c = sampleBuffer[CH_C];
	double *sampleBuffer_ls = sampleBuffer[CH_LS];
	double *sampleBuffer_rs = sampleBuffer[CH_RS];
	double *sampleBuffer_lfe = sampleBuffer[CH_LFE];

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

int main(int argc, char* argv[])
{
	if (argc < 3 || argc > 6) {
		printf("Wrong number of arguments\n");
		printf("Usage: %s INPUT OUTPUT [Enable] [G1] [G2]  [MODE]\n", argv[0]);
		printf("Enable = [0|1]\n G1,G2 = [0,1]\n MODE = [\"2_0_0\"|\"3_2_0\"|\"3_2_1\"\n");
		return -1;
	}

	// Check mode
	if (argc > 6) {
		if (strcmp(argv[9], "3_2_0") == 0) {
			output_mode = MODE3_2_0;
		} else if (strcmp(argv[9], "2_0_0") == 0) {
			output_mode = MODE2_0_0;
		} else if (strcmp(argv[9], "3_2_1") == 0) {
			output_mode = MODE3_2_1;
		} else {
			printf("Wrong mode!\n");
			return -2;
		}
	}
	
	if (argc > 5) {
		double gain2_db = atof(argv[5]);
		if (gain2_db <= 0) {
			gain2 = DB_TO_LINEAR(gain2_db);
		}
		else {
			gain2 = 0;
		}
	}

	// G1
	if (argc > 4) {
		double gain1_db = atof(argv[4]);
		if (gain1_db <= 0) {
			gain1 = DB_TO_LINEAR(gain1_db);
		}
		else {
			gain1 = 0;
		}
	}

	// Enable
	if (argc > 3) {
		if (strcmp(argv[3], "0") != 0) {
			enable = 1;
		}
	}
	
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;

	// Init channel buffers
	for(int i = 0; i < MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i], 0, BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName, argv[1]);
	wav_in = OpenWavFileForRead (WavInputName, "rb");
	strcpy(WavOutputName, argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName, "wb");
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = CHN_NO; // change number of channels

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out, outputWAVhdr);

	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
		// exact file length should be handled correctly...
		for(int i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range
				}
			}

			if (enable) {
				processing();
			}

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				for(int k=0; k<outputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = sampleBuffer[k][j] * SAMPLE_SCALE ;	// crude, non-rounding
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample/8, 1, wav_out);		
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}