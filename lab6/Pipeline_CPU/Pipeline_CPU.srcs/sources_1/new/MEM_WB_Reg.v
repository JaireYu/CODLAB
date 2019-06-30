`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:25:26
// Design Name: 
// Module Name: MEM_WB_Reg
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


module MEM_WB_Reg(
    input clk,
    input rst,
    input MEM_MemtoReg,
    input MEM_RegWrite,
    input [31:0]MEM_Data,
    input [31:0]MEM_Res,
    input [4:0]MEM_WBAddr,
    output reg WB_MemtoReg,
    output reg WB_RegWrite,
    output reg [31:0]WB_Data,
    output reg [31:0]WB_Res,
    output reg [4:0]WB_WBAddr
);
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            WB_MemtoReg <= 0;
            WB_RegWrite <= 0;
            WB_Data <= 32'd0;
            WB_Res <= 32'd0;
            WB_WBAddr <= 5'd0;
        end
        else begin
            WB_MemtoReg <= MEM_MemtoReg;
            WB_RegWrite <= MEM_RegWrite;
            WB_Data <= MEM_Data;
            WB_Res <= MEM_Res;
            WB_WBAddr <= MEM_WBAddr;
        end
    end
endmodule
