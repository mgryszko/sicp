(define (cubert-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (cubert-iter (improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess previous-guess)
  (< (/ (abs (- guess previous-guess)) guess) 0.001))

(define (cubert x)
  (cubert-iter 1.0 0.0 x))

(cubert 8)
(cubert 27)
(cubert 64)