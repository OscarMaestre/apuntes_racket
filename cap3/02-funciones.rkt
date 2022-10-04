#lang racket

;Definimos una lista
(define listanumeros '(1 2 3 4 5))

;Definimos una función que duplica números
(define duplicar (lambda (x) (* 2 x)))

(displayln "Esta es la lista de números")
(displayln listanumeros)
(displayln "Y este es el resultado de aplicar map a la lista")
;Y aplicamos duplicar a la lista
(map duplicar listanumeros)

;La suma solo suma dos elementos, pero si aplicamos +
;a toda la lista podemos sumarla entera 
(display "La suma total de elementos es:")
(apply + listanumeros)
