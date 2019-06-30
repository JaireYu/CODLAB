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
    input [width-1:0] a,
    input [width-1:0] b,
    input [2:0] s,
    output reg [width-1:0] y,
    output reg [2:0] f
    );
    reg [width-1:0]minus_b;
    reg temp1;
    reg temp2;
    reg [width-2:0]y0;
    //*****************************************
    task ADD;             //求补码相加时的f
    input [width-1:0]a;
    input [width-1:0]b;
    output [width-1:0]y;
    output [3:0]f;
    begin
    {temp1, y}=a+b;
    {temp2, y0}=a[width-2:0]+b[width-2:0];
    if(temp1^temp2)
        f[1]=1;  //溢出
    else
        f[1]=0;
    if(temp1)
        f[2]=1;  //进位
    else
        f[2]=0;
    if(y == 6'b000_000)
        f[0] = 1;   //零标志
    else
        f[0] =0;
    end
    endtask
    task MINUS;             //求补码相加时的f
    input [width-1:0]a;
    input [width-1:0]b;
    output [width-1:0]y;
    output [3:0]f;
    begin
    {temp1, y}=a-b;
    {temp2, y0}=a[width-2:0]-b[width-2:0];
    if(temp1^temp2)
        f[1]=1;  //溢出
    else
        f[1]=0;
    if(temp1)
        f[2]=1;  //进位
    else
        f[2]=0;
    if(y == 6'b000_000)
        f[0] = 1;   //零标志
    else
        f[0] =0;
    end
    endtask
    //*****************************************
   /* task MINUS_0;//求相反数的补码
    input [width-1:0]a;
    output [width-1:0]b;
    if(a[width-1] == 0)
        begin b[width-2:0] = ~a[width-2:0] + 1; b[width-1] = 1; end
    else 
        begin b[width-2:0] = ~(a[width-2:0]-1); b[width-1] = 0; end
    endtask*/
    //*****************************************
    always@(*)
    begin
        if(s==3'b000)//plus
        begin
        ADD(a,b,y,f);    
        end
        if(s==3'b001)//minus
        begin
        MINUS(a,b,y,f);
        end
        if(s==3'b010)//and
        begin
        y=a&b;
        if(y==6'b0)
        begin
            f[0]=1;
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
