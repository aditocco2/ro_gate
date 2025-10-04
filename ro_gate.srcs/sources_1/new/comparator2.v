module comparator2(
    input [1:0] a, b,
    output eq
    );
    
wire eq0, eq1;

xnor(eq0, a[0], b[0]);
xnor(eq1, a[1], b[1]);

and(eq, eq0, eq1);
    
endmodule
