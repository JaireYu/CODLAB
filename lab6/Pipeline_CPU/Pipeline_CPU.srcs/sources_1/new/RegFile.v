`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:31:11
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
    input [4:0]ReadAddr1,
    input [4:0]ReadAddr2,
    input [4:0]WriteAddr,
    input [31:0]WriteData,
    input [4:0]DebugAddr,
    input RegWrite,
    input clk,
    input rst,
    output reg [31:0]ReadData1,
    output reg [31:0]ReadData2,
    output reg [31:0]DebugData
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
    always@(*) begin
        if(ReadAddr1 == 0) begin
            ReadData1 = 0;
        end
        else if(ReadAddr1 == WriteAddr) begin
            ReadData1 = WriteData;
        end
        else 
            ReadData1 = reg_file[ReadAddr1];
    end
    always@(*) begin
        if(ReadAddr2 == 0) begin
            ReadData2 = 0;
        end
        else if(ReadAddr2 == WriteAddr) begin
            ReadData2 = WriteData;
        end
        else 
            ReadData2 = reg_file[ReadAddr2];
    end
    always@(*) begin
            DebugData = reg_file[DebugAddr];
    end
endmodule