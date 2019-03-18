% Regla que se cumple si F es el factorial de X.
factorial(0,1) :- !.
factorial(X,F) :-
    X2 is X-1,
    factorial(X2,F2),
    F is X*F2.
    