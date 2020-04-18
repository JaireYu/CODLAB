`timescale 1ns / 1ps

module CSR_ALU(
    input wire [31:0] csr_imm_in,
    input wire [31:0] csr_data_in,
    input wire [31:0] reg1_data_in,
    input wire [2:0] csr_func,
    output reg [31:0] csralu_out
    );

    always@(*)
    begin
        case (csr_func)
            `CSRRW: begin
                csralu_out = reg1_data_in;
            end
            `CSRRS: begin
                csralu_out = (csr_data_in | reg1_data_in);
            end  
            `CSRRC: begin
                csralu_out = (csr_data_in & (~reg1_data_in));
            end
            `CSRRWI: begin
                csralu_out = csr_imm_in;
            end
            `CSRRSI: begin
                csralu_out = {csr_data_in[31:5], (csr_data_in[4:0] | csr_imm_in[4:0])};
            end
            `CSRRCI: begin
                csralu_out = {csr_data_in[31:5], (csr_data_in[4:0] & (~csr_imm_in[4:0]))};
            end
            default: begin
                csralu_out = reg1_data_in;
            end 
        endcase
    end
endmodule