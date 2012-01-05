// Generic Definition

`define DATA_W 16  // WORD Width
`define DOP_W 32   // Double word OPeration Width
`define FR_W 3     // Flag Register Width
`define OPCODE_W 8 // OPeration CODE Width
`define DEPTH 256

// Operation Definition
`define NOP `OPCODE_W'b00000000 // No OPeration
`define LD `OPCODE_W'b00010000 // LoaD operation
`define ST `OPCODE_W'b00010001 // STore operation
`define LAD `OPCODE_W'b00010010 // Load ADdress operation
`define MV `OPCODE_W'b00010100 // MoVe operation
`define MR_ADDA `OPCODE_W'b00100000 // Memory-Register ADD Arithmetic operation
`define MR_SUBA `OPCODE_W'b00100001 // Memory-Register SUBscribe Arithmetic operation
`define MR_ADDL `OPCODE_W'b00100010 // Memory-Register ADD Logical operation
`define MR_SUBL `OPCODE_W'b00100011 // Memory-Register SUBscribe Logical operation
`define RR_ADDA `OPCODE_W'b00100100 // Register-Register ADD Arithmetic operation
`define RR_SUBA `OPCODE_W'b00100101 // Register-Register SUBscribe Arithmetic operation
`define RR_ADDL `OPCODE_W'b00100110 // Register-Register ADD Logical operation
`define RR_SUBL `OPCODE_W'b00100111 // Register-Register SUBscribe Logical operation
`define MR_AND `OPCODE_W'b00110000 // Memory-Register AND operation
`define MR_OR `OPCODE_W'b00110001 // Memory-Register OR operation
`define MR_XOR `OPCODE_W'b00110010 // Memory-Register XOR operation
`define RR_AND `OPCODE_W'b00110100 // Register-Register AND operation
`define RR_OR `OPCODE_W'b00110101 // Register-Register OR operation
`define RR_XOR `OPCODE_W'b00110110 // Register-Register XOR operation
