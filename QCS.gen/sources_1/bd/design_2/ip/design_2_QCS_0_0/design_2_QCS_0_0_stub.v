// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Oct 24 19:51:40 2024
// Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/duncan/QCS/QCS.gen/sources_1/bd/design_2/ip/design_2_QCS_0_0/design_2_QCS_0_0_stub.v
// Design      : design_2_QCS_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "QCS,Vivado 2023.1" *)
module design_2_QCS_0_0(clk, rst, ch_a, ch_b, REC, RPM, CH_COUNTER, ADDR, 
  CLK_COUNTER)
/* synthesis syn_black_box black_box_pad_pin="rst,ch_a,ch_b,REC[31:0],RPM[31:0],CH_COUNTER[15:0],ADDR[13:0],CLK_COUNTER[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input ch_a;
  input ch_b;
  output [31:0]REC;
  output [31:0]RPM;
  output [15:0]CH_COUNTER;
  output [13:0]ADDR;
  output [31:0]CLK_COUNTER;
endmodule
