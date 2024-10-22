// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Oct 19 02:33:15 2024
// Host        : duncan-Ub22 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/duncan/QCS/QCS.gen/sources_1/bd/seq_probe/ip/seq_probe_c_counter_binary_0_0/seq_probe_c_counter_binary_0_0_sim_netlist.v
// Design      : seq_probe_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "seq_probe_c_counter_binary_0_0,c_counter_binary_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_16,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module seq_probe_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN seq_probe_sys_clock, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  seq_probe_c_counter_binary_0_0_c_counter_binary_v12_0_16 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nEluQH6zbAqCbx0un3ty7CjKmzIb6EE6u9eMzKEB04v4MBOVFM+Tahu9b35foYTx0ihB8y9vIi1u
WozDAbVIl41ubtYHe98pHqHDDaCjTtGiBRDyfCBDrGxTGZ4brq0UvFaDSbdlQl3n5JemF3KnHqfg
wMYrkU7wFFHkJLVMcTk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nW/9GT0jwg0cGJXOm2WNy5LCgMgb0iaGjzfae0GthFaapA92trGlBPZ8CO9WKXJmM5uTS80UB9rD
PuKl8kfF+MG342ST68iI7DEW8s5TwjZk16znEVWSr2bA2Kn0PBosSg+Xmq22Tj/wcxxQcTijzHNd
O60FvXr2XSMC89T28ONefeTtZc6WwvwyL9H5+IkmdoTJ5mAKgqeYLihv1mxycnq+uM8fyoR79tlA
S3p9q+0Y0k6mCABleE1Ze6a4b5wxmpGtGTvbzc3RGTwstzb4UZPpiyAgnW9A4DQCUBY93aPziiKT
c7MisqRYeGnScSQ1FOFsbD6hotYBh+P8LwGGCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KDiNIUMtatDrhphzmTBFbPhLQnuq6phc0PrJ1hiogLQb7IUEt6plouP9tjwt7I0ZIWDhaRnf5MCk
Gd5vI6wDka/OMxNVtptdLxiIJkVcQbbLuHt+0LQQEt9l+z52R0xVETrazwDGWj83+vCsrNlljbUl
fMz4KSBOf9kOPE6MbqM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k3Hey9AcH0q64Q+fl481nMcvpHNQ6Af06OnUlq2GSyZHZ3t2v9ryStnHIvSi1l/SQIJMgrZCgME9
lown5XX21YqIMVQoEyGMSpNBNwfTJGTI61QOeUpcU3LzuNlRl4w47st6eceWqPKVrD6oTR3sXq9T
ctrBzMTMaGg9YZmYGJ7Ot/ADRu8vcaT+f6OfgECwuoGk0UOAQaKF/ADVY9WpFWZ5qlC0Cd8wDuXC
jLLq0Fbcps0ea5PDonxV2Z1kh/nXuE2aSrCoEg703Iy1Vimiwe/kvCqZHRWzwoyrK1sXDJdkt7ni
uGVcdxaCDSuAQBAY+DvKCaHxy8HVe23B9nIm7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JgKK/t7ZhsrBmIhtzEHF7fMq/kVx5rC3SDMpxvFJyxvxWyGHc1knzwHpNUZlhxl2+QiWII15PkPH
tRsPxzKmKRUfoUn98Iz+DDEv/t53oxteaulFll9kYXLae5Kr3Z0dSjzo6RhFlK3srBeNbOBQ5kLM
GmLMJXqAg+QCR1zI3uySLoZKPvoArxl0nQXNl+LyCj3NSV6UZbat9kspBEf8Ajes+X3D3fFv6x7R
QFcujdR2uP3rtU2X+kjUyKS68fWQyxeNVQRRtK0+pYzwAjslKl9X2yuZLP8sbivJF+KMMGIR6mDJ
Evvk6N3D/2t3QMFH/QwpvnMzM7FWwR1+A2XB+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l1upFntc7IVck7RcCXkYErX39AcroU+a5uEQXMYfQhip8WAsHSLdZlUa+Pekqto4E2g8SgecRBRu
QrTkaI7ASczWH6LcnIz//dsEIf29ekkxATEsJgnRku8WWT0qoHAHSHdh5/QBxPMMciAaoZZn7Oao
iMi43cgsYOKLrxaRVA1CADZ/GqPdF85TfjeFZM6SbwE9mPf1OSJvOTiaz9xmgcqX6v1Z9g8EnoxJ
6I829suxYY7M6LZ0d0EjjUyaavZjV5HDiB1fssOvW/djjXtxFJRNs2Gjhme3uFqkpCEPEmN552yh
8Dh9ZD+svzOa4souKCgpp+Me8Fjk7DseJZFS+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l7Jl6pHBA954sGX8lOxgRbkjqIY8qsUwlO/a8pzc9ccc3J6g7NH7JFDFJo/lP4EGu33DhHMaekKk
D4zrS/BeJYsvT4iIAxDLg04OtrvXSJldjg34BLszQLhqUGfb3q06Oj0fXD2iEyLNSR/dM1elF9xE
hKaV329dq6ZrzVp7pI0Kl4Phi/0xqfaA4pxpvDmn6jz/v6My3nmy28BMd5KJpLTeEVwRfwf1KaSP
Kbi19ZYAimO73Cj9C1mrQdmzLERkopxYs+N+PKEg/uJ33h3AIIXYALv1dtvCi/kY33mMor2YzciC
cOvpgm0rOl8N+wluwGldTr51jmMU3UgRXnpIcA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
sDLt9yC+aGCruo0Pc7rNmFvG2ac6bXjKm57sR9Rc7vhL9yi9iuJX/dei64d6laIYpv7rKof457yt
dHM3kNbfEvjncjiGOY7W6JH9B9crujUlJSAtPxDBpA1ViiJACab8Tkr/b8aim+gsfCRULaYQf7Em
PZgRR/YsxeTPzLR6+g6rtTiWVwHOSHeRFwlXDUwOHC9ojrEk758fcOul3bUMy5jBkbIrnMckcYNJ
UTIM/NeQ2Z/19PGsmo1DzokYwWzLO/zziA3yzHUXNK/w69M9ML2Iuta7bZVscwAupPOW9l6jLkCf
ml/TslOBHqpc17ZtvXijJ69O/LsO1U2gWTdgP/LZuz80gMWMCxCrdGVp/uSa/4xGr4H3vIXkdIx0
Sg4fr4eszK3MgUcF10OTIa2Q1kSgpDI+mwH+yvUepsWPGRNbJ26keoVN9FUem6TOAoMBjMIrwjVL
ew9v9xzan9X7FYCU+yrylMvdNWv0ozAy2lW5sx96wNHOJF5NyPNMrrgu

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G1e/ZtUXcVEpkIPuRVXcxOiovL5iPfoV4SVmgSb0Q/5PbZ5mJDGQX9Sp80Mjta07Bt/3DCSMp0KJ
TCu25lkbgnZpMU/VZ0Q5fpryTT0QlNvXapuLZpwz2mB71FqiOCtJCUJgTkh27JBiAtqXVPo5BzA7
9FlPrsD6aZeAnLU1VNhug43fOPpbojbhxh5A3rYZfHTf2ybdNunH1OhuZxXW6dssnmEmaIhaYP/U
tSLQxjYWOD87MQ4xPqXgJim9qdjCyeahZxxq1nIffw2rSxV1NEvmZCAxL36YKl0GAW3YS4F4uFS8
x1YSENfQJ73Udn5tHSJeGSFENuCPYsx9hzSkZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qj9gP4qHXnXCCpJZ/JRrfJQ00aSx5M3lry54cSga6L06lD57E8z9cXvRs4wlWKvNeI4t2AJUBfno
c+wBxeYehxKV0i5djUu2f2POYD7mKsvIEwBqFdH8DrWT6HlCoVA8Q9eoexvCIS/wdQfK0ffC4Cjn
EqHJu36klx/obPW9UX31pTg7/MjKbKyf0gI1Rk5AmCmpcmn2TlwTuRBmL7rN10wnSUa7rqPdJDRb
IqzO6KJ/p0jy49ahM5eOZJv9IEAiv6tPxvt1I+EJDcfcTHilycXw4eAiJltkyWYq9xAu+X0MFTIQ
huJ6DIEtS5ePb7dlz0yLGo5/t6sI4PkAuSmXRA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ik0+aTuRg5cQSkqsgTbo1AOZsjY4SWPuW9a+zApyRd0C/IVoGOXdcsYxjqZWPhrQ1QBRwIE155k3
eHfCYz5z5Tpmdfb0oSXR0LZp2llQtzsMgoD7G3jsL83f9LhicNlPy6kDQLlZAVLy5s5Z8Bbbq/0L
g2QtC2/nQ779pqaWLF4LMaD0rxwQ76fAP19OrkCPt++eZ4oWMtrGbeRTxUTGYUCSzvGjVYdH3HW6
KiF88yn2La3scE23dhz4vfob7BeNFrN2Fg7VV/A0/TAZYxUsfqJqj2tg4661EkWy5odzd4KFVL1j
AKDb6Qo6z0UdgjDEO/lD0xKbGkud7UTBDfKqyw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12832)
`pragma protect data_block
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
wX4IZHfaLw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
