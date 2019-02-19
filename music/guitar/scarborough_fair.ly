\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 20)

\header {
  title = "Scarborough Fair"
  composer = "Folk Song"
  tagline=""
}



melody = \transpose c g {
  \key a \minor \time 3/4
  a2 a4 |
  e'8 e'2 e'8 |
  b4. c'8 b4 |
  a2.( |
  a2.) |
  r4 e'4 g'4 |
  a'2 g'4 |
  e'4 fis'4 d'4 |
  e'2.( |
  e'2.)( |
  e'2.)( |
  e'4) r4 a'4 |
  a'2 a'4 |
  g'2 e'4 |
  e'4 d'4 c'4 |
  b2. |
  b2. |
  a2 e'4 |
  d'2 c'4 |
  b4 a4 g4 |
  a2. |
  a2. |
  a4 ~ a4 ~ a4 |
  a4 ~ a4 ~ a4 |
  a4 a4 a4 |
  e'4 e'4 e'4 |
  b4 c'4 b4 |
  a2. |
  a2. |
  r4 e'4 g'4 |
  a'2 g'4 |
  e'4 fis'4 d'4 |
  e'2. |
  e'2. |
  e'2. |
  r4 r4 a'4 |
  a'2 g'4 |
  g'2 e'4 |
  e'4 d'4 c'4 |
  b2. |
  b2. |
  a2 e'4 |
  d'2 c'4 |
  b4 a4 g4 |
  a2. a2. a2.
}


\score {
\new Staff {
\set Staff.midiInstrument = "acoustic guitar (nylon)"
<<
\context Voice = "melody" {\melody}
>>
}

\layout {
}

\midi {
  \tempo 4 = 168
}

}


