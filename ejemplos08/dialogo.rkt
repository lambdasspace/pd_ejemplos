#lang racket

(require racket/gui)

;; Ventana principal. 
(define ventana-principal   
    (new frame% [label "Inicio de sesión"]))

;; Texto que mostrará la ventana. 
(define texto   
    (new message% [label "Inicie sesión para continuar..."]                 
                  [parent ventana-principal]                 
                  [auto-resize #t]))

;; Cuadro de diálogo para pedir los datos del usuario. 
(define cuadro-dialogo   
     (new dialog% [label "Ingrese sus datos"]))

;; Campo de texto para pedir el nombre de usuario. 
(define txt-usuario   
     (new text-field% [label "Usuario:"]                    
                      [parent cuadro-dialogo]))

;; Campo de texto para pedir la contraseña del usuario. 
(define txt-contra   
     (new text-field% [label "Contraseña:"]                    
                      [parent cuadro-dialogo]                    
                      [style (list 'single 'password)]))

;; Botón para iniciar sesión. 
(define boton-iniciar   
    (new button% [parent cuadro-dialogo]                
                 [label "Iniciar"]                
                 [callback (lambda (b e)                            
                     (send cuadro-dialogo show #f))]))

;; Botón que lanza el cuadro de diálogo 
(define boton-login   
    (new button% [parent ventana-principal]                
                 [label "Iniciar sesión"]                
                 [callback (lambda (b e)                            
                      (send cuadro-dialogo show #t)                            
                      (send texto
                            set-label                                  
                           (string-append "Usuario: '"
                                          (send txt-usuario 
                                                get-value)
                                          "\nContraseña '"
                                          (send txt-contra 
                                                get-value))))]))

;; Se inicia el programa. 
(send ventana-principal show #t) 