`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:30:35
// Design Name: 
// Module Name: MDR
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


module MDR(
    input clk,
    input [31:0]data,
    output reg [31:0]MDRdata
);
    always@(posedge clk) begin
        MDRdata <= data;
    end

endmodule
