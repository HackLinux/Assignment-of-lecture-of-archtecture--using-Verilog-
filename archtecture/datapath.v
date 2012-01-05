`include "def.h"

module cpu(
    input clk,
    input rst_n
    );

wire [`OPCODE_W-1:0] com;


wire [`DATA_W-1:0] bath_a;
wire [`DATA_W-1:0] bath_b;
wire [`DATA_W-1:0] bath_c;

input latch7,latch3;

reg [`DATA_W-1:0] sdr;
reg [`DATA_W-1:0] sp;
reg [`DATA_W-1:0] pr;
reg [`DATA_W-1:0] mdr;
reg [`DATA_W-1:0] mar;
reg [`DATA_W-1:0] imem[`DEPTH:0];
reg [`DATA_W-1:0] dmem[`DEPTH:0];

reg [`DATA_W-1:0] gr0,gr1,gr2,gr3,gr4,gr5,gr6,gr7;

alu alu1(.a(bath_a), .b(bath_b), .s(com), .o(bath_c));

assign bath_a = gr0;
assign bath_b = gr2;
assign bath_c = bath_c;

begin
    if (imem[0:11] == 'b011100000001) assign {opcode
end


always @(posedge clk or negedge rst_n)
begin
if(!rst_n) pr <= 0;
else pr <= pr+1;
if (latch3) gr3 <= bath_c;
if (latch7) gr7 <= bath_c;

end

endmodule
