`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/21 12:31:46
// Design Name: 
// Module Name: lab1_1
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


module alu #(parameter width = 6)(
    input [5:0] a,
    input [5:0] b,
    input [2:0] s,
    output reg [5:0] y,
    output reg [2:0] f
    );
    reg [5:0]minus_b;
    //*****************************************
    task ADD;
    input [width-1:0]a;
    input [width-1:0]b;
    output [width-1:0]y;
    output [3:0]f;
    begin
    y = a + b;
    if(((a[width-2:0]+b[width-2:0])>5'b11111&&(a[width-1:0]+b[width-1:0])<6'b111_111)||((a[width-2:0]+b[width-2:0])<5'b11111&&(a[width-1:0]+b[width-1:0])>6'b111_111))
        f[1]=1;
    else
        f[1]=0;
    if((a[5:0]+b[5:0])>6'b111_111)
        f[2]=1;
    else
        f[2]=0;
    if(y == 6'b000_000)
        f[0] = 1;
    else
        f[0] =0;
    end
    endtask
    //*****************************************
    task MINUS;//求相反数的补码
    input [width-1:0]a;
    output [width-1:0]b;
    if(a[width-1] == 0)
        begin b[width-2:0] = ~a[width-2:0] + 1; b[width-1] = 1; end
    else 
        begin b[width-2:0] = ~(a[width-2:0]-1); b[width-1] = 0; end
    endtask
    //*****************************************
    always@(*)
    begin
        if(s==3'b000)//plus
        begin
        ADD(a,b,y,f);    
        end
        if(s==3'b001)//minus
        begin
        MINUS(b,minus_b);//task 内的赋值要赋给reg量
        ADD(a,minus_b,y,f);
        end
        if(s==3'b010)//and
        begin
        y=a&b;
        if(a&b==0)
        begin
            f=3'b001;
        end
        else
            f=3'b000;
        end
        if(s==3'b011)//or
        begin
        y=a|b;
        if(a|b==0)
        begin
            f=3'b001;
        end
        else
            f=3'b000;
        end
        if(s==3'b100)//not
        begin
        y=~a;
        if(~a==0)
        begin
            f=3'b001;
        end
        else
            f=3'b000;
        end
        if(s==3'b101)//xor
        begin
        y=(~a&b)|(a&~b);
        if((~a&b)|(a&~b)==0)
        begin
            f=3'b001;
        end
        else
            f=3'b000;
        end
    end
endmodule
