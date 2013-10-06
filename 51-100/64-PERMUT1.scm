#! /usr/bin/env guile
!#

;; Just a joke, Ha ha

(letrec
    ((proc
      (lambda (times)
	(if
	 (> times 0)
	 (begin
	   (display
	    (vector-ref
	     (vector-ref
	      '#(#(1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 2 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 3 5 6 5 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 4 9 15 20 22 20 15 9 4 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 5 14 29 49 71 90 101 101 90 71 49 29 14 5 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 6 20 49 98 169 259 359 455 531 573 573 531 455 359 259 169 98 49 20 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 7 27 76 174 343 602 961 1415 1940 2493 3017 3450 3736 3836 3736 3450 3017 2493 1940 1415 961 602 343 174 76 27 7 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 8 35 111 285 628 1230 2191 3606 5545 8031 11021 14395 17957 21450 24584 27073 28675 29228 28675 27073 24584 21450 17957 14395 11021 8031 5545 3606 2191 1230 628 285 111 35 8 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 9 44 155 440 1068 2298 4489 8095 13640 21670 32683 47043 64889 86054 110010 135853 162337 187959 211089 230131 243694 250749 250749 243694 230131 211089 187959 162337 135853 110010 86054 64889 47043 32683 21670 13640 8095 4489 2298 1068 440 155 44 9 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 10 54 209 649 1717 4015 8504 16599 30239 51909 84591 131625 196470 282369 391939 526724 686763 870233 1073227 1289718 1511742 1729808 1933514 2112319 2256396 2357475 2409581 2409581 2357475 2256396 2112319 1933514 1729808 1511742 1289718 1073227 870233 686763 526724 391939 282369 196470 131625 84591 51909 30239 16599 8504 4015 1717 649 209 54 10 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 
		#(1 11 65 274 923 2640 6655 15159 31758 61997 113906 198497 330121 526581 808896 1200626 1726701 2411747 3277965 4342688 5615807 7097310 8775209 10624132 12604826 14664752 16739858 18757500 20640357 22311069 23697232 24736324 25380120 25598186 25380120 24736324 23697232 22311069 20640357 18757500 16739858 14664752 12604826 10624132 8775209 7097310 5615807 4342688 3277965 2411747 1726701 1200626 808896 526581 330121 198497 113906 61997 31758 15159 6655 2640 923 274 65 11 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
	      ;; Bug here: Order of evaluation is undefined.
	      ;; But I said it is a joke.
	      (- (read) 1)) (read)))
	   (newline)
	   (proc (- times 1)))))))
  (proc (read)))


