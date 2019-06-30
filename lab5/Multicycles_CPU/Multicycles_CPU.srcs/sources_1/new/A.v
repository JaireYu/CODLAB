`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:12:09
// Design Name: 
// Module Name: A
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


module A(
    input clk,
    input [31:0]Readdata1,
    output reg [31:0]ALUdataA
);
    always@(posedge clk) begin
       ALUdataA <= Readdata1;
    end
endmodule
