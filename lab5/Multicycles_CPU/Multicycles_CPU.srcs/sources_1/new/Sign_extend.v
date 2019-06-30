`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 22:04:42
// Design Name: 
// Module Name: Sign_extend
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


module Sign_extend(
    input [15:0]Sign_input,
    output reg [31:0]Sign_output
);
    always@(*) begin
        if(Sign_input[15] == 1)
            Sign_output = {16'b1111_1111_1111_1111, Sign_input};
        else
            Sign_output = {16'b0000_0000_0000_0000, Sign_input};
    end
endmodule
