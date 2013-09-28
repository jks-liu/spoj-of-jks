#! /usr/bin/env guile
!#

(define (fctrl2 n e)
  (if (equal? n 0)
      (begin
	(display e)
	(newline))
      (fctrl2 (- n 1) (* e n))))

(letrec ((func (lambda (x)
	      (if (not (equal? x 0))
		  (begin (fctrl2 (read) 1)
			 (func (- x 1)))))))
  (func (read)))
  
	      
  
	

