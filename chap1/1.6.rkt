#lang scheme

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
       (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

; If we use the new-if clause, it goes into an
; infinite loop because it evaluates both then-
; clause and else-clause before applying cond

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
       guess
       (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 4)
