loves(vincent, mia).
loves(marsellus, mia).
jealous(X, Y) :- loves(X, A), loves(Y, A), X \= Y.
