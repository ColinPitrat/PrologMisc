s(_, N, G, P)  -->  np(subject, N, G, P),prepositional(_, _, _, _),vp(_, N, G, P). 

np(S, N, G, P)  -->  det(S, N, G, P),adjectives(S, N, G, P, []),noun(S, N, G, P).
np(S, N, G, P)  -->  pronoun(S, N, G, P).

adjectives(_, _, _, _, _) --> [].
adjectives(S, N, G, P, L) --> { adjective(S, N, G, P, [A], []), \+member(A, L)}, [A], adjectives(S, N, G, P, [A | L]). 

prepositional(_, _, _, _) --> [].
prepositional(S, N, G, P) --> preposition(S, N, G, P), np(object, N, G, P).

vp(_, N, G, P)  -->  verb(_, N, G, P),np(object, _, _, _),prepositional(_, _, _, _). 
vp(_, N, G, P)  -->  verb(_, N, G, P). 

det(S, N, G, P) --> [Word], {lex(Word, det(S, N, G, P))}.
noun(S, N, G, P) --> [Word], {lex(Word, noun(S, N, G, P))}.
verb(_, N, G, P) --> [Word], {lex(Word, verb(_, N, G, P))}.
pronoun(S, N, G, P) --> [Word], {lex(Word, pronoun(S, N, G, P))}.
adjective(S, N, G, P) --> [Word], {lex(Word, adjective(S, N, G, P))}.
preposition(S, N, G, P) --> [Word], {lex(Word, preposition(S, N, G, P))}.

/* Lexicon */
lex('I',  pronoun(subject, 1, _,         singular)).
lex(you,  pronoun(subject, 2, _,         singular)).
lex(he,   pronoun(subject, 3, masculine, singular)).
lex(she,  pronoun(subject, 3, feminine,  singular)).
lex(it,   pronoun(subject, 3, neutral,   singular)).
lex(we,   pronoun(subject, 4, _,         plural)).
lex(you,  pronoun(subject, 5, _,         plural)).
lex(they, pronoun(subject, 6, _,         plural)).

lex(me,   pronoun(object, 1, _,         singular)).
lex(you,  pronoun(object, 2, _,         singular)).
lex(him,  pronoun(object, 3, masculine, singular)).
lex(her,  pronoun(object, 3, feminine,  singular)).
lex(it,   pronoun(object, 3, neutral,   plural)).
lex(us,   pronoun(object, 4, _,         plural)).
lex(you,  pronoun(object, 5, _,         plural)).
lex(them, pronoun(object, 6, _,         plural)).

lex(the,  det(_, _, _, _)).
lex(a,  det(_, _, _, singular)).

lex(and, conj).
lex(or, conj).
lex(but, conj).

lex(woman, noun(_, 3, _, singular)).
lex(man, noun(_, 3, _, singular)).
lex(dog, noun(_, 3, _, singular)).
lex(cow, noun(_, 3, _, singular)).
lex(shower, noun(_, 3, _, singular)).
lex(table, noun(_, 3, _, singular)).
lex(women, noun(_, 6, _, plural)).
lex(men, noun(_, 6, _, plural)).
lex(dogs, noun(_, 6, _, plural)).

lex(shoots, verb(_, 3, _, singular)).
lex(shoot,  verb(_, 1, _, _)).
lex(shoot,  verb(_, 2, _, _)).
lex(shoot,  verb(_, _, _, plural)).

lex(big, adjective(_, _, _, _)).
lex(fat, adjective(_, _, _, _)).
lex(small, adjective(_, _, _, _)).
lex(frightened, adjective(_, _, _, _)).

lex(on, preposition(_, _, _, _)).
lex(under, preposition(_, _, _, _)).
lex('next to', preposition(_, _, _, _)).
