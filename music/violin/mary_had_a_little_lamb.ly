\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 30)

\header {
  title = "Mary Had a Little Lamb"
  composer = "Folk song"
  tagline = ""
}

\score {
  \new Staff {
  \set Staff.midiInstrument = #"violin"
  \new Voice = "violin" {

    \transpose c a' {
    \key c \major \time 2/4
    e8. d16 c8 d
    e8 e e4
    d8 d d4
    e8 g g4

    e8. d16 c8 d
    e8 e e e
    d8 d e d
    c2
    } } }

\layout { }
\midi {
  \tempo 4 = 120
}

}
