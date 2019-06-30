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
    reg [3-1:0]wa;   //д��ַ
    reg [4-1:0]wd;   //д����
    reg we;          //дʹ��
    reg clk;         //ʱ��
    reg rst;         //reset
    reg [3-1:0]ra0;  //0����ַ
    reg [3-1:0]ra1;  //1����ַ
    wire [4-1:0]rd0; //0������
    wire [4-1:0]rd1; //1������
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
