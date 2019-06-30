`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:09:28
// Design Name: 
// Module Name: ForwardmuxA
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


module ForwardAmux(
    input [1:0]forwardA,
    input [31:0]WBdata,
    input [31:0]MEMdata,
    input [31:0]EXdata,
    output reg [31:0]ALUinputA
);
    always@(*) begin
        case (forwardA)
            2'b00: ALUinputA = EXdata;
            2'b01: ALUinputA = WBdata;
            2'b10: ALUinputA = MEMdata;
            default: ALUinputA = EXdata;
        endcase  
    end
endmodule
