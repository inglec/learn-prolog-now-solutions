% Using rev/2
last1(List, H) :- rev(List, [H|_]).

rev([H|T], R) :- revHelper(T, [H], R).
revHelper([], R, R).
revHelper([H|T], A, R) :- revHelper(T, [H|A], R).

% Using recursion
last2([X], X).
last2([_|T], X) :- last2(T, X).
