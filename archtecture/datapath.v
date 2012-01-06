`include "def.h"

module cpu(
    input clk,
    input rst_n
    input [`DATA_W-1:0] idatain,
    input [`DATA_W-1:0] mdatain,
    output [`DATA_W-1:0] address,
    output [`DATA_W-1:0] mdataout,
    input we
    );


wire [`OPCODE_W-1:0] opcode;
wire [3:0] dr,sr;
wire [`DATA_W-1:0] xr;

wire double_op;

wire reg_a,reg_b;

wire latch0,latch1,latch2,latch3,latch4,latch5,latch6,latch7;

wire [`DATA_W-1:0] bath_a;
wire [`DATA_W-1:0] bath_b;
wire [`DATA_W-1:0] bath_c;

reg [`DATA_W-1:0] sdr;
reg [`DATA_W-1:0] sp;
reg [`DATA_W-1:0] pr;
reg [`DATA_W-1:0] mdr;
reg [`DATA_W-1:0] mar;
reg [`DATA_W-1:0] imem[`DEPTH:0];
reg [`DATA_W-1:0] dmem[`DEPTH:0];

alu alu1(.a(bath_a), .b(bath_b), .s(com), .o(bath_c));

register gr0(.c(bath_c), .latch(latch0), .a(bath_a), .b(bath_b), .bath_a(reg_a), .bath_b(reg_b));

assign


always @(posedge clk or negedge rst_n)
begin
    if(!rst_n) pr <= 0;
    else pr <= pr+1;
end

endmodule
