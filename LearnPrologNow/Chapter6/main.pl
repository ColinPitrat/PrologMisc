:- initialization(main).

main:-
  write(' ===== myappend ===== '), nl,
  consult('append.pl'),
  myappend([a,b,c],[1,2,3],X),
  write(X), nl,
  findall([L1, L2], myappend(L1,L2,[a,b,c,d]), Bag),
  write(Bag), nl,
  halt.
