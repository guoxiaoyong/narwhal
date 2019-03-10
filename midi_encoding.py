import base64
import functools
import sys

import mido


@functools.lru_cache(maxsize=128)
def _b64_char_to_num(char):
  letters = [chr(x) for x in range(ord('A'), ord('Z')+1)]
  cap_letters = [chr(x) for x in range(ord('a'), ord('z')+1)]
  nums = [chr(x) for x in range(ord('0'), ord('9')+1)]
  letters = letters + cap_letters + nums + ['+', '/', '=']
  return letters.index(char)


def _encode(content):
  encoded =base64.b64encode(content).decode()
  nums = [_b64_char_to_num(x) for x in encoded]
  return nums


def encode_to_midi(content):
  nums = _encode(content)

  mid = mido.MidiFile()
  track = mido.MidiTrack()
  mid.tracks.append(track)
  for num in nums:
    note = num + 20
    track.append(mido.Message('note_on', note=note, velocity=64, time=32))
    track.append(mido.Message('note_off', note=note, velocity=127, time=32))
  return mid


def main(argv):
  filename = argv[1]
  with open(filename, 'rb') as infile:
    content = infile.read()
  mid = encode_to_midi(content)
  mid.save('new_song.mid')


if __name__ == '__main__':
  main(sys.argv)
