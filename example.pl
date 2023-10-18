/*ALA LUBI KOTY */
lubi(ala, koty).
lubi(franek, rower).

kobieta(maria).
mezczyzna(tomek).

daje(jan,gazeta,maria).

/*ala lubi osoby ktore lubia koty*/
/*ala lubi x je¿eli x lubi koty*/

colubi(ala, X):-
    lubi(X,koty).

kogolubi(ala, X):-
    lubi(X, psy),
    mezczyzna(X).



