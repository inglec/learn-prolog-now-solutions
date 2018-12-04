% split(List, Positive, Negative)
split([], [], []).
split([H|T], [H|PT], N) :- H >= 0, !, split(T, PT, N).
split([H|T], P, [H|NT]) :- H < 0, split(T, P, NT).
