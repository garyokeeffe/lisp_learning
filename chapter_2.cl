; 1. Describe what happens when the following expressions are evaluated:
;       (a) (+ (- 5 1) (+ 3 7))
;           (+ (4) (10))
;           14
;       (b) (list 1 (+ 2 3))
;           (list 1 (5))
;           (1 5)
;       (c) (if (listp 1) (+ 1 2) (+ 3 4))
;           (if (nil) (3) (7))
;           7
;       (d) (list (and (listp 3) t) (+ 1 2))
;           (list (and nil t) (3))
;           (list (nil) (3))
;           (nil 3)
; 2. Give three distinct cons expressions that return (a b c)
;       (a) (cons 'a '(b c))
;       (b) (cons (car '(a m)) '(b c))
;       (c) (cons (car '(a m)) (cdr '(b b c)))
; 3. Using car and cdr, define a function to return the fourth element of a list.
;   (defun fourth-element (alist)
;        (car 
;            (cdr 
;                (cdr 
;                    (cdr alist)))))
; 4. Define a function that takes two arguments and returns the greater of the two.
;   (defun greater-arg (arg1 arg2)
;        (if (> arg1 arg2)
;            arg1
;            arg2))
; 5. What do these functions do?
;       (a) (defun enigma (x)
;               (and (not (null x))
;                    (or (null (car x))
;                       (enigma (cdr x))))
; enigma is a recursive function that checks whether a non-empty list contains at least one nil element.
;
;       (b) (defun mystery (x y)
;               (if (null y))
;                   nil
;                   (if (eql (car y) x))
;                       0
;                       (let ((z (mystery x (cdr y))))
;                           (and z (+ z 1))))))
; mystery finds the first index of x in y (if it exists)
;
;
;
;

