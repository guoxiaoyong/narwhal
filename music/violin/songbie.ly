\version "2.18.2"

\paper {
   indent = 0\cm
}

\header {
  title = "Farewell Song"
  composer = "John P. Ordway"
}

#(set-global-staff-size 30)

\score {
\new Staff {
\set Staff.midiInstrument = #"violin"

\relative c'' {
\key a \major
e4-0\downbow cis8 e a2
fis4\downbow a8 a e2
e4-0\downbow a,8 b cis4-2\upbow b8a
b2. r4

e4-0\downbow cis8 e a4.-3\upbow( gis8-2)
fis4\downbow a4 e2
e4-0\upbow b8 cis d4.-3\downbow( gis,8-4)
a2.-0\upbow r4

fis'4-1\downbow a8 a8 a2
gis4-2\downbow fis8 gis a2
fis8\downbow( gis) a\upbow( fis)
fis\downbow( e) cis\upbow a\downbow b2. r4

e4-0\downbow cis8 e a4.\upbow-3( gis8-2)
fis4 a4 e2

e4 b8 cis d4.-3( gis,8-4)
a2.-0 r4
}

}

\layout { }
\midi {
  \tempo 4 = 90
}

}
