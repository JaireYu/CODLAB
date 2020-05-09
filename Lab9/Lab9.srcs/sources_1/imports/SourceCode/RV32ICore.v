`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC ESLAB
// Engineer: Huang Yifan (hyf15@mail.ustc.edu.cn)
// 
// Design Name: RV32I Core
// Module Name: RV32I Core
// Tool Versions: Vivado 2017.4.1
// Description: Top level of our CPU Core
//////////////////////////////////////////////////////////////////////////////////


//功能说明
    // RV32I Core的顶层模�??
//实验要求  
    // 添加CSR指令的数据�?�路和相应部�??

module RV32ICore(
    input wire CPU_CLK,
    input wire CPU_RST,
    input wire [31:0] CPU_Debug_InstCache_A2,
    input wire [31:0] CPU_Debug_InstCache_WD2,
    input wire [ 3:0] CPU_Debug_InstCache_WE2,
    output wire [31:0] CPU_Debug_InstCache_RD2,
    output wire [31:0] gp,
    output wire [31:0] sp,
    output wire [31:0] ra,
    output wire [31:0] t0,
    output wire [31:0] t1,
    output wire [31:0] t2,
    output wire bubbleF, flushF, bubbleD, flushD, bubbleE, flushE, bubbleM, flushM, bubbleW, flushW,
    output wire [31:0] jal_target, br_target,
    output wire jal, br,
    output wire jalr_ID, jalr_EX,
    output wire [31:0] NPC, PC_IF, PC_4, PC_ID, PC_EX,
    output wire [31:0] inst_ID,
    output wire reg_write_en_ID, reg_write_en_EX, reg_write_en_MEM, reg_write_en_WB,
    output wire [4:0] reg1_src_EX,
    output wire [4:0] reg2_src_EX,
    output wire [4:0] reg_dest_EX, reg_dest_MEM, reg_dest_WB,
    output wire [31:0] data_WB,
    output wire [31:0] reg1, reg1_EX,
    output wire [31:0] reg2, reg2_EX, reg2_MEM,
    output wire [31:0] op2,
    output wire [31:0] reg_or_imm,
    output wire op2_src,
    output wire [3:0] ALU_func_ID, ALU_func_EX,
    output wire [2:0] br_type_ID, br_type_EX,
    output wire load_npc_ID, load_npc_EX,
    output wire wb_select_ID, wb_select_EX, wb_select_MEM,
    output wire [2:0] load_type_ID, load_type_EX, load_type_MEM,
    output wire [1:0] src_reg_en_ID, src_reg_en_EX,
    output wire [3:0] cache_write_en_ID, cache_write_en_EX, cache_write_en_MEM,
    output wire alu_src1_ID, alu_src1_EX,
    output wire [1:0] alu_src2_ID, alu_src2_EX,
    output wire [2:0] imm_type,
    output wire [31:0] imm,
    output wire [31:0] ALU_op1, ALU_op2, ALU_out,
    output wire [31:0] dealt_reg2,
    output wire [31:0] result, result_MEM,
    output wire [1:0] op1_sel, op2_sel, reg2_sel,
    output wire csr_ID, csr_EX,csr_MEM, csr_WB,  
    output wire [2:0]CSR_func_ID, CSR_func_EX,
    output wire [11:0]CsrAddr_EX, CsrAddr_MEM, CsrAddr_WB,
    output wire [31:0]CsrData_ID, CsrData_EX, CsrData_MEM, CsrData_WB, 
    output wire [31:0]Csr_imm_EX, Csr_imm_ID,
    output wire [31:0] Reg1_after_bypass,
    output wire [31:0] Csr_op1,
    output wire [1:0] Csr_Bypass,
    output wire [31:0] CsrAlu_out,
    output wire miss,
    output wire [31:0] miss_cnt,
    output wire [31:0] req_cnt,
        output     wire [31:0] data_raw,
    output wire cache_rd_req,
    output wire cache_wr_req
    );
	//wire values definitions
//    wire bubbleF, flushF, bubbleD, flushD, bubbleE, flushE, bubbleM, flushM, bubbleW, flushW;
//    wire [31:0] jal_target, br_target;
//    wire jal, br;
//    wire jalr_ID, jalr_EX;
//    wire [31:0] NPC, PC_IF, PC_4, PC_ID, PC_EX;
//    wire [31:0] inst_ID;
//    wire reg_write_en_ID, reg_write_en_EX, reg_write_en_MEM, reg_write_en_WB;
//    wire [4:0] reg1_src_EX;
//    wire [4:0] reg2_src_EX;
//    wire [4:0] reg_dest_EX, reg_dest_MEM, reg_dest_WB;
//    wire [31:0] data_WB;
//    wire [31:0] reg1, reg1_EX;
//    wire [31:0] reg2, reg2_EX, reg2_MEM;
//    wire [31:0] op2;
//    wire [31:0] reg_or_imm;
//    wire op2_src;
//    wire [3:0] ALU_func_ID, ALU_func_EX;
//    wire [2:0] br_type_ID, br_type_EX;
//    wire load_npc_ID, load_npc_EX;
//    wire wb_select_ID, wb_select_EX, wb_select_MEM;
//    wire [2:0] load_type_ID, load_type_EX, load_type_MEM;
//    wire [1:0] src_reg_en_ID, src_reg_en_EX;
//    wire [3:0] cache_write_en_ID, cache_write_en_EX, cache_write_en_MEM;
//    wire alu_src1_ID, alu_src1_EX;
//    wire [1:0] alu_src2_ID, alu_src2_EX;
//    wire [2:0] imm_type;
//    wire [31:0] imm;
//    wire [31:0] ALU_op1, ALU_op2, ALU_out;
//    wire [31:0] dealt_reg2;
//    wire [31:0] result, result_MEM;
//    wire [1:0] op1_sel, op2_sel, reg2_sel;
    
    // Adder to compute PC + 4
    assign PC_4 = PC_IF + 4;
    // MUX for op2 source
    assign op2 = op2_src ? imm : reg2;
    // Adder to compute PC_ID + Imm - 4
    assign jal_target = PC_ID + op2 - 4;
    // MUX for ALU op1
    assign Reg1_after_bypass = (op1_sel == 2'h0) ? result_MEM :
                                         ((op1_sel == 2'h1) ? data_WB :
                                                              (op1_sel == 2'h2) ? (PC_EX - 4) :
                                                                                  reg1_EX);
    assign Csr_op1 = (Csr_Bypass == 2'b00)? CsrData_MEM : ((Csr_Bypass == 2'b01)? CsrData_WB :CsrData_EX);
    assign ALU_op1 = (csr_EX == 1)? Csr_op1 : Reg1_after_bypass;
    // MUX for ALU op2
    assign ALU_op2 = (op2_sel == 2'h0) ? result_MEM :
                                         ((op2_sel == 2'h1) ? data_WB :
                                                              ((op2_sel == 2'h2) ? reg2_src_EX :
                                                                                   reg_or_imm));

    // MUX for Reg2
    assign dealt_reg2 = (reg2_sel == 2'h0) ? result_MEM :
                                            ((reg2_sel == 2'h1) ? data_WB : reg2_EX);


    // MUX for result (ALU or PC_EX)
    assign result = load_npc_EX ? PC_EX : ALU_out;



    //Module connections
    // ---------------------------------------------
    // PC-Generator
    // ---------------------------------------------


    NPC_Generator NPC_Generator1(
        .PC(PC_4),
        .jal_target(jal_target),
        .jalr_target(ALU_out),
        .br_target(br_target),
        .jal(jal),
        .jalr(jalr_EX),
        .br(br),
        .NPC(NPC)
    );


    PC_IF PC_IF1(
        .clk(CPU_CLK),
        .bubbleF(bubbleF),
        .flushF(flushF),
        .NPC(NPC),
        .PC(PC_IF)
    );



    // ---------------------------------------------
    // IF stage
    // ---------------------------------------------

    PC_ID PC_ID1(
        .clk(CPU_CLK),
        .bubbleD(bubbleD),
        .flushD(flushD),
        .PC_IF(PC_4),
        .PC_ID(PC_ID)
    );


    IR_ID IR_ID1(
        .clk(CPU_CLK),
        .bubbleD(bubbleD),
        .flushD(flushD),
        .write_en(CPU_Debug_InstCache_WE2),
        .addr(PC_IF[31:2]),
        .debug_addr(CPU_Debug_InstCache_A2[31:2]),
        .debug_input(CPU_Debug_InstCache_WD2),
        .inst_ID(inst_ID),
        .debug_data(CPU_Debug_InstCache_RD2)
    );



    // ---------------------------------------------
    // ID stage
    // ---------------------------------------------


    RegisterFile RegisterFile1(
        .clk(CPU_CLK),
        .rst(CPU_RST),
        .write_en(reg_write_en_WB),
        .addr1(inst_ID[19:15]),
        .addr2(inst_ID[24:20]),
        .wb_addr(reg_dest_WB),
        .wb_data(data_WB),
        .reg1(reg1),
        .reg2(reg2),
        .gp(gp),
        .sp(sp),
        .ra(ra),
        .t0(t0),
        .t1(t1),
        .t2(t2)
    );

    CSR_RegisterFile CSR_RegisterFile1(
        .clk(CPU_CLK),
        .rst(CPU_RST),
        .write_en(csr_WB),
        .addr(inst_ID[31:20]), 
        .wb_addr(CsrAddr_WB),
        .wb_data(CsrData_WB),
        .CSRreg(CsrData_ID)
    );
    ControllerDecoder ControllerDecoder1(
        .inst(inst_ID),
        .jal(jal),
        .jalr(jalr_ID),
        .op2_src(op2_src),
        .ALU_func(ALU_func_ID),
        .br_type(br_type_ID),
        .load_npc(load_npc_ID),
        .wb_select(wb_select_ID),
        .load_type(load_type_ID),
        .src_reg_en(src_reg_en_ID),
        .reg_write_en(reg_write_en_ID),
        .cache_write_en(cache_write_en_ID),
        .alu_src1(alu_src1_ID),
        .alu_src2(alu_src2_ID),
        .imm_type(imm_type),
        .csr(csr_ID),
        .CSR_func(CSR_func_ID)
    );



    ImmExtend ImmExtend1(
        .inst(inst_ID[31:7]),
        .imm_type(imm_type),
        .imm(imm)
    );

    CSR_immExtend CSR_immExtend1(
        .csr_imm_input(inst_ID[19:15]),
        .csr_imm_out(Csr_imm_ID)
    );

    PC_EX PC_EX1(
        .clk(CPU_CLK),
        .bubbleE(bubbleE),
        .flushE(flushE),
        .PC_ID(PC_ID),
        .PC_EX(PC_EX)
    );

    BR_Target_EX BR_Target_EX1(
        .clk(CPU_CLK),
        .bubbleE(bubbleE),
        .flushE(flushE),
        .address(jal_target),
        .address_EX(br_target)
    );

    Op1_EX Op1_EX1(
        .clk(CPU_CLK),
        .bubbleE(bubbleE),
        .flushE(flushE),
        .reg1(reg1),
        .reg1_EX(reg1_EX)
    );

    Op2_EX Op2_EX1(
        .clk(CPU_CLK),
        .bubbleE(bubbleE),
        .flushE(flushE),
        .op2(op2),
        .reg_or_imm(reg_or_imm)
    );

    Reg2_EX Reg2_EX1(
        .clk(CPU_CLK),
        .bubbleE(bubbleE),
        .flushE(flushE),
        .reg2(reg2),
        .reg2_EX(reg2_EX)
    );

    Addr_EX Addr_EX1(
        .clk(CPU_CLK),
        .bubbleE(bubbleE),
        .flushE(flushE),
        .reg1_src_ID(inst_ID[19:15]),
        .reg2_src_ID(inst_ID[24:20]),
        .reg_dest_ID(inst_ID[11:7]),
        .reg1_src_EX(reg1_src_EX),
        .reg2_src_EX(reg2_src_EX),
        .reg_dest_EX(reg_dest_EX)
    );



    Ctrl_EX Ctrl_EX1(
        .clk(CPU_CLK),
        .bubbleE(bubbleE),
        .flushE(flushE),
        .jalr_ID(jalr_ID),
        .ALU_func_ID(ALU_func_ID),
        .br_type_ID(br_type_ID),
        .load_npc_ID(load_npc_ID),
        .wb_select_ID(wb_select_ID),
        .load_type_ID(load_type_ID),
        .src_reg_en_ID(src_reg_en_ID),
        .reg_write_en_ID(reg_write_en_ID),
        .cache_write_en_ID(cache_write_en_ID),
        .alu_src1_ID(alu_src1_ID),
        .alu_src2_ID(alu_src2_ID),
        .jalr_EX(jalr_EX),
        .ALU_func_EX(ALU_func_EX),
        .br_type_EX(br_type_EX),
        .load_npc_EX(load_npc_EX),
        .wb_select_EX(wb_select_EX),
        .load_type_EX(load_type_EX),
        .src_reg_en_EX(src_reg_en_EX),
        .reg_write_en_EX(reg_write_en_EX),
        .cache_write_en_EX(cache_write_en_EX),
        .alu_src1_EX(alu_src1_EX),
        .alu_src2_EX(alu_src2_EX)
    );

    CSR_EX CSR_EX1(
        .clk(CPU_CLK),
        .bubbleE(bubbleE),
        .flushE(flushE),
        .CsrAddr_ID(inst_ID[31:20]),
        .CsrData_ID(CsrData_ID),
        .csr_ID(csr_ID),
        .csr_func_in(CSR_func_ID),
        .Csr_imm_ID(Csr_imm_ID),
        .CsrAddr_EX(CsrAddr_EX),
        .CsrData_EX(CsrData_EX),
        .csr_EX(csr_EX),
        .csr_func(CSR_func_EX),
        .Csr_imm_EX(Csr_imm_EX)
    );
    // ---------------------------------------------
    // EX stage
    // ---------------------------------------------

    ALU ALU1(
        .op1(ALU_op1),
        .op2(ALU_op2),
        .ALU_func(ALU_func_EX),
        .ALU_out(ALU_out)
    );

    CSR_ALU CSR_ALU1(
        .csr_imm_in(Csr_imm_EX),
        .csr_data_in(Csr_op1),
        .reg1_data_in(Reg1_after_bypass),
        .csr_func(CSR_func_EX),
        .csralu_out(CsrAlu_out)
    );

    BranchDecision BranchDecision1(
        .reg1(ALU_op1),
        .reg2(dealt_reg2),
        .br_type(br_type_EX),
        .br(br)
    );


    Result_MEM Result_MEM1(
        .clk(CPU_CLK),
        .bubbleM(bubbleM),
        .flushM(flushM),
        .result(result),
        .result_MEM(result_MEM)
    );

    Reg2_MEM Reg2_MEM1(
        .clk(CPU_CLK),
        .bubbleM(bubbleM),
        .flushM(flushM),
        .reg2_EX(dealt_reg2),
        .reg2_MEM(reg2_MEM)
    );

    Addr_MEM Addr_MEM1(
        .clk(CPU_CLK),
        .bubbleM(bubbleM),
        .flushM(flushM),
        .reg_dest_EX(reg_dest_EX),
        .reg_dest_MEM(reg_dest_MEM)
    );



    Ctrl_MEM Ctrl_MEM1(
        .clk(CPU_CLK),
        .bubbleM(bubbleM),
        .flushM(flushM),
        .wb_select_EX(wb_select_EX),
        .load_type_EX(load_type_EX),
        .reg_write_en_EX(reg_write_en_EX),
        .cache_write_en_EX(cache_write_en_EX),
        .wb_select_MEM(wb_select_MEM),
        .load_type_MEM(load_type_MEM),
        .reg_write_en_MEM(reg_write_en_MEM),
        .cache_write_en_MEM(cache_write_en_MEM)
    );


    CSR_MEM CSR_MEM1(
        .clk(CPU_CLK),
        .bubbleM(bubbleM),
        .flushM(flushM),
        .CsrAddr_EX(CsrAddr_EX),
        .CsrData_EX(CsrAlu_out),
        .csr_EX(csr_EX),
        .CsrAddr_MEM(CsrAddr_MEM),
        .CsrData_MEM(CsrData_MEM),
        .csr_MEM(csr_MEM)
    );
    // ---------------------------------------------
    // MEM stage
    // ---------------------------------------------


    WB_Data_WB WB_Data_WB1(
        .clk(CPU_CLK),
        .rst(CPU_RST),
        .bubbleW(bubbleW),
        .flushW(flushW),
        .wb_select(wb_select_MEM),
        .load_type(load_type_MEM),
        .cache_write_en(cache_write_en_MEM),
        .addr(result_MEM),
        .in_data(reg2_MEM),
        .data_WB(data_WB),
        .miss(miss),
        .miss_cnt(miss_cnt),
        .req_cnt(req_cnt),
        .data_raw(data_raw),
        .cache_rd_req(cache_rd_req),
        .cache_wr_req(cache_wr_req)
    );


    Addr_WB Addr_WB1(
        .clk(CPU_CLK),
        .bubbleW(bubbleW),
        .flushW(flushW),
        .reg_dest_MEM(reg_dest_MEM),
        .reg_dest_WB(reg_dest_WB)
    );

    Ctrl_WB Ctrl_WB1(
        .clk(CPU_CLK),
        .bubbleW(bubbleW),
        .flushW(flushW),
        .reg_write_en_MEM(reg_write_en_MEM),
        .reg_write_en_WB(reg_write_en_WB)
    );

    CSR_WB CSR_WB1(
        .clk(CPU_CLK),
        .bubbleW(bubbleW),
        .flushW(flushW),
        .CsrAddr_MEM(CsrAddr_MEM),
        .CsrData_MEM(CsrData_MEM),
        .csr_MEM(csr_MEM),
        .CsrAddr_WB(CsrAddr_WB),
        .CsrData_WB(CsrData_WB),
        .csr_WB(csr_WB)
    );
    // ---------------------------------------------
    // WB stage
    // ---------------------------------------------



    // ---------------------------------------------
    // Harzard Unit
    // ---------------------------------------------
    HarzardUnit HarzardUnit1(
        .rst(CPU_RST),
        .reg1_srcD(inst_ID[19:15]),
        .reg2_srcD(inst_ID[24:20]),
        .reg1_srcE(reg1_src_EX),
        .reg2_srcE(reg2_src_EX),
        .reg_dstE(reg_dest_EX),
        .reg_dstM(reg_dest_MEM),
        .reg_dstW(reg_dest_WB),
        .br(br),
        .jalr(jalr_EX),
        .jal(jal),
        .src_reg_en(src_reg_en_EX),
        .wb_select(wb_select_EX),
        .reg_write_en_MEM(reg_write_en_MEM),
        .reg_write_en_WB(reg_write_en_WB),
        .alu_src1(alu_src1_EX),
        .alu_src2(alu_src2_EX),
        .flushF(flushF),
        .bubbleF(bubbleF),
        .flushD(flushD),
        .bubbleD(bubbleD),
        .flushE(flushE),
        .bubbleE(bubbleE),
        .flushM(flushM),
        .bubbleM(bubbleM),
        .flushW(flushW),
        .bubbleW(bubbleW),
        .op1_sel(op1_sel),
        .op2_sel(op2_sel),
        .reg2_sel(reg2_sel),
        .CSR_old(Csr_Bypass),
        .miss(miss)
    );  
    	         
endmodule