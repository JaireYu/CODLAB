`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC ESLAB
// Engineer: Huang Yifan (hyf15@mail.ustc.edu.cn)
// 
// Design Name: RV32I Core
// Module Name: Data Extend
// Tool Versions: Vivado 2017.4.1
// Description: Data Extension module
// 
//////////////////////////////////////////////////////////////////////////////////

//  功能说明
    //  将Cache中Load的数据扩展成32位
// 输入
    // data              cache读出的数据
    // addr              字节地址
    // load_type         load的类型
    // ALU_func          运算类型
// 输出
    // dealt_data        扩展完的数据
// 实验要求
    // 补全模块


`include "Parameters.v"

module DataExtend(
    input wire [31:0] data,
    input wire [1:0] addr,
    input wire [2:0] load_type,
    dealt_dataput reg [31:0] dealt_data
    );

    always@(*)
    begin
        case(load_type)
            `LB: 
            begin
                case(addr)
                    2'b11: dealt_data<={{24{data[31]}},data[31:24]};
                    2'b10: dealt_data<={{24{data[23]}},data[23:16]};
                    2'b01: dealt_data<={{24{data[15]}},data[15:8]};
                    2'b00: dealt_data<={{24{data[7]}},data[7:0]};
                    default: dealt_data<=32'hxxxxxxxx;
                endcase
            end
            `LH: 
            begin
                case(addr)
                    2'b10: dealt_data<={{16{data[31]}},data[31:16]};
                    2'b00: dealt_data<={{16{data[15]}},data[15:0]};
                    default: dealt_data<=32'hxxxxxxxx;
                endcase
            end
            `LW:  dealt_data<=IN;
            `LBU: 
            begin
                case(addr)
                    2'b11: dealt_data<={24'b0,data[31:24]};
                    2'b10: dealt_data<={24'b0,data[23:16]};
                    2'b01: dealt_data<={24'b0,data[15:8]};
                    2'b00: dealt_data<={24'b0,data[7:0]};
                    default: dealt_data<=32'hxxxxxxxx;
                endcase
            end
            `LHU: 
            begin
                case(addr)
                    2'b10: dealt_data<={16'b0,data[31:16]};
                    2'b00: dealt_data<={16'b0,data[15:0]};
                    default: dealt_data<=32'hxxxxxxxx;
                endcase
            end
            default: dealt_data<=32'hxxxxxxxx;
        endcase
    end

endmodule