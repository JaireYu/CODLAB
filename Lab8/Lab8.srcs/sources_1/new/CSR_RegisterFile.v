`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: JaireYu
// 
// Create Date: 2020/04/17 22:30:12
// Design Name: 
// Module Name: CSR_RegisterFile
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


module CSR_RegisterFile(
    input wire clk,
    input wire rst,
    input wire write_en,
    input wire [11:0] addr, wb_addr,
    input wire [31:0] wb_data,
    output wire [31:0] CSRreg
);
    integer i;
    reg [31:0] csr_reg[0:4095];
    initial
    begin
        for(i = 0; i < 32; i = i + 1) 
            csr_reg[i][31:0] <= 32'b0;
    end

    always@(negedge clk or posedge rst) 
    begin 
        if (rst)
            for (i = 0; i < 32; i = i + 1) 
                csr_reg[i][31:0] <= 32'b0;
        else if(write_en)
            csr_reg[wb_addr] <= wb_data;   
    end
    assign CSRreg = csr_reg[addr];

endmodule