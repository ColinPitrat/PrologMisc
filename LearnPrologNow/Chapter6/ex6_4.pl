mylast(L,X):-
  reverse(L, [X | _]).

mylast2([X], X).
mylast2([_ | T],X):-
  mylast2(T,X).
