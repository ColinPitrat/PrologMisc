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
