//leer full_adder_tb para hacerse una idea de como funciona un tb

`timescale 1ns/1ps

module subtractor4_tb;

    reg  [3:0] a;
    reg  [3:0] b;

    wire [3:0] result;
    wire       cout;

    subtractor4 uut (
        .a(a),
        .b(b),
        .result(result),
        .cout(cout)
    );

    initial begin

        $dumpfile("sim/subtractor4.vcd");
        $dumpvars(0, subtractor4_tb);

        // 5 - 3 = 2
        a = 4'b0101;
        b = 4'b0011;
        #1;

        // 3 - 5 = -2 = 1110
        a = 4'b0011;
        b = 4'b0101;
        #1;

        // 0 - 1 = -1 = 1111
        a = 4'b0000;
        b = 4'b0001;
        #1;

        // -3 - 2 = -5
        // -3 = 1101
        a = 4'b1101;
        b = 4'b0010;
        #1;

        // 7 - (-1) = 8
        // En 4 bits queda 1000
        a = 4'b0111;
        b = 4'b1111;
        #1;

        $finish;

    end

endmodule