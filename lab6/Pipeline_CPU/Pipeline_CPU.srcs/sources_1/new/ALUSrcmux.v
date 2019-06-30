`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:03:26
// Design Name: 
// Module Name: ALUSrcmux
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

module ALUSrcmux(
    input ALUSrc,
    input [31:0]Imm,
    input [31:0]ALUB,
    output reg [31:0]ALUBinput
);
    always@(*) begin
        if(ALUSrc == 1) begin
            ALUBinput = Imm;
        end
        else begin
            ALUBinput = ALUB;
        end
    end

endmodule
