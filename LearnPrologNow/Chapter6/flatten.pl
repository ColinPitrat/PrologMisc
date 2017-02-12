/* "Naive" implementation, using append */
myaccflatten([], Flat, Flat).
myaccflatten(A, Acc, Flat):-
  \+list(A),
  append(Acc, [A], Flat).
myaccflatten([H|T], Acc, Flat):-
  \+list(H),
  append(Acc, [H], NewAcc),
  myaccflatten(T, NewAcc, Flat).
myaccflatten([H|T], Acc, Flat):-
  list(H),
  myaccflatten(H, [], HFlat),
  append(Acc, HFlat, NewAcc),
  myaccflatten(T, NewAcc, Flat).

myflatten(L, F):-
  myaccflatten(L, [], F).

/* Better implementation: same logic but use reverse. */
accflatten([], Flat, Flat).
accflatten(E, Acc, [E|Acc]):-
  \+list(E),
  !.
accflatten([H|T], Acc, Flat):-
  flatten_head(H, Acc, NewAcc),
  accflatten(T, NewAcc, Flat).

flatten_head(H, Acc, [H | Acc]):-
  \+list(H),
  !.
flatten_head(L, Acc, Flat):-
  accflatten(L, Acc, Flat).

flatten(L, F):-
  accflatten(L, [], Frev),
  reverse(Frev, F).
