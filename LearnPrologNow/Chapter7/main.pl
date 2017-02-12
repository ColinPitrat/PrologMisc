:- initialization(main).

main:-
  write(' ===== cfg1.pl ===== '), nl,
  consult('cfg1.pl'),
  s([the, woman, shoots, the, man], []),
  s(X, []),
  write(X), nl,
  halt.
