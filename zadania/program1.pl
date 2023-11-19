osoba(a, 17, wycieczka).
osoba(b, 20, siatkowka).
osoba(c, 24, piwo).
osoba(k, 34, siatkowka).
osoba(c, 16, czolg).
osoba(w, 16, piwo).
osoba(z, 19, siatkowka).

takietam(A, C) :- osoba(A, B, Z), osoba(C, D, Z),A\=C, B > 18, D > 18.
takietam2(A) :- osoba(A,_,piwo), osoba(A,_,czolg).
