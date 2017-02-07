Starting prolog lead to the following prompt:
```
$ gprolog
GNU Prolog 1.3.0
By Daniel Diaz
Copyright (C) 1999-2007 Daniel Diaz
| ?-
```

We can load the knowledge base with `consult(filename).` or the shortcut `[filename]`:
```
| ?- [kb1]
.
compiling kb1.pl for byte code...
kb1.pl compiled, 16 lines read - 671 bytes written, 12 ms

yes
```

We can ask prolog about it's internal knowledge base with `listing/0` and filter it on one particular predicate with `listing/1`:
```
| ?- listing.

woman(mia).
woman(jody).
woman(yolanda).

playsAirGuitar(jody).

party.

yes
| ?- listing(woman).

woman(mia).
woman(jody).
woman(yolanda).

yes
```

We can query the knowledge base:
```
| ?- woman(X).

X = mia ? ;

X = jody ? ;

X = yolanda

yes
| ?- woman(X),
playsAirGuitar(X).

X = jody ? a

no
```

We can load another knowledge base and it will mix with the existing state. Redefinition will overload previous predicates with a warning.
```
| ?- [kb2].
compiling kb2.pl for byte code...
kb2.pl compiled, 4 lines read - 732 bytes written, 5 ms
warning: kb2.pl:4: redefining procedure playsAirGuitar/1
         kb1.pl:15: previous definition

yes
| ?- listing.

listens2Music(mia).
listens2Music(yolanda) :-
	happy(yolanda).

woman(mia).
woman(jody).
woman(yolanda).

playsAirGuitar(A) :-
	listens2Music(A).

party.

happy(yolanda).

yes
| ?- playsAirGuitar(mia).

yes
| ?- playsAirGuitar(jody).

no
```
