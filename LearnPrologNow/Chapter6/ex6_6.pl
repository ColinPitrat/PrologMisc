/* List of three houses. Each item is a color, a nationality and a pet.
   The Englishman lives in the red house
   The jaguar is the pet of the Spanish family
   The Japanese lives to the right of the snail keeper.
   The snail keeper lives to the left of the blue house.
   Who keeps the zebra ? 

   Full answer:
   [green, spanish, jaguar], [red, english, snail], [blue, japanese, zebra]
 */

/* Fix the list sizes. */
declareHouses([_, _, _]).

/* Ensure all elements are filled. */
hascolor(L, C):-
  member([C, _, _], L).
hasnationality(L, N):-
  member([_, N, _], L).
hasanimal(L, A):-
  member([_, _, A], L).
full(L):-
  hascolor(L, blue),
  hascolor(L, green),
  hascolor(L, red),
  hasnationality(L, english),
  hasnationality(L, japanese),
  hasnationality(L, spanish),
  hasanimal(L, jaguar),
  hasanimal(L, snail),
  hasanimal(L, zebra).

tip1([[red, english, _] | _]).
tip1([_ | T]):- 
  tip1(T).

tip2([[_, spanish, jaguar] | _]).
tip2([_ | T]):-
  tip2(T).

tip3([[_, _, snail], [_, japanese, _] | _]).
tip3([_ | T]):-
  tip3(T).

tip4([[_, _, snail], [blue, _, _] | _]).
tip4([_ | T]):- tip4(T).

who(X, [[_, X, zebra] | _]).
who(X, [_ | T]):-
  who(X, T).

zebra(X):-
  declareHouses(L),
  tip1(L),
  tip2(L),
  tip3(L),
  tip4(L),
  full(L),
  write(L), nl,
  who(X, L).

/* Another approach with member & sublist */
