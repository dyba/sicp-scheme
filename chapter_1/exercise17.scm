(define (double x)
  (+ x x))

(define (halve x)
  "Halves an integer. Only works on even integers."
  (define (halve-iter a b)
    (if (= a b)
	a
	(halve-iter (sub1 a) (add1 b))))
  (halve-iter x 0))

(define (mult a b)
  "mult uses an iterative approach to multiplication"
  (define (fast-mult-iter x y carry)
    (cond ((< y 2) (+ carry x))
	  ((even? y) (fast-mult-iter (double x)
				     (halve y)
				     carry))
	  (else (fast-mult-iter (double x)
				(halve (sub1 y))
				(+ carry x)))))
  (fast-mult-iter a b 0))
