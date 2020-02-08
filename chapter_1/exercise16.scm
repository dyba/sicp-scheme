(define (square x)
  (* x x))

(define (expt b n)
  "fast-expt-iter is a procedure that evolves an iterative exponentiation process
  that uses successive squaring and uses a logarithmic number of steps."
  (define (fast-expt-iter b n a)
    (cond ((= n 1) a)
          ((even? n) (fast-expt-iter b
                                     (/ n 2)
                                     (* a (square b))))
          (else (fast-expt-iter b
                                (- n 1)
                                (* a b)))))
  (fast-expt-iter b n 1))
