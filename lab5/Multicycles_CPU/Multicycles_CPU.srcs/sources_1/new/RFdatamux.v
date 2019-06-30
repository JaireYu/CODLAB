`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:55:35
// Design Name: 
// Module Name: RFdatamux
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


module RFdatamux(
    input [31:0]MDRdata,
    input [31:0]ALUoutdata,
    input MemtoReg, 
    output reg [31:0]RFdata
);
    always@(*) begin
        if(MemtoReg == 1)
            RFdata = MDRdata;
        else
            RFdata = ALUoutdata;
    end
endmodule
