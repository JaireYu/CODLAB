`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 11:47:10
// Design Name: 
// Module Name: lab2_1_tb
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


module lab2_1_tb(

    );
    reg [3:0]x0;
    reg [3:0]x1;
    reg [3:0]x2;
    reg [3:0]x3;
    reg rst;
    reg clk;
    wire [3:0]s0;
    wire [3:0]s1;
    wire [3:0]s2;
    wire [3:0]s3;
    wire done;
    lab2_1 LAB(x0,x1,x2,x3,rst,clk,s0,s1,s2,s3,done);
    initial
    begin
    clk = 0;
    forever 
    begin #5 clk = ~clk; end
    end
    initial
    begin
    rst = 1; x0 = 4; x1 = 3; x2 = 2; x3 = 1;
    #20;
    rst = 0;
    end
endmodule
