\version "2.18.2"

\header {
  filename =    "carcassi-op60-01.ly"
  title =       "Etude 1"
  piece =       "Allegro"
  opus =        "Op. 60 No. 1"
  composer =    "Matteo Carcassi (1792-1853)"

  % i know that piece = "tempo" isn't correct, but it looks
  % better than attaching it to the first note.

  % needed by mutopia:

  mutopiainstrument =  "Guitar"
  mutopiacomposer =    "CarcassiM"
  mutopiaopus =        "O 60"
  mutopiasource =      "Unknown"
  date =               "19th C."
  style =              "Classical"
  maintainer =         "Xiaoyong Guo"
  % license =            "Public Domain"
  % maintainer =         "Jeff Covey"
  % maintainerEmail =    "jeff.covey@pobox.com"

 footer = "Xiaoyong Guo-2019/01/22"
 %footer = "Mutopia-2015/08/18-13"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  %ragged-right = ##t
  indent = 0\cm
}



global =  { \time 4/4  \skip 1*43  \bar "|." }
midiStuff = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \transposition c  % guitar music actually sounds an
                    % octave lower than written.
}

#(define RH rightHandFinger)

melody =  \relative c'' {
  \stemUp

   c,8\RH #1 -3[ c'\RH #4 -1 b\RH #3 -0 a\RH #2 -2]  g[ f e d]
   c\RH #1 -3[ e'\RH #4 d\RH #3 -4 c\RH #2 ]  b[ a g f]
   e\RH #1 -2[ g'\RH #4 -4 f\RH #3 e\RH #2 ]  d[ c b a]
   g\RH #2 -0[ fis\RH #3 -4 e\RH #2 d\RH #3 ]  c[ b a d]
  %5
   g,\RH #1 -3[ g'\RH #4  fis\RH #3 -4 e\RH #2 ]  d[ c b a]
   g\RH #1 [ b'\RH #4 a\RH #3 g\RH #2 ]  fis[ e d c]
   b\RH #1 -2[ d'\RH #4 -4 c\RH #3 b\RH #2 ]  a[ g f e]
   d[ c b a ]  g\RH #1 -3[ f'\RH #4 -4 e\RH #3 d\RH #2 ]
  %9
   c-3[ c'-1 d-4 e-0]  f\2-2[ g-4 a-1 b-3]
   c-4[ b-3 a-1 g-4]  f-2[ e-0 d-3 c-1]
  b r8 r4 r2
  \skip 1*1
  %13
   a,8[ a' b c]  d[ e fis gis]
   a[ g f e]  f[ e d c]
  b r8 r4 r2
  \skip 1*1
  %17
   c,8[ c' d e]  f[ e d c]
  b r8 r4 r2
   c,8[ e' fis g]  a[ g fis e]
  dis r8 r4 r2
  %27
  r8  g,[ b e]  dis[ e dis e]
  r8  g,[ b f']  e[ f e f]
   e[ g f e]  d[ f e d]
   c[ e d c]  b[ d c b]
   a[ b c b]  c[ cis d cis]
   d[ e f e]  d[ c b a]
  r  g[ a b]  c[ d e f]
  g r r4 r2
  %29
  r8  g,[ c e] r  b[ d g]
  r  e[ g c] r  b,[ d g]
  r  g,[ c e] r  c[ dis a']
  r  c,[ e g] r  d[ f b]
  r  e,[ g c] r  b,[ d g]
  r  g,[ c e] r  e,[ gis d']
  r  e,[ a c] r  f,[ a d]
  r  e,[ g c] r  d,[ g b]
   c[ c, d e]  f[ g a b]
   c,[ c' d e]  f[ g a b]
   c,[ c' b a]  g[ f e d]
   c,[ c' b a]  g[ f e d]
  c4
  \skip 4*3
  <c' g e>4
  \skip 4*1
   <e c g>
  \skip 4*1
  <c g e>2
  \skip 2*1
}

bass =  \relative c' {
  \stemDown

  c4
  \skip 4*3
  c
  \skip 4*3
  e
  \skip 4*7
  %5
  g,
  \skip 4*3
  g
  \skip 4*3
  b
  \skip 4*7
  %9
  c
  \skip 4*7
  r8  e,[ fis gis]  a[ b c d]
   e[ dis e f]  e[ d c b]
  %13
  a4
  \skip 4*7
  r8  g[ a b]  c[ d e fis]
   g[ fis g a]  g[ f e d]
  %17
  c4
  \skip 4*3
  r8  g[ b d]  g[ f e d]
  c4
  \skip 4*3
  r8  b[ dis fis]  b[ a g fis]
  %27
  e2 r d r c g' a e f r e r
  g,4 r r2
  r8  g[ b d]  g[ f e d]
  c2 g' c g c, fis g g c g c, b a f g g
  %37
  c'8
  \skip 8*7
  c,4
  \skip 4*3
  c'
  \skip 4*3
  c,
  \skip 4*3
  c r r2
  c4 r c r c2 r

}


\score {
      \context Staff = "guitar" <<
        \global
        \context Voice = "melody" { \melody }
        \context Voice = "bass"   { \bass   }
      >>
  \layout {
        line-width = 18.0 \cm
  }
}
\score {
      \context Staff = "guitar" <<
        \midiStuff
        \global
        \melody
        \bass
      >>

  \midi {
    \tempo 4 = 160
    }


}
