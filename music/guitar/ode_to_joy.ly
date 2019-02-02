\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 20)


\header{
  title="Ode to Joy (Symphony No. 9)"
  composer="Ludwig van Beethoven"
  tagline=""
}


#(define RH rightHandFinger)

melody = \transpose c c' {
     \key c \major  \time 4/4
     \stemUp
     e'4 \RH 3 - 0 e'4 \RH 2  f'4 \RH 3 - 1g'4 \RH 2 - 4 |
     g'4 f'4 e'4 d'4 |
     c'4 c'4 d'4 e'4 |
     e'4. d'8 d'2 |
     e'4 e'4 f'4 g'4 |
     g'4 f'4 e'4 d'4 |
     c'4 c'4 d'4 e'4 |
     d'4. c'8 c'2 |
     d'4 d'4 e'4 c'4 |
     d'4 e'8 f'8 e'4 c'4 |
     d'4 e'8 f'8 e'4 d'4 |
     c'4 d'4 g4 e'4 |
     e'2 f'4 g'4 |
     g'4 f'4 e'4 d'4 |
     c'4 c'4 d'4 e'4 |
     d'4. c'8 c'2
}


bass = \absolute {
  \stemDown
  c'2. g'4
  c'2. g'4
  c'2. g'4
  g'4 g' g' g'
  c'2. g'4
  c'2. g'4
  c'2. g'4
  g'4 g' c' c'
  g'2 c'4 e'4
  g'2 c'4 e'4
  g'2 c'4 r4
  a4 r4 g4 r4
  c'4 g'2 g'4
  c'2. g'4
  c'2. g'4
  b4 g'4 c'2
}


\score {
  \new Staff {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  <<
  \context Voice = "melody" {\melody}
  \context Voice = "bass"  {\bass}
  >>
  }

\layout { }
\midi {
  \tempo 4 = 90
}
}
