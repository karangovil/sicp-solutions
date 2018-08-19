#lang scheme

(define (good-enough? guess next-guess)
  (< (abs (- next-guess guess)) (* 1e-20 guess)))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                  x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 4)
(sqrt 1.7e+308)
