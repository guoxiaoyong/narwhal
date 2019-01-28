\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 30)

\header {
  title = "粉刷匠"
  composer = "波兰民歌"
  tagline=""
}

\score {
  \new Staff {
  \set Staff.midiInstrument = #"violin"
  \new Voice = "violin" {
  \transpose c a' {
  \key c \major \time 2/4
  g8 e g e g e c4
  d8 f e d g2
  g8 e g e g e c4
  d8 f e d c2
  d8 d f f e d g4
  d8 f e d g2
  g8 e g e g e c4
  d8 f e d c2
  }
}}
  \layout { }
  \midi {
    \tempo 4 = 90
  }

}
