`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:24:43
// Design Name: 
// Module Name: ALUout
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


module ALUout(
    input [31:0]ALUresult,
    input clk,
    output reg [31:0]ALUoutdata
);
    always@(posedge clk) begin
        ALUoutdata <= ALUresult;
    end

endmodule
