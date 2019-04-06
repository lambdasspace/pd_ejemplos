#lang racket 

(require racket/gui) 

;; Se crea una ventana.
(define ventana 
    (new frame% [label "Ejemplo"])) 

;; Se agrega un mensaje a la ventana.
(define mensaje 
    (new message% [parent ventana] 
                  [label "Páneles"] 
                  [auto-resize #t])) 

;; Se crea un panel horizontal.
;; Todo lo que se asocie a este panel aparecerá en el orden
;; en que se agregó.
(define panel 
	(new horizontal-panel% [parent ventana])) 

;; Se crean dos botones y se asocian al panel.
(new button% [parent panel] 
             [label "Izquierdo"] 
             [callback (lambda (b e) 
                   (send mensaje 
                         set-label 
                         "Se presionó el botón izquierdo"))]) 
(new button% [parent panel] 
             [label "Derecho"] 
             [callback (lambda (b e) 
                   (send mensaje 
                         set-label 
                         "Se presionó el botón derecho"))]) 

(send ventana show #t)