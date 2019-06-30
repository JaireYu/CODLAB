`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:17:03
// Design Name: 
// Module Name: HazardDetection
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


module HazardDetection(
    input BranchDecide,
    input [5:0] IF_ID_Opcode,
    input ID_EX_MemRead,
    input ID_EX_RegWrite,
    input EX_MEM_RegWrite,
    input EX_MEM_MemRead,
    input [4:0]EX_MEM_Rd,
    input [4:0]ID_EX_Rd,
    input [4:0]IF_ID_Rs,
    input [4:0]IF_ID_Rt,
    output reg ID_Flush,
    output reg IF_Flush,
    output reg IF_ID_Write,
    output reg PC_Write
);
    //考虑最差的情况：lw + beq
    //首先进入lw判断暂停一个周期，PC和IF/ID锁住，让信号0跟着lw流入
    //然后beq有数据相关的情况下，锁住，beq处于IF/ID段，让信号0流入ID/EX段
    //最后判断beq还在IF/ID段但是已经没有数据相关，这时正常流入，但是分支成功用0擦除IF/ID段
    always@(*) begin
        if(ID_EX_MemRead == 1'b1 && ((ID_EX_Rd == IF_ID_Rs)||(ID_EX_Rd == IF_ID_Rs))) begin //上一条是lw
            PC_Write = 1'b0;
            ID_Flush = 1'b1;
            IF_Flush = 1'b0;
            IF_ID_Write = 1'b0; 
        end
        else if(IF_ID_Opcode == 6'b000100 && ((IF_ID_Rs == ID_EX_Rd || IF_ID_Rt == ID_EX_Rd) && ID_EX_RegWrite == 1)) begin //beq之前是add 或者前两条是lw
            PC_Write = 1'b0;
            ID_Flush = 1'b1;
            IF_Flush = 1'b0;
            IF_ID_Write = 1'b0;
        end
        else if(IF_ID_Opcode == 6'b000100 && BranchDecide == 1) begin
            PC_Write = 1'b1;
            ID_Flush = 1'b0;
            IF_Flush = 1'b1;
            IF_ID_Write = 1'b1;
        end
        else begin
            PC_Write = 1'b1;
            ID_Flush = 1'b0;
            IF_Flush = 1'b0;
            IF_ID_Write = 1'b1;
        end
    end

endmodule
