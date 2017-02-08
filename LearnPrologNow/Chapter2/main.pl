:- initialization(main).

main:-
  write(' ===== Exercice 2.3 ====='), nl,
  write('All sentences:'), nl,
  consult('ex2_3.pl'),
  findall(_, sentence, _),
  write(' ===== Exercice 2.4 ====='), nl,
  consult('ex2_4.pl'),
  findall(_, crossword, _),
  halt.

sentence:-
  sentence(Word1,Word2,Word3,Word4,Word5),
  write(Word1), write(' '),
  write(Word2), write(' '),
  write(Word3), write(' '),
  write(Word4), write(' '),
  write(Word5), write(' '), nl.

crossword:-
  crossword(V1, V2, V3, H1, H2, H3),
  write('A solution:'), nl,
  write('V1 = '), write(V1), nl,
  write('V2 = '), write(V2), nl,
  write('V3 = '), write(V3), nl,
  write('H1 = '), write(H1), nl,
  write('H2 = '), write(H2), nl,
  write('H3 = '), write(H3), nl, nl.
