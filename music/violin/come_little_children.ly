\version "2.18.2"

\paper {
   indent = 0\cm
}

\header {
  title = "O Come, Little Children"
  composer = "Suzuki"
  tagline = ""
}

#(set-global-staff-size 30)

\score {
\new Staff {
\set Staff.midiInstrument = #"violin"

\relative c'' {
\key a \major \time 2/4
r4 r8 e8
e4 cis8 e8
e4 cis8 e8
d4 b8 b8
cis4 r8 e8
e4 cis8 e8
e4 cis8 e8
d4 b8 b8
cis4 r8 cis8
b4 b8 b8
d4 d8 d8
cis4 cis8 cis8
fis4 r8 fis8
e4 e8 e8
a4 e8 cis8
d4 b8 b8
a4. r8
}

}

\layout { }
\midi {
  \tempo 4 = 90
}

}
