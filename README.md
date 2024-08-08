# Desarrollos de hardware sobre la plataforma EDU-CIAA-FPGA

* http://www.proyecto-ciaa.com.ar/devwiki/doku.php%3Fid=desarrollo:edu-fpga.html
* https://gitlab.com/RamadrianG/wiki---fpga-para-todos/-/wikis/home


## CNOT Flip-Flop

La puerta NOT controlada [CNOT] es de especial interes en el area de [Computacion Reversible] al ser la unica reversible de dos bits. Para construir circuitos reversibles va a ser indispensable que todas las primitivas (como los registros) sean reversibles.

CNOT no es una compuerta universal, por lo tanto debemos usar las compuertas de orden siguiente: Friedkin y Toffoli. Circuitos compuestos por estas compuertas de tres bits pueden implementar cualquier funcion logica.

En el caso de un PLB y sus ocho celdas logicas vamos a implementar una compuerta Toffoli generalizada a 8 bits. Necesitamos hacer esto para transmitir la senal de carry como control a traves de todas sus celdas. No es posible implementar un PLB con celdas CNOT independientes al depender todas del mismo FCIN.

### Uso y experimento

1. Prender y observar que el LED esta encendido
1. BTN1 esta sincronizado con el LED y es lo que se va a medir
1. BTN2 y BTN3 funcionan como almacenamiento de la senal de BTN1 medida
    1. Apretar y soltar BTN2
    1. Ahora el LED esta apagado al almacenarse BTN1=0
1. Apretar BTN2; apretar BTN1; soltar BTN2; soltar BTN1
    1. LED queda prendido al haberse almacenado la senal
    1. BTN1 esta nuevamente sincronizado
1. Apretar BTN1; apretar BTN2; soltar BTN1; soltar BTN2
    1. LED queda apagado al haberse almacenado la senal
    1. BTN1 esta nuevamente sincronizado pero al reves
1. Apretar BTN3; apretar BTN1; soltar BTN3; soltar BTN1
    1. El LED queda prendido
    1. BTN2 no hace nada


### Puerta Fredkin

La Puerta Toffoli (CCNOT) y la [Puerta Fredkin] (CCSWAP) son las unicas reversibles de tres bits. Su codigo resulta sencillo y se puede probar con Icestudio usando el archivo `FredkinGate.ice`.

```v
module fredkin_gate (
 input u,
 input x1,
 input x2,
 output v,
 output y1,
 output y2
);
 always @(x1, x2) begin
     v = u;
     case(u)
         0: begin
             y1 = x2;
             y2 = x1;
         end
         1: begin
             y1 = x1;
             y2 = x2;
         end
     endcase
 end
endmodule
```


[CNOT]: https://es.wikipedia.org/wiki/Puerta_NOT_controlada
[Computacion Reversible]: https://es.wikipedia.org/wiki/Computaci%C3%B3n_reversible
[Puerta Fredkin]: https://en.wikipedia.org/wiki/Fredkin_gate
