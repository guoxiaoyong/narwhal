\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 20)

melody = {
\key f \major \time 3/4
\relative c' {
f4 f4. a8
c4 c a
g4 g c8 c8
a4 f2
f4 f4. a8
c4 c a
g4. c4.
a4. f4.
}}

\header {
  title = "Rabbit Hill"
  composer = "Rabbit Hill"
  tagline=""
}

\score {
  \new Staff {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \context Voice = "melody" {\melody}
  }

\layout { }
\midi {
  \tempo 4 = 90
}
}
