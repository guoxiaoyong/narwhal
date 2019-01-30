\version "2.18.2"

\paper {
   indent = 0\cm
}

\header {
  title = "Go Tell Aunt Rhody"
  composer = "Suzuki"
  tagline = ""
}

#(set-global-staff-size 30)

\score {
\new Staff {
\set Staff.midiInstrument = #"violin"

\relative c'' {
\key a \major \time 4/4
cis4 cis8 b a4 a
b4 b cis8 b a4
e'4 e8 d cis4 cis
b8 a b cis a2
cis4 cis8 b e4 e
fis4 fis e8 d cis4
cis4 cis8 b e4 e
fis4 fis e2
cis4 cis8 b a4 a
b4 b cis8 b a4
e'4 e8 d cis4 cis
b8 a b cis a2
}

}

\layout { }
\midi {
  \tempo 4 = 90
}

}
