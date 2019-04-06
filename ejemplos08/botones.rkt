#lang racket

(require racket/gui)

;; Variable que indica si el botón ha sido presionado antes. 
(define presionado #f) 
;; Lista con los mensajes que se mostrarán al presionar el botón.
(define mensajes '("¡Presionado!" "¡De nuevo! D:"))

;; Ventana dónse se ejecutará el programa. 
(define ventana   
    (new frame% [label "Ejemplo"]               
                [x 550]                              
                [y 250]))

;; Mensaje que se mostrará en la pantalla con un valor inicial. 
(define mensaje   
    (new message% [parent ventana]                 
                  [label "Eventos de botones..."]))

;; Se crea un botón y se añade a la ventana correspondiente. 
(new button% [parent ventana]              
             [label "Presionar"]              
             [callback (lambda (b e)    
                           (if (not presionado)                              
                               (begin                                                  
                                   (set! presionado #t)                                
                                   (send mensaje 
                                         set-label 
                                         (car mensajes)))                                 
                                (begin
                                   (set! presionado #f)                   
                                   (send mensaje 
                                         set-label 
                                         (cadr mensajes)))))])

;; Muestra la ventana con todos los componentes cargados. 
(send ventana show #t) 