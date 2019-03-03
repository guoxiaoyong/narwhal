#include "wav.h"

int main(int argc, char **argv) {
  wav_t *wav = NULL;
  wav = wav_open(argv[1]);
  if(NULL != wav) {
    wav_dump(wav);
    wav_close(&wav);
  }
  return 1;
}
