module prng2_test(
    input clk, btnD,
    output [15:0] led
    );
    
wire tick;

// who needs debouncer

pulser pulser1(
    .in(btnD),
    .clk(clk),
    .pulse(tick)
);

prng2 prng_1(
    .tick(tick),
    .prng(led[1:0])
);
    
endmodule
