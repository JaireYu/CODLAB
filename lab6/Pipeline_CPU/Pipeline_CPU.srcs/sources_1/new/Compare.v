`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:04:36
// Design Name: 
// Module Name: Compare
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


module Compare(                  //Branch的与运算包含在Compare中
    input [31:0]BeqRs,
    input [31:0]BeqRt,
    input Branch,
    output reg PCSrc
);
    always@(*) begin
        if(BeqRs == BeqRt && Branch) begin
            PCSrc = 1;
        end
        else begin
            PCSrc = 0;
        end
    end

endmodule