`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:27:19
// Design Name: 
// Module Name: MemtoRegmux
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


module MemtoRegmux(
    input [31:0]MEM_WB_Data,
    input [31:0]MEM_WB_Res,
    input MemtoReg,
    output reg [31:0]WB_Data
);
    always@(*) begin
        if(MemtoReg == 1) begin
            WB_Data = MEM_WB_Data;
        end
        else begin
            WB_Data = MEM_WB_Res;
        end
    end

endmodule
