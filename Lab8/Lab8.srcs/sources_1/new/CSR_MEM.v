`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: JaireYu
// 
// Create Date: 2020/04/17 22:30:12
// Design Name: 
// Module Name: CSR_MEM
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

module CSR_MEM(
    input wire clk, bubbleM, flushM,
    input wire [11:0] CsrAddr_EX,
    input wire [31:0] CsrData_EX,
    input wire csr_EX,
    output reg [11:0] CsrAddr_MEM,
    output reg [31:0] CsrData_MEM,
    output reg csr_MEM
    );

    initial 
    begin
        CsrAddr_MEM = 0;
        CsrData_MEM = 0;
        csr_MEM = 0;
    end
    always@(posedge clk)
        if (!bubbleM) 
        begin
            if (flushM) begin
                CsrAddr_MEM <= 0;
                CsrData_MEM <= 0;
                csr_MEM <= 0;
            end
            else begin
                CsrAddr_MEM <= CsrAddr_EX;
                CsrData_MEM <= CsrData_EX;
                csr_MEM <= csr_EX;
            end
        end
    
endmodule