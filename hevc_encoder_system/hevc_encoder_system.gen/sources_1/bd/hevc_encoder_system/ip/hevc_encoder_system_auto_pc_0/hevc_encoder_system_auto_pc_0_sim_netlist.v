// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Apr 20 16:54:41 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_auto_pc_0/hevc_encoder_system_auto_pc_0_sim_netlist.v
// Design      : hevc_encoder_system_auto_pc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hevc_encoder_system_auto_pc_0,axi_protocol_converter_v2_1_26_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_26_axi_protocol_converter,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module hevc_encoder_system_auto_pc_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 8, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  hevc_encoder_system_auto_pc_0_axi_protocol_converter_v2_1_26_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_25_axic_fifo" *) 
module hevc_encoder_system_auto_pc_0_axi_data_fifo_v2_1_25_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  hevc_encoder_system_auto_pc_0_axi_data_fifo_v2_1_25_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_25_fifo_gen" *) 
module hevc_encoder_system_auto_pc_0_axi_data_fifo_v2_1_25_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  hevc_encoder_system_auto_pc_0_fifo_generator_v13_2_7 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_a_axi3_conv" *) 
module hevc_encoder_system_auto_pc_0_axi_protocol_converter_v2_1_26_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  hevc_encoder_system_auto_pc_0_axi_data_fifo_v2_1_25_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_axi3_conv" *) 
module hevc_encoder_system_auto_pc_0_axi_protocol_converter_v2_1_26_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  hevc_encoder_system_auto_pc_0_axi_protocol_converter_v2_1_26_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  hevc_encoder_system_auto_pc_0_axi_protocol_converter_v2_1_26_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_axi_protocol_converter" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b011" *) (* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) 
(* P_INCR = "2'b01" *) (* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module hevc_encoder_system_auto_pc_0_axi_protocol_converter_v2_1_26_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  hevc_encoder_system_auto_pc_0_axi_protocol_converter_v2_1_26_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_26_w_axi3_conv" *) 
module hevc_encoder_system_auto_pc_0_axi_protocol_converter_v2_1_26_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module hevc_encoder_system_auto_pc_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h4/8v0FBgXUomE5kJVs58UlO/ao4SLHpniPXt+fomPPYB6tv3U0iBfOL5737ZNNEhgP1kkKeMvq+
VxOLW94g7JZT6mWc5ZuQ7jgK8Qpa6+1xpVVQBB6gVSEeHij7ZHqPdYaLC9rL/SR7notnBC1OujFi
++mTu5z/HJZtnN4VJQw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Su6POoQw092/hg4JN8GOCSrLUa435VAUaqUned4C4G61yBHlUmaG63UO+KxY5pgyMrDH6/XH2bPa
fona2wB0Y0sw6W61PXOfiew7cH42baMY0P9UBRjH25EZTf72W3O8r7DNj16ob9pPi7bkuCd3aab3
hdfeY613n+hUbAXTLQqbhjqGmO9kFeC/VmdSITa02RauMnpfVxz1wLu9iUQ0V+mPTp6hvfNXlD0F
7oONLZJg+c6/+uSw1WbEiltO2Lplqvbb0sYbZjtTSEQZSdF4DiUdA0SGK+L75aDYGx3Z/ajCRpBx
Mr39wb5wiDr6SJ/QQ/JmYc+HrTs/fbN9BJ/Grg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JbOromwhdJgnOFMOfO8mpnyFC1anQPoDL/XeHYQuoY4+0yjNmPGasGLGjanpoUgfOYngBHPrFFFH
rapGBPsHEbT6JXWHeRJexf2moVhmq1sHJ7n+Jx1rVNuyclUCC08Fg3sy6FdUQmptKSpqOw1x0DV8
R9ZlmwLTkoN8IV6D7sg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XbCcyKbk3pmZ92QhZ1iCj+9jpzUJAn91N3YYwVHN3gwcgTU0NRr0oD7EmkLoZ8hVAhh/9YMUp7DE
059wcAzCBsD2W3CWY+GHUSJS57Xt2yi9tZH7binajEyHpCqaFKKO9WxDTO9XnYLVswRvAii0DOJL
mY+z3Z0uDx55BVWqbbvDkA5gABsZLueFt15rXRJPRnAjzWXhYzjiqC1WQDy5UHl/LBDlsOMuouyd
gM4k7zzEZUOy4o1sI2isD+6T/wd+iOsXvq39rguDUtkw3SR4GJmk+rBu3rBh+EvBHKxaWqQjGGNV
qWyrqd89LjZFGnXZ2jvsgxldJWCellgTK1ZEfA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dG5h8R2Fe36rfzcvmeDU4OapeKO/Lhe0DkL+4c9AG4It+1yVmtHeEWL8eVWMvHdPTwqJqgkMQbh4
OO9/9XZMyYCWFJTHu4ossKo7zKccfTeBbKfgP+rDEckDTGIWXihj2YJ2N0p6q9Ynpsz9qOLdoXTY
gZXwoOe4MrZBJWZrDOqkD1hQ+cRUV9c8S6FlH+AyBNj5dlaAM0Jyq6a8TvcRmLoZfdi1zFWXeTUW
/XfWQRP+vnqqV8VPdyfaJJzaKnG1u9PnvSFauc3SzydGZfICacU2pPxqAaJWzDYwSns+vd4vCu7u
e01UXo4XXeFCvO/9mye0QnyrDHhuE0b1Svw/jQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8hvyEyHvgdg02DFF2GnEdLUq6j/uKT5fsI+Nkpbw14CRrq5p+STF83Or85VDleAax2TYln4LhGn
6G6INbZ4BdMuA4nVtyx5xaogScfMwbjrTAn0bqxT20M++g4cn4gW2g3oEFMnXaYCsLaJ58t4/T42
ocO8oqJeCowKICP/eM+B+/jSusNp4JILdp522MKky1zANadPwlv8a7QrMrJQrnb/lF8qC10yXqfM
LbKfbAEBaHlel46y7YBqdIimfeAVng194wkXobD6WuMhQOpFkigBOLQzoKQWN1TWeY5/rSQt9pcT
xLm+NEQmtlL61OudMCIqm++dCQSgE4NFJj1fCw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gSLVZdmdCqRy/3LoTp5M48T1hUUfGQp8cxVz4NQ+P65mrZ0oJJXHSaNbzdvtYH41+27aGh3RBbLb
pzz+TmeVuEVneG5nGe1VY2ogM1D7tBMRUvNgXK2PkSRLnk9tYgnxoYi0cYLBxa3piqBh44cdYXif
bT0Uh2vFogmdeH5hxVNFk8FEhULNtR/T9r9ilPNDQALb08fQM461sjlhS2jgRgH0X8LZqnBOii+F
7+GguDMENTlzU0XSYWEcGFH9V5PdYMehb0WgZeiqTchxRuQFmLjDhI4J5dkci8RmkLCwz4KyjfOi
S8Nkg20qh9otuAisfQTh4Qx2lC7x7BHgmuwy0w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kXlkvzJI7Tq1glqNfjqmCb8YU69bhN9hH5OsWvFNj7VseyX6/5l9Mgif4B1r1LeKz06I27dmB9g7
AuHBFZ0bPN86mURBL/HK/dTOGyLYAveWeOIK1kqX56i4H9UNIUObEphcz9wdT0OgXHTPMxiIpJhT
1o5oYJW49mDsAv5yxe4FvPo6rFgZAiEo34vJGDxzz4//zJq0z+GxJNCibpLydZBWaJWRfsDUs9pm
1O6hS3KPIL5Evg1JOFt1uwKb1xEA08ETT+qYwg6zmFfwQbs6O7modRmBtEd1n9mrqsgCAviiLPtN
LUFiLdrywPt7LArLCRz4h5uHJxz/21Pj5m1VZtZq9nFmsbp6Lw/0RF1+nN8o+RIu+/tmu74xkL/8
nNEc9mEFy912OKP6WDP4Ajzg4gl9xhtaYA5eGkNB/43YjgGsmTe+L0dyxHIwa734JNMb5zC5dRtR
V4pCnWZKmnDJDXvMftedQzqQvdFwJg5hLxrHfkPD8LqiOwVck/Nt6QSF

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ADtaDIjUIR6zZBfz+lPRaDMdXcoufPACX4aSe06/DoTgIDvM+UOlm8rH20gKO3r8YdsuLtUh7rhz
ekJB22nBPUdbl3FvlGdQIgiCyJ8XgZYvvuOo9I765yKjFxQsFmQE0Ih86fqCqvYmRnsZkpk1uQ7v
JpqhWGBX6tLgYu/txP+ShnzFfkWGhj29JhYII0zqJMBCjGeM89F+mlH+X/YL5Q/fZYyh9Cr2CJx6
ofJpBZ1SPlXwgafXVi0QAUVuQEBmZYVn9Kze++tMEr6qv62ANq23LevYQfCsYKoY5iyf5U7jJ5Qx
eC9nG5Es4y6lz5giep7veaXdBFBHd7VuD56v4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zFwVPvNmX5sBruiGDSfENTp6EBfydwYKhxWi0YDKQ4j0gu6AMV8yJP6GXeJs/A9Zgb1UFE+sJifk
OngE9N2vVRp43pAVauHQf1hUkSWPDJuZ9yEQZbR7F3mmiBKu/Aehj7KcAjv07FWv46HzxRL9E2xx
gpDOzAyNSNubxORv7bVYUV0C4Fr+tZRA6douG4rxi56npPfzIAZjyU4wPvwabxrJ9L4ZRuZXciLk
lJGTIJZTH2uclPmuo57jlIXGo1ZtQZgRCDfn7W02AQ7MDKblx47m+E+sUKKYHZlvf30GkPcwlucZ
ZcUcGnYaRCZnrhwFl0qxxXn2pO15vG4MJXOHMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lq86c/0SMuvdLuij6dbfI/ah4/50WGATVNRwXobLfbnZqWOhhEk3VDQATTxe7ZLrUauwrLuMoKhS
j4kqT2raqDijA51Tz7ee+F/MUKvyxGDJqfBi5JJX9y81LCXav7HpdRiPTy6w5O3tQoQbugh61D0B
oJBwNvL22Oi10e+Bu7H1yQvsbksxPAA8VE8HK+OJzZETk0PfHS2ySL5WXLQf7duD6CWmpWdLMrZQ
ojOqvNL31LsO1gZhssTk4RgyZUrZ3CboBbLWDxq2L/SsF5YiRIUPDTe17rRcrxa1y6LzMD/ve/nR
mptJOGxlUgLpJaPAA7jH3b+EQGlrHzHOsG8fFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71520)
`pragma protect data_block
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
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
