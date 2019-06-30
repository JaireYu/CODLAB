`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:29:33
// Design Name: 
// Module Name: PCSrcmux
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


module PCSrcmux(
    input PCSrc,
    input [31:0]NPC,
    input [31:0]BranchPC,
    output reg [31:0]PC
);
    always @(*) begin
        if(PCSrc == 1)
            PC = BranchPC;
        else    
            PC = NPC;
    end
endmodule
