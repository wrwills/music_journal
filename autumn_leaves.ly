

melody = \relative c' {
  \key a \minor
  r8 e4. a8( g) f e | f g'4. f2 | g,8( gis4. gis4) f8 g | f' e e dis e2 | 
  r2 \times 2/3 {b'8 a g} \times 2/3 {e d c} |
  \times 2/3 {d4 d d~} d2 | \times 2/3 {d2 e8 d} \times 2/3 {g2 f8 g } |
  \times 2/3 {e8 f d} \times 2/3 {e8 c4~} \times 2/3 {c4 b8 c a4~} |
  a4 r4 r8 a8 b c |
  f8 e d c b a gis a | f'8 e d c b a gis f' | e d c b a g fis g | d' c g f g d' c b | 
  d2 r8 d8 c b | d e g f c g ges f | e a gis4~ gis4. e8 | a r8 r2. |  
}

harmonies = \chordmode {
a1:m7 
d1:min7 g:7 c:maj7 c:maj7
b:m7.5- e:7.9- a:m7 a:m7
d1:min7 g:7 c:maj7 c:maj7
b:m7.5- e:7.9- a:m7 a:m7
}

\score {
<<
\new ChordNames {
\set chordChanges = ##t
\harmonies
}
\new Staff \melody
>>
\layout{ }
\midi { }
}
