/*
    Crossword:

     V1  V2  V3
      _   _   _
 H1 _ _ _ _ _ _ _
      _   _   _
 H2 _ _ _ _ _ _ _
      _   _   _
 H3 _ _ _ _ _ _ _
      _   _   _

*/
word(astante, a,s,t,a,n,t,e). 
word(astoria, a,s,t,o,r,i,a). 
word(baratto, b,a,r,a,t,t,o). 
word(cobalto, c,o,b,a,l,t,o). 
word(pistola, p,i,s,t,o,l,a). 
word(statale, s,t,a,t,a,l,e).

crossword(V1, V2, V3, H1, H2, H3):-
 word(V1, _, V12, _, V14, _, V16, _),
 word(V2, _, V22, _, V24, _, V26, _),
 word(V3, _, V32, _, V34, _, V36, _),
 word(H1, _, H12, _, H14, _, H16, _),
 word(H2, _, H22, _, H24, _, H26, _),
 word(H3, _, H32, _, H34, _, H36, _),
 V1 \= V2, V1 \= V3, V1 \= H1, V1 \= H2, V1 \= H3,
 V2 \= V3, V2 \= H1, V2 \= H2, V2 \= H3,
 V3 \= H1, V3 \= H2, V3 \= H3,
 H1 \= H2, H1 \= H3,
 H2 \= H3,
 V12 = H12, V14 = H22, V16 = H32,
 V22 = H14, V24 = H24, V26 = H34,
 V32 = H16, V34 = H26, V36 = H36.

/*

2 solutions (but really only 1 considering the symmetry):

      V1  V2  V3
      a   c   p
 H1 a s t o r i a
      t   b   s
 H2 b a r a t t o
      n   l   o
 H3 s t a t a l e
      e   o   a

      V1  V2  V3
      a   b   s
 H1 a s t a n t e
      t   r   a
 H2 c o b a l t o
      r   t   a
 H3 p i s t o l a
      a   o   e

*/
