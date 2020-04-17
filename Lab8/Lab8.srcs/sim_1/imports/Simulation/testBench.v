`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC ESLAB embeded System Lab
// Engineer: Huang Yifan (hyf15@mail.ustc.edu.cn)
// Design Name: RV32I Core
// Module Name: testBench
// Target Devices: Nexys4
// Tool Versions: Vivado 2017.4.1
// Description: This testBench Help users to initial the bram content, by loading .data file and .inst file.
//				Then give signals to start the execution of our cpu
//				When all instructions finish their executions, this testBench will dump the Instruction Bram and Data Bram's content to .txt files 
// !!! ALL YOU NEED TO CHANGE IS 4 FILE PATH BELOW !!!	
//				(they are all optional, you can run cpu without change paths here,if files are failed to open, we will not dump the content to .txt and will not try to initial your bram)
//////////////////////////////////////////////////////////////////////////////////
`define DataCacheContentLoadPath "D:\\GithubLocalRepo\\CODLAB\\Lab8\\ustc_ca2020_lab-master\\Lab2\\Simulation\\1testAll.data"
`define InstCacheContentLoadPath "D:\\GithubLocalRepo\\CODLAB\\Lab8\\ustc_ca2020_lab-master\\Lab2\\Simulation\\1testAll.inst"
`define DataCacheContentSavePath "D:\\GithubLocalRepo\\CODLAB\\Lab8\\ustc_ca2020_lab-master\\Lab2\\Simulation\\DataCacheContent.txt"
`define InstCacheContentSavePath "D:\\GithubLocalRepo\\CODLAB\\Lab8\\ustc_ca2020_lab-master\\Lab2\\Simulation\\InstCacheContent.txt"
`define BRAMWORDS 4096  //a word is 32bit, so our bram is 4096*32bit

module testBench(
    );
    //
    reg CPU_CLK;
    reg CPU_RST;
    reg [31:0] CPU_Debug_DataCache_A2;
    reg [31:0] CPU_Debug_DataCache_WD2;
    reg [3:0] CPU_Debug_DataCache_WE2;
    wire [31:0] CPU_Debug_DataCache_RD2;
    reg [31:0] CPU_Debug_InstCache_A2;
    reg [31:0] CPU_Debug_InstCache_WD2;
    reg [3:0] CPU_Debug_InstCache_WE2;
    wire [31:0] CPU_Debug_InstCache_RD2;
    wire [31:0] gp;
    wire [31:0] sp;
    wire [31:0] ra;
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
    //generate clock signal
    always #1 CPU_CLK = ~CPU_CLK;
    // Connect the CPU core
    RV32ICore RV32ICore1(
        .CPU_CLK(CPU_CLK),
        .CPU_RST(CPU_RST),
        .CPU_Debug_DataCache_A2(CPU_Debug_DataCache_A2),
        .CPU_Debug_DataCache_WD2(CPU_Debug_DataCache_WD2),
        .CPU_Debug_DataCache_WE2(CPU_Debug_DataCache_WE2),
        .CPU_Debug_DataCache_RD2(CPU_Debug_DataCache_RD2),
        .CPU_Debug_InstCache_A2(CPU_Debug_InstCache_A2),
        .CPU_Debug_InstCache_WD2(CPU_Debug_InstCache_WD2),
        .CPU_Debug_InstCache_WE2(CPU_Debug_InstCache_WE2),
        .CPU_Debug_InstCache_RD2(CPU_Debug_InstCache_RD2),
        .gp(gp),
        .sp(sp),
        .ra(ra),
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
     .op1_sel(op1_sel),.op2_sel(op2_sel), .reg2_sel(reg2_sel)
        );
    //define file handles
    integer LoadDataCacheFile;
    integer LoadInstCacheFile;
    integer SaveDataCacheFile;
    integer SaveInstCacheFile;
    //
    integer i;
    //
    initial 
    begin
        $display("Initialing reg values..."); 
        CPU_Debug_DataCache_WD2 = 32'b0;
        CPU_Debug_DataCache_WE2 = 4'b0;
        CPU_Debug_InstCache_WD2 = 32'b0;
        CPU_Debug_InstCache_WE2 = 4'b0;
        CPU_Debug_DataCache_A2 = 32'b0;
        CPU_Debug_InstCache_A2 = 32'b0;
        CPU_CLK=1'b0;
        CPU_RST = 1'b0;
        #10
        
        $display("Loading DataCache Content from file..."); 
        LoadDataCacheFile = $fopen(`DataCacheContentLoadPath,"r");
        if(LoadDataCacheFile==0)
            $display("Failed to Open %s, Do Not Load DataCache values from file!",`DataCacheContentLoadPath);
        else    begin  
            CPU_Debug_DataCache_A2 = 32'h0;     
            $fscanf(LoadDataCacheFile,"%h",CPU_Debug_DataCache_WD2);
            if($feof(LoadDataCacheFile))
                CPU_Debug_DataCache_WE2 = 4'b0;
            else
                CPU_Debug_DataCache_WE2 = 4'b1111;
            #10
            for(i=0;i<`BRAMWORDS;i=i+1)
            begin
                if($feof(LoadDataCacheFile))
                    CPU_Debug_DataCache_WE2 = 4'b0;
                else
                    CPU_Debug_DataCache_WE2 = 4'b1111;
                @(negedge CPU_CLK);
                CPU_Debug_DataCache_A2 = CPU_Debug_DataCache_A2+4;
                $fscanf(LoadDataCacheFile,"%h",CPU_Debug_DataCache_WD2);
            end
            $fclose(LoadDataCacheFile);
        end
        
        $display("Loading InstCache Content from file..."); 
        LoadInstCacheFile = $fopen(`InstCacheContentLoadPath,"r");
        if(LoadInstCacheFile==0)
            $display("Failed to Open %s, Do Not Load InstCache values from file!",`InstCacheContentLoadPath);
        else    begin  
            CPU_Debug_InstCache_A2 = 32'h0;     
            $fscanf(LoadInstCacheFile,"%h",CPU_Debug_InstCache_WD2);
            if($feof(LoadInstCacheFile))
                CPU_Debug_InstCache_WE2 = 4'b0;
            else
                CPU_Debug_InstCache_WE2 = 4'b1111;
            #10
            for(i=0;i<`BRAMWORDS;i=i+1)
            begin
                if($feof(LoadInstCacheFile))
                    CPU_Debug_InstCache_WE2 = 4'b0;
                else
                    CPU_Debug_InstCache_WE2 = 4'b1111;
                @(negedge CPU_CLK);
                CPU_Debug_InstCache_A2 = CPU_Debug_InstCache_A2+4;
                $fscanf(LoadInstCacheFile,"%h",CPU_Debug_InstCache_WD2);
            end
            $fclose(LoadInstCacheFile);
        end
        
        $display("Start Instruction Execution!"); 
        #10;   
        CPU_RST = 1'b1;
        #10;   
        CPU_RST = 1'b0;
        #400000 												// waiting for instruction Execution to End
        $display("Finish Instruction Execution!"); 
        
        $display("Saving DataCache Content to file..."); 
        CPU_Debug_DataCache_A2 = 32'hfffffffc;
        #10
        SaveDataCacheFile = $fopen(`DataCacheContentSavePath,"w");
        if(SaveDataCacheFile==0)
            $display("Failed to Open %s, Do Not Save DataCache values to file!",`DataCacheContentSavePath);
        else
        begin
            $fwrite(SaveDataCacheFile,"i\tAddr\tAddr\tData\tData\n");
            #10
            for(i=0;i<`BRAMWORDS;i=i+1)
                begin
                @(posedge CPU_CLK);
                CPU_Debug_DataCache_A2 = CPU_Debug_DataCache_A2+4;
                @(posedge CPU_CLK);
                @(negedge CPU_CLK);
                $fwrite(SaveDataCacheFile,"%4d\t%8h\t%4d\t%8h\t%4d\n",i,CPU_Debug_DataCache_A2,CPU_Debug_DataCache_A2,CPU_Debug_DataCache_RD2,CPU_Debug_DataCache_RD2);
                end
            $fclose(SaveDataCacheFile);
        end
        
        $display("Saving InstCache Content to file..."); 
        SaveInstCacheFile = $fopen(`InstCacheContentSavePath,"w");
        if(SaveInstCacheFile==0)
            $display("Failed to Open %s, Do Not Save InstCache values to file!",`InstCacheContentSavePath);
        else
        begin
            CPU_Debug_InstCache_A2 = 32'hfffffffc;
            #10
            $fwrite(SaveInstCacheFile,"i\tAddr\tAddr\tData\tData\n");
            #10
            for(i=0;i<`BRAMWORDS;i=i+1)
                begin
                @(posedge CPU_CLK);
                CPU_Debug_InstCache_A2 = CPU_Debug_InstCache_A2+4;
                @(posedge CPU_CLK);
                @(negedge CPU_CLK);
                $fwrite(SaveInstCacheFile,"%4d\t%8h\t%4d\t%8h\t%4d\n",i,CPU_Debug_InstCache_A2,CPU_Debug_InstCache_A2,CPU_Debug_InstCache_RD2,CPU_Debug_InstCache_RD2);
                end
            $fclose(SaveInstCacheFile);      
        end      

        $display("Simulation Ended!"); 
        $stop();
    end
    
endmodule
