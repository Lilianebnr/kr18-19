inserta_en_list_ord(Elem, [], [Elem]).
inserta_en_list_ord(Elem, [Cab|Resto], [Elem,
Cab|Resto]):-
   Elem =< Cab.
inserta_en_list_ord(Elem, [Cab|Resto], [Cab|R]):-
   Elem > Cab,
 inserta_en_list_ord(Elem, Resto, R).
 
 
 
 ordena_insercion([],[]).
ordena_insercion([Cab|Resto], RT):-
   ordena_insercion(Resto, R),
   inserta_en_list_ord(Cab,R, RT).