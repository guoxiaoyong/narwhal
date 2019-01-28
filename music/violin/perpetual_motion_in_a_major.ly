\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 30)

\header {
  title = "Perpetual Motion in A Major"
  composer = "S. Suzuki"
  tagline = ""
}

first = {
  a8 b cis cis
  b cis d d
  cis d e cis
  d b e e
  a, b cis cis
  b cis d d
}

second = {
  cis d e cis
  d b a a
  a' gis fis fis
  gis fis e e
  fis e d d
  cis b e e
}

third = {
  a gis fis fis
  gis fis e e
  fis e d d
  cis b a a
  cis a b b
  d b cis cis
}

fourth = {
  e cis d e
  fis gis a a
  cis, a b b
  d b cis cis
  e cis d e
  fis gis a a
}

fifth = {
  a, b cis cis
  b cis d d
  cis d e cis
  d b e e
  a, b cis cis
  b cis d d
  cis d e cis
  d b a a
}

\score {
\relative c'' {
\key a \major
{\first}
{\second}
{\third}
{\fourth}
{\fifth}
}

\layout { }
\midi {
  \tempo 4 = 90
}
}


