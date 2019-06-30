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
    //�������������lw + beq
    //���Ƚ���lw�ж���ͣһ�����ڣ�PC��IF/ID��ס�����ź�0����lw����
    //Ȼ��beq��������ص�����£���ס��beq����IF/ID�Σ����ź�0����ID/EX��
    //����ж�beq����IF/ID�ε����Ѿ�û��������أ���ʱ�������룬���Ƿ�֧�ɹ���0����IF/ID��
    always@(*) begin
        if(ID_EX_MemRead == 1'b1 && ((ID_EX_Rd == IF_ID_Rs)||(ID_EX_Rd == IF_ID_Rs))) begin //��һ����lw
            PC_Write = 1'b0;
            ID_Flush = 1'b1;
            IF_Flush = 1'b0;
            IF_ID_Write = 1'b0; 
        end
        else if(IF_ID_Opcode == 6'b000100 && ((IF_ID_Rs == ID_EX_Rd || IF_ID_Rt == ID_EX_Rd) && ID_EX_RegWrite == 1)) begin //beq֮ǰ��add ����ǰ������lw
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
