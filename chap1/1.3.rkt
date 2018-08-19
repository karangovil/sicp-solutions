#lang scheme

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (f x y z)
  (define smallest (min x y z))
  (cond ((eq? x smallest) (sum-of-squares y z))
        ((eq? y smallest) (sum-of-squares x z))
        ((eq? z smallest) (sum-of-squares y x))
        (else -1)))
