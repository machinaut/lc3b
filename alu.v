`include "alu.vh"

// ALU - arithmetic and logic unit
module alu( aluk, A, B, gate_alu, clk, out);

    input wire [1:0] aluk;  // operation
    input wire [15:0] A;    // first input
    input wire [15:0] B;    // second input
    input wire gate_alu;    // output enable gate
    input wire clk;         // clock
    output reg [15:0] out;  // output

    always @(posedge clk or gate_alu) begin
        if (gate_alu == 0)
            out = 16'bZ;
        else begin
            case(aluk)
                `ALUK_ADD:   out = A + B;
                `ALUK_AND:   out = A & B;
                `ALUK_XOR:   out = A ^ B;
                `ALUK_PASSA: out = A;
            endcase
        end
    end

endmodule
