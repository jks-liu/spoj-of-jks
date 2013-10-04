#! /usr/bin/env guile
!#

;; This site http://www.spoj.com/forum/viewtopic.php?f=31&t=13052 maybe helpful.

(define (parse expression)
  (let ((lt (length expression)))
    (cond ((= lt 3) (list (parse (car expression))
			  (parse (caddr expression))
			  (display (cadr expression))))
	  ((= lt 1) (let ((tmp (symbol->string (car expression))))
		      (display (string-ref tmp 0))
		      (display (string-ref tmp 2))
		      (display (string-ref tmp 1))))
	  ((list? (car expression)) (let ((tmp (symbol->string (cadr expression))))
				      (parse (car expression))
				      (display (string-ref tmp 1))
				      (display (string-ref tmp 0))))
	  ((list? (cadr expression)) (let ((tmp (symbol->string (car expression))))
				       (display (string-ref tmp 0))
				       (parse (cadr expression))
				       (display (string-ref tmp 1)))))))

(define	(proc times)
  (if (> times 0)
      (begin (parse (read))
	     (newline)
	     (proc (- times 1)))))
(proc (read))

				      
					  

	


