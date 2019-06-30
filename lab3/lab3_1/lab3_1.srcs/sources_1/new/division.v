`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/09 13:18:38
// Design Name: 
// Module Name: division
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


module division(
    input clk_100M,
    input reset,
    output reg clk_1HZ
    );
    wire clk_5M;
    wire rst_n;
    reg [22:0]count;
    clk_wiz_0 
    (
  // Clock out ports
    .clk_out1(clk_5M),
  // Status and control signals
    .reset(reset),
    .locked(rst_n),
 // Clock in ports
    .clk_in1(clk_100M)
    );
    always@(posedge clk_5M or negedge rst_n)
    begin
        if(~rst_n)
            count <= 23'h0;
        else if(count < 23'd5000000)
            count <= count + 1;
        else
            count <= 23'h0;
    end
    always@(posedge clk_5M or negedge rst_n)
    begin
        if(~rst_n)
            clk_1HZ <= 23'h0;
        else if(count == 23'd4999999)
            clk_1HZ <=  1'b1;
        else
            clk_1HZ <=  1'b0;
    end
endmodule
