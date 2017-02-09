:- initialization(main).

main:-
  write(' ===== As & Bs ===== '), nl,
  consult('a2b.pl'),
  catch(findall(_, a2b, _), _, true),
  halt.

a2b:-
  a2b(X, Y),
  write(X), write(' <=> '), write(Y), nl,
  length(X, N),
  N>20 -> throw(finished).
