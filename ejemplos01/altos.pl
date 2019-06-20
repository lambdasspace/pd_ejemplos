/* Ejemplo: Base de conocimientos de la estatura de un conjunto
de personas. */

% Base de conocimientos.

alto(manuel,adriana).
alto(ricardo,manuel).
alto(javier,ricardo).
alto(alejandro,adriana).
alto(javier,alejandro).

% Predicado que indica si una persona X es más alta que otra Y.
mas_alto(X,Y) :- alto(X,Y). 
mas_alto(X,Y) :- alto(X,Z), mas_alto(Z,Y).
