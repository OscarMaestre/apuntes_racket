Aritmética
================================================================================

Booleans
--------------------------------------------------------------------------------

Son **#t** y **#f**. Se incluyen las funciones ``not``, ``and``, y ``or``.

Números
--------------------------------------------------------------------------------

* Enteros: siempre son exactos. Se pueden poner en binario con **#b011011** 
* Racionales: representan fracciones.
* Reales: números con decimales.
* Complejos.

Comparaciones
--------------------------------------------------------------------------------

Sirven las típicas ``(= 1 2)``, ``(< 1 2)`` o ``(> 3 2)``.

Operaciones combinadas
--------------------------------------------------------------------------------

Hacer matemáticas mezclando números exactos e inexactos puede dar lugar a errores. Se pueden hacer comprobaciones como ``(integer? 30)``, ``(real? 3.28)`` 

Funciones integradas
--------------------------------------------------------------------------------

* ``(abs 3)`` 
* ``(ceiling 4.28)`` y ``(floor 4.28)`` 
* Las típicas ``(sin 3.2)``, ``(cos 3.44)``, ``(tan 3.22)`` 
* ``(log 20)`` o ``(exp 3)`` (e elevado a 3)  
* Potencias con ``(expt 2 8)`` que hace 2 a la 8.