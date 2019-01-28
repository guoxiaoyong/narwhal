\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 30)

\header {
  title = "Allegro"
  composer = "S. Suzuki"
  tagline=""
}


first = {
a'4 a e e
fis8 gis a fis e4 e
d d cis cis b8 a b cis a2
}

second = {
fis'4 fis e a,
fis' fis e a,
fis' gis a fis e cis b2
}



\score {
\relative c'' {
\key a \major
{\first}
{\first}
{\second}
{\first}
}

\layout { }
\midi {
  \tempo 4 = 90
}
}
