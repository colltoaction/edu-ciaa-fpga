# Desarrollos de hardware sobre la plataforma EDU-CIAA-FPGA

* http://www.proyecto-ciaa.com.ar/devwiki/doku.php%3Fid=desarrollo:edu-fpga.html
* https://gitlab.com/RamadrianG/wiki---fpga-para-todos/-/wikis/home


## Compuertas reversibles

Es de especial interes el area de [Computacion Reversible] para construir la computacion del futuro. Para construir circuitos reversibles va a ser indispensable que todas las primitivas (como los registros) sean reversibles.


### CNOT

La puerta NOT controlada [CNOT] es la unica reversible de dos bits. CNOT no es una compuerta universal, por lo tanto debemos usar las compuertas de orden siguiente: Fredkin y Toffoli. Circuitos compuestos por estas compuertas de tres bits pueden implementar cualquier funcion logica.

### Fredkin CCSWAP y Toffoli CCNOT

La [Puerta Toffoli] (CCNOT) y la [Puerta Fredkin] (CCSWAP) son las unicas reversibles de tres bits. Su codigo resulta sencillo y se puede probar con Icestudio usando los archivos `FredkinGate.ice` y `ToffoliGate.ice`.

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

module toffoli_gate (
 input u1,
 input u2,
 input in,
 output v1,
 output v2,
 output out
);
 always @(*) begin
     v1 = u1;
     v2 = u2;
     if (u1 && u2) begin
         out = !in;
     end else begin
         out = in;
     end
 end
endmodule
```


[CNOT]: https://es.wikipedia.org/wiki/Puerta_NOT_controlada
[Computacion Reversible]: https://es.wikipedia.org/wiki/Computaci%C3%B3n_reversible
[Puerta Toffoli]: https://en.wikipedia.org/wiki/Toffoli_gate
[Puerta Fredkin]: https://en.wikipedia.org/wiki/Fredkin_gate
