\version "2.22.1"
\language "english"
\header{
  title = "Calm Race"
  subtitle = "Extreme Tux Racer"
  composer = "Composed by Karl Schroeder"
  arranger = "Transcribed by Sebastian Simon"
}
\paper{
  left-margin = 20
}
theSynthMelodyPart = {
  g'4.( e16 d) r8 d8( e a) |
  g8( f e f16 e8. f8) g e |
  \autoBeamOff
  d4.( ~ d16 c ~ c8) r8 r4 |
  \autoBeamOn
  f4.( d16 c) r8 r16 c16( d8 e) |
  g4.( f16 d8. e8) d( e) |
  f4 c d a |
  bf8 c d c d e d e |
  f4 r4 r2 |
  r1 |
}
theMarimbaOstinato = {
  f8 \tuplet 3/2 { f16 f f } c8 c f \tuplet 3/2 { f16 f f } c8 c |
  g'8 \tuplet 3/2 { g16 g g } d8 d g \tuplet 3/2 { g16 g g } d8 e |
}
theMusic = <<
  \new Staff \with {
    \override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.padding = 1
    instrumentName = "Synth"
    shortInstrumentName = "S."
    midiInstrument = "shanai"
  } \relative c' {
    \clef treble
    \key f \major
    \tempo 4 = 88
    \repeat unfold 16 { r1 | }
    f'4.^\markup{ \italic \smaller "Reverb" }\mf( d16 c) r8 r16 c16( d8 c) |
    \theSynthMelodyPart
    f4.( d16 c) r8 r16 c16( d8 c) |
    \theSynthMelodyPart
    \repeat unfold 5 { r1 | }
  }
  \new Staff \with {
    \override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.padding = 1
    instrumentName = "Marimba I"
    shortInstrumentName = "M."
    midiInstrument = "marimba"
  } \relative c' {
    \key f \major
    \clef "treble^8"
    \repeat unfold 8 { r1 | }
    \repeat percent 2 {
      r8^\markup{ \italic \smaller "Reverb" } f''\f e d c bf a4 |
      r8 g' f e d c bf4 |
    }
    \repeat unfold 29 { r1 | }
  }
  \new Staff \with {
    \override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.padding = 1
    instrumentName = "Marimba II + III"
    shortInstrumentName = "M."
    midiInstrument = "marimba"
  } <<
    \new Voice \relative c' {
      \clef treble
      \key f \major
      \voiceOne
      \repeat unfold 4 { r1 | }
      \repeat percent 4 {
        \tuplet 3/2 { f'8-> d bf } \tuplet 3/2 { f'8-> c a } \tuplet 3/2 { f'8-> a, g } \tuplet 3/2 { f'8-> g, f } |
        \tuplet 3/2 { g'8-> e c } \tuplet 3/2 { g'8-> d bf } \tuplet 3/2 { g'8-> d a } \tuplet 3/2 { g'8-> bf, g } |
      }
      \repeat percent 6 { r2 r4 r8 g8 | bf8 r8 r4 r2 | }
      \tuplet 3/2 { f'8-> d bf } \tuplet 3/2 { f'8-> c a } \tuplet 3/2 { f'8-> a, g } \tuplet 3/2 { f'8-> g, f } |
      \tuplet 3/2 { g'8-> e c } \tuplet 3/2 { g'8-> d bf } \tuplet 3/2 { g'8-> d a } \tuplet 3/2 { g'8-> bf, g } |
      \repeat percent 6 { r2 r4 r8 g8 | bf8 r8 r4 r2 | }
      \repeat unfold 2 {
        \slurDown
        f'8 \tuplet 3/2 { f16 r f } e8 e d \tuplet 3/2 { d16( d d) } c8 c |
      }
      f,1 | \bar "|."
    }
    \new Voice \relative c' {
      \key f \major
      \voiceTwo
      \repeat percent 2 {
        f8\mf^\markup{ \italic \smaller "Reverb" } \tuplet 3/2 { f16 f f } c8 c f \tuplet 3/2 { f16 f f } c8 c |
        g'8 \tuplet 3/2 { g16 g g } d8 d g \tuplet 3/2 { g16 g g } d8 e |
      }
      \bar "||"
      \repeat percent 4 \theMarimbaOstinato
      \bar "||"
      \repeat percent 6 \theMarimbaOstinato
      \bar "||"
      \theMarimbaOstinato
      \bar "||"
      \repeat percent 6 \theMarimbaOstinato
      \bar "||"
      \repeat unfold 3 { r1 | }
      \bar "|."
    }
  >>
  \new Staff \with {
    \override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.padding = 1
    instrumentName = "Synth Bass"
    shortInstrumentName = "S. B."
    midiInstrument = "acoustic bass"
  } \relative c' {
    \key f \major
    \clef bass
    \repeat unfold 12 { r1 | }
    \repeat percent 13 {
      f,,4\f c f c8 d |
      g4 d g d8 e |
    }
    \repeat unfold 2{ f8 f e e d d c c | }
    f,4 r4 r2 \bar "|."
  }
  \drums {
    \repeat unfold 12 { r1 | }
    bassdrum8\mf hihat bd hh bd hh bd hh |
    \repeat percent 25 { bd8 hh bd hh bd hh bd hh | }
    <bd snare splashcymbal>8\f \tuplet 3/2 { sn16 sn sn } sn8 sn <bd sn cyms> \tuplet 3/2 { sn16 sn sn } sn8 sn |
    <bd sn cyms>8 \tuplet 3/2 { sn16 sn sn } sn8 sn <bd sn cyms> \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } |
    <bd sn cyms>1 | \bar "|."
  }
>>
\score{
  \theMusic
  \layout{
    indent = 20
    \context {
      \Staff
      \RemoveEmptyStaves
      \consists "Keep_alive_together_engraver"
    }
    \context {
      \DrumStaff
      \RemoveEmptyStaves
      \consists "Keep_alive_together_engraver"
    }
  }
}
\score{
  \unfoldRepeats{
    \theMusic
  }
  \midi{}
}
