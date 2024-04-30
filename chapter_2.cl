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
;   enigma is a recursive function that checks whether a non-empty list contains at least one nil element.
;
;       (b) (defun mystery (x y)
;               (if (null y))
;                   nil
;                   (if (eql (car y) x))
;                       0
;                       (let ((z (mystery x (cdr y))))
;                           (and z (+ z 1))))))
;   mystery finds the first index of x in y (if it exists)
;
; 6. What could occur in place of the x in each of the following exchanges?
;       (a) > (car (x (cdr '(a (b c) d))))
;           B
;       car
;       (b) > (x 13 (/ 1 0))
;            13
;       (/ 1 0) returns in an error. This makes it tricky. I couldn't get an exact 
;       replacement for x that would not break due to the division by 0. Tried lambdas and ignore-errors
;       UPDATE: Looked up the answer --- it's "or"
;       (c) > (x #'list 1 nil)
;           (1)
;       apply
;
; 7. Using only operations introduced in this chapter, define a function that takes a list as an 
;   argurment and returns true if one of its elements is a list.
;   
;   (defun list-has-list (input)
;       (if (null input)
;           nil
;           (if (listp (car input))
;               t
;               (list-has-list (cdr input)))))
;
; 8. Give iterative and recursive definitions of a function that
;   (a) takes a positive integer and prints that many dots
;
;   (defun print-dots (input)
;       (do ((i 0 (1+ i)))              
;           ((>= i input) nil)         
;           (format t ".")))
;
;   defun rint-dots (input)    
;       (if (plusp input)
;           (progn
;               (format t ".")
;               (ndots-rec (- input 1)))))
;
;   (b) takes a list and returns the number of times the symbol a appears in it
;
;     (defun a-rep (ls)
;       (do ((ls1 ls (cdr ls1))
;           (n 0 (+ n (if (eq (car ls1) 'a) 1 0))))
;          ((not ls1) n)))
;
;     (defun a-rec (ls) 
;       (if ls
;          (+ (if (eq (car ls) 'a) 1 0) (a-rec (cdr ls)))
;           0))
; 9. 
;    (a) the apply function isn't applied to the nil-less list
;    (b) lacks an explicit base case for when the entire list has been processed
;
;


