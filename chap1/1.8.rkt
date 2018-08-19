#lang racket

(define (square x) (* x x))

(define (good-enough? guess next-guess)
  (< (abs (- next-guess guess)) (* 1e-15 guess)))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (cbrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (cbrt x)
  (cond ((< x 0) (- (cbrt-iter 1.0 (abs x))))
        ((= x 0) 0)
        (else (cbrt-iter 1.0 x))))

(cbrt 27)
