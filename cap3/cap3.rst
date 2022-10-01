Funciones
================================================================================

Las funciones son transformaciones de entradas en salidas.

Funciones lambda
--------------------------------------------------------------------------------

Estas funciones pueden pasarse y asignarse como cualquier valor. Por ejemplo:

.. code-block:: racket

    (define duplicar (lambda (x) (* 2 x)))

Que asigna a "duplicar" una función que toma un valor y lo duplica. En realidad, Racket acepta definir funciones de esta manera:

.. code-block:: racket

    (define (duplicar num) (* 2 num))

* Primero usamos ``define`` 
* Luego entre paréntesis: primero el nombre de la función y luego todos los parámetros.
* Despues entre paréntesis las operaciones que necesitemos.


Funciones de orden superior
--------------------------------------------------------------------------------

Son funciones que aceptan otras funciones como parámetros.