`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 17:25:58
// Design Name: 
// Module Name: Pipeline_CPU_tb
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


module Pipeline_CPU_tb(
    );
    reg clk;
    reg Regrst;
    reg PCrst;
    reg [7:0]Debug_Addr;
    wire [7:0]Debug_PC;
    wire [31:0]Debug_RFData;
    wire [31:0]Debug_MemData;
    Pipeline_CPU pcpu(
    clk,
    Regrst,
    PCrst,
    Debug_Addr,
    Debug_PC,
    Debug_RFData,
    Debug_MemData
   );
    
    initial begin
        clk = 0;
        forever begin
            #5 clk = ~clk;
        end
    end
    initial begin
        Regrst = 0; PCrst = 0; Debug_Addr = 8'b00000011;
        #2;
        Regrst = 1; PCrst = 1;
        #2;
        Regrst = 0; PCrst = 0;
    end
endmodule
