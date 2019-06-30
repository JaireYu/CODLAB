// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 29 16:14:26 2019
// Host        : DESKTOP-MBF5BR3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/verilog2/lab2_2/lab2_2.sim/sim_1/synth/func/xsim/tb_func_synth.v
// Design      : lab2_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* p0 = "4'b0000" *) (* p1 = "4'b0001" *) (* p2 = "4'b0010" *) 
(* p3 = "4'b0011" *) (* p4 = "4'b0100" *) (* p5 = "4'b0101" *) 
(* p6 = "4'b0110" *) (* p7 = "4'b0111" *) (* p8 = "4'b1000" *) 
(* p9 = "4'b1001" *) 
(* NotValidForBitStream *)
module lab2_2
   (x,
    y,
    rst,
    clk,
    q,
    r,
    error,
    done);
  input [3:0]x;
  input [3:0]y;
  input rst;
  input clk;
  output [3:0]q;
  output [3:0]r;
  output error;
  output done;

  wire \FSM_sequential_nextstate_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_nextstate_reg[2]_i_2_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire done;
  wire done_OBUF;
  wire error;
  wire error_OBUF;
  wire [2:0]nextstate;
  wire [3:0]q;
  wire [3:0]q_OBUF;
  wire [3:0]r;
  wire [3:0]r_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [2:0]state;
  wire temp_x;
  wire [7:5]temp_x0;
  wire temp_x1;
  wire [7:0]temp_x2_in;
  wire \temp_x[0]_C_i_1_n_0 ;
  wire \temp_x[1]_C_i_1_n_0 ;
  wire \temp_x[2]_C_i_1_n_0 ;
  wire \temp_x[3]_C_i_1_n_0 ;
  wire \temp_x[4]_i_1_n_0 ;
  wire \temp_x[5]_i_1_n_0 ;
  wire \temp_x[6]_i_1_n_0 ;
  wire \temp_x[6]_i_3_n_0 ;
  wire \temp_x[7]_i_5_n_0 ;
  wire \temp_x[7]_i_6_n_0 ;
  wire \temp_x[7]_i_7_n_0 ;
  wire \temp_x_reg[0]_C_n_0 ;
  wire \temp_x_reg[0]_LDC_i_1_n_0 ;
  wire \temp_x_reg[0]_LDC_i_2_n_0 ;
  wire \temp_x_reg[0]_LDC_n_0 ;
  wire \temp_x_reg[0]_P_n_0 ;
  wire \temp_x_reg[1]_C_n_0 ;
  wire \temp_x_reg[1]_LDC_i_1_n_0 ;
  wire \temp_x_reg[1]_LDC_i_2_n_0 ;
  wire \temp_x_reg[1]_LDC_n_0 ;
  wire \temp_x_reg[1]_P_n_0 ;
  wire \temp_x_reg[2]_C_n_0 ;
  wire \temp_x_reg[2]_LDC_i_1_n_0 ;
  wire \temp_x_reg[2]_LDC_i_2_n_0 ;
  wire \temp_x_reg[2]_LDC_n_0 ;
  wire \temp_x_reg[2]_P_n_0 ;
  wire \temp_x_reg[3]_C_n_0 ;
  wire \temp_x_reg[3]_LDC_i_1_n_0 ;
  wire \temp_x_reg[3]_LDC_i_2_n_0 ;
  wire \temp_x_reg[3]_LDC_n_0 ;
  wire \temp_x_reg[3]_P_n_0 ;
  wire [3:0]x;
  wire [3:0]x_IBUF;
  wire [3:0]y;
  wire [3:0]y_IBUF;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nextstate_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_nextstate_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \FSM_sequential_nextstate_reg[0]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\FSM_sequential_nextstate_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nextstate_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_nextstate_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_nextstate_reg[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_nextstate_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_nextstate_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_sequential_nextstate_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_nextstate_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_nextstate_reg[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\FSM_sequential_nextstate_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_nextstate_reg[2]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\FSM_sequential_nextstate_reg[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "p0:000,p1:001,p2:010,p3:011,p4:100,p5:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(nextstate[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "p0:000,p1:001,p2:010,p3:011,p4:100,p5:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(nextstate[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "p0:000,p1:001,p2:010,p3:011,p4:100,p5:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(nextstate[2]),
        .Q(state[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    done_OBUF_inst_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(done_OBUF));
  OBUF error_OBUF_inst
       (.I(error_OBUF),
        .O(error));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    error_OBUF_inst_i_1
       (.I0(y_IBUF[3]),
        .I1(y_IBUF[2]),
        .I2(y_IBUF[0]),
        .I3(y_IBUF[1]),
        .O(error_OBUF));
  OBUF \q_OBUF[0]_inst 
       (.I(q_OBUF[0]),
        .O(q[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q_OBUF[0]_inst_i_1 
       (.I0(\temp_x_reg[0]_P_n_0 ),
        .I1(\temp_x_reg[0]_LDC_n_0 ),
        .I2(\temp_x_reg[0]_C_n_0 ),
        .O(q_OBUF[0]));
  OBUF \q_OBUF[1]_inst 
       (.I(q_OBUF[1]),
        .O(q[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q_OBUF[1]_inst_i_1 
       (.I0(\temp_x_reg[1]_P_n_0 ),
        .I1(\temp_x_reg[1]_LDC_n_0 ),
        .I2(\temp_x_reg[1]_C_n_0 ),
        .O(q_OBUF[1]));
  OBUF \q_OBUF[2]_inst 
       (.I(q_OBUF[2]),
        .O(q[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q_OBUF[2]_inst_i_1 
       (.I0(\temp_x_reg[2]_P_n_0 ),
        .I1(\temp_x_reg[2]_LDC_n_0 ),
        .I2(\temp_x_reg[2]_C_n_0 ),
        .O(q_OBUF[2]));
  OBUF \q_OBUF[3]_inst 
       (.I(q_OBUF[3]),
        .O(q[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q_OBUF[3]_inst_i_1 
       (.I0(\temp_x_reg[3]_P_n_0 ),
        .I1(\temp_x_reg[3]_LDC_n_0 ),
        .I2(\temp_x_reg[3]_C_n_0 ),
        .O(q_OBUF[3]));
  OBUF \r_OBUF[0]_inst 
       (.I(r_OBUF[0]),
        .O(r[0]));
  OBUF \r_OBUF[1]_inst 
       (.I(r_OBUF[1]),
        .O(r[1]));
  OBUF \r_OBUF[2]_inst 
       (.I(r_OBUF[2]),
        .O(r[2]));
  OBUF \r_OBUF[3]_inst 
       (.I(r_OBUF[3]),
        .O(r[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  LUT6 #(
    .INIT(64'hFAFAFAAC0A0A0AAC)) 
    \temp_x[0]_C_i_1 
       (.I0(temp_x1),
        .I1(x_IBUF[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\temp_x_reg[0]_C_n_0 ),
        .O(\temp_x[0]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10F110E0)) 
    \temp_x[0]_P_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(temp_x1),
        .I3(state[2]),
        .I4(x_IBUF[0]),
        .O(temp_x2_in[0]));
  LUT6 #(
    .INIT(64'hFAFAFAAC0A0A0AAC)) 
    \temp_x[1]_C_i_1 
       (.I0(q_OBUF[0]),
        .I1(x_IBUF[1]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\temp_x_reg[1]_C_n_0 ),
        .O(\temp_x[1]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540DFD545408A80)) 
    \temp_x[1]_P_i_1 
       (.I0(\temp_x[6]_i_3_n_0 ),
        .I1(\temp_x_reg[0]_P_n_0 ),
        .I2(\temp_x_reg[0]_LDC_n_0 ),
        .I3(\temp_x_reg[0]_C_n_0 ),
        .I4(state[2]),
        .I5(x_IBUF[1]),
        .O(temp_x2_in[1]));
  LUT6 #(
    .INIT(64'hFAFAFAAC0A0A0AAC)) 
    \temp_x[2]_C_i_1 
       (.I0(q_OBUF[1]),
        .I1(x_IBUF[2]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\temp_x_reg[2]_C_n_0 ),
        .O(\temp_x[2]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540DFD545408A80)) 
    \temp_x[2]_P_i_1 
       (.I0(\temp_x[6]_i_3_n_0 ),
        .I1(\temp_x_reg[1]_P_n_0 ),
        .I2(\temp_x_reg[1]_LDC_n_0 ),
        .I3(\temp_x_reg[1]_C_n_0 ),
        .I4(state[2]),
        .I5(x_IBUF[2]),
        .O(temp_x2_in[2]));
  LUT6 #(
    .INIT(64'hFAFAFAAC0A0A0AAC)) 
    \temp_x[3]_C_i_1 
       (.I0(q_OBUF[2]),
        .I1(x_IBUF[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\temp_x_reg[3]_C_n_0 ),
        .O(\temp_x[3]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4540DFD545408A80)) 
    \temp_x[3]_P_i_1 
       (.I0(\temp_x[6]_i_3_n_0 ),
        .I1(\temp_x_reg[2]_P_n_0 ),
        .I2(\temp_x_reg[2]_LDC_n_0 ),
        .I3(\temp_x_reg[2]_C_n_0 ),
        .I4(state[2]),
        .I5(x_IBUF[3]),
        .O(temp_x2_in[3]));
  LUT6 #(
    .INIT(64'hFF6A6A00006A6A00)) 
    \temp_x[4]_i_1 
       (.I0(q_OBUF[3]),
        .I1(temp_x1),
        .I2(y_IBUF[0]),
        .I3(state[2]),
        .I4(\temp_x[6]_i_3_n_0 ),
        .I5(r_OBUF[0]),
        .O(\temp_x[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE2E20000E2E200)) 
    \temp_x[5]_i_1 
       (.I0(r_OBUF[0]),
        .I1(temp_x1),
        .I2(temp_x0[5]),
        .I3(state[2]),
        .I4(\temp_x[6]_i_3_n_0 ),
        .I5(r_OBUF[1]),
        .O(\temp_x[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202ADFD5DFD5202A)) 
    \temp_x[5]_i_2 
       (.I0(y_IBUF[0]),
        .I1(\temp_x_reg[3]_P_n_0 ),
        .I2(\temp_x_reg[3]_LDC_n_0 ),
        .I3(\temp_x_reg[3]_C_n_0 ),
        .I4(y_IBUF[1]),
        .I5(r_OBUF[0]),
        .O(temp_x0[5]));
  LUT6 #(
    .INIT(64'hFFE2E20000E2E200)) 
    \temp_x[6]_i_1 
       (.I0(r_OBUF[1]),
        .I1(temp_x1),
        .I2(temp_x0[6]),
        .I3(state[2]),
        .I4(\temp_x[6]_i_3_n_0 ),
        .I5(r_OBUF[2]),
        .O(\temp_x[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4BB4F00F0FF04BB4)) 
    \temp_x[6]_i_2 
       (.I0(q_OBUF[3]),
        .I1(y_IBUF[0]),
        .I2(r_OBUF[1]),
        .I3(y_IBUF[2]),
        .I4(r_OBUF[0]),
        .I5(y_IBUF[1]),
        .O(temp_x0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \temp_x[6]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\temp_x[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \temp_x[7]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(temp_x));
  LUT6 #(
    .INIT(64'h000000E2E2E2E200)) 
    \temp_x[7]_i_2 
       (.I0(r_OBUF[2]),
        .I1(temp_x1),
        .I2(temp_x0[7]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(temp_x2_in[7]));
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \temp_x[7]_i_3 
       (.I0(\temp_x[7]_i_5_n_0 ),
        .I1(y_IBUF[2]),
        .I2(r_OBUF[1]),
        .I3(y_IBUF[3]),
        .I4(r_OBUF[2]),
        .O(temp_x1));
  LUT6 #(
    .INIT(64'h1EE1788787781EE1)) 
    \temp_x[7]_i_4 
       (.I0(\temp_x[7]_i_6_n_0 ),
        .I1(\temp_x[7]_i_7_n_0 ),
        .I2(r_OBUF[2]),
        .I3(y_IBUF[3]),
        .I4(r_OBUF[1]),
        .I5(y_IBUF[2]),
        .O(temp_x0[7]));
  LUT6 #(
    .INIT(64'hDFD5FFFF0000DFD5)) 
    \temp_x[7]_i_5 
       (.I0(y_IBUF[0]),
        .I1(\temp_x_reg[3]_P_n_0 ),
        .I2(\temp_x_reg[3]_LDC_n_0 ),
        .I3(\temp_x_reg[3]_C_n_0 ),
        .I4(y_IBUF[1]),
        .I5(r_OBUF[0]),
        .O(\temp_x[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9909999999090909)) 
    \temp_x[7]_i_6 
       (.I0(y_IBUF[1]),
        .I1(r_OBUF[0]),
        .I2(y_IBUF[0]),
        .I3(\temp_x_reg[3]_P_n_0 ),
        .I4(\temp_x_reg[3]_LDC_n_0 ),
        .I5(\temp_x_reg[3]_C_n_0 ),
        .O(\temp_x[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_x[7]_i_7 
       (.I0(r_OBUF[0]),
        .I1(y_IBUF[1]),
        .O(\temp_x[7]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\temp_x_reg[0]_LDC_i_2_n_0 ),
        .D(\temp_x[0]_C_i_1_n_0 ),
        .Q(\temp_x_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[0]_LDC 
       (.CLR(\temp_x_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\temp_x_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\temp_x_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \temp_x_reg[0]_LDC_i_1 
       (.I0(x_IBUF[0]),
        .I1(rst_IBUF),
        .O(\temp_x_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_x_reg[0]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x_IBUF[0]),
        .O(\temp_x_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \temp_x_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(temp_x),
        .D(temp_x2_in[0]),
        .PRE(\temp_x_reg[0]_LDC_i_1_n_0 ),
        .Q(\temp_x_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\temp_x_reg[1]_LDC_i_2_n_0 ),
        .D(\temp_x[1]_C_i_1_n_0 ),
        .Q(\temp_x_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[1]_LDC 
       (.CLR(\temp_x_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\temp_x_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\temp_x_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \temp_x_reg[1]_LDC_i_1 
       (.I0(x_IBUF[1]),
        .I1(rst_IBUF),
        .O(\temp_x_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_x_reg[1]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x_IBUF[1]),
        .O(\temp_x_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \temp_x_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(temp_x),
        .D(temp_x2_in[1]),
        .PRE(\temp_x_reg[1]_LDC_i_1_n_0 ),
        .Q(\temp_x_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\temp_x_reg[2]_LDC_i_2_n_0 ),
        .D(\temp_x[2]_C_i_1_n_0 ),
        .Q(\temp_x_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[2]_LDC 
       (.CLR(\temp_x_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\temp_x_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\temp_x_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \temp_x_reg[2]_LDC_i_1 
       (.I0(x_IBUF[2]),
        .I1(rst_IBUF),
        .O(\temp_x_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_x_reg[2]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x_IBUF[2]),
        .O(\temp_x_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \temp_x_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(temp_x),
        .D(temp_x2_in[2]),
        .PRE(\temp_x_reg[2]_LDC_i_1_n_0 ),
        .Q(\temp_x_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\temp_x_reg[3]_LDC_i_2_n_0 ),
        .D(\temp_x[3]_C_i_1_n_0 ),
        .Q(\temp_x_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[3]_LDC 
       (.CLR(\temp_x_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\temp_x_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\temp_x_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \temp_x_reg[3]_LDC_i_1 
       (.I0(x_IBUF[3]),
        .I1(rst_IBUF),
        .O(\temp_x_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_x_reg[3]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x_IBUF[3]),
        .O(\temp_x_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \temp_x_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(temp_x),
        .D(temp_x2_in[3]),
        .PRE(\temp_x_reg[3]_LDC_i_1_n_0 ),
        .Q(\temp_x_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\temp_x[4]_i_1_n_0 ),
        .Q(r_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\temp_x[5]_i_1_n_0 ),
        .Q(r_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\temp_x[6]_i_1_n_0 ),
        .Q(r_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_x),
        .CLR(rst_IBUF),
        .D(temp_x2_in[7]),
        .Q(r_OBUF[3]));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  IBUF \y_IBUF[0]_inst 
       (.I(y[0]),
        .O(y_IBUF[0]));
  IBUF \y_IBUF[1]_inst 
       (.I(y[1]),
        .O(y_IBUF[1]));
  IBUF \y_IBUF[2]_inst 
       (.I(y[2]),
        .O(y_IBUF[2]));
  IBUF \y_IBUF[3]_inst 
       (.I(y[3]),
        .O(y_IBUF[3]));
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
