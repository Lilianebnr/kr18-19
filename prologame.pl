

% State Problem Gameof Gallons
%
% We need to obtain exactly 4 gallons using 
% two bottles one with 5 gallons and other with 3 gallons
% traing to disarm the boom.
%

% State(Gallons5, Gallons3)
% Gallons5 represent the number of gallons inside 5 gallons bottle.
% Gallons3 represent the number of gallons inside 3 gallons bottle.

% initial state:
% state(0,0).

% Final state:
% state (4,_).


% creating  the movements

% 1. Fill 5 gallons bottle.
% 2. Fill 3 gallons bottle.
% 3. Put 5 gallons in the 3 gallons bottle.
% 4. Put 3 gallons in the 5 gallons bottle.
% 5. Empty 5 gallons bottles.
% 6. Empty 3 gallons bottles.

% mov(+MovementName, +StateBefore, +StateAfter). 


% 1. Fill 5 gallons bottle.
mov(fill5, state(_, G3), state(5, G3)).

% 2. Fill 3 gallons bottle.
mov(fill3, state(G5,_), state(G5, 3)).

% 3. Put 5 gallons in the 3 gallons bottle.
% option 3.1:
mov(put5in3, state(G5,G3), state(0,GT)):-
   GT is G5 + G3, GT =< 3.

% option 3.2:
mov(put5in3,state(G5,G3), state(G5N, 3)):- GT is G5 + G3, GT > 3, G5N is GT - 3.
	
	
% 4. Put 3 gallons in the 5 gallons bottle.
% option 4.1:
mov(put3in5, state(G5,G3), state(GT,0)):- GT is G5 + G3, GT=< 5.

% 5. Empty 3 gallons bottles.
mov(empty5, state(_, G3), state(0,  G3)).

% 6. Empty 3 gallons bottles.
mov(empty3, state(G5,_), start(G5, 0)).

% Creat the path. 
% Path(+InitialState, +FinalState, +Visited, -Path)
%
% it is true if path unify with a list of movements to go 
% from InitialState to FinalState without repeating states  
% in Visited list of states.

 path(Initial, Initial, _ ,[]).

 path(Initial,Final,Visited, [MovName|Path]):-
  mov(MovName, Initial, Temp),
  \+ member(Temp, Visited),
  path(Temp, Final, [ Temp|Visited]  ,Path).








