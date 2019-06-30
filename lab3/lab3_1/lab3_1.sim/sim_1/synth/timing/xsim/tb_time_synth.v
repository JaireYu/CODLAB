// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Apr 10 20:04:38 2019
// Host        : DESKTOP-MBF5BR3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/verilog2/lab3_1/lab3_1.sim/sim_1/synth/timing/xsim/tb_time_synth.v
// Design      : lab3_1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* address = "3" *) (* data = "4" *) (* reg_num = "8" *) 
(* NotValidForBitStream *)
module lab3_1
   (ra0,
    ra1,
    we,
    clk,
    rst,
    wa,
    wd,
    rb0,
    rb1);
  input [2:0]ra0;
  input [2:0]ra1;
  input we;
  input clk;
  input rst;
  input [2:0]wa;
  input [3:0]wd;
  output [3:0]rb0;
  output [3:0]rb1;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]ra0;
  wire [2:0]ra0_IBUF;
  wire [2:0]ra1;
  wire [2:0]ra1_IBUF;
  wire [3:0]rb0;
  wire [3:0]rb0_OBUF;
  wire \rb0_OBUF[0]_inst_i_2_n_0 ;
  wire \rb0_OBUF[0]_inst_i_3_n_0 ;
  wire \rb0_OBUF[1]_inst_i_2_n_0 ;
  wire \rb0_OBUF[1]_inst_i_3_n_0 ;
  wire \rb0_OBUF[2]_inst_i_2_n_0 ;
  wire \rb0_OBUF[2]_inst_i_3_n_0 ;
  wire \rb0_OBUF[3]_inst_i_2_n_0 ;
  wire \rb0_OBUF[3]_inst_i_3_n_0 ;
  wire [3:0]rb1;
  wire [3:0]rb1_OBUF;
  wire \rb1_OBUF[0]_inst_i_2_n_0 ;
  wire \rb1_OBUF[0]_inst_i_3_n_0 ;
  wire \rb1_OBUF[1]_inst_i_2_n_0 ;
  wire \rb1_OBUF[1]_inst_i_3_n_0 ;
  wire \rb1_OBUF[2]_inst_i_2_n_0 ;
  wire \rb1_OBUF[2]_inst_i_3_n_0 ;
  wire \rb1_OBUF[3]_inst_i_2_n_0 ;
  wire \rb1_OBUF[3]_inst_i_3_n_0 ;
  wire reg_file;
  wire \reg_file[1][3]_i_1_n_0 ;
  wire \reg_file[2][3]_i_1_n_0 ;
  wire \reg_file[3][3]_i_1_n_0 ;
  wire \reg_file[4][3]_i_1_n_0 ;
  wire \reg_file[5][3]_i_1_n_0 ;
  wire \reg_file[6][3]_i_1_n_0 ;
  wire \reg_file[7][3]_i_1_n_0 ;
  wire [3:0]\reg_file_reg[0]__0 ;
  wire [3:0]\reg_file_reg[1]__0 ;
  wire [3:0]\reg_file_reg[2]__0 ;
  wire [3:0]\reg_file_reg[3]__0 ;
  wire [3:0]\reg_file_reg[4]__0 ;
  wire [3:0]\reg_file_reg[5]__0 ;
  wire [3:0]\reg_file_reg[6]__0 ;
  wire [3:0]\reg_file_reg[7]__0 ;
  wire rst;
  wire rst_IBUF;
  wire [2:0]wa;
  wire [2:0]wa_IBUF;
  wire [3:0]wd;
  wire [3:0]wd_IBUF;
  wire we;
  wire we_IBUF;

initial begin
 $sdf_annotate("tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \ra0_IBUF[0]_inst 
       (.I(ra0[0]),
        .O(ra0_IBUF[0]));
  IBUF \ra0_IBUF[1]_inst 
       (.I(ra0[1]),
        .O(ra0_IBUF[1]));
  IBUF \ra0_IBUF[2]_inst 
       (.I(ra0[2]),
        .O(ra0_IBUF[2]));
  IBUF \ra1_IBUF[0]_inst 
       (.I(ra1[0]),
        .O(ra1_IBUF[0]));
  IBUF \ra1_IBUF[1]_inst 
       (.I(ra1[1]),
        .O(ra1_IBUF[1]));
  IBUF \ra1_IBUF[2]_inst 
       (.I(ra1[2]),
        .O(ra1_IBUF[2]));
  OBUF \rb0_OBUF[0]_inst 
       (.I(rb0_OBUF[0]),
        .O(rb0[0]));
  MUXF7 \rb0_OBUF[0]_inst_i_1 
       (.I0(\rb0_OBUF[0]_inst_i_2_n_0 ),
        .I1(\rb0_OBUF[0]_inst_i_3_n_0 ),
        .O(rb0_OBUF[0]),
        .S(ra0_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb0_OBUF[0]_inst_i_2 
       (.I0(\reg_file_reg[3]__0 [0]),
        .I1(\reg_file_reg[2]__0 [0]),
        .I2(ra0_IBUF[1]),
        .I3(\reg_file_reg[1]__0 [0]),
        .I4(ra0_IBUF[0]),
        .I5(\reg_file_reg[0]__0 [0]),
        .O(\rb0_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb0_OBUF[0]_inst_i_3 
       (.I0(\reg_file_reg[7]__0 [0]),
        .I1(\reg_file_reg[6]__0 [0]),
        .I2(ra0_IBUF[1]),
        .I3(\reg_file_reg[5]__0 [0]),
        .I4(ra0_IBUF[0]),
        .I5(\reg_file_reg[4]__0 [0]),
        .O(\rb0_OBUF[0]_inst_i_3_n_0 ));
  OBUF \rb0_OBUF[1]_inst 
       (.I(rb0_OBUF[1]),
        .O(rb0[1]));
  MUXF7 \rb0_OBUF[1]_inst_i_1 
       (.I0(\rb0_OBUF[1]_inst_i_2_n_0 ),
        .I1(\rb0_OBUF[1]_inst_i_3_n_0 ),
        .O(rb0_OBUF[1]),
        .S(ra0_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb0_OBUF[1]_inst_i_2 
       (.I0(\reg_file_reg[3]__0 [1]),
        .I1(\reg_file_reg[2]__0 [1]),
        .I2(ra0_IBUF[1]),
        .I3(\reg_file_reg[1]__0 [1]),
        .I4(ra0_IBUF[0]),
        .I5(\reg_file_reg[0]__0 [1]),
        .O(\rb0_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb0_OBUF[1]_inst_i_3 
       (.I0(\reg_file_reg[7]__0 [1]),
        .I1(\reg_file_reg[6]__0 [1]),
        .I2(ra0_IBUF[1]),
        .I3(\reg_file_reg[5]__0 [1]),
        .I4(ra0_IBUF[0]),
        .I5(\reg_file_reg[4]__0 [1]),
        .O(\rb0_OBUF[1]_inst_i_3_n_0 ));
  OBUF \rb0_OBUF[2]_inst 
       (.I(rb0_OBUF[2]),
        .O(rb0[2]));
  MUXF7 \rb0_OBUF[2]_inst_i_1 
       (.I0(\rb0_OBUF[2]_inst_i_2_n_0 ),
        .I1(\rb0_OBUF[2]_inst_i_3_n_0 ),
        .O(rb0_OBUF[2]),
        .S(ra0_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb0_OBUF[2]_inst_i_2 
       (.I0(\reg_file_reg[3]__0 [2]),
        .I1(\reg_file_reg[2]__0 [2]),
        .I2(ra0_IBUF[1]),
        .I3(\reg_file_reg[1]__0 [2]),
        .I4(ra0_IBUF[0]),
        .I5(\reg_file_reg[0]__0 [2]),
        .O(\rb0_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb0_OBUF[2]_inst_i_3 
       (.I0(\reg_file_reg[7]__0 [2]),
        .I1(\reg_file_reg[6]__0 [2]),
        .I2(ra0_IBUF[1]),
        .I3(\reg_file_reg[5]__0 [2]),
        .I4(ra0_IBUF[0]),
        .I5(\reg_file_reg[4]__0 [2]),
        .O(\rb0_OBUF[2]_inst_i_3_n_0 ));
  OBUF \rb0_OBUF[3]_inst 
       (.I(rb0_OBUF[3]),
        .O(rb0[3]));
  MUXF7 \rb0_OBUF[3]_inst_i_1 
       (.I0(\rb0_OBUF[3]_inst_i_2_n_0 ),
        .I1(\rb0_OBUF[3]_inst_i_3_n_0 ),
        .O(rb0_OBUF[3]),
        .S(ra0_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb0_OBUF[3]_inst_i_2 
       (.I0(\reg_file_reg[3]__0 [3]),
        .I1(\reg_file_reg[2]__0 [3]),
        .I2(ra0_IBUF[1]),
        .I3(\reg_file_reg[1]__0 [3]),
        .I4(ra0_IBUF[0]),
        .I5(\reg_file_reg[0]__0 [3]),
        .O(\rb0_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb0_OBUF[3]_inst_i_3 
       (.I0(\reg_file_reg[7]__0 [3]),
        .I1(\reg_file_reg[6]__0 [3]),
        .I2(ra0_IBUF[1]),
        .I3(\reg_file_reg[5]__0 [3]),
        .I4(ra0_IBUF[0]),
        .I5(\reg_file_reg[4]__0 [3]),
        .O(\rb0_OBUF[3]_inst_i_3_n_0 ));
  OBUF \rb1_OBUF[0]_inst 
       (.I(rb1_OBUF[0]),
        .O(rb1[0]));
  MUXF7 \rb1_OBUF[0]_inst_i_1 
       (.I0(\rb1_OBUF[0]_inst_i_2_n_0 ),
        .I1(\rb1_OBUF[0]_inst_i_3_n_0 ),
        .O(rb1_OBUF[0]),
        .S(ra1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb1_OBUF[0]_inst_i_2 
       (.I0(\reg_file_reg[3]__0 [0]),
        .I1(\reg_file_reg[2]__0 [0]),
        .I2(ra1_IBUF[1]),
        .I3(\reg_file_reg[1]__0 [0]),
        .I4(ra1_IBUF[0]),
        .I5(\reg_file_reg[0]__0 [0]),
        .O(\rb1_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb1_OBUF[0]_inst_i_3 
       (.I0(\reg_file_reg[7]__0 [0]),
        .I1(\reg_file_reg[6]__0 [0]),
        .I2(ra1_IBUF[1]),
        .I3(\reg_file_reg[5]__0 [0]),
        .I4(ra1_IBUF[0]),
        .I5(\reg_file_reg[4]__0 [0]),
        .O(\rb1_OBUF[0]_inst_i_3_n_0 ));
  OBUF \rb1_OBUF[1]_inst 
       (.I(rb1_OBUF[1]),
        .O(rb1[1]));
  MUXF7 \rb1_OBUF[1]_inst_i_1 
       (.I0(\rb1_OBUF[1]_inst_i_2_n_0 ),
        .I1(\rb1_OBUF[1]_inst_i_3_n_0 ),
        .O(rb1_OBUF[1]),
        .S(ra1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb1_OBUF[1]_inst_i_2 
       (.I0(\reg_file_reg[3]__0 [1]),
        .I1(\reg_file_reg[2]__0 [1]),
        .I2(ra1_IBUF[1]),
        .I3(\reg_file_reg[1]__0 [1]),
        .I4(ra1_IBUF[0]),
        .I5(\reg_file_reg[0]__0 [1]),
        .O(\rb1_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb1_OBUF[1]_inst_i_3 
       (.I0(\reg_file_reg[7]__0 [1]),
        .I1(\reg_file_reg[6]__0 [1]),
        .I2(ra1_IBUF[1]),
        .I3(\reg_file_reg[5]__0 [1]),
        .I4(ra1_IBUF[0]),
        .I5(\reg_file_reg[4]__0 [1]),
        .O(\rb1_OBUF[1]_inst_i_3_n_0 ));
  OBUF \rb1_OBUF[2]_inst 
       (.I(rb1_OBUF[2]),
        .O(rb1[2]));
  MUXF7 \rb1_OBUF[2]_inst_i_1 
       (.I0(\rb1_OBUF[2]_inst_i_2_n_0 ),
        .I1(\rb1_OBUF[2]_inst_i_3_n_0 ),
        .O(rb1_OBUF[2]),
        .S(ra1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb1_OBUF[2]_inst_i_2 
       (.I0(\reg_file_reg[3]__0 [2]),
        .I1(\reg_file_reg[2]__0 [2]),
        .I2(ra1_IBUF[1]),
        .I3(\reg_file_reg[1]__0 [2]),
        .I4(ra1_IBUF[0]),
        .I5(\reg_file_reg[0]__0 [2]),
        .O(\rb1_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb1_OBUF[2]_inst_i_3 
       (.I0(\reg_file_reg[7]__0 [2]),
        .I1(\reg_file_reg[6]__0 [2]),
        .I2(ra1_IBUF[1]),
        .I3(\reg_file_reg[5]__0 [2]),
        .I4(ra1_IBUF[0]),
        .I5(\reg_file_reg[4]__0 [2]),
        .O(\rb1_OBUF[2]_inst_i_3_n_0 ));
  OBUF \rb1_OBUF[3]_inst 
       (.I(rb1_OBUF[3]),
        .O(rb1[3]));
  MUXF7 \rb1_OBUF[3]_inst_i_1 
       (.I0(\rb1_OBUF[3]_inst_i_2_n_0 ),
        .I1(\rb1_OBUF[3]_inst_i_3_n_0 ),
        .O(rb1_OBUF[3]),
        .S(ra1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb1_OBUF[3]_inst_i_2 
       (.I0(\reg_file_reg[3]__0 [3]),
        .I1(\reg_file_reg[2]__0 [3]),
        .I2(ra1_IBUF[1]),
        .I3(\reg_file_reg[1]__0 [3]),
        .I4(ra1_IBUF[0]),
        .I5(\reg_file_reg[0]__0 [3]),
        .O(\rb1_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rb1_OBUF[3]_inst_i_3 
       (.I0(\reg_file_reg[7]__0 [3]),
        .I1(\reg_file_reg[6]__0 [3]),
        .I2(ra1_IBUF[1]),
        .I3(\reg_file_reg[5]__0 [3]),
        .I4(ra1_IBUF[0]),
        .I5(\reg_file_reg[4]__0 [3]),
        .O(\rb1_OBUF[3]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \reg_file[0][3]_i_1 
       (.I0(we_IBUF),
        .I1(wa_IBUF[1]),
        .I2(wa_IBUF[0]),
        .I3(wa_IBUF[2]),
        .O(reg_file));
  LUT4 #(
    .INIT(16'h0020)) 
    \reg_file[1][3]_i_1 
       (.I0(we_IBUF),
        .I1(wa_IBUF[1]),
        .I2(wa_IBUF[0]),
        .I3(wa_IBUF[2]),
        .O(\reg_file[1][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \reg_file[2][3]_i_1 
       (.I0(we_IBUF),
        .I1(wa_IBUF[2]),
        .I2(wa_IBUF[1]),
        .I3(wa_IBUF[0]),
        .O(\reg_file[2][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \reg_file[3][3]_i_1 
       (.I0(we_IBUF),
        .I1(wa_IBUF[2]),
        .I2(wa_IBUF[0]),
        .I3(wa_IBUF[1]),
        .O(\reg_file[3][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \reg_file[4][3]_i_1 
       (.I0(we_IBUF),
        .I1(wa_IBUF[1]),
        .I2(wa_IBUF[2]),
        .I3(wa_IBUF[0]),
        .O(\reg_file[4][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \reg_file[5][3]_i_1 
       (.I0(we_IBUF),
        .I1(wa_IBUF[1]),
        .I2(wa_IBUF[0]),
        .I3(wa_IBUF[2]),
        .O(\reg_file[5][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \reg_file[6][3]_i_1 
       (.I0(we_IBUF),
        .I1(wa_IBUF[0]),
        .I2(wa_IBUF[2]),
        .I3(wa_IBUF[1]),
        .O(\reg_file[6][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \reg_file[7][3]_i_1 
       (.I0(we_IBUF),
        .I1(wa_IBUF[0]),
        .I2(wa_IBUF[2]),
        .I3(wa_IBUF[1]),
        .O(\reg_file[7][3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_file),
        .CLR(rst_IBUF),
        .D(wd_IBUF[0]),
        .Q(\reg_file_reg[0]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_file),
        .CLR(rst_IBUF),
        .D(wd_IBUF[1]),
        .Q(\reg_file_reg[0]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_file),
        .CLR(rst_IBUF),
        .D(wd_IBUF[2]),
        .Q(\reg_file_reg[0]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_file),
        .CLR(rst_IBUF),
        .D(wd_IBUF[3]),
        .Q(\reg_file_reg[0]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[1][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[0]),
        .Q(\reg_file_reg[1]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[1][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[1]),
        .Q(\reg_file_reg[1]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[1][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[2]),
        .Q(\reg_file_reg[1]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[1][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[3]),
        .Q(\reg_file_reg[1]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[2][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[0]),
        .Q(\reg_file_reg[2]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[2][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[1]),
        .Q(\reg_file_reg[2]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[2][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[2]),
        .Q(\reg_file_reg[2]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[2][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[3]),
        .Q(\reg_file_reg[2]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[3][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[0]),
        .Q(\reg_file_reg[3]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[3][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[1]),
        .Q(\reg_file_reg[3]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[3][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[2]),
        .Q(\reg_file_reg[3]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[3][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[3]),
        .Q(\reg_file_reg[3]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[4][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[0]),
        .Q(\reg_file_reg[4]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[4][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[1]),
        .Q(\reg_file_reg[4]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[4][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[2]),
        .Q(\reg_file_reg[4]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[4][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[3]),
        .Q(\reg_file_reg[4]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[5][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[0]),
        .Q(\reg_file_reg[5]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[5][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[1]),
        .Q(\reg_file_reg[5]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[5][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[2]),
        .Q(\reg_file_reg[5]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[5][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[3]),
        .Q(\reg_file_reg[5]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[6][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[0]),
        .Q(\reg_file_reg[6]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[6][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[1]),
        .Q(\reg_file_reg[6]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[6][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[2]),
        .Q(\reg_file_reg[6]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[6][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[3]),
        .Q(\reg_file_reg[6]__0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[7][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[0]),
        .Q(\reg_file_reg[7]__0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[7][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[1]),
        .Q(\reg_file_reg[7]__0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[7][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[2]),
        .Q(\reg_file_reg[7]__0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_file_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_file[7][3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(wd_IBUF[3]),
        .Q(\reg_file_reg[7]__0 [3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \wa_IBUF[0]_inst 
       (.I(wa[0]),
        .O(wa_IBUF[0]));
  IBUF \wa_IBUF[1]_inst 
       (.I(wa[1]),
        .O(wa_IBUF[1]));
  IBUF \wa_IBUF[2]_inst 
       (.I(wa[2]),
        .O(wa_IBUF[2]));
  IBUF \wd_IBUF[0]_inst 
       (.I(wd[0]),
        .O(wd_IBUF[0]));
  IBUF \wd_IBUF[1]_inst 
       (.I(wd[1]),
        .O(wd_IBUF[1]));
  IBUF \wd_IBUF[2]_inst 
       (.I(wd[2]),
        .O(wd_IBUF[2]));
  IBUF \wd_IBUF[3]_inst 
       (.I(wd[3]),
        .O(wd_IBUF[3]));
  IBUF we_IBUF_inst
       (.I(we),
        .O(we_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
