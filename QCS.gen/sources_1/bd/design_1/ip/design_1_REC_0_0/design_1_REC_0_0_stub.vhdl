-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Fri Oct 11 07:12:27 2024
-- Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_REC_0_0 -prefix
--               design_1_REC_0_0_ QEC_1_REC_0_0_stub.vhdl
-- Design      : QEC_1_REC_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_REC_0_0 is
  Port ( 
    ch_a : in STD_LOGIC;
    ch_b : in STD_LOGIC;
    ch_z : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    ch_z_out : out STD_LOGIC;
    REC : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_REC_0_0;

architecture stub of design_1_REC_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ch_a,ch_b,ch_z,rst,clk,ch_z_out,REC[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "REC,Vivado 2023.1";
begin
end;
