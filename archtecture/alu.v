`include "def.h"

module alu(
    input [`DATA_W-1:0] a,b,
    input [`OPCODE_W-1:0] s,
    output [`DATA_W-1:0] o
    );

assign o = (s == `RR_ADDA || s == `MR_ADDA || s == `RR_ADDL || s == `MR_ADDL)? a + b:
           (s == `RR_SUBA || s == `MR_SUBA || s == `RR_SUBL || s == `MR_SUBL)? a - b:
           (s == `RR_OR || s == `MR_OR)? a | b:
           (s == `RR_AND || s == `MR_AND)? a & b:a ^ b;

endmodule
