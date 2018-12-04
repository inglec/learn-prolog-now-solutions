leaf(5).
leaf(7).

tree(leaf(X),    leaf(Y))    :- leaf(X),    leaf(Y).
tree(tree(X, Y), leaf(Z))    :- tree(X, Y), leaf(Z).
tree(leaf(X),    tree(Y, Z)) :- leaf(X),    tree(Y, Z).
tree(tree(W, X), tree(Y, Z)) :- tree(W, X), tree(Y, Z).

% Exercise 3.5

%swap(Unswapped Tree             , Swapped Tree          ).
swap(leaf(X)                     , leaf(X)               ).
swap(tree(leaf(X)   , leaf(Y)   ), tree(leaf(Y), leaf(X))).
swap(tree(tree(X, Y), leaf(Z)   ), tree(leaf(Z), A      )) :- swap(tree(X, Y), A).
swap(tree(leaf(X)   , tree(Y, Z)), tree(A      , leaf(X))) :- swap(tree(Y, Z), A).
swap(tree(tree(W, X), tree(Y, Z)), tree(A      , B      )) :- swap(tree(Y, Z), A), swap(tree(W, X), B).
