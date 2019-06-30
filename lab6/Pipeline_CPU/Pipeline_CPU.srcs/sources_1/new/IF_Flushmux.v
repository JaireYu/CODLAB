`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:21:05
// Design Name: 
// Module Name: IF_Flushmux
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


module IF_Flushmux(
    input [31:0]instruction,
    input IF_Flush,
    output reg [31:0]IR
);
    always@(*) begin
        if(IF_Flush == 1) begin
            IR = 32'd0;
        end
        else begin
            IR = instruction;
        end
    end

endmodule
