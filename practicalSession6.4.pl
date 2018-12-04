% Practical task 1
member1(M, List) :-
    append([M], _, X),
    append(_, X, List).

member2(M, [H|T]) :- M = H, ! ; member2(M, T).

% Practical task 2
set([], []).
set([H|T1], [H|T2]) :- \+member(H, T1), set(T1, T2).
set([H|T1], List2) :- member(H, T1), set(T1, List2).

% Practical task 3
flatten([], []).
flatten([H|T1], [H|T2]) :- \+is_list(H), flatten(T1, T2).
flatten([[]|T1], List2) :- flatten(T1, List2).
flatten([List|T1], [H|T2]) :- flatten(List, [H|T]), flatten([T|T1], T2).
