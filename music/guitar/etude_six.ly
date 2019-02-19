\version "2.18.2"

\paper {
   indent = 0\cm
}

#(set-global-staff-size 20)

\header {
  title = "练习曲第六号"
  composer = "[古巴 布罗魏尔] Leo Brouwer"
  tagline=""
}

midiStuff = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \transposition c  % guitar music actually sounds an
                    % octave lower than written.
}



melody = \relative c' {
\key a \minor \time 3/4
\stemUp
a16[ e'' dis cis] e[ dis cis a] dis cis a a,
a16[ e'' dis cis] e[ dis cis a] dis cis a a,
a16[ e'' dis cis] e[ dis cis a] dis cis g a,
% 2
a16[ e'' dis cis] e[ dis cis g] dis' cis g a,
a16[ e'' dis c!] e[ dis cis fis,] dis' cis fis, a,
a16[ e'' dis c!] e[ dis c fis,] dis' c fis, a,
}


bass = \relative c' {
\stemDown
a2 s8. a16
a2 s8. a16
a2 s8. a16
a2 s8. a16
a2 s8. a16
a2 s8. a16
}



\score {
\new Staff {
\set Staff.midiInstrument = "acoustic guitar (nylon)"
<<
\context Voice = "melody" {\melody}
\context Voice = "bass"  {\bass}
>>
}

\layout {
}

\midi {
  \tempo 4 = 60
}

}


