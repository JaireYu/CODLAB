`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:38:26
// Design Name: 
// Module Name: Shift_Left_2
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


module Shift_left_2(
    input [31:0]Sign_output,
    output [31:0]beq_offset
);
    assign beq_offset = (Sign_output << 2);
endmodule
