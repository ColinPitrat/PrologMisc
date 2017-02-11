increment(X, Y):- Y is X+1.
sum(X, Y, Z):- Z is X+Y.
addone([], []).
addone([H | T], [H2 | T2]):-
  H2 is H+1,
  addone(T, T2).
