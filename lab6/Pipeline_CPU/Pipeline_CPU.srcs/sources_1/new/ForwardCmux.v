`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:13:24
// Design Name: 
// Module Name: ForwardCmux
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


module ForwardCmux(
    input [31:0]MEM_Data,
    input [31:0]RFData1,
    input ForwardC,
    output reg [31:0]CmpData1
);
    always@(*) begin
        if(ForwardC == 1)
            CmpData1 = MEM_Data;
        else
            CmpData1 = RFData1;
    end
endmodule
