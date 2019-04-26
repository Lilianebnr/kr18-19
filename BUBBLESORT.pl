ordenada([]).
ordenada([_]).
ordenada([E1,E2|R]):- E1 =< E2, ordenada([E2|R]).

bubblesort(Lista,Lista):- ordenada(Lista).
bubblesort(L,R2):- append(Cab,[E1,E2|Resto],L), E1>E2, append(Cab, [E2,E1|Resto], R), bubblesort(R,R2).


