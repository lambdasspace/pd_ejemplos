#lang racket 

#| Biblioteca para trabajar con vectores |#

;; Función que construye un vector. 
;; mvector: number number -> pair. 
(define (mvector x y) 
	(cons x y)) 

;; Función que calcula la suma de dos vectores. 
;; suma : pair pair -> pair 
(define (suma v1 v2) 
	(cons (+ (car v1) (car v2)) (+ (cdr v1) (cdr v2)))) 

;; Función que calcula el producto por escalar de un real y un vector. 
;; producto-escalar: number pair - > pair 
(define (producto-escalar k v) 
	(cons (* k (car v)) (* k (cdr v)))) 

;; Función que calcula el producto punto de dos vectores. 
;; producto-punto: pair pair -> number 
(define (producto-punto v1 v2) 
	(+ (* (car v1) (car v2)) (* (cdr v1) (cdr v2))))
