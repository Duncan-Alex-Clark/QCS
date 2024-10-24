#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Fri Oct 18 21:35:37 EDT 2024
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim seq_rec_Testbench_time_synth -key {Post-Synthesis:sim_1:Timing:seq_rec_Testbench} -tclbatch seq_rec_Testbench.tcl -protoinst "protoinst_files/QCS_1.protoinst" -protoinst "protoinst_files/design_1.protoinst" -log simulate.log"
xsim seq_rec_Testbench_time_synth -key {Post-Synthesis:sim_1:Timing:seq_rec_Testbench} -tclbatch seq_rec_Testbench.tcl -protoinst "protoinst_files/QCS_1.protoinst" -protoinst "protoinst_files/design_1.protoinst" -log simulate.log

