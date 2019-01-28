\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 30)

\header {
  title = "粗心的小画家"
  composer = "中国儿歌"
  tagline=""
}

\score {
  \new Staff {
  \set Staff.midiInstrument = #"violin"
  \new Voice = "violin" {
  \transpose c c'' {
  \key c \major \time 2/4
  e8 e e d16 d e8 a g4
  e8 g g e16 d c8 e d4
  e8. d16 e8 g e a g4
  a8. g16 a8 c' e d c4
  e8. d16 e8 d c e c4
  e8. d16 e8 d c e d4
  a8. g16 a8 g f a g g
  a8. g16 a g f a g4
  r4. a16 g16
  e8 e d d c4 r4
  }
}}
  \layout { }
  \midi {
    \tempo 4 = 90
  }

}
