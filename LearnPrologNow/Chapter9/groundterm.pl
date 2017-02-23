/*
 * All this seems very dirty. There must be a cleaner way.
 * Of course there is ground/1 but this is cheating !
 */
isgroundterm(X, YN):-
  var(X),
  !,
  YN == no.

isgroundterm(X, yes):-
  atomic(X),
  !.

isgroundterm([H | T], YN):-
  !,
  isgroundterm(H, YN),
  isgroundterm(T, YN).

isgroundterm(Term, YN):-
  functor(Term, _, N),
  N > 0,
  Term =.. L,
  isgroundterm(L, YN).

groundterm(Term):-
  isgroundterm(Term, X),
  !,
  X == yes.
