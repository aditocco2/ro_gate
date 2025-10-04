module reg2(
    input [1:0] D,
    input clk,
    output [1:0] Q
    );
    
dff dff0(
    .in_D(D[0]),
    .in_CLK(clk),
    .data_out(Q[0])
);

dff dff1(
    .in_D(D[1]),
    .in_CLK(clk),
    .data_out(Q[1])
);

endmodule
