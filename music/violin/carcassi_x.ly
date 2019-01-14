\version "2.18.2"

\header {
  title = "Carcassi 24"
  composer = "Matteo Carcassi"
}

\score {

\relative c' {
\new Voice {
  <<{c8 c' b a g f e d} {\stemDown c4 r4 r2} >>
  c  e' d c b a g f
  e  g' f e d c b a
  g  fis e d c b a d

  g, g' fis e d   c b a
  g  b' a   g fis e d c
  b  d' c   b a   g f e
  d  c  b   a g   f e d

  c c' d e f g a b
  c b a g f c b a
  b 
}
}

\layout { }

\midi { }

}

