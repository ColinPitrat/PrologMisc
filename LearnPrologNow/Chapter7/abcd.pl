abcd --> intern_abcd(M, N).

intern_abcd(M, N) --> a(N), b(M), c(M), d(N).

a(0) --> [].
a(succ(N)) --> [a], a(N).

b(0) --> [].
b(succ(M)) --> [b, b], b(M).

c(0) --> [].
c(succ(M)) --> [c, c], c(M).

d(0) --> [].
d(succ(N)) --> [d], d(N).
