#include "wav.h"

 uint32_t WavHeaderUpdate(uint8_t* pHeader, WAV_Format* wavFormatStruct,  uint32_t file_size)
{
	// Rewrite the value of the sampling time here.
	uint32_t header_file_size = file_size - 8;
	pHeader[4] = (uint8_t) (header_file_size);
	pHeader[5] = (uint8_t) (header_file_size >> 8);
	pHeader[6] = (uint8_t) (header_file_size >> 16);
	pHeader[7] = (uint8_t) (header_file_size >> 24);

	//rewrite the Value of sample data.
	uint32_t data_file_size = file_size - 44;
	pHeader[40] = (uint8_t) (data_file_size);
	pHeader[41] = (uint8_t) (data_file_size >> 8);
	pHeader[42] = (uint8_t) (data_file_size >> 16);
	pHeader[43] = (uint8_t) (data_file_size >> 24);

	return 0;
}

 /**
 	* @brief WAV Encoder initialisation.
 	* @param Freq: Sampling Frequency
 	* @param pHeader: Pointer to the WAV file header to be written
 	* @retval 0 if successful, !0 otherwise
   */
 uint32_t InitialiseWavEncoder(uint32_t Freq, uint8_t *pHeader, WAV_Format* WaveFormat)
 {

 	WaveFormat->SampleRate = Freq; // Audio sampling frequency @ 500KHz
 	//WaveFormat.SampleRate = 44100;
 	WaveFormat->NumChannels = 1; // Stereo;
 	WaveFormat->BitsPerSample = 16; // Useful bits per sample;
 	WaveFormat->FileSize = 0x003D0900; // 1.92MB Filesize - 8 bytes 8 bytes (which is size of "RIFF" + size of file header)
 	WaveFormat->SubChunk1Size = 16; // or should it be 16?
 	WaveFormat->ByteRate =  WaveFormat->SampleRate * (WaveFormat->BitsPerSample/8) * (WaveFormat->NumChannels);  // Bytes per second which is sample rate * block aligj

 	WaveFormat->BlockAlign = WaveFormat->NumChannels * (WaveFormat->BitsPerSample/8); // number of bytes in a frame

 	// Parse the rest of the data here.
 	// If function returns anything other than 1,
 	// break function.
 	 if(ProcessWavHeader(pHeader, WaveFormat) == 1)
 	 {
 		 return 1;
 	 }

 	 return 0;
 }
 /**
 	*	 @brief Initialise WAV Header
 	*	 @param pheader: Wave Header Buffer to completed
 	*  @param wavFormatStruct: Pointer to the wave struct
   *  @retval 0 if passed, !0 otherwise
 	*/
 uint32_t ProcessWavHeader(uint8_t* pHeader, WAV_Format* wavFormatStruct)
 {
 	 /***********Header*******************/
 	 //	Chunk which is always "RIFF"
 	 pHeader[0] = 'R';
 	 pHeader[1] = 'I';
 	 pHeader[2] = 'F';
 	 pHeader[3] = 'F';

 	// File length : Total length minus 8 bytes. Can always write back after each recording session.
 	//4000000 bytes = 0x003D0900
    pHeader[4] = 0x00;
 	 pHeader[5] = 0x00;
 	 pHeader[6] = 0x00;
 	 pHeader[7] = 0x00;

 	// File Format: "Always "WAVE" for WAV files
 	 pHeader[8]  = 'W';
 	 pHeader[9]  = 'A';
 	 pHeader[10] = 'V';
 	 pHeader[11] = 'E';

 	/*************Format Chunk*** add single space at end too ***/
 	 pHeader[12] = 'f';
 	 pHeader[13] = 'm';
 	 pHeader[14] = 't';
 	 pHeader[15] = ' ';

 	 // chunk size in bytes, 0x10
 	 pHeader[16] = 0x10;
 	 pHeader[17] = 0x00;
 	 pHeader[18] = 0x00;
 	 pHeader[19] = 0x00;

 	 // Audio Format. Always 1 for WAV files in PCM format
 	 pHeader[20] = 0x01;
 	 pHeader[21] = 0x00;

 	 // Number of channels: Mono 0x01 or stereo 0x02. Pass Struct member through
 	 pHeader[22] = wavFormatStruct->NumChannels;
 	 pHeader[23] = 0x00;

 		// Sample Rate in Hz -- To be written in little Endian.
 		// 500000 =  0x0007A120 ==> [24] = 0x20, 27 = 0x00
 		// This masks the 32 bit integers into single bytes
 		// https://stackoverflow.com/questions/10493411/what-is-bit-masking
 	 pHeader[24] = (uint8_t) ((wavFormatStruct->SampleRate & 0xFFFF));
 	 pHeader[25] = (uint8_t) ((wavFormatStruct->SampleRate >> 8 )& 0xFFFF);
 	 pHeader[26] = (uint8_t) ((wavFormatStruct->SampleRate >> 16)& 0xFFFF);
 	 pHeader[27] = (uint8_t) ((wavFormatStruct->SampleRate >> 24 )& 0xFFFF);

 	 /** Byte Rate***/
 	 pHeader[28] = (uint8_t) ((wavFormatStruct->ByteRate & 0xFFFF));
 	 pHeader[29] = (uint8_t) ((wavFormatStruct->ByteRate >> 8 )& 0xFFFF);
 	 pHeader[30] = (uint8_t) ((wavFormatStruct->ByteRate >> 16)& 0xFFFF);
 	 pHeader[31] = (uint8_t) ((wavFormatStruct->ByteRate >> 24 )& 0xFFFF);


 	/** Block ALignment usually takes up one byte **/
 	pHeader[32] = wavFormatStruct->BlockAlign;
 	pHeader[33] = 0x00;

 	pHeader[32] = 0x04;
 	pHeader[33] = 0x00;

 	/**** Bits per sample **/
 	pHeader[34]  = wavFormatStruct->BitsPerSample;
   pHeader[35]  = 0x00;

 	//pHeader[34]  = 0x10;
   //pHeader[35]  = 0x00;

 	/***************Data Chunk ************************/
    // Always "data"
   pHeader[36]  = 'd';
   pHeader[37]  = 'a';
   pHeader[38]  = 't';
   pHeader[39]  = 'a';

 	// Data Length or number of element in sample data
 	  /* This variable will be written back at the end of the recording operation */
   pHeader[40]  = 0x00;
   pHeader[41]  = 0x00;
   pHeader[42]  = 0x00;
   pHeader[43]  = 0x00;

 	//upon success
 	return 0;

 }
