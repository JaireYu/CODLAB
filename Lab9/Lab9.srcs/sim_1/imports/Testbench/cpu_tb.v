`timescale 1ns / 1ps

module cpu_tb();
    reg clk = 1'b1;
    reg rst = 1'b1;
    wire [31:0] miss_cnt;
    wire [31:0] req_cnt;
    wire [31:0] ra, sp, gp;
    always  #2 clk = ~clk;
    initial #8 rst = 1'b0;
    wire bubbleF, flushF, bubbleD, flushD, bubbleE, flushE, bubbleM, flushM, bubbleW, flushW;
    wire [31:0] jal_target, br_target;
    wire jal, br;
    wire jalr_ID, jalr_EX;
    wire [31:0] NPC, PC_IF, PC_4, PC_ID, PC_EX;
    wire [31:0] inst_ID;
    wire reg_write_en_ID, reg_write_en_EX, reg_write_en_MEM, reg_write_en_WB;
    wire [4:0] reg1_src_EX;
    wire [4:0] reg2_src_EX;
    wire [4:0] reg_dest_EX, reg_dest_MEM, reg_dest_WB;
    wire [31:0] data_WB;
    wire [31:0] reg1, reg1_EX;
    wire [31:0] reg2, reg2_EX, reg2_MEM;
    wire [31:0] op2;
    wire [31:0] reg_or_imm;
    wire op2_src;
    wire [3:0] ALU_func_ID, ALU_func_EX;
    wire [2:0] br_type_ID, br_type_EX;
    wire load_npc_ID, load_npc_EX;
    wire wb_select_ID, wb_select_EX, wb_select_MEM;
    wire [2:0] load_type_ID, load_type_EX, load_type_MEM;
    wire [1:0] src_reg_en_ID, src_reg_en_EX;
    wire [3:0] cache_write_en_ID, cache_write_en_EX, cache_write_en_MEM;
    wire alu_src1_ID, alu_src1_EX;
    wire [1:0] alu_src2_ID, alu_src2_EX;
    wire [2:0] imm_type;
    wire [31:0] imm;
    wire [31:0] ALU_op1, ALU_op2, ALU_out;
    wire [31:0] dealt_reg2;
    wire [31:0] result, result_MEM;
    wire [1:0] op1_sel, op2_sel, reg2_sel;
    wire [31:0] t0,t1,t2;
    wire csr_ID, csr_EX,csr_MEM, csr_WB;  
    wire [2:0]CSR_func_ID, CSR_func_EX;
    wire [11:0]CsrAddr_EX, CsrAddr_MEM, CsrAddr_WB;
    wire [31:0]CsrData_ID, CsrData_EX, CsrData_MEM, CsrData_WB; 
    wire [31:0]Csr_imm_EX, Csr_imm_ID;
    wire [31:0] Reg1_after_bypass;
    wire [31:0] Csr_op1;
    wire [1:0] Csr_Bypass;
    wire [31:0] CsrAlu_out;
    wire miss;
    wire [31:0] data_raw;
    wire cache_rd_req;
    wire cache_wr_req;
    RV32ICore RV32ICore_tb_inst(
        .CPU_CLK    ( clk          ),
        .CPU_RST    ( rst          ),
        .miss(miss),
        .miss_cnt   (miss_cnt),
        .req_cnt    (req_cnt),
        .ra(ra),
        .sp(sp),
        .gp(gp),
        .t0(t0),
        .t1(t1),
        .t2(t2),
        .bubbleF(bubbleF),
         .flushF(flushF), 
         .bubbleD(bubbleD), 
         .flushD(flushD), 
         .bubbleE(bubbleE), 
         .flushE(flushE), 
         .bubbleM(bubbleM), 
         .flushM(flushM), 
         .bubbleW(bubbleW), 
         .flushW(flushW),
        .jal_target(jal_target), 
        .br_target(br_target),
        .jal(jal), .br(br),
     .jalr_ID(jalr_ID), .jalr_EX(jalr_EX),
      .NPC(NPC), .PC_IF(PC_IF),.PC_4(PC_4),.PC_ID(PC_ID),.PC_EX(PC_EX),.inst_ID(inst_ID),
     .reg_write_en_ID(reg_write_en_ID),.reg_write_en_EX(reg_write_en_EX),.reg_write_en_MEM(reg_write_en_MEM),.reg_write_en_WB(reg_write_en_WB),
      .reg1_src_EX(reg1_src_EX),
    .reg2_src_EX( reg2_src_EX),
    .reg_dest_EX( reg_dest_EX), .reg_dest_MEM(reg_dest_MEM),.reg_dest_WB(reg_dest_WB),
    .data_WB( data_WB),
     .reg1(reg1), .reg1_EX(reg1_EX),.reg2(reg2),.reg2_EX( reg2_EX),.reg2_MEM(reg2_MEM),
     .op2(op2),
     .reg_or_imm(reg_or_imm),
     .op2_src(op2_src),
     .ALU_func_ID(ALU_func_ID),.ALU_func_EX(ALU_func_EX),
     .br_type_ID(br_type_ID),.br_type_EX(br_type_EX),
    .load_npc_ID(load_npc_ID),.load_npc_EX(load_npc_EX),
    .wb_select_ID(wb_select_ID),.wb_select_EX(wb_select_EX),.wb_select_MEM(wb_select_MEM),
     .load_type_ID(load_type_ID),.load_type_EX(load_type_EX),.load_type_MEM(load_type_MEM),
     .src_reg_en_ID(src_reg_en_ID),.src_reg_en_EX(src_reg_en_EX),
     .cache_write_en_ID(cache_write_en_ID),.cache_write_en_EX(cache_write_en_EX),.cache_write_en_MEM(cache_write_en_MEM),
    .alu_src1_ID(alu_src1_ID),.alu_src1_EX(alu_src1_EX),
     .alu_src2_ID(alu_src2_ID),.alu_src2_EX(alu_src2_EX),
     .imm_type(imm_type),
     .imm(imm),
     .ALU_op1(ALU_op1),.ALU_op2(ALU_op2),.ALU_out(ALU_out),
     .dealt_reg2(dealt_reg2),
     .result(result),.result_MEM(result_MEM),
     .op1_sel(op1_sel),.op2_sel(op2_sel), .reg2_sel(reg2_sel),
    .csr_ID(csr_ID),.csr_EX(csr_EX),.csr_MEM(csr_MEM),.csr_WB(csr_WB),  
    .CSR_func_ID(CSR_func_ID),.CSR_func_EX(CSR_func_EX),
    .CsrAddr_EX(CsrAddr_EX),.CsrAddr_MEM(CsrAddr_MEM),.CsrAddr_WB(CsrAddr_WB),
    .CsrData_ID(CsrData_ID),.CsrData_EX(CsrData_EX),.CsrData_MEM(CsrData_MEM),.CsrData_WB(CsrData_WB), 
    .Csr_imm_EX(Csr_imm_EX),.Csr_imm_ID(Csr_imm_ID),
    .Reg1_after_bypass(Reg1_after_bypass),
    .Csr_op1(Csr_op1),
    .Csr_Bypass(Csr_Bypass),
    .CsrAlu_out(CsrAlu_out),
    .data_raw(data_raw),
        .cache_rd_req(cache_rd_req),
        .cache_wr_req(cache_wr_req)
    );
    
endmodule
