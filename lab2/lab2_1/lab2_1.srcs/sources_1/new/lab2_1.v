`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 10:21:34
// Design Name: 
// Module Name: lab2_1
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


module lab2_1(
    input [3:0]x0,
    input [3:0]x1,
    input [3:0]x2,
    input [3:0]x3,
    input rst,
    input clk,
    output reg [3:0]s0,
    output reg [3:0]s1,
    output reg [3:0]s2,
    output reg [3:0]s3,
    output done
    );
    wire cf;
    reg [2:0]state;
    reg [2:0]nextstate;
    cmp CMP(s0,s1,s2,s3,state,cf);
    parameter p0 = 3'b000, p1 = 3'b001, p2 = 3'b010, p3 = 3'b011, p4 = 3'b100, p5 = 3'b101, p6 = 3'b110, p7 = 3'b111;
    assign done = (state == p7)?1:0;
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
             state <= p0;
        end
        else 
             state <= nextstate;
    end
    always@(*)
    begin
        case(state)
            p0: nextstate = p1;
            p1: nextstate = p2;
            p2: nextstate = p3;
            p3: nextstate = p4;
            p4: nextstate = p5;
            p5: nextstate = p6;
            p6: nextstate = p7;
            p7: nextstate = p7;
        endcase
    end
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin s0<=x0; s1<=x1; s2<=x2; s3<=x3; end
        else
        case(nextstate)
        p0: begin s0<=x0; s1<=x1; s2<=x2; s3<=x3; end
        p1: if(cf == 1) begin s0<=s1; s1<= s0; end
        p2: if(cf == 1) begin s2<=s1; s1<= s2; end
        p3: if(cf == 1) begin s2<=s3; s3<= s2; end
        p4: if(cf == 1) begin s0<=s1; s1<= s0; end
        p5: if(cf == 1) begin s2<=s1; s1<= s2; end
        p6: if(cf == 1) begin s0<=s1; s1<= s0; end
        p7: begin ; end
        endcase
    end
endmodule

module cmp(
    input [3:0]s0,
    input [3:0]s1,
    input [3:0]s2,
    input [3:0]s3,
    input [2:0]state,
    output cf
);
    reg [3:0]temp1;
    reg [3:0]temp2;
    wire [3:0]f;
    wire [3:0]temp;
    assign cf = f[2];
    alu #(4) ALU(temp1, temp2, 3'b001, temp, f);
    always@(state)
    begin
        case(state)
            3'b000: begin temp2 = s0;temp1 = s1; end
            3'b001: begin temp2 = s1;temp1 = s2; end
            3'b010: begin temp2 = s2;temp1 = s3; end
            3'b011: begin temp2 = s0;temp1 = s1; end
            3'b100: begin temp2 = s1;temp1 = s2; end
            3'b101: begin temp2 = s0;temp1 = s1; end
        endcase
    end
endmodule