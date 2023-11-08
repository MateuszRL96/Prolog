silnia(0,1).
silnia(N, Wynik) :-
    N > 0,
    N1 is N -1,
    silnia(N1, Wynik1),
    Wynik is N * Wynik1.
dodaj(A, B, C) :-
    C is A + B,
    write('Wynik: '), write(C), nl.


zadanie :-
    write('Podaj podstawe potegi (a) = '), read(A),
    write('Podaj wykladnik potegi (n) = '), read(N),
    (   N >= 0 ->  
    silnia3(A, N, 1, Wynik),
        write('Wynik = '), write(Wynik);
    	write('Blad: N musi byc wieksze od 0')
    ).

silnia3(_,0, X, 1).
silnia3(A, N, X, Wynik) :-
   ( N > 0,
    	NoweX is X * A,
	NoweN is N-1,
silnia3(A, NoweN, NoweX, Wynik),).
     ????????????????????????????????????????????????????????????????

fib(0, 0).
fib(1, 1).
fib(N, Wynik) :-
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, W1),
    fib(N2, W2),
    Wynik is W1 + W2.



hanoi(1, A, B, _) :-
    write('Przenies krazek z '), write(A), write(' na '), write(B), nl.
hanoi(N, A, B, C) :-
    N > 1,
    N1 is N - 1,
    hanoi(N1, A, C, B),
    hanoi(1, A, B, _),
    hanoi(N1, C, B, A).