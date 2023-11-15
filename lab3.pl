[].
pisz([]).
pisz(X|Y):-
    write(X), write(' '),
    pisz(Y).

nalezy(X,[X|_]).
nalezy(X,[_|Yogon]):-
    nalezy(X,Yogon).
  
  log(2,3).
  
% Predykat wyznaczający długość listy
dlugosc([], 0). % Długość pustej listy wynosi 0

dlugosc([_|T], Len) :-
    dlugosc(T, LenT), % Oblicz długość ogona listy
    Len is LenT + 1. % Długość listy to długość ogona zwiększona o 1
  
  lacz([], L, L).
lacz([H|T1], L2, [H|T3]) :-
    lacz(T1, L2, T3).
  
  dodaj_element(E, Lista, NowaLista) :-
    NowaLista = [E | Lista].
  
 usun(E, Lista, NowaLista) :-
    select(E, Lista, NowaLista).ostatni(E, [E]).
  
  
ostatni(E, [_|T]) :-
    ostatni(E, T).
  
ostatni(E, Lista) :-
    append(_, [E], Lista).
