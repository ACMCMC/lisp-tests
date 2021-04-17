(defun cadr (x) (car (cdr x))) ; realmente ya viene definida
(defun append (lst x) (if
                        (eq (cadr lst) nil) ; si estamos al final de la lista...
                        (cons (car lst) (cons x nil)) ; devolvemos una nueva celda cons que sea (ultimo_elem_de_lst x)
                        (cons (car lst) (append (cdr lst) x)))) ; devolvemos (elemento_actual_de_lst append_del_siguiente)
(setq x (list 1 2 3))
(setq x2 (append x 5))
(print x)
(print x2)
