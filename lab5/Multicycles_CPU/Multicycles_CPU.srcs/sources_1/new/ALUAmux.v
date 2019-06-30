`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:16:44
// Design Name: 
// Module Name: ALUAmux
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


module ALUAmux(
    input ALUSrcA,
    input [31:0]PC,
    input [31:0]A,
    output reg [31:0]ALUA
);
    always@(*) begin
        if(ALUSrcA == 0)
            ALUA = PC;
        else
            ALUA = A;
    end
endmodule
