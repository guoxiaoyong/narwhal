\version "2.18.2"

\paper {
   indent = 0\cm
}

\header {
  title = "Song of the Wind"
  composer = "Suzuki"
  tagline = ""
}

#(set-global-staff-size 30)

\score {
\new Staff {
\set Staff.midiInstrument = #"violin"

\relative c'' {
\key a \major \time 2/4
a8 b cis d
e e e e
fis d a' fis
e4 r4
fis8 d a' fis
e4 r4
e8 d d d
d cis cis cis
cis b b b
a cis e4
e8 d d d
d cis cis cis
cis b b b
a4 r4
}

}

\layout { }
\midi {
  \tempo 4 = 90
}

}
