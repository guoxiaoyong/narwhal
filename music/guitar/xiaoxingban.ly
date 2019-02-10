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

rst = \absolute {b'8\rest} 

melodytwo = \relative c' {
     \key f \major  \time 2/4
     \rst f8[ a f]
     \rst f8[ a f]
     \rst d8[ bes' d,]
     \rst e8[ g e]
     \rst f8[ a f]
     \rst f8[ a f]
     \rst e8[ g e]
     s4 <c f a>

     \rst e8[ g e]
     \rst e8[ g e]
     \rst f8[ a f]
     \rst f8[ a f]
     \rst g8[ b g]
     \rst g8[ b g]
     e8[ c e c]
     f8[ c g' c,]
     \rst f8[ a f]
     \rst f8[ a f]
     \rst d8[ bes' d,]
     \rst e8[ g e]
     \rst f8[ a f]
     \rst f8[ a f]
     \rst e8[ g e]
     s4 <c f a>
}



bass = \relative c {
  \key f \major  \time 2/4
  \stemDown
  f2 d'2 g,2 c2
  f,2 c' c f,
  c' c c c d f
  s2
  s2
  f, d' g,
  c f, c' c f,
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
