\version "2.18.2"

\paper {
   indent = 0\cm
}

\header {
  title = "两只老虎"
  composer = "Folk"
  tagline = ""
}

#(set-global-staff-size 30)

\score {
\new Staff {
\set Staff.midiInstrument = #"violin"

\transpose c a {
\relative c' {
\key c \major \time 4/4
c4 d e c
c4 d e c
e4 f g2
e4 f g2
g8. a16 g8. f16 e4 c
g'8. a16 g8. f16 e4 c
c4 g c2
c4 g c2
} }

}

\layout { }
\midi {
  \tempo 4 = 90
}

}
