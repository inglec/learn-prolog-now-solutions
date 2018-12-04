% Practical task 1
nu1(X, Y) :- \+(X = Y).

nu2(X, Y) :- X \= Y.

nu3(X, X) :- !, fail.
nu3(_, _).

% Practical task 2
unifiable([], _, []).
unifiable([H|T1], Term, List2) :- H \= Term, !, unifiable(T1, Term, List2).
unifiable([H|T1], Term, [H|T2]) :- unifiable(T1, Term, T2).
