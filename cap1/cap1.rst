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

Las cadenas van entre comillas dobles. Se pueden poner Unicodes con "\u263A". Para concatenar cadenas usamos ``(string-append cad1 cad2)`` . Para acceder a un caracter de una cadena se usa ``(string-ref "Hola mundo")`` . Las cadenas son inmutables, pero se pueden crear cadenas mutables con ``(string )`` y con ``(string-copy cadena)`` . Otras funciones útiles son:

* ``(string-length cadena)`` que devuelve la longitud de una cadena.
* ``(substring cadena 7 12)`` devuelve la subcadena entre las posiciones 7 y 12.
* ``(string-upcase cadena)`` y ``(string-downcase cadena)`` pasan la cadena a mayúsculas o a minúsculas.
* ``(string<=? cad1 cad)`` nos dice si **cad1** va antes que **cad2** . Para ver si son iguales o va despues usamos ``(string=? cad1 cad2)`` y ``(string>=? cad1 cad2)`` .
* ``(string-replace cadena trozoanterior trozoposterior)`` reemplaza dentro de **cadena** la subcadena **trozoanterior** por la cadena **trozoposterior** .
* ``(string-contains? cadena subcadena)`` nos dice si la subcadena está dentro de la cadena.
* ``(string-split cadena tokenopcional)`` divide la cadena en trozos. Si no se da un token se parte usando el espacio.
* ``(string-trim cadena)`` elimina los espacios en blanco extras que pudiera haber por los lados.

Hay otras funciones más propias de Racket:

* ``(symbol->string 'FBI)`` convierte el símbolo en una cadena.
* ``(string->symbol "FBI")`` convierte la cadena en un símbolo.
* ``(string->list cadena)`` convierte la cadena en una lista.
* ``(list->string lista)`` convierte la lista en una cadena.
* ``(keyword->string #:palabraclave)`` convierte una palabra clave en una cadena.
* ``(format "let ~a = ~a" "x" "2")`` construye una cadena reemplazando los **~a** por los argumentos.  
* ``(string->number cadena)`` y ``(number->string numero)`` convierten entre números y cadenas respectivamente.


Vectores
--------------------------------------------------------------------------------

Son como en otros lenguajes de programación: secuenciales (las listas tienen más bien forma de *árbol*). Se pueden construir con ``(vector 2 "a" 3)`` (que sí evalúa sus argumentos) o con ``#(2 "a" 3)`` (que no los evalúa y además construye un *vector inmutable* )

* Se puede acceder a un elemento de un vector con ``(vector-ref v pos)``.
* Se puede modificar un elemento con ``(vector-set! v pos nuevovalor)`` .

En realidad, los vectores son más rápidos que las listas, pero menos versátiles. Algunas funciones útiles:

* ``(vector-length v)`` devuelve la longitud de un vector.
* ``(vector-sort v <)`` ordena de menor a mayor.
* ``(vector->list v)`` convierte v en una lista.
* ``(make-vector 10 "abc")`` crea un vector de 10 cadenas "abc" **que además es mutable.** 
* ``(vector-append v1 v2)`` concatena dos vectores.
* ``(vector-member "elemento" v)`` comprueba si "elemento" está en el vector **v.** 

Estructuras
--------------------------------------------------------------------------------

Son como los ``structs`` en C. Todo **struct** recibe automáticamente algunas funciones. El siguiente programa las ilustra:


Probamos la función ``member`` 

.. literalinclude:: 04-estructura.rkt
   :language: racket

Lo ejecutamos:

.. command-output:: racket cap1/04-estructura.rkt



