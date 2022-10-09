#lang racket

(let (      ;Dados...
      [x 2] ;...x=2...
      [y 3] ;...y=3
      )
  (+ x y) ;Calcular la suma de x e y
)


(define (divisible-3-5 x) ;Definir una funcion que acepte un x
  (let  ;Dados...
      ;... que divisible3 vale #t o #f
      ;dependiendo de si es divisible o no
       ( [divisible3 (= 0 (remainder x 3))]
         [divisible5 (= 0 (remainder x 5))]
       ) ;Fin de la lista de definiciones, empiezan las
         ;comprobaciones
     (cond ;En función de las siguienes condiciones devolver
           ;devolver un valor u otro.
       [(and divisible3 divisible5) #t]
       [else #f]
       ) ;Fin de la lista de condiciones
    ) ;Fin de las sentencias
   ) ;Fin de la función

;Definimos una lista...
(define lista '(3 5 12 15 25 30))
;y hacemos un filtrado
(filter divisible-3-5 lista)