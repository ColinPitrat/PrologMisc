/* a^n b^n grammar */

s  -->  [].
s  -->  l, s, r.

l  -->  [a].
r  -->  [b].
