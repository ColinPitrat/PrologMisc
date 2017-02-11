accMax([], Z, Z).
accMax([H | T], Y, Z):- 
  H > Y,
  accMax(T, H, Z).
accMax([_ | T], Y, Z):- 
  accMax(T, Y, Z).
max([H | T], M):- accMax(T, H, M).

accMin([], Z, Z).
accMin([H | T], Y, Z):- 
  H < Y,
  accMin(T, H, Z).
accMin([_ | T], Y, Z):- 
  accMin(T, Y, Z).
min([H | T], M):- accMin(T, H, M).
