`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/10 21:01:48
// Design Name: 
// Module Name: state_machine
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


module Outputs_Control(
	input [5:0]instruct,
	input clk,
	input rst,
	input run,
	output reg PCwriteCond1,
	output reg PCwriteCond2,
	output reg PCwrite,
	output reg IorD,
	output reg Memread,
	output reg Memwrite,
	output reg MemtoReg,
	output reg IRWrite,
	output reg [1:0]PCSource,
	output reg [2:0]ALUop,
	output reg ALUSrcA,
	output reg [1:0]ALUSrcB,
	output reg RegWrite,
	output reg RegDst
);
	parameter p0 = 5'b00000;							//waiting
	parameter p1 = 5'b00001;							//fatch the struct
	parameter p2 = 5'b00010;							//decode
	parameter p3 = 5'b00011;							//lw/sw get the address
	parameter p4 = 5'b00100;							//R-type doing
	parameter p5 = 5'b00101;							//beq
	parameter p6 = 5'b00110;							//bne
	parameter p7 = 5'b00111;							//J
	parameter p8 = 5'b01000;							//addi
	parameter p9 = 5'b01001;							//andi
	parameter p10 = 5'b01010;							//ori
	parameter p11 = 5'b01011;							//xori
	parameter p12 = 5'b01100;							//slti
	parameter p13 = 5'b01101;							//lw get data
	parameter p14 = 5'b01110;							//sw write store
	parameter p15 = 5'b01111;							//R-type/I-type write back to RF
	parameter p16 = 5'b10000;							//lw write back
    parameter p17 = 5'b10001;
	
	reg [4:0]state;
	reg [4:0]nextstate;

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
		p0: begin
			if(run == 0)
				nextstate = p0;
			else
				nextstate = p1;
		end
		p1: begin
			nextstate = p2;
		end
		p2: begin
			case(instruct)
				6'b100011:nextstate = p3;
				6'b101011:nextstate = p3;
				6'b000000:nextstate = p4;
				6'b000100:nextstate = p5;
				6'b000101:nextstate = p6;
				6'b000010:nextstate = p7;
				6'b001000:nextstate = p8;
				6'b001100:nextstate = p9;
				6'b001101:nextstate = p10;
				6'b001110:nextstate = p11;
				6'b001010:nextstate = p12;
				default:nextstate = p0;
			endcase
		end
		p3: begin
			if(instruct == 6'b100011)
				nextstate = p13;
			else if(instruct == 6'b101011)
				nextstate = p14;
			else 
				nextstate = p0;
		end
		p4: begin
			nextstate = p15;
		end
		p5: begin
			if(run == 1)
				nextstate = p1;
			else 
				nextstate = p0;
		end
		p6: begin
			if(run == 1)
				nextstate = p1;
			else 
				nextstate = p0;
		end
		p7: begin
			if(run == 1)
				nextstate = p1;
			else 
				nextstate = p0;
		end
		p8: nextstate = p17;
		p9: nextstate = p17;
		p10: nextstate = p17;
		p11: nextstate = p17;
		p12: nextstate = p17;
		p13: nextstate = p16;
		p14: begin
			if(run == 1)
				nextstate = p1;
			else 
				nextstate = p0;
		end
		p15: begin
			if(run == 1)
				nextstate = p1;
			else 
				nextstate = p0;
		end
		p16: begin
			if(run == 1)
				nextstate = p1;
			else 
				nextstate = p0;
		end
        p17: begin
			if(run == 1)
				nextstate = p1;
			else 
				nextstate = p0;
		end
	endcase
	end

	always@(posedge clk) begin
	case(nextstate)
		p0: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			IorD <= 0;
			Memread <= 0;
			Memwrite <= 0;
			MemtoReg <= 0;
			IRWrite <= 0;
			PCSource <= 2'b00;
			ALUop <= 3'b000;
			ALUSrcA <= 0;
			ALUSrcB <= 2'b01;
			RegWrite <= 0;
			//RegDst <= 没有必要
		end
		p1: begin   //取址
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 1;
			IorD <= 0;
			Memread <= 1;
			Memwrite <= 0;
			//MemtoReg <= 0;
			IRWrite <= 1;
			PCSource <= 2'b00;
			ALUop <= 3'b000;
			ALUSrcA <= 0;
			ALUSrcB <= 2'b01;
			RegWrite <= 0;
			//RegDst <= 没有必要
		end
		p2: begin   //译码
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			ALUop <= 3'b000;
			ALUSrcA <= 0;
			ALUSrcB <= 2'b11;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p3: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			ALUop <= 3'b000;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b10;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p4: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			ALUop <= 3'b001;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b00;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p5: begin
			PCwriteCond1 <= 1;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			PCSource <= 2'b01;
			ALUop <= 3'b010;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b00;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p6: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 1;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			PCSource <= 2'b01;
			ALUop <= 3'b010;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b00;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p7: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 1;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			PCSource <= 2'b10;
			//ALUop <= 3'b000;
			//ALUSrcA <= 1;
			//ALUSrcB <= 2'b00;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p8: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			ALUop <= 3'b011;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b10;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p9: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			ALUop <= 3'b100;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b10;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p10: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			ALUop <= 3'b101;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b10;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p11: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			ALUop <= 3'b110;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b10;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p12: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			ALUop <= 3'b111;
			ALUSrcA <= 1;
			ALUSrcB <= 2'b10;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p13: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			IorD <= 1;
			Memread <= 1;
			Memwrite <= 0;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			//ALUop <= 3'b011;
			//ALUSrcA <= 1;
			//ALUSrcB <= 2'b10;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p14: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			IorD <= 1;
			Memread <= 0;
			Memwrite <= 1;
			//MemtoReg <= 0;regwrite <= 0 no need
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			//ALUop <= 3'b011;
			//ALUSrcA <= 1;
			//ALUSrcB <= 2'b10;
			RegWrite <= 0;
			//RegDst regwrite <= 0 no need
		end
		p15: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			MemtoReg <= 0;
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			//ALUop <= 3'b011;
			//ALUSrcA <= 1;
			//ALUSrcB <= 2'b10;
			RegWrite <= 1;
			RegDst <= 1;
		end
		p16: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			MemtoReg <= 1;
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			//ALUop <= 3'b011;
			//ALUSrcA <= 1;
			//ALUSrcB <= 2'b10;
			RegWrite <= 1;
			RegDst <= 0;
		end
        p17: begin
			PCwriteCond1 <= 0;
			PCwriteCond2 <= 0;
			PCwrite <= 0;
			//IorD <= 0;Memread <= 0没有必要
			Memread <= 0;
			Memwrite <= 0;
			MemtoReg <= 0;
			IRWrite <= 0;
			//PCSource <= 2'b00; pcwrite <= 0 no need
			//ALUop <= 3'b011;
			//ALUSrcA <= 1;
			//ALUSrcB <= 2'b10;
			RegWrite <= 1;
			RegDst <= 0;
		end
	endcase
	end                                                          
endmodule
