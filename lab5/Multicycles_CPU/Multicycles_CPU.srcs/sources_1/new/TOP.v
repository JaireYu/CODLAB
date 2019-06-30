`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/12 13:47:49
// Design Name: 
// Module Name: TOP
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


module TOP(
    input clk,
    input PCrst,
    input RFrst,
    input OutputsCtrlrst,
    input DDUrst,
    input cont,
    input step,
    input MemorRF,
    input inc,
    input dec,
    output [15:0]led,
    output [7:0]an,
    output [6:0]seg,
    output wire hs,           // horizontal sync
    output wire vs,           // vertical sync
    output wire [11:0] vrgb
    );
    wire run;
    wire rst;
    wire [7:0]addr;
    wire [7:0]VGAaddr;
    wire clk_5MHZ;
    wire [7:0]PC;
    wire [31:0]Memdata;
    wire [31:0]RFdata;
    clk_wiz_0 (
    .clk_out1(clk_5MHZ),
    .clk_in1(clk)
    );

    DDU ddu(
    .clk(clk_5MHZ),
    .rst(DDUrst),
    .cont(cont),
    .step(step),
    .Mem_or_RF(MemorRF),
    .inc(inc),
    .dec(dec),
    .PC(PC),
    .RFdata(RFdata),
    .run(run),
    .led(led),
    .seg(seg),
    .an(an),
    .addr(addr)
    );
    Multicycles_CPU MCPU(
    .clk(clk_5MHZ),
    .PCrst(PCrst),
    .OutputsCtrlrst(OutputsCtrlrst),
    .RFrst(RFrst),
    .run(run),
    .addr(addr),
    .VGAaddr(VGAaddr),
    .Debug_Memdata(Memdata),
    .Debug_RFdata(RFdata),
    .Debug_PC(PC)
    );
    VGA vga(
    .clk(clk_5MHZ),
    .data(Memdata),
    .addr(VGAaddr),
    .vrgb(vrgb),
    .rst(rst),
    .hs(hs),
    .vs(vs)
    );
endmodule
