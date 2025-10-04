// this really just switches between 0 1 and 2 every cycle

module prng2(
    input tick,
    output [1:0] prng
    );
    
wire eq;
wire [1:0] prng_int;

counter2 counter(
    .tick(tick),
    .rst(eq),
    .num(prng_int)
);

comparator2 comp(
    .a(prng_int),
    .b(2'd2),
    .eq(eq)    
);

assign prng = prng_int;
   
endmodule
