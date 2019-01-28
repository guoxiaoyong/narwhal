\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 30)

\header {
  title = "Long, Long Ago"
  composer = "Thomas Haynes Bayly"
  tagline = ""
}

\score {

\relative c'' {
\key a \major
a4 a8 b8 cis4 cis8 d8
e4 fis8 e cis2
e4 d8 cis b2
d4 cis8 b a2

a4 a8 b8 cis4 cis8 d8
e4 fis8 e cis2
e4 d8 cis b4 cis8 b
a2 r2

e'4 d8 cis b4 e,8 e
d'4 cis8 b a2

e'4 d8 cis b4 e,8 e
d'4 cis8 b a2

a4 a8 b cis4 cis8 d
e4 fis8 e cis2
e4 d8 cis b4 cis8 b
a2 r2
}

\layout { }
\midi {
  \tempo 4 = 90
}

}
