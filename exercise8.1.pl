sentence --> nounPhrase(A), verbPhrase(A).

nounPhrase(A) --> det, noun(A).

verbPhrase(A) --> verb(A), nounPhrase(_).
verbPhrase(A) --> verb(A).

det --> [the].
det --> [a].

noun(s) --> [woman].
noun(s) --> [man].
noun(p) --> [women].
noun(p) --> [men].
noun(_) --> [apple].
noun(_) --> [pear].

verb(s) --> [eats].
verb(p) --> [eat].
