\version "2.18.2"

\paper {
   indent = 0\cm
}

\header {
  title = "May Song"
  composer = "Suzuki"
  tagline = ""
}

#(set-global-staff-size 30)

first = {
a4. cis8 e4 a
fis4 a8 fis e2
d4. e8 cis4 a
b2 a2
}

second = {
e'4 e d d
cis4 e8 cis b2
e4 e d d
cis4 e8 cis b2
}

\score {
\new Staff {
\set Staff.midiInstrument = #"violin"

\relative c'' {
\key a \major \time 4/4
\repeat volta 2 {
  {\first}
  {\second}
  {\first}
}
}
}

\layout { }
\midi {
  \tempo 4 = 90
}
}
