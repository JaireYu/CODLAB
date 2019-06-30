`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:12:33
// Design Name: 
// Module Name: ForwardBmux
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


module ForwardBmux(
    input [1:0]forwardB,
    input [31:0]WBdata,
    input [31:0]MEMdata,
    input [31:0]EXdata,
    output reg [31:0]ALUinputB
);
    always@(*) begin
        case (forwardB)
            2'b00: ALUinputB = EXdata;
            2'b01: ALUinputB = WBdata;
            2'b10: ALUinputB = MEMdata;
            default: ALUinputB = EXdata;
        endcase  
    end
endmodule
