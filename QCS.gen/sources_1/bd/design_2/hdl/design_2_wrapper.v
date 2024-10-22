//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Mon Oct 21 17:16:33 2024
//Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (CLK100MHZ_clk_n,
    CLK100MHZ_clk_p,
    btn_0,
    reset,
    usb_uart_rxd,
    usb_uart_txd);
  input CLK100MHZ_clk_n;
  input CLK100MHZ_clk_p;
  input btn_0;
  input reset;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire CLK100MHZ_clk_n;
  wire CLK100MHZ_clk_p;
  wire btn_0;
  wire reset;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_2 design_2_i
       (.CLK100MHZ_clk_n(CLK100MHZ_clk_n),
        .CLK100MHZ_clk_p(CLK100MHZ_clk_p),
        .btn_0(btn_0),
        .reset(reset),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
