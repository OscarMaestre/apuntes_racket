Aspectos básicos del lenguaje
================================================================================

Datos atómicos
--------------------------------------------------------------------------------

Son los tipos de datos elementales e indivisibles como cadenas o números. También tenemos "identificadores". Si un identificador no tiene nada puede llevar un apóstrofe delante para que no se evalúe, como por ejemplo ``'alpha'`` 

Listas
--------------------------------------------------------------------------------

En Racket las listas son las estructuras de datos fundamentales y no se consideran atómicas. Se puede crear una lista usando ``list``

.. code-block:: racket

   ;Lista con elementos del mismo tipo
   (list 1 2 3)

   ;Lista con elementos de distinto tipo
   (list "Hola" 1 2 "mundo")

   ;Lista con sublistas dentro
   (list "Hola" (list 1 2) "mundo")

Diferencia ``list`` y ``quote``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Si se usa ``list`` *se evalúa lo que hay dentro de la lista*. Si se usa ``quote`` la lista se toma tal y como es. Se puede abreviar ``quote`` usando solamente el apóstrofe (') . 


Paréntesis
--------------------------------------------------------------------------------

Se pueden usar indistintamente los paréntesis, las llaves y los corchetes.

Expresiones simbólicas
--------------------------------------------------------------------------------

Una expresión simbólica o *s-expression* es

1) Un átomo.
2) Una expresión del tipo (x . y), donde x e y son s-expresiones.

Ocurre entonces que las s-expresiones forman *árboles binarios*.


Acceso a elementos de lista
--------------------------------------------------------------------------------

Se puede acceder a elementos de una lista con ``first`` , ``second`` , ``third`` , y así ``tenth`` . Se puede acceder a cualquier elemento con ``(list-ref <lista> posicion))``


.. literalinclude:: 01-listas.rkt
   :language: racket

Lo ejecutamos:

.. command-output:: racket cap1/01-listas.rkt

Probamos la extracción de elementos de una lista

.. literalinclude:: 02-list-ref.rkt
   :language: racket

Lo ejecutamos:

.. command-output:: racket cap1/02-list-ref.rkt

Algunas funciones útiles
--------------------------------------------------------------------------------

* ``(length lista)`` devuelve la longitud de la lista.
* ``(reverse lista)`` invierte la lista.
* ``(sort lista <)`` ordena la de menor a mayor.
* ``(append lista1 lista2 ... listan)`` une dos o más listas.
* ``(range inicio salto fin)`` crea una lista de inicio a fin con incremento de salto.
* ``(range 10)`` crea una lista de 0 a 9.
* ``(make-list numveces atomo)`` repite el átomo *numveces*.
* ``(null? lista)`` devuelve **#t** o **#f** si la lista es vacía o no.
* ``(member elemento lista)`` devuelve la cola de la lista empezando por *elemento*. Si no está devuelve **#f** 


Probamos la función ``member`` 

.. literalinclude:: 03-member.rkt
   :language: racket

Lo ejecutamos:

.. command-output:: racket cap1/03-member.rkt

Definiciones, asignaciones y variables
--------------------------------------------------------------------------------

Las variables se definen con ``define`` : por ejemplo ``(define a 1234)`` define la variable **a** y le asigna el valor 1234. Se dice que ``define`` **vincula** el valor 1234 a la variable **a** . Se pueden hacer varias definiciones a la vez con ``define-values`` como ``(define-values (x y z) (values 1 2 3))``. Una variable ya definida se puede cambiar con ``(set! variable nuevovalor)`` 

Símbolos, identificadores y palabras clave
--------------------------------------------------------------------------------

Un símbolo es solo un identicador con el quote, por ejemplo ``'simbolo``. Se parecen un poco a las enumeraciones. Una palabra clave es un texto que lleva delante ``#:``. Se utilizan sobre todo en funciones con parámetros opcionales

Igualdad e identidad
--------------------------------------------------------------------------------

Dos variables son iguales si se han definido en sitios distintos y contienen los mismos valores. Dos variables son idénticas si apuntan al mismo sitio.

1. La igualdad se comprueba con ``(equal? a b)`` .
2. La identidad con ``(eq? a b)``.


Cadenas
--------------------------------------------------------------------------------

Los carácteres se escriben así: ``#\A``. Se pueden usar Unicodes con ``#\u0041``. Algunas funciones útiles son:

* (char->integer #\Z)
* (integer->char 65)
* (char-alphabetic? \#k)
* (char-numeric? \#3)

