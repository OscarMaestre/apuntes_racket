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


;Definimos una funcion que nos dice si 
;un elemento es mayor de 3
(define mayor-de-3? (lambda (x) (> x 3)) )
;Y filtramos para obtener todos los
;que valen 4 o más
(filter mayor-de-3? listanumeros)
