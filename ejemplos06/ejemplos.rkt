#lang racket

;; Función que calcula el área de un círculo dado su diámetro.
;; area: number -> number
(define (area diametro)
    (* pi (/ diametro 2) (/ diametro 2)))

;; Función que calcula el área de un círculo dado su diámetro.
;; area2: number -> number
(define (area2 diametro)
    (let ([r (/ diametro 2)])
        (* pi r)))

;; Función que calcula el valor absoluto de un número.
;; absoluto: number -> number
(define (absoluto n)
    (if (< n 0)
        (* n -1)
        n))

;; Función que regresa la representación en cadena de un mes.
;; mes: number -> string
(define (mes n)
    (cond
        [(= n 1) (display "Caso 1") "Enero")]
        [(= n 2) (display "Caso 2") "Febrero")]
        [(= n 3) (display "Caso 3") "Marzo")]
        [(= n 4) (display "Caso 4") "Abril")]
        [(= n 5) (display "Caso 5") "Mayo")]
        [(= n 6) (display "Caso 6") "Junio")]
        [(= n 7) (display "Caso 7") "Julio")]
        [(= n 8) (display "Caso 8") "Agosto")]
        [(= n 9) (display "Caso 9") "Septiembre")]
        [(= n 10) (display "Caso 10") "Octubre")]
        [(= n 11) (display "Caso 11") "Noviembre")]
        [(= n 12) (display "Caso 12") "Diciembre")]
        [else (error 'mes "Número inválido")]))


;; Función que calcula la potencia de dos números. 
;; potencia a b: number number -> number 
(define (potencia a b) 
    (if (zero? b) 
         1 
         (a * (potencia a (sub1 b)))))

;; Función que obtiene la suma de los dígitos de un número. 
;; suma-digitos: number -> number 
(define (suma-digitos n) 
    (if (< n 10) 
         n 
         (+ (modulo n 10) (suma-digitos (quotient n 10)))))

; Función que obtiene la longitud de una lista. 
;; longitud: (listof any) -> number 
(define (longitud lst) 
    (match lst 
        ['() 0]
        [(cons x xs) (+ 1 (longitud xs))]))

;; Función que obtiene la reversa de una lista. 
;; reversa: list -> list 
(define (reversa lst) 
    (match lst 
        ['() lst] 
        [(cons x xs) (append (reversa xs) (list x))]))

;; Función que obtiene la concatenación de dos listas. 
;; concatena: list list -> list 
(define (concatena lst1 lst2) 
    (match lst1 
        ['() lst2] 
        [(cons x xs) (cons x (concatena xs lst2))]))

;; Función dada otra función y una lista, aplica la función a cada 
;; elemento de la lista. 
;; map2: procedure list -> list 
(define (map2 f lst) 
    (match lst 
        ['() lst] 
        [(cons x xs) (cons (f x) (map2 f xs))]))

;; Función dado un predicado y una lista, regresa una lista con los 
;; elementos que cumplen con el predicado. 
;; filter2: procedure list -> list 
(define (filter2 f lst) 
    (match lst 
        ['() lst] 
        [(cons x xs) 
            (if (f x) 
                 (cons x (filter2 f xs)) 
                 (filter2 f xs))]))

;; Función que aplica una función de forma encadenada a la derecha 
;; a los elementos de una lista dado un caso base. 
;; foldr2: procedure any lst -> lst 
(define (foldr2 f v lst) 
    (match lst 
        ['() v] 
        [(cons x xs) (f x (foldr2 f v xs))]))

;; Función que aplica una función de forma encadenada a la izquierda 
;; a los elementos de una lista dado un caso base. 
;; foldl: procedure any lst -> lst 
(define (foldl2 f v lst) 
    (match lst 
        ['() v] 
        [(cons x xs) (foldl2 f (f x v) xs)]))

;; Función identidad. 
;; identidad1: any -> any 
(define (identidad1 x) x) 

;; Función identidad. 
;; identidad2: any -> any 
(define identidad2 (lambda (x) x))

;; Función que calcula el promedio de los elementos de una lista. 
;; promedio : (listof number) -> number 
(define (promedio lst) 
    (letrec 
        ([suma (lambda (lst) 
            (match lst 
                ['() 0] 
                [(cons x xs) (+ x (suma xs))]))] 
         [longitud (lambda (lst) 
            (match lst 
                ['() 0] 
                [(cons x xs) (+ 1 (longitud xs))]))]) 
         (/ (suma lst) (longitud lst))))
