



% p2d(+P,-D)
% it is true that if D unify with a
% decimal number equivalent to the 
% Peano represetation of P 

p2d(0, 0).

p2d(n(X),D2) :- p2d(X,D), D2 is D+1.