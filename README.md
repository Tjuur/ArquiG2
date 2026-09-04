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
## Test de Adder4

```bash
iverilog -o sim/adder4_test src/full_adder.v src/adder4.v test/adder4_tb.v
vvp sim/adder4_test
gtkwave sim/adder4.vcd
``` 

## Test de Subtractor4

```bash
iverilog -o sim/subtractor4_test src/full_adder.v src/adder4.v src/subtractor4.v test/subtractor4_tb.v
vvp sim/subtractor4_test
gtkwave sim/subtractor4.vcd
``` 