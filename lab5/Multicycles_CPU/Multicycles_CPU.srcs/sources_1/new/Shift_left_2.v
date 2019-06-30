`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:59:10
// Design Name: 
// Module Name: Shift_left_2
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
    input [25:0]Instruction25_0,
    input [31:0]PC,
    output [31:0]JmpAddr
);
    wire [27:0]InstructionTemp;
    assign InstructionTemp = {Instruction25_0, 2'b00};
    assign JmpAddr = {PC[31:28], InstructionTemp};
endmodule