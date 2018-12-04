tran(eins,   one).
tran(zwei,   two).
tran(drei,   three).
tran(vier,   four).
tran(fuenf,  five).
tran(sechs,  six).
tran(sieben, seven).
tran(acht,   eight).
tran(neun,   nine).

listTran([], []).
listTran([H1|T1], [H2|T2]) :- tran(H1, H2), listTran(T1, T2).
