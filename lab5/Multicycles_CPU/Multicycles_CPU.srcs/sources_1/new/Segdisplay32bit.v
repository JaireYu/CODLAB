`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/12 13:48:54
// Design Name: 
// Module Name: Segdisplay32bit
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


module Segdisplay32bit(
    input [31:0]number32bit,
    input clk_5MHZ,                //5MHZ
    output reg [7:0]an,
    output [6:0]seg
);
    reg [3:0]codetemp;
    reg [21:0]counter;
    Segdisplay segdisplay(codetemp, seg[6:0]);

    always@(posedge clk_5MHZ) begin
        counter <= counter + 1;
    end

    always@(*) begin
        case(counter[16:14])
          3'b000: begin an = 8'b01111111; codetemp = number32bit[31:28]; end
          3'b001: begin an = 8'b10111111; codetemp = number32bit[27:24]; end
          3'b010: begin an = 8'b11011111; codetemp = number32bit[23:20]; end
          3'b011: begin an = 8'b11101111; codetemp = number32bit[19:16]; end
          3'b100: begin an = 8'b11110111; codetemp = number32bit[15:12]; end
          3'b101: begin an = 8'b11111011; codetemp = number32bit[11:8]; end
          3'b110: begin an = 8'b11111101; codetemp = number32bit[7:4]; end
          3'b111: begin an = 8'b11111110; codetemp = number32bit[3:0]; end
          default: begin an = 8'b01111111; codetemp = number32bit[31:28]; end
        endcase
    end

endmodule

module Segdisplay(
    input [3:0]code,
    output reg [6:0]signal
);
always@(*) begin
  case (code)
    4'b0000: signal = 7'b0000001; // "0"     
    4'b0001: signal = 7'b1001111; // "1" 
    4'b0010: signal = 7'b0010010; // "2" 
    4'b0011: signal = 7'b0000110; // "3" 
    4'b0100: signal = 7'b1001100; // "4" 
    4'b0101: signal = 7'b0100100; // "5" 
    4'b0110: signal = 7'b0100000; // "6" 
    4'b0111: signal = 7'b0001111; // "7" 
    4'b1000: signal = 7'b0000000; // "8"     
    4'b1001: signal = 7'b0000100; // "9" 
    4'b1010: signal = 7'b0001000; // "A"
    4'b1011: signal = 7'b1100000; // "B"
    4'b1100: signal = 7'b0110001; // "C"
    4'b1101: signal = 7'b1000010; // "D"
    4'b1110: signal = 7'b0110000; // "E"
    4'b1111: signal = 7'b0111000; // "F"
    default: signal = 7'b0000001; // "0"     
  endcase
  end
endmodule
