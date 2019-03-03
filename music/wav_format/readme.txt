WAV文件格式分析解析，代码已附
WAVE文件作为多媒体中使用的声波文件格式之一，它是以RIFF格式为标准的。
RIFF是英文Resource Interchange File Format的缩写，每个WAVE文件的头四个
字节便是“RIFF”。
WAVE文件是由若干个Chunk组成的。按照在文件中的出现位置包括：RIFF WAVE
Chunk, Format Chunk, Fact Chunk(可选), Data Chunk。具体见下图：

------------------------------------------------
|             RIFF WAVE Chunk                  |
|             ID  = 'RIFF'                     |
|             RiffType = 'WAVE'                |
------------------------------------------------
|             Format Chunk                     |
|             ID = 'fmt '                      |
------------------------------------------------
|             Fact Chunk(optional)             |
|             ID = 'fact'                      |
------------------------------------------------
|             Data Chunk                       |
|             ID = 'data'                      |
------------------------------------------------
            图1   Wav格式包含Chunk示例

    其中除了Fact Chunk外，其他三个Chunk是必须的。每个Chunk有各自的ID，位
于Chunk最开始位置，作为标示，而且均为4个字节。并且紧跟在ID后面的是Chunk大
小（去除ID和Size所占的字节数后剩下的其他字节数目），4个字节表示，低字节
表示数值低位，高字节表示数值高位。下面具体介绍各个Chunk内容。
PS：
    所有数值表示均为低字节表示低位，高字节表示高位。

二、具体介绍
RIFF WAVE Chunk
    ==================================
    |       |所占字节数|  具体内容   |
    ==================================
    | ID    |  4 Bytes |   'RIFF'    |
    ----------------------------------
    | Size  |  4 Bytes |             |
    ----------------------------------
    | Type  |  4 Bytes |   'WAVE'    |
    ----------------------------------
            图2  RIFF WAVE Chunk

    以'FIFF'作为标示，然后紧跟着为size字段，该size是整个wav文件大小减去ID
和Size所占用的字节数，即FileLen - 8 = Size。然后是Type字段，为'WAVE'，表
示是wav文件。
    结构定义如下：
 struct RIFF_HEADER
 {
  char szRiffID[4];  // 'R','I','F','F'
  DWORD dwRiffSize;
  char szRiffFormat[4]; // 'W','A','V','E'
 };

 

Format Chunk
    ====================================================================
    |               |   字节数  |              具体内容                |
    ====================================================================
    | ID            |  4 Bytes  |   'fmt '                             |
    --------------------------------------------------------------------
    | Size          |  4 Bytes  | 数值为16或18，18则最后又附加信息     |
    --------------------------------------------------------------------  ----
    | FormatTag     |  2 Bytes  | 编码方式，一般为0x0001               |     |
    --------------------------------------------------------------------     |
    | Channels      |  2 Bytes  | 声道数目，1--单声道；2--双声道       |     |
    --------------------------------------------------------------------     |
    | SamplesPerSec |  4 Bytes  | 采样频率                             |     |
    --------------------------------------------------------------------     |
    | AvgBytesPerSec|  4 Bytes  | 每秒所需字节数                       |     |===> WAVE_FORMAT
    --------------------------------------------------------------------     |
    | BlockAlign    |  2 Bytes  | 数据块对齐单位(每个采样需要的字节数) |     |
    --------------------------------------------------------------------     |
    | BitsPerSample |  2 Bytes  | 每个采样需要的bit数                  |     |
    --------------------------------------------------------------------     |
    |               |  2 Bytes  | 附加信息（可选，通过Size来判断有无） |     |
    --------------------------------------------------------------------  ----
                            图3  Format Chunk

    以'fmt '作为标示。一般情况下Size为16，此时最后附加信息没有；如果为18
则最后多了2个字节的附加信息。主要由一些软件制成的wav格式中含有该2个字节的
附加信息。
    结构定义如下：
 struct WAVE_FORMAT
 {
  WORD wFormatTag;
  WORD wChannels;
  DWORD dwSamplesPerSec;
  DWORD dwAvgBytesPerSec;
  WORD wBlockAlign;
  WORD wBitsPerSample;
 };
 struct FMT_BLOCK
 {
  char  szFmtID[4]; // 'f','m','t',' '
  DWORD  dwFmtSize;
  WAVE_FORMAT wavFormat;
 };

补充头文件样例说明：

首先是一串“52 49 46 46”这个是Ascii字符“RIFF”，这部分是固定格式，表明这是一个WAVE文件头。
然后是“E4 3C 00 00”，这个是我这个WAV文件的数据大小，记住这个大小是包括头文件的一部分的，包括除了前面8个字节的所有字节，也就等于文件总字节数减去8。这是一个DWORD，我这个文件对应是15588。
然后是“57 41 56 45 66 6D 74 20”，也是Ascii字符“WAVEfmt”，这部分是固定格式。
然后是PCMWAVEFORMAT部分，可以对照一下上面的struct定义，首先就是一个WAVEFORMAT的struct。
随后是“10 00 00 00”，这是一个DWORD，对应数字16，这个对应定义中的Sizeof(PCMWAVEFORMAT)，后面我们可以看到这个段内容正好是16个字节。
随后的字节是“01 00”，这是一个WORD，对应定义为编码格式“WAVE_FORMAT_PCM”，我们一般用的是这个。
随后的是“01 00”，这是一个WORD，对应数字1，表示声道数为1，这是个单声道Wav。
随后的是“22 56 00 00”，这是一个DWORD，对应数字22050，代表的是采样频率22050。
随后的是“44 AC 00 00”，这是一个DWORD，对应数字44100，代表的是每秒的数据量。
然后是“02 00”，这是一个WORD，对应数字是2，表示块对齐的内容，含义不太清楚。
然后是“10 00”，这是一个WORD，对应WAVE文件的采样大小，数值为16，采样大小为16Bits。
然后是一串“64 61 74 61”，这个是Ascii字符“data”，标示头结束，开始数据区域。
而后是数据区的开头，有一个DWORD，我这里的字符是“C0 3C 00 00”，对应的十进制数为15552，看一下前面正好可以看到，文件大小是15596，其中到“data”标志出现为止的头是40个字节，再减去这个标志的4个字节正好是15552，再往后面就是真正的Wave文件的数据体了，头文件的解析就到这里。


Fact Chunk
    ==================================
    |       |所占字节数|  具体内容   |
    ==================================
    | ID    |  4 Bytes |   'fact'    |
    ----------------------------------
    | Size  |  4 Bytes |   数值为4   |
    ----------------------------------
    | data  |  4 Bytes |             |
    ----------------------------------
            图4  Fact Chunk

    Fact Chunk是可选字段，一般当wav文件由某些软件转化而成，则包含该Chunk。
    结构定义如下：
 struct FACT_BLOCK
 {
  char  szFactID[4]; // 'f','a','c','t'
  DWORD  dwFactSize;
 };

 

Data Chunk
    ==================================
    |       |所占字节数|  具体内容   |
    ==================================
    | ID    |  4 Bytes |   'data'    |
    ----------------------------------
    | Size  |  4 Bytes |             |
    ----------------------------------
    | data  |          |             |
    ----------------------------------
             图5 Data Chunk

    Data Chunk是真正保存wav数据的地方，以'data'作为该Chunk的标示。然后是
数据的大小。紧接着就是wav数据。根据Format Chunk中的声道数以及采样bit数，
wav数据的bit位置可以分成以下几种形式：
    ---------------------------------------------------------------------
    |   单声道    |    取样1    |    取样2    |    取样3    |    取样4    |
    |--------------------------------------------------------------------
    |  8bit量化   |    声道0    |    声道0    |    声道0    |    声道0    |
    ---------------------------------------------------------------------
    |   双声道    |          取样1            |           取样2           |
    |--------------------------------------------------------------------
    |  8bit量化   |  声道0(左)  |  声道1(右)  |  声道0(左)  |  声道1(右)  |


    ----------------------------------------------------------------------                                      

    |   单声道    |    取样1                  |            取样2           |
    |---------------------------------------------------------------------
    | 16bit量化   |    声道0       |  声道0   |    声道0       |  声道0    |
    |             | (低位字节)  | (高位字节)  | (低位字节)     | (高位字节)|
    -----------------------------------------------------------------------

    |   双声道    |    取样1                         |            取样2             |
    |-------------------------------------------------------------------------------
    | 16bit量化   |    声道0（左）  |  声道1（右）   |    声道0（左） |  声道1（右）|
    |             | (低位字节)      | (高位字节)     | (低位字节)     | (高位字节)  |
    ---------------------------------------------------------------------------------

                            图6 wav数据bit位置安排方式

    Data Chunk头结构定义如下：
    struct DATA_BLOCK
 {
  char szDataID[4]; // 'd','a','t','a'
  DWORD dwDataSize;
 };

代码区

、、、、、、、、、、、、、、、、、、、、、
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

、、、、、、、、、wav.h、、、、、、、、、、、、、、
typedef struct _wav_riff_t{
char id[5]; //ID:"RIFF"
int size; //file_len - 8
char type[5]; //type:"WAVE"
}wav_riff_t;


typedef struct _wav_format_t{
char id[5]; //ID:"fmt"
int size;
short compression_code;
short channels;
int samples_per_sec;
int avg_bytes_per_sec;
short block_align;
short bits_per_sample;
}wav_format_t;


typedef struct _wav_fact_t{
char id[5];
int size;
}wav_fact_t;


typedef struct _wav_data_t{
char id[5];
int size;
}wav_data_t;


typedef struct _wav_t{
FILE *fp;
wav_riff_t riff;
wav_format_t format;
wav_fact_t fact;
wav_data_t data;
int file_size;
int data_offset;
int data_size;
}wav_t;

 

wav_t *wav_open(char *file_name);

int strncasecmp(char *s1, char *s2, register int n);

void wav_close(wav_t **wav);

void wav_rewind(wav_t *wav);

int wav_over(wav_t *wav);

int wav_read_data(wav_t *wav, char *buffer, int buffer_size);

void wav_dump(wav_t *wav);

、、、、、、、、、、、、wav.c、、、、、、、、、、、、、、、

int strncasecmp(char *s1, char *s2, register int n)
{
while (--n >= 0 && toupper((unsigned char)*s1) == toupper((unsigned char)*s2++))
if (*s1++ == ' ') return 0;
return(n < 0 ? 0 : toupper((unsigned char)*s1) - toupper((unsigned char)*--s2));
}
wav_t *wav_open(char *file_name){
wav_t *wav = NULL; 
char buffer[256];
int read_len = 0;
int offset = 0;


if(NULL == file_name){
printf("file_name is NULL\n");
return NULL;
}
wav = (wav_t *)malloc(sizeof(wav_t));
if(NULL == wav){
printf("malloc wav failedly\n");
return NULL;
}
memset(wav, 0,sizeof(wav_t));

wav->fp = fopen(file_name, "rb+");
if(NULL == wav->fp){
printf("fopen %s failedly\n", file_name);
free(wav);
return NULL;
}

//handle RIFF WAVE chunk 
read_len = fread(buffer, 1, 12, wav->fp);
if(read_len < 12){
printf("error wav file\n");
wav_close(&wav);
return NULL;
}
if(strncasecmp("RIFF", buffer, 4)){
printf("error wav file\n");
wav_close(&wav);
return NULL;
}
memcpy(wav->riff.id, buffer, 4); 
wav->riff.size = *(int *)(buffer + 4);
if(strncasecmp("WAVE", buffer + 8, 4)){
printf("error wav file\n");
wav_close(&wav);
return NULL;
}
memcpy(wav->riff.type, buffer + 8, 4);
wav->file_size = wav->riff.size + 8;
offset += 12;
while(1){
char id_buffer[5] = {0};
int tmp_size = 0;

read_len = fread(buffer, 1, 8, wav->fp); 
if(read_len < 8){
printf("error wav file\n");
wav_close(&wav);
return NULL;
}
memcpy(id_buffer, buffer, 4);
tmp_size = *(int *)(buffer + 4);


if(0 == strncasecmp("FMT", id_buffer, 3)){
memcpy(wav->format.id, id_buffer, 3);
wav->format.size = tmp_size;
read_len = fread(buffer, 1, tmp_size, wav->fp);
if(read_len < tmp_size){
printf("error wav file\n");
wav_close(&wav);
return NULL;
}
wav->format.compression_code = *(short *)buffer;
wav->format.channels = *(short *)(buffer + 2);
wav->format.samples_per_sec = *(int *)(buffer + 4);
wav->format.avg_bytes_per_sec = *(int *)(buffer + 8);
wav->format.block_align = *(short *)(buffer + 12);
wav->format.bits_per_sample = *(short *)(buffer + 14);
}
else if(0 == strncasecmp("DATA", id_buffer, 4)){
memcpy(wav->data.id, id_buffer, 4); 
wav->data.size = tmp_size;
offset += 8;
wav->data_offset = offset;
wav->data_size = wav->data.size; 
break;
}
else{
printf("unhandled chunk: %s, size: %d\n", id_buffer, tmp_size);
fseek(wav->fp, tmp_size, SEEK_CUR);
}
offset += 8 + tmp_size;
}


return wav;
}


void wav_close(wav_t **wav){
wav_t *tmp_wav;
if(NULL == wav){
return ;
}


tmp_wav = *wav;
if(NULL == tmp_wav){
return ;
}


if(NULL != tmp_wav->fp){
fclose(tmp_wav->fp);
}
free(tmp_wav);


*wav = NULL;
}


void wav_rewind(wav_t *wav){
if(fseek(wav->fp, wav->data_offset, SEEK_SET) < 0){
printf("wav rewind failedly\n");
}
}


int wav_over(wav_t *wav){
return feof(wav->fp);
}


int wav_read_data(wav_t *wav, char *buffer, int buffer_size){
return fread(buffer, 1, buffer_size, wav->fp);
}


void wav_dump(wav_t *wav){
printf("file length: %d\n", wav->file_size);


printf("\nRIFF WAVE Chunk\n"); 
printf("id: %s\n", wav->riff.id);
printf("size: %d\n", wav->riff.size);
printf("type: %s\n", wav->riff.type);


printf("\nFORMAT Chunk\n");
printf("id: %s\n", wav->format.id);
printf("size: %d\n", wav->format.size);
if(wav->format.compression_code == 0){
printf("compression: Unknown\n");
}
else if(wav->format.compression_code == 1){
printf("compression: PCM/uncompressed\n");
}
else if(wav->format.compression_code == 2){
printf("compression: Microsoft ADPCM\n");
}
else if(wav->format.compression_code == 6){
printf("compression: ITU G.711 a-law\n");
}
else if(wav->format.compression_code == 7){
printf("compression: ITU G.711 ?μ-law\n");
}
else if(wav->format.compression_code == 17){
printf("compression: IMA ADPCM\n"); 
}
else if(wav->format.compression_code == 20){
printf("compression: ITU G.723 ADPCM (Yamaha)\n");
}
else if(wav->format.compression_code == 49){
printf("compression: GSM 6.10\n");
}
else if(wav->format.compression_code == 64){
printf("compression: ITU G.721 ADPCM\n");
}
else if(wav->format.compression_code == 80){
printf("compression: MPEG\n");
}
else{
printf("compression: Unknown\n");
}
printf("channels: %d\n", wav->format.channels);
printf("samples: %d\n", wav->format.samples_per_sec);
printf("avg_bytes_per_sec: %d\n", wav->format.avg_bytes_per_sec);
printf("block_align: %d\n", wav->format.block_align);
printf("bits_per_sample: %d\n", wav->format.bits_per_sample);


printf("\nDATA Chunk\n");
printf("id: %s\n", wav->data.id);
printf("size: %d\n", wav->data.size);
printf("data offset: %d\n", wav->data_offset);
}

///////////////////wav.c////////////////////

#include"wav.h"
int main(int argc, char **argv){
wav_t *wav = NULL;
wav = wav_open("your  filename");
if(NULL != wav){
wav_dump(wav);
wav_close(&wav);
}
return 1;
}

