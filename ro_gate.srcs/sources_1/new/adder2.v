module adder2(
    input [1:0] a, b,
    input ci,
    output [1:0] s,
    output co
    );
    
wire c1;

adder1 adder1_0(
    .a(a[0]),
    .b(b[0]),
    .ci(ci),
    .s(s[0]),
    .co(c1)
    );
    
adder1 adder1_1(
    .a(a[1]),
    .b(b[1]),
    .ci(c1),
    .s(s[1]),
    .co(co)
    );
    
endmodule