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
    \break
    c b8 a~ a4 g      | % 5
    e8 c4. a4 c      | % 6
    f e8 d~ d4 c8 e~      | % 7
    e2 a4 c      | % 8
    \break
    d d8 d~ d4 a      | % 9
    d c r8 b4 a8      | % 10
    c4 b a g8 g~      | % 11
    g2 g4 g      | % 12
    \break
    g g f c8 f~      | % 13
    f g4. c,4 ees      | % 14
    f g8 f~ f c4 e8~      | % 15
    e2 e4 e      | % 16
    \break
    e b'8 e~ e e4 d8~      | % 17
    d4 a8 c~ c4. c8      | % 18
    b4 a8 d~ d c4 a8~      | % 19
    a c4. c,4 f      | % 20
    \break
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
    a,^\markup{ A Dorian } b c d e fis g a      | % 3
    e,^\markup{ E Aeolian } fis g a b c d e     | % 4
    f,^\markup{ F Symmetric Diminished } fis gis a b c d dis  | % 5
    c,4. d4.^\markup{ C Major Scale } e4~      | % 6
    e8 f4. g4. a8~      | % 7
    a4 b4. c4.      | % 8
    d,8 e fis g a b c d  | % 9
    f, g a bes c d e f | % 10
    c,8 d e f g a b c      | % 11
    ees,16 f g aes bes c d ees a, b cis d e fis g a | %12
    aes,8 bes 
}% end of last bar in partorvoice

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

