`timescale 1ns / 1ps


module Top(
    input rst,
    input CLK_100MHZ,
    output [7:0]an,
    output [6:0]seg
);
    reg [3:0]data0;
    reg [3:0]data1;
    reg [3:0]data2;
    reg [3:0]data3;
    wire clk_5MHZ;
    clk_wiz_0 CLK(.clk_out1(clk_5MHZ), .clk_in1(CLK_100MHZ));
    Segdisplay32bit Seg({data3, data2, data1, data0},clk_5MHZ,an, seg);
    reg [31:0] cnt;
    wire pulse_10HZ;
    wire pulse_1HZ;
    wire pulse_0dot1HZ;
    wire pulse_min;
    always@(posedge clk_5MHZ) begin
        if(rst)
            cnt <= 0;
        else if(cnt>=500000)
            cnt <= 0;
        else
            cnt <= cnt + 1;
    end
    assign pulse_10HZ = (cnt == 4'h1);
    always@(posedge clk_5MHZ) begin
        if(rst) begin
            data0 <= 4;
        end
        else if(pulse_10HZ == 1) begin
            if(data0 == 0)
                data0 <= 9;
            else
                data0 <= data0 - 1;
        end
    end
    assign pulse_1HZ = (data0 == 0);
    always@(posedge clk_5MHZ) begin
        if(rst) begin
            data1 <= 3;
        end
        else if(pulse_1HZ == 1 && pulse_10HZ == 1) begin
            if(data1 == 0)
                data1 <= 9;
            else
                data1 <= data1 - 1;
        end
    end
    assign pulse_0dot1HZ = (data1 == 0);
    always@(posedge clk_5MHZ) begin
        if(rst) begin
            data2 <= 2;
        end
        else if(pulse_0dot1HZ == 1 && pulse_1HZ == 1 && pulse_10HZ == 1) begin
            if(data2 == 0)
                data2 <= 5;
            else
                data2 <= data2 - 1;
        end
    end
    assign pulse_min = (data2 == 0);
    always@(posedge clk_5MHZ) begin
        if(rst) begin
            data3 <= 1;
        end
        else if(pulse_min == 1 && pulse_0dot1HZ == 1 && pulse_1HZ == 1 && pulse_10HZ == 1) begin
            if(data3 == 0)
                data3 <= 5;
            else
                data3 <= data3 - 1;
        end
    end

endmodule

module Segdisplay32bit(
    input [15:0]number32bit,
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
        case(counter[15:14])
          3'b00: begin an = 8'b11110111; codetemp = number32bit[15:12]; end
          3'b01: begin an = 8'b11111011; codetemp = number32bit[11:8]; end
          3'b10: begin an = 8'b11111101; codetemp = number32bit[7:4]; end
          3'b11: begin an = 8'b11111110; codetemp = number32bit[3:0]; end
          default: begin an = 8'b01111111; codetemp = number32bit[15:12]; end
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
