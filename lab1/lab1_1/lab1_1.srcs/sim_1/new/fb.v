`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/21 17:32:00
// Design Name: 
// Module Name: fb
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


module fb(
);
    reg [5:0] a;
    reg [5:0] b;
    reg [2:0] s;
    wire [5:0] y;
    wire [2:0] f;
    alu ALU(a,b,s,y,f);
    initial
    begin
    a = 6'b111_101;
    b = 6'b100_001;
     s =3'b000;
     #10;
     a = 6'b011_111;
     b = 6'b111_111;
     s = 3'b001;
     #10;
     s = 3'b010;
     #10;
     s = 3'b011;
     #10;
     s = 3'b100;
     #10;
     s = 3'b101;
     #10;
    end
endmodule
