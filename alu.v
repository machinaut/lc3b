`include "alu.vh"

// ALU - arithmetic and logic unit
module alu( aluk, A, B, gate_alu, clk, out);

    input wire [1:0] aluk;  // operation
    input wire [15:0] A;    // first input
    input wire [15:0] B;    // second input
    input wire gate_alu;    // output enable gate
    input wire clk;         // clock
    output wire [15:0] out; // output

    assign out = gate_alu == 0     ? 16'bZ :
                 aluk == `ALUK_ADD ? A + B :
                 aluk == `ALUK_AND ? A & B :
                 aluk == `ALUK_XOR ? A ^ B :
                 A; // `ALUK_PASSA

endmodule
