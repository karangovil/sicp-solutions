#lang scheme

(define (inc x) (+ x 1))
(define (dec x) (- x 1))

; procedure 1 is recursive as shown below

(define (psum1 a b)
  (if (= a 0) b (inc (psum1 (dec a) b))))

; procedure 2 is iterative as shown below

(define (psum2 a b)
  (if (= a 0) b (psum2 (dec a) (inc b))))

(psum1 4 5)
; substitution model for psum1
; (psum1 4 5)
; (inc (psum1 3 5))
; (inc (inc (psum1 2 5)))
; (inc (inc (inc (psum1 1 5))))
; (inc (inc (inc (inc (psum1 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9

(psum2 4 5)
; substitution model for psum2
; (psum2 4 5)
; (psum2 3 6)
; (psum2 2 7)
; (psum2 1 8)
; (psum2 0 9)
; 9
