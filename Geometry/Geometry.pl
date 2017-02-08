point(_, _).

line(point(X1, Y1), point(X2, Y2)):-
	X1 \= X2;
	Y1 \= Y2.

vertical_line(P1, P2):-
	line(P1, P2),
	P1 = point(X, _),
	P2 = point(X, _).

horizontal_line(P1, P2):-
	line(P1, P2),
	P1 = point(_, Y),
	P2 = point(_, Y).

circle(P, R):-
  P = point(_, _),
  R > 0.

/* Case where X1 != X2 and Y1 != Y2 */
in_line(P, L):-
  L = line(point(X1, Y1), point(X2, Y2)),
  Y1 \= Y2,
  X1 \= X2,
  P = point(X, Y),
  K = (Y1-Y)/(Y1-Y2),
  K =:= (X1-X)/(X1-X2).

/* Case where X1 = X2 */
in_line(P, L):-
  L = line(point(X1, _), point(X2, _)),
  X1 = X2,
  P = point(X, _),
  X = X1.

/* Case where Y1 = Y2 */
in_line(P, L):-
  L = line(point(_, Y1), point(_, Y2)),
  Y1 = Y2,
  P = point(_, Y),
  Y = Y1.

/* TODO: in_segment (ensure between X1 & X2 and Y1 & Y2 (both must be checked in case of X1 == X2)) */
