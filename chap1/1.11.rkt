#lang scheme

; Recursive version
(define (fRec n)
  (if (< n 3)
      n
      (+ (fRec (- n 1))
         (* 2 (fRec (- n 2)))
         (* 3 (fRec (- n 3)))
      )
  )
)

; Iterative version
(define (fIter n)
  (define (iter a b c count)
    (cond ((= count 0) a)
          (else (iter b
                      c
                      (+ c (* 2 b) (* 3 a))
                      (- count 1)))))
  (iter 0 1 2 n))

(fRec 2)
(fRec 4)
(fIter 4)
