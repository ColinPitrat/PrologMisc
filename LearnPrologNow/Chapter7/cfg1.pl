/*
   s -> np, vp
   np -> det, noun
   vp -> verb, np
   vp -> verb
*/
s(L, R):- np(L, R1), vp(R1, R).
np(L, R):- det(L, R1), noun(R1, R).
vp(L, R):- verb(L, R1), np(R1, R).
vp(L, R):- verb(L, R).

det([the|R], R).
det([a|R], R).
verb([shoots|R], R).
noun([woman|R], R).
noun([man|R], R).
