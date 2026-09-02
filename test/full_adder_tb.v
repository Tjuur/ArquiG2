`timescale 1ns/1ps

module full_adder_tb;

    reg a;   //reg significa que el bloque 'initial' puede cambiar el val de la variable
    reg b;
    reg cin;

    wire sum;
    wire cout;

    full_adder uut ( //crea una copia de full_adder aqui. uut -> unit under test
        .a(a),       //.a = val de full_adder_tb, (a) = val de full_adder
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin   //representa una secuencia temporal de simulacion

        $dumpfile("sim/full_adder.vcd"); //crea el archivo
        $dumpvars(0, full_adder_tb);     // guarda los cambios de las señales de este testbench

        a = 0; b = 0; cin = 0; #1;
        a = 0; b = 0; cin = 1; #1;
        a = 0; b = 1; cin = 0; #1;
        a = 0; b = 1; cin = 1; #1;

        a = 1; b = 0; cin = 0; #1;
        a = 1; b = 0; cin = 1; #1;
        a = 1; b = 1; cin = 0; #1;
        a = 1; b = 1; cin = 1; #1;

        $finish;

    end

endmodule