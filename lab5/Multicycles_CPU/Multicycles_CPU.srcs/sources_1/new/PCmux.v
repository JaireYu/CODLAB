`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:41:15
// Design Name: 
// Module Name: PCmux
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


module PCmux(
    input [1:0]PCSource,
    input [31:0]npc,
    input [31:0]JmpAddr,
    input [31:0]BeqAddr,
    output reg [31:0]pc
);
    always@(*) begin
        case(PCSource)
            2'b00: pc = npc;
            2'b01: pc = BeqAddr;
            2'b10: pc = JmpAddr;
            default: pc = npc;
        endcase
    end
endmodule
