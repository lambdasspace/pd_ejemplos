#lang racket

(require racket/gui)

;; Instance de la clase ventana. Se instancia el objeto con algunos 
;; atributos, como: 
;; - Ancho de 250 pixeles. 
;; - Altura de 50 pixeles. 
;; - Posición inicial de (550, 250). 
;; - Título ¡Hola Mundo! 
(define ventana
	(new frame% [width 250]               
               [height 50]               
               [x 550]               
               [y 250]               
               [label "Ejemplo"]))

;; Se agrega un mensaje de texto a la ventana.
(define mensaje 
	(new message% [parent ventana]                               
                  [label "¡Hola Mundo!"]))