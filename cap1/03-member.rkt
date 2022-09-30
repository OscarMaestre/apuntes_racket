#lang racket

;6 no es un miembro
(member 6 '(1 2 3 4 5))


;3 sí es un miembro
(member 3 '(1 2 3 4 5))

;¡Ojo!, 6 NO es un miembro
;sino que está en una sublista
;pero no es lo mismo

;Observa que (6 7) NO necesita
;el quote, el ' o el list.
(member 6 '(1 2 3 4 5 (6 7)))



(member '(6 7) '(1 2 3 4 5 (6 7) 8 9 10))

