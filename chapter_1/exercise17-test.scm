(require-extension test)

(test-group "double"
  (test 20 (double 10))
  (test 6 (double 3))
  (test 2 (double 1)))

(test-group "halve"
  (test 10 (halve 20))
  (test 5 (halve 10))
  (test 1 (halve 2))
  (test 50 (halve 100)))

(test-group "mult"
  (test-group "multiplying two odd numbers"
    (test 3 (mult 3 1))
    (test 9 (mult 3 3))
    (test 3 (mult 1 3))
    (test 15 (mult 3 5))
    (test 15 (mult 5 3))
    (test 49 (mult 7 7)))
  (test-group "multiplying two even numbers"
    (test 4 (mult 2 2))
    (test 8 (mult 4 2))
    (test 8 (mult 2 4))
    (test 100 (mult 10 10)))
  (test-group "multiplying mix of odd and even numbers"
    (test 6 (mult 2 3))
    (test 6 (mult 3 2))
    (test 18 (mult 6 3))
    (test 18 (mult 3 6))
    (test 30 (mult 3 10))
    (test 30 (mult 10 3))))

(test-exit)
