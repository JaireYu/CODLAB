`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:20:08
// Design Name: 
// Module Name: ID_Flushmux
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


module ID_Flushmux(
    input ID_Flush,
    input RegDst,
    input [2:0]ALUop,
    input ALUSrc,
    input Branch,
    input MemRead,
    input MemWrite,
    input MemtoReg,
    input RegWrite,
    output reg ID_RegDst,
    output reg [2:0] ID_ALUop,
    output reg ID_ALUSrc,
    output reg ID_Branch,
    output reg ID_MemRead,
    output reg ID_MemWrite,
    output reg ID_MemtoReg,
    output reg ID_RegWrite
);
    always@(*) begin
        if(ID_Flush) begin
            ID_RegDst = 0;
            ID_ALUop = 3'b000;
            ID_ALUSrc = 0;
            ID_Branch = 0;
            ID_MemRead = 0;
            ID_MemWrite = 0;
            ID_MemtoReg = 0;
            ID_RegWrite = 0;
        end
        else begin
            ID_RegDst = RegDst;
            ID_ALUop = ALUop;
            ID_ALUSrc = ALUSrc;
            ID_Branch = Branch;
            ID_MemRead = MemRead;
            ID_MemWrite = MemWrite;
            ID_MemtoReg = MemtoReg;
            ID_RegWrite = RegWrite;
        end
    end

endmodule
