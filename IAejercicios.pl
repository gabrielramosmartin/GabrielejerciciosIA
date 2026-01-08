% Ejercicio 1: Invertir una lista
invertir([], []).
invertir([X|Xs], R) :- invertir(Xs, Rs), append(Rs, [X], R).

% Ejercicio 2: Suma de elementos
sumar_lista([], 0).
sumar_lista([X|Xs], S) :- sumar_lista(Xs, Ss), S is X + Ss.

% Ejercicio 3: Último elemento
ultimo_elemento([X], X).
ultimo_elemento([_|Xs], U) :- ultimo_elemento(Xs, U).

% Ejercicio 4: Filtrar mayores que N
filtrar_mayores([], _, []).
filtrar_mayores([X|Xs], N, [X|R]) :- X > N, filtrar_mayores(Xs, N, R).
filtrar_mayores([X|Xs], N, R) :- X =< N, filtrar_mayores(Xs, N, R).

% Ejercicio 5: Hermano/a
progenitor(juan, ana).
progenitor(juan, pedro).
progenitor(maria, ana).
progenitor(maria, pedro).

hombre(pedro).
mujer(ana).

es_hermano(X, Y) :- progenitor(P, X), progenitor(P, Y), X \= Y.