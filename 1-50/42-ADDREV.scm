#! /usr/bin/env guile
!#

(define (reverse-number n)
  (string->number (list->string (reverse (string->list (number->string n))))))

(letrec ((proc (lambda (times)
		 (if (> times 0)
		     (begin
		       (display
			(reverse-number (+ (reverse-number (read))
					   (reverse-number (read)))))
		       (newline)
		       (proc (- times 1)))))))
  (proc (read)))

