`include "def.h"

module register(
    input clk,
    input [`DATA_W-1:0] bath_c,
    input [3:0] aadr,badr,
    output [`DATA_W-1:0] bath_a, bath_b,
    input wire latch0,latch1,latch2,latch3,latch4,latch5,latch6,latch7
    );

    reg [`DATA_W-1:0] gr0,gr1,gr2,gr3,gr4,gr5,gr6,gr7;

    assign bath_a = aadr == 0 ? gr0 :
    aadr == 1 ? gr1 :
    aadr == 2 ? gr2 :
    aadr == 3 ? gr3 :
    aadr == 4 ? gr4 :
    aadr == 5 ? gr5 :
    aadr == 6 ? gr6 : gr7;

    assign bath_b = badr == 0 ? gr0 :
    badr == 1 ? gr1 :
    badr == 2 ? gr2 :
    badr == 3 ? gr3 :
    badr == 4 ? gr4 :
    badr == 5 ? gr5 :
    badr == 6 ? gr6 : gr7;

    always @(posedge clk)
    begin
        if (latch0) gr0 <= bath_c;
        if (latch1) gr1 <= bath_c;
        if (latch2) gr2 <= bath_c;
        if (latch3) gr3 <= bath_c;
        if (latch4) gr4 <= bath_c;
        if (latch5) gr5 <= bath_c;
        if (latch6) gr6 <= bath_c;
        if (latch7) gr7 <= bath_c;
    end
endmodule
