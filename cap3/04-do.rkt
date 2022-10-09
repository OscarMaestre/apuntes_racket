#lang racket

(define (suma n)             ;Sumamos los n primeros números
  (let ([acum 0])            ;Inicializamos el acumulador
    (do ([i 1 (add1 i)])     ;Para i=1 y en incrementos de 1
      ( (> i n) acum)        ;Cuando i>n devolver s
      (set! acum (+ acum i)) ;Si no acum=acum+i
      )                      ;Fin del do
    )                        ;Fin del let
  )                          ;Fin de la función

(suma 10)