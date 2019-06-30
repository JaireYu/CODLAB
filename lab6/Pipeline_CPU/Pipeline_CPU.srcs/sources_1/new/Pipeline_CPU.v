`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:39:47
// Design Name: 
// Module Name: Pipeline_CPU
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


module Pipeline_CPU(
    input clk,
    input Regrst,
    input PCrst,
    input [7:0]Debug_Addr,
    input [7:0]Debug_AddrVGA,
    output [7:0]Debug_PC,
    output [31:0]Debug_RFData,
    output [31:0]Debug_MemData
);
     wire PCSrc;
     wire PCWrite;
     wire IF_Flush;
     wire IF_ID_Write;
     wire ForwardC;
     wire ForwardD;
     wire [1:0]ForwardA;
     wire [1:0]ForwardB;
     wire ID_Flush;
     wire RegDst;
     wire [2:0]ALUop;
     wire ALUSrc;
     wire Branch;
     wire MemRead;
     wire MemWrite;
     wire MemtoReg;
     wire RegWrite;
     wire ID_RegDst;
     wire [2:0]ID_ALUop;
     wire ID_ALUSrc;
     wire ID_Branch;
     wire ID_MemRead;
     wire ID_MemWrite;
     wire ID_MemtoReg;
     wire ID_RegWrite;
     wire EX_MemtoReg;
     wire EX_RegWrite;
     wire EX_MemRead;
     wire EX_MemWrite;
     wire EX_RegDst;
     wire [2:0]EX_ALUop;
     wire EX_ALUSrc;
     wire MEM_MemRead;
     wire MEM_MemWrite;
     wire MEM_MemtoReg;
     wire MEM_RegWrite;
     wire WB_RegWrite;
     wire WB_MemtoReg;
    wire [31:0]IF_NPC;
    wire [31:0]BranchPC;
    wire [31:0]PC;
    wire [31:0]PC_32bit;
    wire [7:0]PC_8bit;
    wire [31:0]IF_Instruction;
    wire [31:0]Instruction;
    wire [31:0]ID_NPC;
    wire [5:0]Instruction31_26; //Opcode
    wire [4:0]Instruction25_21; //Rs
    wire [4:0]Instruction20_16; //Rt
    wire [4:0]Instruction15_11; //Rd
    wire [15:0]Instruction15_0;//imm
    wire [31:0]ID_Imm;
    wire [31:0]BeqOffset;
    wire [31:0]ID_RFData1;
    wire [31:0]ID_RFData2;
    wire [31:0]ID_CmpData1;
    wire [31:0]ID_CmpData2;
    wire [31:0]EX_A;
    wire [31:0]EX_B;
    wire [31:0]EX_Imm;
    wire [4:0]EX_Rd;
    wire [4:0]EX_Rt;
    wire [4:0]EX_Rs;
    wire [31:0]EX_ALUA;
    wire [31:0]EX_ALUB;
    wire [3:0]EX_ALUCtrlinput;
    wire [31:0]EX_WriteData;
    wire [31:0]EX_Res;
    wire [4:0]EX_WBAddr;
    wire [31:0]MEM_Res;
    wire [31:0]MEM_WriteData;
    wire [4:0]MEM_WBAddr;
    wire [7:0]MEM_Addr;
    wire [31:0]MEM_Data;
    wire [4:0]WB_WBAddr;
    wire [31:0]WB_WriteData;
    wire [31:0]WB_Data;
    wire [31:0]WB_Res;
    assign Debug_PC = PC_8bit;
    PCSrcmux pcsrcmux(
        .PCSrc(PCSrc),
        .NPC(IF_NPC),
        .BranchPC(BranchPC),
        .PC(PC)
    );
    PC pc(
        .PCWrite(PCWrite),
        .clk(clk),
        .rst(PCrst),
        .pc(PC),
        .pcaddr(PC_32bit)
    );
    PC_9_2 pc_9_2(
        .PCaddr(PC_32bit),
        .PCaddr_9_2(PC_8bit)
    );
    ADD add_IF(
        .add1(32'd4),
        .add2(PC_32bit),
        .addres(IF_NPC)
    );
    dist_mem_gen_0 IR(
        .a(PC_8bit),
        .spo(Instruction)
    );
    IF_Flushmux if_flushmux(
        .instruction(Instruction),
        .IF_Flush(IF_Flush),
        .IR(IF_Instruction)
    );
    IF_ID_Reg if_id_reg(
        .IF_NPC(IF_NPC),
        .IF_Instruct(IF_Instruction),
        .IF_ID_Write(IF_ID_Write),
        .clk(clk),
        .rst(Regrst),
        .ID_NPC(ID_NPC),
        .Instruction31_26(Instruction31_26), //Opcode
        .Instruction25_21(Instruction25_21), //Rs
        .Instruction20_16(Instruction20_16), //Rt
        .Instruction15_11(Instruction15_11), //Rd
        .Instruction15_0(Instruction15_0) //imm
    );
    Sign_extend sign_extend(
        .Sign_input(Instruction15_0),
        .Sign_output(ID_Imm)
    );
    Shift_left_2 shift_left_2(
        .Sign_output(ID_Imm),
        .beq_offset(BeqOffset)
    );
    ADD add_ID(
        .add1(ID_NPC),
        .add2(BeqOffset),
        .addres(BranchPC)
    );
    RegFile regfile(
        .ReadAddr1(Instruction25_21),
        .ReadAddr2(Instruction20_16),
        .WriteAddr(WB_WBAddr),
        .WriteData(WB_WriteData),
        .DebugAddr(Debug_Addr[4:0]),
        .RegWrite(WB_RegWrite),
        .clk(clk),
        .rst(Regrst),
        .ReadData1(ID_RFData1),
        .ReadData2(ID_RFData2),
        .DebugData(Debug_RFData)
    );
    ForwardCmux forwardcmux(
        .MEM_Data(MEM_Res),
        .RFData1(ID_RFData1),
        .ForwardC(ForwardC),
        .CmpData1(ID_CmpData1)
    );
    ForwardDmux forwarddmux(
        .MEM_Data(MEM_Res),
        .RFData2(ID_RFData2),
        .ForwardD(ForwardD),
        .CmpData2(ID_CmpData2)
    );
    Compare compare(
        .BeqRs(ID_CmpData1),
        .BeqRt(ID_CmpData2),
        .Branch(ID_Branch),
        .PCSrc(PCSrc)
    );
    Control control(
        .opcode(Instruction31_26),
        .RegDst(RegDst),
        .ALUop(ALUop),
        .ALUSrc(ALUSrc),
        .Branch(Branch),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .MemtoReg(MemtoReg),
        .RegWrite(RegWrite)
    );
    ID_Flushmux id_flushmux(
        .ID_Flush(ID_Flush),
        .RegDst(RegDst),
        .ALUop(ALUop),
        .ALUSrc(ALUSrc),
        .Branch(Branch),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .MemtoReg(MemtoReg),
        .RegWrite(RegWrite),
        .ID_RegDst(ID_RegDst),
        .ID_ALUop(ID_ALUop),
        .ID_ALUSrc(ID_ALUSrc),
        .ID_Branch(ID_Branch),
        .ID_MemRead(ID_MemRead),
        .ID_MemWrite(ID_MemWrite),
        .ID_MemtoReg(ID_MemtoReg),
        .ID_RegWrite(ID_RegWrite)
    );
    ID_EX_Reg id_ex_reg(
        .clk(clk),
        .rst(Regrst),
        .ID_RegDst(ID_RegDst),
        .ID_ALUop(ID_ALUop),
        .ID_ALUSrc(ID_ALUSrc),
        .ID_MemRead(ID_MemRead),
        .ID_MemWrite(ID_MemWrite),
        .ID_MemtoReg(ID_MemtoReg),
        .ID_RegWrite(ID_RegWrite),
        .ID_A(ID_RFData1),
        .ID_B(ID_RFData2),
        .ID_Imm(ID_Imm),
        .ID_Rd(Instruction15_11),
        .ID_Rt(Instruction20_16),
        .ID_Rs(Instruction25_21),
        .EX_MemtoReg(EX_MemtoReg),
        .EX_RegWrite(EX_RegWrite),
        .EX_MemRead(EX_MemRead),
        .EX_MemWrite(EX_MemWrite),
        .EX_RegDst(EX_RegDst),
        .EX_ALUop(EX_ALUop),
        .EX_ALUSrc(EX_ALUSrc),
        .EX_A(EX_A),
        .EX_B(EX_B),
        .EX_Imm(EX_Imm),
        .EX_Rd(EX_Rd),
        .EX_Rt(EX_Rt),
        .EX_Rs(EX_Rs)
    );
    ALUCtrl aluctrl(
        .ALUop(EX_ALUop),
        .Imm(EX_Imm),
        .ALUCtrlinput(EX_ALUCtrlinput)
    );
    ForwardAmux forwardamux(
        .forwardA(ForwardA),
        .WBdata(WB_WriteData),
        .MEMdata(MEM_Res),
        .EXdata(EX_A),
        .ALUinputA(EX_ALUA)
    );
    ForwardBmux forwardbmux(
        .forwardB(ForwardB),
        .WBdata(WB_WriteData),
        .MEMdata(MEM_Res),
        .EXdata(EX_B),
        .ALUinputB(EX_WriteData)
    );
    ALUSrcmux alusrcmux(
        .ALUSrc(EX_ALUSrc),
        .Imm(EX_Imm),
        .ALUB(EX_WriteData),
        .ALUBinput(EX_ALUB)
    );
    ALU alu(
        .a(EX_ALUA),
        .b(EX_ALUB),
        .ALU_input(EX_ALUCtrlinput),
        .result(EX_Res)
    );
    RegDstmux regdstmux(
        .RegDst(EX_RegDst),
        .ID_EX_Rt(EX_Rt),
        .ID_EX_Rd(EX_Rd),
        .EX_WBAddr(EX_WBAddr)
    );
    EX_MEM_Reg ex_mem_reg(
        .clk(clk),
        .rst(Regrst),
        .EX_MemRead(EX_MemRead),
        .EX_MemWrite(EX_MemWrite),
        .EX_MemtoReg(EX_MemtoReg),
        .EX_RegWrite(EX_RegWrite),
        .EX_Res(EX_Res),
        .EX_WriteData(EX_WriteData),
        .EX_WBAddr(EX_WBAddr),
        .MEM_MemRead(MEM_MemRead),
        .MEM_MemWrite(MEM_MemWrite),
        .MEM_MemtoReg(MEM_MemtoReg),
        .MEM_RegWrite(MEM_RegWrite),
        .MEM_Res(MEM_Res),
        .MEM_WriteData(MEM_WriteData),
        .MEM_WBAddr(MEM_WBAddr)
    );
    PC_9_2 pc_9_2_1(
        .PCaddr(MEM_Res),
        .PCaddr_9_2(MEM_Addr)
    );
    dist_mem_gen_1 DM(
        .a(MEM_Addr),
        .d(MEM_WriteData),
        .dpra(Debug_AddrVGA),
        .dpo(Debug_MemData),
        .spo(MEM_Data),
        .clk(clk),
        .we(MEM_MemWrite)
    );
    MEM_WB_Reg mem_wb_reg(
        .clk(clk),
        .rst(Regrst),
        .MEM_MemtoReg(MEM_MemtoReg),
        .MEM_RegWrite(MEM_RegWrite),
        .MEM_Data(MEM_Data),
        .MEM_Res(MEM_Res),
        .MEM_WBAddr(MEM_WBAddr),
        .WB_MemtoReg(WB_MemtoReg),
        .WB_RegWrite(WB_RegWrite),
        .WB_Data(WB_Data),
        .WB_Res(WB_Res),
        .WB_WBAddr(WB_WBAddr)
    );
    MemtoRegmux memtoregmux(
        .MEM_WB_Data(WB_Data),
        .MEM_WB_Res(WB_Res),
        .MemtoReg(WB_MemtoReg),
        .WB_Data(WB_WriteData)
    );
    ForwardUnit forwardunit(
        .EX_MEM_Rd(MEM_WBAddr),
        .MEM_WB_Rd(WB_WBAddr),
        .MEM_WB_RegWrite(WB_RegWrite),
        .EX_MEM_RegWrite(MEM_RegWrite),
        .ID_EX_Rt(EX_Rt),
        .ID_EX_Rs(EX_Rs),
        .forwardA(ForwardA),
        .forwardB(ForwardB)
    );
    HazardDetection hazarddetection(
        .BranchDecide(PCSrc),
        .IF_ID_Opcode(Instruction31_26),
        .ID_EX_MemRead(EX_MemRead),
        .ID_EX_RegWrite(EX_RegWrite),
        .EX_MEM_RegWrite(MEM_RegWrite),
        .EX_MEM_MemRead(MEM_MemRead),
        .EX_MEM_Rd(MEM_WBAddr),
        .ID_EX_Rd(EX_WBAddr),
        .IF_ID_Rs(Instruction25_21),
        .IF_ID_Rt(Instruction20_16),
        .ID_Flush(ID_Flush),
        .IF_Flush(IF_Flush),
        .IF_ID_Write(IF_ID_Write),
        .PC_Write(PCWrite)
    );
    ForwardUnit4Beq forwardunit4beq(
        .EX_MEM_Rd(MEM_WBAddr),
        .IF_ID_Rs(Instruction25_21),
        .IF_ID_Rt(Instruction20_16),
        .ForwardC(ForwardC),
        .ForwardD(ForwardD)
    );
endmodule
