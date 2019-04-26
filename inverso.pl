% invertir(+Lista, -ListR) 
invertir([], []).
invertir(Head, Tails,R2) :-invertir(Tails,R), append(R,[Head],R2).