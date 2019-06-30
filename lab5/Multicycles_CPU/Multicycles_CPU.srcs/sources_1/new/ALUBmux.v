`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:18:23
// Design Name: 
// Module Name: ALUBmux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALUBmux(
    input [1:0]ALUSrcB,
    input [31:0]B,
    input [31:0]imm,
    input [31:0]offset,
    output reg [31:0]ALUB
);
    always@(*) begin
        case(ALUSrcB)
            2'b00: ALUB = B;
            2'b01: ALUB = 32'd4;
            2'b10: ALUB = imm;
            2'b11: ALUB = offset; 
        endcase
    end
endmodule
