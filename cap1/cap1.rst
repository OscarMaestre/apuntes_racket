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

Se puede acceder a elementos de una lista con ``first`` , ``second`` , ``third`` , y así ``tenth`` . Se puede acceder a cualquier elemento con ``(list-ref <lista> posicion)``


.. literalinclude:: 01-listas.rkt
   :language: racket

Lo ejecutamos:

.. command-output:: racket cap1/01-listas.rkt
   :ellipsis: 2

