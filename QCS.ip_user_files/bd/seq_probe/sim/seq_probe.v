//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Fri Oct 18 23:00:58 2024
//Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target seq_probe.bd
//Design      : seq_probe
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "seq_probe,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=seq_probe,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "seq_probe.hwdef" *) 
module seq_probe
   (btn_0,
    led_0,
    led_1,
    led_2,
    reset,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BTN_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BTN_0, LAYERED_METADATA undef" *) input btn_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED_0, LAYERED_METADATA undef" *) output led_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED_1, LAYERED_METADATA undef" *) output led_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED_2, LAYERED_METADATA undef" *) output led_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN seq_probe_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;

  wire btn_0_1;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire divider_0_clk_out;
  wire encoding_sequencer_0_ch_a;
  wire encoding_sequencer_0_ch_b;
  wire reset_1;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;
  wire sys_clock_1;

  assign btn_0_1 = btn_0;
  assign led_0 = encoding_sequencer_0_ch_a;
  assign led_1 = encoding_sequencer_0_ch_b;
  assign led_2 = btn_0_1;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  seq_probe_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .resetn(reset_1));
  seq_probe_divider_0_0 divider_0
       (.clk_in(clk_wiz_clk_out1),
        .clk_out(divider_0_clk_out),
        .rst(reset_1));
  seq_probe_encoding_sequencer_0_0 encoding_sequencer_0
       (.ch_a(encoding_sequencer_0_ch_a),
        .ch_b(encoding_sequencer_0_ch_b),
        .clk(divider_0_clk_out),
        .rst(rst_clk_wiz_100M_peripheral_aresetn));
  seq_probe_ila_0_0 ila_0
       (.clk(clk_wiz_clk_out1),
        .probe0(1'b0),
        .probe1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe11(1'b0),
        .probe12(1'b0),
        .probe13({1'b0,1'b0}),
        .probe14({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe15({1'b1,1'b1,1'b1,1'b1}),
        .probe16(1'b0),
        .probe17({1'b0,1'b0,1'b0}),
        .probe18({1'b0,1'b0,1'b0}),
        .probe19(1'b0),
        .probe2({1'b0,1'b0}),
        .probe20(1'b0),
        .probe21({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe22(1'b0),
        .probe23({1'b0,1'b1,1'b0}),
        .probe24({1'b0,1'b1}),
        .probe25(encoding_sequencer_0_ch_a),
        .probe26(1'b0),
        .probe27({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe28({1'b0,1'b1,1'b0}),
        .probe29({1'b0,1'b1}),
        .probe3(1'b0),
        .probe30(encoding_sequencer_0_ch_b),
        .probe31({1'b0,1'b0,1'b1,1'b1}),
        .probe32({1'b0,1'b0,1'b1,1'b1}),
        .probe33({1'b0,1'b0,1'b0,1'b0}),
        .probe34({1'b0,1'b0,1'b0,1'b0}),
        .probe35(divider_0_clk_out),
        .probe36({1'b0,1'b0,1'b0,1'b0}),
        .probe37({1'b0,1'b0,1'b0,1'b0}),
        .probe38(1'b0),
        .probe39(1'b0),
        .probe4(1'b0),
        .probe40(1'b0),
        .probe41(1'b0),
        .probe42(1'b0),
        .probe43(1'b0),
        .probe5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe6(1'b0),
        .probe7(1'b0),
        .probe8(1'b0),
        .probe9(btn_0_1));
  seq_probe_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
endmodule
