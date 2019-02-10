\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 20)

\header {
  title = "四季歌"
  composer = "荒木丰尚"
  tagline=""
}

midiStuff = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \transposition c  % guitar music actually sounds an
                    % octave lower than written.
}


melody = \transpose c c {
  \key a \minor \time 4/4
  r1 |
  r1 |
  e''4 e''8 d''8 c''4 c''8 b'8 |
  a'4 a'4 a'2 |
  f''4 f''8 e''8 d''8 c''8 d''8 f''8 |
  e''1 |
  f''4 f''8 e''8 d''4 d''8 f''8 |
  e''4 e''8 c''8 a'4 a'4 |
  b'4 e''4 d''8 c''8 b'8 c''8 |
  a'1
}

Am = {a8 a' c'' a' e'' a' c'' a'}
Amall = {<e a e' a' c'' e''>1}
Dm = {d'8 a' d'' a' f'' a' d'' a'}
Eseven = {b gis' d'' gis' e'' gis' d'' gis'}
bass = \transpose c c {
  \key a \minor  \time 4/4
  \Am \Am \Am \Am
  \Dm \Am \Dm \Am
  \Eseven \Amall
}


\score {
<<
\new Staff {
\set Staff.midiInstrument = "recorder"
\context Voice = "melody" {\melody} }
\new Staff {
\set Staff.midiInstrument = "acoustic guitar (nylon)"
\context Voice = "bass" {\bass} }
>>
\layout {
}

\midi {
  \tempo 4 = 90
}
}


