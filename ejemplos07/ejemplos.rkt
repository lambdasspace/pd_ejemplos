#lang racket

;; Función que muestra un triángulo dada su altura.
;; triangulo: number -> void
(define (triangulo n)   
	(if (zero? n)       
		 (void)       
		 (begin         
			(display (make-string n #\*))         
			(newline)         
			(triangulo (sub1 n)))))

;; Función que muestra un triángulo dada su altura.
;; triangulo: number -> void
(define (triangulo2 n)   
	(cond     
		[(positive? n)      
			(display (make-string n #\*))      
			(newline)      
			(triangulo2 (sub1 n))]))

(define (potencias n)   
	(+ (expt n 2) (expt n 3) (expt n 4) (expt n 5)))

(define (potencias2 n)
	(let* ([ant (+ (expt n 2) (expt n 3))]
			 [k (lambda (v) (+ ant v (expt n 5)))])
		(k (expt n 4))))

(define (potencias3 n)
	(+ 
		(expt n 2) 
		(expt n 3) 
		(call/cc (lambda (k) (k (expt n 4))))
		(expt n 5)))

(define (potencias4 n)
	(+ 
		(expt n 2) 
		(expt n 3) 
		(let/cc k (k (expt n 4)))
		(expt n 5)))
