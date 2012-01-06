// Generic Definition

`define DATA_W 16  // WORD Width
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
`define MR_CPA `OPCODE_W'b01000000 // Memory-Register CPA operation
`define MR_CPL `OPCODE_W'b01000001 // Memory-Register CPL operation
`define RR_CPA `OPCODE_W'b01000100 // Register-Register CPA operation
`define RR_CPL `OPCODE_W'b01000101 // REgister-Register CPL operation
`define SLA `OPCODE_W'b01010000 // Shift Left Arithmetic
`define SRA `OPCODE_W'b01010001 // Shift Right Arithmetic
`define SLL `OPCODE_W'b01010010 // Shigt Left Logical
`define SRL `OPCODE_W'b01010011 // Shift Right Logical
`define JMI `OPCODE_W'b01100001 // Jump MInus
`define JNZ `OPCODE_W'b01100010 // Jump Not Zero
`define JZE `OPCODE_W'b01100011 // Jump ZEro
`define JUMP `OPCODE_W'b01100100 // JUMP
`define JPL `OPCODE_W'b01100101 // Jump PLus
`define JOV `OPCODE_W'b01100110 // Jump OVer flow
`define PUSH `OPCODE_W'b01110000 // PUSH
`define POP `OPCODE_W'b01110001 // POP
`define CALL `OPCODE_W'b10000000 // CALL
`define RET `OPCODE_W'b10000001 // RET
`define SVC `OPCODE_W'b11110000 // SVC
