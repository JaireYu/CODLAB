`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/21 12:46:56
// Design Name: 
// Module Name: alu_fb
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


module alu_tb(
    );
    reg  clk_in;
    reg  [5:0] f0;
    reg  [5:0] f1;
    reg  rst;
    wire [5:0] fn;
    lab1_3_c LAB(clk_in, f0, f1, rst, fn);
    initial
    begin
    clk_in = 0;
    forever 
    begin 
    #5 clk_in = ~clk_in; 
    end
    end
    initial
    begin
    rst =  1;  f0 = 1; f1 = 0; 
    #20;
    rst = 0;
    #980;
    end
endmodule
