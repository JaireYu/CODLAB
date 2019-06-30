`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/17 21:37:28
// Design Name: 
// Module Name: lab4
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


module lab4(
    input [11:0] rgb,
    input draw,
    input [3:0] dir,
    input clk,
    input rst_n,
    output [11:0] vrgb,
    output hs,
    output vs
    );
    wire [15:0] paddr;
    wire [11:0] pdata;
    wire [15:0] vaddr;
    wire [15:0] vdata;
    wire we;
    wire [7:0] x;
    wire [7:0] y;
    wire clk_vga;reg clk_n;
    reg [27:0] count;reg clock;
    clk_wiz_0 ist2(clk_vga,clk);
    always @(posedge clk_vga or posedge rst_n)
    begin
        if(rst_n)
        begin
            count<=0;
        end
        else if(count==28'd10000000)
        begin
            count<=0;
        end
        else
        begin
            count<=count+1;
        end
    end
/*    always @(posedge clk_vga or posedge rst_n)
    begin
        if(rst_n)
        begin
            clock<=0;
        end
        else if(count>28'd25000000)
        begin
            clock<=1;
        end
        else
        begin
            clock<=0;
        end
    end*/
    always @(posedge clk_vga or posedge rst_n)
    begin
        if(rst_n)
        begin
            clk_n<=0;
        end
        else if(count<28'd5000000)
        begin
            clk_n<=1;
        end
        else if(count>=28'd5000000)
        begin
            clk_n<=0;
        end
    end
    PCU(rgb,dir,draw,clk_n,rst_n,paddr,pdata,we,x,y);
    dist_mem_gen_0 ist(.a(paddr),.d(pdata),.dpra(vaddr),.we(we),.clk(clk_n),.dpo(vdata));
    DCU(x,y,vdata,clk_vga,rst_n,vrgb,hs,vaddr,vs);
endmodule
