`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:08:33
// Design Name: 
// Module Name: EX_MEM_Reg
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


module EX_MEM_Reg(
    input clk,
    input rst,
    input EX_MemRead,
    input EX_MemWrite,
    input EX_MemtoReg,
    input EX_RegWrite,
    input [31:0]EX_Res,
    input [31:0]EX_WriteData,
    input [4:0]EX_WBAddr,
    output reg MEM_MemRead,
    output reg MEM_MemWrite,
    output reg MEM_MemtoReg,
    output reg MEM_RegWrite,
    output reg [31:0]MEM_Res,
    output reg [31:0]MEM_WriteData,
    output reg [4:0]MEM_WBAddr
);
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            MEM_MemRead <= 0;
            MEM_MemWrite <= 0;
            MEM_MemtoReg <= 0;
            MEM_RegWrite <= 0;
            MEM_Res <= 32'd0;
            MEM_WriteData <= 32'd0;
            MEM_WBAddr <= 5'd0;
        end
        else begin
            MEM_MemRead <= EX_MemRead;
            MEM_MemWrite <= EX_MemWrite;
            MEM_MemtoReg <= EX_MemtoReg;
            MEM_RegWrite <= EX_RegWrite;
            MEM_Res <= EX_Res;
            MEM_WBAddr <= EX_WBAddr;
            MEM_WriteData <= EX_WriteData;
        end
    end
endmodule
