// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Oct 10 19:24:06 2024
// Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_blink_0_2 -prefix
//               design_1_blink_0_2_ design_1_blink_0_0_stub.v
// Design      : design_1_blink_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "blink,Vivado 2023.1" *)
module design_1_blink_0_2(clk, rst, btn, led)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,btn[3:0],led[3:0]" */;
  input clk;
  input rst;
  input [3:0]btn;
  output [3:0]led;
endmodule
