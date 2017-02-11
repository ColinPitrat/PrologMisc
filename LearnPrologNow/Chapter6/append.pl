myappend([], L, L).
myappend([H | T], L, [H | R]):-
  myappend(T, L, R).

myprefix(P, L):-
  myappend(P, _, L).

mysuffix(S, L):-
  myappend(_, S, L).

mysublist(Sub, L):-
  mysuffix(S, L),
  myprefix(Sub, S).

myaccreverse([], Lrev, Lrev).
myaccreverse([H | T], Acc, Lrev):-
  myaccreverse(T, [H | Acc], Lrev).

myreverse(L, Lrev):-
  myaccreverse(L, [], Lrev).
