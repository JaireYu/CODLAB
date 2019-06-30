`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/27 17:39:57
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


module tb();
    reg[3:0] x;
    reg[3:0] y;
    reg rst;
    reg clk;
    wire [3:0]q;
    wire [3:0]r;
    wire error;
    wire done;
    lab2_2 LAB2(x,y,rst,clk,q,r,error,done);
    initial
    begin 
    clk = 0; 
    forever 
    begin 
    #5 clk = ~clk; 
    end 
    end
    initial 
    begin
    y = 4'b0100; x = 4'b1111; rst = 0;
    #10; rst = 1;
    #10; rst = 0;
    #90;
    end
endmodule
