:- initialization(main).

main:-
  consult('kb1.pl'),
  findall(X, woman(X), Y),
  write('Women: '),
  write(Y),
  nl,
  halt.

