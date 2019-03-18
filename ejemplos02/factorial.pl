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
   write("El factorial de "), write(X), write(" es"),
   nl,
   factorial(X,F),
   tab(3), write(F).
