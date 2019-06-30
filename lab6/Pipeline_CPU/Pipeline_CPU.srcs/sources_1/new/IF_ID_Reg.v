`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:24:29
// Design Name: 
// Module Name: IF_ID_Reg
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


module IF_ID_Reg(
    input [31:0]IF_NPC,
    input [31:0]IF_Instruct,
    input IF_ID_Write,
    input clk,
    input rst,
    output reg [31:0]ID_NPC,
    output [5:0]Instruction31_26, //Opcode
    output [4:0]Instruction25_21, //Rs
    output [4:0]Instruction20_16, //Rt
    output [4:0]Instruction15_11, //Rd
    output [15:0]Instruction15_0 //imm
);
    reg [31:0]ID_Instruct;
    assign Instruction31_26 = ID_Instruct[31:26];
    assign Instruction25_21 = ID_Instruct[25:21];
    assign Instruction20_16 = ID_Instruct[20:16];
    assign Instruction15_11 = ID_Instruct[15:11];
    assign Instruction15_0 = ID_Instruct[15:0];
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            ID_NPC <= 32'd0;
        end
        else if(IF_ID_Write == 1) begin
            ID_NPC <= IF_NPC;
        end    
    end

    always@(posedge clk or posedge rst) begin
        if(rst) begin
            ID_Instruct <= 32'd0;
        end
        else if(IF_ID_Write == 1) begin
            ID_Instruct <= IF_Instruct;
        end 
    end
endmodule
