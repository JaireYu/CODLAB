`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/11 10:32:37
// Design Name: 
// Module Name: Mutlicycles_CPU
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


module Multicycles_CPU(
    input clk,
    input PCrst,
    input OutputsCtrlrst,
    input RFrst,
    input run,
    input [7:0]addr,
    input [7:0]VGAaddr,
    output [31:0]Debug_Memdata,
    output [31:0]Debug_RFdata,
    output [7:0]Debug_PC
);
    wire [31:0]pc;
    wire [31:0]pcaddr;
    wire zero, PCWrite,PCWriteCond1,PCWriteCond2, IorD, Memread, Memwrite, IRWrite, RegDst;
    wire MemtoReg, RegWrite, ALUSrcA;
    wire [1:0]PCSource;
    wire [2:0]ALUop;
    wire [1:0]ALUSrcB;
    wire [7:0]MemAddr;
    wire [31:0]ALUoutoutput;
    wire [31:0]Memdata;
    wire [5:0]Instruction31_26;
    wire [4:0]Instruction25_21;
    wire [4:0]Instruction20_16;
    wire [4:0]Instruction15_11;
    wire [25:0]Instruction25_0;
    wire [15:0]Instruction15_0;
    wire [5:0]Instruction5_0;
    wire [31:0]MDRoutput;
    wire [4:0]RFwriteaddr;
    wire [31:0]RFwritedata;
    wire [31:0]RFreaddata1;
    wire [31:0]RFreaddata2;
    wire [31:0]Aoutput;
    wire [31:0]Boutput;
    wire [31:0]ALUimm;
    wire [31:0]ALUBeqOffset;
    wire [31:0]ALUAnumber;
    wire [31:0]ALUBnumber;
    wire [3:0]ALUCtrlinput;
    wire [31:0]ALUresult;
    wire [31:0]JmpAddr;
    PC PCreg(
    .zero(zero), 
    .PCWriteCond1(PCWriteCond1), 
    .PCWriteCond2(PCWriteCond2),
    .PCWrite(PCWrite),
    .clk(clk),
    .rst(PCrst),
    .pc(pc),
    .pcaddr(pcaddr)
    );
    assign Debug_PC = pcaddr[9:2]; 
    Memmux memmux(
    .IorD(IorD),
    .pcaddr(pcaddr),
    .dataaddr(ALUoutoutput),
    .address(MemAddr)
    );
    dist_mem_gen_0 Mem(
    .a(MemAddr),
    .d(Boutput),
    .dpra(VGAaddr),
    .dpo(Debug_Memdata),
    .spo(Memdata),
    .clk(clk),
    .we(Memwrite)
    );
    InstructionReg instructionreg(
        .Instruction(Memdata),
        .IRWrite(IRWrite),
        .clk(clk),
        .Instruction31_26(Instruction31_26),
        .Instruction25_21(Instruction25_21),
        .Instruction20_16(Instruction20_16),
        .Instruction15_11(Instruction15_11),
        .Instruction25_0(Instruction25_0),
        .Instruction15_0(Instruction15_0),
        .Instruction5_0(Instruction5_0)
    );
    MDR mdr(
        .clk(clk),
        .data(Memdata),
        .MDRdata(MDRoutput)
    );
    RFaddrmux rfaddrmux(
        .Instruction20_16(Instruction20_16),
        .Instruction15_11(Instruction15_11),
        .RegDst(RegDst),
        .RFwriteaddr(RFwriteaddr)
    );
    RFdatamux rfdatamux(
        .MDRdata(MDRoutput),
        .ALUoutdata(ALUoutoutput),
        .MemtoReg(MemtoReg),
        .RFdata(RFwritedata)
    );
    RegFile regfile(
        .readaddr1(Instruction25_21),
        .readaddr2(Instruction20_16),
        .WriteAddr(RFwriteaddr),
        .WriteData(RFwritedata),
        .DebugAddr(addr[4:0]),
        .RegWrite(RegWrite),
        .clk(clk),
        .rst(RFrst),
        .Readdata1(RFreaddata1),
        .Readdata2(RFreaddata2),
        .DebugData(Debug_RFdata)
    );
    A a(
        .clk(clk),
        .Readdata1(RFreaddata1),
        .ALUdataA(Aoutput)
    );
    B b(
        .clk(clk),
        .Readdata2(RFreaddata2),
        .ALUdataB(Boutput)
    );
    Sign_extend signextend(
        .Sign_input(Instruction15_0),
        .Sign_output(ALUimm)
    );
    Shift_left_1 shiftleft_1(
        .Sign_output(ALUimm),
        .beq_offset(ALUBeqOffset)
    );
    ALUAmux aluamux(
        .ALUSrcA(ALUSrcA),
        .PC(pcaddr),
        .A(Aoutput),
        .ALUA(ALUAnumber)
    );
    ALUBmux alubmux(
        .ALUSrcB(ALUSrcB),
        .B(Boutput),
        .imm(ALUimm),
        .offset(ALUBeqOffset),
        .ALUB(ALUBnumber)
    );
    ALU alu(
        .a(ALUAnumber),
        .b(ALUBnumber),
        .ALU_input(ALUCtrlinput),
        .result(ALUresult),
        .zero(zero)
    );
    ALUCtrl aluctrl(
        .ALUop(ALUop),
        .func(Instruction5_0),
        .ALUCtrlinput(ALUCtrlinput)
    );
    ALUout aluout(
        .clk(clk),
        .ALUresult(ALUresult),
        .ALUoutdata(ALUoutoutput)
    );
    Shift_left_2 shiftleft_2(
        .Instruction25_0(Instruction25_0),
        .PC(pcaddr),
        .JmpAddr(JmpAddr)
    );
    PCmux pcmux(
        .PCSource(PCSource),
        .npc(ALUresult),
        .JmpAddr(JmpAddr),
        .BeqAddr(ALUoutoutput),
        .pc(pc)
    );
    Outputs_Control output_control(
        .instruct(Instruction31_26),
        .clk(clk),
        .rst(OutputsCtrlrst),
        .run(run),
        .PCwriteCond1(PCWriteCond1),
        .PCwriteCond2(PCWriteCond2),
        .PCwrite(PCWrite),
        .IorD(IorD),
        .Memread(Memread),
        .Memwrite(Memwrite),
        .MemtoReg(MemtoReg),
        .IRWrite(IRWrite),
        .PCSource(PCSource),
        .ALUop(ALUop),
        .ALUSrcA(ALUSrcA),
        .ALUSrcB(ALUSrcB),
        .RegWrite(RegWrite),
        .RegDst(RegDst)
    );
endmodule
