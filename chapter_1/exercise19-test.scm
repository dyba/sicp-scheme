(require-extension test)

(test-group "fib"
            (test 1 (fib 1))
            (test 1 (fib 2))
            (test 2 (fib 3))
            (test 3 (fib 4))
            (test 5 (fib 5))
            (test 8 (fib 6))
            (test 13 (fib 7)))
