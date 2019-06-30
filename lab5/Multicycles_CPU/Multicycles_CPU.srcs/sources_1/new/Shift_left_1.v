`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:57:30
// Design Name: 
// Module Name: Shift_left_1
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


module Shift_left_1(
    input [31:0]Sign_output,
    output [31:0]beq_offset
);
    assign beq_offset = (Sign_output << 2);
endmodule
