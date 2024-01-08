;gnu clisp  2.49.60

(defun fan (list1)
  (let ((y nil))
    (dolist (x list1 y)
      (setq y (cons x y)))))

(defun corobi (L)
  (cond
    ((null L) T)
    ((equal (car L) (car (last L)))
      (corobi (cdr (fan (cdr L)))))
    (t nil)))

; Przykłady użycia
(corobi '(a b c d e f)) ; Wynik: NIL
;(corobi '(a b c a b))   ; Wynik: T
 
