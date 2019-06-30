`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 16:01:18
// Design Name: 
// Module Name: ALUCtrl
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


module ALUCtrl(
    input [2:0] ALUop,
    input [31:0] Imm,
    output reg [3:0] ALUCtrlinput
);
always@(*) begin
    case(ALUop)
        3'b000: ALUCtrlinput = 4'b0010;
        3'b001: begin
            case(Imm[5:0])
                6'b100000: ALUCtrlinput = 4'b0010;
                6'b100010: ALUCtrlinput = 4'b0110;
                6'b100100: ALUCtrlinput = 4'b0000;
                6'b100101: ALUCtrlinput = 4'b0001;
                6'b101010: ALUCtrlinput = 4'b0111;
                6'b100111: ALUCtrlinput = 4'b0011;
                6'b100110: ALUCtrlinput = 4'b0100;
                6'b000000: ALUCtrlinput = 4'b1000;
                default: ALUCtrlinput = 4'b0010;
            endcase
        end
        3'b010: ALUCtrlinput = 4'b0110;
        3'b011: ALUCtrlinput = 4'b0010;
        3'b100: ALUCtrlinput = 4'b0000;
        3'b101: ALUCtrlinput = 4'b0001;
        3'b110: ALUCtrlinput = 4'b0100;
        3'b111: ALUCtrlinput = 4'b0111;
        default: ALUCtrlinput = 4'b1000;
    endcase
end
endmodule
