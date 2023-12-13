;Zadania listy
;1. Napisz program który łączy dwie listy: (1 2 3 4) i (a b c d),
;2. Napisz funkcję która odwraca listę,
;3. Napisz funkcję, która sprawdza, czy podana lista jest palindromem,
;4. Napisz funkcję, która sortuje rosnąco listę liczb całkowitych,
;5. Napisz funkcję, która oblicz iloczyn dwóch list liczbowych parami różnych, w wyniku
;otrzymujemy listę iloczynów,
;6. Napisz funkcję, która zlicza ilość wystąpień liczb podzielnych przez trzy 
;na podanej liście.
;7. Napisz funkcję w języku CLisp, który dla podanej listy liczb całkowitych, 
;wypisze ile jest liczba podzielnych przez N na podanej liście, 
;N powinno być parametrem funkcji.
;8. Napisz funkcję, która dla podanego stosu wybierze tylko wartości podzielne przez 5,
;i zapisze na stosie w odwrotnym porządku,


(defun wybierz-i-odwroc (stos)
  (let ((nowy-stos '()))
    (dolist (element stos)
      (when (zerop (mod element 5))
        (push element nowy-stos)))
    nowy-stos))

; Przykład użycia
(setq moj-stos '(10 3 25 7 15 8))
(print (wybierz-i-odwroc moj-stos))

;9. Napisz funkcję, która generuję listę liczb całkowitych z przedziału <A,B> 
;podanego przez użytkownika. Można zastosować funkcję push.
;10. Napisz funkcję, która generuje listę znaków z podanego przedziału kodów ASCII.

(format t "Hello, World!")
(setq listA (list 1 2 3 4))
(setq listB (list 1 2 3 4))
(print listA)



(defun laczenie (listA listB)
(setq listA (list 1 2 3 4))
  (let ((wynik '()))
    (dolist (item listA)
      (push item wynik))
    (dolist (item listB)
      (push item wynik))
    (reverse wynik)))


(setq lista (list 1 2 3 4))
(print lista)
;zad3
(defun palindrom-p (lista)
  (equal lista (odwroc-liste lista)))

(defun odwroc-liste (lista)
  (if (null lista)
      nil
      (append (odwroc-liste (cdr lista)) (list (car lista)))))

; Przykłady użycia
(print (palindrom-p '(1 2 3 2 1)))  ; Powinno zwrócić T (prawda), ponieważ lista jest palindromem
(print (palindrom-p '(1 2 3 4 5)))  ; Powinno zwrócić NIL (fałsz), ponieważ lista nie jest palindromem






(do ((x 1 (+ x 1))
  (y 1 (* y 2)))
  ((> x 5) y)
  (print y)
  (print 'working))
  
(do ((i 0 (incf i))
(j 10 (decf j)))
((zerop j) 'done)
(print (+ i j)))

(cons 2 5) => 2. 8
'(1 2 3 4 5)
(car '(1 2 3)) => 1
(cdr '(1 2 3)) => 2 3

;(dolist (item lista) (print item))


;(setq stos nil)
;(push 10 stos) = 10
;(push 20 stos) = 20 10
;(push 30 stos) = 30 20 10
;(push 40 stos) = 40 30 20 10
;(pop stos) = 30 20 10
