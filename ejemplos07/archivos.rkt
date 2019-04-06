#lang racket

;; Función que abre el archivo y lo manda a procesar.
;; lee-archivo: string -> void
(define (lee-archivo nombre) 	
	(procesa (open-input-file nombre)))

;; Función encargada de procesar un puerto para mostrar sus líneas.
;; procesa: port -> void
(define (procesa puerto) 	
	(let ([linea (read-line puerto)]) 		
		(if (eof-object? linea) 			
			 (close-input-port puerto) 			
			 (begin  				
				(displayln linea) 				
				(procesa puerto)))))