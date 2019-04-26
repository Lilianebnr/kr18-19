append1([],L,L).
append1([Head|Tails], List2, [Head|R]):- append1(Tails,List2,R).
