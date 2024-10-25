// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Oct 24 19:59:05 2024
// Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/duncan/QCS/QCS.gen/sources_1/bd/design_2/ip/design_2_ila_0_0/design_2_ila_0_0_stub.v
// Design      : design_2_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2023.1" *)
module design_2_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6)
/* synthesis syn_black_box black_box_pad_pin="probe0[31:0],probe1[31:0],probe2[15:0],probe3[13:0],probe4[31:0],probe5[0:0],probe6[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [31:0]probe0;
  input [31:0]probe1;
  input [15:0]probe2;
  input [13:0]probe3;
  input [31:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
endmodule
