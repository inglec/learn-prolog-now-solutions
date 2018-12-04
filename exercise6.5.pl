% Using recursion.
swapFL1([H1|T1], [H2|T2]) :-
    swapFL1Helper(T1, T2, H1, H2).

swapFL1Helper([H2], [H1], H1, H2).
swapFL1Helper([H|T1], [H|T2], H1, H2) :-
    swapFL1Helper(T1, T2, H1, H2).

% Using append/3.
swapFL2([H1|T1], [H2|T2]) :-
    append(Mid, [H2], T1),
    append(Mid, [H1], T2).
