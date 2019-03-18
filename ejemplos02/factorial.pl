% Predicado factorial(N,F) que relaciona un número N con su respectivo 
% factorial F.
factorial(0,1) :- !.
factorial(X,F) :-
   X2 is X-1,
   factorial(X2,F2),
   F is X*F2.
