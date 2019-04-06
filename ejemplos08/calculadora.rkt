#lang racket 

(require racket/gui) 

(define ventana 
    (new frame% [label "Calculadora"]))

;; Panel general (horizontal) 
(define panel-general 
	(new vertical-panel% [parent ventana])) 

;; Campo de texto
(define campo-texto 
	(new text-field% [label ""] 
                    [parent panel-general] 
                    [min-width 240] 
                    [min-height 130]))

;; Se agrega un panel vertical al horizontal
;; Esta es la primera fila de botones
(define panel-1 
	(new horizontal-panel% [parent panel-general])) 

;; Se agregan botones al panel-1 
(define boton-c 
	(new button% [parent panel-1] 
                [label "C"] 
                [min-width 60] 
                [min-height 60])) 
(define boton-/ 
	(new button% [parent panel-1] 
                [label "/"] 
                [min-width 60] 
                [min-height 60])) 
(define boton-x 
    (new button% [parent panel-1] 
                 [label "x"] 
                 [min-width 60]
                 [min-height 60]))
(define boton-supr 
    (new button% [parent panel-1] 
                 [label "Supr"] 
                 [min-width 60] 
                 [min-height 60])) 

;; Se agrega un panel vertical al horizontal
;; Esta es la segunda fila de botones 
(define panel-2 
    (new horizontal-panel% [parent panel-general])) 

(define boton-7 
    (new button% [parent panel-2] 
                 [label "7"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-8 
    (new button% [parent panel-2] 
                 [label "8"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-9 
    (new button% [parent panel-2] 
                 [label "9"] 
                 [min-width 60] 
                 [min-height 60]))

(define boton-- 
    (new button% [parent panel-2] 
                 [label "-"] 
                 [min-width 60] 
                 [min-height 60]))

;; Se agrega un panel vertical al horizontal
;; Esta es la tercera fila de botones
(define panel-3 
    (new horizontal-panel% [parent panel-general])) 

(define boton-4 
    (new button% [parent panel-3] 
                 [label "4"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-5 
    (new button% [parent panel-3] 
                 [label "5"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-6 
    (new button% [parent panel-3] 
                 [label "6"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-+ 
    (new button% [parent panel-3] 
                 [label "+"] 
                 [min-width 60] 
                 [min-height 60])) 

;; A partir de aquí se contruye un panel formado de tres 
;; subpaneles, esto permite que un botón parezca estar en
;; dos filas a la vez.
(define panel-4 ; panel principal
    (new horizontal-panel% [parent panel-general] 
                           [alignment '(center top)])) 
(define panel-4a ; columna 1
    (new vertical-panel% [parent panel-4])) 
(define panel-4b ; columna 2
    (new vertical-panel% [parent panel-4])) 
(define panel-4c ; columna 3
   (new vertical-panel% [parent panel-4])) 

(define boton-1 
    (new button% [parent panel-4a] 
                 [label "1"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-2 
    (new button% [parent panel-4b] 
                 [label "2"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-3 
    (new button% [parent panel-4c] 
                 [label "3"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-= ; este botón simula estar en dos filas
    (new button% [parent panel-4] 
                 [label "="] 
                 [min-width 60] 
                 [min-height 120])) 
(define boton-% 
    (new button% [parent panel-4a] 
                 [label "%"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-0 
    (new button% [parent panel-4b] 
                 [label "0"] 
                 [min-width 60] 
                 [min-height 60])) 
(define boton-. 
    (new button% [parent panel-4c] 
                 [label "."] 
                 [min-width 60] 
                 [min-height 60])) 

;; Se lanza el programa.
(send ventana show #t)