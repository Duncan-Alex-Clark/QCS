//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Mon Oct 21 17:05:37 2024
//Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target QCS_1_wrapper.bd
//Design      : QCS_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module QCS_1_wrapper
   (CLK100MHZ,
    btn_0,
    led_1,
    led_2,
    led_3,
    reset,
    usb_uart_rxd,
    usb_uart_txd);
  input CLK100MHZ;
  input btn_0;
  output led_1;
  output led_2;
  output led_3;
  input reset;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire CLK100MHZ;
  wire btn_0;
  wire led_1;
  wire led_2;
  wire led_3;
  wire reset;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  QCS_1 QCS_1_i
       (.CLK100MHZ(CLK100MHZ),
        .btn_0(btn_0),
        .led_1(led_1),
        .led_2(led_2),
        .led_3(led_3),
        .reset(reset),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
