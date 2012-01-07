`include "def.h"

module sdr(
    input latch,
    input [`DATA_W-1:0] in, bath_c,
    input sdi,
    output [`DATA_W-1:0] bath_b, write
    );

    reg [`DATA_W-1:0] data;


