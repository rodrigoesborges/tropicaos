
\version "2.18.2"

% \include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 20)

\header {
  title = "Divino Maravilhoso"
  composer = "Caetano Veloso"
  encodingsoftware = "Lilypond"
}

parteum =  \relative c'' {
  \time 4/4  

\key a \major
r4 cis8 e cis2 | cis8 dis eis fis eis dis cis cis | r cis cis e cis cis4. |
 eis8 fis eis dis cis cis4. | d8 fis d2. | e8 fis gis a gis fis e4 | r cis8 e cis2| 
cis8 dis eis fis eis dis cis cis | r4 d8 fis d2 | e8 fis gis a gis fis e4 | \tuplet 3/2 {cis e cis~} cis4. b8 ~|
b cis d cis b4 gis | r8 a b d cis16 d cis8 b a | a4. b8~ b4 cis8 e | fis gis a gis fis4 r4 |
\repeat volta 2 {
a8 e a e a e g4~ | g8 fis e4 cis r8 e | a e a e a e g4~ |
g8 fis e4 cis r |
} 
\tuplet 3/2 {cis e cis~} cis2 | cis8 dis eis fis eis dis cis4 | r8 cis cis e cis cis4. |
cis8 dis eis fis eis dis cis cis | d fis d2. | e8 fis gis a gis fis e4 || \tuplet 3/2 {cis e cis~} cis4. b8 ~|
b cis d cis b4 gis | r8 a b cis d16 cis a8 cis b | a4. b8~ b4 cis8 e | fis gis a gis fis4 r |
\repeat volta 2 {
a8 e a e a e g4~ | g8 fis e4 cis r8 e | a e a e a e g4~ |
g8 fis e4 c r |
} 
\tuplet 3/2 {cis e cis~} cis2 | cis8 dis eis fis eis dis cis4 | r8 cis cis e cis cis4. |
cis8 dis eis fis eis dis cis cis | d fis d2. | e8 fis gis a gis fis e4 || \tuplet 3/2 {cis e cis~} cis4. b8 ~|
b cis d cis b4 gis | r8 a b cis d16 cis a8 cis b | a4. b8~ b4 cis8 e | fis gis a gis fis4 r |
\repeat volta 2 {
a8 e a e a e g4~ | g8 fis e4 cis r8 e | a e a e a e g4~ |
g8 fis e4 c r |
} 
\tuplet 3/2 {cis e cis~} cis4. b8 ~ | b cis d cis b4 gis |
r8 a b d cis16 d cis8 b a | a4. a8 b4 cis8 e | gis gis a gis fis4 r \bar "|." 
}


letraum =  \lyricmode {
}

letradois = \lyricmode {
}


letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "divino_maravilhoso_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      
      \new Staff {
        \new Voice = "saxalto" {
          \transpose a a {
            \parteum

          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "divino_maravilhoso_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
       
      \new Staff {
        \new Voice = "trombone" {
          \transpose a c {
            \parteum
 
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 180
    }
  }
}

\book {
  \bookOutputName "divino_maravilhoso_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
       
      \new Staff {
        \new Voice = "trompete" {
          \transpose a d {
            \parteum

          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "divino_maravilhoso_C_clave_F"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
       
      \new Staff {
        \new Voice = "trombone" {
          \clef F \transpose a c, {
            \parteum

          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "divino_maravilhoso_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose a a {
            \easyHeadsOn
            \teeny
            \parteum

          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
      \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }
  }
}