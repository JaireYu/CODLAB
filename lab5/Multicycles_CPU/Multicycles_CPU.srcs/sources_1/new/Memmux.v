`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:31:54
// Design Name: 
// Module Name: Memmux
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


module Memmux(
    input IorD,
    input [31:0]pcaddr,
    input [31:0]dataaddr,
    output reg [7:0]address
);
    always@(*) begin
        if(IorD == 0)
            address = pcaddr[9:2];
        else
            address = dataaddr[9:2];
    end
endmodule
