#lang racket

(define punto%

(class object%

	#| Construcción de un objeto. |# 		
	(super-new) ;; se inicializa la clase padre. 		
	(init x y)

	#| Coordenada x del punto. |# 		
	(define nx x) 		
	#| Coordinada y del punto. |# 		
	(define ny y)
	;; Método que obtiene el valor de la coordenada x. 		
	;; punto%-x: number 		
	(define/public (punto%-x) 			
		nx)
	;; Método que obtiene el valor de la coordenada y. 		
	;; punto%-y: number 		
	(define/public (punto%-y) 			
		ny)

	;; Método que cambia el valor de la coordenada x. 		
	;; set-punto%-x!: number -> void 		
	(define/public (set-punto%-x! nueva-x) 			
		(set! nx nueva-x))

	;; Método que cambia el valor de la coordenada x. 		
	;; set-punto%-y!: number -> void 		
	(define/public (set-punto%-y! nueva-y) 			
		(set! ny nueva-y))

	;; Método que desplaza el punto. 		
	;; desplaza: (listof number) -> void 		
	(define/public (desplaza . params) 			
		(if (empty? params) 				
			 (begin 					
				(set! nx (add1 nx)) 					
				(set! ny (add1 ny))) 				
			 (begin 					
				(set! nx (+ nx (car params))) 					
				(set! ny (+ ny (cadr params))))))

	;; Método que calcula la distancia de un punto a otro.	
	;; distancia: punto% -> void 		
	(define/public (distancia p) 			
		(sqrt (+ (expt (- (send p punto%-x) nx) 2) 				     
				   (expt (- (send p punto%-y) ny) 2))))

	;; Método que indica si tres puntos están alineados. 		
	;; alineados?: punto% punto% -> boolean 		
	(define/public (alineados? p1 p2) 			
		(equal? 				
			(* (- ny (send p1 punto%-y)) 				   
			   (- (send p2 punto%-x) (send p1 punto%-x))) 				
			(* (- (send p2 punto%-y) (send p1 punto%-y)) 				   
			   (- nx (send p1 punto%-x))))))) 