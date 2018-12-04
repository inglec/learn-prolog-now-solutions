% Street = [[Nationality, House, Pet]]

zebra(Keeper) :-
    length(Street, 3), % Three neighbouring houses.
    member([_, red, _], Street), % One is red.
    member([_, green, _], Street), % One is green.
    member([_, blue, _], Street), % One is blue.
    member([english, red, _], Street), % Englishman lives in the red house.
    member([spanish, _, jaguar], Street), % Jaguar is the pet of the spanish family.
    sublist([[_, _, snail], [japanese, _, _]], Street), % The Japanese lives to the right of the snail-keeper.
    sublist([[_, _, snail], [_, blue, _]], Street), % The snail-keeper lives to the left of the blue house.
    member([Keeper, _, zebra], Street). % Who keeps the zebra?


sublist(Sub, List) :- append(Sub, _, X), append(_, X, List).
