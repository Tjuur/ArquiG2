module subtractor4 (
    input [3:0] a,
    input [3:0] b,
    output [3:0] result,
    output cout
);

    wire [3:0] b_not;

    not (b_not[0], b[0]);
    not (b_not[1], b[1]);
    not (b_not[2], b[2]);
    not (b_not[3], b[3]);

    adder4 sub_adder (
        .a(a),
        .b(b_not),
        .cin(1'b1),
        .sum(result),
        .cout(cout)
    );

endmodule