`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:34:32
// Design Name: 
// Module Name: PC
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


module PC(
    input zero,
    input PCWriteCond1,
    input PCWriteCond2,
    input PCWrite,
    input clk,
    input rst,
    input [31:0]pc,
    output reg [31:0]pcaddr
);
    wire PCWriteCtrl;
    assign PCWriteCtrl = PCWrite|(PCWriteCond1 & zero)|(PCWriteCond2 & ~zero);
    always@(posedge clk or posedge rst) begin
        if(rst)
            pcaddr <= 32'b0;
        else if(PCWriteCtrl == 1)
            pcaddr <= pc;
    end
endmodule
