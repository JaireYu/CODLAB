`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:54:30
// Design Name: 
// Module Name: RFaddrmux
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


module RFaddrmux(
    input [4:0]Instruction20_16,
    input [4:0]Instruction15_11,
    input RegDst,
    output reg [4:0]RFwriteaddr
);
    always@(*) begin
        if(RegDst == 1)
            RFwriteaddr = Instruction15_11;
        else
            RFwriteaddr = Instruction20_16;
    end
endmodule
