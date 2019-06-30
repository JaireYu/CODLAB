`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:14:11
// Design Name: 
// Module Name: ForwardDmux
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


module ForwardDmux(
    input [31:0]MEM_Data,
    input [31:0]RFData2,
    input ForwardD,
    output reg [31:0]CmpData2
);
    always@(*) begin
        if(ForwardD == 1)
            CmpData2 = MEM_Data;
        else
            CmpData2 = RFData2;
    end
endmodule
