`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC ESLAB
// Engineer: Huang Yifan (hyf15@mail.ustc.edu.cn)
// 
// Design Name: RV32I Core
// Module Name: Hazard Module
// Tool Versions: Vivado 2017.4.1
// Description: Hazard Module is used to control flush, bubble and bypass
// 
//////////////////////////////////////////////////////////////////////////////////

//  功能说明
    //  识别流水线中的数据冲突，控制数据转发，和flush、bubble信号
// 输入
    // rst               CPU的rst信号
    // reg1_srcD         ID阶段的源reg1地址
    // reg2_srcD         ID阶段的源reg2地址
    // reg1_srcE         EX阶段的源reg1地址
    // reg2_srcE         EX阶段的源reg2地址
    // reg_dstE          EX阶段的目的reg地址
    // reg_dstM          MEM阶段的目的reg地址
    // reg_dstW          WB阶段的目的reg地址
    // br                是否branch
    // jalr              是否jalr
    // jal               是否jal
    // src_reg_en        指令中的源reg1和源reg2地址是否有效
    // wb_select         写回寄存器的值的来源（Cache内容或�?�ALU计算结果�?
    // reg_write_en_MEM  MEM阶段的寄存器写使能信�?
    // reg_write_en_WB   WB阶段的寄存器写使能信�?
    // alu_src1          ALU操作�?1来源�?0表示来自reg1�?1表示来自PC
    // alu_src2          ALU操作�?2来源�?2’b00表示来自reg2�?2'b01表示来自reg2地址�?2'b10表示来自立即�?
// 输出
    // flushF            IF阶段的flush信号
    // bubbleF           IF阶段的bubble信号
    // flushD            ID阶段的flush信号
    // bubbleD           ID阶段的bubble信号
    // flushE            EX阶段的flush信号
    // bubbleE           EX阶段的bubble信号
    // flushM            MEM阶段的flush信号
    // bubbleM           MEM阶段的bubble信号
    // flushW            WB阶段的flush信号
    // bubbleW           WB阶段的bubble信号
    // op1_sel           ALU的操作数1来源�?2'b00表示来自ALU转发数据�?2'b01表示来自write back data转发�?2'b10表示来自PC�?2'b11表示来自reg1
    // op2_sel           ALU的操作数2来源�?2'b00表示来自ALU转发数据�?2'b01表示来自write back data转发�?2'b10表示来自reg2地址�?2'b11表示来自reg2或立即数
    // reg2_sel          reg2的来�?
// 实验要求
    // 补全模块


module HarzardUnit(
    input wire rst,
    input wire [4:0] reg1_srcD, reg2_srcD, reg1_srcE, reg2_srcE, reg_dstE, reg_dstM, reg_dstW,
    input wire br, jalr, jal,
    input wire [1:0] src_reg_en,
    input wire wb_select,
    input wire reg_write_en_MEM,
    input wire reg_write_en_WB,
    input wire alu_src1,
    input wire [1:0] alu_src2,
    output reg flushF, bubbleF, flushD, bubbleD, flushE, bubbleE, flushM, bubbleM, flushW, bubbleW,
    output reg [1:0] op1_sel, op2_sel, reg2_sel
    );

    always@(*) begin
        if(rst == 1) begin
            flushF = 1;
            bubbleF = 0;
            flushD = 1;
            bubbleD = 0;
            flushE = 1;
            bubbleE = 0;
            flushM = 1;
            bubbleM = 0;
            flushW = 1;
            bubbleW = 0;
            op1_sel = 2'b11;
            op2_sel = 2'b11;
            reg2_sel = 2'b10;
        end
        else begin
            flushF=0; 
            bubbleE=0;
            bubbleM=0;
            flushM=0;
            bubbleW=0;
            flushW=0;
            begin
                if(src_reg_en[1]==1 && reg_write_en_MEM!=0 && reg1_srcE==reg_dstM && reg1_srcE!=5'b0)  
                    op1_sel = (alu_src1 == 0)? 2'b00 : 2'b10;
                else if(src_reg_en[1]==1 && reg_write_en_WB!=0 && reg1_srcE==reg_dstW && reg1_srcE!=5'b0) 
                    op1_sel = (alu_src1 == 0)? 2'b01 : 2'b10;
                else op1_sel = (alu_src1 == 0)? 2'b11 : 2'b10;
            end
            begin
                if(src_reg_en[0]==1 && reg_write_en_MEM!=0 && reg2_srcE==reg_dstM && reg2_srcE!=5'b0)  begin
                    case (alu_src2)
                        2'b00: op2_sel = 2'b00;
                        2'b01: op2_sel = 2'b10;
                        2'b10: op2_sel = 2'b11;
                        default: op2_sel = 2'b11;
                    endcase
                end
                else if(src_reg_en[0]==1 && reg_write_en_WB!=0 && reg2_srcE==reg_dstW && reg2_srcE!=5'b0) begin
                    case (alu_src2)
                        2'b00: op2_sel = 2'b01;
                        2'b01: op2_sel = 2'b10;
                        2'b10: op2_sel = 2'b11;
                        default: op2_sel = 2'b11;
                    endcase
                end
                else begin
                    case (alu_src2)
                        2'b00: op2_sel = 2'b11;
                        2'b01: op2_sel = 2'b10;
                        2'b10: op2_sel = 2'b11;
                        default: op2_sel = 2'b11;
                    endcase
                end
            end
            begin
                if(src_reg_en[0]==1 && reg_write_en_MEM!=0 && reg2_srcE==reg_dstM && reg2_srcE!=5'b0)  begin
                    reg2_sel = 2'b00;
                end
                else if(src_reg_en[0]==1 && reg_write_en_WB!=0 && reg2_srcE==reg_dstW && reg2_srcE!=5'b0) begin
                    reg2_sel = 2'b01;
                end
                else begin
                    reg2_sel = 2'b10;
                end
            end
            begin
                if(jalr==1 || br==1) begin //jalr,br到达E时，要优先于jal处理, 因为考虑jalrE, jalD连续的情�?
                    flushD=1;               //下一周期F段加载新指令，F不需要动，DE清空
                    flushE=1;
                    bubbleD=0;
                    bubbleF=0;
                end
                else if(jal==1) begin
                    flushD=1;               //下一周期F段加载新指令，F不需要动，D清空
                    flushE=0;
                    bubbleD=0;
                    bubbleF=0;
                end
                else if(wb_select==1 && (reg1_srcD == reg_dstE || reg2_srcD == reg_dstE)) begin //LW应放在JAL之后处理，因为信号�?�互相覆盖的情况只有LWE，JALD的情况，但是JALD不会和LWE有任何的冲突，所以JALD相当于天然的bubble，此时不�?要对LWE STALL
                    flushE=1;               //下一周期F段加载新指令，DF stall�?个周期，E清空，防止读入D
                    flushD=0;
                    bubbleD=1;
                    bubbleF=1;
                end
                else begin   
                    flushD=0;
                    flushE=0;
                    bubbleD=0;
                    bubbleF=0;
                end
                
            end
        end
    end

endmodule