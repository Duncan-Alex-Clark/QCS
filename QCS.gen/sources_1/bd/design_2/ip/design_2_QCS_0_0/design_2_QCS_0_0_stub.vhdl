-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Wed Oct 23 04:51:50 2024
-- Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/duncan/QCS/QCS.gen/sources_1/bd/design_2/ip/design_2_QCS_0_0/design_2_QCS_0_0_stub.vhdl
-- Design      : design_2_QCS_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_2_QCS_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ch_a : in STD_LOGIC;
    ch_b : in STD_LOGIC;
    ppr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RPM : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_2_QCS_0_0;

architecture stub of design_2_QCS_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,ch_a,ch_b,ppr[31:0],REC[31:0],RPM[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "QCS,Vivado 2023.1";
begin
end;
