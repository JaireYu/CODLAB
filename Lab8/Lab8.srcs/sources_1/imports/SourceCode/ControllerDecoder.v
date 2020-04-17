`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC ESLAB
// Engineer: Huang Yifan (hyf15@mail.ustc.edu.cn)
// 
// Design Name: RV32I Core
// Module Name: Controller Decoder
// Tool Versions: Vivado 2017.4.1
// Description: Controller Decoder Module
// 
//////////////////////////////////////////////////////////////////////////////////

//  功能说明
    //  对指令进行译码，将其翻译成控制信号，传输给各个部�?
// 输入
    // Inst              待译码指�?
// 输出
    // jal               jal跳转指令
    // jalr              jalr跳转指令
    // op2_src           ALU的第二个操作数来源�?�为1时，op2选择imm，为0时，op2选择reg2
    // ALU_func          ALU执行的运算类�?
    // br_type           branch的判断条件，可以是不进行branch
    // load_npc          写回寄存器的值的来源（PC或�?�ALU计算结果�?, load_npc == 1时�?�择PC
    // wb_select         写回寄存器的值的来源（Cache内容或�?�ALU计算结果），wb_select == 1时�?�择cache内容
    // load_type         load类型
    // src_reg_en        指令中src reg的地�?是否有效，src_reg_en[1] == 1表示reg1被使用到了，src_reg_en[0]==1表示reg2被使用到�?
    // reg_write_en      通用寄存器写使能，reg_write_en == 1表示�?要写回reg
    // cache_write_en    按字节写入data cache
    // imm_type          指令中立即数类型
    // alu_src1          alu操作�?1来源，alu_src1 == 0表示来自reg1，alu_src1 == 1表示来自PC
    // alu_src2          alu操作�?2来源，alu_src2 == 2’b00表示来自reg2，alu_src2 == 2'b01表示来自reg2地址，alu_src2 == 2'b10表示来自立即�?
// 实验要求
    // 补全模块


`include "Parameters.v"   
module ControllerDecoder(
    input wire [31:0] inst,
    output reg jal,
    output reg jalr,
    output reg op2_src,
    output reg [3:0] ALU_func,
    output reg [2:0] br_type,
    output reg load_npc,
    output reg wb_select,
    output reg [2:0] load_type,
    output reg [1:0] src_reg_en,
    output reg reg_write_en,
    output reg [3:0] cache_write_en,
    output reg alu_src1,
    output reg [1:0] alu_src2,
    output reg [2:0] imm_type
    );
    always@(*) begin
      case(inst[6:0])
        7'b0110011: begin //R-type
            jal = 0;
            jalr = 0;
            op2_src = 0;
            br_type = `NOBRANCH;
            load_npc = 0;
            wb_select = 0;
            load_type = `LW;
            src_reg_en = 2'b11;
            reg_write_en = 1;
            cache_write_en = 4'b0000;
            alu_src1 = 0;
            alu_src2 = 2'b00;
            imm_type = `RTYPE;
            case (inst[14:12])
                3'b000: begin
                    case(inst[31:25])
                        7'b0000000: ALU_func = `ADD;
                        7'b0100000: ALU_func = `SUB;
                        default: ALU_func = `ADD;
                    endcase
                end 
                3'b001: begin
                    ALU_func = `SLL;
                end
                3'b010: begin
                    ALU_func = `SLT;
                end
                3'b011: begin
                    ALU_func = `SLTU;
                end
                3'b100: begin
                    ALU_func = `XOR;
                end
                3'b101: begin
                    case(inst[31:25])
                        7'b0000000: ALU_func = `SRL;
                        7'b0100000: ALU_func = `SRA;
                        default: ALU_func = `SRL;
                    endcase
                end
                3'b110: begin
                    ALU_func = `OR;
                end
                3'b111: begin
                    ALU_func = `AND;
                end
                default: begin
                    ALU_func = `AND;
                end
            endcase
        end
        7'b0010011: begin //I-type
            jal = 0;
            jalr = 0;
            op2_src = 1;
            br_type = `NOBRANCH;
            load_npc = 0;
            wb_select = 0;
            load_type = `LW;
            src_reg_en = 2'b10;
            reg_write_en = 1;
            cache_write_en = 4'b0000;
            alu_src1 = 0;
            imm_type = `ITYPE;
            case (inst[14:12])
                3'b001: begin
                    ALU_func = `SLL;
                    alu_src2 = 2'b01;
                end 
                3'b101: begin
                    case (inst[31:25])
                        7'b0000000: begin
                            ALU_func = `SRL;
                            alu_src2 = 2'b01;
                        end
                        7'b0100000: begin
                            ALU_func = `SRA;
                            alu_src2 = 2'b01;
                        end
                        default: begin 
                            ALU_func = `SRL;
                            alu_src2 = 2'b01;
                        end
                    endcase
                end
                3'b010: begin
                    ALU_func = `SLT;
                    alu_src2 = 2'b10;
                end
                3'b011: begin
                    ALU_func = `SLTU;
                    alu_src2 = 2'b10;
                end
                3'b100: begin
                    ALU_func = `XOR;
                    alu_src2 = 2'b10;
                end
                3'b110: begin
                    ALU_func = `OR;
                    alu_src2 = 2'b10;
                end
                3'b111: begin
                    ALU_func = `AND;
                    alu_src2 = 2'b10;
                end
                default: begin
                    ALU_func = `ADD; //随意
                    alu_src2 = 2'b10;
                end
            endcase
        end
        7'b1100111: begin //JALR
            jal = 0;
            jalr = 1;
            op2_src = 1;
            br_type = `NOBRANCH;
            load_npc = 1;
            wb_select = 0;
            load_type = `LW;
            src_reg_en = 2'b10;
            reg_write_en = 1;
            cache_write_en = 4'b0000;
            alu_src1 = 0;
            alu_src2 = 2'b10;
            imm_type = `ITYPE;
            ALU_func = `ADD;
        end
        7'b0100011: begin //Store
            jal = 0;
            jalr = 0;
            op2_src = 1;
            br_type = `NOBRANCH;
            load_npc = 0;
            wb_select = 1; //随意
            load_type = `NOREGWRITE;
            src_reg_en = 2'b11;
            reg_write_en = 0;
            alu_src1 = 0;
            alu_src2 = 2'b10;
            imm_type = `STYPE;
            ALU_func = `ADD;
            case (inst[14:12])
                3'b000: cache_write_en = 4'b0001;
                3'b001: cache_write_en = 4'b0011;
                3'b010: cache_write_en = 4'b1111;
                default: cache_write_en = 4'b0000;
            endcase
        end
        7'b1100011: begin //Branch
            jal = 0;
            jalr = 0;
            op2_src = 1;   //随便
            load_npc = 0;  //随便
            wb_select = 0; //随便�?
            load_type = `NOREGWRITE;
            src_reg_en = 2'b11;
            reg_write_en = 0;
            cache_write_en = 4'b0000;
            alu_src1 = 0;  //随便
            alu_src2 = 2'b00;  //随便
            imm_type = `BTYPE;   
            ALU_func = `ADD;   //随便
            case(inst[14:12])
                3'b000: br_type = `BEQ;
                3'b001: br_type = `BNE;
                3'b100: br_type = `BLT;
                3'b101: br_type = `BGE;
                3'b110: br_type = `BLTU;
                3'b111: br_type = `BGEU;
                default: br_type = 3'b000;
            endcase
        end
        7'b0110111: begin //LUI
            jal = 0;
            jalr = 0;
            op2_src = 1;
            br_type = `NOBRANCH;
            load_npc = 0;  
            wb_select = 0;
            load_type = `LW;
            src_reg_en = 2'b00;
            reg_write_en = 1;
            cache_write_en = 4'b0000;
            alu_src1 = 0;  //随意
            alu_src2 = 2'b10;
            imm_type = `UTYPE;
            ALU_func = `LUI;
        end
        7'b0010111: begin //AUIPC
            jal = 0;
            jalr = 0;
            op2_src = 1;
            br_type = `NOBRANCH;
            load_npc = 0;
            wb_select = 0;
            load_type = `LW;
            src_reg_en = 2'b00;
            reg_write_en = 1;
            cache_write_en = 4'b0000;
            alu_src1 = 1;
            alu_src2 = 2'b10;
            imm_type = `UTYPE;
            ALU_func = `ADD;
        end
        7'b1101111: begin //JAL
            jal = 1;
            jalr = 0;
            op2_src = 1;   //随意
            br_type = `NOBRANCH;
            load_npc = 1;
            wb_select = 0;
            load_type = `LW;
            src_reg_en = 2'b00;
            reg_write_en = 1;
            cache_write_en = 4'b0000;
            alu_src1 = 0;  //随意
            alu_src2 = 2'b10;  //随意
            imm_type = `JTYPE;
            ALU_func = `ADD;
        end
        7'b0000011: begin //load
            jal = 0;
            jalr = 0;
            op2_src = 1;
            br_type = `NOBRANCH;
            load_npc = 0;
            wb_select = 1;
            src_reg_en = 2'b10;
            reg_write_en = 1;
            cache_write_en = 4'b0000;
            alu_src1 = 0;
            alu_src2 = 2'b10;
            imm_type = `ITYPE;
            ALU_func = `ADD;
            case (inst[14:12])
                3'b000: load_type = `LB;
                3'b001: load_type = `LH;
                3'b010: load_type = `LW;
                3'b100: load_type = `LBU;
                3'b101: load_type = `LHU;  
                default: load_type = `LB;
            endcase
        end
        default: begin
            jal = 0;
            jalr = 0;
            op2_src = 0;   //随意
            br_type = `NOBRANCH;
            load_npc = 0;
            wb_select = 0;
            load_type = `NOREGWRITE;
            src_reg_en = 2'b00;
            reg_write_en = 0;
            cache_write_en = 4'b0000;
            alu_src1 = 0;  //随意
            alu_src2 = 2'b00;  //随意
            imm_type = `ITYPE;
            ALU_func = `ADD;
        end
      endcase
    end
    

endmodule
