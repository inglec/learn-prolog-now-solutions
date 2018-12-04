directTrain(saarbruecken, dudweiler).
directTrain(forbach,      saarbruecken).
directTrain(freyming,     forbach).
directTrain(stAvold,      freyming).
directTrain(fahlquemont,  stAvold).
directTrain(metz,         fahlquemont).
directTrain(nancy,        metz).

% travel(From, To)
travel(From, To) :- directTrain(From, To), !.
travel(From, To) :- directTrain(From, Visited), travel(Visited, To).

route(From, To, []) :- directTrain(From, To), !.
route(From, To, [Visited|Route]) :- directTrain(From, Visited),
                                    route(Visited, To, Route).
