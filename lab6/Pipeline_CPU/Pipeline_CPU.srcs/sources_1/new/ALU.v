`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 15:59:45
// Design Name: 
// Module Name: ALU
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


module ALU (
    input [31:0]a,
    input [31:0]b,
    input [3:0]ALU_input,
    output reg [31:0]result
    );
    always@(*)
    begin
        case(ALU_input)
            4'b0010: result = a + b;
            4'b0110: result = a - b;
            4'b0000: result = a & b;
            4'b0001: result = a | b;
            4'b0111: result = (a < b)? 1:0;
            4'b0011: result = ~(a | b);
            4'b0100: result = a ^ b;
            4'b1000: result = a << b;
        endcase
    end
endmodule
