module adder1(
    input a, b, ci,
    output s, co
    );

wire two1, two2, two3;

xor xor1(s, a, b, ci);

and and1(two1, a, b);
and and2(two2, b, ci);
and and3(two3, a, ci);
or or1(co, two1, two2, two3);

endmodule