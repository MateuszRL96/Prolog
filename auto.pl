auto(seat, 10, 45).
auto(skoda, 8, 30).
auto(opel, 5, 20).
auto(vw, 12, 50).
auto(toyota, 15, 150).


wyswietl_samochody :-
  auto(Nazwa, Argument2, Argument3),
  Argument2 > 5,
  Argument3 < 60,
  write(Nazwa),  %, write(' '), write(Argument2), write(' '), write(Argument3), 
  nl,
  fail.  % fail jest używane, aby wymusić nawracanie do kolejnego wyniku

ile_przejedzie :-
    auto(Nazwa, Arg1, Arg2),
	Wynik is Arg2 / Arg1,
	write(Nazwa),
	write(' przejedzie '),
	write(Wynik), 
	write(' kilometrow'),
	nl,
	fail.