

(defun print-dots (input)
  (do ((i 0 (1+ i)))              
      ((>= i input) nil)         
    (format t ".")))


(print 

(print-dots 3)
)