(load-relative "exercise16.scm")

(require-extension test)

(test-group "square"
  (test 100 (square 10))
  (test 25 (square 5)))

(test-group "expt"
  (test 8 (expt 2 3))
  (test 100 (expt 10 2))
  (test 125 (expt 5 3)))

(test-exit)
