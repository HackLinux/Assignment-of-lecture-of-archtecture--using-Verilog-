`include "def.h"

module cpu(
    input clk,
    input rst_n,
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


wire mr_suba_op;

// operation
assign {opcode, dr, sr} = idatain;

// Decorder

assign double_op = (opcode == `LD | opcode == `ST | opcode == `LAD | opcode == MR_ADDA | opcode == `MR_SUBA | opcode == `MR_ADDL |
                    opcode == `MR_SUBL | opcode == `MR_AND | opcode == `MR_OR | opcode == `MR_XOR | opcode == `SLA | opcode == `SRA |
                    opcode == `SLL | opcode == `SRL | opcode == `JMI | opcode == `JNZ | opcode == `JZE | opcode == `JUMP | opcode == `JPL |
                    opcode == `JOV | opcode == `PUSH | opcode == `CALL | opcode == `SVC);


alu alu1(.a(bath_a), .b(bath_b), .s(opcode), .o(bath_c));

register gr0(.c(bath_c), .latch(latch0), .a(bath_a), .b(bath_b), .bath_a(reg_a), .bath_b(reg_b), .clk(clk));
register gr1(.c(bath_c), .latch(latch1), .a(bath_a), .b(bath_b), .bath_a(reg_a), .bath_b(reg_b), .clk(clk));
register gr2(.c(bath_c), .latch(latch2), .a(bath_a), .b(bath_b), .bath_a(reg_a), .bath_b(reg_b), .clk(clk));
register gr3(.c(bath_c), .latch(latch3), .a(bath_a), .b(bath_b), .bath_a(reg_a), .bath_b(reg_b), .clk(clk));
register gr4(.c(bath_c), .latch(latch4), .a(bath_a), .b(bath_b), .bath_a(reg_a), .bath_b(reg_b), .clk(clk));
register gr5(.c(bath_c), .latch(latch5), .a(bath_a), .b(bath_b), .bath_a(reg_a), .bath_b(reg_b), .clk(clk));
register gr6(.c(bath_c), .latch(latch6), .a(bath_a), .b(bath_b), .bath_a(reg_a), .bath_b(reg_b), .clk(clk));
register gr7(.c(bath_c), .latch(latch7), .a(bath_a), .b(bath_b), .bath_a(reg_a), .bath_b(reg_b), .clk(clk));


multiplexer multi_a(.in0(gr0.a), .in1(gr1.a), .in2(gr2.a),.in3(gr3.a),.in4(gr4.a),.in5(gr5.a),.in6(gr6.a),.in7(gr7.a), .com(sr), .o(bath_a));
multiplexer multi_b(.in0(gr0.b), .in1(gr1.b), .in2(gr2.b),.in3(gr3.b),.in4(gr4.b),.in5(gr5.b),.in6(gr6.b),.in7(gr7.b), .com(sr), .o(bath_b));

assign mr_suba_op = (opcode == `MR_SUBA);



always @(posedge clk or negedge rst_n)
    begin
        if(!rst_n) pr <= 0;
        else pr <= pr+1;
    end

        

endmodule
