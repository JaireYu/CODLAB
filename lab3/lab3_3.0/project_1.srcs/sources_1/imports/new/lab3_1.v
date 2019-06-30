`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/02 12:11:50
// Design Name: 
// Module Name: lab3_1
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


module lab3_1 #(parameter reg_num = 8, parameter address = 3,  parameter data = 4)(  //reg_numÊÇ¼Ä´æÆ÷Êı8£¬addressÊÇ¼Ä´æÆ÷±àÂëÎ»Êı2^3£¬dataÊÇ¼Ä´æÆ÷Î»¿í
    input [address-1:0]ra0,
    input [address-1:0]ra1,
    input we,
    input clk,
    input rst,
    input [address-1:0]wa,
    input [data-1:0]wd,
    output  [data-1:0]rd0,
    output  [data-1:0]rd1
    );
    reg [data-1:0]reg_file[0:reg_num-1];
    assign rd0 = reg_file[ra0];
    assign rd1 = reg_file[ra1];
    always@(posedge clk or posedge rst)
    begin
    if(rst)
        begin
        reg_file[0] <= 0;
        reg_file[1] <= 0;
        reg_file[2] <= 0;
        reg_file[3] <= 0;
        reg_file[4] <= 0;
        reg_file[5] <= 0;
        reg_file[6] <= 0;
        reg_file[7] <= 0;
        end
    else
    begin
        if(we == 1)
        begin
        reg_file[wa] <= wd;
        end 
    end
    end
endmodule
