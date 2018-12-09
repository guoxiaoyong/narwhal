\version "2.18.2"

\header {
  title = "Allegro"
  composer = "S. Suzuki"
}


first = \relative c'' {
\key a \major

a'4 a e e
fis8 gis a fis e4 e
d d cis cis b8 a b cis a2

}

second = \relative c'' {
\key a \major

f4 f e a f f e a f g a f e c b2

}



\score {

{
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
