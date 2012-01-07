`include "def.h"

module multiplexer(
    input [`DATA_W-1:0] in0,in1,in2,in3,in4,in5,in6,in7,
    output [`DATA_W-1:0] o,
    input [3:0] com
    );

    assign o = (com == 4'b0000)? in0 :
               (com == 4'b0001)? in1 :
               (com == 4'b0010)? in2 :
               (com == 4'b0011)? in3 :
               (com == 4'b0100)? in4 :
               (com == 4'b0101)? in5 :
               (com == 4'b0110)? in6 : in7;
endmodule
