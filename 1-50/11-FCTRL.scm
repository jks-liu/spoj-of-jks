#! /usr/bin/env guile
!#

(letrec ((proc (lambda (times)
		 (if (> times 0)
		     (letrec ((iterate
			       (lambda (n sum) (if (< n 5)
						   sum
						   (let ((tmp (floor (/ n 5))))
						     (iterate tmp (+ sum tmp)))))))
		       (display (iterate (read) 0))
		       (newline)
		       (proc (- times 1)))))))
  (proc (read)))

