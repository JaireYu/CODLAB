`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:30:24
// Design Name: 
// Module Name: RegDstmux
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


module RegDstmux(
    input RegDst,
    input [4:0]ID_EX_Rt,
    input [4:0]ID_EX_Rd,
    output reg [4:0]EX_WBAddr
);
    always@(*) begin
        if(RegDst == 1) begin
            EX_WBAddr = ID_EX_Rd;
        end
        else begin
            EX_WBAddr = ID_EX_Rt;
        end
    end
endmodule