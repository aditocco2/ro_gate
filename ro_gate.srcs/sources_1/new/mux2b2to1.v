module mux2b2to1(
        input [1:0] data0, data1,
        input sel,
        output [1:0] out
    );
    
mux #(2, 1) mux0(
    .data_in({data1[0], data0[0]}),
    .select_in(sel),
    .data_out(out[0])
);

mux #(2, 1) mux1(
    .data_in({data1[1], data0[1]}),
    .select_in(sel),
    .data_out(out[1])
);
    
endmodule
