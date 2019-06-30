// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 29 17:02:06 2019
// Host        : DESKTOP-MBF5BR3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/verilog2/lab2_1/lab2_1.sim/sim_1/synth/func/xsim/lab2_1_tb_func_synth.v
// Design      : lab2_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cmp
   (s1_OBUF,
    s2_OBUF,
    s0_OBUF,
    s3_OBUF,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \state_reg[1] ,
    \state_reg[0]_1 ,
    \s1_reg[3]_C ,
    \s1_reg[2]_C ,
    \s1_reg[1]_C ,
    \s1_reg[0]_C ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    \state_reg[1]_2 ,
    \state_reg[1]_3 ,
    \s2_reg[3]_P ,
    \s2_reg[2]_P ,
    \s2_reg[1]_P ,
    \s2_reg[0]_P ,
    \s1_reg[3]_P ,
    \s1_reg[2]_P ,
    \s1_reg[1]_P ,
    \s1_reg[0]_P ,
    Q,
    \s1_reg[3]_C_0 ,
    \s1_reg[3]_C_1 ,
    \s0[3] ,
    \s0[3]_0 ,
    \s0_reg[3]_C ,
    \s1_reg[2]_C_0 ,
    \s1_reg[2]_C_1 ,
    \s0[2] ,
    \s0[2]_0 ,
    \s0_reg[2]_C ,
    \s1_reg[1]_C_0 ,
    \s1_reg[1]_C_1 ,
    \s0[1] ,
    \s0[1]_0 ,
    \s0_reg[1]_C ,
    \s1_reg[0]_C_0 ,
    \s1_reg[0]_C_1 ,
    \s0[0] ,
    \s0[0]_0 ,
    \s0_reg[0]_C ,
    \s2_reg[3]_C ,
    \s2_reg[3]_C_0 ,
    \s2_reg[3]_C_1 ,
    \s3_reg[3]_C ,
    \s2_reg[2]_C ,
    \s2_reg[2]_C_0 ,
    \s2_reg[2]_C_1 ,
    \s3_reg[2]_C ,
    \s2_reg[1]_C ,
    \s2_reg[1]_C_0 ,
    \s2_reg[1]_C_1 ,
    \s3_reg[1]_C ,
    \s2_reg[0]_C ,
    \s2_reg[0]_C_0 ,
    \s2_reg[0]_C_1 ,
    \s3_reg[0]_C ,
    \s3_reg[3]_C_0 ,
    \s3_reg[3]_C_1 ,
    \s3_reg[2]_C_0 ,
    \s3_reg[2]_C_1 ,
    \s3_reg[1]_C_0 ,
    \s3_reg[1]_C_1 ,
    \s3_reg[0]_C_0 ,
    \s3_reg[0]_C_1 ,
    \s0_reg[3]_C_0 ,
    \s0_reg[3]_C_1 ,
    \s0_reg[2]_C_0 ,
    \s0_reg[2]_C_1 ,
    \s0_reg[1]_C_0 ,
    \s0_reg[1]_C_1 ,
    \s0_reg[0]_C_0 ,
    \s0_reg[0]_C_1 );
  output [3:0]s1_OBUF;
  output [3:0]s2_OBUF;
  output [3:0]s0_OBUF;
  output [3:0]s3_OBUF;
  output \state_reg[0] ;
  output \state_reg[0]_0 ;
  output \state_reg[1] ;
  output \state_reg[0]_1 ;
  output \s1_reg[3]_C ;
  output \s1_reg[2]_C ;
  output \s1_reg[1]_C ;
  output \s1_reg[0]_C ;
  output \state_reg[1]_0 ;
  output \state_reg[1]_1 ;
  output \state_reg[1]_2 ;
  output \state_reg[1]_3 ;
  output \s2_reg[3]_P ;
  output \s2_reg[2]_P ;
  output \s2_reg[1]_P ;
  output \s2_reg[0]_P ;
  output \s1_reg[3]_P ;
  output \s1_reg[2]_P ;
  output \s1_reg[1]_P ;
  output \s1_reg[0]_P ;
  input [2:0]Q;
  input \s1_reg[3]_C_0 ;
  input \s1_reg[3]_C_1 ;
  input \s0[3] ;
  input \s0[3]_0 ;
  input \s0_reg[3]_C ;
  input \s1_reg[2]_C_0 ;
  input \s1_reg[2]_C_1 ;
  input \s0[2] ;
  input \s0[2]_0 ;
  input \s0_reg[2]_C ;
  input \s1_reg[1]_C_0 ;
  input \s1_reg[1]_C_1 ;
  input \s0[1] ;
  input \s0[1]_0 ;
  input \s0_reg[1]_C ;
  input \s1_reg[0]_C_0 ;
  input \s1_reg[0]_C_1 ;
  input \s0[0] ;
  input \s0[0]_0 ;
  input \s0_reg[0]_C ;
  input \s2_reg[3]_C ;
  input \s2_reg[3]_C_0 ;
  input \s2_reg[3]_C_1 ;
  input \s3_reg[3]_C ;
  input \s2_reg[2]_C ;
  input \s2_reg[2]_C_0 ;
  input \s2_reg[2]_C_1 ;
  input \s3_reg[2]_C ;
  input \s2_reg[1]_C ;
  input \s2_reg[1]_C_0 ;
  input \s2_reg[1]_C_1 ;
  input \s3_reg[1]_C ;
  input \s2_reg[0]_C ;
  input \s2_reg[0]_C_0 ;
  input \s2_reg[0]_C_1 ;
  input \s3_reg[0]_C ;
  input \s3_reg[3]_C_0 ;
  input \s3_reg[3]_C_1 ;
  input \s3_reg[2]_C_0 ;
  input \s3_reg[2]_C_1 ;
  input \s3_reg[1]_C_0 ;
  input \s3_reg[1]_C_1 ;
  input \s3_reg[0]_C_0 ;
  input \s3_reg[0]_C_1 ;
  input \s0_reg[3]_C_0 ;
  input \s0_reg[3]_C_1 ;
  input \s0_reg[2]_C_0 ;
  input \s0_reg[2]_C_1 ;
  input \s0_reg[1]_C_0 ;
  input \s0_reg[1]_C_1 ;
  input \s0_reg[0]_C_0 ;
  input \s0_reg[0]_C_1 ;

  wire [2:0]Q;
  wire \s0[0] ;
  wire \s0[0]_0 ;
  wire \s0[1] ;
  wire \s0[1]_0 ;
  wire \s0[2] ;
  wire \s0[2]_0 ;
  wire \s0[3] ;
  wire \s0[3]_0 ;
  wire \s0[3]_P_i_2_n_0 ;
  wire [3:0]s0_OBUF;
  wire \s0_reg[0]_C ;
  wire \s0_reg[0]_C_0 ;
  wire \s0_reg[0]_C_1 ;
  wire \s0_reg[1]_C ;
  wire \s0_reg[1]_C_0 ;
  wire \s0_reg[1]_C_1 ;
  wire \s0_reg[2]_C ;
  wire \s0_reg[2]_C_0 ;
  wire \s0_reg[2]_C_1 ;
  wire \s0_reg[3]_C ;
  wire \s0_reg[3]_C_0 ;
  wire \s0_reg[3]_C_1 ;
  wire [3:0]s1_OBUF;
  wire \s1_reg[0]_C ;
  wire \s1_reg[0]_C_0 ;
  wire \s1_reg[0]_C_1 ;
  wire \s1_reg[0]_P ;
  wire \s1_reg[1]_C ;
  wire \s1_reg[1]_C_0 ;
  wire \s1_reg[1]_C_1 ;
  wire \s1_reg[1]_P ;
  wire \s1_reg[2]_C ;
  wire \s1_reg[2]_C_0 ;
  wire \s1_reg[2]_C_1 ;
  wire \s1_reg[2]_P ;
  wire \s1_reg[3]_C ;
  wire \s1_reg[3]_C_0 ;
  wire \s1_reg[3]_C_1 ;
  wire \s1_reg[3]_P ;
  wire [3:0]s2_OBUF;
  wire \s2_reg[0]_C ;
  wire \s2_reg[0]_C_0 ;
  wire \s2_reg[0]_C_1 ;
  wire \s2_reg[0]_P ;
  wire \s2_reg[1]_C ;
  wire \s2_reg[1]_C_0 ;
  wire \s2_reg[1]_C_1 ;
  wire \s2_reg[1]_P ;
  wire \s2_reg[2]_C ;
  wire \s2_reg[2]_C_0 ;
  wire \s2_reg[2]_C_1 ;
  wire \s2_reg[2]_P ;
  wire \s2_reg[3]_C ;
  wire \s2_reg[3]_C_0 ;
  wire \s2_reg[3]_C_1 ;
  wire \s2_reg[3]_P ;
  wire [3:0]s3_OBUF;
  wire \s3_reg[0]_C ;
  wire \s3_reg[0]_C_0 ;
  wire \s3_reg[0]_C_1 ;
  wire \s3_reg[1]_C ;
  wire \s3_reg[1]_C_0 ;
  wire \s3_reg[1]_C_1 ;
  wire \s3_reg[2]_C ;
  wire \s3_reg[2]_C_0 ;
  wire \s3_reg[2]_C_1 ;
  wire \s3_reg[3]_C ;
  wire \s3_reg[3]_C_0 ;
  wire \s3_reg[3]_C_1 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire [3:0]temp1;
  wire \temp1_reg[0]_i_1_n_0 ;
  wire \temp1_reg[1]_i_1_n_0 ;
  wire \temp1_reg[2]_i_1_n_0 ;
  wire \temp1_reg[3]_i_1_n_0 ;
  wire \temp1_reg[3]_i_2_n_0 ;
  wire [3:0]temp2;
  wire \temp2_reg[0]_i_1_n_0 ;
  wire \temp2_reg[1]_i_1_n_0 ;
  wire \temp2_reg[2]_i_1_n_0 ;
  wire \temp2_reg[3]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s0[0]_C_i_1 
       (.I0(\s0_reg[0]_C_0 ),
        .I1(\s0_reg[0]_C_1 ),
        .I2(\s1_reg[0]_C_1 ),
        .I3(\state_reg[0]_0 ),
        .I4(\s0_reg[0]_C ),
        .O(\s1_reg[0]_P ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s0[1]_C_i_1 
       (.I0(\s0_reg[1]_C_0 ),
        .I1(\s0_reg[1]_C_1 ),
        .I2(\s1_reg[1]_C_1 ),
        .I3(\state_reg[0]_0 ),
        .I4(\s0_reg[1]_C ),
        .O(\s1_reg[1]_P ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s0[2]_C_i_1 
       (.I0(\s0_reg[2]_C_0 ),
        .I1(\s0_reg[2]_C_1 ),
        .I2(\s1_reg[2]_C_1 ),
        .I3(\state_reg[0]_0 ),
        .I4(\s0_reg[2]_C ),
        .O(\s1_reg[2]_P ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s0[3]_C_i_1 
       (.I0(\s0_reg[3]_C_0 ),
        .I1(\s0_reg[3]_C_1 ),
        .I2(\s1_reg[3]_C_1 ),
        .I3(\state_reg[0]_0 ),
        .I4(\s0_reg[3]_C ),
        .O(\s1_reg[3]_P ));
  LUT6 #(
    .INIT(64'h00002B002B00002B)) 
    \s0[3]_P_i_1 
       (.I0(temp2[3]),
        .I1(temp1[3]),
        .I2(\s0[3]_P_i_2_n_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \s0[3]_P_i_2 
       (.I0(temp2[2]),
        .I1(temp1[2]),
        .I2(temp1[0]),
        .I3(temp2[0]),
        .I4(temp1[1]),
        .I5(temp2[1]),
        .O(\s0[3]_P_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s0_OBUF[0]_inst_i_1 
       (.I0(\s0[0] ),
        .I1(\s0[0]_0 ),
        .I2(\s0_reg[0]_C ),
        .O(s0_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s0_OBUF[1]_inst_i_1 
       (.I0(\s0[1] ),
        .I1(\s0[1]_0 ),
        .I2(\s0_reg[1]_C ),
        .O(s0_OBUF[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s0_OBUF[2]_inst_i_1 
       (.I0(\s0[2] ),
        .I1(\s0[2]_0 ),
        .I2(\s0_reg[2]_C ),
        .O(s0_OBUF[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s0_OBUF[3]_inst_i_1 
       (.I0(\s0[3] ),
        .I1(\s0[3]_0 ),
        .I2(\s0_reg[3]_C ),
        .O(s0_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s1[0]_C_i_1 
       (.I0(\s1_reg[0]_C_0 ),
        .I1(\state_reg[1] ),
        .I2(\s1_reg[0]_C_1 ),
        .O(\s1_reg[0]_C ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s1[1]_C_i_1 
       (.I0(\s1_reg[1]_C_0 ),
        .I1(\state_reg[1] ),
        .I2(\s1_reg[1]_C_1 ),
        .O(\s1_reg[1]_C ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s1[2]_C_i_1 
       (.I0(\s1_reg[2]_C_0 ),
        .I1(\state_reg[1] ),
        .I2(\s1_reg[2]_C_1 ),
        .O(\s1_reg[2]_C ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s1[3]_C_i_1 
       (.I0(\s1_reg[3]_C_0 ),
        .I1(\state_reg[1] ),
        .I2(\s1_reg[3]_C_1 ),
        .O(\s1_reg[3]_C ));
  LUT6 #(
    .INIT(64'h002B002B2B2B002B)) 
    \s1[3]_P_i_1 
       (.I0(temp2[3]),
        .I1(temp1[3]),
        .I2(\s0[3]_P_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s1_OBUF[0]_inst_i_1 
       (.I0(\s0_reg[0]_C_0 ),
        .I1(\s0_reg[0]_C_1 ),
        .I2(\s1_reg[0]_C_1 ),
        .O(s1_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s1_OBUF[1]_inst_i_1 
       (.I0(\s0_reg[1]_C_0 ),
        .I1(\s0_reg[1]_C_1 ),
        .I2(\s1_reg[1]_C_1 ),
        .O(s1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s1_OBUF[2]_inst_i_1 
       (.I0(\s0_reg[2]_C_0 ),
        .I1(\s0_reg[2]_C_1 ),
        .I2(\s1_reg[2]_C_1 ),
        .O(s1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s1_OBUF[3]_inst_i_1 
       (.I0(\s0_reg[3]_C_0 ),
        .I1(\s0_reg[3]_C_1 ),
        .I2(\s1_reg[3]_C_1 ),
        .O(s1_OBUF[3]));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \s2[0]_C_i_1 
       (.I0(s3_OBUF[0]),
        .I1(s1_OBUF[0]),
        .I2(Q[1]),
        .I3(\state_reg[0] ),
        .I4(\s2_reg[0]_C ),
        .O(\state_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \s2[1]_C_i_1 
       (.I0(s3_OBUF[1]),
        .I1(s1_OBUF[1]),
        .I2(Q[1]),
        .I3(\state_reg[0] ),
        .I4(\s2_reg[1]_C ),
        .O(\state_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \s2[2]_C_i_1 
       (.I0(s3_OBUF[2]),
        .I1(s1_OBUF[2]),
        .I2(Q[1]),
        .I3(\state_reg[0] ),
        .I4(\s2_reg[2]_C ),
        .O(\state_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \s2[3]_C_i_1 
       (.I0(s3_OBUF[3]),
        .I1(s1_OBUF[3]),
        .I2(Q[1]),
        .I3(\state_reg[0] ),
        .I4(\s2_reg[3]_C ),
        .O(\state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000002B002B2B00)) 
    \s2[3]_P_i_1 
       (.I0(temp2[3]),
        .I1(temp1[3]),
        .I2(\s0[3]_P_i_2_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s2_OBUF[0]_inst_i_1 
       (.I0(\s3_reg[0]_C_0 ),
        .I1(\s3_reg[0]_C_1 ),
        .I2(\s2_reg[0]_C ),
        .O(s2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s2_OBUF[1]_inst_i_1 
       (.I0(\s3_reg[1]_C_0 ),
        .I1(\s3_reg[1]_C_1 ),
        .I2(\s2_reg[1]_C ),
        .O(s2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s2_OBUF[2]_inst_i_1 
       (.I0(\s3_reg[2]_C_0 ),
        .I1(\s3_reg[2]_C_1 ),
        .I2(\s2_reg[2]_C ),
        .O(s2_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s2_OBUF[3]_inst_i_1 
       (.I0(\s3_reg[3]_C_0 ),
        .I1(\s3_reg[3]_C_1 ),
        .I2(\s2_reg[3]_C ),
        .O(s2_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s3[0]_C_i_1 
       (.I0(\s3_reg[0]_C_0 ),
        .I1(\s3_reg[0]_C_1 ),
        .I2(\s2_reg[0]_C ),
        .I3(\state_reg[0]_1 ),
        .I4(\s3_reg[0]_C ),
        .O(\s2_reg[0]_P ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s3[1]_C_i_1 
       (.I0(\s3_reg[1]_C_0 ),
        .I1(\s3_reg[1]_C_1 ),
        .I2(\s2_reg[1]_C ),
        .I3(\state_reg[0]_1 ),
        .I4(\s3_reg[1]_C ),
        .O(\s2_reg[1]_P ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s3[2]_C_i_1 
       (.I0(\s3_reg[2]_C_0 ),
        .I1(\s3_reg[2]_C_1 ),
        .I2(\s2_reg[2]_C ),
        .I3(\state_reg[0]_1 ),
        .I4(\s3_reg[2]_C ),
        .O(\s2_reg[2]_P ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s3[3]_C_i_1 
       (.I0(\s3_reg[3]_C_0 ),
        .I1(\s3_reg[3]_C_1 ),
        .I2(\s2_reg[3]_C ),
        .I3(\state_reg[0]_1 ),
        .I4(\s3_reg[3]_C ),
        .O(\s2_reg[3]_P ));
  LUT6 #(
    .INIT(64'h00000000002B0000)) 
    \s3[3]_P_i_1 
       (.I0(temp2[3]),
        .I1(temp1[3]),
        .I2(\s0[3]_P_i_2_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\state_reg[0]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s3_OBUF[0]_inst_i_1 
       (.I0(\s2_reg[0]_C_0 ),
        .I1(\s2_reg[0]_C_1 ),
        .I2(\s3_reg[0]_C ),
        .O(s3_OBUF[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s3_OBUF[1]_inst_i_1 
       (.I0(\s2_reg[1]_C_0 ),
        .I1(\s2_reg[1]_C_1 ),
        .I2(\s3_reg[1]_C ),
        .O(s3_OBUF[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s3_OBUF[2]_inst_i_1 
       (.I0(\s2_reg[2]_C_0 ),
        .I1(\s2_reg[2]_C_1 ),
        .I2(\s3_reg[2]_C ),
        .O(s3_OBUF[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s3_OBUF[3]_inst_i_1 
       (.I0(\s2_reg[3]_C_0 ),
        .I1(\s2_reg[3]_C_1 ),
        .I2(\s3_reg[3]_C ),
        .O(s3_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp1_reg[0] 
       (.CLR(1'b0),
        .D(\temp1_reg[0]_i_1_n_0 ),
        .G(\temp1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp1[0]));
  LUT6 #(
    .INIT(64'hFFEE0022B8BBB888)) 
    \temp1_reg[0]_i_1 
       (.I0(s2_OBUF[0]),
        .I1(Q[2]),
        .I2(s3_OBUF[0]),
        .I3(Q[1]),
        .I4(s1_OBUF[0]),
        .I5(Q[0]),
        .O(\temp1_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp1_reg[1] 
       (.CLR(1'b0),
        .D(\temp1_reg[1]_i_1_n_0 ),
        .G(\temp1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp1[1]));
  LUT6 #(
    .INIT(64'hFFEE0022B8BBB888)) 
    \temp1_reg[1]_i_1 
       (.I0(s2_OBUF[1]),
        .I1(Q[2]),
        .I2(s3_OBUF[1]),
        .I3(Q[1]),
        .I4(s1_OBUF[1]),
        .I5(Q[0]),
        .O(\temp1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp1_reg[2] 
       (.CLR(1'b0),
        .D(\temp1_reg[2]_i_1_n_0 ),
        .G(\temp1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp1[2]));
  LUT6 #(
    .INIT(64'hFFEE0022B8BBB888)) 
    \temp1_reg[2]_i_1 
       (.I0(s2_OBUF[2]),
        .I1(Q[2]),
        .I2(s3_OBUF[2]),
        .I3(Q[1]),
        .I4(s1_OBUF[2]),
        .I5(Q[0]),
        .O(\temp1_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp1_reg[3] 
       (.CLR(1'b0),
        .D(\temp1_reg[3]_i_1_n_0 ),
        .G(\temp1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp1[3]));
  LUT6 #(
    .INIT(64'hFFEE0022B8BBB888)) 
    \temp1_reg[3]_i_1 
       (.I0(s2_OBUF[3]),
        .I1(Q[2]),
        .I2(s3_OBUF[3]),
        .I3(Q[1]),
        .I4(s1_OBUF[3]),
        .I5(Q[0]),
        .O(\temp1_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \temp1_reg[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\temp1_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp2_reg[0] 
       (.CLR(1'b0),
        .D(\temp2_reg[0]_i_1_n_0 ),
        .G(\temp1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp2[0]));
  LUT6 #(
    .INIT(64'hFFEE0022B8BBB888)) 
    \temp2_reg[0]_i_1 
       (.I0(s1_OBUF[0]),
        .I1(Q[2]),
        .I2(s2_OBUF[0]),
        .I3(Q[1]),
        .I4(s0_OBUF[0]),
        .I5(Q[0]),
        .O(\temp2_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp2_reg[1] 
       (.CLR(1'b0),
        .D(\temp2_reg[1]_i_1_n_0 ),
        .G(\temp1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp2[1]));
  LUT6 #(
    .INIT(64'hFFEE0022B8BBB888)) 
    \temp2_reg[1]_i_1 
       (.I0(s1_OBUF[1]),
        .I1(Q[2]),
        .I2(s2_OBUF[1]),
        .I3(Q[1]),
        .I4(s0_OBUF[1]),
        .I5(Q[0]),
        .O(\temp2_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp2_reg[2] 
       (.CLR(1'b0),
        .D(\temp2_reg[2]_i_1_n_0 ),
        .G(\temp1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp2[2]));
  LUT6 #(
    .INIT(64'hFFEE0022B8BBB888)) 
    \temp2_reg[2]_i_1 
       (.I0(s1_OBUF[2]),
        .I1(Q[2]),
        .I2(s2_OBUF[2]),
        .I3(Q[1]),
        .I4(s0_OBUF[2]),
        .I5(Q[0]),
        .O(\temp2_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp2_reg[3] 
       (.CLR(1'b0),
        .D(\temp2_reg[3]_i_1_n_0 ),
        .G(\temp1_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp2[3]));
  LUT6 #(
    .INIT(64'hFFEE0022B8BBB888)) 
    \temp2_reg[3]_i_1 
       (.I0(s1_OBUF[3]),
        .I1(Q[2]),
        .I2(s2_OBUF[3]),
        .I3(Q[1]),
        .I4(s0_OBUF[3]),
        .I5(Q[0]),
        .O(\temp2_reg[3]_i_1_n_0 ));
endmodule

(* NotValidForBitStream *)
module lab2_1
   (x0,
    x1,
    x2,
    x3,
    rst,
    clk,
    s0,
    s1,
    s2,
    s3,
    done);
  input [3:0]x0;
  input [3:0]x1;
  input [3:0]x2;
  input [3:0]x3;
  input rst;
  input clk;
  output [3:0]s0;
  output [3:0]s1;
  output [3:0]s2;
  output [3:0]s3;
  output done;

  wire CMP_n_16;
  wire CMP_n_17;
  wire CMP_n_18;
  wire CMP_n_19;
  wire CMP_n_20;
  wire CMP_n_21;
  wire CMP_n_22;
  wire CMP_n_23;
  wire CMP_n_24;
  wire CMP_n_25;
  wire CMP_n_26;
  wire CMP_n_27;
  wire CMP_n_28;
  wire CMP_n_29;
  wire CMP_n_30;
  wire CMP_n_31;
  wire CMP_n_32;
  wire CMP_n_33;
  wire CMP_n_34;
  wire CMP_n_35;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire done;
  wire done_OBUF;
  wire done_i_1_n_0;
  wire [2:0]p_1_in;
  wire [3:0]p_2_in;
  wire rst;
  wire rst_IBUF;
  wire [3:0]s0;
  wire [3:0]s0_OBUF;
  wire \s0_reg[0]_C_n_0 ;
  wire \s0_reg[0]_LDC_i_1_n_0 ;
  wire \s0_reg[0]_LDC_i_2_n_0 ;
  wire \s0_reg[0]_LDC_n_0 ;
  wire \s0_reg[0]_P_n_0 ;
  wire \s0_reg[1]_C_n_0 ;
  wire \s0_reg[1]_LDC_i_1_n_0 ;
  wire \s0_reg[1]_LDC_i_2_n_0 ;
  wire \s0_reg[1]_LDC_n_0 ;
  wire \s0_reg[1]_P_n_0 ;
  wire \s0_reg[2]_C_n_0 ;
  wire \s0_reg[2]_LDC_i_1_n_0 ;
  wire \s0_reg[2]_LDC_i_2_n_0 ;
  wire \s0_reg[2]_LDC_n_0 ;
  wire \s0_reg[2]_P_n_0 ;
  wire \s0_reg[3]_C_n_0 ;
  wire \s0_reg[3]_LDC_i_1_n_0 ;
  wire \s0_reg[3]_LDC_i_2_n_0 ;
  wire \s0_reg[3]_LDC_n_0 ;
  wire \s0_reg[3]_P_n_0 ;
  wire [3:0]s1;
  wire \s1[0]_P_i_1_n_0 ;
  wire \s1[1]_P_i_1_n_0 ;
  wire \s1[2]_P_i_1_n_0 ;
  wire \s1[3]_P_i_2_n_0 ;
  wire [3:0]s1_OBUF;
  wire \s1_reg[0]_C_n_0 ;
  wire \s1_reg[0]_LDC_i_1_n_0 ;
  wire \s1_reg[0]_LDC_i_2_n_0 ;
  wire \s1_reg[0]_LDC_n_0 ;
  wire \s1_reg[0]_P_n_0 ;
  wire \s1_reg[1]_C_n_0 ;
  wire \s1_reg[1]_LDC_i_1_n_0 ;
  wire \s1_reg[1]_LDC_i_2_n_0 ;
  wire \s1_reg[1]_LDC_n_0 ;
  wire \s1_reg[1]_P_n_0 ;
  wire \s1_reg[2]_C_n_0 ;
  wire \s1_reg[2]_LDC_i_1_n_0 ;
  wire \s1_reg[2]_LDC_i_2_n_0 ;
  wire \s1_reg[2]_LDC_n_0 ;
  wire \s1_reg[2]_P_n_0 ;
  wire \s1_reg[3]_C_n_0 ;
  wire \s1_reg[3]_LDC_i_1_n_0 ;
  wire \s1_reg[3]_LDC_i_2_n_0 ;
  wire \s1_reg[3]_LDC_n_0 ;
  wire \s1_reg[3]_P_n_0 ;
  wire [3:0]s2;
  wire [3:0]s2_OBUF;
  wire \s2_reg[0]_C_n_0 ;
  wire \s2_reg[0]_LDC_i_1_n_0 ;
  wire \s2_reg[0]_LDC_i_2_n_0 ;
  wire \s2_reg[0]_LDC_n_0 ;
  wire \s2_reg[0]_P_n_0 ;
  wire \s2_reg[1]_C_n_0 ;
  wire \s2_reg[1]_LDC_i_1_n_0 ;
  wire \s2_reg[1]_LDC_i_2_n_0 ;
  wire \s2_reg[1]_LDC_n_0 ;
  wire \s2_reg[1]_P_n_0 ;
  wire \s2_reg[2]_C_n_0 ;
  wire \s2_reg[2]_LDC_i_1_n_0 ;
  wire \s2_reg[2]_LDC_i_2_n_0 ;
  wire \s2_reg[2]_LDC_n_0 ;
  wire \s2_reg[2]_P_n_0 ;
  wire \s2_reg[3]_C_n_0 ;
  wire \s2_reg[3]_LDC_i_1_n_0 ;
  wire \s2_reg[3]_LDC_i_2_n_0 ;
  wire \s2_reg[3]_LDC_n_0 ;
  wire \s2_reg[3]_P_n_0 ;
  wire [3:0]s3;
  wire [3:0]s3_OBUF;
  wire \s3_reg[0]_C_n_0 ;
  wire \s3_reg[0]_LDC_i_1_n_0 ;
  wire \s3_reg[0]_LDC_i_2_n_0 ;
  wire \s3_reg[0]_LDC_n_0 ;
  wire \s3_reg[0]_P_n_0 ;
  wire \s3_reg[1]_C_n_0 ;
  wire \s3_reg[1]_LDC_i_1_n_0 ;
  wire \s3_reg[1]_LDC_i_2_n_0 ;
  wire \s3_reg[1]_LDC_n_0 ;
  wire \s3_reg[1]_P_n_0 ;
  wire \s3_reg[2]_C_n_0 ;
  wire \s3_reg[2]_LDC_i_1_n_0 ;
  wire \s3_reg[2]_LDC_i_2_n_0 ;
  wire \s3_reg[2]_LDC_n_0 ;
  wire \s3_reg[2]_P_n_0 ;
  wire \s3_reg[3]_C_n_0 ;
  wire \s3_reg[3]_LDC_i_1_n_0 ;
  wire \s3_reg[3]_LDC_i_2_n_0 ;
  wire \s3_reg[3]_LDC_n_0 ;
  wire \s3_reg[3]_P_n_0 ;
  wire [2:0]state;
  wire \state[2]_i_1_n_0 ;
  wire [3:0]x0;
  wire [3:0]x0_IBUF;
  wire [3:0]x1;
  wire [3:0]x1_IBUF;
  wire [3:0]x2;
  wire [3:0]x2_IBUF;
  wire [3:0]x3;
  wire [3:0]x3_IBUF;

  cmp CMP
       (.Q(state),
        .\s0[0] (\s0_reg[0]_P_n_0 ),
        .\s0[0]_0 (\s0_reg[0]_LDC_n_0 ),
        .\s0[1] (\s0_reg[1]_P_n_0 ),
        .\s0[1]_0 (\s0_reg[1]_LDC_n_0 ),
        .\s0[2] (\s0_reg[2]_P_n_0 ),
        .\s0[2]_0 (\s0_reg[2]_LDC_n_0 ),
        .\s0[3] (\s0_reg[3]_P_n_0 ),
        .\s0[3]_0 (\s0_reg[3]_LDC_n_0 ),
        .s0_OBUF(s0_OBUF),
        .\s0_reg[0]_C (\s0_reg[0]_C_n_0 ),
        .\s0_reg[0]_C_0 (\s1_reg[0]_P_n_0 ),
        .\s0_reg[0]_C_1 (\s1_reg[0]_LDC_n_0 ),
        .\s0_reg[1]_C (\s0_reg[1]_C_n_0 ),
        .\s0_reg[1]_C_0 (\s1_reg[1]_P_n_0 ),
        .\s0_reg[1]_C_1 (\s1_reg[1]_LDC_n_0 ),
        .\s0_reg[2]_C (\s0_reg[2]_C_n_0 ),
        .\s0_reg[2]_C_0 (\s1_reg[2]_P_n_0 ),
        .\s0_reg[2]_C_1 (\s1_reg[2]_LDC_n_0 ),
        .\s0_reg[3]_C (\s0_reg[3]_C_n_0 ),
        .\s0_reg[3]_C_0 (\s1_reg[3]_P_n_0 ),
        .\s0_reg[3]_C_1 (\s1_reg[3]_LDC_n_0 ),
        .s1_OBUF(s1_OBUF),
        .\s1_reg[0]_C (CMP_n_23),
        .\s1_reg[0]_C_0 (\s1[0]_P_i_1_n_0 ),
        .\s1_reg[0]_C_1 (\s1_reg[0]_C_n_0 ),
        .\s1_reg[0]_P (CMP_n_35),
        .\s1_reg[1]_C (CMP_n_22),
        .\s1_reg[1]_C_0 (\s1[1]_P_i_1_n_0 ),
        .\s1_reg[1]_C_1 (\s1_reg[1]_C_n_0 ),
        .\s1_reg[1]_P (CMP_n_34),
        .\s1_reg[2]_C (CMP_n_21),
        .\s1_reg[2]_C_0 (\s1[2]_P_i_1_n_0 ),
        .\s1_reg[2]_C_1 (\s1_reg[2]_C_n_0 ),
        .\s1_reg[2]_P (CMP_n_33),
        .\s1_reg[3]_C (CMP_n_20),
        .\s1_reg[3]_C_0 (\s1[3]_P_i_2_n_0 ),
        .\s1_reg[3]_C_1 (\s1_reg[3]_C_n_0 ),
        .\s1_reg[3]_P (CMP_n_32),
        .s2_OBUF(s2_OBUF),
        .\s2_reg[0]_C (\s2_reg[0]_C_n_0 ),
        .\s2_reg[0]_C_0 (\s3_reg[0]_P_n_0 ),
        .\s2_reg[0]_C_1 (\s3_reg[0]_LDC_n_0 ),
        .\s2_reg[0]_P (CMP_n_31),
        .\s2_reg[1]_C (\s2_reg[1]_C_n_0 ),
        .\s2_reg[1]_C_0 (\s3_reg[1]_P_n_0 ),
        .\s2_reg[1]_C_1 (\s3_reg[1]_LDC_n_0 ),
        .\s2_reg[1]_P (CMP_n_30),
        .\s2_reg[2]_C (\s2_reg[2]_C_n_0 ),
        .\s2_reg[2]_C_0 (\s3_reg[2]_P_n_0 ),
        .\s2_reg[2]_C_1 (\s3_reg[2]_LDC_n_0 ),
        .\s2_reg[2]_P (CMP_n_29),
        .\s2_reg[3]_C (\s2_reg[3]_C_n_0 ),
        .\s2_reg[3]_C_0 (\s3_reg[3]_P_n_0 ),
        .\s2_reg[3]_C_1 (\s3_reg[3]_LDC_n_0 ),
        .\s2_reg[3]_P (CMP_n_28),
        .s3_OBUF(s3_OBUF),
        .\s3_reg[0]_C (\s3_reg[0]_C_n_0 ),
        .\s3_reg[0]_C_0 (\s2_reg[0]_P_n_0 ),
        .\s3_reg[0]_C_1 (\s2_reg[0]_LDC_n_0 ),
        .\s3_reg[1]_C (\s3_reg[1]_C_n_0 ),
        .\s3_reg[1]_C_0 (\s2_reg[1]_P_n_0 ),
        .\s3_reg[1]_C_1 (\s2_reg[1]_LDC_n_0 ),
        .\s3_reg[2]_C (\s3_reg[2]_C_n_0 ),
        .\s3_reg[2]_C_0 (\s2_reg[2]_P_n_0 ),
        .\s3_reg[2]_C_1 (\s2_reg[2]_LDC_n_0 ),
        .\s3_reg[3]_C (\s3_reg[3]_C_n_0 ),
        .\s3_reg[3]_C_0 (\s2_reg[3]_P_n_0 ),
        .\s3_reg[3]_C_1 (\s2_reg[3]_LDC_n_0 ),
        .\state_reg[0] (CMP_n_16),
        .\state_reg[0]_0 (CMP_n_17),
        .\state_reg[0]_1 (CMP_n_19),
        .\state_reg[1] (CMP_n_18),
        .\state_reg[1]_0 (CMP_n_24),
        .\state_reg[1]_1 (CMP_n_25),
        .\state_reg[1]_2 (CMP_n_26),
        .\state_reg[1]_3 (CMP_n_27));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  LUT2 #(
    .INIT(4'h8)) 
    done_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .O(done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .CLR(rst_IBUF),
        .D(1'b1),
        .Q(done_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \s0_OBUF[0]_inst 
       (.I(s0_OBUF[0]),
        .O(s0[0]));
  OBUF \s0_OBUF[1]_inst 
       (.I(s0_OBUF[1]),
        .O(s0[1]));
  OBUF \s0_OBUF[2]_inst 
       (.I(s0_OBUF[2]),
        .O(s0[2]));
  OBUF \s0_OBUF[3]_inst 
       (.I(s0_OBUF[3]),
        .O(s0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \s0_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s0_reg[0]_LDC_i_2_n_0 ),
        .D(CMP_n_35),
        .Q(\s0_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s0_reg[0]_LDC 
       (.CLR(\s0_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s0_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s0_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s0_reg[0]_LDC_i_1 
       (.I0(x0_IBUF[0]),
        .I1(rst_IBUF),
        .O(\s0_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s0_reg[0]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x0_IBUF[0]),
        .O(\s0_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s0_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_17),
        .D(s1_OBUF[0]),
        .PRE(\s0_reg[0]_LDC_i_1_n_0 ),
        .Q(\s0_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s0_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s0_reg[1]_LDC_i_2_n_0 ),
        .D(CMP_n_34),
        .Q(\s0_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s0_reg[1]_LDC 
       (.CLR(\s0_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s0_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s0_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s0_reg[1]_LDC_i_1 
       (.I0(x0_IBUF[1]),
        .I1(rst_IBUF),
        .O(\s0_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s0_reg[1]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x0_IBUF[1]),
        .O(\s0_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s0_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_17),
        .D(s1_OBUF[1]),
        .PRE(\s0_reg[1]_LDC_i_1_n_0 ),
        .Q(\s0_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s0_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s0_reg[2]_LDC_i_2_n_0 ),
        .D(CMP_n_33),
        .Q(\s0_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s0_reg[2]_LDC 
       (.CLR(\s0_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s0_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s0_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s0_reg[2]_LDC_i_1 
       (.I0(x0_IBUF[2]),
        .I1(rst_IBUF),
        .O(\s0_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s0_reg[2]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x0_IBUF[2]),
        .O(\s0_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s0_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_17),
        .D(s1_OBUF[2]),
        .PRE(\s0_reg[2]_LDC_i_1_n_0 ),
        .Q(\s0_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s0_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s0_reg[3]_LDC_i_2_n_0 ),
        .D(CMP_n_32),
        .Q(\s0_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s0_reg[3]_LDC 
       (.CLR(\s0_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s0_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s0_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s0_reg[3]_LDC_i_1 
       (.I0(x0_IBUF[3]),
        .I1(rst_IBUF),
        .O(\s0_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s0_reg[3]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x0_IBUF[3]),
        .O(\s0_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s0_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_17),
        .D(s1_OBUF[3]),
        .PRE(\s0_reg[3]_LDC_i_1_n_0 ),
        .Q(\s0_reg[3]_P_n_0 ));
  LUT5 #(
    .INIT(32'hFF00ED48)) 
    \s1[0]_P_i_1 
       (.I0(state[0]),
        .I1(s2_OBUF[0]),
        .I2(state[2]),
        .I3(s0_OBUF[0]),
        .I4(state[1]),
        .O(\s1[0]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFF00ED48)) 
    \s1[1]_P_i_1 
       (.I0(state[0]),
        .I1(s2_OBUF[1]),
        .I2(state[2]),
        .I3(s0_OBUF[1]),
        .I4(state[1]),
        .O(\s1[1]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF00ED48)) 
    \s1[2]_P_i_1 
       (.I0(state[0]),
        .I1(s2_OBUF[2]),
        .I2(state[2]),
        .I3(s0_OBUF[2]),
        .I4(state[1]),
        .O(\s1[2]_P_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF00ED48)) 
    \s1[3]_P_i_2 
       (.I0(state[0]),
        .I1(s2_OBUF[3]),
        .I2(state[2]),
        .I3(s0_OBUF[3]),
        .I4(state[1]),
        .O(\s1[3]_P_i_2_n_0 ));
  OBUF \s1_OBUF[0]_inst 
       (.I(s1_OBUF[0]),
        .O(s1[0]));
  OBUF \s1_OBUF[1]_inst 
       (.I(s1_OBUF[1]),
        .O(s1[1]));
  OBUF \s1_OBUF[2]_inst 
       (.I(s1_OBUF[2]),
        .O(s1[2]));
  OBUF \s1_OBUF[3]_inst 
       (.I(s1_OBUF[3]),
        .O(s1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s1_reg[0]_LDC_i_2_n_0 ),
        .D(CMP_n_23),
        .Q(\s1_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_reg[0]_LDC 
       (.CLR(\s1_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s1_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s1_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s1_reg[0]_LDC_i_1 
       (.I0(x1_IBUF[0]),
        .I1(rst_IBUF),
        .O(\s1_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s1_reg[0]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x1_IBUF[0]),
        .O(\s1_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s1_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_18),
        .D(\s1[0]_P_i_1_n_0 ),
        .PRE(\s1_reg[0]_LDC_i_1_n_0 ),
        .Q(\s1_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s1_reg[1]_LDC_i_2_n_0 ),
        .D(CMP_n_22),
        .Q(\s1_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_reg[1]_LDC 
       (.CLR(\s1_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s1_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s1_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s1_reg[1]_LDC_i_1 
       (.I0(x1_IBUF[1]),
        .I1(rst_IBUF),
        .O(\s1_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s1_reg[1]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x1_IBUF[1]),
        .O(\s1_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s1_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_18),
        .D(\s1[1]_P_i_1_n_0 ),
        .PRE(\s1_reg[1]_LDC_i_1_n_0 ),
        .Q(\s1_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s1_reg[2]_LDC_i_2_n_0 ),
        .D(CMP_n_21),
        .Q(\s1_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_reg[2]_LDC 
       (.CLR(\s1_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s1_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s1_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s1_reg[2]_LDC_i_1 
       (.I0(x1_IBUF[2]),
        .I1(rst_IBUF),
        .O(\s1_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s1_reg[2]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x1_IBUF[2]),
        .O(\s1_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s1_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_18),
        .D(\s1[2]_P_i_1_n_0 ),
        .PRE(\s1_reg[2]_LDC_i_1_n_0 ),
        .Q(\s1_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s1_reg[3]_LDC_i_2_n_0 ),
        .D(CMP_n_20),
        .Q(\s1_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_reg[3]_LDC 
       (.CLR(\s1_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s1_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s1_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s1_reg[3]_LDC_i_1 
       (.I0(x1_IBUF[3]),
        .I1(rst_IBUF),
        .O(\s1_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s1_reg[3]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x1_IBUF[3]),
        .O(\s1_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s1_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_18),
        .D(\s1[3]_P_i_2_n_0 ),
        .PRE(\s1_reg[3]_LDC_i_1_n_0 ),
        .Q(\s1_reg[3]_P_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s2[0]_P_i_1 
       (.I0(\s3_reg[0]_P_n_0 ),
        .I1(\s3_reg[0]_LDC_n_0 ),
        .I2(\s3_reg[0]_C_n_0 ),
        .I3(s1_OBUF[0]),
        .I4(state[1]),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s2[1]_P_i_1 
       (.I0(\s3_reg[1]_P_n_0 ),
        .I1(\s3_reg[1]_LDC_n_0 ),
        .I2(\s3_reg[1]_C_n_0 ),
        .I3(s1_OBUF[1]),
        .I4(state[1]),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s2[2]_P_i_1 
       (.I0(\s3_reg[2]_P_n_0 ),
        .I1(\s3_reg[2]_LDC_n_0 ),
        .I2(\s3_reg[2]_C_n_0 ),
        .I3(s1_OBUF[2]),
        .I4(state[1]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \s2[3]_P_i_2 
       (.I0(\s3_reg[3]_P_n_0 ),
        .I1(\s3_reg[3]_LDC_n_0 ),
        .I2(\s3_reg[3]_C_n_0 ),
        .I3(s1_OBUF[3]),
        .I4(state[1]),
        .O(p_2_in[3]));
  OBUF \s2_OBUF[0]_inst 
       (.I(s2_OBUF[0]),
        .O(s2[0]));
  OBUF \s2_OBUF[1]_inst 
       (.I(s2_OBUF[1]),
        .O(s2[1]));
  OBUF \s2_OBUF[2]_inst 
       (.I(s2_OBUF[2]),
        .O(s2[2]));
  OBUF \s2_OBUF[3]_inst 
       (.I(s2_OBUF[3]),
        .O(s2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s2_reg[0]_LDC_i_2_n_0 ),
        .D(CMP_n_27),
        .Q(\s2_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_reg[0]_LDC 
       (.CLR(\s2_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s2_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s2_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s2_reg[0]_LDC_i_1 
       (.I0(x2_IBUF[0]),
        .I1(rst_IBUF),
        .O(\s2_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s2_reg[0]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x2_IBUF[0]),
        .O(\s2_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s2_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_16),
        .D(p_2_in[0]),
        .PRE(\s2_reg[0]_LDC_i_1_n_0 ),
        .Q(\s2_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s2_reg[1]_LDC_i_2_n_0 ),
        .D(CMP_n_26),
        .Q(\s2_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_reg[1]_LDC 
       (.CLR(\s2_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s2_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s2_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s2_reg[1]_LDC_i_1 
       (.I0(x2_IBUF[1]),
        .I1(rst_IBUF),
        .O(\s2_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s2_reg[1]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x2_IBUF[1]),
        .O(\s2_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s2_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_16),
        .D(p_2_in[1]),
        .PRE(\s2_reg[1]_LDC_i_1_n_0 ),
        .Q(\s2_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s2_reg[2]_LDC_i_2_n_0 ),
        .D(CMP_n_25),
        .Q(\s2_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_reg[2]_LDC 
       (.CLR(\s2_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s2_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s2_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s2_reg[2]_LDC_i_1 
       (.I0(x2_IBUF[2]),
        .I1(rst_IBUF),
        .O(\s2_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s2_reg[2]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x2_IBUF[2]),
        .O(\s2_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s2_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_16),
        .D(p_2_in[2]),
        .PRE(\s2_reg[2]_LDC_i_1_n_0 ),
        .Q(\s2_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s2_reg[3]_LDC_i_2_n_0 ),
        .D(CMP_n_24),
        .Q(\s2_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_reg[3]_LDC 
       (.CLR(\s2_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s2_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s2_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s2_reg[3]_LDC_i_1 
       (.I0(x2_IBUF[3]),
        .I1(rst_IBUF),
        .O(\s2_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s2_reg[3]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x2_IBUF[3]),
        .O(\s2_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s2_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_16),
        .D(p_2_in[3]),
        .PRE(\s2_reg[3]_LDC_i_1_n_0 ),
        .Q(\s2_reg[3]_P_n_0 ));
  OBUF \s3_OBUF[0]_inst 
       (.I(s3_OBUF[0]),
        .O(s3[0]));
  OBUF \s3_OBUF[1]_inst 
       (.I(s3_OBUF[1]),
        .O(s3[1]));
  OBUF \s3_OBUF[2]_inst 
       (.I(s3_OBUF[2]),
        .O(s3[2]));
  OBUF \s3_OBUF[3]_inst 
       (.I(s3_OBUF[3]),
        .O(s3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \s3_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s3_reg[0]_LDC_i_2_n_0 ),
        .D(CMP_n_31),
        .Q(\s3_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s3_reg[0]_LDC 
       (.CLR(\s3_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s3_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s3_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s3_reg[0]_LDC_i_1 
       (.I0(x3_IBUF[0]),
        .I1(rst_IBUF),
        .O(\s3_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s3_reg[0]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x3_IBUF[0]),
        .O(\s3_reg[0]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s3_reg[0]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_19),
        .D(s2_OBUF[0]),
        .PRE(\s3_reg[0]_LDC_i_1_n_0 ),
        .Q(\s3_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s3_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s3_reg[1]_LDC_i_2_n_0 ),
        .D(CMP_n_30),
        .Q(\s3_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s3_reg[1]_LDC 
       (.CLR(\s3_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s3_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s3_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s3_reg[1]_LDC_i_1 
       (.I0(x3_IBUF[1]),
        .I1(rst_IBUF),
        .O(\s3_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s3_reg[1]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x3_IBUF[1]),
        .O(\s3_reg[1]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s3_reg[1]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_19),
        .D(s2_OBUF[1]),
        .PRE(\s3_reg[1]_LDC_i_1_n_0 ),
        .Q(\s3_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s3_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s3_reg[2]_LDC_i_2_n_0 ),
        .D(CMP_n_29),
        .Q(\s3_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s3_reg[2]_LDC 
       (.CLR(\s3_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s3_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s3_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s3_reg[2]_LDC_i_1 
       (.I0(x3_IBUF[2]),
        .I1(rst_IBUF),
        .O(\s3_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s3_reg[2]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x3_IBUF[2]),
        .O(\s3_reg[2]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s3_reg[2]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_19),
        .D(s2_OBUF[2]),
        .PRE(\s3_reg[2]_LDC_i_1_n_0 ),
        .Q(\s3_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s3_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\s3_reg[3]_LDC_i_2_n_0 ),
        .D(CMP_n_28),
        .Q(\s3_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s3_reg[3]_LDC 
       (.CLR(\s3_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\s3_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\s3_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s3_reg[3]_LDC_i_1 
       (.I0(x3_IBUF[3]),
        .I1(rst_IBUF),
        .O(\s3_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s3_reg[3]_LDC_i_2 
       (.I0(rst_IBUF),
        .I1(x3_IBUF[3]),
        .O(\s3_reg[3]_LDC_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \s3_reg[3]_P 
       (.C(clk_IBUF_BUFG),
        .CE(CMP_n_19),
        .D(s2_OBUF[3]),
        .PRE(\s3_reg[3]_LDC_i_1_n_0 ),
        .Q(\s3_reg[3]_P_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(p_1_in[1]));
  LUT2 #(
    .INIT(4'h7)) 
    \state[2]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \state[2]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(p_1_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[0]),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[1]),
        .Q(state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\state[2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[2]),
        .Q(state[2]));
  IBUF \x0_IBUF[0]_inst 
       (.I(x0[0]),
        .O(x0_IBUF[0]));
  IBUF \x0_IBUF[1]_inst 
       (.I(x0[1]),
        .O(x0_IBUF[1]));
  IBUF \x0_IBUF[2]_inst 
       (.I(x0[2]),
        .O(x0_IBUF[2]));
  IBUF \x0_IBUF[3]_inst 
       (.I(x0[3]),
        .O(x0_IBUF[3]));
  IBUF \x1_IBUF[0]_inst 
       (.I(x1[0]),
        .O(x1_IBUF[0]));
  IBUF \x1_IBUF[1]_inst 
       (.I(x1[1]),
        .O(x1_IBUF[1]));
  IBUF \x1_IBUF[2]_inst 
       (.I(x1[2]),
        .O(x1_IBUF[2]));
  IBUF \x1_IBUF[3]_inst 
       (.I(x1[3]),
        .O(x1_IBUF[3]));
  IBUF \x2_IBUF[0]_inst 
       (.I(x2[0]),
        .O(x2_IBUF[0]));
  IBUF \x2_IBUF[1]_inst 
       (.I(x2[1]),
        .O(x2_IBUF[1]));
  IBUF \x2_IBUF[2]_inst 
       (.I(x2[2]),
        .O(x2_IBUF[2]));
  IBUF \x2_IBUF[3]_inst 
       (.I(x2[3]),
        .O(x2_IBUF[3]));
  IBUF \x3_IBUF[0]_inst 
       (.I(x3[0]),
        .O(x3_IBUF[0]));
  IBUF \x3_IBUF[1]_inst 
       (.I(x3[1]),
        .O(x3_IBUF[1]));
  IBUF \x3_IBUF[2]_inst 
       (.I(x3[2]),
        .O(x3_IBUF[2]));
  IBUF \x3_IBUF[3]_inst 
       (.I(x3[3]),
        .O(x3_IBUF[3]));
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
