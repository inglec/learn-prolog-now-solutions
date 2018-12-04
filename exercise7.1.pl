s(X, Y) :- foo(X, A), bar(A, B), wiggle(B, Y).

foo([choo|W], W).
foo(X, Y) :- foo(X, A), foo(A, Y).

bar(X, Y) :- mar(X, A), zar(A, Y).

mar(X, Y) :- me(X, A), my(A, Y).

me([i|W], W).

my([am|W], W).

zar(X, Y) :- blar(X, A), car(A, Y).

blar([a|W], W).

car([train|W], W).

wiggle([toot|W], W).
wiggle(X, Y) :- wiggle(X, A), wiggle(A, Y).
