/* Ejemplo: Definición de operadores. */

% Definición de operadores.

:- op(300,xfx,contiene).

% Predicado contiene(X,L) que indica si el elemento X se encuentra 
% contenido en la lista L.
contiene(E,[E|_]). 
contiene(E,[_|R]) :- contiene (E,R).
