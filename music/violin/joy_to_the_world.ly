\version "2.18.2"

\header {
  title = "Joy To The World"
  composer = "Georg Friedrich Händel"
  tagline=""
}

\paper {
  indent = 0\cm
}

#(set-global-staff-size 30)

first = {
  c'4 b8. a16 g4. f8
  e4 d4 c4. g'8
  a4. a8 b4. b8
  c2. r8 c8
}

third = {
  e8 e8 e8 e16 f16 g4. f16 f16
  d8 d8 d8 d16 e16 f4. e16 d16
}

forth = {
  c8 c'4 a8 g8. f16 e8 f8 e4 d4 c2
  \bar "|."
}


\score {
  \transpose c a {
  \relative c' {
    \key c \major \time 4/4
    \first
    \relative c' \first
    \relative c' {\third \forth}
  }
  }

  \layout { }

  \midi {
    \tempo 4 = 72
  }
}
