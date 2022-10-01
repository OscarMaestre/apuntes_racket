#lang racket

;Se define la estructura
(struct empleado (nombre ap1 ap2 sueldo))

;Definimos un empleado cualquiera
(define e1 (empleado "Juan" "Sanchez" "Diaz" 32000))

;Mostramos los campos (el % equivale a un fin de línea)
(display (format "El empleado se llama ~a~%" (empleado-nombre e1)))
(display (format "Sus apellidos son ~a ~a~%" (empleado-ap1 e1) (empleado-ap2 e1)))
(display (format "Su sueldo es ~a euros~%" (empleado-sueldo e1)))