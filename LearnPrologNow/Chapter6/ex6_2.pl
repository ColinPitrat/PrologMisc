palindrome(L):-
  append(X, Y, L),
  reverse(X, Y).
palindrome(L):-
  append(X, [H | Y], L),
  reverse(X, Y).
