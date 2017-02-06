:- initialization(main).

main:-
  /* This will overflow starting at 20 */
  findall(_, print_factorial_up_to(30), _),
  halt.

factorial(0,1).
factorial(N,F):-
  N>0,
  N1 is N-1,
  factorial(N1,F1),
  F is N*F1.

print_factorial(N,F):-
  factorial(N, F),
  write(N),
  write('! = '),
  write(F),
  nl.

print_factorial_up_to(N, MAX):-
  N=<MAX,
  N1 is N+1,
  print_factorial(N,_),
  print_factorial_up_to(N1, MAX).

print_factorial_up_to(MAX):-
  print_factorial_up_to(0, MAX).
