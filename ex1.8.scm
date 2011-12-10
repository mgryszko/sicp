;old good-enough? implementation
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.001)
(sqrt (* 65536 65536 65536 65536 65536 65536 65536 65536))

;new good-enough? implementation
(define (sqrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (sqrt-iter (improve guess x) 
		 guess 
		 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess previous-guess)
  (< (/ (abs (- guess previous-guess)) guess) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

(sqrt 0.001)
(sqrt (* 65536 65536 65536 65536 65536 65536 65536 65536))
