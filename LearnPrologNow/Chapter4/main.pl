:- initialization(main).

main:-
  write(' ===== As & Bs ===== '), nl,
  consult('a2b.pl'),
  catch(findall(_, a2b, _), _, true),
  write(' ===== ex4_6 ===== '), nl,
  consult('ex4_6.pl'),
  twice([a,4,buggle], X),
  write(X), nl,
  write(' ===== combine ===== '), nl,
  consult('combine.pl'),
  combine1([a,b,c],[1,2,3],C1),
  combine1([a,b,c],[1,2,3,4,5,6],C2),
  combine1([a,b,c,d,e,f], [1,2,3],C3),
  write(C1), nl,
  write(C2), nl,
  write(C3), nl,
  combine2([a,b,c],[1,2,3],D1),
  combine2([a,b,c],[1,2,3,4,5,6],D2),
  combine2([a,b,c,d,e,f], [1,2,3],D3),
  write(D1), nl,
  write(D2), nl,
  write(D3), nl,
  combine3([a,b,c],[1,2,3],E1),
  combine3([a,b,c],[1,2,3,4,5,6],E2),
  combine3([a,b,c,d,e,f], [1,2,3],E3),
  write(E1), nl,
  write(E2), nl,
  write(E3), nl,
  halt.

a2b:-
  a2b(X, Y),
  write(X), write(' <=> '), write(Y), nl,
  length(X, N),
  N>20 -> throw(finished).
