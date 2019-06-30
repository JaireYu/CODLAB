`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/02 12:47:00
// Design Name: 
// Module Name: tb
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


module tb(
    );
    reg [3-1:0]wa;   //写地址
    reg [4-1:0]wd;   //写数据
    reg we;          //写使能
    reg clk;         //时钟
    reg rst;         //reset
    reg [3-1:0]ra0;  //0读地址
    reg [3-1:0]ra1;  //1读地址
    wire [4-1:0]rd0; //0读数据
    wire [4-1:0]rd1; //1读数据
    lab3_1 LAB(ra0,ra1,we,clk,rst,wa,wd,rd0,rd1);
    initial
    begin
    clk = 0;
    forever 
    begin
    #10 clk = ~clk;
    end
    end
    initial
    begin
    we = 1; wa = 3; wd = 5; rst = 0;ra0 = 3;ra1 = 4;
    #15;
    rst = 1;
    #15;
    wa = 4; wd = 7; rst = 0;
    #15;
    wa = 0; wd = 3;
    #15;
    ra0 = 0;
    #40;
    end
endmodule
