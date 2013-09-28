#! /usr/bin/env guile
!#

(define (print-begin-42)
  (let ((hello (read)))
    (if (not (equal? 42 hello))
        (begin
          (display hello)
          (newline)
          (print-begin-42)))))
(print-begin-42)

