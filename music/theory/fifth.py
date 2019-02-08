import sys

def get_note(index):
  m = index % 12
  flat = '♭'
  sharp = '♯'
  note_tbl = [
    ('C', 'C'),
    ('C#', 'Db'),
    ('D', 'D'),
    ('D#', 'Eb'),
    ('E', 'E'),
    ('F', 'F'),
    ('F#', 'Gb'),
    ('G', 'G'),
    ('G#', 'Ab'),
    ('A', 'A'),
    ('A#', 'Bb'),
    ('B', 'B'),
  ]
  note = note_tbl[m]
  if note[0] == note[1]:
    return note[0]
  else:
    return note[0].replace('#', sharp) + '/' + note[1].replace('b', flat)


class Pitch(object):
  def __init__(self, midi_number):
    self._midi_number = midi_number

  @property
  def midi_number(self):
    return self._midi_number

  @property
  def frequency(self):
    m = self._midi_number
    return 440 * 2**((m-69)/12)

  @property
  def note(self):
    return get_note(self._midi_number)

  def __add__(self, n):
    return type(self)(self._midi_number + n)

  def __str__(self):
    return '%s[%s]' % (self.note, self.midi_number)


def fifth_circle():
  p = Pitch(0)
  for n in range(12):
    x = p + (n*7)
    print(x.note)


def major_scale(n):
  p = Pitch(n)
  print(p)
  intervals = [2, 2, 1, 2, 2, 2, 1]
  for s in intervals:
    p += s
    print(p)


def main(argv):
  major_scale(int(argv[1]))


if __name__ == '__main__':
  main(sys.argv)
