# Desarrollos de hardware sobre la plataforma EDU-CIAA-FPGA

* http://www.proyecto-ciaa.com.ar/devwiki/doku.php%3Fid=desarrollo:edu-fpga.html
* https://gitlab.com/RamadrianG/wiki---fpga-para-todos/-/wikis/home


## CNOT Flip-Flop

La puerta NOT controlada [CNOT] es de especial interes en el area de [Computacion Reversible] al ser la unica reversible de dos bits. Para construir circuitos reversibles va a ser indispensable que todas las primitivas (como los registros) sean reversibles.

CNOT no es una compuerta universal, por lo tanto debemos usar las compuertas de orden siguiente: Friedkin y Toffoli. Circuitos compuestos por estas compuertas de tres bits pueden implementar cualquier funcion logica.

En el caso de un PLB y sus ocho celdas logicas vamos a implementar una compuerta Toffoli generalizada a 8 bits. Necesitamos hacer esto para transmitir la senal de carry como control a traves de todas sus celdas. No es posible implementar un PLB con celdas CNOT independientes al depender todas del mismo FCIN.


[CNOT]: https://es.wikipedia.org/wiki/Puerta_NOT_controlada
[Computacion Reversible]: https://es.wikipedia.org/wiki/Computaci%C3%B3n_reversible
