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

myaccset([], S, S).
myaccset([H | T], Acc, S):-
  member(H, Acc),
  myaccset(T, Acc, S).
myaccset([H | T], Acc, S):-
  append(Acc, [H], NewAcc),
  myaccset(T, NewAcc, S).

myset([H | T], S):-
  myaccset(T, [H], S).
