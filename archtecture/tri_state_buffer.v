`include "def.h"

module tri_state_buffer(
    input wire a,
    output wire [`DATA_W-1:0] o,
    input wire [`DATA_W-1:0] in
    );

    assign o = (a == 1)? in:z;

endmodule
