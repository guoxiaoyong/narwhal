\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 20)

\header {
  title = "红河谷"
  composer = "Folk Song"
  tagline=""
}

midiStuff = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \transposition c  % guitar music actually sounds an
                    % octave lower than written.
}


melody = \transpose c c {
  \key c \major  \time 4/4
  r4 r4 r4 g8 c'8 |
  e'4 e'8 e'8 e'4 d'8 e'8 |
  d'8 c'8( c'2) g8 c'8 |
  e'4 c'8 e'8 g'4 f'8 e'8 |
  d'2. g'8 f'8 |
  e'4 e'8 d'8 c'4 d'8 e'8 |
  g'8 f'8( f'2) a8 a8 |
  g4 b8 c'8 d'4 e'8 d'8 |
  c'1
}

bass = \transpose c c{
  \key c \major  \time 4/4
  r4 r4 r4 g8 c'8 |
  e'8 <g' c'' e''> e' e' e' <g' c'' e''> d' e'
  d'8 c' c'' e'' c'' g' g c'
  e'8 <g' c'' e''> g' e' g' <g' c'' e''> c' e'

  d'8 a' d'' e'' d'' a' g' f'
  e'8 <g' c'' e''> e' g' f' <g' c'' e''> d' e'
  g'8 f' e' e' e'  a' a a
  g8 <g' c'' e''> b c' d' <g' c'' e''> e' d'
  c'8 g' c'' e'' c'' g'' r4
}


\score {
<<
\new Staff {
\set Staff.midiInstrument = "acoustic guitar (nylon)"
\context Voice = "melody" {\melody}
}
\new Staff {
\set Staff.midiInstrument = "acoustic guitar (nylon)"
\context Voice = "bass" {\bass}
}
>>
\layout {
}

\midi {
  \tempo 4 = 100
}
}


