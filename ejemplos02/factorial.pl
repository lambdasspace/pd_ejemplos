% Predicado factorial(N,F) que relaciona un número N con su respectivo 
% factorial F.
factorial(0,1) :- !.
factorial(X,F) :-
   X2 is X-1,
   factorial(X2,F2),
   F is X*F2.

% Predicado muestra_factorial(X) que escribe el factorial del 
% número X.
muesta_factorial(X) :-
   factorial(X,F),
   write(F).
