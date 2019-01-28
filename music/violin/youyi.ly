\version "2.18.2"

\paper {
   indent = 0\cm
}

\header {
  title = "Auld Lang Syne"
  composer = "Robert Burns (Written in 1788)"
  tagline=""
}

#(set-global-staff-size 30)

\score {
  \new Staff {
  \set Staff.midiInstrument = #"violin"
  \new Voice = "violin" {
  \transpose c a {
     \key c \major  \time 2/4
     r4 r8 g8 |
     c'8. c'16 c'8 e'8 |
     d'8. c'16 d'8 e'8 |
     c'8. c'16 e'8 g'8 |
     a'4. a'8 |
     g'8. e'16 e'8 c'8 |
     d'8. c'16 d'8 e'8 |
     c'8. a16 a8 g8 |
     c'4. a'8 |
     g'8. e'16 e'8 c'8 |
     d'8. c'16 d'8 a'8 |
     g'8. e'16 e'8 g'8 |
     a'4. c''8 |
     g'8. e'16 e'8 c'8 |
     d'8. c'16 d'8 e'8 |
     c'8. a16 a8 g8 |
     c'4. r8 } } }

  \layout { }
  \midi {
    \tempo 4 = 90
  }
}
