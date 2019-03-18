/* Ejemplo: Cálculo de área y perímetro de triángulos. */

% Base de conocimientos.

triangulo(a,lados(4,4,5)).
triangulo(b,lados(3,25,26)).

% Predicado perimetro(T,P) que relaciona al triángulo T con su 
% perímetro P.
perimetro(T,P) :-
    triangulo(T,lados(A,B,C)),
    P is A + B + C.

% Predicado perimetro(T,A) que relaciona al triángulo T con su 
% área A.
area(T,A) :-
    triangulo(T,lados(X,Y,Z)),
    semiperimetro(T,S),
    A is sqrt(S*(S-X)*(S-Y)*(S-Z)).

% Predicado semiperimetro(T,S) que relaciona al triángulo T con su 
% semiperímetro S.
semiperimetro(T,S) :-
    triangulo(T,lados(A,B,C)),
    S is (A+B+C) / 2.