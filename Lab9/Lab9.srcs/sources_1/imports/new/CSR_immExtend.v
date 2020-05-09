`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/17 22:57:13
// Design Name: 
// Module Name: CSR_immExtend
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

module CSR_immExtend(
    input wire [4:0] csr_imm_input,
    output reg [31:0] csr_imm_out
    );

    always@(*)
    begin
        csr_imm_out = {27'b0,csr_imm_input};
    end
endmodule
