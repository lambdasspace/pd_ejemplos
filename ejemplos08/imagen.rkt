#lang racket

(require racket/gui)

;; Se obtiene el mapa de bits. 
(define bitmap (read-bitmap "ciencias.jpg"))

;; Ventana principal. 
(define ventana   
	(new frame% [label "Logo"]))

;; Agrega imagen a la ventana como mensaje. 
(define imagen   
	(new message% [parent ventana]                 
	              [label bitmap]))

;; Lanza la ventana. 
(send ventana show #t)