`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:27:53
// Design Name: 
// Module Name: PC_9_2
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


module PC_9_2(
    input [31:0]PCaddr,
    output [7:0]PCaddr_9_2
);
    assign PCaddr_9_2 = PCaddr[9:2];
endmodule