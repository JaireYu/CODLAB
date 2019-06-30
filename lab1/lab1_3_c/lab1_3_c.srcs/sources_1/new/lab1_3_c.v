`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/21 12:34:02
// Design Name: 
// Module Name: lab1_3_c
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


module lab1_3_c(
    input  clk_in,
    input  [5:0] f0,
    input  [5:0] f1,
    input  rst,
    output [5:0] fn
    );
    fib FIB(clk_in, rst, f1, f0, fn);
endmodule

module fib(
    input clk,
    input rst,
    input [5:0] f1,
    input [5:0] f0,
    output wire [5:0] fn
);
    wire [2:0] u;
    reg [5:0] temp0;
    reg [5:0] temp1;
    alu AL(temp0, temp1, 3'b000, fn, u);
    always@(posedge clk or posedge rst)
    begin
    if(rst)
        begin
            temp0 <= f0;
            temp1 <= f1;
        end
    else
        begin
            temp0 <= temp1;
            temp1 <= temp1 + temp0;
        end
    end
endmodule
