//Full Adder

module full_adder ( // definicion del componente
    input a,       //input variable
    input b,
    input cin,      //carry in  
    output sum,     // resultado
    output cout     //carry out
);
    //circuito del componente
    
    wire xor_ab;    // wire = cable fisico, transporta el valor anterior
    wire carry_ab;
    wire carry_cin;

    xor(xor_ab, a, b); // syntax: compuerta_logica(output, input1, input2)
    xor(sum, xor_ab, cin);
    and(carry_ab, a, b);
    and(carry_cin, xor_ab, cin);
    or(cout, carry_ab, carry_cin);


endmodule //finaliza la descripcion del componente
