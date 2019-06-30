`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/26 22:37:06
// Design Name: 
// Module Name: lab2_2
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


module lab2_2(
    input [3:0]x,
    input [3:0]y,
    input rst,
    input clk,
    output wire [3:0]q,
    output wire [3:0]r,
    output  error,
    output  done
    );
    parameter p0 = 4'b0000; 
    parameter p1 = 4'b0001;
    parameter p2 = 4'b0010;
    parameter p3 = 4'b0011, p4 = 4'b0100, p5 = 4'b0101, p6 = 4'b0110, p7 = 4'b0111, p8 = 4'b1000, p9 = 4'b1001;
    wire [2:0]f;
    wire [7:0]Minused;
    wire [8:0]result;
    reg [7:0]temp_x;
    wire [7:0]temp_y;
    reg [3:0]state;
    reg [3:0]nextstate;
    reg [2:0]cnt;
    alu #(8) ALU(temp_x, temp_y, 3'b001, Minused, f);
    assign q = temp_x[3:0];
    assign r = temp_x[7:4];
    assign error = (y == 4'b00_00)?1:0;
    assign done = (state == p9)?1:0;
    assign temp_y = {y, 4'b0000};
    assign result = Minused + 8'b0000_0001;
    always@(posedge clk or posedge rst)
    begin
    if(rst)
        state <= p0;
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
        p7: nextstate = p8;
        p8: nextstate = p9;
        p9: nextstate = p9;
        default: nextstate = p0;
    endcase
    end
    always@(posedge clk or posedge rst)
    begin
    if(rst)
    begin temp_x <= {4'b0000, x}; end
    else
    begin
    case(state)
        p0: temp_x <= {4'b0000, x};
        p1: temp_x <= {temp_x[6:0], 1'b0};
        p2: begin
            if(f[2] == 0)
            temp_x <= result;
            else
            temp_x <= temp_x;
            end
        p3: temp_x <= {temp_x[6:0], 1'b0};
        p4: begin
            if(f[2] == 0)
            temp_x <= result;
            else
            temp_x <= temp_x;
            end
        p5: temp_x <= {temp_x[6:0], 1'b0};
        p6: begin
            if(f[2] == 0)
            temp_x <= result;
            else
            temp_x <= temp_x;
            end
        p7: temp_x <= {temp_x[6:0], 1'b0};
        p8: begin
            if(f[2] == 0)
            temp_x <= result;
            else
            temp_x <= temp_x;
            end
        p9: ;
    endcase
    end 
    end                                                          
endmodule