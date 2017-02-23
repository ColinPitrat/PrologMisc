assert(Expression, Testname):-
  Expression,
  write(Testname), write(': OK'), nl,
  !.

assert(Expression, Testname):-
  write(Testname), write(': KO'), nl.
