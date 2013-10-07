#! /usr/bin/env guile
!#

(letrec ((proc (lambda (times)
		 (if (> times 0)
		     (let* ((n (read))
			    (line (ceiling (inexact->exact (/ (- (sqrt (+ (* 8 n) 1)) 1) 2))))
			    (num (- n (/ (* line (- line 1)) 2))))
		       (display "TERM ")
		       (display n)
		       (display " IS ")
		       (if (= (remainder line 2) 0)
			   (begin
			     (display num)
			     (display #\/)
			     (display (- (+ line 1) num))
			     (newline))
			   (begin
			     (display (- (+ line 1) num))
			     (display #\/)
			     (display num)
			     (newline)))
		       (proc (- times 1)))))))
  (proc (read)))
			   
				    
		       

