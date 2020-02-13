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
