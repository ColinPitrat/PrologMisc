/* a^n b^n grammar */

s  -->  [a, b].
s  -->  l, s, r.

l  -->  [a].
r  -->  [b].
