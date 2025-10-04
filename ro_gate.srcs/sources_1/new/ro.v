// 2 output ro gate

// truth table:
// in   out1 out0
// 0    0    0
// 1    0    1
// 1    1    0
// 1    1    1

// im not making this 3 output

module ro(
    output out1, out0,
    input in, clk
    );

wire [1:0] random_0_2, random_1_3, random_1_3_reg;
wire pulse;

prng2 prng(
    .tick(clk),
    .prng(random_0_2)
);

adder2 add1(
    .a(random_0_2),
    .b(1'b1),
    .ci(1'b0),
    .s(random_1_3)
);

pulser pulser1(
    .in(in),
    .clk(clk),
    .pulse(pulse)
);

reg2 register(
    .clk(pulse),
    .D(random_1_3),
    .Q(random_1_3_reg)
);

mux2b2to1 not_quite_a_xum(
    .data0(2'b0),
    .data1(random_1_3_reg),
    .sel(in),
    .out({out1, out0})
);

endmodule
