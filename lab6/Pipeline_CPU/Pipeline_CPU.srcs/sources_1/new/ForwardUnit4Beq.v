`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:15:54
// Design Name: 
// Module Name: ForwardUnit4Beq
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


module ForwardUnit4Beq(
    input [4:0]EX_MEM_Rd,
    input [4:0]IF_ID_Rs,
    input [4:0]IF_ID_Rt,
    output reg ForwardC,
    output reg ForwardD
);
    always@(*) begin 
        if(EX_MEM_Rd != 5'b00000 && EX_MEM_Rd == IF_ID_Rs)
            ForwardC = 1;
        else 
            ForwardC = 0;
        if(EX_MEM_Rd != 5'b00000 && EX_MEM_Rd == IF_ID_Rt)
            ForwardD = 1;
        else                        
            ForwardD = 0;
    end
endmodule
