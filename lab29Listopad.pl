 /*1. Napisz w Prologu klauzule, obliczająca pole kwadratu oraz koła.*/

kwadrat(Bok, Pole1) :-
    Pole1 is Bok * Bok.
    
kolo(Promien, Pole2) :-
    Pole2 is pi * Promien * Promien.

 /*2. Napisz w Prologu klauzule, obliczająca średnią arytmetyczna dwóch liczb.*/
       
srednia(Liczba1, Liczba2, Wynik) :-
    Wynik is (Liczba1 +Liczba2) / 2.

/*3. Dla faktów podanych napisz klauzule,
 *  która wypisze tylko nazwy figur, które maja nie więcej niż piec ścian.*/
figura(kwadrat,4).
figura(trojkat,3).
figura(trapez,4).
figura(pieciokat_foremny,5).
figura(szczesciokat_foremny,6).
figura(osmiokat_foremny,8).
figura(dziesieciokat_foremny,10).

figury_mniej_niz_5scian :-
    figura(Nazwa, Liczba_scian),
    Liczba_scian =< 5,
    write(Nazwa).

/* 4. W pewnym lesie mieszka lew i nosorożec,
 *  Lew kłamie w poniedziałki, wtorki, środy, w pozostałedni mówi prawdę,
 *  nosorożec kłamie w czwartki, piątki i soboty w pozostałe dni mówi prawdę.
 *  Napytanie jaki był wczoraj dzień odpowiedzieli:
• Lew: wczoraj był jeden z dni w które kłamię,
• Nosorożec: wczoraj był jeden z dni w których ja również kłamię.
*/

dzien_tygodnia(poniedzialek, 1).
dzien_tygodnia(wtorek, 2).
dzien_tygodnia(sroda, 3).
dzien_tygodnia(czwartek, 4).
dzien_tygodnia(piatek, 5).
dzien_tygodnia(sobota, 6).
dzien_tygodnia(niedziela, 7).

lew_klamie(Dzien) :-
    dzien_tygodnia(Dzien, NumerDnia),
    NumerDnia >= 1, NumerDnia =< 3.

nosorozec_klamie(Dzien) :-
    dzien_tygodnia(Dzien, NumerDnia),
    (NumerDnia >= 4, NumerDnia =< 6).

wczoraj_lew_klamal(Wczoraj) :-
    dzien_tygodnia(Wczoraj, NumerDniaWczoraj),
    NumerDniaWczoraj > 1, NumerDniaWczoraj =< 3.

wczoraj_nosorozec_klamal(Wczoraj) :-
    dzien_tygodnia(Wczoraj, NumerDniaWczoraj),
    (NumerDniaWczoraj >= 4, NumerDniaWczoraj =< 6).

wczoraj_obaj_klamali(Dzien) :-
    wczoraj_lew_klamal(Dzien),
    wczoraj_nosorozec_klamal(Dzien).

wczoraj_byl(Wczoraj) :-
    dzien_tygodnia(Wczoraj, _),
    wczoraj_obaj_klamali(Wczoraj).

/* 5. Opracuj zestaw klauzul, które pozwolą rozwiązać następujący problem:
• Dla pewnego równania zastąpiono cyfry dużymi literami alfabetu, 
i uzyskano wyrażenie:
SEND + MORE = MONEY
• Pojedyncza litera koduje jedną cyfrę,
• Różne litery kodują różne cyfry,
• Wyrażenie jest poprawne algebraicznie,
Odpowiedz na pytania:
• Ile rozwiązań posiada przedstawione zadanie,
• Podaj przykładowe cyfry, które podstawione za litery rozwiązują równanie*/

/*
 * 6. Napisz program w prologu, który rozwiązuje układ równań:

Jako dziedzinę wartości argumentów przyjmij przedział z zakresu (-1000,1000)*/



dziedzina:-
    X > -1000,
    X <1000.
uklad_rownan(X, Y, wynik_koncowy) :-
    Y is 2 * X * X - 5 * X - 9,
    Y is - X * X + 8 * X +2,
    write(X),
    write(Y).
wynik_kokcowy(X, Y).




