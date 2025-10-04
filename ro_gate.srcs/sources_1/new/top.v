module top(
    input clk,
    input [15:0] sw,
    output [15:0] led
    );
    
ro ro1(led[1], led[0], sw[0], clk);
    
endmodule
