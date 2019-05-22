% Hanoi Tower Game

%  |        |       |
%  |        |       |
% ----     ----    ----
%  A        B       C
%

% hanoi(+Num, +A, +B, +C, -Result)
% it is true if Resutlt unify with a list
% of movement needed to transport N discs
% from A to C using B as auxiliary tower.
% The game have the restriction that is not 
% possible to put the disc over other one that 
% is an smaller disc. it is not possible to 
% move more than one disc in each movement.


% 1.Move n-1 discs from A to B using C as auxiliary tower .
%
% 2. Move disc 1 from A to C
%
% 3. Move n-1 discs from B to C suing A as auxiliary tower.

hanoi(1, A, _, C, [move(A, C)]).
hanoi(N, A, B, C, R):-
    N2 is N-1,
	hanoi(N2, A, C, B, R1),
	hanoi(1, A, _, C, R2),
	hanoi(N2, B, A, C, R3),
	append([R1, R2, R3], R).
