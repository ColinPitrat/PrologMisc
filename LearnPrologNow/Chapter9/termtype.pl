termtype(Term, 'atom'):-
  atom(Term).

termtype(Term, constant):-
  number(Term);
  atom(Term).

termtype(Term, 'list'):-
  list(Term).

termtype(Term, variable):-
  var(Term).

termtype(Term, simple_term):-
  \+compound(Term).

termtype(_, term).
