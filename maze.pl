
% Sailling Game.

% State Problem Game.

% state( pos(X,Y)).

% map(MaxX, MaxY).

map(20, 20).
% valid(X,Y)
valid(X,Y):-map(MaxX, MaxY), X>= 0, Y>=0, 
  X=< MaxX, Y=<MaxY.

% 2. Define movements
%

mov(running, state(pos(X,Y), state(pos(X,Y2)) ):-
 Y2 is Y-1, valid(X,Y2).
 
 % Port Side
mov(port_beam_reach, state(pos(X,Y)), state( X2,Y)):-
 X2 is X+1, valid(X2,Y).
mov(port_broad_reach, state(pos(X,Y), state(pos(X2,Y2)):-
 X2 is x+1, Y2 is Y-1, valid(X2,Y2).
mov(port_close_hauled, state(pos(X,Y), state(pos(X2,Y2)):-
 X2 is x+1, Y2 is Y+1, valid(X2,Y2).
 
 
 % Starboard Side 
mov(starboard_beam_reach,2, state(pos(X,Y), state(pos(X2,Y)):-
 X2 is x-1, valid(X2,Y2).
mov(starboard_broad_reach, 1, state(pos(X,Y), state(pos(X2,Y2)):-
 X2 is x+1, Y2 is Y-1, valid(X2,Y2).
 mov(starboard_close_hauled, 4, state(pos(X,Y), state(pos(X2,Y2)):-
 X2 is x-1, Y2 is Y+1, valid(X2,Y2).
 
% 3.Definrthe path
% path(+InitialState, +FinalState, +Visited, -Path, -Time 
%it is true if Path unify with a list of movement
 
 


  
