`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: JaireYu
// 
// Create Date: 2020/04/17 22:30:12
// Design Name: 
// Module Name: CSR_EX
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

module CSR_EX(
    input wire clk, bubbleE, flushE,
    input wire [11:0] CsrAddr_ID,
    input wire [31:0] CsrData_ID,
    input wire csr_ID,
    input wire [2:0]csr_func_in,
    input wire [31:0] Csr_imm_ID,
    output reg [11:0] CsrAddr_EX,
    output reg [31:0] CsrData_EX,
    output reg csr_EX,
    output reg [2:0]csr_func,
    output reg [31:0] Csr_imm_EX
    ); 

    initial 
    begin
        CsrAddr_EX = 0;
        CsrData_EX = 0;
        csr_EX = 0;
        csr_func = 0;
        Csr_imm_EX = 0;
    end
    always@(posedge clk)
        if (!bubbleE) 
        begin
            if (flushE) begin
                CsrAddr_EX <= 0;
                CsrData_EX <= 0;
                csr_EX <= 0;
                csr_func <= 0;
                Csr_imm_EX <= 0;
            end
            else begin
                CsrAddr_EX <= CsrAddr_ID;
                CsrData_EX <= CsrData_ID;
                csr_EX <= csr_ID;
                csr_func <= csr_func_in;
                Csr_imm_EX <= Csr_imm_ID;
            end
        end
    
endmodule