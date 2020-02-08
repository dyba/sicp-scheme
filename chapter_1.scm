(define x 1)

(define (f x)
  (g 2))

(define (g y)
  (+ x y))

(define (subtract x y)
  (- x y))

(define (test #!optional a b c)
  (+ 1))


(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

(define (factorial-iter n)
  (define (iter product counter)
    (if (> counter n)
	product
	(iter (* counter product)
	      (+ 1 counter))))
  (iter 1 1))

(define (fibonacci n)
  (cond
   ((= n 0) 0)
   ((= n 1) 1)
   (else (+ (fibonacci (- n 1))
	    (fibonacci (- n 2))))))

(define (fib n)
  (define (fib-iter a b count)
    (if (= count 0)
	b
	(fib-iter (+ a b) a (- count 1))))
  (fib-iter 1 0 n))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
	guess
	(sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))


(define (count-change amount)
  (define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
	  ((= kinds-of-coins 2) 5)
	  ((= kinds-of-coins 3) 10)
	  ((= kinds-of-coins 4) 25)
	  ((= kinds-of-coins 5) 50)))
  (define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
	  ((or (< amount 0)
	       (= kinds-of-coins 0))
	   0)
	  (else (+ (cc amount
		       (- kinds-of-coins 1))
		   (cc (- amount
			  (first-denomination kinds-of-coins))
		       kinds-of-coins)))))
  (cc amount 5))

(define (exercise-1-11 process n)
  "Evaluates the function f in Exercise 1.11 iteratively or recursively.
  You must pass an argument 'recursive or 'iterative for the first argument."
  (define (f* n)
    (define (f-iter a b c count)
      (cond ((= count 0) a)
	    ((= count 1) b)
	    ((= count 2) c)
	    (else (f-iter b c (+ (* 3 a) (* 2 b) c) (-1+ count)))))
    (f-iter 0 1 2 n))
  (define (f n)
    (if (< n 3)
	n
	(+ (f (- n 1))
	   (* 2 (f (- n 2)))
	   (* 3 (f (- n 3))))))
  (cond ((equal? process 'iterative) (f* n))
	((equal? process 'recursive) (f n))
	(else (display "You must provide the argument 'iterative or 'recursive"))))
