% Hechos. Base de conocimientos.
estado(1).
estado(2).
estado(3).

inicial(1).
final(3).

transicion(1,2,b).
transicion(2,2,b).
transicion(2,3,a).
transicion(3,2,b).

% Predicado acepta(L) que indica si una cadena es aceptada por el 
% autómata definido.
acepta(L) :-
   inicial(Q),
   aceptaAux(L,Q).

% Regla auxiliar que se cumple si una cadena es aceptada por un AFN 
% dado un estado.
aceptaAux([],Q) :- final(Q).
aceptaAux([C|R],Q) :-
   transicion(Q,Y,C),
   aceptaAux(R,Y).
