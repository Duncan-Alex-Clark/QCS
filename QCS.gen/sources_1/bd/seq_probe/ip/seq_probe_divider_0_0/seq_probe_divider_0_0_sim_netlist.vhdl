-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Sat Oct 19 10:36:58 2024
-- Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/duncan/QCS/QCS.gen/sources_1/bd/seq_probe/ip/seq_probe_divider_0_0/seq_probe_divider_0_0_sim_netlist.vhdl
-- Design      : seq_probe_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seq_probe_divider_0_0 is
  port (
    counter : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of seq_probe_divider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of seq_probe_divider_0_0 : entity is "seq_probe_divider_0_0,divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of seq_probe_divider_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of seq_probe_divider_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of seq_probe_divider_0_0 : entity is "divider,Vivado 2023.1";
end seq_probe_divider_0_0;

architecture STRUCTURE of seq_probe_divider_0_0 is
  signal \^counter\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^counter\(8) <= counter(8);
  clk_out <= \^counter\(8);
end STRUCTURE;
