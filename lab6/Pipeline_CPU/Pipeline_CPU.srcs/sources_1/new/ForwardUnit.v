`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:15:03
// Design Name: 
// Module Name: ForwardUnit
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


module ForwardUnit(
    input [4:0]EX_MEM_Rd,
    input [4:0]MEM_WB_Rd,
    input MEM_WB_RegWrite,
    input EX_MEM_RegWrite,
    input [4:0]ID_EX_Rt,
    input [4:0]ID_EX_Rs,
    output reg [1:0]forwardA,
    output reg [1:0]forwardB
);
    always@(*) begin
        forwardA = 2'b00;
        forwardB = 2'b00;
        if((EX_MEM_RegWrite == 1)&&(EX_MEM_Rd!=5'b00000)&&(EX_MEM_Rd == ID_EX_Rs))
            forwardA = 2'b10;
        else if((MEM_WB_RegWrite == 1)&&(MEM_WB_Rd!=5'b00000)&&(MEM_WB_Rd == ID_EX_Rs))
            forwardA = 2'b01;
        if((EX_MEM_RegWrite == 1)&&(EX_MEM_Rd!=5'b00000)&&(EX_MEM_Rd == ID_EX_Rt))
            forwardB = 2'b10;
        else if((MEM_WB_RegWrite == 1)&&(MEM_WB_Rd!=5'b00000)&&(MEM_WB_Rd == ID_EX_Rt))
            forwardB = 2'b01;
    end

endmodule
