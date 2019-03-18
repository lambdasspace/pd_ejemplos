% Predicado contiene(X,L) que indica si el elemento X se encuentra 
% contenido en la lista L.
contiene(E,[E|_]).
contiene(E,[_|R]) :- contiene(E,R).

% Regla que se cumple si una lista es el resultado de concatenar
% otras dos.
concatena([],L2,L2).
concatena([C1|R1],L2,[C1|R3]) :- concatena(R1,L2,R3).
