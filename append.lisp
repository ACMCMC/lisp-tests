(defun cadr (x) (car (cdr x)))
(defun append (lst x) (if
                        (eq (cadr lst) nil)
                        (cons (car lst) (cons x nil))
                        (cons (car lst) (append (cdr lst) x))))
(setq x '(1 2 3))
(setq x2 (append (list 1 2 3) 5))
(print x)
(print x2)
