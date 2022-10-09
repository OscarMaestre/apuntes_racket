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

Son funciones que aceptan otras funciones como parámetros. Las más comunes son estas:

* **(map funcion lista)** aplica la función a los elementos de una lista y devuelve una lista.
* **(apply funcion lista)** aplica la función a los elementos de una lista de forma que devuelve un valor.
* **(compose funcion1 funcion2)** compone funciones, se ejecuta primero la **funcion2** y despues **funcion1** .
* **(filter funcion lista)** genera una lista nueva en la que están los elementos que cumplen la función pasada
* **(foldr + 0 lista)** aplica la función + asociando por la derecha de esta manera (1+(2+(3+(4+0))))
* La función **foldl** funciona de manera similar a **foldr** pero asociando por la izquierda.


El siguiente programa muestra el funcionamiento de estas funciones.

.. literalinclude:: 02-funciones.rkt
   :language: racket

Lo ejecutamos:

.. command-output:: racket cap3/02-funciones.rkt

Ámbito léxico
--------------------------------------------------------------------------------



Los identificadores y variables definidos son válidos dentro de su ámbito. Existe un ámbito global, pero debe manejarse con cuidado. Hay dos formas de definir:

**let** que define una variable que estará disponible justo despues del **let** .
**let*** que permite que una definición esté disponible para otra definición *incluso dentro del propio let* 

A continuación un ejemplo de **let** y **cond.** 

.. literalinclude:: 03-let-y-cond.rkt
   :language: racket

Lo ejecutamos:

.. command-output:: racket cap3/03-let-y-cond.rkt

Bucles
--------------------------------------------------------------------------------



En Racket existe un **do** que funciona de manera similar a un for.

A continuación una función que suma los n primeros números y que muestra como funciona.

.. literalinclude:: 04-do.rkt
   :language: racket

Lo ejecutamos:

.. command-output:: racket cap3/04-do.rkt

