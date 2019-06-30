// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 29 00:49:02 2019
// Host        : DESKTOP-MBF5BR3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/verilog2/lab2_2/lab2_2.sim/sim_1/synth/timing/xsim/tb_time_synth.v
// Design      : lab2_2
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module alu
   (D,
    \FSM_sequential_state_reg[3] ,
    \temp_x_reg[4] ,
    q_OBUF,
    \temp_x_reg[4]_0 ,
    \temp_x_reg[4]_1 ,
    Q,
    \temp_x_reg[5] ,
    y_IBUF,
    \FSM_sequential_state_reg[0] ,
    CO);
  output [3:0]D;
  output [0:0]\FSM_sequential_state_reg[3] ;
  input \temp_x_reg[4] ;
  input [3:0]q_OBUF;
  input \temp_x_reg[4]_0 ;
  input \temp_x_reg[4]_1 ;
  input [3:0]Q;
  input \temp_x_reg[5] ;
  input [3:0]y_IBUF;
  input [3:0]\FSM_sequential_state_reg[0] ;
  input [0:0]CO;

  wire [0:0]CO;
  wire [3:0]D;
  wire [3:0]\FSM_sequential_state_reg[0] ;
  wire [0:0]\FSM_sequential_state_reg[3] ;
  wire [3:0]Q;
  wire p_1_in;
  wire [3:0]q_OBUF;
  wire \temp_x[7]_i_5_n_0 ;
  wire \temp_x_reg[4] ;
  wire \temp_x_reg[4]_0 ;
  wire \temp_x_reg[4]_1 ;
  wire \temp_x_reg[5] ;
  wire [3:0]y_IBUF;
  wire y_out0_carry__0_i_1_n_0;
  wire y_out0_carry_i_1_n_0;
  wire y_out0_carry_i_2_n_0;
  wire y_out0_carry_i_3_n_0;
  wire y_out0_carry_i_4_n_0;
  wire y_out0_carry_i_5_n_0;
  wire y_out0_carry_i_6_n_0;
  wire y_out0_carry_i_7_n_0;
  wire y_out0_carry_n_0;
  wire y_out0_carry_n_1;
  wire y_out0_carry_n_2;
  wire y_out0_carry_n_3;
  wire y_out0_carry_n_4;
  wire y_out0_carry_n_5;
  wire y_out0_carry_n_6;
  wire y_out0_carry_n_7;
  wire [3:0]NLW_y_out0_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_y_out0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBBBBFFFFBBFBFFFB)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0] [3]),
        .I1(\FSM_sequential_state_reg[0] [0]),
        .I2(p_1_in),
        .I3(\FSM_sequential_state_reg[0] [1]),
        .I4(CO),
        .I5(\FSM_sequential_state_reg[0] [2]),
        .O(\FSM_sequential_state_reg[3] ));
  LUT5 #(
    .INIT(32'h2888A808)) 
    \temp_x[4]_i_1 
       (.I0(\temp_x_reg[4] ),
        .I1(q_OBUF[3]),
        .I2(\temp_x_reg[4]_0 ),
        .I3(y_out0_carry_n_7),
        .I4(\temp_x_reg[4]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h08A8A808A808A808)) 
    \temp_x[5]_i_1 
       (.I0(\temp_x_reg[4] ),
        .I1(Q[0]),
        .I2(\temp_x_reg[4]_0 ),
        .I3(y_out0_carry_n_6),
        .I4(y_out0_carry_n_7),
        .I5(\temp_x_reg[5] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h08A8A808)) 
    \temp_x[6]_i_1 
       (.I0(\temp_x_reg[4] ),
        .I1(Q[1]),
        .I2(\temp_x_reg[4]_0 ),
        .I3(y_out0_carry_n_5),
        .I4(\temp_x[7]_i_5_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h08A8A808A808A808)) 
    \temp_x[7]_i_2 
       (.I0(\temp_x_reg[4] ),
        .I1(Q[2]),
        .I2(\temp_x_reg[4]_0 ),
        .I3(y_out0_carry_n_4),
        .I4(y_out0_carry_n_5),
        .I5(\temp_x[7]_i_5_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \temp_x[7]_i_5 
       (.I0(y_out0_carry_n_6),
        .I1(q_OBUF[3]),
        .I2(q_OBUF[1]),
        .I3(q_OBUF[0]),
        .I4(q_OBUF[2]),
        .I5(y_out0_carry_n_7),
        .O(\temp_x[7]_i_5_n_0 ));
  CARRY4 y_out0_carry
       (.CI(1'b0),
        .CO({y_out0_carry_n_0,y_out0_carry_n_1,y_out0_carry_n_2,y_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y_out0_carry_i_1_n_0,y_out0_carry_i_2_n_0,y_out0_carry_i_3_n_0,1'b0}),
        .O({y_out0_carry_n_4,y_out0_carry_n_5,y_out0_carry_n_6,y_out0_carry_n_7}),
        .S({y_out0_carry_i_4_n_0,y_out0_carry_i_5_n_0,y_out0_carry_i_6_n_0,y_out0_carry_i_7_n_0}));
  CARRY4 y_out0_carry__0
       (.CI(y_out0_carry_n_0),
        .CO(NLW_y_out0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_out0_carry__0_O_UNCONNECTED[3:1],p_1_in}),
        .S({1'b0,1'b0,1'b0,y_out0_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    y_out0_carry__0_i_1
       (.I0(y_IBUF[3]),
        .I1(Q[3]),
        .O(y_out0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    y_out0_carry_i_1
       (.I0(Q[2]),
        .I1(y_IBUF[2]),
        .O(y_out0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    y_out0_carry_i_2
       (.I0(Q[1]),
        .I1(y_IBUF[1]),
        .O(y_out0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y_out0_carry_i_3
       (.I0(Q[0]),
        .I1(y_IBUF[0]),
        .O(y_out0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    y_out0_carry_i_4
       (.I0(y_IBUF[2]),
        .I1(Q[2]),
        .I2(y_IBUF[3]),
        .I3(Q[3]),
        .O(y_out0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    y_out0_carry_i_5
       (.I0(y_IBUF[1]),
        .I1(Q[1]),
        .I2(y_IBUF[2]),
        .I3(Q[2]),
        .O(y_out0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    y_out0_carry_i_6
       (.I0(y_IBUF[0]),
        .I1(Q[0]),
        .I2(y_IBUF[1]),
        .I3(Q[1]),
        .O(y_out0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_out0_carry_i_7
       (.I0(Q[0]),
        .I1(y_IBUF[0]),
        .O(y_out0_carry_i_7_n_0));
endmodule

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

  wire ALU_n_0;
  wire ALU_n_1;
  wire ALU_n_2;
  wire ALU_n_3;
  wire \FSM_sequential_state[0]_i_10_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[0]_i_8_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_1 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_2 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_3 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire done;
  wire error;
  wire [3:0]nextstate;
  wire [3:0]q;
  wire [3:0]q_OBUF;
  wire [3:0]r;
  wire [3:0]r_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [3:0]state;
  wire temp_x;
  wire \temp_x[0]_C_i_1_n_0 ;
  wire \temp_x[0]_P_i_1_n_0 ;
  wire \temp_x[1]_C_i_1_n_0 ;
  wire \temp_x[1]_P_i_1_n_0 ;
  wire \temp_x[2]_C_i_1_n_0 ;
  wire \temp_x[2]_P_i_1_n_0 ;
  wire \temp_x[3]_C_i_1_n_0 ;
  wire \temp_x[3]_P_i_1_n_0 ;
  wire \temp_x[3]_P_i_2_n_0 ;
  wire \temp_x[4]_i_2_n_0 ;
  wire \temp_x[5]_i_2_n_0 ;
  wire \temp_x[7]_i_3_n_0 ;
  wire \temp_x[7]_i_4_n_0 ;
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
  wire [3:0]\NLW_FSM_sequential_state_reg[0]_i_2_O_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_time_synth.sdf",,,,"tool_control");
end
  alu ALU
       (.CO(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .D({ALU_n_0,ALU_n_1,ALU_n_2,ALU_n_3}),
        .\FSM_sequential_state_reg[0] (state),
        .\FSM_sequential_state_reg[3] (nextstate[0]),
        .Q(r_OBUF),
        .q_OBUF(q_OBUF),
        .\temp_x_reg[4] (\temp_x[7]_i_3_n_0 ),
        .\temp_x_reg[4]_0 (\temp_x[7]_i_4_n_0 ),
        .\temp_x_reg[4]_1 (\temp_x[4]_i_2_n_0 ),
        .\temp_x_reg[5] (\temp_x[5]_i_2_n_0 ),
        .y_IBUF(y_IBUF));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_sequential_state[0]_i_10 
       (.I0(\temp_x_reg[0]_C_n_0 ),
        .I1(\temp_x_reg[0]_LDC_n_0 ),
        .I2(\temp_x_reg[0]_P_n_0 ),
        .I3(\temp_x_reg[1]_C_n_0 ),
        .I4(\temp_x_reg[1]_LDC_n_0 ),
        .I5(\temp_x_reg[1]_P_n_0 ),
        .O(\FSM_sequential_state[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(r_OBUF[2]),
        .I1(y_IBUF[2]),
        .I2(y_IBUF[3]),
        .I3(r_OBUF[3]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(r_OBUF[0]),
        .I1(y_IBUF[0]),
        .I2(y_IBUF[1]),
        .I3(r_OBUF[1]),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8B8B8FFB8)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\temp_x_reg[2]_P_n_0 ),
        .I1(\temp_x_reg[2]_LDC_n_0 ),
        .I2(\temp_x_reg[2]_C_n_0 ),
        .I3(\temp_x_reg[3]_C_n_0 ),
        .I4(\temp_x_reg[3]_LDC_n_0 ),
        .I5(\temp_x_reg[3]_P_n_0 ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8B8B8FFB8)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\temp_x_reg[0]_P_n_0 ),
        .I1(\temp_x_reg[0]_LDC_n_0 ),
        .I2(\temp_x_reg[0]_C_n_0 ),
        .I3(\temp_x_reg[1]_C_n_0 ),
        .I4(\temp_x_reg[1]_LDC_n_0 ),
        .I5(\temp_x_reg[1]_P_n_0 ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(r_OBUF[2]),
        .I1(y_IBUF[2]),
        .I2(r_OBUF[3]),
        .I3(y_IBUF[3]),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(r_OBUF[0]),
        .I1(y_IBUF[0]),
        .I2(r_OBUF[1]),
        .I3(y_IBUF[1]),
        .O(\FSM_sequential_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(\temp_x_reg[2]_C_n_0 ),
        .I1(\temp_x_reg[2]_LDC_n_0 ),
        .I2(\temp_x_reg[2]_P_n_0 ),
        .I3(\temp_x_reg[3]_C_n_0 ),
        .I4(\temp_x_reg[3]_LDC_n_0 ),
        .I5(\temp_x_reg[3]_P_n_0 ),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(nextstate[3]));
  (* FSM_ENCODED_STATES = "p3:0011,p4:0100,p2:0010,p1:0001,p0:0000,p7:0111,p9:1001,p6:0110,p8:1000,p5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(nextstate[0]),
        .Q(state[0]));
  CARRY4 \FSM_sequential_state_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[0]_i_2_n_0 ,\FSM_sequential_state_reg[0]_i_2_n_1 ,\FSM_sequential_state_reg[0]_i_2_n_2 ,\FSM_sequential_state_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[0]_i_3_n_0 ,\FSM_sequential_state[0]_i_4_n_0 ,\FSM_sequential_state[0]_i_5_n_0 ,\FSM_sequential_state[0]_i_6_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[0]_i_7_n_0 ,\FSM_sequential_state[0]_i_8_n_0 ,\FSM_sequential_state[0]_i_9_n_0 ,\FSM_sequential_state[0]_i_10_n_0 }));
  (* FSM_ENCODED_STATES = "p3:0011,p4:0100,p2:0010,p1:0001,p0:0000,p7:0111,p9:1001,p6:0110,p8:1000,p5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "p3:0011,p4:0100,p2:0010,p1:0001,p0:0000,p7:0111,p9:1001,p6:0110,p8:1000,p5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "p3:0011,p4:0100,p2:0010,p1:0001,p0:0000,p7:0111,p9:1001,p6:0110,p8:1000,p5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(nextstate[3]),
        .Q(state[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUFT done_OBUF_inst
       (.I(1'b0),
        .O(done),
        .T(1'b1));
  OBUFT error_OBUF_inst
       (.I(1'b0),
        .O(error),
        .T(1'b1));
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
    .INIT(64'h08A8FFFF08A80000)) 
    \temp_x[0]_C_i_1 
       (.I0(\temp_x[7]_i_4_n_0 ),
        .I1(x_IBUF[0]),
        .I2(\temp_x[7]_i_3_n_0 ),
        .I3(q_OBUF[0]),
        .I4(temp_x),
        .I5(\temp_x_reg[0]_C_n_0 ),
        .O(\temp_x[0]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000020000333E)) 
    \temp_x[0]_P_i_1 
       (.I0(x_IBUF[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(q_OBUF[0]),
        .O(\temp_x[0]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEA2222222A)) 
    \temp_x[1]_C_i_1 
       (.I0(\temp_x[1]_P_i_1_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\temp_x_reg[1]_C_n_0 ),
        .O(\temp_x[1]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \temp_x[1]_P_i_1 
       (.I0(q_OBUF[1]),
        .I1(\temp_x[7]_i_4_n_0 ),
        .I2(q_OBUF[0]),
        .I3(\temp_x[7]_i_3_n_0 ),
        .I4(x_IBUF[1]),
        .O(\temp_x[1]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEA2222222A)) 
    \temp_x[2]_C_i_1 
       (.I0(\temp_x[2]_P_i_1_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\temp_x_reg[2]_C_n_0 ),
        .O(\temp_x[2]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FC0FFFF6FC00000)) 
    \temp_x[2]_P_i_1 
       (.I0(q_OBUF[0]),
        .I1(q_OBUF[2]),
        .I2(\temp_x[7]_i_4_n_0 ),
        .I3(q_OBUF[1]),
        .I4(\temp_x[7]_i_3_n_0 ),
        .I5(x_IBUF[2]),
        .O(\temp_x[2]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEA2222222A)) 
    \temp_x[3]_C_i_1 
       (.I0(\temp_x[3]_P_i_1_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\temp_x_reg[3]_C_n_0 ),
        .O(\temp_x[3]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FC0FFFF6FC00000)) 
    \temp_x[3]_P_i_1 
       (.I0(\temp_x[3]_P_i_2_n_0 ),
        .I1(q_OBUF[3]),
        .I2(\temp_x[7]_i_4_n_0 ),
        .I3(q_OBUF[2]),
        .I4(\temp_x[7]_i_3_n_0 ),
        .I5(x_IBUF[3]),
        .O(\temp_x[3]_P_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \temp_x[3]_P_i_2 
       (.I0(\temp_x_reg[1]_C_n_0 ),
        .I1(\temp_x_reg[1]_LDC_n_0 ),
        .I2(\temp_x_reg[1]_P_n_0 ),
        .I3(\temp_x_reg[0]_C_n_0 ),
        .I4(\temp_x_reg[0]_LDC_n_0 ),
        .I5(\temp_x_reg[0]_P_n_0 ),
        .O(\temp_x[3]_P_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \temp_x[4]_i_2 
       (.I0(\temp_x_reg[2]_C_n_0 ),
        .I1(\temp_x_reg[2]_LDC_n_0 ),
        .I2(\temp_x_reg[2]_P_n_0 ),
        .I3(q_OBUF[0]),
        .I4(q_OBUF[1]),
        .O(\temp_x[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \temp_x[5]_i_2 
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[1]),
        .I2(q_OBUF[0]),
        .I3(\temp_x_reg[2]_P_n_0 ),
        .I4(\temp_x_reg[2]_LDC_n_0 ),
        .I5(\temp_x_reg[2]_C_n_0 ),
        .O(\temp_x[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5557)) 
    \temp_x[7]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(temp_x));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \temp_x[7]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\temp_x[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \temp_x[7]_i_4 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\temp_x[7]_i_4_n_0 ));
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
        .D(\temp_x[0]_P_i_1_n_0 ),
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
        .D(\temp_x[1]_P_i_1_n_0 ),
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
        .D(\temp_x[2]_P_i_1_n_0 ),
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
        .D(\temp_x[3]_P_i_1_n_0 ),
        .PRE(\temp_x_reg[3]_LDC_i_1_n_0 ),
        .Q(\temp_x_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_x),
        .CLR(rst_IBUF),
        .D(ALU_n_3),
        .Q(r_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_x),
        .CLR(rst_IBUF),
        .D(ALU_n_2),
        .Q(r_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_x),
        .CLR(rst_IBUF),
        .D(ALU_n_1),
        .Q(r_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \temp_x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(temp_x),
        .CLR(rst_IBUF),
        .D(ALU_n_0),
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
