% Predicado fibonacci(N,F) que relaciona a ún número N con su 
% correspondiente valor F en la sucesión de Fibonacci.
fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,X) :-
   N2 is N-1,
   N3 is N-2,
   fibonacci(N2,F1),
   fibonacci(N3,F2),
   X is F1 + F2.
