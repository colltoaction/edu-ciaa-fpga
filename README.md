# Desarrollos de hardware sobre la plataforma EDU-CIAA-FPGA

* http://www.proyecto-ciaa.com.ar/devwiki/doku.php%3Fid=desarrollo:edu-fpga.html
* https://gitlab.com/RamadrianG/wiki---fpga-para-todos/-/wikis/home


## Compuertas reversibles

Es de especial interes el area de [Computacion Reversible] para construir la computacion del futuro. Para construir circuitos reversibles va a ser indispensable que todas las primitivas (como los registros) sean reversibles.

Este video explica todo clarísimo: https://youtu.be/FJ0DqQde3p0


### CNOT

La puerta NOT controlada [CNOT] es la unica reversible de dos bits. CNOT no es una compuerta universal, por lo tanto debemos usar las compuertas de orden siguiente: Fredkin y Toffoli. Circuitos compuestos por estas compuertas de tres bits pueden implementar cualquier funcion logica.

### Fredkin CCSWAP y Toffoli CCNOT

La [Puerta Toffoli] (CCNOT) y la [Puerta Fredkin] (CCSWAP) son las unicas reversibles de tres bits. Su codigo resulta sencillo y se puede probar con Icestudio usando los archivos `FredkinGate.ice` y `ToffoliGate.ice`.

## PLB reversible

Podemos aprovechar la arquitectura del PLB para implementar una compuerta generalizada a 8 bits. Si bien el PLB tiene 32 inputs, la cantidad de outputs es 8. Los 24 bits restantes funcionan como bits de control de esta unidad lógica de 1 byte de entrada y 1 byte de salida.

## Board reversible

Podemos configurar cada PLB para conectar su carry en vertical y sus puertos a otros PLBs adyacentes. Esta arquitectura evita conexiones distantes y aprovecha todos los PLBs, y todos sus puertos incluyendo carries, inputs y outputs.


[CNOT]: https://es.wikipedia.org/wiki/Puerta_NOT_controlada
[Computacion Reversible]: https://es.wikipedia.org/wiki/Computaci%C3%B3n_reversible
[Puerta Toffoli]: https://en.wikipedia.org/wiki/Toffoli_gate
[Puerta Fredkin]: https://en.wikipedia.org/wiki/Fredkin_gate
