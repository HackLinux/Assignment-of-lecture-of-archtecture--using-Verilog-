`include "def.h"

module d_ff(
    input [`DATA_W-1:0] d,
    input wire latch,
    input clk,
    output [`DATA_W-1:0] q
    );
    reg [`DATA_W-1:0] q;

    always @(posedge clk)
    begin
        if (latch) q <= d;
    end
endmodule
