:- initialization(main).

main:-
  write(' ===== ex5_2 ===== '), nl,
  consult('ex5_2.pl'),
  increment(4,X),
  write(X), nl,
  sum(4,6,Y),
  write(Y), nl,
  addone([1,2,7,2], Z),
  write(Z), nl,
  halt.
