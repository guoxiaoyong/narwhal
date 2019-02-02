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
  def mini_number(self):
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

p = Pitch(0)
for n in range(12):
  p += n*7
  print(p.note)
