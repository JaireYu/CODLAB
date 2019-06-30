`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:27:25
// Design Name: 
// Module Name: B
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


module B(
    input [31:0]Readdata2,
    input clk,
    output reg [31:0]ALUdataB
);
    always@(posedge clk) begin
        ALUdataB <= Readdata2;        
    end
endmodule
