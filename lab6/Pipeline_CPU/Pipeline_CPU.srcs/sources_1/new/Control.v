`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:05:27
// Design Name: 
// Module Name: Control
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


module Control(
    input [5:0]opcode,
    output reg RegDst,
    output reg [2:0]ALUop,
    output reg ALUSrc,
    output reg Branch,
    output reg MemRead,
    output reg MemWrite,
    output reg MemtoReg,
    output reg RegWrite
);
    always @(*) begin
        case (opcode)
            6'b000000: begin //R-type
                ALUop = 3'b001;
                RegDst = 1;
                ALUSrc = 0;
                Branch = 0;
                MemRead = 0;
                MemWrite = 0;
                RegWrite = 1;
                MemtoReg = 0;
            end
            6'b100011: begin //lw
                ALUop = 3'b000;
                RegDst = 0;
                ALUSrc = 1;
                Branch = 0;
                MemRead = 1;
                MemWrite = 0;
                RegWrite = 1;
                MemtoReg = 1;
            end
            6'b101011: begin //sw
                ALUop = 3'b000;
                RegDst = 1;
                ALUSrc = 1;
                Branch = 0;
                MemRead = 0;
                MemWrite = 1;
                RegWrite = 0;
                MemtoReg = 0;
            end
            6'b000100: begin //beq
                ALUop = 3'b010;
                RegDst = 1;
                ALUSrc = 0;
                Branch = 1;
                MemRead = 0;
                MemWrite = 0;
                RegWrite = 0;
                MemtoReg = 0;
            end
            6'b001000: begin //addi
                ALUop = 3'b011;
                RegDst = 0;
                ALUSrc = 1;
                Branch = 0;
                MemRead = 0;
                MemWrite = 0;
                RegWrite = 1;
                MemtoReg = 0;
            end
            6'b001100: begin //andi
                ALUop = 3'b100;
                RegDst = 0;
                ALUSrc = 1;
                Branch = 0;
                MemRead = 0;
                MemWrite = 0;
                RegWrite = 1;
                MemtoReg = 0;
            end
            6'b001101: begin //ori
                ALUop = 3'b101;
                RegDst = 0;
                ALUSrc = 1;
                Branch = 0;
                MemRead = 0;
                MemWrite = 0;
                RegWrite = 1;
                MemtoReg = 0;
            end
            6'b001110: begin //xori
                ALUop = 3'b110;
                RegDst = 0;
                ALUSrc = 1;
                Branch = 0;
                MemRead = 0;
                MemWrite = 0;
                RegWrite = 1;
                MemtoReg = 0;
            end
            6'b001010: begin //slti
                ALUop = 3'b111;
                RegDst = 0;
                ALUSrc = 1;
                Branch = 0;
                MemRead = 0;
                MemWrite = 0;
                RegWrite = 1;
                MemtoReg = 0;
            end
            default: begin
                ALUop = 3'b001;
                RegDst = 1;
                ALUSrc = 0;
                Branch = 0;
                MemRead = 0;
                MemWrite = 0;
                RegWrite = 1;
                MemtoReg = 0;
            end
        endcase
    end

endmodule
