\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 30)

\header {
  title = "Song of Irish Whistle"
  composer = ""
  tagline=""
}


melody = \transpose c a {
\key c \major  \time 4/4
s2. c'8 d'8 |
e'4 d'8 c'8 d'4 e'8 g'8 |
a'2 g'4 c''8 g'8 |
a'4 g'8 e'8 d'4 c'8 d'8 |
e'2. c'8 d'8 |
e'4 d'8 c'8 d'4 e'8 g'8 |
a'2 g'4 c''8 g'8 |
a'4 g'8 e'8 d'4. c'8 |
c'2. g'4 |
c''4 b'8 g'8 a'4 c''8 a'8 |
b'2 g'4 e'8 g'8 |
a'4 g'8 e'8 g'8 a'8 c''8 d''8 |
e''2. g'4 |
c''4 b'8 g'8 a'4 c''8 a'8 |
b'2 g'4 e'8 g'8 |
a'4 g'8 e'8 g'8 a'8 c''8 d''8 |
c''2. c'8 d'8 |
e'4 d'8 c'8 d'4 e'8 g'8 |
a'2 g'4 c''8 g'8 |
a'4 g'8 e'8 d'4 c'8 d'8 |
e'2. c'8 d'8 |
e'4 d'8 c'8 d'4 e'8 g'8 |
a'2 g'4 c''8 g'8 |
a'4 g'8 e'8 d'4. c'8 |
c'2. r4 }

\score {
  \new Staff {
  \set Staff.midiInstrument = #"violin"
  \context Voice = "melody" {\melody}
  }

\layout { }
\midi {
  \tempo 4 = 120
}
}
