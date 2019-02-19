\version "2.19.82"
% automatically converted by musicxml2ly from old_mc_donald_had_a_farm.musicxml
\pointAndClickOff

\header {
    encodingsoftware =  "MuseScore 3.0.2"
    encodingdate =  "2019-02-19"
    title =  "old mc donald had a farm "
    }

#(set-global-staff-size 20.1587428571)
\paper {
    
    paper-width = 21.01\cm
    paper-height = 29.69\cm
    top-margin = 1.0\cm
    bottom-margin = 2.0\cm
    left-margin = 1.0\cm
    right-margin = 1.0\cm
    indent = 1.61615384615\cm
    short-indent = 1.29292307692\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \none \numericTimeSignature\time 4/4 | % 1
    \stemUp c4 \stemUp c4 \stemUp c4 \stemUp g4 | % 2
    \stemUp a4 \stemUp a4 \stemUp g2 | % 3
    \stemUp e'4 \stemUp e4 \stemUp d4 \stemUp d4 | % 4
    \stemUp c2. \stemUp g4 | % 5
    \stemUp c4 \stemUp c4 \stemUp c4 \stemUp g4 | % 6
    \stemUp a4 \stemUp a4 \stemUp g2 | % 7
    \stemUp e'4 \stemUp e4 \stemUp d4 \stemUp d4 | % 8
    \stemUp c2. \stemUp g8 [ \stemUp g8 ] | % 9
    \stemUp c4 \stemUp c4 \stemUp c4 \stemUp g8 [ \stemUp g8 ] \break |
    \barNumberCheck #10
    \stemUp c4 \stemUp c4 \stemUp c2 | % 11
    \stemUp c8 [ \stemUp c8 ] \stemUp c4 \stemUp c8 [ \stemUp c8 ]
    \stemUp c4 | % 12
    \stemUp c8 [ \stemUp c8 \stemUp c8 \stemUp c8 ] \stemUp c4 \stemUp c4
    | % 13
    \stemUp c4 \stemUp c4 \stemUp c4 \stemUp g4 | % 14
    \stemUp a4 \stemUp a4 \stemUp g2 | % 15
    \stemUp e'4 \stemUp e4 \stemUp d4 \stemUp d4 | % 16
    \stemUp c2. r4 | % 17
    R1 \bar "|."
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = "Piano"
            \set Staff.shortInstrumentName = "Pno."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }

