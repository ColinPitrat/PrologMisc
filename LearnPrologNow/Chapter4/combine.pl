combine1([], L, L).
combine1(L, [], L).
combine1([H1 | T1], [H2 | T2], [H1, H2 | T]):- combine1(T1, T2, T).

combine2([], [], []).
combine2([], [H | T2], [[nil, H] | T]):- combine2([], T2, T).
combine2([H | T1], [], [[H, nil] | T]):- combine2(T1, [], T).
combine2([H1 | T1], [H2 | T2], [[H1, H2] | T]):- combine2(T1, T2, T).

combine3([], [], []).
combine3([], [H | T2], [j(nil, H) | T]):- combine3([], T2, T).
combine3([H | T1], [], [j(H, nil) | T]):- combine3(T1, [], T).
combine3([H1 | T1], [H2 | T2], [j(H1, H2) | T]):- combine3(T1, T2, T).
