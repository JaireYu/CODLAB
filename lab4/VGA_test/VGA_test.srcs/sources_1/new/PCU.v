`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/20 20:50:13
// Design Name: 
// Module Name: PCU
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


module PCU(
    input clk, 
    input rst,
    input [15:0]vaddr,
    input [11:0]rgb,
    input [3:0]dir,
    input draw,
    output reg [7:0]x0,
    output reg [7:0]y0,
    output [11:0] vdata
    );
    wire [15:0]paddr;
    wire [11:0]pdata;
    wire we;
    reg [7:0]timecnt;
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            x0 <= 8'b1000_0000;
        end
        else begin
            if(timecnt == 8'b00000010 || timecnt >= 8'b00001001)
            case(dir)
                4'b0010: x0 <= x0 + 8'b0000_0001; //right
                4'b1000: x0 <= x0 - 8'b0000_0001; //left
                4'b0011: begin x0 <= x0 + 8'b0000_0001; end
                4'b1100: begin x0 <= x0 - 8'b0000_0001; end
                4'b0110: begin x0 <= x0 + 8'b0000_0001; end
                4'b1001: begin x0 <= x0 - 8'b0000_0001; end
                default: x0 <= x0;
            endcase
            else
            x0 <= x0;
        end
    end
    
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            y0 <= 8'b1000_0000;
        end
        else begin
            if(timecnt == 8'b00000010 || timecnt >= 8'b00001001)
            case(dir)
                4'b0001: y0 <= y0 + 8'b0000_0001; //up 
                4'b0100: y0 <= y0 - 8'b0000_0001; //down
                4'b0011: begin y0 <= y0 + 8'b0000_0001; end
                4'b1100: begin y0 <= y0 - 8'b0000_0001; end
                4'b0110: begin y0 <= y0 - 8'b0000_0001; end
                4'b1001: begin y0 <= y0 + 8'b0000_0001; end
                default: y0 <= y0;
            endcase
            else
            y0 <= y0;
        end
    end
    
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            timecnt <= 8'b00000000;
        end
        else begin
            if(dir == 4'b0000)
                timecnt <= 8'b00000000;
            else
                timecnt <= timecnt + 8'b00000001;
        end
    end
    
    assign pdata = rgb;
    assign we = draw;
    assign paddr[15:8] = y0;
    assign paddr[7:0] = x0;
    
    dist_mem_gen_0   your_instance_name (
    .a(paddr),        	// input wire [14 : 0] a
    .d(pdata),        	// input wire [11 : 0] d
    .dpra(vaddr),  	// input wire [14 : 0] dpra
    .clk(clk),    	// input wire clk
    .we(we),      	// input wire we
    .dpo(vdata)    	// output wire [11 : 0] dpo
    );
endmodule
