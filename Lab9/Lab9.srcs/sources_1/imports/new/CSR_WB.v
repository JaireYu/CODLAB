`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: JaireYu
// 
// Create Date: 2020/04/17 22:30:12
// Design Name: 
// Module Name: CSR_WB
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

module CSR_WB(
    input wire clk, bubbleW, flushW,
    input wire [11:0] CsrAddr_MEM,
    input wire [31:0] CsrData_MEM,
    input wire csr_MEM,
    output reg [11:0] CsrAddr_WB,
    output reg [31:0] CsrData_WB,
    output reg csr_WB
    );

    initial 
    begin
        CsrAddr_WB = 0;
        CsrData_WB = 0;
        csr_WB = 0;
    end
    always@(posedge clk)
        if (!bubbleW) 
        begin
            if (flushW) begin
                CsrAddr_WB <= 0;
                CsrData_WB <= 0;
                csr_WB <= 0;
            end
            else begin
                CsrAddr_WB <= CsrAddr_MEM;
                CsrData_WB <= CsrData_MEM;
                csr_WB <= csr_MEM;
            end
        end
    
endmodule