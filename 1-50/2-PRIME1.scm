#! /usr/bin/env guile
!#

(use-syntax (ice-9 syncase))

(define-syntax my-cons 
  (syntax-rules ()
    ((my-cons x y)
     (cons x (delay y)))))

(define my-car car)
(define (my-cdr x) (force (cdr x)))

(define (my-list-ref ml n)
  (if (= n 1)
      (my-car ml)
      (my-list-ref (my-cdr ml) (- n 1))))

(define (my-map proc items)
  (if (null? items)
      '()
      (my-cons (proc (my-car items))
	       (my-map proc (my-cdr items)))))

(define (prime? n)
  (letrec ((prime-recursive
	    (lambda (n x)
	      (cond ((> n 2)
		     (if (= x 1)
			 #t
			 (if (= (remainder n x) 0)
			     #f
			     (prime-recursive n (- x 1)))))
		    ((= n 2) #t)
		    ((= n 1) #f)))))
    (prime-recursive n (ceiling (inexact->exact (sqrt n))))))

;; ; n is very big, so we can not do like this
;; ; But (- n m) is small
;; (define my-positive
;;   (letrec ((my-nature-from
;; 	    (lambda (x)
;; 	      (my-cons x (my-nature-from (+ 1 x))))))
;;     (my-nature-from 1)))    

;; (define prime-list
;;    (my-map prime? my-positive))

;; (define (print-prime x y)
;;   (if (<= x y)
;;       (begin (if (my-list-ref prime-list x)
;; 		 (begin (display (my-list-ref my-positive x))
;; 			(newline)))
;; 	     (print-prime (+ 1 x) y))))

;; 2ed bigin
(define nature-from
  (lambda (x)
    (my-cons x (my-nature-from (+ 1 x)))))

(define (print-prime m n)
  (if (<= m n)
      (begin (if (prime? m)
		 (begin (display m)
			(newline)))
	     (print-prime (+ 1 m) n))))
;; 2ed end
 
(letrec ((proc (lambda (x)
		 (if (> x 0)
		     (let* ((r1 (read)) (r2 (read)))
		       (print-prime r1 r2)
		       (newline)
		       (proc (- x 1)))))))
  (proc (read)))
		     


