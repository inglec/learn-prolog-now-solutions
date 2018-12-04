% Practical task 1
accMin([], A, A).
accMin([H|T], A, Z) :- H < A, accMin(T, H, Z).
accMin([H|T], A, Z) :- H >= A, accMin(T, A, Z).

% Practical task 2
scalarMult(_, [], []).
scalarMult(S, [H1|T1], [H2|T2]) :- H2 is H1*S, scalarMult(S, T1, T2).

% Practical task 3
dot([], [], 0).
dot([H1|T1], [H2|T2], P) :- dot(T1, T2, OldP), P is OldP + H1*H2.
