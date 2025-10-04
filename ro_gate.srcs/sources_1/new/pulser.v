module pulser(
    input in, clk,
    output pulse
    );

wire in_old, not_in_old, in_new;

dff dff1(
    .in_D(in),
    .in_CLK(clk),
    .data_out(in_new)
);

dff dff2(
    .in_D(in_new),
    .in_CLK(clk),
    .data_out(in_old)
);
    
not not1(not_in_old, in_old);
and and1(pulse, not_in_old, in_new);   
    
endmodule
