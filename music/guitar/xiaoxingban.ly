\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 20)


\header{
  title="小行板"
  composer=""
  tagline=""
}


#(define RH rightHandFinger)

melody = \relative c'' {
     \key f \major  \time 2/4
     c4 f a, c bes d g, bes
     a4 c f, a g8 c bes g f4 r4
     g4 c e, g a c f, a b f'
     d4 b c c b bes a f' a, c bes d
     g,4 bes a c f, a g8 c bes g f4 r4
}

melodytwo = \relative c' {
     \key f \major  \time 2/4
     r8 f8 a f
     r8 f8 a f
     r8 d8 bes' d,
     r8 e8 g e
}

bass = \relative c {
  \key f \major  \time 2/4
  \stemDown
  f2 d'2 g,2 c2
}


\score {
<<
  \new Staff {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \context Voice = "melody" {\melody}
  }
  \new Staff {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  <<
  \context Voice = "melodytwo" {\melodytwo}
  \context Voice = "bass" {\bass}
  >>
  }
>>

\layout { }
\midi {
  \tempo 4 = 90
}
}
