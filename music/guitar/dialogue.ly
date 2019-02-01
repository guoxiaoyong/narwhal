\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 20)

\header {
  title = "简单的对话"
  composer = "Shawn Bell"
  tagline=""
}

midiStuff = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \transposition c  % guitar music actually sounds an
                    % octave lower than written.
}



melody = \relative c'' {
\stemUp

\tempo 4 = 168
r4 e d e
c1
r4 c b c
a1

r4 e' d e
c1
r4 c b c
a1

r4 e' d e
f1
r4 d c b
e1

r4 c b c
d1
r4 b a gis
a1

r4 e' d e
c1
r4 c b c
a1

r4 e' d e
c4 e b e
\slurUp
a,1 ( a1)
}


bass = \relative c' {
\stemDown

a1
r4 e a e
a1
r4 e a e

a1
r4 e a e
a1
r4 e a e

a1
r4 a d a
d1
r4 e, a e

a1
r4 a e a
e1
r4 e a e

a1
r4 e a e
a1
r4 e a e
\slurDown
a1( a1)
r2 e2
a1
}



\score {
\new Staff {
\set Staff.midiInstrument = "acoustic guitar (nylon)"
<<
\context Voice = "melody" {\melody}
\context Voice = "base"  {\bass}
>>
}

\layout {
}

\midi {
  \tempo 4 = 168
}

}


