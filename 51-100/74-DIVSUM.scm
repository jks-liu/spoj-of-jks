#! /usr/bin/env guile
!#

;; time limit exceeded 
(define (divsum n)
  (letrec ((divsum-recursive
	    (lambda (end begin sum)
	      (if (equal? end begin)
		  sum
		  (divsum-recursive end
				    (+ 1 begin)
				    (if (equal? 0 (remainder end begin))
					(+ sum begin)
					sum))))))
    (divsum-recursive n 1 0)))

(letrec ((func
	  (lambda (x)
	    (if (> x 0)
		(begin
		  (display (divsum (read)))
		  (newline)
		  (func (- x 1)))))))
  (func (read)))
		
				       
		    

