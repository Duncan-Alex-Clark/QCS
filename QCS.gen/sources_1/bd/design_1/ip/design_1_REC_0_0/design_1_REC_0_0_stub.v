// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Oct 11 07:12:26 2024
// Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_REC_0_0 -prefix
//               design_1_REC_0_0_ QEC_1_REC_0_0_stub.v
// Design      : QEC_1_REC_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "REC,Vivado 2023.1" *)
module design_1_REC_0_0(ch_a, ch_b, ch_z, rst, clk, ch_z_out, REC)
/* synthesis syn_black_box black_box_pad_pin="ch_a,ch_b,ch_z,rst,ch_z_out,REC[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input ch_a;
  input ch_b;
  input ch_z;
  input rst;
  input clk /* synthesis syn_isclock = 1 */;
  output ch_z_out;
  output [31:0]REC;
endmodule
