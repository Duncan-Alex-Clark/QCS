// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Oct 24 20:11:50 2024
// Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/duncan/QCS/QCS.gen/sources_1/bd/seq_probe/ip/seq_probe_divider_0_0/seq_probe_divider_0_0_stub.v
// Design      : seq_probe_divider_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "divider,Vivado 2023.1" *)
module seq_probe_divider_0_0(counter, clk_out)
/* synthesis syn_black_box black_box_pad_pin="counter[31:0],clk_out" */;
  input [31:0]counter;
  output clk_out;
endmodule
