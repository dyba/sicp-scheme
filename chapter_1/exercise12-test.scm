(require-extension test)

(test-group "pascal-triangle"
            (test 1 (pascal-triangle 1 1))
            (test 1 (pascal-triangle 2 1))
            (test 1 (pascal-triangle 2 2))
            (test 1 (pascal-triangle 3 1))
            (test 2 (pascal-triangle 3 2))
            (test 1 (pascal-triangle 3 3))
            (test 1 (pascal-triangle 4 1))
            (test 3 (pascal-triangle 4 2))
            (test 3 (pascal-triangle 4 3))
            (test 1 (pascal-triangle 4 4)))

(test-exit)
