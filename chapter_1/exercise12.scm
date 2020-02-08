(define (pascal-triangle r c)
  "Takes a row r and column c and returns the element in the Pascal triangle."
  (cond ((or (= c 1)
             (= c r))
         1)
        (else (+ (pascal-triangle (- r 1) (- c 1))
                 (pascal-triangle (- r 1) c)))))
