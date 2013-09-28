#! /usr/bin/env guile
!#

(letrec ((func
	  (lambda (x)
	    (if (> x 0)
		(begin (display (* (read) (read)))
		       (newline)
		       (func (- x 1)))))))
  (func (read)))

