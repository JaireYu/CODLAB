`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/20 22:15:18
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
    input rst,
    input [3:0]dir,
    input draw,
    input [11:0]data,
    output [11:0]vrgb,
    output hs,
    output vs
    );
    wire [11:0]rgb;
    wire [7:0]x0;
    wire [7:0]y0;
    wire [15:0]addr;
    wire clk_50M;
    clk_wiz_0 clk50M(clk_50M, clk);
    reg [27:0]cnt;
    reg clk_10HZ;
    always@(posedge clk_50M) begin
        if(rst) begin
            cnt <= 0;
        end
        else if(cnt == 28'd10000000) begin
            cnt <= 0;
        end
        else begin
            cnt <= cnt + 1;
        end
    end
    always@(posedge clk_50M) begin
        if(rst) begin
            clk_10HZ <= 0;
        end
        else if(cnt < 28'd5000000)
        begin
            clk_10HZ <= 1;
        end
        else
            clk_10HZ <= 0;
    end
    PCU pcu(
    .clk(clk_10HZ), 
    .rst(rst),
    .vaddr(addr),
    .rgb(data),
    .dir(dir),
    .draw(draw),
    .x0(x0),
    .y0(y0),
    .vdata(rgb)
    );
    VGA vga(
    .x0(x0),
    .y0(y0),
    .data(rgb),
    .clk(clk_50M),           // base clock
    .rst(rst),           // reset: restarts frame
    .hs(hs),           // horizontal sync
    .vs(vs),           // vertical sync
    .vrgb(vrgb),
    .addr(addr) 
    );
endmodule
