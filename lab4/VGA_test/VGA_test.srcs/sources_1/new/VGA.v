`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/17 19:21:33
// Design Name: 
// Module Name: VGA
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

module VGA(
    input wire [7:0] x0,
    input wire [7:0] y0,
    input wire [11:0] data,
    input wire clk,           // base clock
    input wire rst,           // reset: restarts frame
    output wire hs,           // horizontal sync
    output wire vs,           // vertical sync
    output wire [11:0] vrgb,
    output wire [15:0] addr 
    );
    wire [9:0] o_x;
    wire [9:0] o_y;
    // VGA timings https://timetoexplore.net/blog/video-timings-vga-720p-1080p
    parameter HS_STA = 56;              // horizontal sync start
    parameter HS_END = 56 + 120;         // horizontal sync end
    parameter HA_STA = 56 + 120 + 64;    // horizontal active pixel start
    parameter VS_STA = 37;        // vertical sync start
    parameter VS_END = 37 + 6;    // vertical sync end
    parameter VA_STA = 37 + 6 + 23;             // vertical active pixel end
    parameter LINE   = 1040;             // complete line (pixels)
    parameter SCREEN = 666;             // complete screen (lines)

    reg [10:0] h_count;  // line position
    reg [10:0] v_count;  // screen position

    // generate sync signals (active low for 640x480)
    assign hs = ~((h_count >= HS_STA) & (h_count < HS_END));
    assign vs = ~((v_count >= VS_STA) & (v_count < VS_END));

    // keep x and y bound within the active pixels
    assign o_x = (h_count < HA_STA) ? 0 : (h_count - HA_STA);
    assign o_y = (v_count < VA_STA) ? 0 : (v_count - VA_STA);
    
    setRGB rgbset(
    .x(o_x),
    .y(o_y),
    .x0(x0),
    .y0(y0),
    .data(data),
    .vrgb(vrgb),
    .x255(addr[7:0]),
    .y255(addr[15:8])
    );
    always @ (posedge clk)
    begin
        if (rst)  // reset to start of frame
        begin
            h_count <= 0;
        end
        else
        begin
            if (h_count == LINE)  // end of line
            begin
                h_count <= 0;
            end
            else 
                h_count <= h_count + 1;
        end
    end
    always @ (posedge clk)
    begin
        if (rst)  // reset to start of frame
        begin
            v_count <= 0;
        end
        else  if (h_count == LINE) 
        begin
             if (v_count == SCREEN) // end of line
                 v_count <= 0;
             else
                 v_count <= v_count + 1;
        end
    end
endmodule

module setRGB(
    input [9:0]x,
    input [9:0]y,
    input [7:0]x0,
    input [7:0]y0,
    input [11:0]data,
    output reg [11:0]vrgb,
    output [7:0]x255,
    output [7:0]y255
);
    wire [1:0] hpx;
    wire [1:0] hpy;
    wire indisplay;
    assign indisplay = (x >= 272 && x < 528 && y >= 172 && y < 428);
    assign {hpx, x255} = (indisplay)? x - 272 : 0;
    assign {hpy, y255} = (indisplay)? y - 172 : 0;
    always@(*) begin
        if(indisplay) begin
            if(((x0 == x255)||(y0 == y255))&&(x0 - 3 < x255)&&(x255 < x0 + 3)&&(y0 - 3 < y255)&&(y255 < y0 + 3))
                vrgb = 12'b0000_0000_0000; 
            else 
                vrgb = data;
        end
        else
            vrgb = 12'b0000_0000_0000;
    end
endmodule