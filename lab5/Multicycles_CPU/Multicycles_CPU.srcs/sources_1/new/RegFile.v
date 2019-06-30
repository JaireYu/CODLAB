`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 21:43:03
// Design Name: 
// Module Name: RegFile
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


module RegFile(
    input [4:0]readaddr1,
    input [4:0]readaddr2,
    input [4:0]WriteAddr,
    input [31:0]WriteData,
    input [4:0]DebugAddr,
    input RegWrite,
    input clk,
    input rst,
    output [31:0]Readdata1,
    output [31:0]Readdata2,
    output [31:0]DebugData
);
    integer i;
    reg [31:0]reg_file[0:31];
    
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            for(i=0; i <32; i = i + 1) begin
                reg_file[i] <= 0;
            end
        end
        else begin
            if(RegWrite == 1) begin
                if(WriteAddr != 0)
                    reg_file[WriteAddr] <= WriteData;
            end
        end
    end
    assign DebugData = reg_file[DebugAddr];
    assign Readdata1 = reg_file[readaddr1];
    assign Readdata2 = reg_file[readaddr2];
endmodule
