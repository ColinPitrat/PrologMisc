:- initialization(main).

main:-
  write(' ===== Exercice 3.2 ====='), nl,
  consult('ex3_2.pl'),
  findall(_, in, _),
  write(' ===== Exercice 3.3 ====='), nl,
  consult('ex3_3.pl'),
  findall(_, travel, _),
  write(' ===== Exercice 3.4 ====='), nl,
  consult('ex3_4.pl'),
  greater_than(succ(succ(succ(succ(0)))), succ(succ(succ(0)))),
  write(' ===== Exercice 3.5 ====='), nl,
  consult('ex3_5.pl'),
  swap(tree(tree(leaf(1), leaf(2)), leaf(4)),T),
  write(T), nl,
  halt.

in:-
  in(X, Y),
  write(X), write(' is in '), write(Y), nl.

travel:-
  travelFromTo(X, Y),
  write('From '), write(X), write(' to '), write(Y), nl.
