# ArquiG2
Proyecto Grupo 2 Arqui de computadores


## Test de Full adder

Se necesita:

iverilog
gtkwave
APIO

```bash
iverilog -o sim/full_adder_test src/full_adder.v test/full_adder_tb.v
vvp sim/full_adder_test
gtkwave sim/full_adder.vcd
``` 
