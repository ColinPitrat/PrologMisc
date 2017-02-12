:- initialization(main).

main:-
  write(' ===== myappend ===== '), nl,
  consult('append.pl'),
  myappend([a,b,c],[1,2,3],X),
  write(X), nl,
  findall([L1, L2], myappend(L1,L2,[a,b,c,d]), Bag),
  write(Bag), nl,
  findall(L, myprefix(L, [a,b,c,d]), Bag2),
  write(Bag2), nl,
  findall(L, mysuffix(L, [a,b,c,d]), Bag3),
  write(Bag3), nl,
  findall(L, mysublist(L, [a,b,c,d]), Bag4),
  write(Bag4), nl,
  myreverse([a,b,c,d], Rev),
  write(Rev), nl,
  write(' ===== ex6_1 ===== '), nl,
  consult('ex6_1.pl'),
  doubled([a,b,c,a,b,c]),
  doubled([foo,gubble,foo,gubble]),
  write(' ===== ex6_2 ===== '), nl,
  consult('ex6_2.pl'),
  palindrome([n,u,r,s,e,s,r,u,n]),
  palindrome([r,o,t,a,t,o,r]),
  write(' ===== ex6_3 ===== '), nl,
  consult('ex6_3.pl'),
  toptail([a,b,c], T),
  write(T), nl,
  toptail([a,b,c,d,e,f], T2),
  write(T2), nl,
  toptail2([a,b,c], T3),
  write(T3), nl,
  toptail2([a,b,c,d,e,f], T4),
  write(T4), nl,
  write(' ===== ex6_4 ===== '), nl,
  consult('ex6_4.pl'),
  mylast([a,b,c,d,e,f], Last),
  write(Last), nl,
  mylast2([a,b,c,d,e,f], Last2),
  write(Last2), nl,
  write(' ===== ex6_6 ===== '), nl,
  consult('ex6_6.pl'),
  zebra(Z), nl,
  write(Z), nl,
  halt.