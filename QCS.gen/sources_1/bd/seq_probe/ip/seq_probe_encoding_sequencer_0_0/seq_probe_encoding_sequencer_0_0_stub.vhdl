-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Wed Oct 23 04:37:36 2024
-- Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/duncan/QCS/QCS.gen/sources_1/bd/seq_probe/ip/seq_probe_encoding_sequencer_0_0/seq_probe_encoding_sequencer_0_0_stub.vhdl
-- Design      : seq_probe_encoding_sequencer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seq_probe_encoding_sequencer_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ch_a : out STD_LOGIC;
    ch_b : out STD_LOGIC
  );

end seq_probe_encoding_sequencer_0_0;

architecture stub of seq_probe_encoding_sequencer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,ch_a,ch_b";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "encoding_sequencer,Vivado 2023.1";
begin
end;
