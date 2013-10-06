#! /usr/bin/env guile
!#

(letrec
    ((proc
      (lambda (times)
	(if (> times 0)
	    (let* ((uu (read))
		   (ww (read))
		   (v (read))
		   (vv (read))
		   (w (read))
		   (u (read)))
	      (let* ; See https://en.wikipedia.org/wiki/Tetrahedron#Heron-type_formula_for_the_volume_of_a_tetrahedron
		  ((xx (* (+ (- w uu) v) (+ uu v w)))
		   (x (* (+ (- uu v) w) (+ (- v w) uu)))
		   (yy (* (+ (- u vv) w) (+ vv w u)))
		   (y (* (+ (- vv w) u) (+ (- w u) vv)))
		   (zz (* (+ (- v ww) u) (+ ww u v)))
		   (z (* (+ (- ww u) v) (+ (- u v) ww)))
		   (a (sqrt (* x yy zz)))
		   (b (sqrt (* y zz xx)))
		   (c (sqrt (* z xx yy)))
		   (d (sqrt (* x y z)))
		   (volume
		    (/ (sqrt (*
			      (- (+ b c d) a)
			      (- (+ a c d) b)
			      (- (+ a b d) c)
			      (- (+ a b c) d)))
		       192 u v w)))
		(display (/ (round (* volume 10000)) 10000))
		(newline))
	      (proc (- times 1)))))))
  (proc (read)))	

