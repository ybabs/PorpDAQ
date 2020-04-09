#ifndef WAV_H
#define WAV_H

#ifdef __cplusplus
extern "C" {
#endif


#include "main.h"

#define AUDIO_FREQ 400000
#define NBR_AUDIO_CHANNEL 1
#define DEFAULT_REC_TIME  2


typedef struct {

	uint32_t ChunkID; // 0: ID is 4 bytes and used to identify data in the block
	uint32_t FileSize; /* 4*/
	uint32_t FileFormat; /* 8 */
	uint32_t SubChunk1ID; /* 12 */
	uint32_t SubChunk1Size; //16
	uint16_t AudioFormat; //20
	uint16_t NumChannels; //22
	uint32_t SampleRate; // 24
	uint32_t ByteRate;   //28
	uint16_t BlockAlign; //32
	uint16_t BitsPerSample; //34
	uint32_t SubChunk2ID; //36
	uint32_t SubChunk2Size; //40
}WAV_Format;

 extern uint32_t InitialiseWavEncoder(uint32_t Freq, uint8_t *pHeader, WAV_Format* wavFormatStruct);
 extern uint32_t ProcessWavHeader(uint8_t* pHeader, WAV_Format* wavFormatStruct);
 extern uint32_t WavHeaderUpdate(uint8_t* pHeader, WAV_Format* wavFormatStruct, uint32_t file_size);

#ifdef __cplusplus
}
#endif


#endif /* __WAV_H */
