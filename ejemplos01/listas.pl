% Predicado contiene(X,L) que indica si el elemento X se encuentra 
% contenido en la lista L.
contiene(E,[E|_]).
contiene(E,[_|R]) :- contiene(E,R).

% Predicado concatena(X,Y,Z) que representa a Z como la 
% concatenación de las listas X y Y.
concatena([],L2,L2).
concatena([C1|R1],L2,[C1|R3]) :- concatena(R1,L2,R3).

% Predicado concatenaDif1(X,Y,Z) que representa a Z como la 
% concatenación de las listas X y Y.
concatenaDif1(A-Ha,B-Hb,C-Hc) :- Ha = B, Hb = Hc, C = A.
