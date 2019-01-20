\version "2.18.2"

\header {
  title = "Joy To The World"
  composer = "Georg Friedrich Händel"
}

\paper {
  %ragged-right = ##t
  indent = 0\cm
}

#(set-global-staff-size 30)

first = {
  c'4^"C'" b8.^"B" a16^"A" g4.^"G" f8^"F"
  e4^"E" d4^"D" c4.^"C" g'8^"G"
  a4.^"A" a8^"A" b4.^"B" b8^"B"
  c2.^"C'" r8 c8^"C'"
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
  \relative c' {
    \time 4/4
    \first
    \relative c' \first
    \relative c' {\third \forth}
  }

  \layout { }

  \midi {
    \tempo 4 = 72
  }
}



