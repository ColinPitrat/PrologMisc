toptail([H | T], O):-
  reverse(T, [H2 | ORev]),
  reverse(O, ORev).

acctoptail2([_], Acc, Acc).
acctoptail2([H | T], Acc, O):-
  append(Acc, [H], NewAcc),
  acctoptail2(T, NewAcc, O).

toptail2([H | T],O):-
  acctoptail2(T, [], O).
