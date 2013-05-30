%=============================================
%   created by MuseScore Version: 1.3
%          Friday, 24 May 2013
%=============================================

\version "2.12.0"


\header {
    title = "Memories of Tomorrow"
    composer = "Keith Jarrett"
    }


AvoiceAA = \transpose c c
\relative c'{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'4 b8 a~ a g4 e8~      | % 1
    e c~ c2.      | % 2
    c'4 b8 a~ a g4 g8~      | % 3
    g2 e4 g      | % 4
    c b8 a~ a4 g      | % 5
    e8 c4. a4 c      | % 6
    f e8 d~ d4 c8 e~      | % 7
    e2 a4 c      | % 8
    d d8 d~ d4 a      | % 9
    d c r8 b4 a8      | % 10
    c4 b a g8 g~      | % 11
    g2 g4 g      | % 12
    g g f c8 f~      | % 13
    f g4. c,4 ees      | % 14
    f g8 f~ f c4 e8~      | % 15
    e2 e4 e      | % 16
    e b'8 e~ e e4 d8~      | % 17
    d4 a8 c~ c4. c8      | % 18
    b4 a8 d~ d c4 a8~      | % 19
    a c4. c,4 f      | % 20
    e2 e4 c      | % 21
    f e d c      | % 22
    e1~ | % 23
    e2. r4 | % 24
}% end of last bar in partorvoice

AvoiceBA = \transpose c c \relative c'{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    a'8^\markup{ A Dorian } b c d e fis g a     | % 1
    a,^\markup{ A melodic minor } b c d e fis gis a      | % 2
    a,^\markup{ A Dorian } b c d e fis^\markup{ Common scales } g a      | % 3
    e,^\markup{ E Aeolian } fis g a b c d e     | % 4
    f,^\markup{ F Symmetric Diminished } fis gis a b c d dis  | % 5
    c,4. d4.^\markup{ C Major Scale Common Scale (C Ionian and G Mixolydian) } e4~      | % 6
    e8 f4. g4. a8~      | % 7
    a4 b4. c4.      | % 8
    \break
    d,8^\markup{ D Mixolydian to match C natural }_\markup{ 
      \magnify #0.5 { 
        \column { 
          \line {Only one note in the scale needs to change from}  
          \line {the previous scale and this note is the guide tone } } } }
    e fis g a b c d  | % 9
    f,^\markup{ Common Scales: F Lydian & C Major} g a b c d e f | % 10
    c,8 d e f g a b c      | % 11
    ees,16^\markup{ Eb Major } f g aes bes c d ees a,^\markup{ A Mixolydian } b cis d e fis g a | %12
    aes,8^\markup{ Common scales Ab Lydian and F Dorian and Bb Mixolydian } bes c d ees f g aes | 
    f, g aes bes c d ees f |
    bes,^\markup{ Bb Mixolydian }
    _\markup { 
      \magnify #0.5 { 
        \column { 
          \line { Could probably also get away with a Bb Dorian because it is a sus4 chord }
          \line { This would make for common scale with last two bars if they were thought of as in the key of Ab } } } }
    c d ees f g aes bes |
    c,,^\markup{ C Major } d e f g a b c |
    b,16^\markup{ B Phrygian } c d e fis g a b bes,^\markup{ Bb Lydian b7 } c d e f g aes bes |
    a^\markup{ A Locrian } bes c d e f g a f,^\markup{ F Melodic Minor }  g aes bes c d e f |
    g,^\markup{ G Major Scale (Common Scale G Ionian and D Mixolydian) } a b c d e fis g d,^\markup{ D Mixolydian } e fis g a b c d |
    f,8^\markup{ F Lydian Scale } g a b c d e f |
    c,2^\markup{ C Major Common Scale (C Ionian and G Mixolydian) } d e f g a b 
    bes,16^\markup{ Bb Mixolydian } c d ees f g aes bes
}% end of last bar in partorvoice

AvoiceCA = \transpose c c \relative c'{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    r1 r r r f2 fis g1 r r
    fis f e ees2 cis c1  r r 
    << c' e >> << d1 \\ {b2 bes } >> << c1 \\ { a2 aes } >> 
    << b2 g2 >> << fis c' >> << c1 f,1 >>
    g f e d
}

theChords = \transpose c c \chordmode { 
        a1:m a:m7+ a:m7 e:m7
        f2 fis2:dim c1/g g:7sus4 c1 
        d/fis f:maj7 c/e ees2 a2:7 
        aes1 f:m7 bes:7sus4 c:maj7 
        b2:m7 bes:7 a:m f:m/aes g d:7/fis f1:maj7 
        c1:maj7/g g:7sus4 c b2:m7 bes:7 }%%end of chordlist 


\score { 
    << 
    \new ChordNames { \theChords } 
        \context Staff = ApartA << 
            \context Voice = AvoiceAA \AvoiceAA
        >>


        \context Staff = ApartB << 
            \context Voice = AvoiceBA \AvoiceBA
        >>

        \context Staff = ApartC << 
            \context Voice = AvoiceCA \AvoiceCA
        >>



      \set Score.skipBars = ##t
      %%\set Score.melismaBusyProperties = #'()
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
      %% remove previous line to get barnumbers only at beginning of system.
       #(set-accidental-style 'modern-cautionary)
      \set Score.markFormatter = #format-mark-box-letters %%boxed rehearsal-marks
       \override Score.TimeSignature #'style = #'() %%makes timesigs always numerical
      %% remove previous line to get cut-time/alla breve or common time 
      \set Score.pedalSustainStyle = #'mixed 
       %% make spanners comprise the note it end on, so that there is no doubt that this note is included.
       \override Score.TrillSpanner #'(bound-details right padding) = #-2
      \override Score.TextSpanner #'(bound-details right padding) = #-1
      %% Lilypond's normal textspanners are too weak:  
      \override Score.TextSpanner #'dash-period = #1
      \override Score.TextSpanner #'dash-fraction = #0.5
      %% lilypond chordname font, like mscore jazzfont, is both far too big and extremely ugly (olagunde@start.no):
      \override Score.ChordName #'font-family = #'roman 
      \override Score.ChordName #'font-size =#0 
      %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
      \set Score.majorSevenSymbol = \markup {maj7}
  >>

  %% Boosey and Hawkes, and Peters, have barlines spanning all staff-groups in a score,
  %% Eulenburg and Philharmonia, like Lilypond, have no barlines between staffgroups.
  %% If you want the Eulenburg/Lilypond style, comment out the following line:
  \layout {\context {\Score \consists Span_bar_engraver}}
}%% end of score-block 

