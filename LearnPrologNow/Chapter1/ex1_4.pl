killer(butch).
married(mia, marsellus).
dead(zed).
/* An addition just for fun */
dead(X):- kills(Y, X).
kills(marsellus, X):- footmassage(X, mia).
loves(mia, X):- dance(X).
eat(jules, X):- nutritious(X); tasty(X).

/* An addition to test kills */
footmassage(robert, mia).
/* An addition to test loves */
dance(georges).
/* Some additions to test eat */
tasty(pizza).
nutritious(pasta).
