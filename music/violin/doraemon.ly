\version "2.18.2"

\header {
  title = "Doraemon"
  composer = "Doraemon"
}

\score {
  \relative c' {
  \key a \major
    g8. c16 c8. e16
    a8. e16 g4
    g8. a16 g8. e16
    f8. e16 d4
    a,8. d16 d8. f16
    b8. b16 a8. g16
    f4 f8. e16
  }

  \layout { }
  \midi {
    \tempo 4 = 90
  }
}
