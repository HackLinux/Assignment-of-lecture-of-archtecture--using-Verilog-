`include "def.h"

module register(
    input clk,
    input [`DATA_W-1:0] c,
    output wire [`DATA_W-1:0] a,b,
    input wire latch,
    input wire bath_a, bath_b
    );
    
    reg [`DATA_W-1:0] data;

    tri_state_buffer tri_a(.in(a), .a(bath_a));
    tri_state_buffer tri_b(.in(a), .a(bath_b));

    assign a = data;
    assign b = data;

    always @(posedge clk)
    begin
        if(latch) data <= c;
    end
endmodule
