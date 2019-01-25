\version "2.18.2"

\header {
  title = "Doraemon"
  composer = "Doraemon"
}

\score {
  \transpose c a {
  \key c \major \time 2/4
  g8. c'16 c'8. e'16 |
  a'8. e'16 g'4 |
  g'8. a'16 g'8. e'16 |
  f'8. e'16 d'4 |
  a8. d'16 d'8. f'16 |
  b'8. b'16 a'8. g'16 |
  f'4 f'8. e'16 |
  a8 b4 c'8 |
  d'2( | d'2) |
  g8. c'16 c'8. e'16 |
  a'8. e'16 g'4 |
  g'8. a'16 g'8. e'16 |
  f'8. e'16 d'4 |
  a8. d'16 d'8. f'16 |
  b'4 a'8. g'16 |
  f'8. f'16 e'8. d'16 |
  b4 d'4 |
  c'4 ~ ( c'4 | c'4 ~ ) c'4 |
  a'4 a'8. g'16 \times 2/3 { | f'8 g'8 a'8 } g'4 |
  d'8. e'16 fis'8. d'16 | g'4 ~ g'4 | a'4 g'4 |
  d'8. e'16 fis'8. d'16 | g'4 ~ g'4 |
  g'4 r4 | a'8 r8 g'8 r8 | f'8 r8 r4 |
  d'4 b'8. a'16 | g'8. a'16 g'8. f'16 |
  r4 g'8. a'16 | e'4. d'8 | c'4 ~ c'4 |
  c'4 ~ c'4
  }

  \layout { }
  \midi {
    \tempo 4 = 90
  }
}
