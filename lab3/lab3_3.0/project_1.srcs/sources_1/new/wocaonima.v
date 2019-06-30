`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/10 21:52:51
// Design Name: 
// Module Name: lab3_3
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


module lab3_3(
    input en_in,
    input en_out,
    input clk,
    input rst,
    input [3:0] in,
    output reg [3:0] out,
    output full,
    output reg [14:0] display,
    output dp,
    output empty

    );
    reg[3:0]cnt;
    wire [3:0] wd,out_data1,out_data2;
    parameter width=4;
    parameter num=8;
    wire [width-1:0] wa;
    wire [width-1:0] out_addr;
    wire we;
    reg tmp;
    wire clk_5mhz;
    wire [17:0] cout;
    reg flag1,flag2;
    reg [3:0]segclk;
    reg [width-1:0] tail;
    reg [width-1:0] head;
    wire [width-1:0] rd0;
    assign empty=(cnt==0)? 1:0;
    assign full=(cnt==num)? 1:0;
    assign wa=(en_in&~en_out)? tail : head;
    assign we=(en_out|en_in) ? 1:0;
    assign out_addr = head;
    assign dp=(cout[17:14]==head) ? 0:1;
    assign wd =(en_in&~en_out)? in:0;
    clk_wiz_0 inst(.clk_in1(clk),.clk_out1(clk_5mhz));
    count count(clk_5mhz,rst,cout);
    lab3_1 #(8, 4, 4) reg_file(.clk(clk),.rst(rst),.we(we),.wd(wd),.wa(wa),.ra0(out_addr),.ra1(cout[17:14]),.rd0(rd0),.rd1(out_data2));
    always@(posedge clk or negedge rst)
    begin
        if(rst)
        begin
            cnt<=0;
            flag1<=0;flag2<=0;
            tail<=0;
            head<=0;
        end
        else if(~flag1&&~flag2)
        begin
            if(en_in&&~full)
            begin
                flag1<=1;
                cnt<=cnt+1;
            end
            else if(en_out&&~empty)
            begin
                out <= rd0;
                flag2<=1;
                cnt<=cnt-1;
            end
        end
        else if(~en_in&&~en_out)
        begin
            if(flag1&&~flag2)
            begin
                flag1<=0;tail<=(tail+1)%num;
            end
            else if(flag2&&~flag1)
            begin
                flag2<=0;head<=(head+1)%num;
            end
        end
    end
    always@(posedge clk_5mhz or negedge rst)
    begin
        if(rst)
        begin
            display[7:0]<=7'b1111111;
            segclk<=0;
        end
        else
        begin
            case(cout[17:14])
            4'b0000 :begin display[7:0]<=8'b01111111;segclk<=out_data2;end
            4'b0001 :begin display[7:0]<=8'b10111111;segclk<=out_data2;end
            4'b0010 :begin display[7:0]<=8'b11011111;segclk<=out_data2;end
            4'b0011 :begin display[7:0]<=8'b11101111;segclk<=out_data2;end
            4'b0100 :begin display[7:0]<=8'b11110111;segclk<=out_data2;end
            4'b0101 :begin display[7:0]<=8'b11111011;segclk<=out_data2;end
            4'b0110 :begin display[7:0]<=8'b11111101;segclk<=out_data2;end
            4'b0111 :begin display[7:0]<=8'b11111110;segclk<=out_data2;end
            endcase
        end
    end
    always @(posedge clk_5mhz or negedge rst )
    begin
        if(rst)
        begin
            display[14:8]<=1;
        end
        else
        begin
            case(segclk)
            4'd0 :display[14:8]<=7'b1111111;
            4'd1 :display[14:8]<=7'b1001111;
            4'd2 :display[14:8]<=7'b0010010;
            4'd3 :display[14:8]<=7'b0000110;
            4'd4 :display[14:8]<=7'b1001100;
            4'd5 :display[14:8]<=7'b0100100;
            4'd6 :display[14:8]<=7'b0100000;
            4'd7 :display[14:8]<=7'b0001111;
            4'd8 :display[14:8]<=7'b0000000;
            4'd9 :display[14:8]<=7'b0000100;
            endcase
        end
    end

endmodule
module count(
    input clk5mhz,
    input rst,
    output reg [17:0] count
);
    always@(posedge clk5mhz or negedge rst)
    begin
        if(rst)
        begin
            count<=0;
        end
        else if(count==18'b111100000000000000)
        begin
            count<=18'b0;
        end
        else
        begin
            count<=count+1;
        end
    end
endmodule