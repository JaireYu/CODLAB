`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:18:48
// Design Name: 
// Module Name: ID_EX_Reg
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


module ID_EX_Reg(
    input clk,
    input rst,    
    input ID_RegDst,
    input [2:0]ID_ALUop,
    input ID_ALUSrc,
    input ID_MemRead,
    input ID_MemWrite,
    input ID_MemtoReg,
    input ID_RegWrite,
    input [31:0]ID_A,
    input [31:0]ID_B,
    input [31:0]ID_Imm,
    input [4:0]ID_Rd,
    input [4:0]ID_Rt,
    input [4:0]ID_Rs,
    output reg EX_MemtoReg,
    output reg EX_RegWrite,
    output reg EX_MemRead,
    output reg EX_MemWrite,
    output reg EX_RegDst,
    output reg [2:0]EX_ALUop,
    output reg EX_ALUSrc, 
    output reg [31:0]EX_A,
    output reg [31:0]EX_B,
    output reg [31:0]EX_Imm,
    output reg [4:0]EX_Rd,
    output reg [4:0]EX_Rt,
    output reg [4:0]EX_Rs
);
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            EX_MemtoReg <= 0;
            EX_RegWrite <= 0;
            EX_MemRead <= 0;
            EX_MemWrite <= 0;
            EX_RegDst <= 0;
            EX_ALUop <= 3'b000;
            EX_ALUSrc <= 0;
            EX_A <= 32'd0;
            EX_B <= 32'd0;
            EX_Imm <= 32'd0;
            EX_Rd <= 5'd0;
            EX_Rt <= 5'd0;
            EX_Rs <= 5'd0;
        end
        else begin
            EX_MemtoReg <= ID_MemtoReg;
            EX_RegWrite <= ID_RegWrite;
            EX_MemRead <= ID_MemRead;
            EX_MemWrite <= ID_MemWrite;
            EX_RegDst <= ID_RegDst;
            EX_ALUop <= ID_ALUop;
            EX_ALUSrc <= ID_ALUSrc;
            EX_A <= ID_A;
            EX_B <= ID_B;
            EX_Imm <= ID_Imm;
            EX_Rd <= ID_Rd;
            EX_Rt <= ID_Rt;
            EX_Rs <= ID_Rs;
        end
    end

endmodule