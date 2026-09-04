//esta parte hace que se haga un full adder por cada bit
// Idea general: [FA0] ── c1 ──► [FA1] ── c2 ──► [FA2] ── c3 ──► [FA3]

module adder4 (
    input [3:0] a,   //input de cada num, el [3:0] dice q es un bus de 4 bits
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire c1; //son los wire q conectan cada full adder
    wire c2;
    wire c3;

    full_adder fa0( // de aqui en adelante se recorre el numero
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(c1)
    );

    full_adder fa1(
        .a(a[1]),
        .b(b[1]),
        .cin(c1),
        .sum(sum[1]),
        .cout(c2)
    );

    full_adder fa2(
        .a(a[2]),
        .b(b[2]),
        .cin(c2),
        .sum(sum[2]),
        .cout(c3)
    );

    full_adder fa3(
        .a(a[3]),
        .b(b[3]),
        .cin(c3),
        .sum(sum[3]),
        .cout(cout)
    );

endmodule