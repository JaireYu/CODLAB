`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:28:26
// Design Name: 
// Module Name: InstructionReg
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


module InstructionReg(
    input [31:0]Instruction,
    input IRWrite,
    input clk,
    output [5:0]Instruction31_26,
    output [4:0]Instruction25_21,
    output [4:0]Instruction20_16,
    output [4:0]Instruction15_11,
    output [25:0]Instruction25_0,
    output [15:0]Instruction15_0,
    output [5:0]Instruction5_0
);
    reg [31:0]instructionreg;
    always@(posedge clk) begin
        if(IRWrite == 1)
            instructionreg <= Instruction;
    end
    assign Instruction25_0 = instructionreg[25:0];
    assign Instruction31_26 = instructionreg[31:26];
    assign Instruction25_21 = instructionreg[25:21];
    assign Instruction20_16 = instructionreg[20:16];
    assign Instruction15_11 = instructionreg[15:11];
    assign Instruction15_0 = instructionreg[15:0];
    assign Instruction5_0 = instructionreg[5:0];
endmodule
