/* a^n b^n grammar */

s  -->  [].
s  -->  l, s, r, r.

l  -->  [a].
r  -->  [b].
