\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 30)


\header{
  title="欢乐颂"
  composer="Ludwig van Beethoven"
  tagline=""
}

\score {
  \new Staff {
  \set Staff.midiInstrument = #"violin"
  \new Voice = "violin" {
  \transpose c a {
     \key c \major  \time 4/4
     e'4 e'4 f'4 g'4 |
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
     e'4 e'4 f'4 g'4 |
     g'4 f'4 e'4 f'8 d'8 |
     c'4 c'4 d'4 e'4 |
     d'4. c'8 c'2 }
} }

\layout { }
\midi {
  \tempo 4 = 90
}
}
