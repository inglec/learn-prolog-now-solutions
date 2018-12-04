greaterThan(succ(X), 0).
greaterThan(succ(X), succ(Y)) :- greaterThan(X, Y).
