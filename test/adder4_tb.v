//leer full_adder_tb para hacerse una idea de como funciona un tb
`timescale 1ns/1ps

module adder4_tb;

    reg  [3:0] a;
    reg  [3:0] b;
    reg        cin;

    wire [3:0] sum;
    wire       cout;

    adder4 uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin

        $dumpfile("sim/adder4.vcd");
        $dumpvars(0, adder4_tb);

        a = 4'b0000; b = 4'b0000; cin = 0; #1;
        a = 4'b0011; b = 4'b0010; cin = 0; #1;
        a = 4'b0111; b = 4'b0001; cin = 0; #1;
        a = 4'b1111; b = 4'b0001; cin = 0; #1;
        a = 4'b0101; b = 4'b0011; cin = 1; #1;

        $finish;

    end

endmodule