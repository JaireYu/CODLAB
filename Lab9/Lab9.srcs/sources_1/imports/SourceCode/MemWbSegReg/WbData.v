`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC ESLAB
// Engineer: Huang Yifan (hyf15@mail.ustc.edu.cn)
// 
// Design Name: RV32I Core
// Module Name: Write-back Data seg reg
// Tool Versions: Vivado 2017.4.1
// Description: Write-back data seg reg for MEM\WB
// 
//////////////////////////////////////////////////////////////////////////////////


//  功能说明
    // MEM\WB的写回寄存器内容
    // 为了数据同步，Data Extension和Data Cache集成在其�?
// 输入
    // clk               时钟信号
    // wb_select         选择写回寄存器的数据：如果为0，写回ALU计算结果，如果为1，写回Memory读取的内�?
    // load_type         load指令类型
    // write_en          Data Cache写使�?
    // debug_write_en    Data Cache debug写使�?
    // addr              Data Cache的写地址，也是ALU的计算结�?
    // debug_addr        Data Cache的debug写地�?
    // in_data           Data Cache的写入数�?
    // debug_in_data     Data Cache的debug写入数据
    // bubbleW           WB阶段的bubble信号
    // flushW            WB阶段的flush信号
// 输出
    // debug_out_data    Data Cache的debug读出数据
    // data_WB           传给下一流水段的写回寄存器内�?
// 实验要求  
    // 无需修改

//module WB_Data_WB(
//    input wire clk, bubbleW, flushW, rst,
//    input wire wb_select,
//    input wire [2:0] load_type,
//    input  [3:0] write_en,
//    input  [31:0] addr,
//    input  [31:0] in_data,
//    output wire [31:0] data_WB,
//    output wire miss,
//    output wire [31:0] miss_cnt,
//    output wire [31:0] req_cnt
//    );
    
//    wire [31:0] data_raw;
//    wire [31:0] data_WB_raw;
//    cache1 cache(
//    .clk(clk), .rst(rst),
//    .miss(miss),               // 对CPU发出的miss信号
//    .addr(addr),        // 读写请求地址
//    .rd_req(wb_select),             // 读请求信�?????
//    .rd_data(data_WB), // 读出的数据，�?????次读�?????个word
//    .wr_req(|write_en),             // 写请求信�?????
//    .wr_data(in_data)      // 要写入的数据，一次写�?????个word
//   // .miss_cnt(miss_cnt),
//    //.req_cnt(req_cnt)
//);









//    // Add flush and bubble support
//    // if chip not enabled, output output last read result
//    // else if chip clear, output 0
//    // else output values from cache

//    reg bubble_ff = 1'b0;
//    reg flush_ff = 1'b0;
//    reg wb_select_old = 0;
//    reg [31:0] data_WB_old = 32'b0;
//    reg [31:0] addr_old;
//    reg [2:0] load_type_old;

//    DataExtend DataExtend1(
//        .data(data_raw),
//        .addr(addr_old[1:0]),
//        .load_type(load_type_old),
//        .dealt_data(data_WB_raw)
//    );

//    always@(posedge clk)
//    begin
//        bubble_ff <= bubbleW;
//        flush_ff <= flushW;
//        data_WB_old <= data_WB;
//        addr_old <= addr;
//        wb_select_old <= wb_select;
//        load_type_old <= load_type;
//    end

//    assign data_WB = bubble_ff ? data_WB_old :
//                                 (flush_ff ? 32'b0 : 
//                                             (wb_select_old ? data_WB_raw :
//                                                          addr_old));





`timescale 1ns / 1ps
// ������cache֮���wb_data�μĴ���

module WB_Data_WB(
    input wire clk, rst, bubbleW, flushW,
    input wire wb_select,
    input wire [2:0] load_type,
    input wire [3:0] cache_write_en,
    input  [31:0] addr,
    input  [31:0] in_data,
    output wire miss,
    output wire [31:0] data_WB,
    output wire [31:0] miss_cnt,
    output wire [31:0] req_cnt,
    output     wire [31:0] data_raw,
    output wire cache_rd_req,
    output wire cache_wr_req

    );


    // ֻ��LW��SW�洢����ص�ָ��
    assign cache_rd_req = (load_type == `LW && wb_select == 1)? 1'b1 : 1'b0;
    assign cache_wr_req = (cache_write_en == 4'b1111)? 1'b1 : 1'b0;

    cache DataCache1 (
        .clk(clk),
        .rst(rst),
        .miss(miss),
        .addr(addr),
        .rd_req(cache_rd_req),
        .rd_data(data_raw),
        .wr_req(cache_wr_req),
        .wr_data(in_data),
        .miss_cnt(miss_cnt),
        .req_cnt(req_cnt)
    );

    reg bubble_ff = 1'b0;
    reg flush_ff = 1'b0;
    reg wb_select_old = 0;
    reg [31:0] addr_old = 0;
    reg [31:0] data_WB_old = 32'b0;

    // DataExtend DataExtend1(
    //     .data(data_raw),
    //     .addr(addr_old[1:0]),
    //     .load_type(load_type_old),
    //     .dealt_data(data_WB_raw)
    // );

    always@(posedge clk)
    begin
        if (~bubble_ff) begin
            data_WB_old <= data_WB;
            wb_select_old <= wb_select;
            addr_old <= addr;
        end
        bubble_ff <= bubbleW;
        flush_ff <= flushW;
    end

    assign data_WB = bubble_ff ? data_WB_old :
                                 (flush_ff ? 32'b0 : 
                                             (wb_select_old ? data_raw :
                                                          addr_old));

    
endmodule
    
//endmodule