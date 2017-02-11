scalarMult(_, [], []).
scalarMult(N, [H1 | T1], [H2 | T2]):-
  H2 is N*H1,
  scalarMult(N, T1, T2).

accDotProduct([], [], R, R).
accDotProduct(L, [], _, _).
accDotProduct([], L, _, _).
accDotProduct([H1 | T1], [H2 | T2], V, R):-
  Vnew is V+H1*H2,
  accDotProduct(T1, T2, Vnew, R).
dotProduct(L1, L2, R):- accDotProduct(L1, L2, 0, R).
