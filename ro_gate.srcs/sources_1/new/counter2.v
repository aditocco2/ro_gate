module counter2(
    input tick, rst,
    output [1:0] num
    );
    
wire [1:0] sum_pre, sum_post, sum_reg;
wire rst_n;
not not1(rst_n, rst);

adder2 add(
    .a(sum_reg),
    .b(2'b1),
    .s(sum_pre),
    .ci(1'b0)
);

// could have modularized this further into its own reset module
// but lazy
and and0(sum_post[0], sum_pre[0], rst_n);
and and1(sum_post[1], sum_pre[1], rst_n);

reg2 register(
    .D(sum_post),
    .clk(tick),
    .Q(sum_reg)
);

assign num = sum_reg;

endmodule
