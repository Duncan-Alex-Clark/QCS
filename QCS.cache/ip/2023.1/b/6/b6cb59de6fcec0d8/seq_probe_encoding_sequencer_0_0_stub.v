// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Oct 19 00:16:06 2024
// Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ seq_probe_encoding_sequencer_0_0_stub.v
// Design      : seq_probe_encoding_sequencer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "encoding_sequencer,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, ch_a, ch_b, clk_out)
/* synthesis syn_black_box black_box_pad_pin="rst,ch_a,ch_b" */
/* synthesis syn_force_seq_prim="clk" */
/* synthesis syn_force_seq_prim="clk_out" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  output ch_a;
  output ch_b;
  output clk_out /* synthesis syn_isclock = 1 */;
endmodule
