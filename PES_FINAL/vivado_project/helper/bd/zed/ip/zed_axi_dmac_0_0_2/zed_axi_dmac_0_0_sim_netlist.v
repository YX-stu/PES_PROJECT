// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (lin64) Build 2489853 Tue Mar 26 04:18:30 MDT 2019
// Date        : Tue Apr 23 18:30:20 2019
// Host        : itiv-work1.itiv.kit.edu running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/hotfilter/lehre/dhl/vivado_project/helper/bd/zed/ip/zed_axi_dmac_0_0_2/zed_axi_dmac_0_0_sim_netlist.v
// Design      : zed_axi_dmac_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zed_axi_dmac_0_0,axi_dmac,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_dmac,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module zed_axi_dmac_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awprot,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arprot,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rdata,
    irq,
    m_src_axi_aclk,
    m_src_axi_aresetn,
    m_src_axi_arready,
    m_src_axi_arvalid,
    m_src_axi_araddr,
    m_src_axi_arlen,
    m_src_axi_arsize,
    m_src_axi_arburst,
    m_src_axi_arprot,
    m_src_axi_arcache,
    m_src_axi_rdata,
    m_src_axi_rready,
    m_src_axi_rvalid,
    m_src_axi_rresp,
    m_src_axi_rlast,
    m_axis_aclk,
    m_axis_ready,
    m_axis_valid,
    m_axis_data,
    m_axis_last,
    m_axis_xfer_req);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [11:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [11:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]s_axi_rdata;
  output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_src_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_src_axi_aclk, ASSOCIATED_BUSIF m_src_axi, ASSOCIATED_RESET m_src_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m_src_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_src_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_src_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_src_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARREADY" *) input m_src_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARVALID" *) output m_src_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARADDR" *) output [28:0]m_src_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARLEN" *) output [3:0]m_src_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARSIZE" *) output [2:0]m_src_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARBURST" *) output [1:0]m_src_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARPROT" *) output [2:0]m_src_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARCACHE" *) output [3:0]m_src_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RDATA" *) input [63:0]m_src_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RREADY" *) output m_src_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RVALID" *) input m_src_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RRESP" *) input [1:0]m_src_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_src_axi, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 29, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 0, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input m_src_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_aclk CLK, xilinx.com:signal:clock:1.0 m_axis_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aclk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME m_axis_signal_clock, ASSOCIATED_BUSIF m_axis, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [63:0]m_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_last;
  output m_axis_xfer_req;

  wire irq;
  wire m_axis_aclk;
  wire [63:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_axis_xfer_req;
  wire m_src_axi_aclk;
  wire [28:0]m_src_axi_araddr;
  wire [1:0]m_src_axi_arburst;
  wire [3:0]m_src_axi_arcache;
  wire m_src_axi_aresetn;
  wire [3:0]m_src_axi_arlen;
  wire [2:0]m_src_axi_arprot;
  wire m_src_axi_arready;
  wire [2:0]m_src_axi_arsize;
  wire m_src_axi_arvalid;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rready;
  wire [1:0]m_src_axi_rresp;
  wire m_src_axi_rvalid;
  wire s_axi_aclk;
  wire [11:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_fifo_rd_underflow_UNCONNECTED;
  wire NLW_inst_fifo_rd_valid_UNCONNECTED;
  wire NLW_inst_fifo_rd_xfer_req_UNCONNECTED;
  wire NLW_inst_fifo_wr_overflow_UNCONNECTED;
  wire NLW_inst_fifo_wr_xfer_req_UNCONNECTED;
  wire NLW_inst_m_dest_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_dest_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_dest_axi_bready_UNCONNECTED;
  wire NLW_inst_m_dest_axi_rready_UNCONNECTED;
  wire NLW_inst_m_dest_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_dest_axi_wvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_bready_UNCONNECTED;
  wire NLW_inst_m_src_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_src_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axis_ready_UNCONNECTED;
  wire NLW_inst_s_axis_xfer_req_UNCONNECTED;
  wire [7:0]NLW_inst_dest_diag_level_bursts_UNCONNECTED;
  wire [63:0]NLW_inst_fifo_rd_dout_UNCONNECTED;
  wire [28:0]NLW_inst_m_dest_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_dest_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_dest_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arsize_UNCONNECTED;
  wire [28:0]NLW_inst_m_dest_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_dest_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_dest_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_awsize_UNCONNECTED;
  wire [63:0]NLW_inst_m_dest_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_wid_UNCONNECTED;
  wire [7:0]NLW_inst_m_dest_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_arid_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_arlock_UNCONNECTED;
  wire [28:0]NLW_inst_m_src_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awsize_UNCONNECTED;
  wire [63:0]NLW_inst_m_src_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_wid_UNCONNECTED;
  wire [7:0]NLW_inst_m_src_axi_wstrb_UNCONNECTED;

  (* ALLOW_ASYM_MEM = "1" *) 
  (* ASYNC_CLK_DEST_REQ = "1'b0" *) 
  (* ASYNC_CLK_REQ_SRC = "1'b0" *) 
  (* ASYNC_CLK_SRC_DEST = "1'b0" *) 
  (* AXI_ID_WIDTH_DEST = "1" *) 
  (* AXI_ID_WIDTH_SRC = "1" *) 
  (* AXI_SLICE_DEST = "1'b0" *) 
  (* AXI_SLICE_SRC = "1'b0" *) 
  (* BEATS_PER_BURST_LIMIT_DEST = "1024" *) 
  (* BEATS_PER_BURST_LIMIT_SRC = "16" *) 
  (* BYTES_PER_BEAT_WIDTH_DEST = "3" *) 
  (* BYTES_PER_BEAT_WIDTH_SRC = "3" *) 
  (* BYTES_PER_BURST_LIMIT = "128" *) 
  (* BYTES_PER_BURST_LIMIT_DEST = "8192" *) 
  (* BYTES_PER_BURST_LIMIT_SRC = "128" *) 
  (* BYTES_PER_BURST_WIDTH = "7" *) 
  (* CYCLIC = "1'b1" *) 
  (* DBG_ID_PADDING = "4" *) 
  (* DISABLE_DEBUG_REGISTERS = "1'b0" *) 
  (* DMA_2D_TRANSFER = "1'b1" *) 
  (* DMA_AXI_ADDR_WIDTH = "29" *) 
  (* DMA_AXI_PROTOCOL_DEST = "0" *) 
  (* DMA_AXI_PROTOCOL_SRC = "1" *) 
  (* DMA_DATA_WIDTH_DEST = "64" *) 
  (* DMA_DATA_WIDTH_SRC = "64" *) 
  (* DMA_LENGTH_ALIGN = "3" *) 
  (* DMA_LENGTH_ALIGN_DEST = "3" *) 
  (* DMA_LENGTH_ALIGN_SRC = "0" *) 
  (* DMA_LENGTH_WIDTH = "24" *) 
  (* DMA_TYPE_AXI_MM = "0" *) 
  (* DMA_TYPE_AXI_STREAM = "1" *) 
  (* DMA_TYPE_DEST = "1" *) 
  (* DMA_TYPE_FIFO = "2" *) 
  (* DMA_TYPE_SRC = "0" *) 
  (* ENABLE_DIAGNOSTICS_IF = "1'b0" *) 
  (* FIFO_SIZE = "8" *) 
  (* HAS_DEST_ADDR = "1'b0" *) 
  (* HAS_SRC_ADDR = "1'b1" *) 
  (* ID = "0" *) 
  (* ID_WIDTH = "4" *) 
  (* MAX_BYTES_PER_BURST = "128" *) 
  (* REAL_MAX_BYTES_PER_BURST = "128" *) 
  (* SYNC_TRANSFER_START = "1'b0" *) 
  zed_axi_dmac_0_0_axi_dmac inst
       (.dest_diag_level_bursts(NLW_inst_dest_diag_level_bursts_UNCONNECTED[7:0]),
        .fifo_rd_clk(1'b0),
        .fifo_rd_dout(NLW_inst_fifo_rd_dout_UNCONNECTED[63:0]),
        .fifo_rd_en(1'b0),
        .fifo_rd_underflow(NLW_inst_fifo_rd_underflow_UNCONNECTED),
        .fifo_rd_valid(NLW_inst_fifo_rd_valid_UNCONNECTED),
        .fifo_rd_xfer_req(NLW_inst_fifo_rd_xfer_req_UNCONNECTED),
        .fifo_wr_clk(1'b0),
        .fifo_wr_din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fifo_wr_en(1'b0),
        .fifo_wr_overflow(NLW_inst_fifo_wr_overflow_UNCONNECTED),
        .fifo_wr_sync(1'b1),
        .fifo_wr_xfer_req(NLW_inst_fifo_wr_xfer_req_UNCONNECTED),
        .irq(irq),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_last(m_axis_last),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .m_axis_xfer_req(m_axis_xfer_req),
        .m_dest_axi_aclk(1'b0),
        .m_dest_axi_araddr(NLW_inst_m_dest_axi_araddr_UNCONNECTED[28:0]),
        .m_dest_axi_arburst(NLW_inst_m_dest_axi_arburst_UNCONNECTED[1:0]),
        .m_dest_axi_arcache(NLW_inst_m_dest_axi_arcache_UNCONNECTED[3:0]),
        .m_dest_axi_aresetn(1'b0),
        .m_dest_axi_arid(NLW_inst_m_dest_axi_arid_UNCONNECTED[0]),
        .m_dest_axi_arlen(NLW_inst_m_dest_axi_arlen_UNCONNECTED[7:0]),
        .m_dest_axi_arlock(NLW_inst_m_dest_axi_arlock_UNCONNECTED[0]),
        .m_dest_axi_arprot(NLW_inst_m_dest_axi_arprot_UNCONNECTED[2:0]),
        .m_dest_axi_arready(1'b0),
        .m_dest_axi_arsize(NLW_inst_m_dest_axi_arsize_UNCONNECTED[2:0]),
        .m_dest_axi_arvalid(NLW_inst_m_dest_axi_arvalid_UNCONNECTED),
        .m_dest_axi_awaddr(NLW_inst_m_dest_axi_awaddr_UNCONNECTED[28:0]),
        .m_dest_axi_awburst(NLW_inst_m_dest_axi_awburst_UNCONNECTED[1:0]),
        .m_dest_axi_awcache(NLW_inst_m_dest_axi_awcache_UNCONNECTED[3:0]),
        .m_dest_axi_awid(NLW_inst_m_dest_axi_awid_UNCONNECTED[0]),
        .m_dest_axi_awlen(NLW_inst_m_dest_axi_awlen_UNCONNECTED[7:0]),
        .m_dest_axi_awlock(NLW_inst_m_dest_axi_awlock_UNCONNECTED[0]),
        .m_dest_axi_awprot(NLW_inst_m_dest_axi_awprot_UNCONNECTED[2:0]),
        .m_dest_axi_awready(1'b0),
        .m_dest_axi_awsize(NLW_inst_m_dest_axi_awsize_UNCONNECTED[2:0]),
        .m_dest_axi_awvalid(NLW_inst_m_dest_axi_awvalid_UNCONNECTED),
        .m_dest_axi_bid(1'b0),
        .m_dest_axi_bready(NLW_inst_m_dest_axi_bready_UNCONNECTED),
        .m_dest_axi_bresp({1'b0,1'b0}),
        .m_dest_axi_bvalid(1'b0),
        .m_dest_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_dest_axi_rid(1'b0),
        .m_dest_axi_rlast(1'b0),
        .m_dest_axi_rready(NLW_inst_m_dest_axi_rready_UNCONNECTED),
        .m_dest_axi_rresp({1'b0,1'b0}),
        .m_dest_axi_rvalid(1'b0),
        .m_dest_axi_wdata(NLW_inst_m_dest_axi_wdata_UNCONNECTED[63:0]),
        .m_dest_axi_wid(NLW_inst_m_dest_axi_wid_UNCONNECTED[0]),
        .m_dest_axi_wlast(NLW_inst_m_dest_axi_wlast_UNCONNECTED),
        .m_dest_axi_wready(1'b0),
        .m_dest_axi_wstrb(NLW_inst_m_dest_axi_wstrb_UNCONNECTED[7:0]),
        .m_dest_axi_wvalid(NLW_inst_m_dest_axi_wvalid_UNCONNECTED),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(m_src_axi_araddr),
        .m_src_axi_arburst(m_src_axi_arburst),
        .m_src_axi_arcache(m_src_axi_arcache),
        .m_src_axi_aresetn(m_src_axi_aresetn),
        .m_src_axi_arid(NLW_inst_m_src_axi_arid_UNCONNECTED[0]),
        .m_src_axi_arlen(m_src_axi_arlen),
        .m_src_axi_arlock(NLW_inst_m_src_axi_arlock_UNCONNECTED[1:0]),
        .m_src_axi_arprot(m_src_axi_arprot),
        .m_src_axi_arready(m_src_axi_arready),
        .m_src_axi_arsize(m_src_axi_arsize),
        .m_src_axi_arvalid(m_src_axi_arvalid),
        .m_src_axi_awaddr(NLW_inst_m_src_axi_awaddr_UNCONNECTED[28:0]),
        .m_src_axi_awburst(NLW_inst_m_src_axi_awburst_UNCONNECTED[1:0]),
        .m_src_axi_awcache(NLW_inst_m_src_axi_awcache_UNCONNECTED[3:0]),
        .m_src_axi_awid(NLW_inst_m_src_axi_awid_UNCONNECTED[0]),
        .m_src_axi_awlen(NLW_inst_m_src_axi_awlen_UNCONNECTED[3:0]),
        .m_src_axi_awlock(NLW_inst_m_src_axi_awlock_UNCONNECTED[1:0]),
        .m_src_axi_awprot(NLW_inst_m_src_axi_awprot_UNCONNECTED[2:0]),
        .m_src_axi_awready(1'b0),
        .m_src_axi_awsize(NLW_inst_m_src_axi_awsize_UNCONNECTED[2:0]),
        .m_src_axi_awvalid(NLW_inst_m_src_axi_awvalid_UNCONNECTED),
        .m_src_axi_bid(1'b0),
        .m_src_axi_bready(NLW_inst_m_src_axi_bready_UNCONNECTED),
        .m_src_axi_bresp({1'b0,1'b0}),
        .m_src_axi_bvalid(1'b0),
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rid(1'b0),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rready(m_src_axi_rready),
        .m_src_axi_rresp(m_src_axi_rresp),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .m_src_axi_wdata(NLW_inst_m_src_axi_wdata_UNCONNECTED[63:0]),
        .m_src_axi_wid(NLW_inst_m_src_axi_wid_UNCONNECTED[0]),
        .m_src_axi_wlast(NLW_inst_m_src_axi_wlast_UNCONNECTED),
        .m_src_axi_wready(1'b0),
        .m_src_axi_wstrb(NLW_inst_m_src_axi_wstrb_UNCONNECTED[7:0]),
        .m_src_axi_wvalid(NLW_inst_m_src_axi_wvalid_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk(1'b0),
        .s_axis_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_last(1'b0),
        .s_axis_ready(NLW_inst_s_axis_ready_UNCONNECTED),
        .s_axis_user(1'b1),
        .s_axis_valid(1'b0),
        .s_axis_xfer_req(NLW_inst_s_axis_xfer_req_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "ad_mem_asym" *) 
module zed_axi_dmac_0_0_ad_mem_asym
   (m_axis_data,
    E,
    m_axis_aclk,
    m_src_axi_aclk,
    ADDRARDADDR,
    ADDRBWRADDR,
    m_src_axi_rdata,
    m_src_axi_rvalid,
    dest_valid,
    m_ram_reg_0,
    m_axis_ready,
    m_ram_reg_1);
  output [63:0]m_axis_data;
  output [0:0]E;
  input m_axis_aclk;
  input m_src_axi_aclk;
  input [6:0]ADDRARDADDR;
  input [6:0]ADDRBWRADDR;
  input [63:0]m_src_axi_rdata;
  input m_src_axi_rvalid;
  input dest_valid;
  input m_ram_reg_0;
  input m_axis_ready;
  input m_ram_reg_1;

  wire [6:0]ADDRARDADDR;
  wire [6:0]ADDRBWRADDR;
  wire [0:0]E;
  wire dest_valid;
  wire m_axis_aclk;
  wire [63:0]m_axis_data;
  wire m_axis_ready;
  wire m_ram_reg_0;
  wire m_ram_reg_1;
  wire m_src_axi_aclk;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rvalid;
  wire NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_m_ram_reg_DBITERR_UNCONNECTED;
  wire NLW_m_ram_reg_SBITERR_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_m_ram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_m_ram_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "m_ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "63" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    m_ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_m_ram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_m_ram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(m_axis_aclk),
        .CLKBWRCLK(m_src_axi_aclk),
        .DBITERR(NLW_m_ram_reg_DBITERR_UNCONNECTED),
        .DIADI(m_src_axi_rdata[31:0]),
        .DIBDI(m_src_axi_rdata[63:32]),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(m_axis_data[31:0]),
        .DOBDO(m_axis_data[63:32]),
        .DOPADOP(NLW_m_ram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_m_ram_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_m_ram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(E),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_m_ram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_m_ram_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid}));
  LUT4 #(
    .INIT(16'hA222)) 
    m_ram_reg_i_1
       (.I0(dest_valid),
        .I1(m_ram_reg_0),
        .I2(m_axis_ready),
        .I3(m_ram_reg_1),
        .O(E));
endmodule

(* ALLOW_ASYM_MEM = "1" *) (* ASYNC_CLK_DEST_REQ = "1'b0" *) (* ASYNC_CLK_REQ_SRC = "1'b0" *) 
(* ASYNC_CLK_SRC_DEST = "1'b0" *) (* AXI_ID_WIDTH_DEST = "1" *) (* AXI_ID_WIDTH_SRC = "1" *) 
(* AXI_SLICE_DEST = "1'b0" *) (* AXI_SLICE_SRC = "1'b0" *) (* BEATS_PER_BURST_LIMIT_DEST = "1024" *) 
(* BEATS_PER_BURST_LIMIT_SRC = "16" *) (* BYTES_PER_BEAT_WIDTH_DEST = "3" *) (* BYTES_PER_BEAT_WIDTH_SRC = "3" *) 
(* BYTES_PER_BURST_LIMIT = "128" *) (* BYTES_PER_BURST_LIMIT_DEST = "8192" *) (* BYTES_PER_BURST_LIMIT_SRC = "128" *) 
(* BYTES_PER_BURST_WIDTH = "7" *) (* CYCLIC = "1'b1" *) (* DBG_ID_PADDING = "4" *) 
(* DISABLE_DEBUG_REGISTERS = "1'b0" *) (* DMA_2D_TRANSFER = "1'b1" *) (* DMA_AXI_ADDR_WIDTH = "29" *) 
(* DMA_AXI_PROTOCOL_DEST = "0" *) (* DMA_AXI_PROTOCOL_SRC = "1" *) (* DMA_DATA_WIDTH_DEST = "64" *) 
(* DMA_DATA_WIDTH_SRC = "64" *) (* DMA_LENGTH_ALIGN = "3" *) (* DMA_LENGTH_ALIGN_DEST = "3" *) 
(* DMA_LENGTH_ALIGN_SRC = "0" *) (* DMA_LENGTH_WIDTH = "24" *) (* DMA_TYPE_AXI_MM = "0" *) 
(* DMA_TYPE_AXI_STREAM = "1" *) (* DMA_TYPE_DEST = "1" *) (* DMA_TYPE_FIFO = "2" *) 
(* DMA_TYPE_SRC = "0" *) (* ENABLE_DIAGNOSTICS_IF = "1'b0" *) (* FIFO_SIZE = "8" *) 
(* HAS_DEST_ADDR = "1'b0" *) (* HAS_SRC_ADDR = "1'b1" *) (* ID = "0" *) 
(* ID_WIDTH = "4" *) (* MAX_BYTES_PER_BURST = "128" *) (* ORIG_REF_NAME = "axi_dmac" *) 
(* REAL_MAX_BYTES_PER_BURST = "128" *) (* SYNC_TRANSFER_START = "1'b0" *) 
module zed_axi_dmac_0_0_axi_dmac
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awprot,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arprot,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rdata,
    irq,
    m_dest_axi_aclk,
    m_dest_axi_aresetn,
    m_dest_axi_awaddr,
    m_dest_axi_awlen,
    m_dest_axi_awsize,
    m_dest_axi_awburst,
    m_dest_axi_awprot,
    m_dest_axi_awcache,
    m_dest_axi_awvalid,
    m_dest_axi_awready,
    m_dest_axi_awid,
    m_dest_axi_awlock,
    m_dest_axi_wdata,
    m_dest_axi_wstrb,
    m_dest_axi_wready,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    m_dest_axi_wid,
    m_dest_axi_bvalid,
    m_dest_axi_bresp,
    m_dest_axi_bready,
    m_dest_axi_bid,
    m_dest_axi_arvalid,
    m_dest_axi_araddr,
    m_dest_axi_arlen,
    m_dest_axi_arsize,
    m_dest_axi_arburst,
    m_dest_axi_arcache,
    m_dest_axi_arprot,
    m_dest_axi_arready,
    m_dest_axi_rvalid,
    m_dest_axi_rresp,
    m_dest_axi_rdata,
    m_dest_axi_rready,
    m_dest_axi_arid,
    m_dest_axi_arlock,
    m_dest_axi_rid,
    m_dest_axi_rlast,
    m_src_axi_aclk,
    m_src_axi_aresetn,
    m_src_axi_arready,
    m_src_axi_arvalid,
    m_src_axi_araddr,
    m_src_axi_arlen,
    m_src_axi_arsize,
    m_src_axi_arburst,
    m_src_axi_arprot,
    m_src_axi_arcache,
    m_src_axi_arid,
    m_src_axi_arlock,
    m_src_axi_rdata,
    m_src_axi_rready,
    m_src_axi_rvalid,
    m_src_axi_rresp,
    m_src_axi_rid,
    m_src_axi_rlast,
    m_src_axi_awvalid,
    m_src_axi_awaddr,
    m_src_axi_awlen,
    m_src_axi_awsize,
    m_src_axi_awburst,
    m_src_axi_awcache,
    m_src_axi_awprot,
    m_src_axi_awready,
    m_src_axi_wvalid,
    m_src_axi_wdata,
    m_src_axi_wstrb,
    m_src_axi_wlast,
    m_src_axi_wready,
    m_src_axi_bvalid,
    m_src_axi_bresp,
    m_src_axi_bready,
    m_src_axi_awid,
    m_src_axi_awlock,
    m_src_axi_wid,
    m_src_axi_bid,
    s_axis_aclk,
    s_axis_ready,
    s_axis_valid,
    s_axis_data,
    s_axis_user,
    s_axis_last,
    s_axis_xfer_req,
    m_axis_aclk,
    m_axis_ready,
    m_axis_valid,
    m_axis_data,
    m_axis_last,
    m_axis_xfer_req,
    fifo_wr_clk,
    fifo_wr_en,
    fifo_wr_din,
    fifo_wr_overflow,
    fifo_wr_sync,
    fifo_wr_xfer_req,
    fifo_rd_clk,
    fifo_rd_en,
    fifo_rd_valid,
    fifo_rd_dout,
    fifo_rd_underflow,
    fifo_rd_xfer_req,
    dest_diag_level_bursts);
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input [11:0]s_axi_awaddr;
  output s_axi_awready;
  input [2:0]s_axi_awprot;
  input s_axi_wvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  input s_axi_arvalid;
  input [11:0]s_axi_araddr;
  output s_axi_arready;
  input [2:0]s_axi_arprot;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output irq;
  input m_dest_axi_aclk;
  input m_dest_axi_aresetn;
  output [28:0]m_dest_axi_awaddr;
  output [7:0]m_dest_axi_awlen;
  output [2:0]m_dest_axi_awsize;
  output [1:0]m_dest_axi_awburst;
  output [2:0]m_dest_axi_awprot;
  output [3:0]m_dest_axi_awcache;
  output m_dest_axi_awvalid;
  input m_dest_axi_awready;
  output [0:0]m_dest_axi_awid;
  output [0:0]m_dest_axi_awlock;
  output [63:0]m_dest_axi_wdata;
  output [7:0]m_dest_axi_wstrb;
  input m_dest_axi_wready;
  output m_dest_axi_wvalid;
  output m_dest_axi_wlast;
  output [0:0]m_dest_axi_wid;
  input m_dest_axi_bvalid;
  input [1:0]m_dest_axi_bresp;
  output m_dest_axi_bready;
  input [0:0]m_dest_axi_bid;
  output m_dest_axi_arvalid;
  output [28:0]m_dest_axi_araddr;
  output [7:0]m_dest_axi_arlen;
  output [2:0]m_dest_axi_arsize;
  output [1:0]m_dest_axi_arburst;
  output [3:0]m_dest_axi_arcache;
  output [2:0]m_dest_axi_arprot;
  input m_dest_axi_arready;
  input m_dest_axi_rvalid;
  input [1:0]m_dest_axi_rresp;
  input [63:0]m_dest_axi_rdata;
  output m_dest_axi_rready;
  output [0:0]m_dest_axi_arid;
  output [0:0]m_dest_axi_arlock;
  input [0:0]m_dest_axi_rid;
  input m_dest_axi_rlast;
  input m_src_axi_aclk;
  input m_src_axi_aresetn;
  input m_src_axi_arready;
  output m_src_axi_arvalid;
  output [28:0]m_src_axi_araddr;
  output [3:0]m_src_axi_arlen;
  output [2:0]m_src_axi_arsize;
  output [1:0]m_src_axi_arburst;
  output [2:0]m_src_axi_arprot;
  output [3:0]m_src_axi_arcache;
  output [0:0]m_src_axi_arid;
  output [1:0]m_src_axi_arlock;
  input [63:0]m_src_axi_rdata;
  output m_src_axi_rready;
  input m_src_axi_rvalid;
  input [1:0]m_src_axi_rresp;
  input [0:0]m_src_axi_rid;
  input m_src_axi_rlast;
  output m_src_axi_awvalid;
  output [28:0]m_src_axi_awaddr;
  output [3:0]m_src_axi_awlen;
  output [2:0]m_src_axi_awsize;
  output [1:0]m_src_axi_awburst;
  output [3:0]m_src_axi_awcache;
  output [2:0]m_src_axi_awprot;
  input m_src_axi_awready;
  output m_src_axi_wvalid;
  output [63:0]m_src_axi_wdata;
  output [7:0]m_src_axi_wstrb;
  output m_src_axi_wlast;
  input m_src_axi_wready;
  input m_src_axi_bvalid;
  input [1:0]m_src_axi_bresp;
  output m_src_axi_bready;
  output [0:0]m_src_axi_awid;
  output [1:0]m_src_axi_awlock;
  output [0:0]m_src_axi_wid;
  input [0:0]m_src_axi_bid;
  input s_axis_aclk;
  output s_axis_ready;
  input s_axis_valid;
  input [63:0]s_axis_data;
  input [0:0]s_axis_user;
  input s_axis_last;
  output s_axis_xfer_req;
  input m_axis_aclk;
  input m_axis_ready;
  output m_axis_valid;
  output [63:0]m_axis_data;
  output m_axis_last;
  output m_axis_xfer_req;
  input fifo_wr_clk;
  input fifo_wr_en;
  input [63:0]fifo_wr_din;
  output fifo_wr_overflow;
  input fifo_wr_sync;
  output fifo_wr_xfer_req;
  input fifo_rd_clk;
  input fifo_rd_en;
  output fifo_rd_valid;
  output [63:0]fifo_rd_dout;
  output fifo_rd_underflow;
  output fifo_rd_xfer_req;
  output [7:0]dest_diag_level_bursts;

  wire \<const0> ;
  wire \<const1> ;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [28:3]data3;
  wire [2:0]dbg_ids0;
  wire [27:0]dbg_ids1;
  wire [6:0]dbg_status;
  wire i_regmap_n_0;
  wire i_regmap_n_100;
  wire i_regmap_n_101;
  wire i_regmap_n_102;
  wire i_regmap_n_103;
  wire i_regmap_n_104;
  wire i_regmap_n_105;
  wire i_regmap_n_106;
  wire i_regmap_n_13;
  wire i_regmap_n_14;
  wire i_regmap_n_86;
  wire i_regmap_n_87;
  wire i_regmap_n_88;
  wire i_regmap_n_89;
  wire i_regmap_n_90;
  wire i_regmap_n_91;
  wire i_regmap_n_92;
  wire i_regmap_n_93;
  wire i_regmap_n_94;
  wire i_regmap_n_95;
  wire i_regmap_n_96;
  wire i_regmap_n_97;
  wire i_regmap_n_98;
  wire i_regmap_n_99;
  wire \i_regmap_request/p_7_in ;
  wire i_transfer_n_118;
  wire i_transfer_n_119;
  wire i_transfer_n_120;
  wire i_transfer_n_121;
  wire i_transfer_n_122;
  wire i_transfer_n_123;
  wire i_transfer_n_124;
  wire i_transfer_n_125;
  wire i_transfer_n_126;
  wire i_transfer_n_127;
  wire i_transfer_n_128;
  wire i_transfer_n_129;
  wire i_transfer_n_130;
  wire i_transfer_n_131;
  wire i_transfer_n_132;
  wire i_transfer_n_133;
  wire irq;
  wire m_axis_aclk;
  wire [63:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_axis_xfer_req;
  wire m_src_axi_aclk;
  wire [28:3]\^m_src_axi_araddr ;
  wire [3:0]m_src_axi_arlen;
  wire m_src_axi_arready;
  wire m_src_axi_arvalid;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire [0:0]req_measured_burst_length;
  wire req_ready_gated;
  wire s_axi_aclk;
  wire [11:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire up_dma_cyclic;
  wire up_dma_last;
  wire up_dma_req_valid;
  wire [23:3]up_dma_x_length;
  wire [23:0]up_dma_y_length;
  wire up_req_eot;
  wire up_response_ready;
  wire up_response_valid;
  wire up_sot;

  assign dest_diag_level_bursts[7] = \<const0> ;
  assign dest_diag_level_bursts[6] = \<const0> ;
  assign dest_diag_level_bursts[5] = \<const0> ;
  assign dest_diag_level_bursts[4] = \<const0> ;
  assign dest_diag_level_bursts[3] = \<const0> ;
  assign dest_diag_level_bursts[2] = \<const0> ;
  assign dest_diag_level_bursts[1] = \<const0> ;
  assign dest_diag_level_bursts[0] = \<const0> ;
  assign fifo_rd_dout[63] = \<const0> ;
  assign fifo_rd_dout[62] = \<const0> ;
  assign fifo_rd_dout[61] = \<const0> ;
  assign fifo_rd_dout[60] = \<const0> ;
  assign fifo_rd_dout[59] = \<const0> ;
  assign fifo_rd_dout[58] = \<const0> ;
  assign fifo_rd_dout[57] = \<const0> ;
  assign fifo_rd_dout[56] = \<const0> ;
  assign fifo_rd_dout[55] = \<const0> ;
  assign fifo_rd_dout[54] = \<const0> ;
  assign fifo_rd_dout[53] = \<const0> ;
  assign fifo_rd_dout[52] = \<const0> ;
  assign fifo_rd_dout[51] = \<const0> ;
  assign fifo_rd_dout[50] = \<const0> ;
  assign fifo_rd_dout[49] = \<const0> ;
  assign fifo_rd_dout[48] = \<const0> ;
  assign fifo_rd_dout[47] = \<const0> ;
  assign fifo_rd_dout[46] = \<const0> ;
  assign fifo_rd_dout[45] = \<const0> ;
  assign fifo_rd_dout[44] = \<const0> ;
  assign fifo_rd_dout[43] = \<const0> ;
  assign fifo_rd_dout[42] = \<const0> ;
  assign fifo_rd_dout[41] = \<const0> ;
  assign fifo_rd_dout[40] = \<const0> ;
  assign fifo_rd_dout[39] = \<const0> ;
  assign fifo_rd_dout[38] = \<const0> ;
  assign fifo_rd_dout[37] = \<const0> ;
  assign fifo_rd_dout[36] = \<const0> ;
  assign fifo_rd_dout[35] = \<const0> ;
  assign fifo_rd_dout[34] = \<const0> ;
  assign fifo_rd_dout[33] = \<const0> ;
  assign fifo_rd_dout[32] = \<const0> ;
  assign fifo_rd_dout[31] = \<const0> ;
  assign fifo_rd_dout[30] = \<const0> ;
  assign fifo_rd_dout[29] = \<const0> ;
  assign fifo_rd_dout[28] = \<const0> ;
  assign fifo_rd_dout[27] = \<const0> ;
  assign fifo_rd_dout[26] = \<const0> ;
  assign fifo_rd_dout[25] = \<const0> ;
  assign fifo_rd_dout[24] = \<const0> ;
  assign fifo_rd_dout[23] = \<const0> ;
  assign fifo_rd_dout[22] = \<const0> ;
  assign fifo_rd_dout[21] = \<const0> ;
  assign fifo_rd_dout[20] = \<const0> ;
  assign fifo_rd_dout[19] = \<const0> ;
  assign fifo_rd_dout[18] = \<const0> ;
  assign fifo_rd_dout[17] = \<const0> ;
  assign fifo_rd_dout[16] = \<const0> ;
  assign fifo_rd_dout[15] = \<const0> ;
  assign fifo_rd_dout[14] = \<const0> ;
  assign fifo_rd_dout[13] = \<const0> ;
  assign fifo_rd_dout[12] = \<const0> ;
  assign fifo_rd_dout[11] = \<const0> ;
  assign fifo_rd_dout[10] = \<const0> ;
  assign fifo_rd_dout[9] = \<const0> ;
  assign fifo_rd_dout[8] = \<const0> ;
  assign fifo_rd_dout[7] = \<const0> ;
  assign fifo_rd_dout[6] = \<const0> ;
  assign fifo_rd_dout[5] = \<const0> ;
  assign fifo_rd_dout[4] = \<const0> ;
  assign fifo_rd_dout[3] = \<const0> ;
  assign fifo_rd_dout[2] = \<const0> ;
  assign fifo_rd_dout[1] = \<const0> ;
  assign fifo_rd_dout[0] = \<const0> ;
  assign fifo_rd_underflow = \<const0> ;
  assign fifo_rd_valid = \<const0> ;
  assign fifo_rd_xfer_req = \<const0> ;
  assign fifo_wr_overflow = \<const0> ;
  assign fifo_wr_xfer_req = \<const0> ;
  assign m_dest_axi_araddr[28] = \<const0> ;
  assign m_dest_axi_araddr[27] = \<const0> ;
  assign m_dest_axi_araddr[26] = \<const0> ;
  assign m_dest_axi_araddr[25] = \<const0> ;
  assign m_dest_axi_araddr[24] = \<const0> ;
  assign m_dest_axi_araddr[23] = \<const0> ;
  assign m_dest_axi_araddr[22] = \<const0> ;
  assign m_dest_axi_araddr[21] = \<const0> ;
  assign m_dest_axi_araddr[20] = \<const0> ;
  assign m_dest_axi_araddr[19] = \<const0> ;
  assign m_dest_axi_araddr[18] = \<const0> ;
  assign m_dest_axi_araddr[17] = \<const0> ;
  assign m_dest_axi_araddr[16] = \<const0> ;
  assign m_dest_axi_araddr[15] = \<const0> ;
  assign m_dest_axi_araddr[14] = \<const0> ;
  assign m_dest_axi_araddr[13] = \<const0> ;
  assign m_dest_axi_araddr[12] = \<const0> ;
  assign m_dest_axi_araddr[11] = \<const0> ;
  assign m_dest_axi_araddr[10] = \<const0> ;
  assign m_dest_axi_araddr[9] = \<const0> ;
  assign m_dest_axi_araddr[8] = \<const0> ;
  assign m_dest_axi_araddr[7] = \<const0> ;
  assign m_dest_axi_araddr[6] = \<const0> ;
  assign m_dest_axi_araddr[5] = \<const0> ;
  assign m_dest_axi_araddr[4] = \<const0> ;
  assign m_dest_axi_araddr[3] = \<const0> ;
  assign m_dest_axi_araddr[2] = \<const0> ;
  assign m_dest_axi_araddr[1] = \<const0> ;
  assign m_dest_axi_araddr[0] = \<const0> ;
  assign m_dest_axi_arburst[1] = \<const0> ;
  assign m_dest_axi_arburst[0] = \<const0> ;
  assign m_dest_axi_arcache[3] = \<const0> ;
  assign m_dest_axi_arcache[2] = \<const0> ;
  assign m_dest_axi_arcache[1] = \<const0> ;
  assign m_dest_axi_arcache[0] = \<const0> ;
  assign m_dest_axi_arid[0] = \<const0> ;
  assign m_dest_axi_arlen[7] = \<const0> ;
  assign m_dest_axi_arlen[6] = \<const0> ;
  assign m_dest_axi_arlen[5] = \<const0> ;
  assign m_dest_axi_arlen[4] = \<const0> ;
  assign m_dest_axi_arlen[3] = \<const0> ;
  assign m_dest_axi_arlen[2] = \<const0> ;
  assign m_dest_axi_arlen[1] = \<const0> ;
  assign m_dest_axi_arlen[0] = \<const0> ;
  assign m_dest_axi_arlock[0] = \<const0> ;
  assign m_dest_axi_arprot[2] = \<const0> ;
  assign m_dest_axi_arprot[1] = \<const0> ;
  assign m_dest_axi_arprot[0] = \<const0> ;
  assign m_dest_axi_arsize[2] = \<const0> ;
  assign m_dest_axi_arsize[1] = \<const0> ;
  assign m_dest_axi_arsize[0] = \<const0> ;
  assign m_dest_axi_arvalid = \<const0> ;
  assign m_dest_axi_awaddr[28] = \<const0> ;
  assign m_dest_axi_awaddr[27] = \<const0> ;
  assign m_dest_axi_awaddr[26] = \<const0> ;
  assign m_dest_axi_awaddr[25] = \<const0> ;
  assign m_dest_axi_awaddr[24] = \<const0> ;
  assign m_dest_axi_awaddr[23] = \<const0> ;
  assign m_dest_axi_awaddr[22] = \<const0> ;
  assign m_dest_axi_awaddr[21] = \<const0> ;
  assign m_dest_axi_awaddr[20] = \<const0> ;
  assign m_dest_axi_awaddr[19] = \<const0> ;
  assign m_dest_axi_awaddr[18] = \<const0> ;
  assign m_dest_axi_awaddr[17] = \<const0> ;
  assign m_dest_axi_awaddr[16] = \<const0> ;
  assign m_dest_axi_awaddr[15] = \<const0> ;
  assign m_dest_axi_awaddr[14] = \<const0> ;
  assign m_dest_axi_awaddr[13] = \<const0> ;
  assign m_dest_axi_awaddr[12] = \<const0> ;
  assign m_dest_axi_awaddr[11] = \<const0> ;
  assign m_dest_axi_awaddr[10] = \<const0> ;
  assign m_dest_axi_awaddr[9] = \<const0> ;
  assign m_dest_axi_awaddr[8] = \<const0> ;
  assign m_dest_axi_awaddr[7] = \<const0> ;
  assign m_dest_axi_awaddr[6] = \<const0> ;
  assign m_dest_axi_awaddr[5] = \<const0> ;
  assign m_dest_axi_awaddr[4] = \<const0> ;
  assign m_dest_axi_awaddr[3] = \<const0> ;
  assign m_dest_axi_awaddr[2] = \<const0> ;
  assign m_dest_axi_awaddr[1] = \<const0> ;
  assign m_dest_axi_awaddr[0] = \<const0> ;
  assign m_dest_axi_awburst[1] = \<const0> ;
  assign m_dest_axi_awburst[0] = \<const0> ;
  assign m_dest_axi_awcache[3] = \<const0> ;
  assign m_dest_axi_awcache[2] = \<const0> ;
  assign m_dest_axi_awcache[1] = \<const0> ;
  assign m_dest_axi_awcache[0] = \<const0> ;
  assign m_dest_axi_awid[0] = \<const0> ;
  assign m_dest_axi_awlen[7] = \<const0> ;
  assign m_dest_axi_awlen[6] = \<const0> ;
  assign m_dest_axi_awlen[5] = \<const0> ;
  assign m_dest_axi_awlen[4] = \<const0> ;
  assign m_dest_axi_awlen[3] = \<const0> ;
  assign m_dest_axi_awlen[2] = \<const0> ;
  assign m_dest_axi_awlen[1] = \<const0> ;
  assign m_dest_axi_awlen[0] = \<const0> ;
  assign m_dest_axi_awlock[0] = \<const0> ;
  assign m_dest_axi_awprot[2] = \<const0> ;
  assign m_dest_axi_awprot[1] = \<const0> ;
  assign m_dest_axi_awprot[0] = \<const0> ;
  assign m_dest_axi_awsize[2] = \<const0> ;
  assign m_dest_axi_awsize[1] = \<const0> ;
  assign m_dest_axi_awsize[0] = \<const0> ;
  assign m_dest_axi_awvalid = \<const0> ;
  assign m_dest_axi_bready = \<const0> ;
  assign m_dest_axi_rready = \<const0> ;
  assign m_dest_axi_wdata[63] = \<const0> ;
  assign m_dest_axi_wdata[62] = \<const0> ;
  assign m_dest_axi_wdata[61] = \<const0> ;
  assign m_dest_axi_wdata[60] = \<const0> ;
  assign m_dest_axi_wdata[59] = \<const0> ;
  assign m_dest_axi_wdata[58] = \<const0> ;
  assign m_dest_axi_wdata[57] = \<const0> ;
  assign m_dest_axi_wdata[56] = \<const0> ;
  assign m_dest_axi_wdata[55] = \<const0> ;
  assign m_dest_axi_wdata[54] = \<const0> ;
  assign m_dest_axi_wdata[53] = \<const0> ;
  assign m_dest_axi_wdata[52] = \<const0> ;
  assign m_dest_axi_wdata[51] = \<const0> ;
  assign m_dest_axi_wdata[50] = \<const0> ;
  assign m_dest_axi_wdata[49] = \<const0> ;
  assign m_dest_axi_wdata[48] = \<const0> ;
  assign m_dest_axi_wdata[47] = \<const0> ;
  assign m_dest_axi_wdata[46] = \<const0> ;
  assign m_dest_axi_wdata[45] = \<const0> ;
  assign m_dest_axi_wdata[44] = \<const0> ;
  assign m_dest_axi_wdata[43] = \<const0> ;
  assign m_dest_axi_wdata[42] = \<const0> ;
  assign m_dest_axi_wdata[41] = \<const0> ;
  assign m_dest_axi_wdata[40] = \<const0> ;
  assign m_dest_axi_wdata[39] = \<const0> ;
  assign m_dest_axi_wdata[38] = \<const0> ;
  assign m_dest_axi_wdata[37] = \<const0> ;
  assign m_dest_axi_wdata[36] = \<const0> ;
  assign m_dest_axi_wdata[35] = \<const0> ;
  assign m_dest_axi_wdata[34] = \<const0> ;
  assign m_dest_axi_wdata[33] = \<const0> ;
  assign m_dest_axi_wdata[32] = \<const0> ;
  assign m_dest_axi_wdata[31] = \<const0> ;
  assign m_dest_axi_wdata[30] = \<const0> ;
  assign m_dest_axi_wdata[29] = \<const0> ;
  assign m_dest_axi_wdata[28] = \<const0> ;
  assign m_dest_axi_wdata[27] = \<const0> ;
  assign m_dest_axi_wdata[26] = \<const0> ;
  assign m_dest_axi_wdata[25] = \<const0> ;
  assign m_dest_axi_wdata[24] = \<const0> ;
  assign m_dest_axi_wdata[23] = \<const0> ;
  assign m_dest_axi_wdata[22] = \<const0> ;
  assign m_dest_axi_wdata[21] = \<const0> ;
  assign m_dest_axi_wdata[20] = \<const0> ;
  assign m_dest_axi_wdata[19] = \<const0> ;
  assign m_dest_axi_wdata[18] = \<const0> ;
  assign m_dest_axi_wdata[17] = \<const0> ;
  assign m_dest_axi_wdata[16] = \<const0> ;
  assign m_dest_axi_wdata[15] = \<const0> ;
  assign m_dest_axi_wdata[14] = \<const0> ;
  assign m_dest_axi_wdata[13] = \<const0> ;
  assign m_dest_axi_wdata[12] = \<const0> ;
  assign m_dest_axi_wdata[11] = \<const0> ;
  assign m_dest_axi_wdata[10] = \<const0> ;
  assign m_dest_axi_wdata[9] = \<const0> ;
  assign m_dest_axi_wdata[8] = \<const0> ;
  assign m_dest_axi_wdata[7] = \<const0> ;
  assign m_dest_axi_wdata[6] = \<const0> ;
  assign m_dest_axi_wdata[5] = \<const0> ;
  assign m_dest_axi_wdata[4] = \<const0> ;
  assign m_dest_axi_wdata[3] = \<const0> ;
  assign m_dest_axi_wdata[2] = \<const0> ;
  assign m_dest_axi_wdata[1] = \<const0> ;
  assign m_dest_axi_wdata[0] = \<const0> ;
  assign m_dest_axi_wid[0] = \<const0> ;
  assign m_dest_axi_wlast = \<const0> ;
  assign m_dest_axi_wstrb[7] = \<const0> ;
  assign m_dest_axi_wstrb[6] = \<const0> ;
  assign m_dest_axi_wstrb[5] = \<const0> ;
  assign m_dest_axi_wstrb[4] = \<const0> ;
  assign m_dest_axi_wstrb[3] = \<const0> ;
  assign m_dest_axi_wstrb[2] = \<const0> ;
  assign m_dest_axi_wstrb[1] = \<const0> ;
  assign m_dest_axi_wstrb[0] = \<const0> ;
  assign m_dest_axi_wvalid = \<const0> ;
  assign m_src_axi_araddr[28:3] = \^m_src_axi_araddr [28:3];
  assign m_src_axi_araddr[2] = \<const0> ;
  assign m_src_axi_araddr[1] = \<const0> ;
  assign m_src_axi_araddr[0] = \<const0> ;
  assign m_src_axi_arburst[1] = \<const0> ;
  assign m_src_axi_arburst[0] = \<const1> ;
  assign m_src_axi_arcache[3] = \<const0> ;
  assign m_src_axi_arcache[2] = \<const0> ;
  assign m_src_axi_arcache[1] = \<const1> ;
  assign m_src_axi_arcache[0] = \<const1> ;
  assign m_src_axi_arid[0] = \<const0> ;
  assign m_src_axi_arlock[1] = \<const0> ;
  assign m_src_axi_arlock[0] = \<const0> ;
  assign m_src_axi_arprot[2] = \<const0> ;
  assign m_src_axi_arprot[1] = \<const0> ;
  assign m_src_axi_arprot[0] = \<const0> ;
  assign m_src_axi_arsize[2] = \<const0> ;
  assign m_src_axi_arsize[1] = \<const1> ;
  assign m_src_axi_arsize[0] = \<const1> ;
  assign m_src_axi_awaddr[28] = \<const0> ;
  assign m_src_axi_awaddr[27] = \<const0> ;
  assign m_src_axi_awaddr[26] = \<const0> ;
  assign m_src_axi_awaddr[25] = \<const0> ;
  assign m_src_axi_awaddr[24] = \<const0> ;
  assign m_src_axi_awaddr[23] = \<const0> ;
  assign m_src_axi_awaddr[22] = \<const0> ;
  assign m_src_axi_awaddr[21] = \<const0> ;
  assign m_src_axi_awaddr[20] = \<const0> ;
  assign m_src_axi_awaddr[19] = \<const0> ;
  assign m_src_axi_awaddr[18] = \<const0> ;
  assign m_src_axi_awaddr[17] = \<const0> ;
  assign m_src_axi_awaddr[16] = \<const0> ;
  assign m_src_axi_awaddr[15] = \<const0> ;
  assign m_src_axi_awaddr[14] = \<const0> ;
  assign m_src_axi_awaddr[13] = \<const0> ;
  assign m_src_axi_awaddr[12] = \<const0> ;
  assign m_src_axi_awaddr[11] = \<const0> ;
  assign m_src_axi_awaddr[10] = \<const0> ;
  assign m_src_axi_awaddr[9] = \<const0> ;
  assign m_src_axi_awaddr[8] = \<const0> ;
  assign m_src_axi_awaddr[7] = \<const0> ;
  assign m_src_axi_awaddr[6] = \<const0> ;
  assign m_src_axi_awaddr[5] = \<const0> ;
  assign m_src_axi_awaddr[4] = \<const0> ;
  assign m_src_axi_awaddr[3] = \<const0> ;
  assign m_src_axi_awaddr[2] = \<const0> ;
  assign m_src_axi_awaddr[1] = \<const0> ;
  assign m_src_axi_awaddr[0] = \<const0> ;
  assign m_src_axi_awburst[1] = \<const0> ;
  assign m_src_axi_awburst[0] = \<const0> ;
  assign m_src_axi_awcache[3] = \<const0> ;
  assign m_src_axi_awcache[2] = \<const0> ;
  assign m_src_axi_awcache[1] = \<const0> ;
  assign m_src_axi_awcache[0] = \<const0> ;
  assign m_src_axi_awid[0] = \<const0> ;
  assign m_src_axi_awlen[3] = \<const0> ;
  assign m_src_axi_awlen[2] = \<const0> ;
  assign m_src_axi_awlen[1] = \<const0> ;
  assign m_src_axi_awlen[0] = \<const0> ;
  assign m_src_axi_awlock[1] = \<const0> ;
  assign m_src_axi_awlock[0] = \<const0> ;
  assign m_src_axi_awprot[2] = \<const0> ;
  assign m_src_axi_awprot[1] = \<const0> ;
  assign m_src_axi_awprot[0] = \<const0> ;
  assign m_src_axi_awsize[2] = \<const0> ;
  assign m_src_axi_awsize[1] = \<const0> ;
  assign m_src_axi_awsize[0] = \<const0> ;
  assign m_src_axi_awvalid = \<const0> ;
  assign m_src_axi_bready = \<const0> ;
  assign m_src_axi_rready = \<const1> ;
  assign m_src_axi_wdata[63] = \<const0> ;
  assign m_src_axi_wdata[62] = \<const0> ;
  assign m_src_axi_wdata[61] = \<const0> ;
  assign m_src_axi_wdata[60] = \<const0> ;
  assign m_src_axi_wdata[59] = \<const0> ;
  assign m_src_axi_wdata[58] = \<const0> ;
  assign m_src_axi_wdata[57] = \<const0> ;
  assign m_src_axi_wdata[56] = \<const0> ;
  assign m_src_axi_wdata[55] = \<const0> ;
  assign m_src_axi_wdata[54] = \<const0> ;
  assign m_src_axi_wdata[53] = \<const0> ;
  assign m_src_axi_wdata[52] = \<const0> ;
  assign m_src_axi_wdata[51] = \<const0> ;
  assign m_src_axi_wdata[50] = \<const0> ;
  assign m_src_axi_wdata[49] = \<const0> ;
  assign m_src_axi_wdata[48] = \<const0> ;
  assign m_src_axi_wdata[47] = \<const0> ;
  assign m_src_axi_wdata[46] = \<const0> ;
  assign m_src_axi_wdata[45] = \<const0> ;
  assign m_src_axi_wdata[44] = \<const0> ;
  assign m_src_axi_wdata[43] = \<const0> ;
  assign m_src_axi_wdata[42] = \<const0> ;
  assign m_src_axi_wdata[41] = \<const0> ;
  assign m_src_axi_wdata[40] = \<const0> ;
  assign m_src_axi_wdata[39] = \<const0> ;
  assign m_src_axi_wdata[38] = \<const0> ;
  assign m_src_axi_wdata[37] = \<const0> ;
  assign m_src_axi_wdata[36] = \<const0> ;
  assign m_src_axi_wdata[35] = \<const0> ;
  assign m_src_axi_wdata[34] = \<const0> ;
  assign m_src_axi_wdata[33] = \<const0> ;
  assign m_src_axi_wdata[32] = \<const0> ;
  assign m_src_axi_wdata[31] = \<const0> ;
  assign m_src_axi_wdata[30] = \<const0> ;
  assign m_src_axi_wdata[29] = \<const0> ;
  assign m_src_axi_wdata[28] = \<const0> ;
  assign m_src_axi_wdata[27] = \<const0> ;
  assign m_src_axi_wdata[26] = \<const0> ;
  assign m_src_axi_wdata[25] = \<const0> ;
  assign m_src_axi_wdata[24] = \<const0> ;
  assign m_src_axi_wdata[23] = \<const0> ;
  assign m_src_axi_wdata[22] = \<const0> ;
  assign m_src_axi_wdata[21] = \<const0> ;
  assign m_src_axi_wdata[20] = \<const0> ;
  assign m_src_axi_wdata[19] = \<const0> ;
  assign m_src_axi_wdata[18] = \<const0> ;
  assign m_src_axi_wdata[17] = \<const0> ;
  assign m_src_axi_wdata[16] = \<const0> ;
  assign m_src_axi_wdata[15] = \<const0> ;
  assign m_src_axi_wdata[14] = \<const0> ;
  assign m_src_axi_wdata[13] = \<const0> ;
  assign m_src_axi_wdata[12] = \<const0> ;
  assign m_src_axi_wdata[11] = \<const0> ;
  assign m_src_axi_wdata[10] = \<const0> ;
  assign m_src_axi_wdata[9] = \<const0> ;
  assign m_src_axi_wdata[8] = \<const0> ;
  assign m_src_axi_wdata[7] = \<const0> ;
  assign m_src_axi_wdata[6] = \<const0> ;
  assign m_src_axi_wdata[5] = \<const0> ;
  assign m_src_axi_wdata[4] = \<const0> ;
  assign m_src_axi_wdata[3] = \<const0> ;
  assign m_src_axi_wdata[2] = \<const0> ;
  assign m_src_axi_wdata[1] = \<const0> ;
  assign m_src_axi_wdata[0] = \<const0> ;
  assign m_src_axi_wid[0] = \<const0> ;
  assign m_src_axi_wlast = \<const0> ;
  assign m_src_axi_wstrb[7] = \<const0> ;
  assign m_src_axi_wstrb[6] = \<const0> ;
  assign m_src_axi_wstrb[5] = \<const0> ;
  assign m_src_axi_wstrb[4] = \<const0> ;
  assign m_src_axi_wstrb[3] = \<const0> ;
  assign m_src_axi_wstrb[2] = \<const0> ;
  assign m_src_axi_wstrb[1] = \<const0> ;
  assign m_src_axi_wstrb[0] = \<const0> ;
  assign m_src_axi_wvalid = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axis_ready = \<const0> ;
  assign s_axis_xfer_req = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  zed_axi_dmac_0_0_axi_dmac_regmap i_regmap
       (.E(\i_regmap_request/p_7_in ),
        .Q(data3),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_ids0(dbg_ids0),
        .dbg_ids1({dbg_ids1[27:24],dbg_ids1[11:8],dbg_ids1[3:0]}),
        .dbg_status({dbg_status[6],dbg_status[2:0]}),
        .irq(irq),
        .m_src_axi_araddr({\^m_src_axi_araddr [28],\^m_src_axi_araddr [23:20],\^m_src_axi_araddr [15:12]}),
        .req_measured_burst_length(req_measured_burst_length),
        .req_ready_gated(req_ready_gated),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[10:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(i_regmap_n_0),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[10:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .up_axi_rvalid_int_reg(s_axi_rvalid),
        .up_dma_cyclic(up_dma_cyclic),
        .up_dma_last(up_dma_last),
        .up_dma_req_valid(up_dma_req_valid),
        .\up_dma_src_stride_reg[23] ({i_regmap_n_86,i_regmap_n_87,i_regmap_n_88,i_regmap_n_89,i_regmap_n_90,i_regmap_n_91,i_regmap_n_92,i_regmap_n_93,i_regmap_n_94,i_regmap_n_95,i_regmap_n_96,i_regmap_n_97,i_regmap_n_98,i_regmap_n_99,i_regmap_n_100,i_regmap_n_101,i_regmap_n_102,i_regmap_n_103,i_regmap_n_104,i_regmap_n_105,i_regmap_n_106}),
        .\up_dma_x_length_reg[23] (up_dma_x_length),
        .\up_dma_y_length_reg[23] (up_dma_y_length),
        .\up_raddr_int_reg[3] (i_regmap_n_14),
        .\up_raddr_int_reg[7] (i_regmap_n_13),
        .\up_rdata_reg[10]_0 (i_transfer_n_124),
        .\up_rdata_reg[11]_0 (i_transfer_n_118),
        .\up_rdata_reg[16]_0 (i_transfer_n_126),
        .\up_rdata_reg[17]_0 (i_transfer_n_127),
        .\up_rdata_reg[18]_0 (i_transfer_n_128),
        .\up_rdata_reg[19]_0 (i_transfer_n_129),
        .\up_rdata_reg[24]_0 (i_transfer_n_130),
        .\up_rdata_reg[25]_0 (i_transfer_n_131),
        .\up_rdata_reg[26]_0 (i_transfer_n_132),
        .\up_rdata_reg[27]_0 (i_transfer_n_133),
        .\up_rdata_reg[3]_0 (i_transfer_n_125),
        .\up_rdata_reg[4]_0 (i_transfer_n_121),
        .\up_rdata_reg[5]_0 (i_transfer_n_120),
        .\up_rdata_reg[6]_0 (i_transfer_n_119),
        .\up_rdata_reg[7]_0 (\^m_src_axi_araddr [7]),
        .\up_rdata_reg[8]_0 (i_transfer_n_122),
        .\up_rdata_reg[9]_0 (i_transfer_n_123),
        .up_req_eot(up_req_eot),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .up_sot(up_sot));
  zed_axi_dmac_0_0_axi_dmac_transfer i_transfer
       (.D(up_dma_x_length),
        .E(\i_regmap_request/p_7_in ),
        .Q(data3),
        .SS(i_regmap_n_0),
        .active_reg(m_axis_xfer_req),
        .addr_valid_reg(m_src_axi_arvalid),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_ids1({dbg_ids1[27:24],dbg_ids1[11:8],dbg_ids1[3:0]}),
        .do_enable_reg({dbg_status[6],dbg_status[2:0]}),
        .do_enable_reg_0(i_transfer_n_119),
        .enabled_reg(i_transfer_n_120),
        .enabled_reg_0(i_transfer_n_121),
        .\id_reg[0] (i_transfer_n_126),
        .\id_reg[1] (i_transfer_n_127),
        .\id_reg[2] (i_transfer_n_128),
        .\id_reg[3] (i_transfer_n_129),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_last(m_axis_last),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(\^m_src_axi_araddr ),
        .m_src_axi_arlen(m_src_axi_arlen),
        .m_src_axi_arready(m_src_axi_arready),
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .needs_reset_reg(i_transfer_n_118),
        .req_measured_burst_length(req_measured_burst_length),
        .req_ready_gated(req_ready_gated),
        .\reset_gen[0].reset_sync_reg[0] (i_transfer_n_122),
        .\reset_gen[0].reset_sync_reg[0]_0 (i_transfer_n_123),
        .\reset_gen[0].reset_sync_reg[0]_1 (i_transfer_n_124),
        .\response_id_reg[0] (i_transfer_n_130),
        .\response_id_reg[1] (i_transfer_n_131),
        .\response_id_reg[2] (i_transfer_n_132),
        .\response_id_reg[3] (i_transfer_n_133),
        .s_axi_aclk(s_axi_aclk),
        .\src_id_reg[2] (dbg_ids0),
        .\src_id_reg[3] (i_transfer_n_125),
        .\src_stride_reg[23] ({i_regmap_n_86,i_regmap_n_87,i_regmap_n_88,i_regmap_n_89,i_regmap_n_90,i_regmap_n_91,i_regmap_n_92,i_regmap_n_93,i_regmap_n_94,i_regmap_n_95,i_regmap_n_96,i_regmap_n_97,i_regmap_n_98,i_regmap_n_99,i_regmap_n_100,i_regmap_n_101,i_regmap_n_102,i_regmap_n_103,i_regmap_n_104,i_regmap_n_105,i_regmap_n_106}),
        .up_dma_cyclic(up_dma_cyclic),
        .up_dma_last(up_dma_last),
        .up_dma_req_valid(up_dma_req_valid),
        .\up_rdata_reg[10] (i_regmap_n_13),
        .\up_rdata_reg[10]_0 (i_regmap_n_14),
        .up_req_eot(up_req_eot),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .up_sot(up_sot),
        .\y_length_reg[23] (up_dma_y_length));
endmodule

(* ORIG_REF_NAME = "axi_dmac_burst_memory" *) 
module zed_axi_dmac_0_0_axi_dmac_burst_memory
   (m_axis_data,
    \src_id_reg[1]_0 ,
    \src_id_reg[0]_0 ,
    g0,
    dest_fifo_valid,
    dest_fifo_last,
    m_axis_valid,
    \src_id_reg[2]_0 ,
    \src_throttled_request_id_reg[2] ,
    \src_id_reg[3]_0 ,
    \src_throttled_request_id_reg[0] ,
    m_axis_aclk,
    m_src_axi_aclk,
    m_src_axi_rdata,
    m_src_axi_rvalid,
    Q,
    m_ram_reg,
    m_axis_ready,
    m_src_axi_rlast,
    \src_throttled_request_id_reg[0]_0 ,
    \up_rdata_reg[3] ,
    \up_rdata_reg[3]_0 ,
    m_src_axi_araddr,
    SR);
  output [63:0]m_axis_data;
  output \src_id_reg[1]_0 ;
  output \src_id_reg[0]_0 ;
  output g0;
  output dest_fifo_valid;
  output dest_fifo_last;
  output m_axis_valid;
  output \src_id_reg[2]_0 ;
  output \src_throttled_request_id_reg[2] ;
  output \src_id_reg[3]_0 ;
  output \src_throttled_request_id_reg[0] ;
  input m_axis_aclk;
  input m_src_axi_aclk;
  input [63:0]m_src_axi_rdata;
  input m_src_axi_rvalid;
  input [0:0]Q;
  input m_ram_reg;
  input m_axis_ready;
  input m_src_axi_rlast;
  input [3:0]\src_throttled_request_id_reg[0]_0 ;
  input \up_rdata_reg[3] ;
  input \up_rdata_reg[3]_0 ;
  input [0:0]m_src_axi_araddr;
  input [0:0]SR;

  wire [0:0]Q;
  wire [0:0]SR;
  wire b2g1_return00_out;
  wire b2g1_return01_out;
  wire b2g2_return013_out;
  wire b2g2_return015_out;
  wire burst_len_mem_reg_0_7_0_4_n_5;
  wire [3:3]dbg_ids0;
  wire dest_beat;
  wire dest_beat_counter0;
  wire [3:0]dest_beat_counter_reg__0;
  wire [3:0]dest_burst_len;
  wire [6:3]dest_burst_len_data;
  wire dest_burst_ready;
  wire dest_burst_valid;
  wire dest_fifo_last;
  wire dest_fifo_valid;
  wire \dest_id_next[0]_i_1_n_0 ;
  wire \dest_id_next[3]_i_5_n_0 ;
  wire \dest_id_next[3]_i_6_n_0 ;
  wire \dest_id_next_reg_n_0_[3] ;
  wire dest_id_reduced_msb;
  wire dest_id_reduced_msb_next_i_1_n_0;
  wire [2:2]dest_id_reduced_next;
  wire [1:0]dest_id_reduced_next_0;
  wire \dest_id_reg_n_0_[3] ;
  wire dest_last;
  wire dest_mem_data_last_i_1_n_0;
  wire dest_mem_data_valid_i_1_n_0;
  wire dest_valid;
  wire dest_valid_i_1_n_0;
  wire g0;
  wire id0;
  wire m_axis_aclk;
  wire [63:0]m_axis_data;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_ram_reg;
  wire m_src_axi_aclk;
  wire [0:0]m_src_axi_araddr;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire [3:0]p_0_in;
  wire p_0_in0_in;
  wire [3:0]p_0_in_1;
  wire [3:0]p_0_in__0;
  wire p_16_in;
  wire p_1_in14_in;
  wire p_3_in;
  wire [1:0]src_data_request_id;
  wire \src_id[0]_i_1_n_0 ;
  wire [2:2]src_id_reduced;
  wire src_id_reduced_msb_i_1_n_0;
  wire \src_id_reg[0]_0 ;
  wire \src_id_reg[1]_0 ;
  wire \src_id_reg[2]_0 ;
  wire \src_id_reg[3]_0 ;
  wire \src_throttled_request_id_reg[0] ;
  wire [3:0]\src_throttled_request_id_reg[0]_0 ;
  wire \src_throttled_request_id_reg[2] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[3]_0 ;
  wire [1:1]NLW_burst_len_mem_reg_0_7_0_4_DOC_UNCONNECTED;
  wire [1:0]NLW_burst_len_mem_reg_0_7_0_4_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "4" *) 
  RAM32M burst_len_mem_reg_0_7_0_4
       (.ADDRA({1'b0,1'b0,dest_id_reduced_next,dest_id_reduced_next_0}),
        .ADDRB({1'b0,1'b0,dest_id_reduced_next,dest_id_reduced_next_0}),
        .ADDRC({1'b0,1'b0,dest_id_reduced_next,dest_id_reduced_next_0}),
        .ADDRD({1'b0,1'b0,src_id_reduced,\src_id_reg[1]_0 ,\src_id_reg[0]_0 }),
        .DIA(p_0_in_1[1:0]),
        .DIB(p_0_in_1[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(dest_burst_len_data[4:3]),
        .DOB(dest_burst_len_data[6:5]),
        .DOC({NLW_burst_len_mem_reg_0_7_0_4_DOC_UNCONNECTED[1],burst_len_mem_reg_0_7_0_4_n_5}),
        .DOD(NLW_burst_len_mem_reg_0_7_0_4_DOD_UNCONNECTED[1:0]),
        .WCLK(m_src_axi_aclk),
        .WE(g0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dest_beat_counter[0]_i_1 
       (.I0(dest_beat_counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dest_beat_counter[1]_i_1 
       (.I0(dest_beat_counter_reg__0[0]),
        .I1(dest_beat_counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dest_beat_counter[2]_i_1 
       (.I0(dest_beat_counter_reg__0[0]),
        .I1(dest_beat_counter_reg__0[1]),
        .I2(dest_beat_counter_reg__0[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80AA0000)) 
    \dest_beat_counter[3]_i_1 
       (.I0(dest_last),
        .I1(m_ram_reg),
        .I2(m_axis_ready),
        .I3(dest_fifo_valid),
        .I4(dest_valid),
        .I5(Q),
        .O(dest_beat_counter0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dest_beat_counter[3]_i_2 
       (.I0(dest_beat_counter_reg__0[1]),
        .I1(dest_beat_counter_reg__0[0]),
        .I2(dest_beat_counter_reg__0[2]),
        .I3(dest_beat_counter_reg__0[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[0] 
       (.C(m_axis_aclk),
        .CE(dest_beat),
        .D(p_0_in[0]),
        .Q(dest_beat_counter_reg__0[0]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[1] 
       (.C(m_axis_aclk),
        .CE(dest_beat),
        .D(p_0_in[1]),
        .Q(dest_beat_counter_reg__0[1]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[2] 
       (.C(m_axis_aclk),
        .CE(dest_beat),
        .D(p_0_in[2]),
        .Q(dest_beat_counter_reg__0[2]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[3] 
       (.C(m_axis_aclk),
        .CE(dest_beat),
        .D(p_0_in[3]),
        .Q(dest_beat_counter_reg__0[3]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[3] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_burst_len_data[3]),
        .Q(dest_burst_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[4] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_burst_len_data[4]),
        .Q(dest_burst_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[5] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_burst_len_data[5]),
        .Q(dest_burst_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[6] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_burst_len_data[6]),
        .Q(dest_burst_len[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80AAFFFF)) 
    \dest_id[3]_i_1 
       (.I0(dest_last),
        .I1(m_ram_reg),
        .I2(m_axis_ready),
        .I3(dest_fifo_valid),
        .I4(dest_valid),
        .O(dest_burst_ready));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dest_id_next[0]_i_1 
       (.I0(dest_id_reduced_next_0[1]),
        .I1(\dest_id_next_reg_n_0_[3] ),
        .I2(p_16_in),
        .O(\dest_id_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \dest_id_next[1]_i_1 
       (.I0(p_16_in),
        .I1(\dest_id_next_reg_n_0_[3] ),
        .I2(dest_id_reduced_next_0[1]),
        .I3(dest_id_reduced_next_0[0]),
        .O(b2g2_return013_out));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \dest_id_next[2]_i_1 
       (.I0(\dest_id_next_reg_n_0_[3] ),
        .I1(dest_id_reduced_next_0[0]),
        .I2(p_16_in),
        .I3(dest_id_reduced_next_0[1]),
        .O(b2g2_return015_out));
  LUT6 #(
    .INIT(64'h80AAFFFF00000000)) 
    \dest_id_next[3]_i_1 
       (.I0(dest_last),
        .I1(m_ram_reg),
        .I2(m_axis_ready),
        .I3(dest_fifo_valid),
        .I4(dest_valid),
        .I5(dest_burst_valid),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \dest_id_next[3]_i_2 
       (.I0(dest_id_reduced_next_0[1]),
        .I1(p_16_in),
        .I2(dest_id_reduced_next_0[0]),
        .I3(\dest_id_next_reg_n_0_[3] ),
        .O(p_1_in14_in));
  LUT3 #(
    .INIT(8'h90)) 
    \dest_id_next[3]_i_3 
       (.I0(dest_beat_counter_reg__0[3]),
        .I1(dest_burst_len[3]),
        .I2(\dest_id_next[3]_i_5_n_0 ),
        .O(dest_last));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    \dest_id_next[3]_i_4 
       (.I0(dbg_ids0),
        .I1(\dest_id_next_reg_n_0_[3] ),
        .I2(\dest_id_next[3]_i_6_n_0 ),
        .O(dest_burst_valid));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \dest_id_next[3]_i_5 
       (.I0(dest_beat_counter_reg__0[0]),
        .I1(dest_burst_len[0]),
        .I2(dest_burst_len[2]),
        .I3(dest_beat_counter_reg__0[2]),
        .I4(dest_burst_len[1]),
        .I5(dest_beat_counter_reg__0[1]),
        .O(\dest_id_next[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \dest_id_next[3]_i_6 
       (.I0(\src_id_reg[0]_0 ),
        .I1(dest_id_reduced_next_0[0]),
        .I2(p_16_in),
        .I3(\src_id_reg[2]_0 ),
        .I4(dest_id_reduced_next_0[1]),
        .I5(\src_id_reg[1]_0 ),
        .O(\dest_id_next[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[0] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(\dest_id_next[0]_i_1_n_0 ),
        .Q(dest_id_reduced_next_0[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[1] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(b2g2_return013_out),
        .Q(dest_id_reduced_next_0[1]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[2] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(b2g2_return015_out),
        .Q(p_16_in),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[3] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(p_1_in14_in),
        .Q(\dest_id_next_reg_n_0_[3] ),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h3ACA)) 
    dest_id_reduced_msb_next_i_1
       (.I0(dest_id_reduced_next_0[1]),
        .I1(p_16_in),
        .I2(dest_id_reduced_next_0[0]),
        .I3(\dest_id_next_reg_n_0_[3] ),
        .O(dest_id_reduced_msb_next_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_next_reg
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_id_reduced_msb_next_i_1_n_0),
        .Q(dest_id_reduced_next),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_reg
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next),
        .Q(dest_id_reduced_msb),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[0] 
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next_0[0]),
        .Q(src_data_request_id[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[1] 
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next_0[1]),
        .Q(src_data_request_id[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[2] 
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(p_16_in),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[3] 
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg_n_0_[3] ),
        .Q(\dest_id_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000CCCC0AAA)) 
    dest_mem_data_last_i_1
       (.I0(dest_fifo_last),
        .I1(dest_last),
        .I2(m_ram_reg),
        .I3(m_axis_ready),
        .I4(dest_beat),
        .I5(Q),
        .O(dest_mem_data_last_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_last_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dest_mem_data_last_i_1_n_0),
        .Q(dest_fifo_last),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    dest_mem_data_valid_i_1
       (.I0(dest_valid),
        .I1(m_ram_reg),
        .I2(m_axis_ready),
        .I3(dest_fifo_valid),
        .O(dest_mem_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_valid_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dest_mem_data_valid_i_1_n_0),
        .Q(dest_fifo_valid),
        .R(Q));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F550000)) 
    dest_valid_i_1
       (.I0(dest_last),
        .I1(m_ram_reg),
        .I2(m_axis_ready),
        .I3(dest_fifo_valid),
        .I4(dest_valid),
        .I5(dest_burst_valid),
        .O(dest_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_valid_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dest_valid_i_1_n_0),
        .Q(dest_valid),
        .R(Q));
  zed_axi_dmac_0_0_ad_mem_asym i_mem
       (.ADDRARDADDR({dest_id_reduced_msb,src_data_request_id,dest_beat_counter_reg__0}),
        .ADDRBWRADDR({src_id_reduced,\src_id_reg[1]_0 ,\src_id_reg[0]_0 ,p_0_in_1}),
        .E(dest_beat),
        .dest_valid(dest_valid),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready),
        .m_ram_reg_0(dest_fifo_valid),
        .m_ram_reg_1(m_ram_reg),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rvalid(m_src_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_valid_INST_0
       (.I0(dest_fifo_valid),
        .I1(m_ram_reg),
        .O(m_axis_valid));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \src_beat_counter[0]_i_1 
       (.I0(p_0_in_1[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_beat_counter[1]_i_1 
       (.I0(p_0_in_1[0]),
        .I1(p_0_in_1[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \src_beat_counter[2]_i_1 
       (.I0(p_0_in_1[0]),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \src_beat_counter[3]_i_2 
       (.I0(p_0_in_1[1]),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(p_0_in_1[3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(m_src_axi_rvalid),
        .D(p_0_in__0[0]),
        .Q(p_0_in_1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(m_src_axi_rvalid),
        .D(p_0_in__0[1]),
        .Q(p_0_in_1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(m_src_axi_rvalid),
        .D(p_0_in__0[2]),
        .Q(p_0_in_1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(m_src_axi_rvalid),
        .D(p_0_in__0[3]),
        .Q(p_0_in_1[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \src_id[0]_i_1 
       (.I0(\src_id_reg[1]_0 ),
        .I1(dbg_ids0),
        .I2(\src_id_reg[2]_0 ),
        .O(\src_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \src_id[1]_i_1 
       (.I0(\src_id_reg[2]_0 ),
        .I1(dbg_ids0),
        .I2(\src_id_reg[1]_0 ),
        .I3(\src_id_reg[0]_0 ),
        .O(b2g1_return00_out));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \src_id[2]_i_1 
       (.I0(dbg_ids0),
        .I1(\src_id_reg[0]_0 ),
        .I2(\src_id_reg[2]_0 ),
        .I3(\src_id_reg[1]_0 ),
        .O(b2g1_return01_out));
  LUT2 #(
    .INIT(4'h8)) 
    \src_id[3]_i_1 
       (.I0(m_src_axi_rvalid),
        .I1(m_src_axi_rlast),
        .O(g0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \src_id[3]_i_2 
       (.I0(\src_id_reg[1]_0 ),
        .I1(\src_id_reg[2]_0 ),
        .I2(\src_id_reg[0]_0 ),
        .I3(dbg_ids0),
        .O(p_3_in));
  LUT6 #(
    .INIT(64'h5555D515AAAAEA2A)) 
    src_id_reduced_msb_i_1
       (.I0(\src_id_reg[2]_0 ),
        .I1(m_src_axi_rlast),
        .I2(m_src_axi_rvalid),
        .I3(\src_id_reg[1]_0 ),
        .I4(\src_id_reg[0]_0 ),
        .I5(dbg_ids0),
        .O(src_id_reduced_msb_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_id_reduced_msb_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(src_id_reduced_msb_i_1_n_0),
        .Q(src_id_reduced),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(\src_id[0]_i_1_n_0 ),
        .Q(\src_id_reg[0]_0 ),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(b2g1_return00_out),
        .Q(\src_id_reg[1]_0 ),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(b2g1_return01_out),
        .Q(\src_id_reg[2]_0 ),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(p_3_in),
        .Q(dbg_ids0),
        .R(Q));
  LUT4 #(
    .INIT(16'hF99F)) 
    \src_throttled_request_id[3]_i_4 
       (.I0(\src_throttled_request_id_reg[0]_0 [2]),
        .I1(p_0_in0_in),
        .I2(\src_throttled_request_id_reg[0]_0 [3]),
        .I3(\dest_id_reg_n_0_[3] ),
        .O(\src_throttled_request_id_reg[2] ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \src_throttled_request_id[3]_i_5 
       (.I0(\src_throttled_request_id_reg[0]_0 [0]),
        .I1(src_data_request_id[0]),
        .I2(\src_throttled_request_id_reg[0]_0 [1]),
        .I3(src_data_request_id[1]),
        .O(\src_throttled_request_id_reg[0] ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[3]_i_3 
       (.I0(dbg_ids0),
        .I1(\up_rdata_reg[3] ),
        .I2(\up_rdata_reg[3]_0 ),
        .I3(m_src_axi_araddr),
        .O(\src_id_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_dmac_regmap" *) 
module zed_axi_dmac_0_0_axi_dmac_regmap
   (s_axi_aresetn_0,
    irq,
    ctrl_enable,
    up_dma_cyclic,
    up_dma_req_valid,
    up_response_ready,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    ctrl_pause,
    up_dma_last,
    up_axi_rvalid_int_reg,
    \up_raddr_int_reg[7] ,
    \up_raddr_int_reg[3] ,
    Q,
    \up_dma_x_length_reg[23] ,
    \up_dma_y_length_reg[23] ,
    \up_dma_src_stride_reg[23] ,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_aresetn,
    up_sot,
    up_req_eot,
    E,
    up_response_valid,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    \up_rdata_reg[27]_0 ,
    dbg_ids1,
    \up_rdata_reg[26]_0 ,
    \up_rdata_reg[25]_0 ,
    \up_rdata_reg[24]_0 ,
    \up_rdata_reg[19]_0 ,
    \up_rdata_reg[18]_0 ,
    \up_rdata_reg[17]_0 ,
    \up_rdata_reg[16]_0 ,
    \up_rdata_reg[11]_0 ,
    \up_rdata_reg[10]_0 ,
    \up_rdata_reg[9]_0 ,
    \up_rdata_reg[8]_0 ,
    \up_rdata_reg[6]_0 ,
    \up_rdata_reg[5]_0 ,
    \up_rdata_reg[4]_0 ,
    \up_rdata_reg[3]_0 ,
    dbg_ids0,
    dbg_status,
    s_axi_rready,
    \up_rdata_reg[7]_0 ,
    m_src_axi_araddr,
    s_axi_wdata,
    s_axi_awaddr,
    req_ready_gated,
    s_axi_araddr,
    req_measured_burst_length);
  output s_axi_aresetn_0;
  output irq;
  output ctrl_enable;
  output up_dma_cyclic;
  output up_dma_req_valid;
  output up_response_ready;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output ctrl_pause;
  output up_dma_last;
  output up_axi_rvalid_int_reg;
  output \up_raddr_int_reg[7] ;
  output \up_raddr_int_reg[3] ;
  output [25:0]Q;
  output [20:0]\up_dma_x_length_reg[23] ;
  output [23:0]\up_dma_y_length_reg[23] ;
  output [20:0]\up_dma_src_stride_reg[23] ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_aresetn;
  input up_sot;
  input up_req_eot;
  input [0:0]E;
  input up_response_valid;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input \up_rdata_reg[27]_0 ;
  input [11:0]dbg_ids1;
  input \up_rdata_reg[26]_0 ;
  input \up_rdata_reg[25]_0 ;
  input \up_rdata_reg[24]_0 ;
  input \up_rdata_reg[19]_0 ;
  input \up_rdata_reg[18]_0 ;
  input \up_rdata_reg[17]_0 ;
  input \up_rdata_reg[16]_0 ;
  input \up_rdata_reg[11]_0 ;
  input \up_rdata_reg[10]_0 ;
  input \up_rdata_reg[9]_0 ;
  input \up_rdata_reg[8]_0 ;
  input \up_rdata_reg[6]_0 ;
  input \up_rdata_reg[5]_0 ;
  input \up_rdata_reg[4]_0 ;
  input \up_rdata_reg[3]_0 ;
  input [2:0]dbg_ids0;
  input [3:0]dbg_status;
  input s_axi_rready;
  input \up_rdata_reg[7]_0 ;
  input [8:0]m_src_axi_araddr;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input req_ready_gated;
  input [8:0]s_axi_araddr;
  input [0:0]req_measured_burst_length;

  wire [0:0]E;
  wire [25:0]Q;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [1:0]data12;
  wire [31:0]data8;
  wire [2:0]dbg_ids0;
  wire [11:0]dbg_ids1;
  wire [3:0]dbg_status;
  wire i_regmap_request_n_10;
  wire i_regmap_request_n_100;
  wire i_regmap_request_n_101;
  wire i_regmap_request_n_102;
  wire i_regmap_request_n_103;
  wire i_regmap_request_n_104;
  wire i_regmap_request_n_105;
  wire i_regmap_request_n_106;
  wire i_regmap_request_n_107;
  wire i_regmap_request_n_108;
  wire i_regmap_request_n_109;
  wire i_regmap_request_n_110;
  wire i_regmap_request_n_111;
  wire i_regmap_request_n_112;
  wire i_regmap_request_n_113;
  wire i_regmap_request_n_114;
  wire i_regmap_request_n_115;
  wire i_regmap_request_n_116;
  wire i_regmap_request_n_117;
  wire i_regmap_request_n_118;
  wire i_regmap_request_n_147;
  wire i_regmap_request_n_150;
  wire i_regmap_request_n_151;
  wire i_regmap_request_n_152;
  wire i_regmap_request_n_153;
  wire i_regmap_request_n_38;
  wire i_regmap_request_n_39;
  wire i_regmap_request_n_40;
  wire i_regmap_request_n_65;
  wire i_regmap_request_n_87;
  wire i_regmap_request_n_88;
  wire i_regmap_request_n_89;
  wire i_regmap_request_n_90;
  wire i_regmap_request_n_91;
  wire i_regmap_request_n_92;
  wire i_regmap_request_n_93;
  wire i_regmap_request_n_94;
  wire i_regmap_request_n_95;
  wire i_regmap_request_n_96;
  wire i_regmap_request_n_97;
  wire i_regmap_request_n_98;
  wire i_regmap_request_n_99;
  wire i_up_axi_n_10;
  wire i_up_axi_n_11;
  wire i_up_axi_n_12;
  wire i_up_axi_n_13;
  wire i_up_axi_n_14;
  wire i_up_axi_n_15;
  wire i_up_axi_n_37;
  wire i_up_axi_n_38;
  wire i_up_axi_n_39;
  wire i_up_axi_n_40;
  wire i_up_axi_n_41;
  wire i_up_axi_n_44;
  wire i_up_axi_n_45;
  wire i_up_axi_n_46;
  wire i_up_axi_n_7;
  wire i_up_axi_n_8;
  wire i_up_axi_n_87;
  wire i_up_axi_n_88;
  wire i_up_axi_n_89;
  wire i_up_axi_n_9;
  wire i_up_axi_n_90;
  wire i_up_axi_n_91;
  wire i_up_axi_n_92;
  wire i_up_axi_n_93;
  wire irq;
  wire irq_i_1_n_0;
  wire [8:0]m_src_axi_araddr;
  wire [2:2]p_3_in;
  wire p_8_in;
  wire [0:0]req_measured_burst_length;
  wire req_ready_gated;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire up_axi_rvalid_int_reg;
  wire up_dma_cyclic;
  wire up_dma_last;
  wire up_dma_req_valid;
  wire up_dma_src_address;
  wire [20:0]\up_dma_src_stride_reg[23] ;
  wire [23:3]up_dma_x_length0_in;
  wire [20:0]\up_dma_x_length_reg[23] ;
  wire up_dma_y_length;
  wire [23:0]\up_dma_y_length_reg[23] ;
  wire \up_irq_mask[0]_i_1_n_0 ;
  wire \up_irq_mask[1]_i_1_n_0 ;
  wire \up_irq_mask_reg_n_0_[0] ;
  wire \up_irq_mask_reg_n_0_[1] ;
  wire [1:0]up_irq_source;
  wire [31:0]up_measured_transfer_length;
  wire up_rack;
  wire [4:0]up_raddr;
  wire \up_raddr_int_reg[3] ;
  wire \up_raddr_int_reg[7] ;
  wire [31:0]up_rdata;
  wire [31:0]up_rdata_0;
  wire \up_rdata_reg[10]_0 ;
  wire \up_rdata_reg[11]_0 ;
  wire \up_rdata_reg[16]_0 ;
  wire \up_rdata_reg[17]_0 ;
  wire \up_rdata_reg[18]_0 ;
  wire \up_rdata_reg[19]_0 ;
  wire \up_rdata_reg[24]_0 ;
  wire \up_rdata_reg[25]_0 ;
  wire \up_rdata_reg[26]_0 ;
  wire \up_rdata_reg[27]_0 ;
  wire \up_rdata_reg[3]_0 ;
  wire \up_rdata_reg[4]_0 ;
  wire \up_rdata_reg[5]_0 ;
  wire \up_rdata_reg[6]_0 ;
  wire \up_rdata_reg[7]_0 ;
  wire \up_rdata_reg[8]_0 ;
  wire \up_rdata_reg[9]_0 ;
  wire up_req_eot;
  wire up_response_ready;
  wire up_response_valid;
  wire up_rreq;
  wire [31:0]up_scratch;
  wire up_sot;
  wire [1:0]up_transfer_id;
  wire up_wack;
  wire up_wreq;

  FDRE #(
    .INIT(1'b0)) 
    ctrl_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_93),
        .Q(ctrl_enable),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_pause_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_92),
        .Q(ctrl_pause),
        .R(s_axi_aresetn_0));
  zed_axi_dmac_0_0_axi_dmac_regmap_request i_regmap_request
       (.E(i_up_axi_n_88),
        .Q(up_raddr),
        .SR(s_axi_aresetn_0),
        .\data_reg[24] (i_regmap_request_n_114),
        .\data_reg[25] (i_regmap_request_n_115),
        .\data_reg[26] (i_regmap_request_n_116),
        .\data_reg[27] (i_regmap_request_n_117),
        .\data_reg[28] (i_regmap_request_n_118),
        .\data_reg[2] (i_regmap_request_n_40),
        .\data_reg[33] ({data12,i_regmap_request_n_150,i_regmap_request_n_151,i_regmap_request_n_152,i_regmap_request_n_153}),
        .dbg_status(dbg_status[3]),
        .\level_reg[1] (ctrl_enable),
        .p_3_in(p_3_in),
        .p_8_in(p_8_in),
        .req_measured_burst_length(req_measured_burst_length),
        .req_ready_gated(req_ready_gated),
        .response_ready_reg_0(up_response_ready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .up_dma_cyclic_reg_0(up_dma_cyclic),
        .up_dma_cyclic_reg_1(i_up_axi_n_90),
        .\up_dma_dest_stride_reg[3]_0 (i_regmap_request_n_147),
        .\up_dma_dest_stride_reg[3]_1 (i_up_axi_n_87),
        .up_dma_enable_tlen_reporting_reg_0(i_up_axi_n_91),
        .up_dma_last(up_dma_last),
        .up_dma_last_reg_0(i_up_axi_n_89),
        .up_dma_req_valid_reg_0(up_dma_req_valid),
        .up_dma_req_valid_reg_1(i_up_axi_n_7),
        .\up_dma_src_address_reg[28]_0 (Q),
        .\up_dma_src_address_reg[28]_1 ({i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,up_dma_x_length0_in,i_up_axi_n_37,i_up_axi_n_38,i_up_axi_n_39}),
        .\up_dma_src_address_reg[28]_2 (up_dma_src_address),
        .\up_dma_src_stride_reg[23]_0 (\up_dma_src_stride_reg[23] ),
        .\up_dma_src_stride_reg[3]_0 (i_up_axi_n_46),
        .\up_dma_x_length_reg[10]_0 (i_regmap_request_n_94),
        .\up_dma_x_length_reg[11]_0 (i_regmap_request_n_96),
        .\up_dma_x_length_reg[16]_0 (i_regmap_request_n_102),
        .\up_dma_x_length_reg[17]_0 (i_regmap_request_n_104),
        .\up_dma_x_length_reg[18]_0 (i_regmap_request_n_106),
        .\up_dma_x_length_reg[19]_0 (i_regmap_request_n_108),
        .\up_dma_x_length_reg[23]_0 (\up_dma_x_length_reg[23] ),
        .\up_dma_x_length_reg[3]_0 (i_regmap_request_n_10),
        .\up_dma_x_length_reg[8]_0 (i_regmap_request_n_90),
        .\up_dma_x_length_reg[9]_0 (i_regmap_request_n_92),
        .\up_dma_y_length_reg[10]_0 (i_regmap_request_n_95),
        .\up_dma_y_length_reg[11]_0 (i_regmap_request_n_97),
        .\up_dma_y_length_reg[16]_0 (i_regmap_request_n_103),
        .\up_dma_y_length_reg[17]_0 (i_regmap_request_n_105),
        .\up_dma_y_length_reg[18]_0 (i_regmap_request_n_107),
        .\up_dma_y_length_reg[19]_0 (i_regmap_request_n_109),
        .\up_dma_y_length_reg[23]_0 (\up_dma_y_length_reg[23] ),
        .\up_dma_y_length_reg[23]_1 (up_dma_y_length),
        .\up_dma_y_length_reg[8]_0 (i_regmap_request_n_91),
        .\up_dma_y_length_reg[9]_0 (i_regmap_request_n_93),
        .\up_measured_transfer_length_reg[0]_0 (E),
        .\up_measured_transfer_length_reg[31]_0 ({up_measured_transfer_length[31:29],up_measured_transfer_length[2:0]}),
        .up_partial_length_valid_reg_0({data8[31],data8[2:0]}),
        .\up_raddr_int_reg[0] (i_regmap_request_n_65),
        .\up_raddr_int_reg[0]_0 (i_regmap_request_n_87),
        .\up_raddr_int_reg[0]_1 (i_regmap_request_n_88),
        .\up_raddr_int_reg[0]_10 (i_regmap_request_n_113),
        .\up_raddr_int_reg[0]_2 (i_regmap_request_n_89),
        .\up_raddr_int_reg[0]_3 (i_regmap_request_n_98),
        .\up_raddr_int_reg[0]_4 (i_regmap_request_n_99),
        .\up_raddr_int_reg[0]_5 (i_regmap_request_n_100),
        .\up_raddr_int_reg[0]_6 (i_regmap_request_n_101),
        .\up_raddr_int_reg[0]_7 (i_regmap_request_n_110),
        .\up_raddr_int_reg[0]_8 (i_regmap_request_n_111),
        .\up_raddr_int_reg[0]_9 (i_regmap_request_n_112),
        .up_req_eot(up_req_eot),
        .up_response_valid(up_response_valid),
        .up_sot(up_sot),
        .up_transfer_id(up_transfer_id),
        .\up_transfer_id_eot_reg[0]_0 (i_regmap_request_n_38),
        .\up_transfer_id_eot_reg[1]_0 (i_regmap_request_n_39));
  zed_axi_dmac_0_0_up_axi i_up_axi
       (.D({i_up_axi_n_40,i_up_axi_n_41}),
        .E(E),
        .Q({i_up_axi_n_8,i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,up_dma_x_length0_in,i_up_axi_n_37,i_up_axi_n_38,i_up_axi_n_39}),
        .SR(s_axi_aresetn_0),
        .ctrl_enable_reg(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_ids0(dbg_ids0),
        .dbg_ids1(dbg_ids1),
        .dbg_status(dbg_status[2:0]),
        .m_src_axi_araddr(m_src_axi_araddr),
        .p_3_in(p_3_in),
        .p_8_in(p_8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .up_axi_rvalid_int_reg_0(up_axi_rvalid_int_reg),
        .up_dma_cyclic(up_dma_cyclic),
        .up_dma_last(up_dma_last),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_req_valid_reg(i_up_axi_n_7),
        .\up_irq_source_reg[1] (up_irq_source),
        .up_rack(up_rack),
        .\up_raddr_int_reg[3]_0 (\up_raddr_int_reg[3] ),
        .\up_raddr_int_reg[4]_0 (up_raddr),
        .\up_raddr_int_reg[7]_0 (\up_raddr_int_reg[7] ),
        .\up_rdata[0]_i_4_0 (i_regmap_request_n_38),
        .\up_rdata[1]_i_4_0 ({data12,i_regmap_request_n_150,i_regmap_request_n_151,i_regmap_request_n_152,i_regmap_request_n_153}),
        .\up_rdata[1]_i_4_1 (i_regmap_request_n_39),
        .\up_rdata[31]_i_6_0 ({data8[31],data8[2:0]}),
        .\up_rdata[3]_i_4_0 (i_regmap_request_n_10),
        .\up_rdata[3]_i_4_1 (i_regmap_request_n_147),
        .\up_rdata[3]_i_4_2 ({\up_dma_y_length_reg[23] [3],\up_dma_y_length_reg[23] [1:0]}),
        .\up_rdata[3]_i_4_3 (\up_dma_src_stride_reg[23] [0]),
        .\up_rdata_d_reg[31]_0 (up_rdata),
        .\up_rdata_reg[0] (\up_irq_mask_reg_n_0_[0] ),
        .\up_rdata_reg[10] (\up_rdata_reg[10]_0 ),
        .\up_rdata_reg[10]_0 (i_regmap_request_n_95),
        .\up_rdata_reg[10]_1 (i_regmap_request_n_94),
        .\up_rdata_reg[11] (\up_rdata_reg[11]_0 ),
        .\up_rdata_reg[11]_0 (i_regmap_request_n_97),
        .\up_rdata_reg[11]_1 (i_regmap_request_n_96),
        .\up_rdata_reg[12] (i_regmap_request_n_98),
        .\up_rdata_reg[13] (i_regmap_request_n_99),
        .\up_rdata_reg[14] (i_regmap_request_n_100),
        .\up_rdata_reg[15] (i_regmap_request_n_101),
        .\up_rdata_reg[16] (\up_rdata_reg[16]_0 ),
        .\up_rdata_reg[16]_0 (i_regmap_request_n_103),
        .\up_rdata_reg[16]_1 (i_regmap_request_n_102),
        .\up_rdata_reg[17] (\up_rdata_reg[17]_0 ),
        .\up_rdata_reg[17]_0 (i_regmap_request_n_105),
        .\up_rdata_reg[17]_1 (i_regmap_request_n_104),
        .\up_rdata_reg[18] (\up_rdata_reg[18]_0 ),
        .\up_rdata_reg[18]_0 (i_regmap_request_n_107),
        .\up_rdata_reg[18]_1 (i_regmap_request_n_106),
        .\up_rdata_reg[19] (\up_rdata_reg[19]_0 ),
        .\up_rdata_reg[19]_0 (i_regmap_request_n_109),
        .\up_rdata_reg[19]_1 (i_regmap_request_n_108),
        .\up_rdata_reg[1] (\up_irq_mask_reg_n_0_[1] ),
        .\up_rdata_reg[20] (i_regmap_request_n_110),
        .\up_rdata_reg[21] (i_regmap_request_n_111),
        .\up_rdata_reg[22] (i_regmap_request_n_112),
        .\up_rdata_reg[23] (i_regmap_request_n_113),
        .\up_rdata_reg[24] (\up_rdata_reg[24]_0 ),
        .\up_rdata_reg[24]_0 (i_regmap_request_n_114),
        .\up_rdata_reg[25] (\up_rdata_reg[25]_0 ),
        .\up_rdata_reg[25]_0 (i_regmap_request_n_115),
        .\up_rdata_reg[26] (\up_rdata_reg[26]_0 ),
        .\up_rdata_reg[26]_0 (i_regmap_request_n_116),
        .\up_rdata_reg[27] (\up_rdata_reg[27]_0 ),
        .\up_rdata_reg[27]_0 (i_regmap_request_n_117),
        .\up_rdata_reg[28] (Q),
        .\up_rdata_reg[28]_0 (i_regmap_request_n_118),
        .\up_rdata_reg[2] (i_regmap_request_n_40),
        .\up_rdata_reg[31] (up_scratch),
        .\up_rdata_reg[31]_0 ({up_measured_transfer_length[31:29],up_measured_transfer_length[2:0]}),
        .\up_rdata_reg[3] (\up_rdata_reg[3]_0 ),
        .\up_rdata_reg[4] (\up_rdata_reg[4]_0 ),
        .\up_rdata_reg[4]_0 (i_regmap_request_n_65),
        .\up_rdata_reg[5] (\up_rdata_reg[5]_0 ),
        .\up_rdata_reg[5]_0 (i_regmap_request_n_87),
        .\up_rdata_reg[6] (\up_rdata_reg[6]_0 ),
        .\up_rdata_reg[6]_0 (i_regmap_request_n_88),
        .\up_rdata_reg[7] (i_regmap_request_n_89),
        .\up_rdata_reg[7]_0 (\up_rdata_reg[7]_0 ),
        .\up_rdata_reg[8] (\up_rdata_reg[8]_0 ),
        .\up_rdata_reg[8]_0 (i_regmap_request_n_91),
        .\up_rdata_reg[8]_1 (i_regmap_request_n_90),
        .\up_rdata_reg[9] (\up_rdata_reg[9]_0 ),
        .\up_rdata_reg[9]_0 (i_regmap_request_n_93),
        .\up_rdata_reg[9]_1 (i_regmap_request_n_92),
        .up_req_eot(up_req_eot),
        .up_rreq(up_rreq),
        .\up_scratch_reg[31] (up_rdata_0),
        .up_sot(up_sot),
        .up_transfer_id(up_transfer_id),
        .up_wack(up_wack),
        .\up_waddr_int_reg[0]_0 (i_up_axi_n_88),
        .\up_waddr_int_reg[3]_0 (i_up_axi_n_46),
        .\up_waddr_int_reg[8]_0 (i_up_axi_n_87),
        .\up_wdata_int_reg[0]_0 (i_up_axi_n_90),
        .\up_wdata_int_reg[0]_1 (i_up_axi_n_93),
        .\up_wdata_int_reg[1]_0 (i_up_axi_n_89),
        .\up_wdata_int_reg[1]_1 (i_up_axi_n_92),
        .\up_wdata_int_reg[2]_0 (i_up_axi_n_91),
        .up_wreq(up_wreq),
        .up_wreq_int_reg_0(up_dma_src_address),
        .up_wreq_int_reg_1(up_dma_y_length),
        .up_wreq_int_reg_2(i_up_axi_n_44),
        .up_wreq_int_reg_3(i_up_axi_n_45));
  LUT4 #(
    .INIT(16'h4F44)) 
    irq_i_1
       (.I0(\up_irq_mask_reg_n_0_[0] ),
        .I1(up_irq_source[0]),
        .I2(\up_irq_mask_reg_n_0_[1] ),
        .I3(up_irq_source[1]),
        .O(irq_i_1_n_0));
  FDRE irq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_i_1_n_0),
        .Q(irq),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[0]_i_1 
       (.I0(i_up_axi_n_39),
        .I1(i_up_axi_n_44),
        .I2(\up_irq_mask_reg_n_0_[0] ),
        .O(\up_irq_mask[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[1]_i_1 
       (.I0(i_up_axi_n_38),
        .I1(i_up_axi_n_44),
        .I2(\up_irq_mask_reg_n_0_[1] ),
        .O(\up_irq_mask[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[0]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[0] ),
        .S(s_axi_aresetn_0));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[1]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[1] ),
        .S(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_41),
        .Q(up_irq_source[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_40),
        .Q(up_irq_source[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq),
        .Q(up_rack),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[0]),
        .Q(up_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[10]),
        .Q(up_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[11]),
        .Q(up_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[12]),
        .Q(up_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[13]),
        .Q(up_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[14]),
        .Q(up_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[15]),
        .Q(up_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[16]),
        .Q(up_rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[17]),
        .Q(up_rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[18]),
        .Q(up_rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[19]),
        .Q(up_rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[1]),
        .Q(up_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[20]),
        .Q(up_rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[21]),
        .Q(up_rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[22]),
        .Q(up_rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[23]),
        .Q(up_rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[24]),
        .Q(up_rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[25]),
        .Q(up_rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[26]),
        .Q(up_rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[27]),
        .Q(up_rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[28]),
        .Q(up_rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[29]),
        .Q(up_rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[2]),
        .Q(up_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[30]),
        .Q(up_rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[31]),
        .Q(up_rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[3]),
        .Q(up_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[4]),
        .Q(up_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[5]),
        .Q(up_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[6]),
        .Q(up_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[7]),
        .Q(up_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[8]),
        .Q(up_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[9]),
        .Q(up_rdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[0] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_39),
        .Q(up_scratch[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[10] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[10]),
        .Q(up_scratch[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[11] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[11]),
        .Q(up_scratch[11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[12] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[12]),
        .Q(up_scratch[12]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[13] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[13]),
        .Q(up_scratch[13]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[14] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[14]),
        .Q(up_scratch[14]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[15] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[15]),
        .Q(up_scratch[15]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[16] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[16]),
        .Q(up_scratch[16]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[17] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[17]),
        .Q(up_scratch[17]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[18] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[18]),
        .Q(up_scratch[18]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[19] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[19]),
        .Q(up_scratch[19]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[1] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_38),
        .Q(up_scratch[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[20] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[20]),
        .Q(up_scratch[20]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[21] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[21]),
        .Q(up_scratch[21]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[22] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[22]),
        .Q(up_scratch[22]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[23] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[23]),
        .Q(up_scratch[23]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[24] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_15),
        .Q(up_scratch[24]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[25] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_14),
        .Q(up_scratch[25]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[26] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_13),
        .Q(up_scratch[26]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[27] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_12),
        .Q(up_scratch[27]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[28] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_11),
        .Q(up_scratch[28]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[29] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_10),
        .Q(up_scratch[29]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[2] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_37),
        .Q(up_scratch[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[30] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_9),
        .Q(up_scratch[30]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[31] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(i_up_axi_n_8),
        .Q(up_scratch[31]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[3] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[3]),
        .Q(up_scratch[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[4] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[4]),
        .Q(up_scratch[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[5] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[5]),
        .Q(up_scratch[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[6] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[6]),
        .Q(up_scratch[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[7] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[7]),
        .Q(up_scratch[7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[8] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[8]),
        .Q(up_scratch[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[9] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_45),
        .D(up_dma_x_length0_in[9]),
        .Q(up_scratch[9]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq),
        .Q(up_wack),
        .R(s_axi_aresetn_0));
endmodule

(* ORIG_REF_NAME = "axi_dmac_regmap_request" *) 
module zed_axi_dmac_0_0_axi_dmac_regmap_request
   (p_3_in,
    SR,
    up_dma_cyclic_reg_0,
    up_dma_req_valid_reg_0,
    response_ready_reg_0,
    up_dma_last,
    up_partial_length_valid_reg_0,
    \up_dma_x_length_reg[3]_0 ,
    \up_dma_x_length_reg[23]_0 ,
    \up_measured_transfer_length_reg[31]_0 ,
    \up_transfer_id_eot_reg[0]_0 ,
    \up_transfer_id_eot_reg[1]_0 ,
    \data_reg[2] ,
    \up_dma_y_length_reg[23]_0 ,
    \up_raddr_int_reg[0] ,
    \up_dma_src_stride_reg[23]_0 ,
    \up_raddr_int_reg[0]_0 ,
    \up_raddr_int_reg[0]_1 ,
    \up_raddr_int_reg[0]_2 ,
    \up_dma_x_length_reg[8]_0 ,
    \up_dma_y_length_reg[8]_0 ,
    \up_dma_x_length_reg[9]_0 ,
    \up_dma_y_length_reg[9]_0 ,
    \up_dma_x_length_reg[10]_0 ,
    \up_dma_y_length_reg[10]_0 ,
    \up_dma_x_length_reg[11]_0 ,
    \up_dma_y_length_reg[11]_0 ,
    \up_raddr_int_reg[0]_3 ,
    \up_raddr_int_reg[0]_4 ,
    \up_raddr_int_reg[0]_5 ,
    \up_raddr_int_reg[0]_6 ,
    \up_dma_x_length_reg[16]_0 ,
    \up_dma_y_length_reg[16]_0 ,
    \up_dma_x_length_reg[17]_0 ,
    \up_dma_y_length_reg[17]_0 ,
    \up_dma_x_length_reg[18]_0 ,
    \up_dma_y_length_reg[18]_0 ,
    \up_dma_x_length_reg[19]_0 ,
    \up_dma_y_length_reg[19]_0 ,
    \up_raddr_int_reg[0]_7 ,
    \up_raddr_int_reg[0]_8 ,
    \up_raddr_int_reg[0]_9 ,
    \up_raddr_int_reg[0]_10 ,
    \data_reg[24] ,
    \data_reg[25] ,
    \data_reg[26] ,
    \data_reg[27] ,
    \data_reg[28] ,
    up_transfer_id,
    \up_dma_src_address_reg[28]_0 ,
    \up_dma_dest_stride_reg[3]_0 ,
    \data_reg[33] ,
    s_axi_aclk,
    up_dma_enable_tlen_reporting_reg_0,
    up_dma_cyclic_reg_1,
    up_dma_req_valid_reg_1,
    up_dma_last_reg_0,
    p_8_in,
    up_response_valid,
    up_req_eot,
    s_axi_aresetn,
    \level_reg[1] ,
    Q,
    req_ready_gated,
    dbg_status,
    E,
    \up_dma_src_address_reg[28]_1 ,
    \up_dma_src_address_reg[28]_2 ,
    \up_dma_src_stride_reg[3]_0 ,
    \up_dma_dest_stride_reg[3]_1 ,
    \up_dma_y_length_reg[23]_1 ,
    up_sot,
    \up_measured_transfer_length_reg[0]_0 ,
    req_measured_burst_length);
  output [0:0]p_3_in;
  output [0:0]SR;
  output up_dma_cyclic_reg_0;
  output up_dma_req_valid_reg_0;
  output response_ready_reg_0;
  output up_dma_last;
  output [3:0]up_partial_length_valid_reg_0;
  output \up_dma_x_length_reg[3]_0 ;
  output [20:0]\up_dma_x_length_reg[23]_0 ;
  output [5:0]\up_measured_transfer_length_reg[31]_0 ;
  output \up_transfer_id_eot_reg[0]_0 ;
  output \up_transfer_id_eot_reg[1]_0 ;
  output \data_reg[2] ;
  output [23:0]\up_dma_y_length_reg[23]_0 ;
  output \up_raddr_int_reg[0] ;
  output [20:0]\up_dma_src_stride_reg[23]_0 ;
  output \up_raddr_int_reg[0]_0 ;
  output \up_raddr_int_reg[0]_1 ;
  output \up_raddr_int_reg[0]_2 ;
  output \up_dma_x_length_reg[8]_0 ;
  output \up_dma_y_length_reg[8]_0 ;
  output \up_dma_x_length_reg[9]_0 ;
  output \up_dma_y_length_reg[9]_0 ;
  output \up_dma_x_length_reg[10]_0 ;
  output \up_dma_y_length_reg[10]_0 ;
  output \up_dma_x_length_reg[11]_0 ;
  output \up_dma_y_length_reg[11]_0 ;
  output \up_raddr_int_reg[0]_3 ;
  output \up_raddr_int_reg[0]_4 ;
  output \up_raddr_int_reg[0]_5 ;
  output \up_raddr_int_reg[0]_6 ;
  output \up_dma_x_length_reg[16]_0 ;
  output \up_dma_y_length_reg[16]_0 ;
  output \up_dma_x_length_reg[17]_0 ;
  output \up_dma_y_length_reg[17]_0 ;
  output \up_dma_x_length_reg[18]_0 ;
  output \up_dma_y_length_reg[18]_0 ;
  output \up_dma_x_length_reg[19]_0 ;
  output \up_dma_y_length_reg[19]_0 ;
  output \up_raddr_int_reg[0]_7 ;
  output \up_raddr_int_reg[0]_8 ;
  output \up_raddr_int_reg[0]_9 ;
  output \up_raddr_int_reg[0]_10 ;
  output \data_reg[24] ;
  output \data_reg[25] ;
  output \data_reg[26] ;
  output \data_reg[27] ;
  output \data_reg[28] ;
  output [1:0]up_transfer_id;
  output [25:0]\up_dma_src_address_reg[28]_0 ;
  output [0:0]\up_dma_dest_stride_reg[3]_0 ;
  output [5:0]\data_reg[33] ;
  input s_axi_aclk;
  input up_dma_enable_tlen_reporting_reg_0;
  input up_dma_cyclic_reg_1;
  input up_dma_req_valid_reg_1;
  input up_dma_last_reg_0;
  input p_8_in;
  input up_response_valid;
  input up_req_eot;
  input s_axi_aresetn;
  input \level_reg[1] ;
  input [4:0]Q;
  input req_ready_gated;
  input [0:0]dbg_status;
  input [0:0]E;
  input [28:0]\up_dma_src_address_reg[28]_1 ;
  input [0:0]\up_dma_src_address_reg[28]_2 ;
  input [0:0]\up_dma_src_stride_reg[3]_0 ;
  input [0:0]\up_dma_dest_stride_reg[3]_1 ;
  input [0:0]\up_dma_y_length_reg[23]_1 ;
  input up_sot;
  input [0:0]\up_measured_transfer_length_reg[0]_0 ;
  input [0:0]req_measured_burst_length;

  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [3:3]data8;
  wire \data_reg[24] ;
  wire \data_reg[25] ;
  wire \data_reg[26] ;
  wire \data_reg[27] ;
  wire \data_reg[28] ;
  wire \data_reg[2] ;
  wire [5:0]\data_reg[33] ;
  wire [0:0]dbg_status;
  wire i_transfer_lenghts_fifo_n_0;
  wire i_transfer_lenghts_fifo_n_29;
  wire i_transfer_lenghts_fifo_n_30;
  wire \level_reg[1] ;
  wire [0:0]p_3_in;
  wire p_8_in;
  wire [0:0]req_measured_burst_length;
  wire req_ready_gated;
  wire response_ready_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire up_clear_tl;
  wire up_clear_tl_i_1_n_0;
  wire up_dma_cyclic_reg_0;
  wire up_dma_cyclic_reg_1;
  wire [0:0]\up_dma_dest_stride_reg[3]_0 ;
  wire [0:0]\up_dma_dest_stride_reg[3]_1 ;
  wire \up_dma_dest_stride_reg_n_0_[10] ;
  wire \up_dma_dest_stride_reg_n_0_[11] ;
  wire \up_dma_dest_stride_reg_n_0_[12] ;
  wire \up_dma_dest_stride_reg_n_0_[13] ;
  wire \up_dma_dest_stride_reg_n_0_[14] ;
  wire \up_dma_dest_stride_reg_n_0_[15] ;
  wire \up_dma_dest_stride_reg_n_0_[16] ;
  wire \up_dma_dest_stride_reg_n_0_[17] ;
  wire \up_dma_dest_stride_reg_n_0_[18] ;
  wire \up_dma_dest_stride_reg_n_0_[19] ;
  wire \up_dma_dest_stride_reg_n_0_[20] ;
  wire \up_dma_dest_stride_reg_n_0_[21] ;
  wire \up_dma_dest_stride_reg_n_0_[22] ;
  wire \up_dma_dest_stride_reg_n_0_[23] ;
  wire \up_dma_dest_stride_reg_n_0_[4] ;
  wire \up_dma_dest_stride_reg_n_0_[5] ;
  wire \up_dma_dest_stride_reg_n_0_[6] ;
  wire \up_dma_dest_stride_reg_n_0_[7] ;
  wire \up_dma_dest_stride_reg_n_0_[8] ;
  wire \up_dma_dest_stride_reg_n_0_[9] ;
  wire up_dma_enable_tlen_reporting_reg_0;
  wire up_dma_last;
  wire up_dma_last_reg_0;
  wire up_dma_req_valid_reg_0;
  wire up_dma_req_valid_reg_1;
  wire [25:0]\up_dma_src_address_reg[28]_0 ;
  wire [28:0]\up_dma_src_address_reg[28]_1 ;
  wire [0:0]\up_dma_src_address_reg[28]_2 ;
  wire [20:0]\up_dma_src_stride_reg[23]_0 ;
  wire [0:0]\up_dma_src_stride_reg[3]_0 ;
  wire \up_dma_x_length_reg[10]_0 ;
  wire \up_dma_x_length_reg[11]_0 ;
  wire \up_dma_x_length_reg[16]_0 ;
  wire \up_dma_x_length_reg[17]_0 ;
  wire \up_dma_x_length_reg[18]_0 ;
  wire \up_dma_x_length_reg[19]_0 ;
  wire [20:0]\up_dma_x_length_reg[23]_0 ;
  wire \up_dma_x_length_reg[3]_0 ;
  wire \up_dma_x_length_reg[8]_0 ;
  wire \up_dma_x_length_reg[9]_0 ;
  wire \up_dma_y_length_reg[10]_0 ;
  wire \up_dma_y_length_reg[11]_0 ;
  wire \up_dma_y_length_reg[16]_0 ;
  wire \up_dma_y_length_reg[17]_0 ;
  wire \up_dma_y_length_reg[18]_0 ;
  wire \up_dma_y_length_reg[19]_0 ;
  wire [23:0]\up_dma_y_length_reg[23]_0 ;
  wire [0:0]\up_dma_y_length_reg[23]_1 ;
  wire \up_dma_y_length_reg[8]_0 ;
  wire \up_dma_y_length_reg[9]_0 ;
  wire up_eot;
  wire [28:3]up_measured_transfer_length;
  wire \up_measured_transfer_length[31]_i_1_n_0 ;
  wire \up_measured_transfer_length[3]_i_2_n_0 ;
  wire \up_measured_transfer_length[3]_i_3_n_0 ;
  wire \up_measured_transfer_length[3]_i_4_n_0 ;
  wire \up_measured_transfer_length[3]_i_5_n_0 ;
  wire \up_measured_transfer_length[7]_i_2_n_0 ;
  wire \up_measured_transfer_length[7]_i_3_n_0 ;
  wire \up_measured_transfer_length[7]_i_4_n_0 ;
  wire [0:0]\up_measured_transfer_length_reg[0]_0 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[23]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[23]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[23]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[23]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[23]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[23]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[23]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[23]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[27]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[27]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[27]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[27]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[27]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[27]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[27]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[27]_i_1_n_7 ;
  wire [5:0]\up_measured_transfer_length_reg[31]_0 ;
  wire \up_measured_transfer_length_reg[31]_i_3_n_1 ;
  wire \up_measured_transfer_length_reg[31]_i_3_n_2 ;
  wire \up_measured_transfer_length_reg[31]_i_3_n_3 ;
  wire \up_measured_transfer_length_reg[31]_i_3_n_4 ;
  wire \up_measured_transfer_length_reg[31]_i_3_n_5 ;
  wire \up_measured_transfer_length_reg[31]_i_3_n_6 ;
  wire \up_measured_transfer_length_reg[31]_i_3_n_7 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_7 ;
  wire [3:0]up_partial_length_valid_reg_0;
  wire \up_raddr_int_reg[0] ;
  wire \up_raddr_int_reg[0]_0 ;
  wire \up_raddr_int_reg[0]_1 ;
  wire \up_raddr_int_reg[0]_10 ;
  wire \up_raddr_int_reg[0]_2 ;
  wire \up_raddr_int_reg[0]_3 ;
  wire \up_raddr_int_reg[0]_4 ;
  wire \up_raddr_int_reg[0]_5 ;
  wire \up_raddr_int_reg[0]_6 ;
  wire \up_raddr_int_reg[0]_7 ;
  wire \up_raddr_int_reg[0]_8 ;
  wire \up_raddr_int_reg[0]_9 ;
  wire \up_rdata[12]_i_6_n_0 ;
  wire \up_rdata[13]_i_6_n_0 ;
  wire \up_rdata[14]_i_6_n_0 ;
  wire \up_rdata[15]_i_6_n_0 ;
  wire \up_rdata[20]_i_6_n_0 ;
  wire \up_rdata[21]_i_6_n_0 ;
  wire \up_rdata[22]_i_6_n_0 ;
  wire \up_rdata[23]_i_6_n_0 ;
  wire \up_rdata[4]_i_6_n_0 ;
  wire \up_rdata[5]_i_6_n_0 ;
  wire \up_rdata[6]_i_6_n_0 ;
  wire \up_rdata[7]_i_6_n_0 ;
  wire up_req_eot;
  wire up_response_valid;
  wire up_sot;
  wire \up_transfer_done_bitmap[0]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[0]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_2_n_0 ;
  wire [1:0]up_transfer_id;
  wire \up_transfer_id[0]_i_1_n_0 ;
  wire \up_transfer_id[1]_i_1_n_0 ;
  wire [1:0]up_transfer_id_eot;
  wire \up_transfer_id_eot[0]_i_1_n_0 ;
  wire \up_transfer_id_eot[1]_i_1_n_0 ;
  wire [1:0]up_transfer_id_eot_d;
  wire \up_transfer_id_eot_d[0]_i_1_n_0 ;
  wire \up_transfer_id_eot_d[1]_i_1_n_0 ;
  wire \up_transfer_id_eot_reg[0]_0 ;
  wire \up_transfer_id_eot_reg[1]_0 ;
  wire [3:3]\NLW_up_measured_transfer_length_reg[31]_i_3_CO_UNCONNECTED ;

  zed_axi_dmac_0_0_util_axis_fifo i_transfer_lenghts_fifo
       (.Q(Q),
        .SR(i_transfer_lenghts_fifo_n_0),
        .\data_reg[24]_0 (\data_reg[24] ),
        .\data_reg[25]_0 (\data_reg[25] ),
        .\data_reg[26]_0 (\data_reg[26] ),
        .\data_reg[27]_0 (\data_reg[27] ),
        .\data_reg[28]_0 (\data_reg[28] ),
        .\data_reg[2]_0 (\data_reg[2] ),
        .\data_reg[33]_0 (\data_reg[33] ),
        .\level_reg[1] (\level_reg[1] ),
        .p_3_in(p_3_in),
        .p_8_in(p_8_in),
        .req_response_valid_reg(i_transfer_lenghts_fifo_n_29),
        .response_ready_reg(response_ready_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_data({up_transfer_id_eot_d,\up_measured_transfer_length_reg[31]_0 [5:3],up_measured_transfer_length,\up_measured_transfer_length_reg[31]_0 [2:0]}),
        .up_dma_last(up_dma_last),
        .\up_dma_y_length_reg[10] (\up_dma_y_length_reg[10]_0 ),
        .\up_dma_y_length_reg[11] (\up_dma_y_length_reg[11]_0 ),
        .\up_dma_y_length_reg[16] (\up_dma_y_length_reg[16]_0 ),
        .\up_dma_y_length_reg[17] (\up_dma_y_length_reg[17]_0 ),
        .\up_dma_y_length_reg[18] (\up_dma_y_length_reg[18]_0 ),
        .\up_dma_y_length_reg[19] (\up_dma_y_length_reg[19]_0 ),
        .\up_dma_y_length_reg[8] (\up_dma_y_length_reg[8]_0 ),
        .\up_dma_y_length_reg[9] (\up_dma_y_length_reg[9]_0 ),
        .up_partial_length_valid_reg(up_partial_length_valid_reg_0[3]),
        .\up_raddr_int_reg[0] (\up_raddr_int_reg[0] ),
        .\up_raddr_int_reg[0]_0 (\up_raddr_int_reg[0]_0 ),
        .\up_raddr_int_reg[0]_1 (\up_raddr_int_reg[0]_1 ),
        .\up_raddr_int_reg[0]_10 (\up_raddr_int_reg[0]_10 ),
        .\up_raddr_int_reg[0]_2 (\up_raddr_int_reg[0]_2 ),
        .\up_raddr_int_reg[0]_3 (\up_raddr_int_reg[0]_3 ),
        .\up_raddr_int_reg[0]_4 (\up_raddr_int_reg[0]_4 ),
        .\up_raddr_int_reg[0]_5 (\up_raddr_int_reg[0]_5 ),
        .\up_raddr_int_reg[0]_6 (\up_raddr_int_reg[0]_6 ),
        .\up_raddr_int_reg[0]_7 (\up_raddr_int_reg[0]_7 ),
        .\up_raddr_int_reg[0]_8 (\up_raddr_int_reg[0]_8 ),
        .\up_raddr_int_reg[0]_9 (\up_raddr_int_reg[0]_9 ),
        .\up_rdata[0]_i_7 (up_dma_cyclic_reg_0),
        .\up_rdata[12]_i_4 (\up_rdata[12]_i_6_n_0 ),
        .\up_rdata[13]_i_4 (\up_rdata[13]_i_6_n_0 ),
        .\up_rdata[14]_i_4 (\up_rdata[14]_i_6_n_0 ),
        .\up_rdata[15]_i_4 (\up_rdata[15]_i_6_n_0 ),
        .\up_rdata[20]_i_4 (\up_rdata[20]_i_6_n_0 ),
        .\up_rdata[21]_i_4 (\up_rdata[21]_i_6_n_0 ),
        .\up_rdata[22]_i_4 (\up_rdata[22]_i_6_n_0 ),
        .\up_rdata[23]_i_4 (\up_rdata[23]_i_6_n_0 ),
        .\up_rdata[4]_i_4 (\up_rdata[4]_i_6_n_0 ),
        .\up_rdata[5]_i_4 (\up_rdata[5]_i_6_n_0 ),
        .\up_rdata[6]_i_4 (\up_rdata[6]_i_6_n_0 ),
        .\up_rdata[7]_i_4 (\up_rdata[7]_i_6_n_0 ),
        .\up_rdata_reg[23]_i_5_0 ({\up_dma_y_length_reg[23]_0 [23:4],\up_dma_y_length_reg[23]_0 [2]}),
        .\up_rdata_reg[23]_i_5_1 (\up_dma_src_stride_reg[23]_0 [20:1]),
        .up_response_valid(up_response_valid),
        .up_transfer_id_eot(up_transfer_id_eot),
        .\up_transfer_id_eot_reg[0] (\up_transfer_id_eot_reg[0]_0 ),
        .\up_transfer_id_eot_reg[1] (\up_transfer_id_eot_reg[1]_0 ),
        .valid_reg_0(i_transfer_lenghts_fifo_n_30));
  FDSE #(
    .INIT(1'b1)) 
    response_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_29),
        .Q(response_ready_reg_0),
        .S(i_transfer_lenghts_fifo_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    up_axi_awready_int_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h4FFF4000)) 
    up_clear_tl_i_1
       (.I0(up_dma_cyclic_reg_0),
        .I1(up_req_eot),
        .I2(up_response_valid),
        .I3(response_ready_reg_0),
        .I4(up_clear_tl),
        .O(up_clear_tl_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_clear_tl_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_clear_tl_i_1_n_0),
        .Q(up_clear_tl),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    up_dma_cyclic_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_cyclic_reg_1),
        .Q(up_dma_cyclic_reg_0),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [10]),
        .Q(\up_dma_dest_stride_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [11]),
        .Q(\up_dma_dest_stride_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [12]),
        .Q(\up_dma_dest_stride_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [13]),
        .Q(\up_dma_dest_stride_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [14]),
        .Q(\up_dma_dest_stride_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [15]),
        .Q(\up_dma_dest_stride_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [16]),
        .Q(\up_dma_dest_stride_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [17]),
        .Q(\up_dma_dest_stride_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [18]),
        .Q(\up_dma_dest_stride_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [19]),
        .Q(\up_dma_dest_stride_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [20]),
        .Q(\up_dma_dest_stride_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [21]),
        .Q(\up_dma_dest_stride_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [22]),
        .Q(\up_dma_dest_stride_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [23]),
        .Q(\up_dma_dest_stride_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [3]),
        .Q(\up_dma_dest_stride_reg[3]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [4]),
        .Q(\up_dma_dest_stride_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [5]),
        .Q(\up_dma_dest_stride_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [6]),
        .Q(\up_dma_dest_stride_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [7]),
        .Q(\up_dma_dest_stride_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [8]),
        .Q(\up_dma_dest_stride_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_stride_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_stride_reg[3]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [9]),
        .Q(\up_dma_dest_stride_reg_n_0_[9] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    up_dma_enable_tlen_reporting_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_enable_tlen_reporting_reg_0),
        .Q(p_3_in),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    up_dma_last_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_last_reg_0),
        .Q(up_dma_last),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    up_dma_req_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_req_valid_reg_1),
        .Q(up_dma_req_valid_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [10]),
        .Q(\up_dma_src_address_reg[28]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [11]),
        .Q(\up_dma_src_address_reg[28]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [12]),
        .Q(\up_dma_src_address_reg[28]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [13]),
        .Q(\up_dma_src_address_reg[28]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [14]),
        .Q(\up_dma_src_address_reg[28]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [15]),
        .Q(\up_dma_src_address_reg[28]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [16]),
        .Q(\up_dma_src_address_reg[28]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [17]),
        .Q(\up_dma_src_address_reg[28]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [18]),
        .Q(\up_dma_src_address_reg[28]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [19]),
        .Q(\up_dma_src_address_reg[28]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [20]),
        .Q(\up_dma_src_address_reg[28]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [21]),
        .Q(\up_dma_src_address_reg[28]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [22]),
        .Q(\up_dma_src_address_reg[28]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [23]),
        .Q(\up_dma_src_address_reg[28]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[24] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [24]),
        .Q(\up_dma_src_address_reg[28]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[25] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [25]),
        .Q(\up_dma_src_address_reg[28]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[26] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [26]),
        .Q(\up_dma_src_address_reg[28]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[27] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [27]),
        .Q(\up_dma_src_address_reg[28]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[28] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [28]),
        .Q(\up_dma_src_address_reg[28]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [3]),
        .Q(\up_dma_src_address_reg[28]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [4]),
        .Q(\up_dma_src_address_reg[28]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [5]),
        .Q(\up_dma_src_address_reg[28]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [6]),
        .Q(\up_dma_src_address_reg[28]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [7]),
        .Q(\up_dma_src_address_reg[28]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [8]),
        .Q(\up_dma_src_address_reg[28]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[28]_2 ),
        .D(\up_dma_src_address_reg[28]_1 [9]),
        .Q(\up_dma_src_address_reg[28]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [10]),
        .Q(\up_dma_src_stride_reg[23]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [11]),
        .Q(\up_dma_src_stride_reg[23]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [12]),
        .Q(\up_dma_src_stride_reg[23]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [13]),
        .Q(\up_dma_src_stride_reg[23]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [14]),
        .Q(\up_dma_src_stride_reg[23]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [15]),
        .Q(\up_dma_src_stride_reg[23]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [16]),
        .Q(\up_dma_src_stride_reg[23]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [17]),
        .Q(\up_dma_src_stride_reg[23]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [18]),
        .Q(\up_dma_src_stride_reg[23]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [19]),
        .Q(\up_dma_src_stride_reg[23]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [20]),
        .Q(\up_dma_src_stride_reg[23]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [21]),
        .Q(\up_dma_src_stride_reg[23]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [22]),
        .Q(\up_dma_src_stride_reg[23]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [23]),
        .Q(\up_dma_src_stride_reg[23]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [3]),
        .Q(\up_dma_src_stride_reg[23]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [4]),
        .Q(\up_dma_src_stride_reg[23]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [5]),
        .Q(\up_dma_src_stride_reg[23]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [6]),
        .Q(\up_dma_src_stride_reg[23]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [7]),
        .Q(\up_dma_src_stride_reg[23]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [8]),
        .Q(\up_dma_src_stride_reg[23]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_stride_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_stride_reg[3]_0 ),
        .D(\up_dma_src_address_reg[28]_1 [9]),
        .Q(\up_dma_src_stride_reg[23]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [10]),
        .Q(\up_dma_x_length_reg[23]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [11]),
        .Q(\up_dma_x_length_reg[23]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [12]),
        .Q(\up_dma_x_length_reg[23]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [13]),
        .Q(\up_dma_x_length_reg[23]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [14]),
        .Q(\up_dma_x_length_reg[23]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [15]),
        .Q(\up_dma_x_length_reg[23]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [16]),
        .Q(\up_dma_x_length_reg[23]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [17]),
        .Q(\up_dma_x_length_reg[23]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [18]),
        .Q(\up_dma_x_length_reg[23]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [19]),
        .Q(\up_dma_x_length_reg[23]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [20]),
        .Q(\up_dma_x_length_reg[23]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [21]),
        .Q(\up_dma_x_length_reg[23]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [22]),
        .Q(\up_dma_x_length_reg[23]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [23]),
        .Q(\up_dma_x_length_reg[23]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [3]),
        .Q(\up_dma_x_length_reg[23]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [4]),
        .Q(\up_dma_x_length_reg[23]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [5]),
        .Q(\up_dma_x_length_reg[23]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [6]),
        .Q(\up_dma_x_length_reg[23]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [7]),
        .Q(\up_dma_x_length_reg[23]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [8]),
        .Q(\up_dma_x_length_reg[23]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_dma_src_address_reg[28]_1 [9]),
        .Q(\up_dma_x_length_reg[23]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [0]),
        .Q(\up_dma_y_length_reg[23]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [10]),
        .Q(\up_dma_y_length_reg[23]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [11]),
        .Q(\up_dma_y_length_reg[23]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [12]),
        .Q(\up_dma_y_length_reg[23]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [13]),
        .Q(\up_dma_y_length_reg[23]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [14]),
        .Q(\up_dma_y_length_reg[23]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [15]),
        .Q(\up_dma_y_length_reg[23]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [16]),
        .Q(\up_dma_y_length_reg[23]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [17]),
        .Q(\up_dma_y_length_reg[23]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [18]),
        .Q(\up_dma_y_length_reg[23]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [19]),
        .Q(\up_dma_y_length_reg[23]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [1]),
        .Q(\up_dma_y_length_reg[23]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [20]),
        .Q(\up_dma_y_length_reg[23]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [21]),
        .Q(\up_dma_y_length_reg[23]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [22]),
        .Q(\up_dma_y_length_reg[23]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [23]),
        .Q(\up_dma_y_length_reg[23]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [2]),
        .Q(\up_dma_y_length_reg[23]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [3]),
        .Q(\up_dma_y_length_reg[23]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [4]),
        .Q(\up_dma_y_length_reg[23]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [5]),
        .Q(\up_dma_y_length_reg[23]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [6]),
        .Q(\up_dma_y_length_reg[23]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [7]),
        .Q(\up_dma_y_length_reg[23]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [8]),
        .Q(\up_dma_y_length_reg[23]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_y_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_y_length_reg[23]_1 ),
        .D(\up_dma_src_address_reg[28]_1 [9]),
        .Q(\up_dma_y_length_reg[23]_0 [9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h2A)) 
    \up_measured_transfer_length[31]_i_1 
       (.I0(up_clear_tl),
        .I1(response_ready_reg_0),
        .I2(up_response_valid),
        .O(\up_measured_transfer_length[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_2 
       (.I0(up_measured_transfer_length[3]),
        .I1(req_measured_burst_length),
        .O(\up_measured_transfer_length[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_3 
       (.I0(\up_measured_transfer_length_reg[31]_0 [2]),
        .I1(req_measured_burst_length),
        .O(\up_measured_transfer_length[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_4 
       (.I0(\up_measured_transfer_length_reg[31]_0 [1]),
        .I1(req_measured_burst_length),
        .O(\up_measured_transfer_length[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_5 
       (.I0(\up_measured_transfer_length_reg[31]_0 [0]),
        .I1(req_measured_burst_length),
        .O(\up_measured_transfer_length[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_2 
       (.I0(up_measured_transfer_length[6]),
        .I1(req_measured_burst_length),
        .O(\up_measured_transfer_length[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_3 
       (.I0(up_measured_transfer_length[5]),
        .I1(req_measured_burst_length),
        .O(\up_measured_transfer_length[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_4 
       (.I0(up_measured_transfer_length[4]),
        .I1(req_measured_burst_length),
        .O(\up_measured_transfer_length[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_7 ),
        .Q(\up_measured_transfer_length_reg[31]_0 [0]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_5 ),
        .Q(up_measured_transfer_length[10]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_4 ),
        .Q(up_measured_transfer_length[11]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[11]_i_1 
       (.CI(\up_measured_transfer_length_reg[7]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[11]_i_1_n_0 ,\up_measured_transfer_length_reg[11]_i_1_n_1 ,\up_measured_transfer_length_reg[11]_i_1_n_2 ,\up_measured_transfer_length_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[11]_i_1_n_4 ,\up_measured_transfer_length_reg[11]_i_1_n_5 ,\up_measured_transfer_length_reg[11]_i_1_n_6 ,\up_measured_transfer_length_reg[11]_i_1_n_7 }),
        .S(up_measured_transfer_length[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_7 ),
        .Q(up_measured_transfer_length[12]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_6 ),
        .Q(up_measured_transfer_length[13]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_5 ),
        .Q(up_measured_transfer_length[14]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_4 ),
        .Q(up_measured_transfer_length[15]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[15]_i_1 
       (.CI(\up_measured_transfer_length_reg[11]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[15]_i_1_n_0 ,\up_measured_transfer_length_reg[15]_i_1_n_1 ,\up_measured_transfer_length_reg[15]_i_1_n_2 ,\up_measured_transfer_length_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[15]_i_1_n_4 ,\up_measured_transfer_length_reg[15]_i_1_n_5 ,\up_measured_transfer_length_reg[15]_i_1_n_6 ,\up_measured_transfer_length_reg[15]_i_1_n_7 }),
        .S(up_measured_transfer_length[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_7 ),
        .Q(up_measured_transfer_length[16]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_6 ),
        .Q(up_measured_transfer_length[17]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_5 ),
        .Q(up_measured_transfer_length[18]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_4 ),
        .Q(up_measured_transfer_length[19]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[19]_i_1 
       (.CI(\up_measured_transfer_length_reg[15]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[19]_i_1_n_0 ,\up_measured_transfer_length_reg[19]_i_1_n_1 ,\up_measured_transfer_length_reg[19]_i_1_n_2 ,\up_measured_transfer_length_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[19]_i_1_n_4 ,\up_measured_transfer_length_reg[19]_i_1_n_5 ,\up_measured_transfer_length_reg[19]_i_1_n_6 ,\up_measured_transfer_length_reg[19]_i_1_n_7 }),
        .S(up_measured_transfer_length[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_6 ),
        .Q(\up_measured_transfer_length_reg[31]_0 [1]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[23]_i_1_n_7 ),
        .Q(up_measured_transfer_length[20]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[23]_i_1_n_6 ),
        .Q(up_measured_transfer_length[21]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[23]_i_1_n_5 ),
        .Q(up_measured_transfer_length[22]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[23]_i_1_n_4 ),
        .Q(up_measured_transfer_length[23]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[23]_i_1 
       (.CI(\up_measured_transfer_length_reg[19]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[23]_i_1_n_0 ,\up_measured_transfer_length_reg[23]_i_1_n_1 ,\up_measured_transfer_length_reg[23]_i_1_n_2 ,\up_measured_transfer_length_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[23]_i_1_n_4 ,\up_measured_transfer_length_reg[23]_i_1_n_5 ,\up_measured_transfer_length_reg[23]_i_1_n_6 ,\up_measured_transfer_length_reg[23]_i_1_n_7 }),
        .S(up_measured_transfer_length[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[24] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[27]_i_1_n_7 ),
        .Q(up_measured_transfer_length[24]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[25] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[27]_i_1_n_6 ),
        .Q(up_measured_transfer_length[25]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[26] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[27]_i_1_n_5 ),
        .Q(up_measured_transfer_length[26]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[27] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[27]_i_1_n_4 ),
        .Q(up_measured_transfer_length[27]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[27]_i_1 
       (.CI(\up_measured_transfer_length_reg[23]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[27]_i_1_n_0 ,\up_measured_transfer_length_reg[27]_i_1_n_1 ,\up_measured_transfer_length_reg[27]_i_1_n_2 ,\up_measured_transfer_length_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[27]_i_1_n_4 ,\up_measured_transfer_length_reg[27]_i_1_n_5 ,\up_measured_transfer_length_reg[27]_i_1_n_6 ,\up_measured_transfer_length_reg[27]_i_1_n_7 }),
        .S(up_measured_transfer_length[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[28] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[31]_i_3_n_7 ),
        .Q(up_measured_transfer_length[28]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[29] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[31]_i_3_n_6 ),
        .Q(\up_measured_transfer_length_reg[31]_0 [3]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_5 ),
        .Q(\up_measured_transfer_length_reg[31]_0 [2]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[30] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[31]_i_3_n_5 ),
        .Q(\up_measured_transfer_length_reg[31]_0 [4]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[31] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[31]_i_3_n_4 ),
        .Q(\up_measured_transfer_length_reg[31]_0 [5]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[31]_i_3 
       (.CI(\up_measured_transfer_length_reg[27]_i_1_n_0 ),
        .CO({\NLW_up_measured_transfer_length_reg[31]_i_3_CO_UNCONNECTED [3],\up_measured_transfer_length_reg[31]_i_3_n_1 ,\up_measured_transfer_length_reg[31]_i_3_n_2 ,\up_measured_transfer_length_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[31]_i_3_n_4 ,\up_measured_transfer_length_reg[31]_i_3_n_5 ,\up_measured_transfer_length_reg[31]_i_3_n_6 ,\up_measured_transfer_length_reg[31]_i_3_n_7 }),
        .S({\up_measured_transfer_length_reg[31]_0 [5:3],up_measured_transfer_length[28]}));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_4 ),
        .Q(up_measured_transfer_length[3]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\up_measured_transfer_length_reg[3]_i_1_n_0 ,\up_measured_transfer_length_reg[3]_i_1_n_1 ,\up_measured_transfer_length_reg[3]_i_1_n_2 ,\up_measured_transfer_length_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({up_measured_transfer_length[3],\up_measured_transfer_length_reg[31]_0 [2:0]}),
        .O({\up_measured_transfer_length_reg[3]_i_1_n_4 ,\up_measured_transfer_length_reg[3]_i_1_n_5 ,\up_measured_transfer_length_reg[3]_i_1_n_6 ,\up_measured_transfer_length_reg[3]_i_1_n_7 }),
        .S({\up_measured_transfer_length[3]_i_2_n_0 ,\up_measured_transfer_length[3]_i_3_n_0 ,\up_measured_transfer_length[3]_i_4_n_0 ,\up_measured_transfer_length[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_7 ),
        .Q(up_measured_transfer_length[4]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_6 ),
        .Q(up_measured_transfer_length[5]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_5 ),
        .Q(up_measured_transfer_length[6]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_4 ),
        .Q(up_measured_transfer_length[7]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  CARRY4 \up_measured_transfer_length_reg[7]_i_1 
       (.CI(\up_measured_transfer_length_reg[3]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[7]_i_1_n_0 ,\up_measured_transfer_length_reg[7]_i_1_n_1 ,\up_measured_transfer_length_reg[7]_i_1_n_2 ,\up_measured_transfer_length_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,up_measured_transfer_length[6:4]}),
        .O({\up_measured_transfer_length_reg[7]_i_1_n_4 ,\up_measured_transfer_length_reg[7]_i_1_n_5 ,\up_measured_transfer_length_reg[7]_i_1_n_6 ,\up_measured_transfer_length_reg[7]_i_1_n_7 }),
        .S({up_measured_transfer_length[7],\up_measured_transfer_length[7]_i_2_n_0 ,\up_measured_transfer_length[7]_i_3_n_0 ,\up_measured_transfer_length[7]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_7 ),
        .Q(up_measured_transfer_length[8]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_measured_transfer_length_reg[0]_0 ),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_6 ),
        .Q(up_measured_transfer_length[9]),
        .R(\up_measured_transfer_length[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    up_partial_length_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_30),
        .Q(up_partial_length_valid_reg_0[3]),
        .R(i_transfer_lenghts_fifo_n_0));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[10]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [7]),
        .I1(up_measured_transfer_length[10]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[10] ),
        .I4(Q[2]),
        .O(\up_dma_x_length_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[11]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [8]),
        .I1(up_measured_transfer_length[11]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[11] ),
        .I4(Q[2]),
        .O(\up_dma_x_length_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[12]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [9]),
        .I1(up_measured_transfer_length[12]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[12] ),
        .I4(Q[2]),
        .O(\up_rdata[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[13]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [10]),
        .I1(up_measured_transfer_length[13]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[13] ),
        .I4(Q[2]),
        .O(\up_rdata[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[14]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [11]),
        .I1(up_measured_transfer_length[14]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[14] ),
        .I4(Q[2]),
        .O(\up_rdata[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[15]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [12]),
        .I1(up_measured_transfer_length[15]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[15] ),
        .I4(Q[2]),
        .O(\up_rdata[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[16]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [13]),
        .I1(up_measured_transfer_length[16]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[16] ),
        .I4(Q[2]),
        .O(\up_dma_x_length_reg[16]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[17]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [14]),
        .I1(up_measured_transfer_length[17]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[17] ),
        .I4(Q[2]),
        .O(\up_dma_x_length_reg[17]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[18]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [15]),
        .I1(up_measured_transfer_length[18]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[18] ),
        .I4(Q[2]),
        .O(\up_dma_x_length_reg[18]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[19]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [16]),
        .I1(up_measured_transfer_length[19]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[19] ),
        .I4(Q[2]),
        .O(\up_dma_x_length_reg[19]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[20]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [17]),
        .I1(up_measured_transfer_length[20]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[20] ),
        .I4(Q[2]),
        .O(\up_rdata[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[21]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [18]),
        .I1(up_measured_transfer_length[21]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[21] ),
        .I4(Q[2]),
        .O(\up_rdata[21]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[22]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [19]),
        .I1(up_measured_transfer_length[22]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[22] ),
        .I4(Q[2]),
        .O(\up_rdata[22]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[23]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [20]),
        .I1(up_measured_transfer_length[23]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[23] ),
        .I4(Q[2]),
        .O(\up_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0033308800003088)) 
    \up_rdata[3]_i_8 
       (.I0(\up_dma_x_length_reg[23]_0 [0]),
        .I1(Q[2]),
        .I2(data8),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(up_measured_transfer_length[3]),
        .O(\up_dma_x_length_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[4]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [1]),
        .I1(up_measured_transfer_length[4]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[4] ),
        .I4(Q[2]),
        .O(\up_rdata[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[5]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [2]),
        .I1(up_measured_transfer_length[5]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[5] ),
        .I4(Q[2]),
        .O(\up_rdata[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[6]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [3]),
        .I1(up_measured_transfer_length[6]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[6] ),
        .I4(Q[2]),
        .O(\up_rdata[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[7]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [4]),
        .I1(up_measured_transfer_length[7]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[7] ),
        .I4(Q[2]),
        .O(\up_rdata[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[8]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [5]),
        .I1(up_measured_transfer_length[8]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[8] ),
        .I4(Q[2]),
        .O(\up_dma_x_length_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[9]_i_6 
       (.I0(\up_dma_x_length_reg[23]_0 [6]),
        .I1(up_measured_transfer_length[9]),
        .I2(Q[1]),
        .I3(\up_dma_dest_stride_reg_n_0_[9] ),
        .I4(Q[2]),
        .O(\up_dma_x_length_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF8F88888888)) 
    \up_transfer_done_bitmap[0]_i_1 
       (.I0(\up_transfer_done_bitmap[0]_i_2_n_0 ),
        .I1(up_eot),
        .I2(up_sot),
        .I3(up_transfer_id[0]),
        .I4(up_transfer_id[1]),
        .I5(up_partial_length_valid_reg_0[0]),
        .O(\up_transfer_done_bitmap[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \up_transfer_done_bitmap[0]_i_2 
       (.I0(up_transfer_id_eot[1]),
        .I1(up_transfer_id_eot[0]),
        .O(\up_transfer_done_bitmap[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8FFFFF88888888)) 
    \up_transfer_done_bitmap[1]_i_1 
       (.I0(\up_transfer_done_bitmap[1]_i_2_n_0 ),
        .I1(up_eot),
        .I2(up_sot),
        .I3(up_transfer_id[1]),
        .I4(up_transfer_id[0]),
        .I5(up_partial_length_valid_reg_0[1]),
        .O(\up_transfer_done_bitmap[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_transfer_done_bitmap[1]_i_2 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_transfer_id_eot[1]),
        .O(\up_transfer_done_bitmap[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8FFFFF88888888)) 
    \up_transfer_done_bitmap[2]_i_1 
       (.I0(\up_transfer_done_bitmap[2]_i_2_n_0 ),
        .I1(up_eot),
        .I2(up_sot),
        .I3(up_transfer_id[0]),
        .I4(up_transfer_id[1]),
        .I5(up_partial_length_valid_reg_0[2]),
        .O(\up_transfer_done_bitmap[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_transfer_done_bitmap[2]_i_2 
       (.I0(up_transfer_id_eot[1]),
        .I1(up_transfer_id_eot[0]),
        .O(\up_transfer_done_bitmap[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFFFF88888888)) 
    \up_transfer_done_bitmap[3]_i_1 
       (.I0(\up_transfer_done_bitmap[3]_i_2_n_0 ),
        .I1(up_eot),
        .I2(up_sot),
        .I3(up_transfer_id[0]),
        .I4(up_transfer_id[1]),
        .I5(data8),
        .O(\up_transfer_done_bitmap[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_transfer_done_bitmap[3]_i_2 
       (.I0(up_transfer_id_eot[1]),
        .I1(up_transfer_id_eot[0]),
        .O(\up_transfer_done_bitmap[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \up_transfer_done_bitmap[3]_i_3 
       (.I0(response_ready_reg_0),
        .I1(up_response_valid),
        .I2(up_dma_cyclic_reg_0),
        .I3(up_req_eot),
        .O(up_eot));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[0]_i_1_n_0 ),
        .Q(up_partial_length_valid_reg_0[0]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[1]_i_1_n_0 ),
        .Q(up_partial_length_valid_reg_0[1]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[2]_i_1_n_0 ),
        .Q(up_partial_length_valid_reg_0[2]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[3]_i_1_n_0 ),
        .Q(data8),
        .R(i_transfer_lenghts_fifo_n_0));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \up_transfer_id[0]_i_1 
       (.I0(up_dma_req_valid_reg_0),
        .I1(up_dma_cyclic_reg_0),
        .I2(dbg_status),
        .I3(req_ready_gated),
        .I4(up_transfer_id[0]),
        .O(\up_transfer_id[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \up_transfer_id[1]_i_1 
       (.I0(up_transfer_id[0]),
        .I1(req_ready_gated),
        .I2(dbg_status),
        .I3(up_dma_cyclic_reg_0),
        .I4(up_dma_req_valid_reg_0),
        .I5(up_transfer_id[1]),
        .O(\up_transfer_id[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \up_transfer_id_eot[0]_i_1 
       (.I0(up_req_eot),
        .I1(up_dma_cyclic_reg_0),
        .I2(up_response_valid),
        .I3(response_ready_reg_0),
        .I4(up_transfer_id_eot[0]),
        .O(\up_transfer_id_eot[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \up_transfer_id_eot[1]_i_1 
       (.I0(up_transfer_id_eot[0]),
        .I1(response_ready_reg_0),
        .I2(up_response_valid),
        .I3(up_dma_cyclic_reg_0),
        .I4(up_req_eot),
        .I5(up_transfer_id_eot[1]),
        .O(\up_transfer_id_eot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \up_transfer_id_eot_d[0]_i_1 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_response_valid),
        .I2(response_ready_reg_0),
        .I3(up_transfer_id_eot_d[0]),
        .O(\up_transfer_id_eot_d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \up_transfer_id_eot_d[1]_i_1 
       (.I0(up_transfer_id_eot[1]),
        .I1(up_response_valid),
        .I2(response_ready_reg_0),
        .I3(up_transfer_id_eot_d[1]),
        .O(\up_transfer_id_eot_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot_d[0]_i_1_n_0 ),
        .Q(up_transfer_id_eot_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot_d[1]_i_1_n_0 ),
        .Q(up_transfer_id_eot_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[0]_i_1_n_0 ),
        .Q(up_transfer_id_eot[0]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[1]_i_1_n_0 ),
        .Q(up_transfer_id_eot[1]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[0]_i_1_n_0 ),
        .Q(up_transfer_id[0]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[1]_i_1_n_0 ),
        .Q(up_transfer_id[1]),
        .R(i_transfer_lenghts_fifo_n_0));
endmodule

(* ORIG_REF_NAME = "axi_dmac_reset_manager" *) 
module zed_axi_dmac_0_0_axi_dmac_reset_manager
   (do_enable_reg_0,
    dest_address1,
    SR,
    Q,
    needs_reset_reg_0,
    do_enable_reg_1,
    \reset_gen[0].reset_sync_reg[0]_0 ,
    \reset_gen[0].reset_sync_reg[0]_1 ,
    \reset_gen[0].reset_sync_reg[0]_2 ,
    \state_reg[2]_0 ,
    m_axis_aclk,
    s_axi_aclk,
    \FSM_onehot_state[5]_i_2_0 ,
    up_dma_req_valid,
    req_ready_gated,
    ctrl_pause,
    m_src_axi_rlast,
    m_src_axi_rvalid,
    ctrl_enable,
    \up_rdata_reg[10] ,
    \up_rdata_reg[10]_0 ,
    m_src_axi_araddr,
    SS);
  output do_enable_reg_0;
  output dest_address1;
  output [0:0]SR;
  output [0:0]Q;
  output needs_reset_reg_0;
  output do_enable_reg_1;
  output \reset_gen[0].reset_sync_reg[0]_0 ;
  output \reset_gen[0].reset_sync_reg[0]_1 ;
  output \reset_gen[0].reset_sync_reg[0]_2 ;
  output [2:0]\state_reg[2]_0 ;
  input m_axis_aclk;
  input s_axi_aclk;
  input [1:0]\FSM_onehot_state[5]_i_2_0 ;
  input up_dma_req_valid;
  input req_ready_gated;
  input ctrl_pause;
  input m_src_axi_rlast;
  input m_src_axi_rvalid;
  input ctrl_enable;
  input \up_rdata_reg[10] ;
  input \up_rdata_reg[10]_0 ;
  input [4:0]m_src_axi_araddr;
  input [0:0]SS;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire [1:0]\FSM_onehot_state[5]_i_2_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_4_n_0 ;
  wire \FSM_onehot_state[5]_i_5_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [11:11]dbg_status;
  wire dest_address1;
  wire do_enable0;
  wire do_enable_reg_0;
  wire do_enable_reg_1;
  wire do_reset;
  wire do_reset_0;
  wire m_axis_aclk;
  wire [4:0]m_src_axi_araddr;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire needs_reset;
  wire needs_reset_i_1_n_0;
  wire needs_reset_reg_0;
  wire req_ready_gated;
  wire \reset_gen[0].reset_async_reg_n_0_[1] ;
  wire \reset_gen[0].reset_async_reg_n_0_[2] ;
  wire \reset_gen[0].reset_async_reg_n_0_[3] ;
  wire \reset_gen[0].reset_sync_in ;
  wire \reset_gen[0].reset_sync_reg[0]_0 ;
  wire \reset_gen[0].reset_sync_reg[0]_1 ;
  wire \reset_gen[0].reset_sync_reg[0]_2 ;
  wire \reset_gen[0].reset_sync_reg_n_0_[1] ;
  wire reset_sync_chain_0;
  wire s_axi_aclk;
  wire state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire [2:0]\state_reg[2]_0 ;
  wire up_dma_req_valid;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[10]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dbg_status),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(needs_reset),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dbg_status),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(ctrl_pause),
        .I2(dbg_status),
        .I3(do_reset_0),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .O(state));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA2)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ctrl_pause),
        .I2(dbg_status),
        .I3(\FSM_onehot_state[5]_i_3_n_0 ),
        .I4(\FSM_onehot_state[5]_i_4_n_0 ),
        .I5(\FSM_onehot_state[5]_i_5_n_0 ),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state[5]_i_2_0 [0]),
        .I2(\FSM_onehot_state[5]_i_2_0 [1]),
        .I3(do_enable_reg_0),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state[5]_i_2_0 [0]),
        .I2(\FSM_onehot_state[5]_i_2_0 [1]),
        .I3(do_enable_reg_0),
        .O(\FSM_onehot_state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[5]_i_5 
       (.I0(needs_reset),
        .I1(Q),
        .I2(ctrl_enable),
        .O(\FSM_onehot_state[5]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(do_reset_0),
        .S(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(do_reset_0),
        .Q(needs_reset),
        .R(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SS));
  LUT2 #(
    .INIT(4'hE)) 
    do_enable_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(do_enable0));
  FDRE #(
    .INIT(1'b0)) 
    do_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_enable0),
        .Q(do_enable_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    do_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_reset_0),
        .Q(do_reset),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0D)) 
    needs_reset_i_1
       (.I0(ctrl_enable),
        .I1(dbg_status),
        .I2(needs_reset),
        .O(needs_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    needs_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(needs_reset_i_1_n_0),
        .Q(dbg_status),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[1] ),
        .PRE(do_reset),
        .Q(reset_sync_chain_0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[2] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[2] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[3] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[2] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[3] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_in_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(reset_sync_chain_0),
        .PRE(reset_sync_chain_0),
        .Q(\reset_gen[0].reset_sync_in ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_in ),
        .Q(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \src_beat_counter[3]_i_1 
       (.I0(Q),
        .I1(m_src_axi_rlast),
        .I2(m_src_axi_rvalid),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \state[0]_i_1__0 
       (.I0(\state_reg[2]_0 [0]),
        .I1(dbg_status),
        .I2(\state_reg[2]_0 [1]),
        .O(\state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \state[1]_i_1 
       (.I0(\state_reg[2]_0 [0]),
        .I1(\state_reg[2]_0 [1]),
        .I2(dbg_status),
        .O(\state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1 
       (.I0(\state_reg[2]_0 [1]),
        .I1(\state_reg[2]_0 [0]),
        .I2(\state_reg[2]_0 [2]),
        .O(\state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg[2]_0 [0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[2]_0 [1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg[2]_0 [2]),
        .R(SS));
  LUT4 #(
    .INIT(16'h3404)) 
    \up_rdata[10]_i_3 
       (.I0(Q),
        .I1(\up_rdata_reg[10] ),
        .I2(\up_rdata_reg[10]_0 ),
        .I3(m_src_axi_araddr[3]),
        .O(\reset_gen[0].reset_sync_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \up_rdata[11]_i_3 
       (.I0(dbg_status),
        .I1(\up_rdata_reg[10] ),
        .I2(\up_rdata_reg[10]_0 ),
        .I3(m_src_axi_araddr[4]),
        .O(needs_reset_reg_0));
  LUT4 #(
    .INIT(16'h3808)) 
    \up_rdata[6]_i_3 
       (.I0(do_enable_reg_0),
        .I1(\up_rdata_reg[10] ),
        .I2(\up_rdata_reg[10]_0 ),
        .I3(m_src_axi_araddr[0]),
        .O(do_enable_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h3404)) 
    \up_rdata[8]_i_3 
       (.I0(Q),
        .I1(\up_rdata_reg[10] ),
        .I2(\up_rdata_reg[10]_0 ),
        .I3(m_src_axi_araddr[1]),
        .O(\reset_gen[0].reset_sync_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h3404)) 
    \up_rdata[9]_i_3 
       (.I0(Q),
        .I1(\up_rdata_reg[10] ),
        .I2(\up_rdata_reg[10]_0 ),
        .I3(m_src_axi_araddr[2]),
        .O(\reset_gen[0].reset_sync_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    \x_length[23]_i_1 
       (.I0(up_dma_req_valid),
        .I1(do_enable_reg_0),
        .I2(req_ready_gated),
        .O(dest_address1));
endmodule

(* ORIG_REF_NAME = "axi_dmac_response_manager" *) 
module zed_axi_dmac_0_0_axi_dmac_response_manager
   (response_valid_reg_0,
    \reset_gen[0].reset_sync_reg[0] ,
    eot_id0,
    id0,
    response_valid_reg_1,
    \measured_burst_length_reg[0]_0 ,
    Q,
    s_axi_aclk,
    m_axis_aclk,
    response_eot,
    req_eot0__2,
    dma_response_ready,
    dest_response_valid,
    up_response_ready,
    req_measured_burst_length);
  output response_valid_reg_0;
  output \reset_gen[0].reset_sync_reg[0] ;
  output eot_id0;
  output id0;
  output response_valid_reg_1;
  output \measured_burst_length_reg[0]_0 ;
  input [0:0]Q;
  input s_axi_aclk;
  input m_axis_aclk;
  input response_eot;
  input req_eot0__2;
  input dma_response_ready;
  input dest_response_valid;
  input up_response_ready;
  input [0:0]req_measured_burst_length;

  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire [0:0]Q;
  wire dest_response_valid;
  wire dma_response_ready;
  wire eot_id0;
  wire i_dest_response_fifo_n_4;
  wire i_dest_response_fifo_n_5;
  wire i_dest_response_fifo_n_6;
  wire id0;
  wire m_axis_aclk;
  wire [0:0]measured_burst_length;
  wire \measured_burst_length[0]_i_1_n_0 ;
  wire \measured_burst_length_reg[0]_0 ;
  wire [2:0]nx_state__0;
  wire req_eot;
  wire req_eot0__2;
  wire [0:0]req_measured_burst_length;
  wire \reset_gen[0].reset_sync_reg[0] ;
  wire response_dest_ready;
  wire response_eot;
  wire response_valid_reg_0;
  wire response_valid_reg_1;
  wire s_axi_aclk;
  wire [2:0]state;
  wire [2:2]state_reg;
  wire [1:0]to_complete_count;
  wire \to_complete_count[0]_i_1_n_0 ;
  wire \to_complete_count[1]_i_1_n_0 ;
  wire [1:0]transfer_id;
  wire transfer_id0;
  wire \transfer_id[0]_i_1_n_0 ;
  wire \transfer_id[1]_i_1_n_0 ;
  wire up_response_ready;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(to_complete_count[0]),
        .I1(to_complete_count[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0[0]),
        .Q(state[0]),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0[1]),
        .Q(state[1]),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0[2]),
        .Q(state[2]),
        .R(Q));
  LUT6 #(
    .INIT(64'h8888888088888888)) 
    \eot_id[1]_i_2 
       (.I0(response_valid_reg_0),
        .I1(dma_response_ready),
        .I2(req_eot),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(eot_id0));
  zed_axi_dmac_0_0_util_axis_fifo__parameterized2 i_dest_response_fifo
       (.D(nx_state__0),
        .\FSM_sequential_state_reg[0] (state),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state[2]_i_2_n_0 ),
        .\FSM_sequential_state_reg[2] (i_dest_response_fifo_n_4),
        .Q(Q),
        .\cdc_sync_fifo_ram_reg[0]_0 (i_dest_response_fifo_n_6),
        .dest_response_valid(dest_response_valid),
        .dma_response_ready(dma_response_ready),
        .id0(id0),
        .m_axis_aclk(m_axis_aclk),
        .out_response_ready_reg(i_dest_response_fifo_n_5),
        .req_eot(req_eot),
        .response_dest_ready(response_dest_ready),
        .response_eot(response_eot),
        .response_valid_reg(response_valid_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .state_reg(state_reg),
        .transfer_id(transfer_id));
  LUT4 #(
    .INIT(16'hAACA)) 
    \measured_burst_length[0]_i_1 
       (.I0(measured_burst_length),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\measured_burst_length[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\measured_burst_length[0]_i_1_n_0 ),
        .Q(measured_burst_length),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h74)) 
    out_response_ready_i_1
       (.I0(response_valid_reg_0),
        .I1(dma_response_ready),
        .I2(up_response_ready),
        .O(response_valid_reg_1));
  LUT3 #(
    .INIT(8'h20)) 
    req_eot_i_1
       (.I0(eot_id0),
        .I1(Q),
        .I2(req_eot0__2),
        .O(\reset_gen[0].reset_sync_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    req_eot_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_6),
        .Q(req_eot),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \req_measured_burst_length[0]_i_1 
       (.I0(measured_burst_length),
        .I1(dma_response_ready),
        .I2(response_valid_reg_0),
        .I3(req_measured_burst_length),
        .O(\measured_burst_length_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h02)) 
    response_dest_ready_i_8
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(state_reg));
  FDSE #(
    .INIT(1'b1)) 
    response_dest_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_4),
        .Q(response_dest_ready),
        .S(Q));
  FDRE #(
    .INIT(1'b0)) 
    response_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_5),
        .Q(response_valid_reg_0),
        .R(Q));
  LUT5 #(
    .INIT(32'hFFF70008)) 
    \to_complete_count[0]_i_1 
       (.I0(dma_response_ready),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(to_complete_count[0]),
        .O(\to_complete_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    \to_complete_count[1]_i_1 
       (.I0(to_complete_count[0]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(dma_response_ready),
        .I5(to_complete_count[1]),
        .O(\to_complete_count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \to_complete_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\to_complete_count[0]_i_1_n_0 ),
        .Q(to_complete_count[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \to_complete_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\to_complete_count[1]_i_1_n_0 ),
        .Q(to_complete_count[1]),
        .R(Q));
  LUT6 #(
    .INIT(64'hEBFBEFFF14041000)) 
    \transfer_id[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(dma_response_ready),
        .I4(req_eot),
        .I5(transfer_id[0]),
        .O(\transfer_id[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \transfer_id[1]_i_1 
       (.I0(transfer_id[0]),
        .I1(transfer_id0),
        .I2(transfer_id[1]),
        .O(\transfer_id[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00000AC0)) 
    \transfer_id[1]_i_2 
       (.I0(req_eot),
        .I1(dma_response_ready),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .O(transfer_id0));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\transfer_id[0]_i_1_n_0 ),
        .Q(transfer_id[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\transfer_id[1]_i_1_n_0 ),
        .Q(transfer_id[1]),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "axi_dmac_transfer" *) 
module zed_axi_dmac_0_0_axi_dmac_transfer
   (m_axis_data,
    \src_id_reg[2] ,
    do_enable_reg,
    up_req_eot,
    addr_valid_reg,
    dbg_ids1,
    m_src_axi_araddr,
    up_response_valid,
    req_measured_burst_length,
    req_ready_gated,
    active_reg,
    E,
    m_axis_valid,
    up_sot,
    needs_reset_reg,
    do_enable_reg_0,
    enabled_reg,
    enabled_reg_0,
    \reset_gen[0].reset_sync_reg[0] ,
    \reset_gen[0].reset_sync_reg[0]_0 ,
    \reset_gen[0].reset_sync_reg[0]_1 ,
    \src_id_reg[3] ,
    \id_reg[0] ,
    \id_reg[1] ,
    \id_reg[2] ,
    \id_reg[3] ,
    \response_id_reg[0] ,
    \response_id_reg[1] ,
    \response_id_reg[2] ,
    \response_id_reg[3] ,
    m_axis_last,
    m_src_axi_arlen,
    m_axis_aclk,
    m_src_axi_aclk,
    m_src_axi_rdata,
    m_src_axi_rvalid,
    s_axi_aclk,
    up_dma_last,
    m_axis_ready,
    up_response_ready,
    \y_length_reg[23] ,
    up_dma_req_valid,
    Q,
    ctrl_pause,
    m_src_axi_arready,
    m_src_axi_rlast,
    up_dma_cyclic,
    ctrl_enable,
    \up_rdata_reg[10] ,
    \up_rdata_reg[10]_0 ,
    SS,
    D,
    \src_stride_reg[23] );
  output [63:0]m_axis_data;
  output [2:0]\src_id_reg[2] ;
  output [3:0]do_enable_reg;
  output up_req_eot;
  output addr_valid_reg;
  output [11:0]dbg_ids1;
  output [25:0]m_src_axi_araddr;
  output up_response_valid;
  output [0:0]req_measured_burst_length;
  output req_ready_gated;
  output active_reg;
  output [0:0]E;
  output m_axis_valid;
  output up_sot;
  output needs_reset_reg;
  output do_enable_reg_0;
  output enabled_reg;
  output enabled_reg_0;
  output \reset_gen[0].reset_sync_reg[0] ;
  output \reset_gen[0].reset_sync_reg[0]_0 ;
  output \reset_gen[0].reset_sync_reg[0]_1 ;
  output \src_id_reg[3] ;
  output \id_reg[0] ;
  output \id_reg[1] ;
  output \id_reg[2] ;
  output \id_reg[3] ;
  output \response_id_reg[0] ;
  output \response_id_reg[1] ;
  output \response_id_reg[2] ;
  output \response_id_reg[3] ;
  output m_axis_last;
  output [3:0]m_src_axi_arlen;
  input m_axis_aclk;
  input m_src_axi_aclk;
  input [63:0]m_src_axi_rdata;
  input m_src_axi_rvalid;
  input s_axi_aclk;
  input up_dma_last;
  input m_axis_ready;
  input up_response_ready;
  input [23:0]\y_length_reg[23] ;
  input up_dma_req_valid;
  input [25:0]Q;
  input ctrl_pause;
  input m_src_axi_arready;
  input m_src_axi_rlast;
  input up_dma_cyclic;
  input ctrl_enable;
  input \up_rdata_reg[10] ;
  input \up_rdata_reg[10]_0 ;
  input [0:0]SS;
  input [20:0]D;
  input [20:0]\src_stride_reg[23] ;

  wire [20:0]D;
  wire [0:0]E;
  wire [25:0]Q;
  wire [0:0]SS;
  wire active_reg;
  wire addr_valid_reg;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [11:0]dbg_ids1;
  wire [5:4]dbg_status;
  wire dest_address1;
  wire dma_req_last;
  wire dma_req_valid;
  wire dma_response_ready;
  wire dma_response_valid;
  wire [3:0]do_enable_reg;
  wire do_enable_reg_0;
  wire enabled_reg;
  wire enabled_reg_0;
  wire eot_id0;
  wire i_2d_transfer_n_27;
  wire i_2d_transfer_n_28;
  wire i_2d_transfer_n_29;
  wire i_2d_transfer_n_30;
  wire i_request_arb_n_102;
  wire i_request_arb_n_103;
  wire i_request_arb_n_107;
  wire i_request_arb_n_131;
  wire i_request_arb_n_132;
  wire i_request_arb_n_133;
  wire i_reset_manager_n_3;
  wire \i_store_and_forward/src_beat_counter0 ;
  wire \id_reg[0] ;
  wire \id_reg[1] ;
  wire \id_reg[2] ;
  wire \id_reg[3] ;
  wire m_axis_aclk;
  wire [63:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_src_axi_aclk;
  wire [25:0]m_src_axi_araddr;
  wire [3:0]m_src_axi_arlen;
  wire m_src_axi_arready;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire needs_reset_reg;
  wire out_last;
  wire [16:0]req_burst_count;
  wire req_eot0__2;
  wire req_gen_ready;
  wire req_id0;
  wire [0:0]req_measured_burst_length;
  wire req_ready0__0;
  wire req_ready_gated;
  wire \reset_gen[0].reset_sync_reg[0] ;
  wire \reset_gen[0].reset_sync_reg[0]_0 ;
  wire \reset_gen[0].reset_sync_reg[0]_1 ;
  wire \response_id_reg[0] ;
  wire \response_id_reg[1] ;
  wire \response_id_reg[2] ;
  wire \response_id_reg[3] ;
  wire s_axi_aclk;
  wire src_address;
  wire [28:3]src_address_reg;
  wire [2:0]\src_id_reg[2] ;
  wire \src_id_reg[3] ;
  wire [20:0]\src_stride_reg[23] ;
  wire up_dma_cyclic;
  wire up_dma_last;
  wire up_dma_req_valid;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[10]_0 ;
  wire up_req_eot;
  wire up_response_ready;
  wire up_response_valid;
  wire up_sot;
  wire [23:0]\y_length_reg[23] ;

  zed_axi_dmac_0_0_dmac_2d_transfer i_2d_transfer
       (.D({src_address_reg,i_2d_transfer_n_27,i_2d_transfer_n_28,i_2d_transfer_n_29,i_2d_transfer_n_30,dma_req_last}),
        .E(src_address),
        .Q(i_reset_manager_n_3),
        .dest_address1(dest_address1),
        .dma_req_valid(dma_req_valid),
        .dma_response_ready(dma_response_ready),
        .dma_response_valid(dma_response_valid),
        .eot_id0(eot_id0),
        .out_last(out_last),
        .out_req_valid_reg_0(i_request_arb_n_132),
        .out_response_ready_reg_0(i_request_arb_n_131),
        .req_eot0__2(req_eot0__2),
        .req_eot_reg_0(i_request_arb_n_107),
        .req_gen_ready(req_gen_ready),
        .req_id0(req_id0),
        .\req_id_reg[1]_0 (i_request_arb_n_102),
        .\req_id_reg[1]_1 (i_request_arb_n_103),
        .req_measured_burst_length(req_measured_burst_length),
        .\req_measured_burst_length_reg[0]_0 (i_request_arb_n_133),
        .req_ready0__0(req_ready0__0),
        .req_ready_reg_0(req_ready_gated),
        .req_ready_reg_1(do_enable_reg[3]),
        .req_response_valid_reg_0(E),
        .s_axi_aclk(s_axi_aclk),
        .\src_address_reg[28]_0 (Q),
        .\src_stride_reg[23]_0 (\src_stride_reg[23] ),
        .up_dma_cyclic(up_dma_cyclic),
        .up_dma_last(up_dma_last),
        .up_dma_req_valid(up_dma_req_valid),
        .up_req_eot(up_req_eot),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .up_sot(up_sot),
        .\x_length_reg[23]_0 (req_burst_count),
        .\x_length_reg[23]_1 (D),
        .\y_length_reg[23]_0 (\y_length_reg[23] ));
  zed_axi_dmac_0_0_dmac_request_arb i_request_arb
       (.ADDRBWRADDR(\src_id_reg[2] [1:0]),
        .D({src_address_reg,i_2d_transfer_n_27,i_2d_transfer_n_28,i_2d_transfer_n_29,i_2d_transfer_n_30,dma_req_last}),
        .E(src_address),
        .Q(i_reset_manager_n_3),
        .SR(\i_store_and_forward/src_beat_counter0 ),
        .active_reg(active_reg),
        .addr_valid_reg(addr_valid_reg),
        .\burst_count_reg[16] (req_burst_count),
        .dbg_status(dbg_status),
        .dest_address1(dest_address1),
        .dma_req_valid(dma_req_valid),
        .dma_response_ready(dma_response_ready),
        .dma_response_valid(dma_response_valid),
        .enabled_reg(enabled_reg),
        .enabled_reg_0(enabled_reg_0),
        .enabled_reg_1(do_enable_reg[3]),
        .eot_id0(eot_id0),
        .id(dbg_ids1[7:4]),
        .\id_reg[0] (\id_reg[0] ),
        .\id_reg[1] (\id_reg[1] ),
        .\id_reg[2] (\id_reg[2] ),
        .\id_reg[3] (dbg_ids1[11:8]),
        .\id_reg[3]_0 (dbg_ids1[3:0]),
        .\id_reg[3]_1 (\id_reg[3] ),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_last(m_axis_last),
        .m_axis_raddr_reg(i_request_arb_n_103),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(m_src_axi_araddr),
        .m_src_axi_arlen(m_src_axi_arlen),
        .m_src_axi_arready(m_src_axi_arready),
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .\measured_burst_length_reg[0] (i_request_arb_n_133),
        .out_last(out_last),
        .req_eot0__2(req_eot0__2),
        .req_gen_ready(req_gen_ready),
        .req_id0(req_id0),
        .req_measured_burst_length(req_measured_burst_length),
        .req_ready0__0(req_ready0__0),
        .\reset_gen[0].reset_sync_reg[0] (i_request_arb_n_107),
        .\response_id_reg[0] (\response_id_reg[0] ),
        .\response_id_reg[1] (\response_id_reg[1] ),
        .\response_id_reg[2] (\response_id_reg[2] ),
        .\response_id_reg[3] (\response_id_reg[3] ),
        .response_valid_reg(i_request_arb_n_131),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr_reg(i_request_arb_n_102),
        .s_axis_waddr_reg_0(i_request_arb_n_132),
        .\src_id_reg[2] (\src_id_reg[2] [2]),
        .\src_id_reg[3] (\src_id_reg[3] ),
        .\up_rdata_reg[3] (\up_rdata_reg[10] ),
        .\up_rdata_reg[3]_0 (\up_rdata_reg[10]_0 ),
        .up_response_ready(up_response_ready));
  zed_axi_dmac_0_0_axi_dmac_reset_manager i_reset_manager
       (.\FSM_onehot_state[5]_i_2_0 (dbg_status),
        .Q(i_reset_manager_n_3),
        .SR(\i_store_and_forward/src_beat_counter0 ),
        .SS(SS),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dest_address1(dest_address1),
        .do_enable_reg_0(do_enable_reg[3]),
        .do_enable_reg_1(do_enable_reg_0),
        .m_axis_aclk(m_axis_aclk),
        .m_src_axi_araddr({m_src_axi_araddr[8:5],m_src_axi_araddr[3]}),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .needs_reset_reg_0(needs_reset_reg),
        .req_ready_gated(req_ready_gated),
        .\reset_gen[0].reset_sync_reg[0]_0 (\reset_gen[0].reset_sync_reg[0] ),
        .\reset_gen[0].reset_sync_reg[0]_1 (\reset_gen[0].reset_sync_reg[0]_0 ),
        .\reset_gen[0].reset_sync_reg[0]_2 (\reset_gen[0].reset_sync_reg[0]_1 ),
        .s_axi_aclk(s_axi_aclk),
        .\state_reg[2]_0 (do_enable_reg[2:0]),
        .up_dma_req_valid(up_dma_req_valid),
        .\up_rdata_reg[10] (\up_rdata_reg[10] ),
        .\up_rdata_reg[10]_0 (\up_rdata_reg[10]_0 ));
endmodule

(* ORIG_REF_NAME = "dmac_2d_transfer" *) 
module zed_axi_dmac_0_0_dmac_2d_transfer
   (up_req_eot,
    D,
    up_response_valid,
    req_measured_burst_length,
    dma_req_valid,
    req_ready_reg_0,
    dma_response_ready,
    req_response_valid_reg_0,
    out_last,
    up_sot,
    req_eot0__2,
    \x_length_reg[23]_0 ,
    req_eot_reg_0,
    s_axi_aclk,
    dest_address1,
    up_dma_last,
    E,
    \req_measured_burst_length_reg[0]_0 ,
    Q,
    out_req_valid_reg_0,
    out_response_ready_reg_0,
    up_response_ready,
    \y_length_reg[23]_0 ,
    up_dma_req_valid,
    req_ready_reg_1,
    \src_address_reg[28]_0 ,
    up_dma_cyclic,
    req_ready0__0,
    dma_response_valid,
    \x_length_reg[23]_1 ,
    \src_stride_reg[23]_0 ,
    \req_id_reg[1]_0 ,
    \req_id_reg[1]_1 ,
    req_gen_ready,
    eot_id0,
    req_id0);
  output up_req_eot;
  output [30:0]D;
  output up_response_valid;
  output [0:0]req_measured_burst_length;
  output dma_req_valid;
  output req_ready_reg_0;
  output dma_response_ready;
  output [0:0]req_response_valid_reg_0;
  output out_last;
  output up_sot;
  output req_eot0__2;
  output [16:0]\x_length_reg[23]_0 ;
  input req_eot_reg_0;
  input s_axi_aclk;
  input dest_address1;
  input up_dma_last;
  input [0:0]E;
  input \req_measured_burst_length_reg[0]_0 ;
  input [0:0]Q;
  input out_req_valid_reg_0;
  input out_response_ready_reg_0;
  input up_response_ready;
  input [23:0]\y_length_reg[23]_0 ;
  input up_dma_req_valid;
  input req_ready_reg_1;
  input [25:0]\src_address_reg[28]_0 ;
  input up_dma_cyclic;
  input req_ready0__0;
  input dma_response_valid;
  input [20:0]\x_length_reg[23]_1 ;
  input [20:0]\src_stride_reg[23]_0 ;
  input \req_id_reg[1]_0 ;
  input \req_id_reg[1]_1 ;
  input req_gen_ready;
  input eot_id0;
  input req_id0;

  wire [30:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \cdc_sync_fifo_ram[0]_i_3_n_0 ;
  wire \cdc_sync_fifo_ram[0]_i_4_n_0 ;
  wire \cdc_sync_fifo_ram[0]_i_5_n_0 ;
  wire \cdc_sync_fifo_ram[0]_i_6_n_0 ;
  wire dest_address1;
  wire dma_req_valid;
  wire dma_response_ready;
  wire dma_response_valid;
  wire [1:0]eot_id;
  wire eot_id0;
  wire \eot_id[0]_i_1_n_0 ;
  wire \eot_id[1]_i_1_n_0 ;
  wire gen_last;
  wire \last_req[0]_i_1_n_0 ;
  wire \last_req[1]_i_1_n_0 ;
  wire \last_req[2]_i_1_n_0 ;
  wire \last_req[3]_i_1_n_0 ;
  wire \last_req_reg_n_0_[0] ;
  wire \last_req_reg_n_0_[1] ;
  wire \last_req_reg_n_0_[2] ;
  wire \last_req_reg_n_0_[3] ;
  wire out_last;
  wire out_req_valid_reg_0;
  wire out_response_ready_reg_0;
  wire req_eot0__2;
  wire req_eot_reg_0;
  wire req_gen_ready;
  wire [1:0]req_id;
  wire req_id0;
  wire \req_id[0]_i_1_n_0 ;
  wire \req_id[1]_i_1_n_0 ;
  wire \req_id_reg[1]_0 ;
  wire \req_id_reg[1]_1 ;
  wire [0:0]req_measured_burst_length;
  wire \req_measured_burst_length_reg[0]_0 ;
  wire req_ready0__0;
  wire req_ready_i_1_n_0;
  wire req_ready_reg_0;
  wire req_ready_reg_1;
  wire req_response_valid_i_1_n_0;
  wire [0:0]req_response_valid_reg_0;
  wire s_axi_aclk;
  wire \src_address[11]_i_2_n_0 ;
  wire \src_address[11]_i_3_n_0 ;
  wire \src_address[11]_i_4_n_0 ;
  wire \src_address[11]_i_5_n_0 ;
  wire \src_address[11]_i_6_n_0 ;
  wire \src_address[11]_i_7_n_0 ;
  wire \src_address[11]_i_8_n_0 ;
  wire \src_address[11]_i_9_n_0 ;
  wire \src_address[15]_i_2_n_0 ;
  wire \src_address[15]_i_3_n_0 ;
  wire \src_address[15]_i_4_n_0 ;
  wire \src_address[15]_i_5_n_0 ;
  wire \src_address[15]_i_6_n_0 ;
  wire \src_address[15]_i_7_n_0 ;
  wire \src_address[15]_i_8_n_0 ;
  wire \src_address[15]_i_9_n_0 ;
  wire \src_address[19]_i_2_n_0 ;
  wire \src_address[19]_i_3_n_0 ;
  wire \src_address[19]_i_4_n_0 ;
  wire \src_address[19]_i_5_n_0 ;
  wire \src_address[19]_i_6_n_0 ;
  wire \src_address[19]_i_7_n_0 ;
  wire \src_address[19]_i_8_n_0 ;
  wire \src_address[19]_i_9_n_0 ;
  wire \src_address[23]_i_2_n_0 ;
  wire \src_address[23]_i_3_n_0 ;
  wire \src_address[23]_i_4_n_0 ;
  wire \src_address[23]_i_5_n_0 ;
  wire \src_address[23]_i_6_n_0 ;
  wire \src_address[27]_i_2_n_0 ;
  wire \src_address[27]_i_3_n_0 ;
  wire \src_address[3]_i_2_n_0 ;
  wire \src_address[3]_i_3_n_0 ;
  wire \src_address[3]_i_4_n_0 ;
  wire \src_address[3]_i_5_n_0 ;
  wire \src_address[3]_i_6_n_0 ;
  wire \src_address[3]_i_7_n_0 ;
  wire \src_address[3]_i_8_n_0 ;
  wire \src_address[3]_i_9_n_0 ;
  wire \src_address[7]_i_2_n_0 ;
  wire \src_address[7]_i_3_n_0 ;
  wire \src_address[7]_i_4_n_0 ;
  wire \src_address[7]_i_5_n_0 ;
  wire \src_address[7]_i_6_n_0 ;
  wire \src_address[7]_i_7_n_0 ;
  wire \src_address[7]_i_8_n_0 ;
  wire \src_address[7]_i_9_n_0 ;
  wire \src_address_reg[11]_i_1_n_0 ;
  wire \src_address_reg[11]_i_1_n_1 ;
  wire \src_address_reg[11]_i_1_n_2 ;
  wire \src_address_reg[11]_i_1_n_3 ;
  wire \src_address_reg[11]_i_1_n_4 ;
  wire \src_address_reg[11]_i_1_n_5 ;
  wire \src_address_reg[11]_i_1_n_6 ;
  wire \src_address_reg[11]_i_1_n_7 ;
  wire \src_address_reg[15]_i_1_n_0 ;
  wire \src_address_reg[15]_i_1_n_1 ;
  wire \src_address_reg[15]_i_1_n_2 ;
  wire \src_address_reg[15]_i_1_n_3 ;
  wire \src_address_reg[15]_i_1_n_4 ;
  wire \src_address_reg[15]_i_1_n_5 ;
  wire \src_address_reg[15]_i_1_n_6 ;
  wire \src_address_reg[15]_i_1_n_7 ;
  wire \src_address_reg[19]_i_1_n_0 ;
  wire \src_address_reg[19]_i_1_n_1 ;
  wire \src_address_reg[19]_i_1_n_2 ;
  wire \src_address_reg[19]_i_1_n_3 ;
  wire \src_address_reg[19]_i_1_n_4 ;
  wire \src_address_reg[19]_i_1_n_5 ;
  wire \src_address_reg[19]_i_1_n_6 ;
  wire \src_address_reg[19]_i_1_n_7 ;
  wire \src_address_reg[23]_i_1_n_0 ;
  wire \src_address_reg[23]_i_1_n_1 ;
  wire \src_address_reg[23]_i_1_n_2 ;
  wire \src_address_reg[23]_i_1_n_3 ;
  wire \src_address_reg[23]_i_1_n_4 ;
  wire \src_address_reg[23]_i_1_n_5 ;
  wire \src_address_reg[23]_i_1_n_6 ;
  wire \src_address_reg[23]_i_1_n_7 ;
  wire \src_address_reg[27]_i_1_n_3 ;
  wire \src_address_reg[27]_i_1_n_6 ;
  wire \src_address_reg[27]_i_1_n_7 ;
  wire [25:0]\src_address_reg[28]_0 ;
  wire \src_address_reg[3]_i_1_n_0 ;
  wire \src_address_reg[3]_i_1_n_1 ;
  wire \src_address_reg[3]_i_1_n_2 ;
  wire \src_address_reg[3]_i_1_n_3 ;
  wire \src_address_reg[3]_i_1_n_4 ;
  wire \src_address_reg[3]_i_1_n_5 ;
  wire \src_address_reg[3]_i_1_n_6 ;
  wire \src_address_reg[3]_i_1_n_7 ;
  wire \src_address_reg[7]_i_1_n_0 ;
  wire \src_address_reg[7]_i_1_n_1 ;
  wire \src_address_reg[7]_i_1_n_2 ;
  wire \src_address_reg[7]_i_1_n_3 ;
  wire \src_address_reg[7]_i_1_n_4 ;
  wire \src_address_reg[7]_i_1_n_5 ;
  wire \src_address_reg[7]_i_1_n_6 ;
  wire \src_address_reg[7]_i_1_n_7 ;
  wire [23:3]src_stride;
  wire [20:0]\src_stride_reg[23]_0 ;
  wire up_dma_cyclic;
  wire up_dma_last;
  wire up_dma_req_valid;
  wire up_req_eot;
  wire up_response_ready;
  wire up_response_valid;
  wire up_sot;
  wire [16:0]\x_length_reg[23]_0 ;
  wire [20:0]\x_length_reg[23]_1 ;
  wire [23:0]y_length;
  wire [23:1]y_length0;
  wire y_length0_carry__0_i_1_n_0;
  wire y_length0_carry__0_i_2_n_0;
  wire y_length0_carry__0_i_3_n_0;
  wire y_length0_carry__0_i_4_n_0;
  wire y_length0_carry__0_n_0;
  wire y_length0_carry__0_n_1;
  wire y_length0_carry__0_n_2;
  wire y_length0_carry__0_n_3;
  wire y_length0_carry__1_i_1_n_0;
  wire y_length0_carry__1_i_2_n_0;
  wire y_length0_carry__1_i_3_n_0;
  wire y_length0_carry__1_i_4_n_0;
  wire y_length0_carry__1_n_0;
  wire y_length0_carry__1_n_1;
  wire y_length0_carry__1_n_2;
  wire y_length0_carry__1_n_3;
  wire y_length0_carry__2_i_1_n_0;
  wire y_length0_carry__2_i_2_n_0;
  wire y_length0_carry__2_i_3_n_0;
  wire y_length0_carry__2_i_4_n_0;
  wire y_length0_carry__2_n_0;
  wire y_length0_carry__2_n_1;
  wire y_length0_carry__2_n_2;
  wire y_length0_carry__2_n_3;
  wire y_length0_carry__3_i_1_n_0;
  wire y_length0_carry__3_i_2_n_0;
  wire y_length0_carry__3_i_3_n_0;
  wire y_length0_carry__3_i_4_n_0;
  wire y_length0_carry__3_n_0;
  wire y_length0_carry__3_n_1;
  wire y_length0_carry__3_n_2;
  wire y_length0_carry__3_n_3;
  wire y_length0_carry__4_i_1_n_0;
  wire y_length0_carry__4_i_2_n_0;
  wire y_length0_carry__4_i_3_n_0;
  wire y_length0_carry__4_n_2;
  wire y_length0_carry__4_n_3;
  wire y_length0_carry_i_1_n_0;
  wire y_length0_carry_i_2_n_0;
  wire y_length0_carry_i_3_n_0;
  wire y_length0_carry_i_4_n_0;
  wire y_length0_carry_n_0;
  wire y_length0_carry_n_1;
  wire y_length0_carry_n_2;
  wire y_length0_carry_n_3;
  wire \y_length[0]_i_1_n_0 ;
  wire \y_length[10]_i_1_n_0 ;
  wire \y_length[11]_i_1_n_0 ;
  wire \y_length[12]_i_1_n_0 ;
  wire \y_length[13]_i_1_n_0 ;
  wire \y_length[14]_i_1_n_0 ;
  wire \y_length[15]_i_1_n_0 ;
  wire \y_length[16]_i_1_n_0 ;
  wire \y_length[17]_i_1_n_0 ;
  wire \y_length[18]_i_1_n_0 ;
  wire \y_length[19]_i_1_n_0 ;
  wire \y_length[1]_i_1_n_0 ;
  wire \y_length[20]_i_1_n_0 ;
  wire \y_length[21]_i_1_n_0 ;
  wire \y_length[22]_i_1_n_0 ;
  wire \y_length[23]_i_2_n_0 ;
  wire \y_length[2]_i_1_n_0 ;
  wire \y_length[3]_i_1_n_0 ;
  wire \y_length[4]_i_1_n_0 ;
  wire \y_length[5]_i_1_n_0 ;
  wire \y_length[6]_i_1_n_0 ;
  wire \y_length[7]_i_1_n_0 ;
  wire \y_length[8]_i_1_n_0 ;
  wire \y_length[9]_i_1_n_0 ;
  wire [23:0]\y_length_reg[23]_0 ;
  wire [3:1]\NLW_src_address_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_src_address_reg[27]_i_1_O_UNCONNECTED ;
  wire [3:2]NLW_y_length0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_y_length0_carry__4_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \cdc_sync_fifo_ram[0]_i_1 
       (.I0(out_last),
        .I1(gen_last),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h4000)) 
    \cdc_sync_fifo_ram[0]_i_2__0 
       (.I0(\cdc_sync_fifo_ram[0]_i_3_n_0 ),
        .I1(\cdc_sync_fifo_ram[0]_i_4_n_0 ),
        .I2(\cdc_sync_fifo_ram[0]_i_5_n_0 ),
        .I3(\cdc_sync_fifo_ram[0]_i_6_n_0 ),
        .O(out_last));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cdc_sync_fifo_ram[0]_i_3 
       (.I0(y_length[14]),
        .I1(y_length[12]),
        .I2(y_length[13]),
        .I3(y_length[17]),
        .I4(y_length[15]),
        .I5(y_length[16]),
        .O(\cdc_sync_fifo_ram[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cdc_sync_fifo_ram[0]_i_4 
       (.I0(y_length[22]),
        .I1(y_length[21]),
        .I2(y_length[23]),
        .I3(y_length[18]),
        .I4(y_length[19]),
        .I5(y_length[20]),
        .O(\cdc_sync_fifo_ram[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cdc_sync_fifo_ram[0]_i_5 
       (.I0(y_length[11]),
        .I1(y_length[9]),
        .I2(y_length[10]),
        .I3(y_length[6]),
        .I4(y_length[7]),
        .I5(y_length[8]),
        .O(\cdc_sync_fifo_ram[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cdc_sync_fifo_ram[0]_i_6 
       (.I0(y_length[5]),
        .I1(y_length[3]),
        .I2(y_length[4]),
        .I3(y_length[0]),
        .I4(y_length[1]),
        .I5(y_length[2]),
        .O(\cdc_sync_fifo_ram[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \eot_id[0]_i_1 
       (.I0(eot_id0),
        .I1(eot_id[0]),
        .O(\eot_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \eot_id[1]_i_1 
       (.I0(eot_id[0]),
        .I1(eot_id0),
        .I2(eot_id[1]),
        .O(\eot_id[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \eot_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\eot_id[0]_i_1_n_0 ),
        .Q(eot_id[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \eot_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\eot_id[1]_i_1_n_0 ),
        .Q(eot_id[1]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    gen_last_reg
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(up_dma_last),
        .Q(gen_last),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \last_req[0]_i_1 
       (.I0(out_last),
        .I1(req_id0),
        .I2(req_id[0]),
        .I3(req_id[1]),
        .I4(\last_req_reg_n_0_[0] ),
        .O(\last_req[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \last_req[1]_i_1 
       (.I0(out_last),
        .I1(req_id0),
        .I2(req_id[1]),
        .I3(req_id[0]),
        .I4(\last_req_reg_n_0_[1] ),
        .O(\last_req[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \last_req[2]_i_1 
       (.I0(out_last),
        .I1(req_id0),
        .I2(req_id[0]),
        .I3(req_id[1]),
        .I4(\last_req_reg_n_0_[2] ),
        .O(\last_req[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \last_req[3]_i_1 
       (.I0(out_last),
        .I1(req_id0),
        .I2(req_id[0]),
        .I3(req_id[1]),
        .I4(\last_req_reg_n_0_[3] ),
        .O(\last_req[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_req_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\last_req[0]_i_1_n_0 ),
        .Q(\last_req_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_req_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\last_req[1]_i_1_n_0 ),
        .Q(\last_req_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_req_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\last_req[2]_i_1_n_0 ),
        .Q(\last_req_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_req_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\last_req[3]_i_1_n_0 ),
        .Q(\last_req_reg_n_0_[3] ),
        .R(1'b0));
  FDRE out_req_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out_req_valid_reg_0),
        .Q(dma_req_valid),
        .R(Q));
  FDSE #(
    .INIT(1'b1)) 
    out_response_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out_response_ready_reg_0),
        .Q(dma_response_ready),
        .S(Q));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    req_eot_i_2
       (.I0(\last_req_reg_n_0_[3] ),
        .I1(\last_req_reg_n_0_[2] ),
        .I2(eot_id[1]),
        .I3(\last_req_reg_n_0_[1] ),
        .I4(eot_id[0]),
        .I5(\last_req_reg_n_0_[0] ),
        .O(req_eot0__2));
  FDRE req_eot_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_eot_reg_0),
        .Q(up_req_eot),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FF78008)) 
    \req_id[0]_i_1 
       (.I0(dma_req_valid),
        .I1(req_gen_ready),
        .I2(\req_id_reg[1]_1 ),
        .I3(\req_id_reg[1]_0 ),
        .I4(req_id[0]),
        .O(\req_id[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7DFFFFFF82000000)) 
    \req_id[1]_i_1 
       (.I0(req_id[0]),
        .I1(\req_id_reg[1]_0 ),
        .I2(\req_id_reg[1]_1 ),
        .I3(req_gen_ready),
        .I4(dma_req_valid),
        .I5(req_id[1]),
        .O(\req_id[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \req_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_id[0]_i_1_n_0 ),
        .Q(req_id[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \req_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_id[1]_i_1_n_0 ),
        .Q(req_id[1]),
        .R(Q));
  FDRE \req_measured_burst_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\req_measured_burst_length_reg[0]_0 ),
        .Q(req_measured_burst_length),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F2A)) 
    req_ready_i_1
       (.I0(req_ready_reg_0),
        .I1(req_ready_reg_1),
        .I2(up_dma_req_valid),
        .I3(req_ready0__0),
        .O(req_ready_i_1_n_0));
  FDSE req_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1_n_0),
        .Q(req_ready_reg_0),
        .S(Q));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF222)) 
    req_response_valid_i_1
       (.I0(up_response_valid),
        .I1(up_response_ready),
        .I2(dma_response_valid),
        .I3(dma_response_ready),
        .O(req_response_valid_i_1_n_0));
  FDRE req_response_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_response_valid_i_1_n_0),
        .Q(up_response_valid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[11]_i_2 
       (.I0(src_stride[14]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[11]_i_3 
       (.I0(src_stride[13]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[11]_i_4 
       (.I0(src_stride[12]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[11]_i_5 
       (.I0(src_stride[11]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[11]_i_6 
       (.I0(src_stride[14]),
        .I1(D[16]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [11]),
        .O(\src_address[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[11]_i_7 
       (.I0(src_stride[13]),
        .I1(D[15]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [10]),
        .O(\src_address[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[11]_i_8 
       (.I0(src_stride[12]),
        .I1(D[14]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [9]),
        .O(\src_address[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[11]_i_9 
       (.I0(src_stride[11]),
        .I1(D[13]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [8]),
        .O(\src_address[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[15]_i_2 
       (.I0(src_stride[18]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[15]_i_3 
       (.I0(src_stride[17]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[15]_i_4 
       (.I0(src_stride[16]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[15]_i_5 
       (.I0(src_stride[15]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[15]_i_6 
       (.I0(src_stride[18]),
        .I1(D[20]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [15]),
        .O(\src_address[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[15]_i_7 
       (.I0(src_stride[17]),
        .I1(D[19]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [14]),
        .O(\src_address[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[15]_i_8 
       (.I0(src_stride[16]),
        .I1(D[18]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [13]),
        .O(\src_address[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[15]_i_9 
       (.I0(src_stride[15]),
        .I1(D[17]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [12]),
        .O(\src_address[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[19]_i_2 
       (.I0(src_stride[22]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[19]_i_3 
       (.I0(src_stride[21]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[19]_i_4 
       (.I0(src_stride[20]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[19]_i_5 
       (.I0(src_stride[19]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[19]_i_6 
       (.I0(src_stride[22]),
        .I1(D[24]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [19]),
        .O(\src_address[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[19]_i_7 
       (.I0(src_stride[21]),
        .I1(D[23]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [18]),
        .O(\src_address[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[19]_i_8 
       (.I0(src_stride[20]),
        .I1(D[22]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [17]),
        .O(\src_address[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[19]_i_9 
       (.I0(src_stride[19]),
        .I1(D[21]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [16]),
        .O(\src_address[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[23]_i_2 
       (.I0(src_stride[23]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \src_address[23]_i_3 
       (.I0(\src_address_reg[28]_0 [23]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(D[28]),
        .O(\src_address[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \src_address[23]_i_4 
       (.I0(\src_address_reg[28]_0 [22]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(D[27]),
        .O(\src_address[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \src_address[23]_i_5 
       (.I0(\src_address_reg[28]_0 [21]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(D[26]),
        .O(\src_address[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[23]_i_6 
       (.I0(src_stride[23]),
        .I1(D[25]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [20]),
        .O(\src_address[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \src_address[27]_i_2 
       (.I0(\src_address_reg[28]_0 [25]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(D[30]),
        .O(\src_address[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \src_address[27]_i_3 
       (.I0(\src_address_reg[28]_0 [24]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(D[29]),
        .O(\src_address[27]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[3]_i_2 
       (.I0(src_stride[6]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[3]_i_3 
       (.I0(src_stride[5]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[3]_i_4 
       (.I0(src_stride[4]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[3]_i_5 
       (.I0(src_stride[3]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[3]_i_6 
       (.I0(src_stride[6]),
        .I1(D[8]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [3]),
        .O(\src_address[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[3]_i_7 
       (.I0(src_stride[5]),
        .I1(D[7]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [2]),
        .O(\src_address[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[3]_i_8 
       (.I0(src_stride[4]),
        .I1(D[6]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [1]),
        .O(\src_address[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[3]_i_9 
       (.I0(src_stride[3]),
        .I1(D[5]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [0]),
        .O(\src_address[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[7]_i_2 
       (.I0(src_stride[10]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[7]_i_3 
       (.I0(src_stride[9]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[7]_i_4 
       (.I0(src_stride[8]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \src_address[7]_i_5 
       (.I0(src_stride[7]),
        .I1(req_ready_reg_0),
        .I2(req_ready_reg_1),
        .I3(up_dma_req_valid),
        .O(\src_address[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[7]_i_6 
       (.I0(src_stride[10]),
        .I1(D[12]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [7]),
        .O(\src_address[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[7]_i_7 
       (.I0(src_stride[9]),
        .I1(D[11]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [6]),
        .O(\src_address[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[7]_i_8 
       (.I0(src_stride[8]),
        .I1(D[10]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [5]),
        .O(\src_address[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \src_address[7]_i_9 
       (.I0(src_stride[7]),
        .I1(D[9]),
        .I2(req_ready_reg_0),
        .I3(req_ready_reg_1),
        .I4(up_dma_req_valid),
        .I5(\src_address_reg[28]_0 [4]),
        .O(\src_address[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[7]_i_1_n_4 ),
        .Q(D[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[11]_i_1_n_7 ),
        .Q(D[13]),
        .R(1'b0));
  CARRY4 \src_address_reg[11]_i_1 
       (.CI(\src_address_reg[7]_i_1_n_0 ),
        .CO({\src_address_reg[11]_i_1_n_0 ,\src_address_reg[11]_i_1_n_1 ,\src_address_reg[11]_i_1_n_2 ,\src_address_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\src_address[11]_i_2_n_0 ,\src_address[11]_i_3_n_0 ,\src_address[11]_i_4_n_0 ,\src_address[11]_i_5_n_0 }),
        .O({\src_address_reg[11]_i_1_n_4 ,\src_address_reg[11]_i_1_n_5 ,\src_address_reg[11]_i_1_n_6 ,\src_address_reg[11]_i_1_n_7 }),
        .S({\src_address[11]_i_6_n_0 ,\src_address[11]_i_7_n_0 ,\src_address[11]_i_8_n_0 ,\src_address[11]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[11]_i_1_n_6 ),
        .Q(D[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[11]_i_1_n_5 ),
        .Q(D[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[11]_i_1_n_4 ),
        .Q(D[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[15]_i_1_n_7 ),
        .Q(D[17]),
        .R(1'b0));
  CARRY4 \src_address_reg[15]_i_1 
       (.CI(\src_address_reg[11]_i_1_n_0 ),
        .CO({\src_address_reg[15]_i_1_n_0 ,\src_address_reg[15]_i_1_n_1 ,\src_address_reg[15]_i_1_n_2 ,\src_address_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\src_address[15]_i_2_n_0 ,\src_address[15]_i_3_n_0 ,\src_address[15]_i_4_n_0 ,\src_address[15]_i_5_n_0 }),
        .O({\src_address_reg[15]_i_1_n_4 ,\src_address_reg[15]_i_1_n_5 ,\src_address_reg[15]_i_1_n_6 ,\src_address_reg[15]_i_1_n_7 }),
        .S({\src_address[15]_i_6_n_0 ,\src_address[15]_i_7_n_0 ,\src_address[15]_i_8_n_0 ,\src_address[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[15]_i_1_n_6 ),
        .Q(D[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[15]_i_1_n_5 ),
        .Q(D[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[15]_i_1_n_4 ),
        .Q(D[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[19]_i_1_n_7 ),
        .Q(D[21]),
        .R(1'b0));
  CARRY4 \src_address_reg[19]_i_1 
       (.CI(\src_address_reg[15]_i_1_n_0 ),
        .CO({\src_address_reg[19]_i_1_n_0 ,\src_address_reg[19]_i_1_n_1 ,\src_address_reg[19]_i_1_n_2 ,\src_address_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\src_address[19]_i_2_n_0 ,\src_address[19]_i_3_n_0 ,\src_address[19]_i_4_n_0 ,\src_address[19]_i_5_n_0 }),
        .O({\src_address_reg[19]_i_1_n_4 ,\src_address_reg[19]_i_1_n_5 ,\src_address_reg[19]_i_1_n_6 ,\src_address_reg[19]_i_1_n_7 }),
        .S({\src_address[19]_i_6_n_0 ,\src_address[19]_i_7_n_0 ,\src_address[19]_i_8_n_0 ,\src_address[19]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[19]_i_1_n_6 ),
        .Q(D[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[19]_i_1_n_5 ),
        .Q(D[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[19]_i_1_n_4 ),
        .Q(D[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[23]_i_1_n_7 ),
        .Q(D[25]),
        .R(1'b0));
  CARRY4 \src_address_reg[23]_i_1 
       (.CI(\src_address_reg[19]_i_1_n_0 ),
        .CO({\src_address_reg[23]_i_1_n_0 ,\src_address_reg[23]_i_1_n_1 ,\src_address_reg[23]_i_1_n_2 ,\src_address_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\src_address[23]_i_2_n_0 }),
        .O({\src_address_reg[23]_i_1_n_4 ,\src_address_reg[23]_i_1_n_5 ,\src_address_reg[23]_i_1_n_6 ,\src_address_reg[23]_i_1_n_7 }),
        .S({\src_address[23]_i_3_n_0 ,\src_address[23]_i_4_n_0 ,\src_address[23]_i_5_n_0 ,\src_address[23]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[23]_i_1_n_6 ),
        .Q(D[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[23]_i_1_n_5 ),
        .Q(D[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[23]_i_1_n_4 ),
        .Q(D[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[27]_i_1_n_7 ),
        .Q(D[29]),
        .R(1'b0));
  CARRY4 \src_address_reg[27]_i_1 
       (.CI(\src_address_reg[23]_i_1_n_0 ),
        .CO({\NLW_src_address_reg[27]_i_1_CO_UNCONNECTED [3:1],\src_address_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_src_address_reg[27]_i_1_O_UNCONNECTED [3:2],\src_address_reg[27]_i_1_n_6 ,\src_address_reg[27]_i_1_n_7 }),
        .S({1'b0,1'b0,\src_address[27]_i_2_n_0 ,\src_address[27]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[27]_i_1_n_6 ),
        .Q(D[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[3]_i_1_n_7 ),
        .Q(D[5]),
        .R(1'b0));
  CARRY4 \src_address_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\src_address_reg[3]_i_1_n_0 ,\src_address_reg[3]_i_1_n_1 ,\src_address_reg[3]_i_1_n_2 ,\src_address_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\src_address[3]_i_2_n_0 ,\src_address[3]_i_3_n_0 ,\src_address[3]_i_4_n_0 ,\src_address[3]_i_5_n_0 }),
        .O({\src_address_reg[3]_i_1_n_4 ,\src_address_reg[3]_i_1_n_5 ,\src_address_reg[3]_i_1_n_6 ,\src_address_reg[3]_i_1_n_7 }),
        .S({\src_address[3]_i_6_n_0 ,\src_address[3]_i_7_n_0 ,\src_address[3]_i_8_n_0 ,\src_address[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[3]_i_1_n_6 ),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[3]_i_1_n_5 ),
        .Q(D[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[3]_i_1_n_4 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[7]_i_1_n_7 ),
        .Q(D[9]),
        .R(1'b0));
  CARRY4 \src_address_reg[7]_i_1 
       (.CI(\src_address_reg[3]_i_1_n_0 ),
        .CO({\src_address_reg[7]_i_1_n_0 ,\src_address_reg[7]_i_1_n_1 ,\src_address_reg[7]_i_1_n_2 ,\src_address_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\src_address[7]_i_2_n_0 ,\src_address[7]_i_3_n_0 ,\src_address[7]_i_4_n_0 ,\src_address[7]_i_5_n_0 }),
        .O({\src_address_reg[7]_i_1_n_4 ,\src_address_reg[7]_i_1_n_5 ,\src_address_reg[7]_i_1_n_6 ,\src_address_reg[7]_i_1_n_7 }),
        .S({\src_address[7]_i_6_n_0 ,\src_address[7]_i_7_n_0 ,\src_address[7]_i_8_n_0 ,\src_address[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[7]_i_1_n_6 ),
        .Q(D[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\src_address_reg[7]_i_1_n_5 ),
        .Q(D[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[10] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [7]),
        .Q(src_stride[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[11] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [8]),
        .Q(src_stride[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[12] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [9]),
        .Q(src_stride[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[13] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [10]),
        .Q(src_stride[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[14] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [11]),
        .Q(src_stride[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[15] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [12]),
        .Q(src_stride[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[16] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [13]),
        .Q(src_stride[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[17] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [14]),
        .Q(src_stride[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[18] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [15]),
        .Q(src_stride[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[19] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [16]),
        .Q(src_stride[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[20] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [17]),
        .Q(src_stride[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[21] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [18]),
        .Q(src_stride[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[22] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [19]),
        .Q(src_stride[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[23] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [20]),
        .Q(src_stride[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[3] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [0]),
        .Q(src_stride[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[4] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [1]),
        .Q(src_stride[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[5] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [2]),
        .Q(src_stride[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[6] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [3]),
        .Q(src_stride[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[7] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [4]),
        .Q(src_stride[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[8] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [5]),
        .Q(src_stride[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_stride_reg[9] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\src_stride_reg[23]_0 [6]),
        .Q(src_stride[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \up_irq_source[0]_i_2 
       (.I0(req_ready_reg_0),
        .I1(req_ready_reg_1),
        .I2(up_dma_cyclic),
        .I3(up_dma_req_valid),
        .O(up_sot));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_measured_transfer_length[31]_i_2 
       (.I0(up_response_valid),
        .I1(up_response_ready),
        .O(req_response_valid_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [7]),
        .Q(\x_length_reg[23]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [8]),
        .Q(\x_length_reg[23]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [9]),
        .Q(\x_length_reg[23]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [10]),
        .Q(\x_length_reg[23]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [11]),
        .Q(\x_length_reg[23]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [12]),
        .Q(\x_length_reg[23]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [13]),
        .Q(\x_length_reg[23]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [14]),
        .Q(\x_length_reg[23]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [15]),
        .Q(\x_length_reg[23]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [16]),
        .Q(\x_length_reg[23]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [17]),
        .Q(\x_length_reg[23]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [18]),
        .Q(\x_length_reg[23]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [19]),
        .Q(\x_length_reg[23]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [20]),
        .Q(\x_length_reg[23]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [0]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [1]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [2]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [3]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [4]),
        .Q(\x_length_reg[23]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [5]),
        .Q(\x_length_reg[23]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(dest_address1),
        .D(\x_length_reg[23]_1 [6]),
        .Q(\x_length_reg[23]_0 [2]),
        .R(1'b0));
  CARRY4 y_length0_carry
       (.CI(1'b0),
        .CO({y_length0_carry_n_0,y_length0_carry_n_1,y_length0_carry_n_2,y_length0_carry_n_3}),
        .CYINIT(y_length[0]),
        .DI(y_length[4:1]),
        .O(y_length0[4:1]),
        .S({y_length0_carry_i_1_n_0,y_length0_carry_i_2_n_0,y_length0_carry_i_3_n_0,y_length0_carry_i_4_n_0}));
  CARRY4 y_length0_carry__0
       (.CI(y_length0_carry_n_0),
        .CO({y_length0_carry__0_n_0,y_length0_carry__0_n_1,y_length0_carry__0_n_2,y_length0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(y_length[8:5]),
        .O(y_length0[8:5]),
        .S({y_length0_carry__0_i_1_n_0,y_length0_carry__0_i_2_n_0,y_length0_carry__0_i_3_n_0,y_length0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__0_i_1
       (.I0(y_length[8]),
        .O(y_length0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__0_i_2
       (.I0(y_length[7]),
        .O(y_length0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__0_i_3
       (.I0(y_length[6]),
        .O(y_length0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__0_i_4
       (.I0(y_length[5]),
        .O(y_length0_carry__0_i_4_n_0));
  CARRY4 y_length0_carry__1
       (.CI(y_length0_carry__0_n_0),
        .CO({y_length0_carry__1_n_0,y_length0_carry__1_n_1,y_length0_carry__1_n_2,y_length0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(y_length[12:9]),
        .O(y_length0[12:9]),
        .S({y_length0_carry__1_i_1_n_0,y_length0_carry__1_i_2_n_0,y_length0_carry__1_i_3_n_0,y_length0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__1_i_1
       (.I0(y_length[12]),
        .O(y_length0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__1_i_2
       (.I0(y_length[11]),
        .O(y_length0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__1_i_3
       (.I0(y_length[10]),
        .O(y_length0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__1_i_4
       (.I0(y_length[9]),
        .O(y_length0_carry__1_i_4_n_0));
  CARRY4 y_length0_carry__2
       (.CI(y_length0_carry__1_n_0),
        .CO({y_length0_carry__2_n_0,y_length0_carry__2_n_1,y_length0_carry__2_n_2,y_length0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(y_length[16:13]),
        .O(y_length0[16:13]),
        .S({y_length0_carry__2_i_1_n_0,y_length0_carry__2_i_2_n_0,y_length0_carry__2_i_3_n_0,y_length0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__2_i_1
       (.I0(y_length[16]),
        .O(y_length0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__2_i_2
       (.I0(y_length[15]),
        .O(y_length0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__2_i_3
       (.I0(y_length[14]),
        .O(y_length0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__2_i_4
       (.I0(y_length[13]),
        .O(y_length0_carry__2_i_4_n_0));
  CARRY4 y_length0_carry__3
       (.CI(y_length0_carry__2_n_0),
        .CO({y_length0_carry__3_n_0,y_length0_carry__3_n_1,y_length0_carry__3_n_2,y_length0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(y_length[20:17]),
        .O(y_length0[20:17]),
        .S({y_length0_carry__3_i_1_n_0,y_length0_carry__3_i_2_n_0,y_length0_carry__3_i_3_n_0,y_length0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__3_i_1
       (.I0(y_length[20]),
        .O(y_length0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__3_i_2
       (.I0(y_length[19]),
        .O(y_length0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__3_i_3
       (.I0(y_length[18]),
        .O(y_length0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__3_i_4
       (.I0(y_length[17]),
        .O(y_length0_carry__3_i_4_n_0));
  CARRY4 y_length0_carry__4
       (.CI(y_length0_carry__3_n_0),
        .CO({NLW_y_length0_carry__4_CO_UNCONNECTED[3:2],y_length0_carry__4_n_2,y_length0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,y_length[22:21]}),
        .O({NLW_y_length0_carry__4_O_UNCONNECTED[3],y_length0[23:21]}),
        .S({1'b0,y_length0_carry__4_i_1_n_0,y_length0_carry__4_i_2_n_0,y_length0_carry__4_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__4_i_1
       (.I0(y_length[23]),
        .O(y_length0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__4_i_2
       (.I0(y_length[22]),
        .O(y_length0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry__4_i_3
       (.I0(y_length[21]),
        .O(y_length0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry_i_1
       (.I0(y_length[4]),
        .O(y_length0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry_i_2
       (.I0(y_length[3]),
        .O(y_length0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry_i_3
       (.I0(y_length[2]),
        .O(y_length0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_length0_carry_i_4
       (.I0(y_length[1]),
        .O(y_length0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h8000BFFF)) 
    \y_length[0]_i_1 
       (.I0(\y_length_reg[23]_0 [0]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length[0]),
        .O(\y_length[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[10]_i_1 
       (.I0(\y_length_reg[23]_0 [10]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[10]),
        .O(\y_length[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[11]_i_1 
       (.I0(\y_length_reg[23]_0 [11]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[11]),
        .O(\y_length[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[12]_i_1 
       (.I0(\y_length_reg[23]_0 [12]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[12]),
        .O(\y_length[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[13]_i_1 
       (.I0(\y_length_reg[23]_0 [13]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[13]),
        .O(\y_length[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[14]_i_1 
       (.I0(\y_length_reg[23]_0 [14]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[14]),
        .O(\y_length[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[15]_i_1 
       (.I0(\y_length_reg[23]_0 [15]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[15]),
        .O(\y_length[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[16]_i_1 
       (.I0(\y_length_reg[23]_0 [16]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[16]),
        .O(\y_length[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[17]_i_1 
       (.I0(\y_length_reg[23]_0 [17]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[17]),
        .O(\y_length[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[18]_i_1 
       (.I0(\y_length_reg[23]_0 [18]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[18]),
        .O(\y_length[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[19]_i_1 
       (.I0(\y_length_reg[23]_0 [19]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[19]),
        .O(\y_length[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[1]_i_1 
       (.I0(\y_length_reg[23]_0 [1]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[1]),
        .O(\y_length[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[20]_i_1 
       (.I0(\y_length_reg[23]_0 [20]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[20]),
        .O(\y_length[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[21]_i_1 
       (.I0(\y_length_reg[23]_0 [21]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[21]),
        .O(\y_length[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[22]_i_1 
       (.I0(\y_length_reg[23]_0 [22]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[22]),
        .O(\y_length[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[23]_i_2 
       (.I0(\y_length_reg[23]_0 [23]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[23]),
        .O(\y_length[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[2]_i_1 
       (.I0(\y_length_reg[23]_0 [2]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[2]),
        .O(\y_length[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[3]_i_1 
       (.I0(\y_length_reg[23]_0 [3]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[3]),
        .O(\y_length[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[4]_i_1 
       (.I0(\y_length_reg[23]_0 [4]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[4]),
        .O(\y_length[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[5]_i_1 
       (.I0(\y_length_reg[23]_0 [5]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[5]),
        .O(\y_length[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[6]_i_1 
       (.I0(\y_length_reg[23]_0 [6]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[6]),
        .O(\y_length[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[7]_i_1 
       (.I0(\y_length_reg[23]_0 [7]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[7]),
        .O(\y_length[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[8]_i_1 
       (.I0(\y_length_reg[23]_0 [8]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[8]),
        .O(\y_length[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \y_length[9]_i_1 
       (.I0(\y_length_reg[23]_0 [9]),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_1),
        .I3(req_ready_reg_0),
        .I4(y_length0[9]),
        .O(\y_length[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[0]_i_1_n_0 ),
        .Q(y_length[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[10]_i_1_n_0 ),
        .Q(y_length[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[11]_i_1_n_0 ),
        .Q(y_length[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[12]_i_1_n_0 ),
        .Q(y_length[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[13]_i_1_n_0 ),
        .Q(y_length[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[14]_i_1_n_0 ),
        .Q(y_length[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[15]_i_1_n_0 ),
        .Q(y_length[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[16]_i_1_n_0 ),
        .Q(y_length[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[17]_i_1_n_0 ),
        .Q(y_length[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[18]_i_1_n_0 ),
        .Q(y_length[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[19]_i_1_n_0 ),
        .Q(y_length[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[1]_i_1_n_0 ),
        .Q(y_length[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[20]_i_1_n_0 ),
        .Q(y_length[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[21]_i_1_n_0 ),
        .Q(y_length[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[22]_i_1_n_0 ),
        .Q(y_length[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[23]_i_2_n_0 ),
        .Q(y_length[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[2]_i_1_n_0 ),
        .Q(y_length[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[3]_i_1_n_0 ),
        .Q(y_length[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[4]_i_1_n_0 ),
        .Q(y_length[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[5]_i_1_n_0 ),
        .Q(y_length[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[6]_i_1_n_0 ),
        .Q(y_length[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[7]_i_1_n_0 ),
        .Q(y_length[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[8]_i_1_n_0 ),
        .Q(y_length[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\y_length[9]_i_1_n_0 ),
        .Q(y_length[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmac_address_generator" *) 
module zed_axi_dmac_0_0_dmac_address_generator
   (addr_valid_reg_0,
    \id_reg[3]_0 ,
    \id_reg[2]_0 ,
    \id_reg[1]_0 ,
    \id_reg[0]_0 ,
    m_src_axi_araddr,
    bl_ready_ag,
    req_ready_ag,
    enabled_reg_0,
    enabled_reg_1,
    m_src_axi_arlen,
    m_src_axi_aclk,
    Q,
    src_address_eot,
    addr_valid_reg_1,
    enabled_reg_2,
    m_src_axi_arready,
    \address_reg[25]_0 ,
    dbg_status,
    \up_rdata_reg[5] ,
    \up_rdata_reg[5]_0 ,
    enabled_reg_3,
    acked,
    m_axis_raddr0,
    E);
  output addr_valid_reg_0;
  output \id_reg[3]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[0]_0 ;
  output [25:0]m_src_axi_araddr;
  output bl_ready_ag;
  output req_ready_ag;
  output enabled_reg_0;
  output enabled_reg_1;
  output [3:0]m_src_axi_arlen;
  input m_src_axi_aclk;
  input [0:0]Q;
  input src_address_eot;
  input [3:0]addr_valid_reg_1;
  input enabled_reg_2;
  input m_src_axi_arready;
  input [29:0]\address_reg[25]_0 ;
  input [0:0]dbg_status;
  input \up_rdata_reg[5] ;
  input \up_rdata_reg[5]_0 ;
  input [3:0]enabled_reg_3;
  input [1:0]acked;
  input m_axis_raddr0;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire [1:0]acked;
  wire addr_valid_d1;
  wire addr_valid_i_1_n_0;
  wire addr_valid_i_3_n_0;
  wire addr_valid_i_4_n_0;
  wire addr_valid_reg_0;
  wire [3:0]addr_valid_reg_1;
  wire \address[0]_i_1_n_0 ;
  wire \address[10]_i_2_n_0 ;
  wire \address[10]_i_3_n_0 ;
  wire \address[10]_i_4_n_0 ;
  wire \address[10]_i_5_n_0 ;
  wire \address[14]_i_2_n_0 ;
  wire \address[14]_i_3_n_0 ;
  wire \address[14]_i_4_n_0 ;
  wire \address[14]_i_5_n_0 ;
  wire \address[18]_i_2_n_0 ;
  wire \address[18]_i_3_n_0 ;
  wire \address[18]_i_4_n_0 ;
  wire \address[18]_i_5_n_0 ;
  wire \address[1]_i_1_n_0 ;
  wire \address[22]_i_2_n_0 ;
  wire \address[22]_i_3_n_0 ;
  wire \address[22]_i_4_n_0 ;
  wire \address[22]_i_5_n_0 ;
  wire \address[25]_i_1_n_0 ;
  wire \address[25]_i_3_n_0 ;
  wire \address[25]_i_4_n_0 ;
  wire \address[25]_i_5_n_0 ;
  wire \address[2]_i_1_n_0 ;
  wire \address[6]_i_2_n_0 ;
  wire \address[6]_i_3_n_0 ;
  wire \address[6]_i_4_n_0 ;
  wire \address[6]_i_5_n_0 ;
  wire \address[6]_i_6_n_0 ;
  wire address_enabled;
  wire \address_reg[10]_i_1_n_0 ;
  wire \address_reg[10]_i_1_n_1 ;
  wire \address_reg[10]_i_1_n_2 ;
  wire \address_reg[10]_i_1_n_3 ;
  wire \address_reg[10]_i_1_n_4 ;
  wire \address_reg[10]_i_1_n_5 ;
  wire \address_reg[10]_i_1_n_6 ;
  wire \address_reg[10]_i_1_n_7 ;
  wire \address_reg[14]_i_1_n_0 ;
  wire \address_reg[14]_i_1_n_1 ;
  wire \address_reg[14]_i_1_n_2 ;
  wire \address_reg[14]_i_1_n_3 ;
  wire \address_reg[14]_i_1_n_4 ;
  wire \address_reg[14]_i_1_n_5 ;
  wire \address_reg[14]_i_1_n_6 ;
  wire \address_reg[14]_i_1_n_7 ;
  wire \address_reg[18]_i_1_n_0 ;
  wire \address_reg[18]_i_1_n_1 ;
  wire \address_reg[18]_i_1_n_2 ;
  wire \address_reg[18]_i_1_n_3 ;
  wire \address_reg[18]_i_1_n_4 ;
  wire \address_reg[18]_i_1_n_5 ;
  wire \address_reg[18]_i_1_n_6 ;
  wire \address_reg[18]_i_1_n_7 ;
  wire \address_reg[22]_i_1_n_0 ;
  wire \address_reg[22]_i_1_n_1 ;
  wire \address_reg[22]_i_1_n_2 ;
  wire \address_reg[22]_i_1_n_3 ;
  wire \address_reg[22]_i_1_n_4 ;
  wire \address_reg[22]_i_1_n_5 ;
  wire \address_reg[22]_i_1_n_6 ;
  wire \address_reg[22]_i_1_n_7 ;
  wire [29:0]\address_reg[25]_0 ;
  wire \address_reg[25]_i_2_n_2 ;
  wire \address_reg[25]_i_2_n_3 ;
  wire \address_reg[25]_i_2_n_5 ;
  wire \address_reg[25]_i_2_n_6 ;
  wire \address_reg[25]_i_2_n_7 ;
  wire \address_reg[6]_i_1_n_0 ;
  wire \address_reg[6]_i_1_n_1 ;
  wire \address_reg[6]_i_1_n_2 ;
  wire \address_reg[6]_i_1_n_3 ;
  wire \address_reg[6]_i_1_n_4 ;
  wire \address_reg[6]_i_1_n_5 ;
  wire \address_reg[6]_i_1_n_6 ;
  wire \address_reg[6]_i_1_n_7 ;
  wire bl_ready0__1;
  wire bl_ready_ag;
  wire bl_ready_i_1_n_0;
  wire [0:0]dbg_status;
  wire enabled_i_1__0_n_0;
  wire enabled_i_2_n_0;
  wire enabled_reg_0;
  wire enabled_reg_1;
  wire enabled_reg_2;
  wire [3:0]enabled_reg_3;
  wire id0;
  wire \id[0]_i_1__0_n_0 ;
  wire \id[3]_i_2_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3]_0 ;
  wire [2:1]inc_id_return;
  wire last;
  wire [3:0]last_burst_len;
  wire \length[3]_i_1_n_0 ;
  wire \length[3]_i_2_n_0 ;
  wire m_axis_raddr0;
  wire m_src_axi_aclk;
  wire [25:0]m_src_axi_araddr;
  wire [3:0]m_src_axi_arlen;
  wire m_src_axi_arready;
  wire req_ready_ag;
  wire req_ready_i_1__0_n_0;
  wire src_address_eot;
  wire \up_rdata_reg[5] ;
  wire \up_rdata_reg[5]_0 ;
  wire [3:2]\NLW_address_reg[25]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_address_reg[25]_i_2_O_UNCONNECTED ;

  FDRE addr_valid_d1_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(addr_valid_reg_0),
        .Q(addr_valid_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAABFAA)) 
    addr_valid_i_1
       (.I0(addr_valid_reg_0),
        .I1(bl_ready_ag),
        .I2(src_address_eot),
        .I3(bl_ready0__1),
        .I4(req_ready_ag),
        .I5(addr_valid_i_3_n_0),
        .O(addr_valid_i_1_n_0));
  LUT4 #(
    .INIT(16'hBE00)) 
    addr_valid_i_2
       (.I0(addr_valid_i_4_n_0),
        .I1(addr_valid_reg_1[3]),
        .I2(\id_reg[3]_0 ),
        .I3(enabled_reg_2),
        .O(bl_ready0__1));
  LUT4 #(
    .INIT(16'hBAAA)) 
    addr_valid_i_3
       (.I0(Q),
        .I1(req_ready_ag),
        .I2(addr_valid_reg_0),
        .I3(m_src_axi_arready),
        .O(addr_valid_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    addr_valid_i_4
       (.I0(\id_reg[0]_0 ),
        .I1(addr_valid_reg_1[0]),
        .I2(addr_valid_reg_1[2]),
        .I3(\id_reg[2]_0 ),
        .I4(addr_valid_reg_1[1]),
        .I5(\id_reg[1]_0 ),
        .O(addr_valid_i_4_n_0));
  FDRE addr_valid_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(addr_valid_i_1_n_0),
        .Q(addr_valid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[0]_i_1 
       (.I0(\address_reg[25]_0 [4]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[0]),
        .O(\address[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_2 
       (.I0(\address_reg[25]_0 [14]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[10]),
        .O(\address[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_3 
       (.I0(\address_reg[25]_0 [13]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[9]),
        .O(\address[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_4 
       (.I0(\address_reg[25]_0 [12]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[8]),
        .O(\address[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_5 
       (.I0(\address_reg[25]_0 [11]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[7]),
        .O(\address[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_2 
       (.I0(\address_reg[25]_0 [18]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[14]),
        .O(\address[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_3 
       (.I0(\address_reg[25]_0 [17]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[13]),
        .O(\address[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_4 
       (.I0(\address_reg[25]_0 [16]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[12]),
        .O(\address[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_5 
       (.I0(\address_reg[25]_0 [15]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[11]),
        .O(\address[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_2 
       (.I0(\address_reg[25]_0 [22]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[18]),
        .O(\address[18]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_3 
       (.I0(\address_reg[25]_0 [21]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[17]),
        .O(\address[18]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_4 
       (.I0(\address_reg[25]_0 [20]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[16]),
        .O(\address[18]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_5 
       (.I0(\address_reg[25]_0 [19]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[15]),
        .O(\address[18]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[1]_i_1 
       (.I0(\address_reg[25]_0 [5]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[1]),
        .O(\address[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_2 
       (.I0(\address_reg[25]_0 [26]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[22]),
        .O(\address[22]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_3 
       (.I0(\address_reg[25]_0 [25]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[21]),
        .O(\address[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_4 
       (.I0(\address_reg[25]_0 [24]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[20]),
        .O(\address[22]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_5 
       (.I0(\address_reg[25]_0 [23]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[19]),
        .O(\address[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \address[25]_i_1 
       (.I0(req_ready_ag),
        .I1(m_src_axi_arready),
        .I2(addr_valid_reg_0),
        .O(\address[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[25]_i_3 
       (.I0(\address_reg[25]_0 [29]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[25]),
        .O(\address[25]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[25]_i_4 
       (.I0(\address_reg[25]_0 [28]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[24]),
        .O(\address[25]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[25]_i_5 
       (.I0(\address_reg[25]_0 [27]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[23]),
        .O(\address[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[2]_i_1 
       (.I0(\address_reg[25]_0 [6]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[2]),
        .O(\address[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_2 
       (.I0(\address_reg[25]_0 [8]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[4]),
        .O(\address[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_3 
       (.I0(\address_reg[25]_0 [10]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[6]),
        .O(\address[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_4 
       (.I0(\address_reg[25]_0 [9]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[5]),
        .O(\address[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \address[6]_i_5 
       (.I0(m_src_axi_araddr[4]),
        .I1(\address_reg[25]_0 [8]),
        .I2(req_ready_ag),
        .O(\address[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_6 
       (.I0(\address_reg[25]_0 [7]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[3]),
        .O(\address[6]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address[0]_i_1_n_0 ),
        .Q(m_src_axi_araddr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_4 ),
        .Q(m_src_axi_araddr[10]),
        .R(1'b0));
  CARRY4 \address_reg[10]_i_1 
       (.CI(\address_reg[6]_i_1_n_0 ),
        .CO({\address_reg[10]_i_1_n_0 ,\address_reg[10]_i_1_n_1 ,\address_reg[10]_i_1_n_2 ,\address_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[10]_i_1_n_4 ,\address_reg[10]_i_1_n_5 ,\address_reg[10]_i_1_n_6 ,\address_reg[10]_i_1_n_7 }),
        .S({\address[10]_i_2_n_0 ,\address[10]_i_3_n_0 ,\address[10]_i_4_n_0 ,\address[10]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_7 ),
        .Q(m_src_axi_araddr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_6 ),
        .Q(m_src_axi_araddr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_5 ),
        .Q(m_src_axi_araddr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_4 ),
        .Q(m_src_axi_araddr[14]),
        .R(1'b0));
  CARRY4 \address_reg[14]_i_1 
       (.CI(\address_reg[10]_i_1_n_0 ),
        .CO({\address_reg[14]_i_1_n_0 ,\address_reg[14]_i_1_n_1 ,\address_reg[14]_i_1_n_2 ,\address_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[14]_i_1_n_4 ,\address_reg[14]_i_1_n_5 ,\address_reg[14]_i_1_n_6 ,\address_reg[14]_i_1_n_7 }),
        .S({\address[14]_i_2_n_0 ,\address[14]_i_3_n_0 ,\address[14]_i_4_n_0 ,\address[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_7 ),
        .Q(m_src_axi_araddr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_6 ),
        .Q(m_src_axi_araddr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[17] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_5 ),
        .Q(m_src_axi_araddr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[18] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_4 ),
        .Q(m_src_axi_araddr[18]),
        .R(1'b0));
  CARRY4 \address_reg[18]_i_1 
       (.CI(\address_reg[14]_i_1_n_0 ),
        .CO({\address_reg[18]_i_1_n_0 ,\address_reg[18]_i_1_n_1 ,\address_reg[18]_i_1_n_2 ,\address_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[18]_i_1_n_4 ,\address_reg[18]_i_1_n_5 ,\address_reg[18]_i_1_n_6 ,\address_reg[18]_i_1_n_7 }),
        .S({\address[18]_i_2_n_0 ,\address[18]_i_3_n_0 ,\address[18]_i_4_n_0 ,\address[18]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[19] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_7 ),
        .Q(m_src_axi_araddr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address[1]_i_1_n_0 ),
        .Q(m_src_axi_araddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[20] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_6 ),
        .Q(m_src_axi_araddr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[21] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_5 ),
        .Q(m_src_axi_araddr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[22] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_4 ),
        .Q(m_src_axi_araddr[22]),
        .R(1'b0));
  CARRY4 \address_reg[22]_i_1 
       (.CI(\address_reg[18]_i_1_n_0 ),
        .CO({\address_reg[22]_i_1_n_0 ,\address_reg[22]_i_1_n_1 ,\address_reg[22]_i_1_n_2 ,\address_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[22]_i_1_n_4 ,\address_reg[22]_i_1_n_5 ,\address_reg[22]_i_1_n_6 ,\address_reg[22]_i_1_n_7 }),
        .S({\address[22]_i_2_n_0 ,\address[22]_i_3_n_0 ,\address[22]_i_4_n_0 ,\address[22]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[23] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[25]_i_2_n_7 ),
        .Q(m_src_axi_araddr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[24] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[25]_i_2_n_6 ),
        .Q(m_src_axi_araddr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[25] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[25]_i_2_n_5 ),
        .Q(m_src_axi_araddr[25]),
        .R(1'b0));
  CARRY4 \address_reg[25]_i_2 
       (.CI(\address_reg[22]_i_1_n_0 ),
        .CO({\NLW_address_reg[25]_i_2_CO_UNCONNECTED [3:2],\address_reg[25]_i_2_n_2 ,\address_reg[25]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_reg[25]_i_2_O_UNCONNECTED [3],\address_reg[25]_i_2_n_5 ,\address_reg[25]_i_2_n_6 ,\address_reg[25]_i_2_n_7 }),
        .S({1'b0,\address[25]_i_3_n_0 ,\address[25]_i_4_n_0 ,\address[25]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address[2]_i_1_n_0 ),
        .Q(m_src_axi_araddr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_7 ),
        .Q(m_src_axi_araddr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_6 ),
        .Q(m_src_axi_araddr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_5 ),
        .Q(m_src_axi_araddr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_4 ),
        .Q(m_src_axi_araddr[6]),
        .R(1'b0));
  CARRY4 \address_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\address_reg[6]_i_1_n_0 ,\address_reg[6]_i_1_n_1 ,\address_reg[6]_i_1_n_2 ,\address_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\address[6]_i_2_n_0 ,1'b0}),
        .O({\address_reg[6]_i_1_n_4 ,\address_reg[6]_i_1_n_5 ,\address_reg[6]_i_1_n_6 ,\address_reg[6]_i_1_n_7 }),
        .S({\address[6]_i_3_n_0 ,\address[6]_i_4_n_0 ,\address[6]_i_5_n_0 ,\address[6]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_7 ),
        .Q(m_src_axi_araddr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_6 ),
        .Q(m_src_axi_araddr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(m_src_axi_aclk),
        .CE(\address[25]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_5 ),
        .Q(m_src_axi_araddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB0BFB0B0B0B0B0B0)) 
    bl_ready_i_1
       (.I0(acked[1]),
        .I1(m_axis_raddr0),
        .I2(bl_ready_ag),
        .I3(addr_valid_reg_0),
        .I4(bl_ready0__1),
        .I5(src_address_eot),
        .O(bl_ready_i_1_n_0));
  FDSE bl_ready_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(bl_ready_i_1_n_0),
        .Q(bl_ready_ag),
        .S(Q));
  LUT3 #(
    .INIT(8'hEA)) 
    enabled_i_1__0
       (.I0(enabled_reg_2),
        .I1(addr_valid_reg_0),
        .I2(address_enabled),
        .O(enabled_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hBFFBAAAA)) 
    enabled_i_1__1
       (.I0(address_enabled),
        .I1(enabled_i_2_n_0),
        .I2(\id_reg[3]_0 ),
        .I3(enabled_reg_3[3]),
        .I4(dbg_status),
        .O(enabled_reg_1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    enabled_i_2
       (.I0(enabled_reg_3[0]),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[2]_0 ),
        .I3(enabled_reg_3[2]),
        .I4(\id_reg[1]_0 ),
        .I5(enabled_reg_3[1]),
        .O(enabled_i_2_n_0));
  FDRE enabled_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(enabled_i_1__0_n_0),
        .Q(address_enabled),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__0 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[2]_0 ),
        .O(\id[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1__2 
       (.I0(\id_reg[2]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[1]_0 ),
        .I3(\id_reg[0]_0 ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \id[2]_i_1__2 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[2]_0 ),
        .I3(\id_reg[1]_0 ),
        .O(inc_id_return[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \id[3]_i_1 
       (.I0(addr_valid_reg_0),
        .I1(addr_valid_d1),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \id[3]_i_2 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[2]_0 ),
        .I2(\id_reg[0]_0 ),
        .I3(\id_reg[3]_0 ),
        .O(\id[3]_i_2_n_0 ));
  FDRE \id_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(id0),
        .D(\id[0]_i_1__0_n_0 ),
        .Q(\id_reg[0]_0 ),
        .R(Q));
  FDRE \id_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(id0),
        .D(inc_id_return[1]),
        .Q(\id_reg[1]_0 ),
        .R(Q));
  FDRE \id_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(id0),
        .D(inc_id_return[2]),
        .Q(\id_reg[2]_0 ),
        .R(Q));
  FDRE \id_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(id0),
        .D(\id[3]_i_2_n_0 ),
        .Q(\id_reg[3]_0 ),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(E),
        .D(\address_reg[25]_0 [0]),
        .Q(last_burst_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(E),
        .D(\address_reg[25]_0 [1]),
        .Q(last_burst_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(E),
        .D(\address_reg[25]_0 [2]),
        .Q(last_burst_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(E),
        .D(\address_reg[25]_0 [3]),
        .Q(last_burst_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(m_src_axi_aclk),
        .CE(\length[3]_i_2_n_0 ),
        .D(src_address_eot),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \length[3]_i_1 
       (.I0(addr_valid_reg_0),
        .I1(src_address_eot),
        .O(\length[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \length[3]_i_2 
       (.I0(addr_valid_reg_0),
        .O(\length[3]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(\length[3]_i_2_n_0 ),
        .D(last_burst_len[0]),
        .Q(m_src_axi_arlen[0]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(\length[3]_i_2_n_0 ),
        .D(last_burst_len[1]),
        .Q(m_src_axi_arlen[1]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(\length[3]_i_2_n_0 ),
        .D(last_burst_len[2]),
        .Q(m_src_axi_arlen[2]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(\length[3]_i_2_n_0 ),
        .D(last_burst_len[3]),
        .Q(m_src_axi_arlen[3]),
        .S(\length[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBF0BB00BB00BB00)) 
    req_ready_i_1__0
       (.I0(acked[0]),
        .I1(m_axis_raddr0),
        .I2(last),
        .I3(req_ready_ag),
        .I4(m_src_axi_arready),
        .I5(addr_valid_reg_0),
        .O(req_ready_i_1__0_n_0));
  FDSE req_ready_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1__0_n_0),
        .Q(req_ready_ag),
        .S(Q));
  LUT4 #(
    .INIT(16'h3808)) 
    \up_rdata[5]_i_3 
       (.I0(dbg_status),
        .I1(\up_rdata_reg[5] ),
        .I2(\up_rdata_reg[5]_0 ),
        .I3(m_src_axi_araddr[2]),
        .O(enabled_reg_0));
endmodule

(* ORIG_REF_NAME = "dmac_dest_axi_stream" *) 
module zed_axi_dmac_0_0_dmac_dest_axi_stream
   (dbg_ids0,
    g,
    enabled_reg,
    active_reg_0,
    dest_response_valid,
    enabled_reg_0,
    \id_reg[0]_0 ,
    \id_reg[1]_0 ,
    \id_reg[2]_0 ,
    \id_reg[3]_0 ,
    \response_id_reg[0] ,
    \response_id_reg[1] ,
    \response_id_reg[2] ,
    \response_id_reg[3] ,
    m_axis_last,
    Q,
    id0,
    m_axis_aclk,
    active_reg_1,
    m_axis_ready,
    dest_fifo_last,
    \up_rdata_reg[27] ,
    \up_rdata_reg[27]_0 ,
    m_src_axi_araddr,
    data_eot,
    data_enabled_reg_0,
    dest_fifo_valid,
    req_xlast_d_reg_0);
  output [3:0]dbg_ids0;
  output [3:0]g;
  output enabled_reg;
  output active_reg_0;
  output dest_response_valid;
  output enabled_reg_0;
  output \id_reg[0]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[3]_0 ;
  output \response_id_reg[0] ;
  output \response_id_reg[1] ;
  output \response_id_reg[2] ;
  output \response_id_reg[3] ;
  output m_axis_last;
  input [0:0]Q;
  input id0;
  input m_axis_aclk;
  input active_reg_1;
  input m_axis_ready;
  input dest_fifo_last;
  input \up_rdata_reg[27] ;
  input \up_rdata_reg[27]_0 ;
  input [8:0]m_src_axi_araddr;
  input data_eot;
  input data_enabled_reg_0;
  input dest_fifo_valid;
  input req_xlast_d_reg_0;

  wire [0:0]Q;
  wire active_reg_0;
  wire active_reg_1;
  wire data_enabled;
  wire data_enabled_i_1_n_0;
  wire data_enabled_reg_0;
  wire data_eot;
  wire [3:0]dbg_ids0;
  wire dest_fifo_last;
  wire dest_fifo_valid;
  wire dest_response_valid;
  wire enabled_reg;
  wire enabled_reg_0;
  wire [3:0]g;
  wire id0;
  wire \id[0]_i_1_n_0 ;
  wire \id[0]_i_2_n_0 ;
  wire \id[3]_i_1__1_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3]_0 ;
  wire [2:1]inc_id_return;
  wire m_axis_aclk;
  wire m_axis_last;
  wire m_axis_ready;
  wire [8:0]m_src_axi_araddr;
  wire req_xlast_d;
  wire req_xlast_d_i_1_n_0;
  wire req_xlast_d_reg_0;
  wire \response_id_reg[0] ;
  wire \response_id_reg[1] ;
  wire \response_id_reg[2] ;
  wire \response_id_reg[3] ;
  wire \up_rdata_reg[27] ;
  wire \up_rdata_reg[27]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    active_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(active_reg_1),
        .Q(active_reg_0),
        .R(Q));
  LUT5 #(
    .INIT(32'hAAEAAAAA)) 
    data_enabled_i_1
       (.I0(data_enabled_reg_0),
        .I1(dest_fifo_valid),
        .I2(active_reg_0),
        .I3(m_axis_ready),
        .I4(data_enabled),
        .O(data_enabled_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_enabled_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(data_enabled_i_1_n_0),
        .Q(data_enabled),
        .R(Q));
  zed_axi_dmac_0_0_dmac_response_generator i_response_generator
       (.Q(Q),
        .data_enabled(data_enabled),
        .dest_response_valid(dest_response_valid),
        .enabled_reg_0(enabled_reg),
        .enabled_reg_1(enabled_reg_0),
        .enabled_reg_2(g[0]),
        .enabled_reg_3(g[3]),
        .enabled_reg_4(g[1]),
        .enabled_reg_5(g[2]),
        .id0(id0),
        .m_axis_aclk(m_axis_aclk),
        .m_src_axi_araddr({m_src_axi_araddr[8:5],m_src_axi_araddr[0]}),
        .\response_id_reg[0]_0 (dbg_ids0[0]),
        .\response_id_reg[0]_1 (\response_id_reg[0] ),
        .\response_id_reg[1]_0 (dbg_ids0[1]),
        .\response_id_reg[1]_1 (\response_id_reg[1] ),
        .\response_id_reg[2]_0 (dbg_ids0[2]),
        .\response_id_reg[2]_1 (\response_id_reg[2] ),
        .\response_id_reg[3]_0 (dbg_ids0[3]),
        .\response_id_reg[3]_1 (\response_id_reg[3] ),
        .\up_rdata_reg[27] (\up_rdata_reg[27] ),
        .\up_rdata_reg[27]_0 (\up_rdata_reg[27]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \id[0]_i_1 
       (.I0(active_reg_0),
        .I1(m_axis_ready),
        .I2(dest_fifo_last),
        .O(\id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_2 
       (.I0(g[1]),
        .I1(g[3]),
        .I2(g[2]),
        .O(\id[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1__1 
       (.I0(g[2]),
        .I1(g[3]),
        .I2(g[1]),
        .I3(g[0]),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \id[2]_i_1__1 
       (.I0(g[3]),
        .I1(g[0]),
        .I2(g[2]),
        .I3(g[1]),
        .O(inc_id_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \id[3]_i_1__1 
       (.I0(g[1]),
        .I1(g[2]),
        .I2(g[0]),
        .I3(g[3]),
        .O(\id[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[0] 
       (.C(m_axis_aclk),
        .CE(\id[0]_i_1_n_0 ),
        .D(\id[0]_i_2_n_0 ),
        .Q(g[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[1] 
       (.C(m_axis_aclk),
        .CE(\id[0]_i_1_n_0 ),
        .D(inc_id_return[1]),
        .Q(g[1]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[2] 
       (.C(m_axis_aclk),
        .CE(\id[0]_i_1_n_0 ),
        .D(inc_id_return[2]),
        .Q(g[2]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[3] 
       (.C(m_axis_aclk),
        .CE(\id[0]_i_1_n_0 ),
        .D(\id[3]_i_1__1_n_0 ),
        .Q(g[3]),
        .R(Q));
  LUT3 #(
    .INIT(8'h80)) 
    m_axis_last_INST_0
       (.I0(req_xlast_d),
        .I1(dest_fifo_last),
        .I2(data_eot),
        .O(m_axis_last));
  LUT6 #(
    .INIT(64'hBFFFAAAA8000AAAA)) 
    req_xlast_d_i_1
       (.I0(req_xlast_d_reg_0),
        .I1(data_eot),
        .I2(m_axis_ready),
        .I3(dest_fifo_last),
        .I4(active_reg_0),
        .I5(req_xlast_d),
        .O(req_xlast_d_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    req_xlast_d_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(req_xlast_d_i_1_n_0),
        .Q(req_xlast_d),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[16]_i_3 
       (.I0(g[0]),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_src_axi_araddr[1]),
        .O(\id_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[17]_i_3 
       (.I0(g[1]),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_src_axi_araddr[2]),
        .O(\id_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[18]_i_3 
       (.I0(g[2]),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_src_axi_araddr[3]),
        .O(\id_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[19]_i_3 
       (.I0(g[3]),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_src_axi_araddr[4]),
        .O(\id_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "dmac_request_arb" *) 
module zed_axi_dmac_0_0_dmac_request_arb
   (m_axis_data,
    ADDRBWRADDR,
    addr_valid_reg,
    req_gen_ready,
    id,
    m_src_axi_araddr,
    dbg_status,
    dma_response_valid,
    active_reg,
    s_axis_waddr_reg,
    m_axis_raddr_reg,
    E,
    req_ready0__0,
    req_id0,
    \reset_gen[0].reset_sync_reg[0] ,
    eot_id0,
    m_axis_valid,
    \id_reg[3] ,
    \src_id_reg[2] ,
    \id_reg[3]_0 ,
    enabled_reg,
    enabled_reg_0,
    \src_id_reg[3] ,
    \id_reg[0] ,
    \id_reg[1] ,
    \id_reg[2] ,
    \id_reg[3]_1 ,
    \response_id_reg[0] ,
    \response_id_reg[1] ,
    \response_id_reg[2] ,
    \response_id_reg[3] ,
    m_axis_last,
    response_valid_reg,
    s_axis_waddr_reg_0,
    \measured_burst_length_reg[0] ,
    m_src_axi_arlen,
    m_axis_aclk,
    m_src_axi_aclk,
    m_src_axi_rdata,
    m_src_axi_rvalid,
    Q,
    s_axi_aclk,
    m_axis_ready,
    dest_address1,
    dma_req_valid,
    out_last,
    req_eot0__2,
    dma_response_ready,
    enabled_reg_1,
    m_src_axi_arready,
    m_src_axi_rlast,
    \up_rdata_reg[3] ,
    \up_rdata_reg[3]_0 ,
    \burst_count_reg[16] ,
    up_response_ready,
    req_measured_burst_length,
    D,
    SR);
  output [63:0]m_axis_data;
  output [1:0]ADDRBWRADDR;
  output addr_valid_reg;
  output req_gen_ready;
  output [3:0]id;
  output [25:0]m_src_axi_araddr;
  output [1:0]dbg_status;
  output dma_response_valid;
  output active_reg;
  output s_axis_waddr_reg;
  output m_axis_raddr_reg;
  output [0:0]E;
  output req_ready0__0;
  output req_id0;
  output \reset_gen[0].reset_sync_reg[0] ;
  output eot_id0;
  output m_axis_valid;
  output [3:0]\id_reg[3] ;
  output \src_id_reg[2] ;
  output [3:0]\id_reg[3]_0 ;
  output enabled_reg;
  output enabled_reg_0;
  output \src_id_reg[3] ;
  output \id_reg[0] ;
  output \id_reg[1] ;
  output \id_reg[2] ;
  output \id_reg[3]_1 ;
  output \response_id_reg[0] ;
  output \response_id_reg[1] ;
  output \response_id_reg[2] ;
  output \response_id_reg[3] ;
  output m_axis_last;
  output response_valid_reg;
  output s_axis_waddr_reg_0;
  output \measured_burst_length_reg[0] ;
  output [3:0]m_src_axi_arlen;
  input m_axis_aclk;
  input m_src_axi_aclk;
  input [63:0]m_src_axi_rdata;
  input m_src_axi_rvalid;
  input [0:0]Q;
  input s_axi_aclk;
  input m_axis_ready;
  input dest_address1;
  input dma_req_valid;
  input out_last;
  input req_eot0__2;
  input dma_response_ready;
  input enabled_reg_1;
  input m_src_axi_arready;
  input m_src_axi_rlast;
  input \up_rdata_reg[3] ;
  input \up_rdata_reg[3]_0 ;
  input [16:0]\burst_count_reg[16] ;
  input up_response_ready;
  input [0:0]req_measured_burst_length;
  input [30:0]D;
  input [0:0]SR;

  wire [1:0]ADDRBWRADDR;
  wire [30:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire active_reg;
  wire addr_valid_reg;
  wire [16:0]\burst_count_reg[16] ;
  wire [28:3]data;
  wire data_eot;
  wire [27:24]dbg_ids0;
  wire [1:0]dbg_status;
  wire dest_address1;
  wire dest_fifo_last;
  wire dest_fifo_valid;
  wire dest_req_valid;
  wire dest_response_valid;
  wire dma_req_valid;
  wire dma_response_ready;
  wire dma_response_valid;
  wire enabled_reg;
  wire enabled_reg_0;
  wire enabled_reg_1;
  wire eot_id0;
  wire [3:0]g;
  wire g0;
  wire i_dest_req_fifo_n_0;
  wire i_dest_req_fifo_n_2;
  wire i_dest_req_fifo_n_3;
  wire \i_response_generator/id0 ;
  wire i_src_dma_mm_n_38;
  wire i_src_req_fifo_n_6;
  wire i_store_and_forward_n_71;
  wire i_store_and_forward_n_73;
  wire [3:0]id;
  wire \id_reg[0] ;
  wire \id_reg[1] ;
  wire \id_reg[2] ;
  wire [3:0]\id_reg[3] ;
  wire [3:0]\id_reg[3]_0 ;
  wire \id_reg[3]_1 ;
  wire [2:1]inc_id_return;
  wire m_axis_aclk;
  wire [63:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_raddr_reg;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_src_axi_aclk;
  wire [25:0]m_src_axi_araddr;
  wire [3:0]m_src_axi_arlen;
  wire m_src_axi_arready;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire \measured_burst_length_reg[0] ;
  wire [3:0]measured_last_burst_length;
  wire out_last;
  wire p_1_in;
  wire p_1_in1_in;
  wire req_eot0__2;
  wire req_gen_ready;
  wire req_id0;
  wire [0:0]req_measured_burst_length;
  wire req_ready0__0;
  wire request_eot;
  wire \reset_gen[0].reset_sync_reg[0] ;
  wire response_eot;
  wire \response_id_reg[0] ;
  wire \response_id_reg[1] ;
  wire \response_id_reg[2] ;
  wire \response_id_reg[3] ;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire s_axis_waddr_reg;
  wire s_axis_waddr_reg_0;
  wire src_address_eot;
  wire src_dest_valid_hs;
  wire \src_id_reg[2] ;
  wire \src_id_reg[3] ;
  wire src_req_dest_address_cur0;
  wire src_req_spltr_valid;
  wire src_req_xlast_cur;
  wire src_throttled_request_id0;
  wire \src_throttled_request_id[0]_i_1_n_0 ;
  wire \src_throttled_request_id[3]_i_2_n_0 ;
  wire \src_throttled_request_id_reg_n_0_[0] ;
  wire \src_throttled_request_id_reg_n_0_[1] ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[3]_0 ;
  wire up_response_ready;
  wire NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_dest_reg_r1_0_15_0_0
       (.A0(id[0]),
        .A1(id[1]),
        .A2(id[2]),
        .A3(id[3]),
        .A4(1'b0),
        .D(src_address_eot),
        .DPO(response_eot),
        .DPRA0(dbg_ids0[24]),
        .DPRA1(dbg_ids0[25]),
        .DPRA2(dbg_ids0[26]),
        .DPRA3(dbg_ids0[27]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(m_src_axi_aclk),
        .WE(1'b1));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_dest_reg_r2_0_15_0_0
       (.A0(id[0]),
        .A1(id[1]),
        .A2(id[2]),
        .A3(id[3]),
        .A4(1'b0),
        .D(src_address_eot),
        .DPO(data_eot),
        .DPRA0(g[0]),
        .DPRA1(g[1]),
        .DPRA2(g[2]),
        .DPRA3(g[3]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(m_src_axi_aclk),
        .WE(1'b1));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_src_reg_0_15_0_0
       (.A0(\id_reg[3]_0 [0]),
        .A1(\id_reg[3]_0 [1]),
        .A2(\id_reg[3]_0 [2]),
        .A3(\id_reg[3]_0 [3]),
        .A4(1'b0),
        .D(request_eot),
        .DPO(src_address_eot),
        .DPRA0(id[0]),
        .DPRA1(id[1]),
        .DPRA2(id[2]),
        .DPRA3(id[3]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(1'b1));
  zed_axi_dmac_0_0_dmac_dest_axi_stream i_dest_dma_stream
       (.Q(Q),
        .active_reg_0(active_reg),
        .active_reg_1(i_dest_req_fifo_n_2),
        .data_enabled_reg_0(enabled_reg_1),
        .data_eot(data_eot),
        .dbg_ids0(dbg_ids0),
        .dest_fifo_last(dest_fifo_last),
        .dest_fifo_valid(dest_fifo_valid),
        .dest_response_valid(dest_response_valid),
        .enabled_reg(dbg_status[0]),
        .enabled_reg_0(enabled_reg_0),
        .g(g),
        .id0(\i_response_generator/id0 ),
        .\id_reg[0]_0 (\id_reg[0] ),
        .\id_reg[1]_0 (\id_reg[1] ),
        .\id_reg[2]_0 (\id_reg[2] ),
        .\id_reg[3]_0 (\id_reg[3]_1 ),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_last(m_axis_last),
        .m_axis_ready(m_axis_ready),
        .m_src_axi_araddr({m_src_axi_araddr[24:21],m_src_axi_araddr[16:13],m_src_axi_araddr[1]}),
        .req_xlast_d_reg_0(i_dest_req_fifo_n_0),
        .\response_id_reg[0] (\response_id_reg[0] ),
        .\response_id_reg[1] (\response_id_reg[1] ),
        .\response_id_reg[2] (\response_id_reg[2] ),
        .\response_id_reg[3] (\response_id_reg[3] ),
        .\up_rdata_reg[27] (\up_rdata_reg[3] ),
        .\up_rdata_reg[27]_0 (\up_rdata_reg[3]_0 ));
  zed_axi_dmac_0_0_util_axis_fifo__parameterized0 i_dest_req_fifo
       (.Q(Q),
        .active_reg(active_reg),
        .\cdc_sync_fifo_ram_reg[0]_0 (i_dest_req_fifo_n_0),
        .data_eot(data_eot),
        .dest_fifo_last(dest_fifo_last),
        .dest_req_valid(dest_req_valid),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_raddr_reg_0(i_dest_req_fifo_n_2),
        .m_axis_raddr_reg_1(i_dest_req_fifo_n_3),
        .m_axis_ready(m_axis_ready),
        .m_src_axi_aclk(m_src_axi_aclk),
        .src_dest_valid_hs(src_dest_valid_hs),
        .src_req_dest_address_cur0(src_req_dest_address_cur0),
        .src_req_xlast_cur(src_req_xlast_cur));
  zed_axi_dmac_0_0_dmac_request_generator i_req_gen
       (.E(src_throttled_request_id0),
        .Q(Q),
        .\burst_count_reg[0]_0 (enabled_reg_1),
        .\burst_count_reg[16]_0 (\burst_count_reg[16] ),
        .dma_req_valid(dma_req_valid),
        .\id_reg[3]_0 (\id_reg[3]_0 ),
        .req_ready_reg_0(req_gen_ready),
        .request_eot(request_eot),
        .response_id(dbg_ids0),
        .s_axi_aclk(s_axi_aclk),
        .src_req_spltr_valid(src_req_spltr_valid),
        .\src_throttled_request_id_reg[0] ({p_1_in,p_1_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\src_throttled_request_id_reg[0]_0 (i_store_and_forward_n_71),
        .\src_throttled_request_id_reg[0]_1 (i_store_and_forward_n_73));
  zed_axi_dmac_0_0_axi_dmac_response_manager i_response_manager
       (.Q(Q),
        .dest_response_valid(dest_response_valid),
        .dma_response_ready(dma_response_ready),
        .eot_id0(eot_id0),
        .id0(\i_response_generator/id0 ),
        .m_axis_aclk(m_axis_aclk),
        .\measured_burst_length_reg[0]_0 (\measured_burst_length_reg[0] ),
        .req_eot0__2(req_eot0__2),
        .req_measured_burst_length(req_measured_burst_length),
        .\reset_gen[0].reset_sync_reg[0] (\reset_gen[0].reset_sync_reg[0] ),
        .response_eot(response_eot),
        .response_valid_reg_0(dma_response_valid),
        .response_valid_reg_1(response_valid_reg),
        .s_axi_aclk(s_axi_aclk),
        .up_response_ready(up_response_ready));
  zed_axi_dmac_0_0_dmac_src_mm_axi i_src_dma_mm
       (.Q(Q),
        .addr_valid_reg(addr_valid_reg),
        .addr_valid_reg_0({p_1_in,p_1_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\address_reg[25] ({data,measured_last_burst_length}),
        .dbg_status(dbg_status[1]),
        .dest_req_valid(dest_req_valid),
        .enabled_reg_0(enabled_reg),
        .enabled_reg_1(enabled_reg_1),
        .g0(g0),
        .\id_reg[0]_0 (id[0]),
        .\id_reg[1]_0 (id[1]),
        .\id_reg[2]_0 (id[2]),
        .\id_reg[3]_0 (id[3]),
        .\id_reg[3]_1 (\id_reg[3] ),
        .m_axis_raddr_reg(i_src_dma_mm_n_38),
        .m_axis_raddr_reg_0(m_axis_raddr_reg),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(m_src_axi_araddr),
        .m_src_axi_arlen(m_src_axi_arlen),
        .m_src_axi_arready(m_src_axi_arready),
        .src_address_eot(src_address_eot),
        .src_req_dest_address_cur0(src_req_dest_address_cur0),
        .src_req_spltr_valid(src_req_spltr_valid),
        .\up_rdata_reg[5] (\up_rdata_reg[3] ),
        .\up_rdata_reg[5]_0 (\up_rdata_reg[3]_0 ));
  zed_axi_dmac_0_0_util_axis_fifo__parameterized1 i_src_req_fifo
       (.D(D),
        .E(E),
        .Q(Q),
        .\cdc_sync_fifo_ram_reg[0]_0 (i_src_req_fifo_n_6),
        .\cdc_sync_fifo_ram_reg[34]_0 ({data,measured_last_burst_length}),
        .\cdc_sync_fifo_ram_reg[34]_1 (req_gen_ready),
        .dest_address1(dest_address1),
        .dma_req_valid(dma_req_valid),
        .m_axis_raddr_reg_0(m_axis_raddr_reg),
        .m_axis_raddr_reg_1(i_src_dma_mm_n_38),
        .m_src_axi_aclk(m_src_axi_aclk),
        .out_last(out_last),
        .req_id0(req_id0),
        .req_ready0__0(req_ready0__0),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_waddr_reg_0(s_axis_waddr_reg),
        .s_axis_waddr_reg_1(s_axis_waddr_reg_0),
        .src_req_dest_address_cur0(src_req_dest_address_cur0),
        .src_req_spltr_valid(src_req_spltr_valid),
        .src_req_xlast_cur(src_req_xlast_cur));
  zed_axi_dmac_0_0_axi_dmac_burst_memory i_store_and_forward
       (.Q(Q),
        .SR(SR),
        .dest_fifo_last(dest_fifo_last),
        .dest_fifo_valid(dest_fifo_valid),
        .g0(g0),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .m_ram_reg(active_reg),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(m_src_axi_araddr[0]),
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .\src_id_reg[0]_0 (ADDRBWRADDR[0]),
        .\src_id_reg[1]_0 (ADDRBWRADDR[1]),
        .\src_id_reg[2]_0 (\src_id_reg[2] ),
        .\src_id_reg[3]_0 (\src_id_reg[3] ),
        .\src_throttled_request_id_reg[0] (i_store_and_forward_n_73),
        .\src_throttled_request_id_reg[0]_0 ({p_1_in,p_1_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\src_throttled_request_id_reg[2] (i_store_and_forward_n_71),
        .\up_rdata_reg[3] (\up_rdata_reg[3] ),
        .\up_rdata_reg[3]_0 (\up_rdata_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    src_dest_valid_hs_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(i_dest_req_fifo_n_3),
        .Q(src_dest_valid_hs),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    src_req_xlast_cur_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(i_src_req_fifo_n_6),
        .Q(src_req_xlast_cur),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \src_throttled_request_id[0]_i_1 
       (.I0(\src_throttled_request_id_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(p_1_in1_in),
        .O(\src_throttled_request_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \src_throttled_request_id[1]_i_1 
       (.I0(p_1_in1_in),
        .I1(p_1_in),
        .I2(\src_throttled_request_id_reg_n_0_[1] ),
        .I3(\src_throttled_request_id_reg_n_0_[0] ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \src_throttled_request_id[2]_i_1 
       (.I0(p_1_in),
        .I1(\src_throttled_request_id_reg_n_0_[0] ),
        .I2(p_1_in1_in),
        .I3(\src_throttled_request_id_reg_n_0_[1] ),
        .O(inc_id_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \src_throttled_request_id[3]_i_2 
       (.I0(\src_throttled_request_id_reg_n_0_[1] ),
        .I1(p_1_in1_in),
        .I2(\src_throttled_request_id_reg_n_0_[0] ),
        .I3(p_1_in),
        .O(\src_throttled_request_id[3]_i_2_n_0 ));
  FDRE \src_throttled_request_id_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[0]_i_1_n_0 ),
        .Q(\src_throttled_request_id_reg_n_0_[0] ),
        .R(Q));
  FDRE \src_throttled_request_id_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(src_throttled_request_id0),
        .D(inc_id_return[1]),
        .Q(\src_throttled_request_id_reg_n_0_[1] ),
        .R(Q));
  FDRE \src_throttled_request_id_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(src_throttled_request_id0),
        .D(inc_id_return[2]),
        .Q(p_1_in1_in),
        .R(Q));
  FDRE \src_throttled_request_id_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[3]_i_2_n_0 ),
        .Q(p_1_in),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "dmac_request_generator" *) 
module zed_axi_dmac_0_0_dmac_request_generator
   (req_ready_reg_0,
    request_eot,
    \id_reg[3]_0 ,
    E,
    Q,
    s_axi_aclk,
    src_req_spltr_valid,
    dma_req_valid,
    response_id,
    \burst_count_reg[0]_0 ,
    \src_throttled_request_id_reg[0] ,
    \src_throttled_request_id_reg[0]_0 ,
    \src_throttled_request_id_reg[0]_1 ,
    \burst_count_reg[16]_0 );
  output req_ready_reg_0;
  output request_eot;
  output [3:0]\id_reg[3]_0 ;
  output [0:0]E;
  input [0:0]Q;
  input s_axi_aclk;
  input src_req_spltr_valid;
  input dma_req_valid;
  input [3:0]response_id;
  input \burst_count_reg[0]_0 ;
  input [3:0]\src_throttled_request_id_reg[0] ;
  input \src_throttled_request_id_reg[0]_0 ;
  input \src_throttled_request_id_reg[0]_1 ;
  input [16:0]\burst_count_reg[16]_0 ;

  wire [0:0]E;
  wire [0:0]Q;
  wire b2g3_return01_out;
  wire b2g3_return03_out;
  wire [16:0]burst_count;
  wire [16:1]burst_count0;
  wire burst_count0_carry__0_i_1_n_0;
  wire burst_count0_carry__0_i_2_n_0;
  wire burst_count0_carry__0_i_3_n_0;
  wire burst_count0_carry__0_i_4_n_0;
  wire burst_count0_carry__0_n_0;
  wire burst_count0_carry__0_n_1;
  wire burst_count0_carry__0_n_2;
  wire burst_count0_carry__0_n_3;
  wire burst_count0_carry__1_i_1_n_0;
  wire burst_count0_carry__1_i_2_n_0;
  wire burst_count0_carry__1_i_3_n_0;
  wire burst_count0_carry__1_i_4_n_0;
  wire burst_count0_carry__1_n_0;
  wire burst_count0_carry__1_n_1;
  wire burst_count0_carry__1_n_2;
  wire burst_count0_carry__1_n_3;
  wire burst_count0_carry__2_i_1_n_0;
  wire burst_count0_carry__2_i_2_n_0;
  wire burst_count0_carry__2_i_3_n_0;
  wire burst_count0_carry__2_i_4_n_0;
  wire burst_count0_carry__2_n_1;
  wire burst_count0_carry__2_n_2;
  wire burst_count0_carry__2_n_3;
  wire burst_count0_carry_i_1_n_0;
  wire burst_count0_carry_i_2_n_0;
  wire burst_count0_carry_i_3_n_0;
  wire burst_count0_carry_i_4_n_0;
  wire burst_count0_carry_n_0;
  wire burst_count0_carry_n_1;
  wire burst_count0_carry_n_2;
  wire burst_count0_carry_n_3;
  wire \burst_count[0]_i_1_n_0 ;
  wire \burst_count[10]_i_1_n_0 ;
  wire \burst_count[11]_i_1_n_0 ;
  wire \burst_count[12]_i_1_n_0 ;
  wire \burst_count[13]_i_1_n_0 ;
  wire \burst_count[14]_i_1_n_0 ;
  wire \burst_count[15]_i_1_n_0 ;
  wire \burst_count[16]_i_1_n_0 ;
  wire \burst_count[16]_i_2_n_0 ;
  wire \burst_count[1]_i_1_n_0 ;
  wire \burst_count[2]_i_1_n_0 ;
  wire \burst_count[3]_i_1_n_0 ;
  wire \burst_count[4]_i_1_n_0 ;
  wire \burst_count[5]_i_1_n_0 ;
  wire \burst_count[6]_i_1_n_0 ;
  wire \burst_count[7]_i_1_n_0 ;
  wire \burst_count[8]_i_1_n_0 ;
  wire \burst_count[9]_i_1_n_0 ;
  wire \burst_count_reg[0]_0 ;
  wire [16:0]\burst_count_reg[16]_0 ;
  wire dma_req_valid;
  wire eot_mem_src_reg_0_15_0_0_i_2_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_3_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_4_n_0;
  wire id;
  wire \id[0]_i_1__2_n_0 ;
  wire [3:0]\id_reg[3]_0 ;
  wire incr_id0;
  wire [0:0]nx_state__0;
  wire p_1_in2_in;
  wire p_3_in;
  wire req_ready_i_1__1_n_0;
  wire req_ready_reg_0;
  wire request_eot;
  wire [3:0]response_id;
  wire s_axi_aclk;
  wire src_req_spltr_valid;
  wire \src_throttled_request_id[3]_i_3_n_0 ;
  wire [3:0]\src_throttled_request_id_reg[0] ;
  wire \src_throttled_request_id_reg[0]_0 ;
  wire \src_throttled_request_id_reg[0]_1 ;
  wire \state[0]_i_4_n_0 ;
  wire [3:3]NLW_burst_count0_carry__2_CO_UNCONNECTED;

  CARRY4 burst_count0_carry
       (.CI(1'b0),
        .CO({burst_count0_carry_n_0,burst_count0_carry_n_1,burst_count0_carry_n_2,burst_count0_carry_n_3}),
        .CYINIT(burst_count[0]),
        .DI(burst_count[4:1]),
        .O(burst_count0[4:1]),
        .S({burst_count0_carry_i_1_n_0,burst_count0_carry_i_2_n_0,burst_count0_carry_i_3_n_0,burst_count0_carry_i_4_n_0}));
  CARRY4 burst_count0_carry__0
       (.CI(burst_count0_carry_n_0),
        .CO({burst_count0_carry__0_n_0,burst_count0_carry__0_n_1,burst_count0_carry__0_n_2,burst_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(burst_count[8:5]),
        .O(burst_count0[8:5]),
        .S({burst_count0_carry__0_i_1_n_0,burst_count0_carry__0_i_2_n_0,burst_count0_carry__0_i_3_n_0,burst_count0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_1
       (.I0(burst_count[8]),
        .O(burst_count0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_2
       (.I0(burst_count[7]),
        .O(burst_count0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_3
       (.I0(burst_count[6]),
        .O(burst_count0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_4
       (.I0(burst_count[5]),
        .O(burst_count0_carry__0_i_4_n_0));
  CARRY4 burst_count0_carry__1
       (.CI(burst_count0_carry__0_n_0),
        .CO({burst_count0_carry__1_n_0,burst_count0_carry__1_n_1,burst_count0_carry__1_n_2,burst_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(burst_count[12:9]),
        .O(burst_count0[12:9]),
        .S({burst_count0_carry__1_i_1_n_0,burst_count0_carry__1_i_2_n_0,burst_count0_carry__1_i_3_n_0,burst_count0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_1
       (.I0(burst_count[12]),
        .O(burst_count0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_2
       (.I0(burst_count[11]),
        .O(burst_count0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_3
       (.I0(burst_count[10]),
        .O(burst_count0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_4
       (.I0(burst_count[9]),
        .O(burst_count0_carry__1_i_4_n_0));
  CARRY4 burst_count0_carry__2
       (.CI(burst_count0_carry__1_n_0),
        .CO({NLW_burst_count0_carry__2_CO_UNCONNECTED[3],burst_count0_carry__2_n_1,burst_count0_carry__2_n_2,burst_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,burst_count[15:13]}),
        .O(burst_count0[16:13]),
        .S({burst_count0_carry__2_i_1_n_0,burst_count0_carry__2_i_2_n_0,burst_count0_carry__2_i_3_n_0,burst_count0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_1
       (.I0(burst_count[16]),
        .O(burst_count0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_2
       (.I0(burst_count[15]),
        .O(burst_count0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_3
       (.I0(burst_count[14]),
        .O(burst_count0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_4
       (.I0(burst_count[13]),
        .O(burst_count0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_1
       (.I0(burst_count[4]),
        .O(burst_count0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_2
       (.I0(burst_count[3]),
        .O(burst_count0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_3
       (.I0(burst_count[2]),
        .O(burst_count0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_4
       (.I0(burst_count[1]),
        .O(burst_count0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \burst_count[0]_i_1 
       (.I0(\burst_count_reg[16]_0 [0]),
        .I1(incr_id0),
        .I2(burst_count[0]),
        .O(\burst_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[10]_i_1 
       (.I0(\burst_count_reg[16]_0 [10]),
        .I1(incr_id0),
        .I2(burst_count0[10]),
        .O(\burst_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[11]_i_1 
       (.I0(\burst_count_reg[16]_0 [11]),
        .I1(incr_id0),
        .I2(burst_count0[11]),
        .O(\burst_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[12]_i_1 
       (.I0(\burst_count_reg[16]_0 [12]),
        .I1(incr_id0),
        .I2(burst_count0[12]),
        .O(\burst_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[13]_i_1 
       (.I0(\burst_count_reg[16]_0 [13]),
        .I1(incr_id0),
        .I2(burst_count0[13]),
        .O(\burst_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[14]_i_1 
       (.I0(\burst_count_reg[16]_0 [14]),
        .I1(incr_id0),
        .I2(burst_count0[14]),
        .O(\burst_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[15]_i_1 
       (.I0(\burst_count_reg[16]_0 [15]),
        .I1(incr_id0),
        .I2(burst_count0[15]),
        .O(\burst_count[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \burst_count[16]_i_1 
       (.I0(incr_id0),
        .I1(p_3_in),
        .O(\burst_count[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[16]_i_2 
       (.I0(\burst_count_reg[16]_0 [16]),
        .I1(incr_id0),
        .I2(burst_count0[16]),
        .O(\burst_count[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[1]_i_1 
       (.I0(\burst_count_reg[16]_0 [1]),
        .I1(incr_id0),
        .I2(burst_count0[1]),
        .O(\burst_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[2]_i_1 
       (.I0(\burst_count_reg[16]_0 [2]),
        .I1(incr_id0),
        .I2(burst_count0[2]),
        .O(\burst_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[3]_i_1 
       (.I0(\burst_count_reg[16]_0 [3]),
        .I1(incr_id0),
        .I2(burst_count0[3]),
        .O(\burst_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[4]_i_1 
       (.I0(\burst_count_reg[16]_0 [4]),
        .I1(incr_id0),
        .I2(burst_count0[4]),
        .O(\burst_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[5]_i_1 
       (.I0(\burst_count_reg[16]_0 [5]),
        .I1(incr_id0),
        .I2(burst_count0[5]),
        .O(\burst_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[6]_i_1 
       (.I0(\burst_count_reg[16]_0 [6]),
        .I1(incr_id0),
        .I2(burst_count0[6]),
        .O(\burst_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[7]_i_1 
       (.I0(\burst_count_reg[16]_0 [7]),
        .I1(incr_id0),
        .I2(burst_count0[7]),
        .O(\burst_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[8]_i_1 
       (.I0(\burst_count_reg[16]_0 [8]),
        .I1(incr_id0),
        .I2(burst_count0[8]),
        .O(\burst_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[9]_i_1 
       (.I0(\burst_count_reg[16]_0 [9]),
        .I1(incr_id0),
        .I2(burst_count0[9]),
        .O(\burst_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[0]_i_1_n_0 ),
        .Q(burst_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[10]_i_1_n_0 ),
        .Q(burst_count[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[11]_i_1_n_0 ),
        .Q(burst_count[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[12]_i_1_n_0 ),
        .Q(burst_count[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[13]_i_1_n_0 ),
        .Q(burst_count[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[14]_i_1_n_0 ),
        .Q(burst_count[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[15]_i_1_n_0 ),
        .Q(burst_count[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[16] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[16]_i_2_n_0 ),
        .Q(burst_count[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[1]_i_1_n_0 ),
        .Q(burst_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[2]_i_1_n_0 ),
        .Q(burst_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[3]_i_1_n_0 ),
        .Q(burst_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[4]_i_1_n_0 ),
        .Q(burst_count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[5]_i_1_n_0 ),
        .Q(burst_count[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[6]_i_1_n_0 ),
        .Q(burst_count[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[7]_i_1_n_0 ),
        .Q(burst_count[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[8]_i_1_n_0 ),
        .Q(burst_count[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(\burst_count[16]_i_1_n_0 ),
        .D(\burst_count[9]_i_1_n_0 ),
        .Q(burst_count[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    eot_mem_src_reg_0_15_0_0_i_1
       (.I0(eot_mem_src_reg_0_15_0_0_i_2_n_0),
        .I1(burst_count[15]),
        .I2(burst_count[16]),
        .I3(burst_count[14]),
        .I4(burst_count[13]),
        .I5(eot_mem_src_reg_0_15_0_0_i_3_n_0),
        .O(request_eot));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_src_reg_0_15_0_0_i_2
       (.I0(burst_count[10]),
        .I1(burst_count[9]),
        .I2(burst_count[12]),
        .I3(burst_count[11]),
        .O(eot_mem_src_reg_0_15_0_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    eot_mem_src_reg_0_15_0_0_i_3
       (.I0(eot_mem_src_reg_0_15_0_0_i_4_n_0),
        .I1(burst_count[5]),
        .I2(burst_count[6]),
        .I3(burst_count[7]),
        .I4(burst_count[8]),
        .O(eot_mem_src_reg_0_15_0_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    eot_mem_src_reg_0_15_0_0_i_4
       (.I0(burst_count[4]),
        .I1(burst_count[3]),
        .I2(burst_count[0]),
        .I3(burst_count[1]),
        .I4(burst_count[2]),
        .O(eot_mem_src_reg_0_15_0_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__2 
       (.I0(\id_reg[3]_0 [1]),
        .I1(\id_reg[3]_0 [3]),
        .I2(\id_reg[3]_0 [2]),
        .O(\id[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1__0 
       (.I0(\id_reg[3]_0 [2]),
        .I1(\id_reg[3]_0 [3]),
        .I2(\id_reg[3]_0 [1]),
        .I3(\id_reg[3]_0 [0]),
        .O(b2g3_return01_out));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \id[2]_i_1__0 
       (.I0(\id_reg[3]_0 [3]),
        .I1(\id_reg[3]_0 [0]),
        .I2(\id_reg[3]_0 [2]),
        .I3(\id_reg[3]_0 [1]),
        .O(b2g3_return03_out));
  LUT2 #(
    .INIT(4'h8)) 
    \id[3]_i_1__0 
       (.I0(incr_id0),
        .I1(p_3_in),
        .O(id));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \id[3]_i_2__0 
       (.I0(\id_reg[3]_0 [1]),
        .I1(\id_reg[3]_0 [2]),
        .I2(\id_reg[3]_0 [0]),
        .I3(\id_reg[3]_0 [3]),
        .O(p_1_in2_in));
  FDRE \id_reg[0] 
       (.C(s_axi_aclk),
        .CE(id),
        .D(\id[0]_i_1__2_n_0 ),
        .Q(\id_reg[3]_0 [0]),
        .R(Q));
  FDRE \id_reg[1] 
       (.C(s_axi_aclk),
        .CE(id),
        .D(b2g3_return01_out),
        .Q(\id_reg[3]_0 [1]),
        .R(Q));
  FDRE \id_reg[2] 
       (.C(s_axi_aclk),
        .CE(id),
        .D(b2g3_return03_out),
        .Q(\id_reg[3]_0 [2]),
        .R(Q));
  FDRE \id_reg[3] 
       (.C(s_axi_aclk),
        .CE(id),
        .D(p_1_in2_in),
        .Q(\id_reg[3]_0 [3]),
        .R(Q));
  LUT6 #(
    .INIT(64'hFFDF00DF00DF00DF)) 
    req_ready_i_1__1
       (.I0(dma_req_valid),
        .I1(src_req_spltr_valid),
        .I2(req_ready_reg_0),
        .I3(incr_id0),
        .I4(request_eot),
        .I5(p_3_in),
        .O(req_ready_i_1__1_n_0));
  FDRE req_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1__1_n_0),
        .Q(req_ready_reg_0),
        .R(Q));
  LUT5 #(
    .INIT(32'hBEBEBE00)) 
    \src_throttled_request_id[3]_i_1 
       (.I0(\src_throttled_request_id[3]_i_3_n_0 ),
        .I1(\id_reg[3]_0 [3]),
        .I2(\src_throttled_request_id_reg[0] [3]),
        .I3(\src_throttled_request_id_reg[0]_0 ),
        .I4(\src_throttled_request_id_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \src_throttled_request_id[3]_i_3 
       (.I0(\src_throttled_request_id_reg[0] [0]),
        .I1(\id_reg[3]_0 [0]),
        .I2(\id_reg[3]_0 [2]),
        .I3(\src_throttled_request_id_reg[0] [2]),
        .I4(\id_reg[3]_0 [1]),
        .I5(\src_throttled_request_id_reg[0] [1]),
        .O(\src_throttled_request_id[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h70707F7070707070)) 
    \state[0]_i_1 
       (.I0(p_3_in),
        .I1(request_eot),
        .I2(incr_id0),
        .I3(req_ready_reg_0),
        .I4(src_req_spltr_valid),
        .I5(dma_req_valid),
        .O(nx_state__0));
  LUT6 #(
    .INIT(64'hF6FFFFF600000000)) 
    \state[0]_i_2 
       (.I0(response_id[0]),
        .I1(\id[0]_i_1__2_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(p_1_in2_in),
        .I4(response_id[3]),
        .I5(\burst_count_reg[0]_0 ),
        .O(p_3_in));
  LUT6 #(
    .INIT(64'h7BD7EDD77BBBEDEE)) 
    \state[0]_i_4 
       (.I0(response_id[1]),
        .I1(response_id[2]),
        .I2(\id_reg[3]_0 [3]),
        .I3(\id_reg[3]_0 [0]),
        .I4(\id_reg[3]_0 [2]),
        .I5(\id_reg[3]_0 [1]),
        .O(\state[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0),
        .Q(incr_id0),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "dmac_response_generator" *) 
module zed_axi_dmac_0_0_dmac_response_generator
   (\response_id_reg[3]_0 ,
    \response_id_reg[2]_0 ,
    \response_id_reg[1]_0 ,
    \response_id_reg[0]_0 ,
    enabled_reg_0,
    dest_response_valid,
    enabled_reg_1,
    \response_id_reg[0]_1 ,
    \response_id_reg[1]_1 ,
    \response_id_reg[2]_1 ,
    \response_id_reg[3]_1 ,
    Q,
    id0,
    m_axis_aclk,
    enabled_reg_2,
    enabled_reg_3,
    \up_rdata_reg[27] ,
    \up_rdata_reg[27]_0 ,
    m_src_axi_araddr,
    enabled_reg_4,
    enabled_reg_5,
    data_enabled);
  output \response_id_reg[3]_0 ;
  output \response_id_reg[2]_0 ;
  output \response_id_reg[1]_0 ;
  output \response_id_reg[0]_0 ;
  output enabled_reg_0;
  output dest_response_valid;
  output enabled_reg_1;
  output \response_id_reg[0]_1 ;
  output \response_id_reg[1]_1 ;
  output \response_id_reg[2]_1 ;
  output \response_id_reg[3]_1 ;
  input [0:0]Q;
  input id0;
  input m_axis_aclk;
  input enabled_reg_2;
  input enabled_reg_3;
  input \up_rdata_reg[27] ;
  input \up_rdata_reg[27]_0 ;
  input [4:0]m_src_axi_araddr;
  input enabled_reg_4;
  input enabled_reg_5;
  input data_enabled;

  wire [0:0]Q;
  wire \cdc_sync_fifo_ram[0]_i_3__0_n_0 ;
  wire data_enabled;
  wire dest_response_valid;
  wire enabled_i_1_n_0;
  wire enabled_i_2__0_n_0;
  wire enabled_reg_0;
  wire enabled_reg_1;
  wire enabled_reg_2;
  wire enabled_reg_3;
  wire enabled_reg_4;
  wire enabled_reg_5;
  wire id0;
  wire [2:1]inc_id0_return;
  wire m_axis_aclk;
  wire [4:0]m_src_axi_araddr;
  wire \response_id[0]_i_1_n_0 ;
  wire \response_id[3]_i_2_n_0 ;
  wire \response_id_reg[0]_0 ;
  wire \response_id_reg[0]_1 ;
  wire \response_id_reg[1]_0 ;
  wire \response_id_reg[1]_1 ;
  wire \response_id_reg[2]_0 ;
  wire \response_id_reg[2]_1 ;
  wire \response_id_reg[3]_0 ;
  wire \response_id_reg[3]_1 ;
  wire \up_rdata_reg[27] ;
  wire \up_rdata_reg[27]_0 ;

  LUT6 #(
    .INIT(64'hF6FFFFF600000000)) 
    \cdc_sync_fifo_ram[0]_i_2 
       (.I0(enabled_reg_2),
        .I1(\response_id_reg[0]_0 ),
        .I2(\cdc_sync_fifo_ram[0]_i_3__0_n_0 ),
        .I3(\response_id_reg[3]_0 ),
        .I4(enabled_reg_3),
        .I5(enabled_reg_0),
        .O(dest_response_valid));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \cdc_sync_fifo_ram[0]_i_3__0 
       (.I0(enabled_reg_4),
        .I1(\response_id_reg[1]_0 ),
        .I2(enabled_reg_5),
        .I3(\response_id_reg[2]_0 ),
        .O(\cdc_sync_fifo_ram[0]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFAAAA)) 
    enabled_i_1
       (.I0(data_enabled),
        .I1(\response_id_reg[3]_0 ),
        .I2(enabled_reg_3),
        .I3(enabled_i_2__0_n_0),
        .I4(enabled_reg_0),
        .O(enabled_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    enabled_i_2__0
       (.I0(enabled_reg_4),
        .I1(\response_id_reg[1]_0 ),
        .I2(enabled_reg_5),
        .I3(\response_id_reg[2]_0 ),
        .I4(enabled_reg_2),
        .I5(\response_id_reg[0]_0 ),
        .O(enabled_i_2__0_n_0));
  FDRE enabled_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(enabled_i_1_n_0),
        .Q(enabled_reg_0),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \response_id[0]_i_1 
       (.I0(\response_id_reg[1]_0 ),
        .I1(\response_id_reg[3]_0 ),
        .I2(\response_id_reg[2]_0 ),
        .O(\response_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \response_id[1]_i_1 
       (.I0(\response_id_reg[2]_0 ),
        .I1(\response_id_reg[3]_0 ),
        .I2(\response_id_reg[1]_0 ),
        .I3(\response_id_reg[0]_0 ),
        .O(inc_id0_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \response_id[2]_i_1 
       (.I0(\response_id_reg[3]_0 ),
        .I1(\response_id_reg[0]_0 ),
        .I2(\response_id_reg[2]_0 ),
        .I3(\response_id_reg[1]_0 ),
        .O(inc_id0_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \response_id[3]_i_2 
       (.I0(\response_id_reg[1]_0 ),
        .I1(\response_id_reg[2]_0 ),
        .I2(\response_id_reg[0]_0 ),
        .I3(\response_id_reg[3]_0 ),
        .O(\response_id[3]_i_2_n_0 ));
  FDRE \response_id_reg[0] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(\response_id[0]_i_1_n_0 ),
        .Q(\response_id_reg[0]_0 ),
        .R(Q));
  FDRE \response_id_reg[1] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(inc_id0_return[1]),
        .Q(\response_id_reg[1]_0 ),
        .R(Q));
  FDRE \response_id_reg[2] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(inc_id0_return[2]),
        .Q(\response_id_reg[2]_0 ),
        .R(Q));
  FDRE \response_id_reg[3] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(\response_id[3]_i_2_n_0 ),
        .Q(\response_id_reg[3]_0 ),
        .R(Q));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[24]_i_3 
       (.I0(\response_id_reg[0]_0 ),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_src_axi_araddr[1]),
        .O(\response_id_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[25]_i_3 
       (.I0(\response_id_reg[1]_0 ),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_src_axi_araddr[2]),
        .O(\response_id_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[26]_i_3 
       (.I0(\response_id_reg[2]_0 ),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_src_axi_araddr[3]),
        .O(\response_id_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \up_rdata[27]_i_3 
       (.I0(\response_id_reg[3]_0 ),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_src_axi_araddr[4]),
        .O(\response_id_reg[3]_1 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \up_rdata[4]_i_3 
       (.I0(enabled_reg_0),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata_reg[27]_0 ),
        .I3(m_src_axi_araddr[0]),
        .O(enabled_reg_1));
endmodule

(* ORIG_REF_NAME = "dmac_src_mm_axi" *) 
module zed_axi_dmac_0_0_dmac_src_mm_axi
   (addr_valid_reg,
    \id_reg[3]_0 ,
    \id_reg[2]_0 ,
    \id_reg[1]_0 ,
    \id_reg[0]_0 ,
    m_src_axi_araddr,
    dbg_status,
    src_req_dest_address_cur0,
    \id_reg[3]_1 ,
    enabled_reg_0,
    m_axis_raddr_reg,
    m_src_axi_arlen,
    m_src_axi_aclk,
    Q,
    src_address_eot,
    addr_valid_reg_0,
    enabled_reg_1,
    m_src_axi_arready,
    src_req_spltr_valid,
    dest_req_valid,
    \address_reg[25] ,
    \up_rdata_reg[5] ,
    \up_rdata_reg[5]_0 ,
    m_axis_raddr_reg_0,
    g0);
  output addr_valid_reg;
  output \id_reg[3]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[0]_0 ;
  output [25:0]m_src_axi_araddr;
  output [0:0]dbg_status;
  output src_req_dest_address_cur0;
  output [3:0]\id_reg[3]_1 ;
  output enabled_reg_0;
  output m_axis_raddr_reg;
  output [3:0]m_src_axi_arlen;
  input m_src_axi_aclk;
  input [0:0]Q;
  input src_address_eot;
  input [3:0]addr_valid_reg_0;
  input enabled_reg_1;
  input m_src_axi_arready;
  input src_req_spltr_valid;
  input dest_req_valid;
  input [29:0]\address_reg[25] ;
  input \up_rdata_reg[5] ;
  input \up_rdata_reg[5]_0 ;
  input m_axis_raddr_reg_0;
  input g0;

  wire [0:0]Q;
  wire [1:0]acked;
  wire addr_valid_reg;
  wire [3:0]addr_valid_reg_0;
  wire [29:0]\address_reg[25] ;
  wire b2g_return00_out;
  wire b2g_return01_out;
  wire bl_ready_ag;
  wire [0:0]dbg_status;
  wire dest_req_valid;
  wire enabled_reg_0;
  wire enabled_reg_1;
  wire g0;
  wire i_addr_gen_n_34;
  wire \i_src_req_fifo/m_axis_raddr0 ;
  wire \id[0]_i_1__1_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3]_0 ;
  wire [3:0]\id_reg[3]_1 ;
  wire last_burst_len0;
  wire m_axis_raddr_reg;
  wire m_axis_raddr_reg_0;
  wire m_src_axi_aclk;
  wire [25:0]m_src_axi_araddr;
  wire [3:0]m_src_axi_arlen;
  wire m_src_axi_arready;
  wire p_3_in;
  wire req_ready_ag;
  wire src_address_eot;
  wire src_req_dest_address_cur0;
  wire src_req_spltr_valid;
  wire \up_rdata_reg[5] ;
  wire \up_rdata_reg[5]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    enabled_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(i_addr_gen_n_34),
        .Q(dbg_status),
        .R(Q));
  zed_axi_dmac_0_0_dmac_address_generator i_addr_gen
       (.E(last_burst_len0),
        .Q(Q),
        .acked(acked),
        .addr_valid_reg_0(addr_valid_reg),
        .addr_valid_reg_1(addr_valid_reg_0),
        .\address_reg[25]_0 (\address_reg[25] ),
        .bl_ready_ag(bl_ready_ag),
        .dbg_status(dbg_status),
        .enabled_reg_0(enabled_reg_0),
        .enabled_reg_1(i_addr_gen_n_34),
        .enabled_reg_2(enabled_reg_1),
        .enabled_reg_3(\id_reg[3]_1 ),
        .\id_reg[0]_0 (\id_reg[0]_0 ),
        .\id_reg[1]_0 (\id_reg[1]_0 ),
        .\id_reg[2]_0 (\id_reg[2]_0 ),
        .\id_reg[3]_0 (\id_reg[3]_0 ),
        .m_axis_raddr0(\i_src_req_fifo/m_axis_raddr0 ),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(m_src_axi_araddr),
        .m_src_axi_arlen(m_src_axi_arlen),
        .m_src_axi_arready(m_src_axi_arready),
        .req_ready_ag(req_ready_ag),
        .src_address_eot(src_address_eot),
        .\up_rdata_reg[5] (\up_rdata_reg[5] ),
        .\up_rdata_reg[5]_0 (\up_rdata_reg[5]_0 ));
  zed_axi_dmac_0_0_splitter i_req_splitter
       (.E(last_burst_len0),
        .Q(Q),
        .acked(acked),
        .bl_ready_ag(bl_ready_ag),
        .dest_req_valid(dest_req_valid),
        .m_axis_raddr0(\i_src_req_fifo/m_axis_raddr0 ),
        .m_axis_raddr_reg(m_axis_raddr_reg),
        .m_axis_raddr_reg_0(m_axis_raddr_reg_0),
        .m_src_axi_aclk(m_src_axi_aclk),
        .req_ready_ag(req_ready_ag),
        .src_req_dest_address_cur0(src_req_dest_address_cur0),
        .src_req_spltr_valid(src_req_spltr_valid));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__1 
       (.I0(\id_reg[3]_1 [1]),
        .I1(\id_reg[3]_1 [3]),
        .I2(\id_reg[3]_1 [2]),
        .O(\id[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1 
       (.I0(\id_reg[3]_1 [2]),
        .I1(\id_reg[3]_1 [3]),
        .I2(\id_reg[3]_1 [1]),
        .I3(\id_reg[3]_1 [0]),
        .O(b2g_return00_out));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \id[2]_i_1 
       (.I0(\id_reg[3]_1 [3]),
        .I1(\id_reg[3]_1 [0]),
        .I2(\id_reg[3]_1 [2]),
        .I3(\id_reg[3]_1 [1]),
        .O(b2g_return01_out));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \id[3]_i_1__2 
       (.I0(\id_reg[3]_1 [1]),
        .I1(\id_reg[3]_1 [2]),
        .I2(\id_reg[3]_1 [0]),
        .I3(\id_reg[3]_1 [3]),
        .O(p_3_in));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(\id[0]_i_1__1_n_0 ),
        .Q(\id_reg[3]_1 [0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(b2g_return00_out),
        .Q(\id_reg[3]_1 [1]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(b2g_return01_out),
        .Q(\id_reg[3]_1 [2]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(p_3_in),
        .Q(\id_reg[3]_1 [3]),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "fifo_address_sync" *) 
module zed_axi_dmac_0_0_fifo_address_sync
   (SR,
    E,
    m_axis_valid_reg_0,
    req_response_valid_reg,
    Q,
    s_axi_aclk,
    up_tlf_valid,
    p_8_in,
    \level_reg[1]_0 ,
    up_response_valid,
    response_ready_reg);
  output [0:0]SR;
  output [0:0]E;
  output m_axis_valid_reg_0;
  output req_response_valid_reg;
  output [1:0]Q;
  input s_axi_aclk;
  input up_tlf_valid;
  input p_8_in;
  input \level_reg[1]_0 ;
  input up_response_valid;
  input response_ready_reg;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire _m_axis_valid;
  wire [2:0]level;
  wire \level[0]_i_2_n_0 ;
  wire \level[1]_i_1_n_0 ;
  wire \level[2]_i_2_n_0 ;
  wire \level_reg[1]_0 ;
  wire m_axis_valid_i_1_n_0;
  wire m_axis_valid_reg_0;
  wire [1:0]p_2_in;
  wire p_8_in;
  wire req_response_valid_reg;
  wire response_ready_reg;
  wire s_axi_aclk;
  wire s_axis_ready_i_1_n_0;
  wire up_response_valid;
  wire up_tlf_s_ready;
  wire up_tlf_valid;

  LUT1 #(
    .INIT(2'h1)) 
    \level[0]_i_1 
       (.I0(\level_reg[1]_0 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \level[0]_i_2 
       (.I0(up_tlf_valid),
        .I1(p_8_in),
        .I2(_m_axis_valid),
        .I3(level[0]),
        .O(\level[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \level[1]_i_1 
       (.I0(level[0]),
        .I1(level[1]),
        .O(\level[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \level[2]_i_1 
       (.I0(up_tlf_valid),
        .I1(p_8_in),
        .I2(_m_axis_valid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \level[2]_i_2 
       (.I0(level[1]),
        .I1(level[0]),
        .I2(level[2]),
        .O(\level[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \level_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\level[0]_i_2_n_0 ),
        .Q(level[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \level_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\level[1]_i_1_n_0 ),
        .Q(level[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \level_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\level[2]_i_2_n_0 ),
        .Q(level[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_raddr[0]_i_1 
       (.I0(Q[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_raddr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_2_in[1]));
  FDRE \m_axis_raddr_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_2_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \m_axis_raddr_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF2FFFD0)) 
    m_axis_valid_i_1
       (.I0(up_tlf_valid),
        .I1(p_8_in),
        .I2(_m_axis_valid),
        .I3(level[1]),
        .I4(level[0]),
        .I5(level[2]),
        .O(m_axis_valid_i_1_n_0));
  FDRE m_axis_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(m_axis_valid_i_1_n_0),
        .Q(_m_axis_valid),
        .R(SR));
  LUT3 #(
    .INIT(8'h74)) 
    response_ready_i_1
       (.I0(up_response_valid),
        .I1(response_ready_reg),
        .I2(up_tlf_s_ready),
        .O(req_response_valid_reg));
  LUT6 #(
    .INIT(64'hFFFF2FD0FFFFFFFF)) 
    s_axis_ready_i_1
       (.I0(up_tlf_valid),
        .I1(p_8_in),
        .I2(_m_axis_valid),
        .I3(level[0]),
        .I4(level[1]),
        .I5(level[2]),
        .O(s_axis_ready_i_1_n_0));
  FDRE s_axis_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axis_ready_i_1_n_0),
        .Q(up_tlf_s_ready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    valid_i_1
       (.I0(_m_axis_valid),
        .I1(up_tlf_valid),
        .I2(p_8_in),
        .O(m_axis_valid_reg_0));
endmodule

(* ORIG_REF_NAME = "splitter" *) 
module zed_axi_dmac_0_0_splitter
   (src_req_dest_address_cur0,
    m_axis_raddr0,
    acked,
    E,
    m_axis_raddr_reg,
    bl_ready_ag,
    req_ready_ag,
    src_req_spltr_valid,
    dest_req_valid,
    m_axis_raddr_reg_0,
    Q,
    m_src_axi_aclk);
  output src_req_dest_address_cur0;
  output m_axis_raddr0;
  output [1:0]acked;
  output [0:0]E;
  output m_axis_raddr_reg;
  input bl_ready_ag;
  input req_ready_ag;
  input src_req_spltr_valid;
  input dest_req_valid;
  input m_axis_raddr_reg_0;
  input [0:0]Q;
  input m_src_axi_aclk;

  wire [0:0]E;
  wire [0:0]Q;
  wire [1:0]acked;
  wire \acked[0]_i_1_n_0 ;
  wire \acked[1]_i_1_n_0 ;
  wire bl_ready_ag;
  wire dest_req_valid;
  wire m_axis_raddr0;
  wire m_axis_raddr_reg;
  wire m_axis_raddr_reg_0;
  wire m_src_axi_aclk;
  wire req_ready_ag;
  wire src_req_dest_address_cur0;
  wire src_req_spltr_valid;

  LUT6 #(
    .INIT(64'h0000000057570200)) 
    \acked[0]_i_1 
       (.I0(m_axis_raddr0),
        .I1(bl_ready_ag),
        .I2(acked[1]),
        .I3(req_ready_ag),
        .I4(acked[0]),
        .I5(Q),
        .O(\acked[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000505050F8)) 
    \acked[1]_i_1 
       (.I0(m_axis_raddr0),
        .I1(bl_ready_ag),
        .I2(acked[1]),
        .I3(req_ready_ag),
        .I4(acked[0]),
        .I5(Q),
        .O(\acked[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220222022200000)) 
    \acked[1]_i_2 
       (.I0(src_req_spltr_valid),
        .I1(dest_req_valid),
        .I2(acked[0]),
        .I3(req_ready_ag),
        .I4(acked[1]),
        .I5(bl_ready_ag),
        .O(m_axis_raddr0));
  FDRE \acked_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(\acked[0]_i_1_n_0 ),
        .Q(acked[0]),
        .R(1'b0));
  FDRE \acked_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(\acked[1]_i_1_n_0 ),
        .Q(acked[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \last_burst_len[3]_i_1 
       (.I0(acked[1]),
        .I1(m_axis_raddr0),
        .I2(bl_ready_ag),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_raddr_i_1__0
       (.I0(m_axis_raddr0),
        .I1(m_axis_raddr_reg_0),
        .O(m_axis_raddr_reg));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hA8A8A800)) 
    src_req_xlast_cur_i_2
       (.I0(m_axis_raddr0),
        .I1(bl_ready_ag),
        .I2(acked[1]),
        .I3(req_ready_ag),
        .I4(acked[0]),
        .O(src_req_dest_address_cur0));
endmodule

(* ORIG_REF_NAME = "up_axi" *) 
module zed_axi_dmac_0_0_up_axi
   (up_wreq,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    up_rreq,
    s_axi_arready,
    up_axi_rvalid_int_reg_0,
    up_dma_req_valid_reg,
    Q,
    D,
    up_wreq_int_reg_0,
    up_wreq_int_reg_1,
    up_wreq_int_reg_2,
    up_wreq_int_reg_3,
    \up_waddr_int_reg[3]_0 ,
    p_8_in,
    \up_raddr_int_reg[4]_0 ,
    \up_scratch_reg[31] ,
    \up_raddr_int_reg[7]_0 ,
    \up_raddr_int_reg[3]_0 ,
    \up_waddr_int_reg[8]_0 ,
    \up_waddr_int_reg[0]_0 ,
    \up_wdata_int_reg[1]_0 ,
    \up_wdata_int_reg[0]_0 ,
    \up_wdata_int_reg[2]_0 ,
    \up_wdata_int_reg[1]_1 ,
    \up_wdata_int_reg[0]_1 ,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    up_dma_req_valid,
    s_axi_aresetn,
    up_sot,
    ctrl_enable_reg,
    up_req_eot,
    up_dma_cyclic,
    E,
    \up_irq_source_reg[1] ,
    up_wack,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    up_rack,
    s_axi_arvalid,
    \up_rdata_d_reg[31]_0 ,
    \up_rdata_reg[31] ,
    \up_rdata[1]_i_4_0 ,
    \up_rdata_reg[31]_0 ,
    \up_rdata_reg[27] ,
    dbg_ids1,
    \up_rdata_reg[27]_0 ,
    \up_rdata_reg[28] ,
    \up_rdata_reg[26] ,
    \up_rdata_reg[26]_0 ,
    \up_rdata_reg[25] ,
    \up_rdata_reg[25]_0 ,
    \up_rdata_reg[24] ,
    \up_rdata_reg[24]_0 ,
    \up_rdata_reg[19] ,
    \up_rdata_reg[19]_0 ,
    \up_rdata_reg[19]_1 ,
    \up_rdata_reg[18] ,
    \up_rdata_reg[18]_0 ,
    \up_rdata_reg[18]_1 ,
    \up_rdata_reg[17] ,
    \up_rdata_reg[17]_0 ,
    \up_rdata_reg[17]_1 ,
    \up_rdata_reg[16] ,
    \up_rdata_reg[16]_0 ,
    \up_rdata_reg[16]_1 ,
    \up_rdata_reg[11] ,
    \up_rdata_reg[11]_0 ,
    \up_rdata_reg[11]_1 ,
    \up_rdata_reg[10] ,
    \up_rdata_reg[10]_0 ,
    \up_rdata_reg[10]_1 ,
    \up_rdata_reg[9] ,
    \up_rdata_reg[9]_0 ,
    \up_rdata_reg[9]_1 ,
    \up_rdata_reg[8] ,
    \up_rdata_reg[8]_0 ,
    \up_rdata_reg[8]_1 ,
    \up_rdata_reg[6] ,
    \up_rdata_reg[5] ,
    \up_rdata_reg[4] ,
    \up_rdata_reg[3] ,
    \up_rdata_reg[2] ,
    \up_rdata_reg[0] ,
    \up_rdata_reg[1] ,
    \up_rdata[3]_i_4_0 ,
    \up_rdata[3]_i_4_1 ,
    \up_rdata[3]_i_4_2 ,
    \up_rdata[3]_i_4_3 ,
    \up_rdata[1]_i_4_1 ,
    \up_rdata[0]_i_4_0 ,
    \up_rdata[31]_i_6_0 ,
    dbg_ids0,
    dbg_status,
    ctrl_pause,
    up_transfer_id,
    \up_rdata_reg[4]_0 ,
    \up_rdata_reg[5]_0 ,
    \up_rdata_reg[6]_0 ,
    \up_rdata_reg[7] ,
    \up_rdata_reg[12] ,
    \up_rdata_reg[13] ,
    \up_rdata_reg[14] ,
    \up_rdata_reg[15] ,
    \up_rdata_reg[20] ,
    \up_rdata_reg[21] ,
    \up_rdata_reg[22] ,
    \up_rdata_reg[23] ,
    \up_rdata_reg[28]_0 ,
    s_axi_rready,
    up_dma_last,
    p_3_in,
    \up_rdata_reg[7]_0 ,
    m_src_axi_araddr,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_araddr);
  output up_wreq;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output up_rreq;
  output s_axi_arready;
  output up_axi_rvalid_int_reg_0;
  output up_dma_req_valid_reg;
  output [31:0]Q;
  output [1:0]D;
  output [0:0]up_wreq_int_reg_0;
  output [0:0]up_wreq_int_reg_1;
  output up_wreq_int_reg_2;
  output [0:0]up_wreq_int_reg_3;
  output [0:0]\up_waddr_int_reg[3]_0 ;
  output p_8_in;
  output [4:0]\up_raddr_int_reg[4]_0 ;
  output [31:0]\up_scratch_reg[31] ;
  output \up_raddr_int_reg[7]_0 ;
  output \up_raddr_int_reg[3]_0 ;
  output [0:0]\up_waddr_int_reg[8]_0 ;
  output [0:0]\up_waddr_int_reg[0]_0 ;
  output \up_wdata_int_reg[1]_0 ;
  output \up_wdata_int_reg[0]_0 ;
  output \up_wdata_int_reg[2]_0 ;
  output \up_wdata_int_reg[1]_1 ;
  output \up_wdata_int_reg[0]_1 ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input up_dma_req_valid;
  input s_axi_aresetn;
  input up_sot;
  input ctrl_enable_reg;
  input up_req_eot;
  input up_dma_cyclic;
  input [0:0]E;
  input [1:0]\up_irq_source_reg[1] ;
  input up_wack;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input up_rack;
  input s_axi_arvalid;
  input [31:0]\up_rdata_d_reg[31]_0 ;
  input [31:0]\up_rdata_reg[31] ;
  input [5:0]\up_rdata[1]_i_4_0 ;
  input [5:0]\up_rdata_reg[31]_0 ;
  input \up_rdata_reg[27] ;
  input [11:0]dbg_ids1;
  input \up_rdata_reg[27]_0 ;
  input [25:0]\up_rdata_reg[28] ;
  input \up_rdata_reg[26] ;
  input \up_rdata_reg[26]_0 ;
  input \up_rdata_reg[25] ;
  input \up_rdata_reg[25]_0 ;
  input \up_rdata_reg[24] ;
  input \up_rdata_reg[24]_0 ;
  input \up_rdata_reg[19] ;
  input \up_rdata_reg[19]_0 ;
  input \up_rdata_reg[19]_1 ;
  input \up_rdata_reg[18] ;
  input \up_rdata_reg[18]_0 ;
  input \up_rdata_reg[18]_1 ;
  input \up_rdata_reg[17] ;
  input \up_rdata_reg[17]_0 ;
  input \up_rdata_reg[17]_1 ;
  input \up_rdata_reg[16] ;
  input \up_rdata_reg[16]_0 ;
  input \up_rdata_reg[16]_1 ;
  input \up_rdata_reg[11] ;
  input \up_rdata_reg[11]_0 ;
  input \up_rdata_reg[11]_1 ;
  input \up_rdata_reg[10] ;
  input \up_rdata_reg[10]_0 ;
  input \up_rdata_reg[10]_1 ;
  input \up_rdata_reg[9] ;
  input \up_rdata_reg[9]_0 ;
  input \up_rdata_reg[9]_1 ;
  input \up_rdata_reg[8] ;
  input \up_rdata_reg[8]_0 ;
  input \up_rdata_reg[8]_1 ;
  input \up_rdata_reg[6] ;
  input \up_rdata_reg[5] ;
  input \up_rdata_reg[4] ;
  input \up_rdata_reg[3] ;
  input \up_rdata_reg[2] ;
  input \up_rdata_reg[0] ;
  input \up_rdata_reg[1] ;
  input \up_rdata[3]_i_4_0 ;
  input [0:0]\up_rdata[3]_i_4_1 ;
  input [2:0]\up_rdata[3]_i_4_2 ;
  input [0:0]\up_rdata[3]_i_4_3 ;
  input \up_rdata[1]_i_4_1 ;
  input \up_rdata[0]_i_4_0 ;
  input [3:0]\up_rdata[31]_i_6_0 ;
  input [2:0]dbg_ids0;
  input [2:0]dbg_status;
  input ctrl_pause;
  input [1:0]up_transfer_id;
  input \up_rdata_reg[4]_0 ;
  input \up_rdata_reg[5]_0 ;
  input \up_rdata_reg[6]_0 ;
  input \up_rdata_reg[7] ;
  input \up_rdata_reg[12] ;
  input \up_rdata_reg[13] ;
  input \up_rdata_reg[14] ;
  input \up_rdata_reg[15] ;
  input \up_rdata_reg[20] ;
  input \up_rdata_reg[21] ;
  input \up_rdata_reg[22] ;
  input \up_rdata_reg[23] ;
  input \up_rdata_reg[28]_0 ;
  input s_axi_rready;
  input up_dma_last;
  input [0:0]p_3_in;
  input \up_rdata_reg[7]_0 ;
  input [8:0]m_src_axi_araddr;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;

  wire [1:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire ctrl_enable_i_2_n_0;
  wire ctrl_enable_i_3_n_0;
  wire ctrl_enable_reg;
  wire ctrl_pause;
  wire [31:0]data10;
  wire [2:0]dbg_ids0;
  wire [11:0]dbg_ids1;
  wire [2:0]dbg_status;
  wire \i_regmap_request/up_dma_cyclic ;
  wire \i_regmap_request/up_dma_req_valid0 ;
  wire \level[0]_i_4_n_0 ;
  wire \level[0]_i_5_n_0 ;
  wire [8:0]m_src_axi_araddr;
  wire p_0_in6_in;
  wire p_0_in7_in;
  wire p_1_in;
  wire [0:0]p_3_in;
  wire p_5_in;
  wire p_8_in;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire up_axi_arready_int_i_1_n_0;
  wire up_axi_awready_int_i_2_n_0;
  wire up_axi_bvalid_int_i_1_n_0;
  wire \up_axi_rdata_int[31]_i_1_n_0 ;
  wire up_axi_rvalid_int_i_1_n_0;
  wire up_axi_rvalid_int_reg_0;
  wire up_axi_wready_int_i_1_n_0;
  wire up_dma_cyclic;
  wire \up_dma_dest_stride[23]_i_2_n_0 ;
  wire up_dma_last;
  wire up_dma_req_valid;
  wire up_dma_req_valid_reg;
  wire \up_dma_src_address[28]_i_2_n_0 ;
  wire \up_dma_src_stride[23]_i_2_n_0 ;
  wire \up_dma_x_length[23]_i_2_n_0 ;
  wire \up_dma_x_length[23]_i_3_n_0 ;
  wire \up_dma_y_length[23]_i_2_n_0 ;
  wire \up_irq_mask[1]_i_3_n_0 ;
  wire \up_irq_mask[1]_i_4_n_0 ;
  wire \up_irq_source[1]_i_3_n_0 ;
  wire up_irq_source_clear1__6;
  wire [1:0]\up_irq_source_reg[1] ;
  wire up_rack;
  wire up_rack_d;
  wire up_rack_s;
  wire [8:5]up_raddr;
  wire \up_raddr_int_reg[3]_0 ;
  wire [4:0]\up_raddr_int_reg[4]_0 ;
  wire \up_raddr_int_reg[7]_0 ;
  wire \up_rcount[0]_i_1_n_0 ;
  wire \up_rcount[1]_i_1_n_0 ;
  wire \up_rcount[2]_i_1_n_0 ;
  wire \up_rcount[3]_i_1_n_0 ;
  wire \up_rcount[4]_i_1_n_0 ;
  wire \up_rcount[4]_i_2_n_0 ;
  wire \up_rcount_reg_n_0_[0] ;
  wire \up_rcount_reg_n_0_[1] ;
  wire \up_rcount_reg_n_0_[2] ;
  wire \up_rcount_reg_n_0_[3] ;
  wire \up_rdata[0]_i_2_n_0 ;
  wire \up_rdata[0]_i_3_n_0 ;
  wire \up_rdata[0]_i_4_0 ;
  wire \up_rdata[0]_i_5_n_0 ;
  wire \up_rdata[0]_i_6_n_0 ;
  wire \up_rdata[0]_i_7_n_0 ;
  wire \up_rdata[0]_i_8_n_0 ;
  wire \up_rdata[10]_i_2_n_0 ;
  wire \up_rdata[10]_i_7_n_0 ;
  wire \up_rdata[11]_i_2_n_0 ;
  wire \up_rdata[11]_i_7_n_0 ;
  wire \up_rdata[12]_i_2_n_0 ;
  wire \up_rdata[12]_i_3_n_0 ;
  wire \up_rdata[12]_i_4_n_0 ;
  wire \up_rdata[13]_i_2_n_0 ;
  wire \up_rdata[13]_i_3_n_0 ;
  wire \up_rdata[13]_i_4_n_0 ;
  wire \up_rdata[14]_i_2_n_0 ;
  wire \up_rdata[14]_i_3_n_0 ;
  wire \up_rdata[14]_i_4_n_0 ;
  wire \up_rdata[15]_i_2_n_0 ;
  wire \up_rdata[15]_i_3_n_0 ;
  wire \up_rdata[15]_i_4_n_0 ;
  wire \up_rdata[16]_i_2_n_0 ;
  wire \up_rdata[16]_i_7_n_0 ;
  wire \up_rdata[17]_i_2_n_0 ;
  wire \up_rdata[17]_i_7_n_0 ;
  wire \up_rdata[18]_i_2_n_0 ;
  wire \up_rdata[18]_i_7_n_0 ;
  wire \up_rdata[19]_i_2_n_0 ;
  wire \up_rdata[19]_i_7_n_0 ;
  wire \up_rdata[1]_i_2_n_0 ;
  wire \up_rdata[1]_i_3_n_0 ;
  wire [5:0]\up_rdata[1]_i_4_0 ;
  wire \up_rdata[1]_i_4_1 ;
  wire \up_rdata[1]_i_5_n_0 ;
  wire \up_rdata[1]_i_6_n_0 ;
  wire \up_rdata[1]_i_7_n_0 ;
  wire \up_rdata[1]_i_8_n_0 ;
  wire \up_rdata[20]_i_2_n_0 ;
  wire \up_rdata[20]_i_3_n_0 ;
  wire \up_rdata[20]_i_4_n_0 ;
  wire \up_rdata[21]_i_2_n_0 ;
  wire \up_rdata[21]_i_3_n_0 ;
  wire \up_rdata[21]_i_4_n_0 ;
  wire \up_rdata[22]_i_2_n_0 ;
  wire \up_rdata[22]_i_3_n_0 ;
  wire \up_rdata[22]_i_4_n_0 ;
  wire \up_rdata[23]_i_2_n_0 ;
  wire \up_rdata[23]_i_3_n_0 ;
  wire \up_rdata[23]_i_4_n_0 ;
  wire \up_rdata[24]_i_2_n_0 ;
  wire \up_rdata[25]_i_2_n_0 ;
  wire \up_rdata[26]_i_2_n_0 ;
  wire \up_rdata[27]_i_2_n_0 ;
  wire \up_rdata[27]_i_6_n_0 ;
  wire \up_rdata[28]_i_2_n_0 ;
  wire \up_rdata[28]_i_3_n_0 ;
  wire \up_rdata[28]_i_4_n_0 ;
  wire \up_rdata[28]_i_5_n_0 ;
  wire \up_rdata[2]_i_2_n_0 ;
  wire \up_rdata[2]_i_3_n_0 ;
  wire \up_rdata[2]_i_5_n_0 ;
  wire \up_rdata[30]_i_10_n_0 ;
  wire \up_rdata[30]_i_11_n_0 ;
  wire \up_rdata[30]_i_12_n_0 ;
  wire \up_rdata[30]_i_13_n_0 ;
  wire \up_rdata[30]_i_14_n_0 ;
  wire \up_rdata[30]_i_15_n_0 ;
  wire \up_rdata[30]_i_16_n_0 ;
  wire \up_rdata[30]_i_17_n_0 ;
  wire \up_rdata[30]_i_3_n_0 ;
  wire \up_rdata[30]_i_4_n_0 ;
  wire \up_rdata[30]_i_7_n_0 ;
  wire \up_rdata[30]_i_8_n_0 ;
  wire \up_rdata[30]_i_9_n_0 ;
  wire \up_rdata[31]_i_2_n_0 ;
  wire \up_rdata[31]_i_3_n_0 ;
  wire \up_rdata[31]_i_4_n_0 ;
  wire \up_rdata[31]_i_5_n_0 ;
  wire [3:0]\up_rdata[31]_i_6_0 ;
  wire \up_rdata[31]_i_7_n_0 ;
  wire \up_rdata[3]_i_2_n_0 ;
  wire \up_rdata[3]_i_4_0 ;
  wire [0:0]\up_rdata[3]_i_4_1 ;
  wire [2:0]\up_rdata[3]_i_4_2 ;
  wire [0:0]\up_rdata[3]_i_4_3 ;
  wire \up_rdata[3]_i_5_n_0 ;
  wire \up_rdata[3]_i_6_n_0 ;
  wire \up_rdata[3]_i_7_n_0 ;
  wire \up_rdata[4]_i_2_n_0 ;
  wire \up_rdata[4]_i_4_n_0 ;
  wire \up_rdata[5]_i_2_n_0 ;
  wire \up_rdata[5]_i_4_n_0 ;
  wire \up_rdata[6]_i_2_n_0 ;
  wire \up_rdata[6]_i_4_n_0 ;
  wire \up_rdata[7]_i_2_n_0 ;
  wire \up_rdata[7]_i_3_n_0 ;
  wire \up_rdata[7]_i_4_n_0 ;
  wire \up_rdata[8]_i_2_n_0 ;
  wire \up_rdata[8]_i_7_n_0 ;
  wire \up_rdata[9]_i_2_n_0 ;
  wire \up_rdata[9]_i_7_n_0 ;
  wire [31:0]up_rdata_d;
  wire \up_rdata_d[13]_i_1_n_0 ;
  wire \up_rdata_d[17]_i_1_n_0 ;
  wire \up_rdata_d[1]_i_1_n_0 ;
  wire \up_rdata_d[20]_i_1_n_0 ;
  wire \up_rdata_d[22]_i_1_n_0 ;
  wire \up_rdata_d[24]_i_1_n_0 ;
  wire \up_rdata_d[29]_i_1_n_0 ;
  wire \up_rdata_d[4]_i_1_n_0 ;
  wire \up_rdata_d[6]_i_1_n_0 ;
  wire \up_rdata_d[8]_i_1_n_0 ;
  wire [31:0]\up_rdata_d_reg[31]_0 ;
  wire \up_rdata_reg[0] ;
  wire \up_rdata_reg[10] ;
  wire \up_rdata_reg[10]_0 ;
  wire \up_rdata_reg[10]_1 ;
  wire \up_rdata_reg[11] ;
  wire \up_rdata_reg[11]_0 ;
  wire \up_rdata_reg[11]_1 ;
  wire \up_rdata_reg[12] ;
  wire \up_rdata_reg[13] ;
  wire \up_rdata_reg[14] ;
  wire \up_rdata_reg[15] ;
  wire \up_rdata_reg[16] ;
  wire \up_rdata_reg[16]_0 ;
  wire \up_rdata_reg[16]_1 ;
  wire \up_rdata_reg[17] ;
  wire \up_rdata_reg[17]_0 ;
  wire \up_rdata_reg[17]_1 ;
  wire \up_rdata_reg[18] ;
  wire \up_rdata_reg[18]_0 ;
  wire \up_rdata_reg[18]_1 ;
  wire \up_rdata_reg[19] ;
  wire \up_rdata_reg[19]_0 ;
  wire \up_rdata_reg[19]_1 ;
  wire \up_rdata_reg[1] ;
  wire \up_rdata_reg[20] ;
  wire \up_rdata_reg[21] ;
  wire \up_rdata_reg[22] ;
  wire \up_rdata_reg[23] ;
  wire \up_rdata_reg[24] ;
  wire \up_rdata_reg[24]_0 ;
  wire \up_rdata_reg[25] ;
  wire \up_rdata_reg[25]_0 ;
  wire \up_rdata_reg[26] ;
  wire \up_rdata_reg[26]_0 ;
  wire \up_rdata_reg[27] ;
  wire \up_rdata_reg[27]_0 ;
  wire [25:0]\up_rdata_reg[28] ;
  wire \up_rdata_reg[28]_0 ;
  wire \up_rdata_reg[2] ;
  wire [31:0]\up_rdata_reg[31] ;
  wire [5:0]\up_rdata_reg[31]_0 ;
  wire \up_rdata_reg[3] ;
  wire \up_rdata_reg[4] ;
  wire \up_rdata_reg[4]_0 ;
  wire \up_rdata_reg[5] ;
  wire \up_rdata_reg[5]_0 ;
  wire \up_rdata_reg[6] ;
  wire \up_rdata_reg[6]_0 ;
  wire \up_rdata_reg[7] ;
  wire \up_rdata_reg[7]_0 ;
  wire \up_rdata_reg[8] ;
  wire \up_rdata_reg[8]_0 ;
  wire \up_rdata_reg[8]_1 ;
  wire \up_rdata_reg[9] ;
  wire \up_rdata_reg[9]_0 ;
  wire \up_rdata_reg[9]_1 ;
  wire [31:0]up_rdata_s;
  wire up_req_eot;
  wire up_rreq;
  wire up_rreq_int_i_1_n_0;
  wire up_rsel_i_1_n_0;
  wire up_rsel_reg_n_0;
  wire \up_scratch[31]_i_2_n_0 ;
  wire \up_scratch[31]_i_3_n_0 ;
  wire [31:0]\up_scratch_reg[31] ;
  wire up_sot;
  wire [1:0]up_transfer_id;
  wire up_wack;
  wire up_wack_d;
  wire up_wack_s;
  wire up_wack_s_0;
  wire [8:0]up_waddr;
  wire [0:0]\up_waddr_int_reg[0]_0 ;
  wire [0:0]\up_waddr_int_reg[3]_0 ;
  wire [0:0]\up_waddr_int_reg[8]_0 ;
  wire \up_wcount[0]_i_1_n_0 ;
  wire \up_wcount[1]_i_1_n_0 ;
  wire \up_wcount[2]_i_1_n_0 ;
  wire \up_wcount[3]_i_1_n_0 ;
  wire \up_wcount[4]_i_1_n_0 ;
  wire \up_wcount[4]_i_2_n_0 ;
  wire \up_wcount_reg_n_0_[0] ;
  wire \up_wcount_reg_n_0_[1] ;
  wire \up_wcount_reg_n_0_[2] ;
  wire \up_wcount_reg_n_0_[3] ;
  wire \up_wdata_int_reg[0]_0 ;
  wire \up_wdata_int_reg[0]_1 ;
  wire \up_wdata_int_reg[1]_0 ;
  wire \up_wdata_int_reg[1]_1 ;
  wire \up_wdata_int_reg[2]_0 ;
  wire up_wreq;
  wire up_wreq_int_i_1_n_0;
  wire [0:0]up_wreq_int_reg_0;
  wire [0:0]up_wreq_int_reg_1;
  wire up_wreq_int_reg_2;
  wire [0:0]up_wreq_int_reg_3;
  wire up_wsel_i_1_n_0;
  wire up_wsel_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ctrl_enable_i_1
       (.I0(Q[0]),
        .I1(ctrl_enable_i_2_n_0),
        .I2(ctrl_enable_reg),
        .O(\up_wdata_int_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    ctrl_enable_i_2
       (.I0(up_wreq),
        .I1(ctrl_enable_i_3_n_0),
        .I2(up_waddr[2]),
        .I3(up_waddr[1]),
        .I4(\up_scratch[31]_i_3_n_0 ),
        .I5(up_waddr[8]),
        .O(ctrl_enable_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ctrl_enable_i_3
       (.I0(up_waddr[0]),
        .I1(up_waddr[7]),
        .I2(up_waddr[5]),
        .I3(up_waddr[6]),
        .O(ctrl_enable_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ctrl_pause_i_1
       (.I0(Q[1]),
        .I1(ctrl_enable_i_2_n_0),
        .I2(ctrl_pause),
        .O(\up_wdata_int_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \level[0]_i_3 
       (.I0(\level[0]_i_4_n_0 ),
        .I1(up_raddr[7]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\level[0]_i_5_n_0 ),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .I5(up_rreq),
        .O(p_8_in));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \level[0]_i_4 
       (.I0(up_raddr[6]),
        .I1(up_raddr[5]),
        .O(\level[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \level[0]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [3]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(up_raddr[8]),
        .O(\level[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_arready_int_i_1
       (.I0(s_axi_arready),
        .I1(up_rack_s),
        .O(up_axi_arready_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_arready_int_i_1_n_0),
        .Q(s_axi_arready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_awready_int_i_2
       (.I0(s_axi_awready),
        .I1(up_wack_s_0),
        .O(up_axi_awready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_awready_int_i_2_n_0),
        .Q(s_axi_awready),
        .R(SR));
  LUT4 #(
    .INIT(16'h0C88)) 
    up_axi_bvalid_int_i_1
       (.I0(up_wack_d),
        .I1(s_axi_aresetn),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(up_axi_bvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_bvalid_int_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8F)) 
    \up_axi_rdata_int[31]_i_1 
       (.I0(up_axi_rvalid_int_reg_0),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[0]),
        .Q(s_axi_rdata[0]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[10]),
        .Q(s_axi_rdata[10]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[11]),
        .Q(s_axi_rdata[11]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[12]),
        .Q(s_axi_rdata[12]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[13]),
        .Q(s_axi_rdata[13]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[14]),
        .Q(s_axi_rdata[14]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[15]),
        .Q(s_axi_rdata[15]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[16]),
        .Q(s_axi_rdata[16]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[17]),
        .Q(s_axi_rdata[17]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[18]),
        .Q(s_axi_rdata[18]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[19]),
        .Q(s_axi_rdata[19]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[1]),
        .Q(s_axi_rdata[1]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[20]),
        .Q(s_axi_rdata[20]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[21]),
        .Q(s_axi_rdata[21]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[22]),
        .Q(s_axi_rdata[22]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[23]),
        .Q(s_axi_rdata[23]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[24]),
        .Q(s_axi_rdata[24]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[25]),
        .Q(s_axi_rdata[25]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[26]),
        .Q(s_axi_rdata[26]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[27]),
        .Q(s_axi_rdata[27]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[28]),
        .Q(s_axi_rdata[28]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[29]),
        .Q(s_axi_rdata[29]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[2]),
        .Q(s_axi_rdata[2]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[30]),
        .Q(s_axi_rdata[30]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[31]),
        .Q(s_axi_rdata[31]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[3]),
        .Q(s_axi_rdata[3]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[4]),
        .Q(s_axi_rdata[4]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[5]),
        .Q(s_axi_rdata[5]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[6]),
        .Q(s_axi_rdata[6]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[7]),
        .Q(s_axi_rdata[7]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[8]),
        .Q(s_axi_rdata[8]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[9]),
        .Q(s_axi_rdata[9]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0C88)) 
    up_axi_rvalid_int_i_1
       (.I0(up_rack_d),
        .I1(s_axi_aresetn),
        .I2(s_axi_rready),
        .I3(up_axi_rvalid_int_reg_0),
        .O(up_axi_rvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_rvalid_int_i_1_n_0),
        .Q(up_axi_rvalid_int_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_wready_int_i_1
       (.I0(s_axi_wready),
        .I1(up_wack_s_0),
        .O(up_axi_wready_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_wready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_wready_int_i_1_n_0),
        .Q(s_axi_wready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    up_dma_cyclic_i_1
       (.I0(Q[0]),
        .I1(\i_regmap_request/up_dma_cyclic ),
        .I2(up_dma_cyclic),
        .O(\up_wdata_int_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \up_dma_dest_stride[23]_i_1 
       (.I0(\up_dma_dest_stride[23]_i_2_n_0 ),
        .I1(up_waddr[8]),
        .I2(up_waddr[1]),
        .I3(up_wreq),
        .I4(up_waddr[3]),
        .I5(\up_dma_x_length[23]_i_3_n_0 ),
        .O(\up_waddr_int_reg[8]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_dma_dest_stride[23]_i_2 
       (.I0(up_waddr[2]),
        .I1(up_waddr[0]),
        .O(\up_dma_dest_stride[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    up_dma_enable_tlen_reporting_i_1
       (.I0(Q[2]),
        .I1(\i_regmap_request/up_dma_cyclic ),
        .I2(p_3_in),
        .O(\up_wdata_int_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    up_dma_enable_tlen_reporting_i_2
       (.I0(\up_dma_src_address[28]_i_2_n_0 ),
        .I1(up_waddr[2]),
        .I2(up_waddr[0]),
        .I3(up_waddr[1]),
        .I4(up_wreq),
        .O(\i_regmap_request/up_dma_cyclic ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    up_dma_last_i_1
       (.I0(Q[1]),
        .I1(\i_regmap_request/up_dma_cyclic ),
        .I2(up_dma_last),
        .O(\up_wdata_int_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hE000E0A000000000)) 
    up_dma_req_valid_i_1
       (.I0(up_dma_req_valid),
        .I1(Q[0]),
        .I2(s_axi_aresetn),
        .I3(\i_regmap_request/up_dma_req_valid0 ),
        .I4(up_sot),
        .I5(ctrl_enable_reg),
        .O(up_dma_req_valid_reg));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    up_dma_req_valid_i_2
       (.I0(ctrl_enable_i_3_n_0),
        .I1(up_waddr[2]),
        .I2(up_waddr[8]),
        .I3(\up_scratch[31]_i_3_n_0 ),
        .I4(up_waddr[1]),
        .I5(up_wreq),
        .O(\i_regmap_request/up_dma_req_valid0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \up_dma_src_address[28]_i_1 
       (.I0(up_wreq),
        .I1(\up_dma_src_address[28]_i_2_n_0 ),
        .I2(up_waddr[1]),
        .I3(up_waddr[0]),
        .I4(up_waddr[2]),
        .O(up_wreq_int_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \up_dma_src_address[28]_i_2 
       (.I0(up_waddr[8]),
        .I1(up_waddr[7]),
        .I2(up_waddr[4]),
        .I3(up_waddr[3]),
        .I4(up_waddr[6]),
        .I5(up_waddr[5]),
        .O(\up_dma_src_address[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \up_dma_src_stride[23]_i_1 
       (.I0(\up_dma_src_stride[23]_i_2_n_0 ),
        .I1(up_waddr[3]),
        .I2(up_waddr[8]),
        .I3(up_waddr[0]),
        .I4(up_wreq),
        .I5(\up_dma_x_length[23]_i_3_n_0 ),
        .O(\up_waddr_int_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \up_dma_src_stride[23]_i_2 
       (.I0(up_waddr[2]),
        .I1(up_waddr[1]),
        .O(\up_dma_src_stride[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \up_dma_x_length[23]_i_1 
       (.I0(up_waddr[0]),
        .I1(up_waddr[3]),
        .I2(\up_dma_x_length[23]_i_2_n_0 ),
        .I3(\up_dma_x_length[23]_i_3_n_0 ),
        .O(\up_waddr_int_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \up_dma_x_length[23]_i_2 
       (.I0(up_waddr[2]),
        .I1(up_waddr[8]),
        .I2(up_wreq),
        .I3(up_waddr[1]),
        .O(\up_dma_x_length[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_dma_x_length[23]_i_3 
       (.I0(up_waddr[6]),
        .I1(up_waddr[7]),
        .I2(up_waddr[4]),
        .I3(up_waddr[5]),
        .O(\up_dma_x_length[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \up_dma_y_length[23]_i_1 
       (.I0(up_wreq),
        .I1(\up_dma_x_length[23]_i_3_n_0 ),
        .I2(up_waddr[8]),
        .I3(up_waddr[2]),
        .I4(up_waddr[3]),
        .I5(\up_dma_y_length[23]_i_2_n_0 ),
        .O(up_wreq_int_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \up_dma_y_length[23]_i_2 
       (.I0(up_waddr[1]),
        .I1(up_waddr[0]),
        .O(\up_dma_y_length[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \up_irq_mask[1]_i_2 
       (.I0(up_wreq),
        .I1(up_waddr[6]),
        .I2(up_waddr[0]),
        .I3(\up_irq_mask[1]_i_3_n_0 ),
        .I4(\up_irq_mask[1]_i_4_n_0 ),
        .I5(up_waddr[5]),
        .O(up_wreq_int_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \up_irq_mask[1]_i_3 
       (.I0(up_waddr[7]),
        .I1(up_waddr[8]),
        .O(\up_irq_mask[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_irq_mask[1]_i_4 
       (.I0(up_waddr[3]),
        .I1(up_waddr[4]),
        .I2(up_waddr[1]),
        .I3(up_waddr[2]),
        .O(\up_irq_mask[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \up_irq_source[0]_i_1 
       (.I0(up_sot),
        .I1(up_irq_source_clear1__6),
        .I2(Q[0]),
        .I3(\up_irq_source_reg[1] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h20FFFFFF20202020)) 
    \up_irq_source[1]_i_1 
       (.I0(up_req_eot),
        .I1(up_dma_cyclic),
        .I2(E),
        .I3(up_irq_source_clear1__6),
        .I4(Q[1]),
        .I5(\up_irq_source_reg[1] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \up_irq_source[1]_i_2 
       (.I0(up_wreq),
        .I1(\up_irq_source[1]_i_3_n_0 ),
        .I2(up_waddr[2]),
        .I3(up_waddr[5]),
        .I4(\up_scratch[31]_i_3_n_0 ),
        .I5(up_waddr[0]),
        .O(up_irq_source_clear1__6));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_irq_source[1]_i_3 
       (.I0(up_waddr[8]),
        .I1(up_waddr[7]),
        .I2(up_waddr[1]),
        .I3(up_waddr[6]),
        .O(\up_irq_source[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA0000AAAA0000)) 
    up_rack_d_i_1
       (.I0(up_rack),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(p_0_in6_in),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rack_s));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rack_s),
        .Q(up_rack_d),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \up_raddr_int[8]_i_1 
       (.I0(up_rsel_reg_n_0),
        .O(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[0]),
        .Q(\up_raddr_int_reg[4]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[1]),
        .Q(\up_raddr_int_reg[4]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[2]),
        .Q(\up_raddr_int_reg[4]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[3]),
        .Q(\up_raddr_int_reg[4]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[4]),
        .Q(\up_raddr_int_reg[4]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[5]),
        .Q(up_raddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[6]),
        .Q(up_raddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[7]),
        .Q(up_raddr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[8]),
        .Q(up_raddr[8]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \up_rcount[0]_i_1 
       (.I0(\up_rcount_reg_n_0_[0] ),
        .I1(p_0_in6_in),
        .I2(up_rack),
        .O(\up_rcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \up_rcount[1]_i_1 
       (.I0(\up_rcount_reg_n_0_[1] ),
        .I1(\up_rcount_reg_n_0_[0] ),
        .I2(p_0_in6_in),
        .I3(up_rack),
        .O(\up_rcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00007080)) 
    \up_rcount[2]_i_1 
       (.I0(\up_rcount_reg_n_0_[1] ),
        .I1(\up_rcount_reg_n_0_[0] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(up_rack),
        .O(\up_rcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006A00AA00)) 
    \up_rcount[3]_i_1 
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(p_0_in6_in),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(up_rack),
        .O(\up_rcount[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_rcount[4]_i_1 
       (.I0(p_0_in6_in),
        .I1(up_rreq),
        .O(\up_rcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF7FFFFFFF)) 
    \up_rcount[4]_i_2 
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(p_0_in6_in),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(up_rack),
        .O(\up_rcount[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[0]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[1]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[2]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[3]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[4]_i_2_n_0 ),
        .Q(p_0_in6_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[0]_i_1 
       (.I0(\up_rdata[0]_i_2_n_0 ),
        .I1(\up_rdata[0]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[0]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[0]),
        .O(\up_scratch_reg[31] [0]));
  LUT6 #(
    .INIT(64'hCFAF40FFC0AF40FF)) 
    \up_rdata[0]_i_2 
       (.I0(\up_rdata_reg[0] ),
        .I1(\up_irq_source_reg[1] [0]),
        .I2(\up_rdata[30]_i_3_n_0 ),
        .I3(\up_raddr_int_reg[7]_0 ),
        .I4(\up_raddr_int_reg[3]_0 ),
        .I5(\up_rdata_reg[31] [0]),
        .O(\up_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[0]_i_3 
       (.I0(dbg_ids0[0]),
        .I1(dbg_status[0]),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(ctrl_enable_reg),
        .I4(\up_raddr_int_reg[3]_0 ),
        .O(\up_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \up_rdata[0]_i_4 
       (.I0(\up_rdata[0]_i_5_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[0]_i_6_n_0 ),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[0]_i_7_n_0 ),
        .I5(\up_rdata[28]_i_4_n_0 ),
        .O(data10[0]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \up_rdata[0]_i_5 
       (.I0(\up_rdata[0]_i_8_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [4]),
        .I4(\up_rdata[1]_i_4_0 [4]),
        .I5(\up_raddr_int_reg[4]_0 [3]),
        .O(\up_rdata[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \up_rdata[0]_i_6 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [4]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(up_transfer_id[0]),
        .O(\up_rdata[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \up_rdata[0]_i_7 
       (.I0(\up_rdata[3]_i_4_2 [0]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [4]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[0]_i_4_0 ),
        .O(\up_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h05004F4F05004A4A)) 
    \up_rdata[0]_i_8 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[31]_i_6_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(\up_rdata_reg[31]_0 [0]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .I5(up_dma_req_valid),
        .O(\up_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[10]_i_1 
       (.I0(\up_rdata[10]_i_2_n_0 ),
        .I1(\up_rdata_reg[10] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[10]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[6]),
        .O(\up_scratch_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[10]_i_2 
       (.I0(\up_rdata_reg[31] [10]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[10]_i_4 
       (.I0(\up_rdata_reg[10]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[10]_1 ),
        .I3(\up_rdata[10]_i_7_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[10]));
  LUT5 #(
    .INIT(32'h003003C8)) 
    \up_rdata[10]_i_7 
       (.I0(\up_rdata_reg[28] [7]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[11]_i_1 
       (.I0(\up_rdata[11]_i_2_n_0 ),
        .I1(\up_rdata_reg[11] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[11]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[7]),
        .O(\up_scratch_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[11]_i_2 
       (.I0(\up_rdata_reg[31] [11]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[11]_i_4 
       (.I0(\up_rdata_reg[11]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[11]_1 ),
        .I3(\up_rdata[11]_i_7_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[11]));
  LUT5 #(
    .INIT(32'h003003C8)) 
    \up_rdata[11]_i_7 
       (.I0(\up_rdata_reg[28] [8]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[12]_i_1 
       (.I0(\up_rdata[12]_i_2_n_0 ),
        .I1(\up_rdata[12]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[12]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[12]_i_2 
       (.I0(\up_rdata_reg[31] [12]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[12]_i_3 
       (.I0(m_src_axi_araddr[0]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[12]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [9]),
        .I5(\up_rdata_reg[12] ),
        .O(\up_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[13]_i_1 
       (.I0(\up_rdata[13]_i_2_n_0 ),
        .I1(\up_rdata[13]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[13]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[13]_i_2 
       (.I0(\up_rdata_reg[31] [13]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[13]_i_3 
       (.I0(m_src_axi_araddr[1]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[13]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [10]),
        .I5(\up_rdata_reg[13] ),
        .O(\up_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[14]_i_1 
       (.I0(\up_rdata[14]_i_2_n_0 ),
        .I1(\up_rdata[14]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[14]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[14]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [14]),
        .O(\up_rdata[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[14]_i_3 
       (.I0(m_src_axi_araddr[2]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[14]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [11]),
        .I5(\up_rdata_reg[14] ),
        .O(\up_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[15]_i_1 
       (.I0(\up_rdata[15]_i_2_n_0 ),
        .I1(\up_rdata[15]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[15]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[15]_i_2 
       (.I0(\up_rdata_reg[31] [15]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[15]_i_3 
       (.I0(m_src_axi_araddr[3]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[15]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [12]),
        .I5(\up_rdata_reg[15] ),
        .O(\up_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[16]_i_1 
       (.I0(\up_rdata[16]_i_2_n_0 ),
        .I1(\up_rdata_reg[16] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[16]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[8]),
        .O(\up_scratch_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[16]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [16]),
        .O(\up_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[16]_i_4 
       (.I0(\up_rdata_reg[16]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[16]_1 ),
        .I3(\up_rdata[16]_i_7_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[16]));
  LUT5 #(
    .INIT(32'h003003C8)) 
    \up_rdata[16]_i_7 
       (.I0(\up_rdata_reg[28] [13]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[17]_i_1 
       (.I0(\up_rdata[17]_i_2_n_0 ),
        .I1(\up_rdata_reg[17] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[17]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[9]),
        .O(\up_scratch_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[17]_i_2 
       (.I0(\up_rdata_reg[31] [17]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[17]_i_4 
       (.I0(\up_rdata_reg[17]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[17]_1 ),
        .I3(\up_rdata[17]_i_7_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[17]));
  LUT5 #(
    .INIT(32'h003003C8)) 
    \up_rdata[17]_i_7 
       (.I0(\up_rdata_reg[28] [14]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[18]_i_1 
       (.I0(\up_rdata[18]_i_2_n_0 ),
        .I1(\up_rdata_reg[18] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[18]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[10]),
        .O(\up_scratch_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h5313)) 
    \up_rdata[18]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [18]),
        .O(\up_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[18]_i_4 
       (.I0(\up_rdata_reg[18]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[18]_1 ),
        .I3(\up_rdata[18]_i_7_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[18]));
  LUT5 #(
    .INIT(32'h003003C8)) 
    \up_rdata[18]_i_7 
       (.I0(\up_rdata_reg[28] [15]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[19]_i_1 
       (.I0(\up_rdata[19]_i_2_n_0 ),
        .I1(\up_rdata_reg[19] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[19]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[11]),
        .O(\up_scratch_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[19]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [19]),
        .O(\up_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[19]_i_4 
       (.I0(\up_rdata_reg[19]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[19]_1 ),
        .I3(\up_rdata[19]_i_7_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h003003C8)) 
    \up_rdata[19]_i_7 
       (.I0(\up_rdata_reg[28] [16]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[1]_i_1 
       (.I0(\up_rdata[1]_i_2_n_0 ),
        .I1(\up_rdata[1]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[1]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[1]),
        .O(\up_scratch_reg[31] [1]));
  LUT6 #(
    .INIT(64'hCFA040F0C0A040F0)) 
    \up_rdata[1]_i_2 
       (.I0(\up_rdata_reg[1] ),
        .I1(\up_irq_source_reg[1] [1]),
        .I2(\up_rdata[30]_i_3_n_0 ),
        .I3(\up_raddr_int_reg[7]_0 ),
        .I4(\up_raddr_int_reg[3]_0 ),
        .I5(\up_rdata_reg[31] [1]),
        .O(\up_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \up_rdata[1]_i_3 
       (.I0(dbg_ids0[1]),
        .I1(dbg_status[1]),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(ctrl_pause),
        .I4(\up_raddr_int_reg[3]_0 ),
        .O(\up_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \up_rdata[1]_i_4 
       (.I0(\up_rdata[1]_i_5_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[1]_i_6_n_0 ),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[1]_i_7_n_0 ),
        .I5(\up_rdata[28]_i_4_n_0 ),
        .O(data10[1]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \up_rdata[1]_i_5 
       (.I0(\up_rdata[1]_i_8_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [4]),
        .I4(\up_rdata[1]_i_4_0 [5]),
        .I5(\up_raddr_int_reg[4]_0 [3]),
        .O(\up_rdata[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \up_rdata[1]_i_6 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [4]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(up_transfer_id[1]),
        .O(\up_rdata[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \up_rdata[1]_i_7 
       (.I0(\up_rdata[3]_i_4_2 [1]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [4]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata[1]_i_4_1 ),
        .O(\up_rdata[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h054A004A)) 
    \up_rdata[1]_i_8 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_rdata[31]_i_6_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(\up_raddr_int_reg[4]_0 [4]),
        .I4(\up_rdata_reg[31]_0 [1]),
        .O(\up_rdata[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[20]_i_1 
       (.I0(\up_rdata[20]_i_2_n_0 ),
        .I1(\up_rdata[20]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[20]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[20]_i_2 
       (.I0(\up_rdata_reg[31] [20]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[20]_i_3 
       (.I0(m_src_axi_araddr[4]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[20]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [17]),
        .I5(\up_rdata_reg[20] ),
        .O(\up_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[21]_i_1 
       (.I0(\up_rdata[21]_i_2_n_0 ),
        .I1(\up_rdata[21]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[21]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[21]_i_2 
       (.I0(\up_rdata_reg[31] [21]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[21]_i_3 
       (.I0(m_src_axi_araddr[5]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[21]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [18]),
        .I5(\up_rdata_reg[21] ),
        .O(\up_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[22]_i_1 
       (.I0(\up_rdata[22]_i_2_n_0 ),
        .I1(\up_rdata[22]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[22]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[22]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [22]),
        .O(\up_rdata[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[22]_i_3 
       (.I0(m_src_axi_araddr[6]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[22]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [19]),
        .I5(\up_rdata_reg[22] ),
        .O(\up_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[23]_i_1 
       (.I0(\up_rdata[23]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[23]_i_2 
       (.I0(\up_rdata_reg[31] [23]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[23]_i_3 
       (.I0(m_src_axi_araddr[7]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[23]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [20]),
        .I5(\up_rdata_reg[23] ),
        .O(\up_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[24]_i_1 
       (.I0(\up_rdata[24]_i_2_n_0 ),
        .I1(\up_rdata_reg[24] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[24]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[8]),
        .O(\up_scratch_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[24]_i_2 
       (.I0(\up_rdata_reg[31] [24]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028080000)) 
    \up_rdata[24]_i_4 
       (.I0(\up_rdata_reg[24]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [4]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_rdata_reg[28] [21]),
        .I4(\up_rdata[27]_i_6_n_0 ),
        .I5(\up_rdata[28]_i_4_n_0 ),
        .O(data10[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[25]_i_1 
       (.I0(\up_rdata[25]_i_2_n_0 ),
        .I1(\up_rdata_reg[25] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[25]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[9]),
        .O(\up_scratch_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[25]_i_2 
       (.I0(\up_rdata_reg[31] [25]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028080000)) 
    \up_rdata[25]_i_4 
       (.I0(\up_rdata_reg[25]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [4]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_rdata_reg[28] [22]),
        .I4(\up_rdata[27]_i_6_n_0 ),
        .I5(\up_rdata[28]_i_4_n_0 ),
        .O(data10[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[26]_i_1 
       (.I0(\up_rdata[26]_i_2_n_0 ),
        .I1(\up_rdata_reg[26] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[26]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[10]),
        .O(\up_scratch_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[26]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [26]),
        .O(\up_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028080000)) 
    \up_rdata[26]_i_4 
       (.I0(\up_rdata_reg[26]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [4]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_rdata_reg[28] [23]),
        .I4(\up_rdata[27]_i_6_n_0 ),
        .I5(\up_rdata[28]_i_4_n_0 ),
        .O(data10[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[27]_i_1 
       (.I0(\up_rdata[27]_i_2_n_0 ),
        .I1(\up_rdata_reg[27] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[27]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[11]),
        .O(\up_scratch_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[27]_i_2 
       (.I0(\up_rdata_reg[31] [27]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028080000)) 
    \up_rdata[27]_i_4 
       (.I0(\up_rdata_reg[27]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [4]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_rdata_reg[28] [24]),
        .I4(\up_rdata[27]_i_6_n_0 ),
        .I5(\up_rdata[28]_i_4_n_0 ),
        .O(data10[27]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \up_rdata[27]_i_6 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .O(\up_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[28]_i_1 
       (.I0(\up_rdata[28]_i_2_n_0 ),
        .I1(\up_rdata[28]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[28]_i_5_n_0 ),
        .O(\up_scratch_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[28]_i_2 
       (.I0(\up_rdata_reg[31] [28]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[28]_i_3 
       (.I0(m_src_axi_araddr[8]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \up_rdata[28]_i_4 
       (.I0(up_raddr[8]),
        .I1(up_raddr[7]),
        .I2(up_raddr[5]),
        .I3(up_raddr[6]),
        .O(\up_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0044100000000000)) 
    \up_rdata[28]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [3]),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(\up_rdata_reg[28] [25]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .I5(\up_rdata_reg[28]_0 ),
        .O(\up_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h40FF000040000000)) 
    \up_rdata[29]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata[31]_i_3_n_0 ),
        .I2(\up_rdata_reg[31] [29]),
        .I3(\up_rdata[31]_i_4_n_0 ),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(data10[29]),
        .O(\up_scratch_reg[31] [29]));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[29]_i_2 
       (.I0(\up_rdata[1]_i_4_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[31]_0 [3]),
        .I3(\up_rdata[30]_i_17_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[2]_i_1 
       (.I0(\up_rdata[2]_i_2_n_0 ),
        .I1(\up_rdata[2]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[2]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[2]),
        .O(\up_scratch_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[2]_i_2 
       (.I0(\up_rdata_reg[31] [2]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \up_rdata[2]_i_3 
       (.I0(\up_raddr_int_reg[7]_0 ),
        .I1(dbg_status[2]),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(dbg_ids0[2]),
        .O(\up_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000E222)) 
    \up_rdata[2]_i_4 
       (.I0(\up_rdata[2]_i_5_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[2] ),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[2]));
  LUT6 #(
    .INIT(64'h000A000A0A800080)) 
    \up_rdata[2]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_rdata_reg[31]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [4]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_rdata[31]_i_6_0 [2]),
        .I5(\up_raddr_int_reg[4]_0 [2]),
        .O(\up_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF008003000080030)) 
    \up_rdata[30]_i_1 
       (.I0(\up_rdata_reg[31] [30]),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_rdata[30]_i_3_n_0 ),
        .I3(\up_rdata[30]_i_4_n_0 ),
        .I4(\up_raddr_int_reg[3]_0 ),
        .I5(data10[30]),
        .O(\up_scratch_reg[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFC37)) 
    \up_rdata[30]_i_10 
       (.I0(up_raddr[8]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .O(\up_rdata[30]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \up_rdata[30]_i_11 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(up_raddr[5]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[30]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \up_rdata[30]_i_12 
       (.I0(up_raddr[8]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [0]),
        .O(\up_rdata[30]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_rdata[30]_i_13 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(up_raddr[7]),
        .I2(up_raddr[6]),
        .I3(up_raddr[5]),
        .O(\up_rdata[30]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \up_rdata[30]_i_14 
       (.I0(up_raddr[8]),
        .I1(up_raddr[7]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(up_raddr[6]),
        .I5(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[30]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDDEFFFD)) 
    \up_rdata[30]_i_15 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(up_raddr[6]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(\up_raddr_int_reg[4]_0 [4]),
        .I4(up_raddr[8]),
        .I5(up_raddr[7]),
        .O(\up_rdata[30]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFF3F0B0)) 
    \up_rdata[30]_i_16 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(up_raddr[5]),
        .I3(\up_raddr_int_reg[4]_0 [4]),
        .I4(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[30]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \up_rdata[30]_i_17 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[30]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000015100000000)) 
    \up_rdata[30]_i_2 
       (.I0(up_raddr[7]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(up_raddr[8]),
        .I3(up_raddr[5]),
        .I4(up_raddr[6]),
        .I5(\up_rdata[30]_i_7_n_0 ),
        .O(\up_raddr_int_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \up_rdata[30]_i_3 
       (.I0(\up_rdata[30]_i_8_n_0 ),
        .I1(up_raddr[7]),
        .I2(\up_rdata[30]_i_9_n_0 ),
        .I3(up_raddr[6]),
        .I4(up_raddr[5]),
        .I5(\up_rdata[30]_i_10_n_0 ),
        .O(\up_rdata[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \up_rdata[30]_i_4 
       (.I0(\up_rdata[30]_i_11_n_0 ),
        .I1(\up_rdata[30]_i_12_n_0 ),
        .I2(\up_rdata[30]_i_13_n_0 ),
        .I3(\up_rdata[30]_i_14_n_0 ),
        .O(\up_rdata[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF6)) 
    \up_rdata[30]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [3]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_rdata[30]_i_15_n_0 ),
        .I3(\up_rdata[30]_i_16_n_0 ),
        .O(\up_raddr_int_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[30]_i_6 
       (.I0(\up_rdata[1]_i_4_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[31]_0 [4]),
        .I3(\up_rdata[30]_i_17_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[30]));
  LUT6 #(
    .INIT(64'h00010000A000A406)) 
    \up_rdata[30]_i_7 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(up_raddr[8]),
        .I5(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[30]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB5)) 
    \up_rdata[30]_i_8 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(up_raddr[8]),
        .O(\up_rdata[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF6F66666666)) 
    \up_rdata[30]_i_9 
       (.I0(\up_raddr_int_reg[4]_0 [3]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(up_raddr[8]),
        .I3(\up_raddr_int_reg[4]_0 [0]),
        .I4(\up_raddr_int_reg[4]_0 [1]),
        .I5(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[30]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h40FF000040000000)) 
    \up_rdata[31]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata[31]_i_3_n_0 ),
        .I2(\up_rdata_reg[31] [31]),
        .I3(\up_rdata[31]_i_4_n_0 ),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(data10[31]),
        .O(\up_scratch_reg[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \up_rdata[31]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \up_rdata[31]_i_3 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .O(\up_rdata[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \up_rdata[31]_i_4 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_rdata[30]_i_4_n_0 ),
        .O(\up_rdata[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD5)) 
    \up_rdata[31]_i_5 
       (.I0(\up_rdata[30]_i_4_n_0 ),
        .I1(\up_rdata[30]_i_3_n_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .O(\up_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B380000)) 
    \up_rdata[31]_i_6 
       (.I0(\up_rdata[1]_i_4_0 [3]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(\up_rdata_reg[31]_0 [5]),
        .I4(\up_rdata[31]_i_7_n_0 ),
        .I5(\up_rdata[28]_i_4_n_0 ),
        .O(data10[31]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h02200200)) 
    \up_rdata[31]_i_7 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(\up_raddr_int_reg[4]_0 [4]),
        .I4(\up_rdata[31]_i_6_0 [3]),
        .O(\up_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[3]_i_1 
       (.I0(\up_rdata[3]_i_2_n_0 ),
        .I1(\up_rdata_reg[3] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[3]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[3]),
        .O(\up_scratch_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[3]_i_2 
       (.I0(\up_rdata_reg[31] [3]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \up_rdata[3]_i_4 
       (.I0(\up_rdata[3]_i_5_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[3]_i_6_n_0 ),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[3]_i_7_n_0 ),
        .I5(\up_rdata[28]_i_4_n_0 ),
        .O(data10[3]));
  LUT6 #(
    .INIT(64'h888B888888888888)) 
    \up_rdata[3]_i_5 
       (.I0(\up_rdata[3]_i_4_0 ),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [4]),
        .I4(\up_raddr_int_reg[4]_0 [3]),
        .I5(\up_rdata[3]_i_4_1 ),
        .O(\up_rdata[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h03080008)) 
    \up_rdata[3]_i_6 
       (.I0(\up_rdata_reg[28] [0]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [4]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_rdata[3]_i_4_3 ),
        .O(\up_rdata[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h03000808)) 
    \up_rdata[3]_i_7 
       (.I0(\up_rdata[3]_i_4_2 [2]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [3]),
        .I3(\up_rdata[1]_i_4_0 [0]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[4]_i_1 
       (.I0(\up_rdata[4]_i_2_n_0 ),
        .I1(\up_rdata_reg[4] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[4]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[4]_i_2 
       (.I0(\up_rdata_reg[31] [4]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[4]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [1]),
        .I5(\up_rdata_reg[4]_0 ),
        .O(\up_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[5]_i_1 
       (.I0(\up_rdata[5]_i_2_n_0 ),
        .I1(\up_rdata_reg[5] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[5]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h5111)) 
    \up_rdata[5]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [5]),
        .O(\up_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[5]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [2]),
        .I5(\up_rdata_reg[5]_0 ),
        .O(\up_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[6]_i_1 
       (.I0(\up_rdata[6]_i_2_n_0 ),
        .I1(\up_rdata_reg[6] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[6]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5313)) 
    \up_rdata[6]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [6]),
        .O(\up_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[6]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [3]),
        .I5(\up_rdata_reg[6]_0 ),
        .O(\up_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0AFC0A0C0A0C0)) 
    \up_rdata[7]_i_1 
       (.I0(\up_rdata[7]_i_2_n_0 ),
        .I1(\up_rdata[7]_i_3_n_0 ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .I5(\up_rdata[7]_i_4_n_0 ),
        .O(\up_scratch_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[7]_i_2 
       (.I0(\up_rdata_reg[31] [7]),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .I3(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[7]_i_3 
       (.I0(\up_rdata_reg[7]_0 ),
        .I1(\up_raddr_int_reg[3]_0 ),
        .I2(\up_raddr_int_reg[7]_0 ),
        .O(\up_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1124102400000000)) 
    \up_rdata[7]_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [4]),
        .I1(\up_raddr_int_reg[4]_0 [3]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_rdata_reg[28] [4]),
        .I5(\up_rdata_reg[7] ),
        .O(\up_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[8]_i_1 
       (.I0(\up_rdata[8]_i_2_n_0 ),
        .I1(\up_rdata_reg[8] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[8]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[4]),
        .O(\up_scratch_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4202)) 
    \up_rdata[8]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [8]),
        .O(\up_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[8]_i_4 
       (.I0(\up_rdata_reg[8]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[8]_1 ),
        .I3(\up_rdata[8]_i_7_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[8]));
  LUT5 #(
    .INIT(32'h003003C8)) 
    \up_rdata[8]_i_7 
       (.I0(\up_rdata_reg[28] [5]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \up_rdata[9]_i_1 
       (.I0(\up_rdata[9]_i_2_n_0 ),
        .I1(\up_rdata_reg[9] ),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(data10[9]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .I5(dbg_ids1[5]),
        .O(\up_scratch_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h5111)) 
    \up_rdata[9]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_raddr_int_reg[7]_0 ),
        .I2(\up_raddr_int_reg[3]_0 ),
        .I3(\up_rdata_reg[31] [9]),
        .O(\up_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \up_rdata[9]_i_4 
       (.I0(\up_rdata_reg[9]_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata_reg[9]_1 ),
        .I3(\up_rdata[9]_i_7_n_0 ),
        .I4(\up_rdata[28]_i_4_n_0 ),
        .O(data10[9]));
  LUT5 #(
    .INIT(32'h003003C8)) 
    \up_rdata[9]_i_7 
       (.I0(\up_rdata_reg[28] [6]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [3]),
        .I4(\up_raddr_int_reg[4]_0 [4]),
        .O(\up_rdata[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[0]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [0]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[0]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[10]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [10]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[10]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[11]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [11]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[11]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[12]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [12]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[12]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[13]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [13]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[14]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [14]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[14]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[15]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [15]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[15]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[16]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [16]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[16]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[17]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [17]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[18]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [18]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[18]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[19]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [19]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[19]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[1]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [1]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[20]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [20]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[21]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [21]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[21]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[22]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [22]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[23]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [23]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[23]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[24]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [24]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[25]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [25]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[25]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[26]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [26]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[26]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[27]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [27]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[27]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[28]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [28]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[28]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[29]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [29]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[2]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [2]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[2]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[30]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [30]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[30]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[31]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [31]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[31]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[3]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [3]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[4]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [4]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[5]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [5]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[5]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[6]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [6]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[7]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [7]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[7]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \up_rdata_d[8]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [8]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[9]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [9]),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rdata_s[9]));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[0]),
        .Q(up_rdata_d[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[10]),
        .Q(up_rdata_d[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[11]),
        .Q(up_rdata_d[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[12]),
        .Q(up_rdata_d[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[13]_i_1_n_0 ),
        .Q(up_rdata_d[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[14]),
        .Q(up_rdata_d[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[15]),
        .Q(up_rdata_d[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[16]),
        .Q(up_rdata_d[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[17]_i_1_n_0 ),
        .Q(up_rdata_d[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[18]),
        .Q(up_rdata_d[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[19]),
        .Q(up_rdata_d[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[1]_i_1_n_0 ),
        .Q(up_rdata_d[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[20]_i_1_n_0 ),
        .Q(up_rdata_d[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[21]),
        .Q(up_rdata_d[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[22]_i_1_n_0 ),
        .Q(up_rdata_d[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[23]),
        .Q(up_rdata_d[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[24]_i_1_n_0 ),
        .Q(up_rdata_d[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[25]),
        .Q(up_rdata_d[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[26]),
        .Q(up_rdata_d[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[27]),
        .Q(up_rdata_d[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[28]),
        .Q(up_rdata_d[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[29]_i_1_n_0 ),
        .Q(up_rdata_d[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[2]),
        .Q(up_rdata_d[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[30]),
        .Q(up_rdata_d[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[31]),
        .Q(up_rdata_d[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[3]),
        .Q(up_rdata_d[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[4]_i_1_n_0 ),
        .Q(up_rdata_d[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[5]),
        .Q(up_rdata_d[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[6]_i_1_n_0 ),
        .Q(up_rdata_d[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[7]),
        .Q(up_rdata_d[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[8]_i_1_n_0 ),
        .Q(up_rdata_d[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rdata_s[9]),
        .Q(up_rdata_d[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    up_rreq_int_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_aresetn),
        .I2(up_rsel_reg_n_0),
        .O(up_rreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq_int_i_1_n_0),
        .Q(up_rreq),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h3FAA)) 
    up_rsel_i_1
       (.I0(s_axi_arvalid),
        .I1(up_axi_rvalid_int_reg_0),
        .I2(s_axi_rready),
        .I3(up_rsel_reg_n_0),
        .O(up_rsel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rsel_i_1_n_0),
        .Q(up_rsel_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \up_scratch[31]_i_1 
       (.I0(up_wreq),
        .I1(\up_scratch[31]_i_2_n_0 ),
        .I2(up_waddr[2]),
        .I3(up_waddr[0]),
        .I4(\up_scratch[31]_i_3_n_0 ),
        .I5(up_waddr[1]),
        .O(up_wreq_int_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \up_scratch[31]_i_2 
       (.I0(up_waddr[8]),
        .I1(up_waddr[7]),
        .I2(up_waddr[5]),
        .I3(up_waddr[6]),
        .O(\up_scratch[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \up_scratch[31]_i_3 
       (.I0(up_waddr[4]),
        .I1(up_waddr[3]),
        .O(\up_scratch[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA0000AAAA0000)) 
    up_wack_d_i_1
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(p_0_in7_in),
        .I5(\up_wcount_reg_n_0_[3] ),
        .O(up_wack_s_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wack_s_0),
        .Q(up_wack_d),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[0]),
        .Q(up_waddr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[1]),
        .Q(up_waddr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[2]),
        .Q(up_waddr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[3]),
        .Q(up_waddr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[4]),
        .Q(up_waddr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[5]),
        .Q(up_waddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[6]),
        .Q(up_waddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[7]),
        .Q(up_waddr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[8]),
        .Q(up_waddr[8]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \up_wcount[0]_i_1 
       (.I0(\up_wcount_reg_n_0_[0] ),
        .I1(p_0_in7_in),
        .I2(up_wack),
        .O(\up_wcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \up_wcount[1]_i_1 
       (.I0(\up_wcount_reg_n_0_[1] ),
        .I1(\up_wcount_reg_n_0_[0] ),
        .I2(p_0_in7_in),
        .I3(up_wack),
        .O(\up_wcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00007080)) 
    \up_wcount[2]_i_1 
       (.I0(\up_wcount_reg_n_0_[1] ),
        .I1(\up_wcount_reg_n_0_[0] ),
        .I2(p_0_in7_in),
        .I3(\up_wcount_reg_n_0_[2] ),
        .I4(up_wack),
        .O(\up_wcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006A00AA00)) 
    \up_wcount[3]_i_1 
       (.I0(\up_wcount_reg_n_0_[3] ),
        .I1(\up_wcount_reg_n_0_[1] ),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(p_0_in7_in),
        .I4(\up_wcount_reg_n_0_[2] ),
        .I5(up_wack),
        .O(\up_wcount[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \up_wcount[4]_i_1 
       (.I0(up_wack_s),
        .I1(up_wreq),
        .I2(p_0_in7_in),
        .O(\up_wcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF7FFFFFFF)) 
    \up_wcount[4]_i_2 
       (.I0(\up_wcount_reg_n_0_[3] ),
        .I1(\up_wcount_reg_n_0_[1] ),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(p_0_in7_in),
        .I4(\up_wcount_reg_n_0_[2] ),
        .I5(up_wack),
        .O(\up_wcount[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0A0A0A0A0A0A0A0)) 
    \up_wcount[4]_i_3 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(p_0_in7_in),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(\up_wcount_reg_n_0_[1] ),
        .I5(\up_wcount_reg_n_0_[3] ),
        .O(up_wack_s));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[0]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[1]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[2]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[3]_i_1_n_0 ),
        .Q(\up_wcount_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[4]_i_2_n_0 ),
        .Q(p_0_in7_in),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \up_wdata_int[31]_i_1 
       (.I0(up_wsel_reg_n_0),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[9]),
        .Q(Q[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    up_wreq_int_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_aresetn),
        .I3(up_wsel_reg_n_0),
        .O(up_wreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq_int_i_1_n_0),
        .Q(up_wreq),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0FFF8888)) 
    up_wsel_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .I4(up_wsel_reg_n_0),
        .O(up_wsel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wsel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wsel_i_1_n_0),
        .Q(up_wsel_reg_n_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module zed_axi_dmac_0_0_util_axis_fifo
   (SR,
    \up_transfer_id_eot_reg[0] ,
    \up_transfer_id_eot_reg[1] ,
    \data_reg[2]_0 ,
    \up_raddr_int_reg[0] ,
    \up_raddr_int_reg[0]_0 ,
    \up_raddr_int_reg[0]_1 ,
    \up_raddr_int_reg[0]_2 ,
    \up_dma_y_length_reg[8] ,
    \up_dma_y_length_reg[9] ,
    \up_dma_y_length_reg[10] ,
    \up_dma_y_length_reg[11] ,
    \up_raddr_int_reg[0]_3 ,
    \up_raddr_int_reg[0]_4 ,
    \up_raddr_int_reg[0]_5 ,
    \up_raddr_int_reg[0]_6 ,
    \up_dma_y_length_reg[16] ,
    \up_dma_y_length_reg[17] ,
    \up_dma_y_length_reg[18] ,
    \up_dma_y_length_reg[19] ,
    \up_raddr_int_reg[0]_7 ,
    \up_raddr_int_reg[0]_8 ,
    \up_raddr_int_reg[0]_9 ,
    \up_raddr_int_reg[0]_10 ,
    \data_reg[24]_0 ,
    \data_reg[25]_0 ,
    \data_reg[26]_0 ,
    \data_reg[27]_0 ,
    \data_reg[28]_0 ,
    req_response_valid_reg,
    valid_reg_0,
    \data_reg[33]_0 ,
    s_axi_aclk,
    p_8_in,
    \level_reg[1] ,
    up_transfer_id_eot,
    Q,
    \up_rdata[0]_i_7 ,
    up_dma_last,
    p_3_in,
    \up_rdata_reg[23]_i_5_0 ,
    \up_rdata[4]_i_4 ,
    \up_rdata_reg[23]_i_5_1 ,
    \up_rdata[5]_i_4 ,
    \up_rdata[6]_i_4 ,
    \up_rdata[7]_i_4 ,
    \up_rdata[12]_i_4 ,
    \up_rdata[13]_i_4 ,
    \up_rdata[14]_i_4 ,
    \up_rdata[15]_i_4 ,
    \up_rdata[20]_i_4 ,
    \up_rdata[21]_i_4 ,
    \up_rdata[22]_i_4 ,
    \up_rdata[23]_i_4 ,
    s_axis_data,
    up_response_valid,
    response_ready_reg,
    up_partial_length_valid_reg);
  output [0:0]SR;
  output \up_transfer_id_eot_reg[0] ;
  output \up_transfer_id_eot_reg[1] ;
  output \data_reg[2]_0 ;
  output \up_raddr_int_reg[0] ;
  output \up_raddr_int_reg[0]_0 ;
  output \up_raddr_int_reg[0]_1 ;
  output \up_raddr_int_reg[0]_2 ;
  output \up_dma_y_length_reg[8] ;
  output \up_dma_y_length_reg[9] ;
  output \up_dma_y_length_reg[10] ;
  output \up_dma_y_length_reg[11] ;
  output \up_raddr_int_reg[0]_3 ;
  output \up_raddr_int_reg[0]_4 ;
  output \up_raddr_int_reg[0]_5 ;
  output \up_raddr_int_reg[0]_6 ;
  output \up_dma_y_length_reg[16] ;
  output \up_dma_y_length_reg[17] ;
  output \up_dma_y_length_reg[18] ;
  output \up_dma_y_length_reg[19] ;
  output \up_raddr_int_reg[0]_7 ;
  output \up_raddr_int_reg[0]_8 ;
  output \up_raddr_int_reg[0]_9 ;
  output \up_raddr_int_reg[0]_10 ;
  output \data_reg[24]_0 ;
  output \data_reg[25]_0 ;
  output \data_reg[26]_0 ;
  output \data_reg[27]_0 ;
  output \data_reg[28]_0 ;
  output req_response_valid_reg;
  output valid_reg_0;
  output [5:0]\data_reg[33]_0 ;
  input s_axi_aclk;
  input p_8_in;
  input \level_reg[1] ;
  input [1:0]up_transfer_id_eot;
  input [4:0]Q;
  input \up_rdata[0]_i_7 ;
  input up_dma_last;
  input [0:0]p_3_in;
  input [20:0]\up_rdata_reg[23]_i_5_0 ;
  input \up_rdata[4]_i_4 ;
  input [19:0]\up_rdata_reg[23]_i_5_1 ;
  input \up_rdata[5]_i_4 ;
  input \up_rdata[6]_i_4 ;
  input \up_rdata[7]_i_4 ;
  input \up_rdata[12]_i_4 ;
  input \up_rdata[13]_i_4 ;
  input \up_rdata[14]_i_4 ;
  input \up_rdata[15]_i_4 ;
  input \up_rdata[20]_i_4 ;
  input \up_rdata[21]_i_4 ;
  input \up_rdata[22]_i_4 ;
  input \up_rdata[23]_i_4 ;
  input [33:0]s_axis_data;
  input up_response_valid;
  input response_ready_reg;
  input [0:0]up_partial_length_valid_reg;

  wire [4:0]Q;
  wire [0:0]SR;
  wire [33:0]data0;
  wire \data_reg[24]_0 ;
  wire \data_reg[25]_0 ;
  wire \data_reg[26]_0 ;
  wire \data_reg[27]_0 ;
  wire \data_reg[28]_0 ;
  wire \data_reg[2]_0 ;
  wire [5:0]\data_reg[33]_0 ;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[10] ;
  wire \data_reg_n_0_[11] ;
  wire \data_reg_n_0_[12] ;
  wire \data_reg_n_0_[13] ;
  wire \data_reg_n_0_[14] ;
  wire \data_reg_n_0_[15] ;
  wire \data_reg_n_0_[16] ;
  wire \data_reg_n_0_[17] ;
  wire \data_reg_n_0_[18] ;
  wire \data_reg_n_0_[19] ;
  wire \data_reg_n_0_[1] ;
  wire \data_reg_n_0_[20] ;
  wire \data_reg_n_0_[21] ;
  wire \data_reg_n_0_[22] ;
  wire \data_reg_n_0_[23] ;
  wire \data_reg_n_0_[24] ;
  wire \data_reg_n_0_[25] ;
  wire \data_reg_n_0_[26] ;
  wire \data_reg_n_0_[27] ;
  wire \data_reg_n_0_[28] ;
  wire \data_reg_n_0_[2] ;
  wire \data_reg_n_0_[4] ;
  wire \data_reg_n_0_[5] ;
  wire \data_reg_n_0_[6] ;
  wire \data_reg_n_0_[7] ;
  wire \data_reg_n_0_[8] ;
  wire \data_reg_n_0_[9] ;
  wire i_address_sync_n_2;
  wire \level_reg[1] ;
  wire [1:0]m_axis_raddr;
  wire m_mem_read;
  wire [0:0]p_3_in;
  wire p_8_in;
  wire req_response_valid_reg;
  wire response_ready_reg;
  wire s_axi_aclk;
  wire [33:0]s_axis_data;
  wire up_dma_last;
  wire \up_dma_y_length_reg[10] ;
  wire \up_dma_y_length_reg[11] ;
  wire \up_dma_y_length_reg[16] ;
  wire \up_dma_y_length_reg[17] ;
  wire \up_dma_y_length_reg[18] ;
  wire \up_dma_y_length_reg[19] ;
  wire \up_dma_y_length_reg[8] ;
  wire \up_dma_y_length_reg[9] ;
  wire [0:0]up_partial_length_valid_reg;
  wire \up_raddr_int_reg[0] ;
  wire \up_raddr_int_reg[0]_0 ;
  wire \up_raddr_int_reg[0]_1 ;
  wire \up_raddr_int_reg[0]_10 ;
  wire \up_raddr_int_reg[0]_2 ;
  wire \up_raddr_int_reg[0]_3 ;
  wire \up_raddr_int_reg[0]_4 ;
  wire \up_raddr_int_reg[0]_5 ;
  wire \up_raddr_int_reg[0]_6 ;
  wire \up_raddr_int_reg[0]_7 ;
  wire \up_raddr_int_reg[0]_8 ;
  wire \up_raddr_int_reg[0]_9 ;
  wire \up_rdata[0]_i_7 ;
  wire \up_rdata[12]_i_4 ;
  wire \up_rdata[12]_i_7_n_0 ;
  wire \up_rdata[13]_i_4 ;
  wire \up_rdata[13]_i_7_n_0 ;
  wire \up_rdata[14]_i_4 ;
  wire \up_rdata[14]_i_7_n_0 ;
  wire \up_rdata[15]_i_4 ;
  wire \up_rdata[15]_i_7_n_0 ;
  wire \up_rdata[20]_i_4 ;
  wire \up_rdata[20]_i_7_n_0 ;
  wire \up_rdata[21]_i_4 ;
  wire \up_rdata[21]_i_7_n_0 ;
  wire \up_rdata[22]_i_4 ;
  wire \up_rdata[22]_i_7_n_0 ;
  wire \up_rdata[23]_i_4 ;
  wire \up_rdata[23]_i_7_n_0 ;
  wire \up_rdata[4]_i_4 ;
  wire \up_rdata[4]_i_7_n_0 ;
  wire \up_rdata[5]_i_4 ;
  wire \up_rdata[5]_i_7_n_0 ;
  wire \up_rdata[6]_i_4 ;
  wire \up_rdata[6]_i_7_n_0 ;
  wire \up_rdata[7]_i_4 ;
  wire \up_rdata[7]_i_7_n_0 ;
  wire [20:0]\up_rdata_reg[23]_i_5_0 ;
  wire [19:0]\up_rdata_reg[23]_i_5_1 ;
  wire up_response_valid;
  wire up_tlf_valid;
  wire [1:0]up_transfer_id_eot;
  wire \up_transfer_id_eot_reg[0] ;
  wire \up_transfer_id_eot_reg[1] ;
  wire valid_reg_0;
  wire [1:0]NLW_ram_reg_0_3_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_30_33_DOC_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_30_33_DOD_UNCONNECTED;
  wire [1:0]NLW_ram_reg_0_3_6_11_DOD_UNCONNECTED;

  FDRE \data_reg[0] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[0]),
        .Q(\data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_reg[10] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[10]),
        .Q(\data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_reg[11] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[11]),
        .Q(\data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_reg[12] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[12]),
        .Q(\data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_reg[13] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[13]),
        .Q(\data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_reg[14] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[14]),
        .Q(\data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_reg[15] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[15]),
        .Q(\data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_reg[16] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[16]),
        .Q(\data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_reg[17] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[17]),
        .Q(\data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_reg[18] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[18]),
        .Q(\data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_reg[19] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[19]),
        .Q(\data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_reg[1] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[1]),
        .Q(\data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_reg[20] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[20]),
        .Q(\data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_reg[21] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[21]),
        .Q(\data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_reg[22] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[22]),
        .Q(\data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_reg[23] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[23]),
        .Q(\data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_reg[24] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[24]),
        .Q(\data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \data_reg[25] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[25]),
        .Q(\data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \data_reg[26] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[26]),
        .Q(\data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \data_reg[27] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[27]),
        .Q(\data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \data_reg[28] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[28]),
        .Q(\data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \data_reg[29] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[29]),
        .Q(\data_reg[33]_0 [1]),
        .R(1'b0));
  FDRE \data_reg[2] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[2]),
        .Q(\data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_reg[30] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[30]),
        .Q(\data_reg[33]_0 [2]),
        .R(1'b0));
  FDRE \data_reg[31] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[31]),
        .Q(\data_reg[33]_0 [3]),
        .R(1'b0));
  FDRE \data_reg[32] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[32]),
        .Q(\data_reg[33]_0 [4]),
        .R(1'b0));
  FDRE \data_reg[33] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[33]),
        .Q(\data_reg[33]_0 [5]),
        .R(1'b0));
  FDRE \data_reg[3] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[3]),
        .Q(\data_reg[33]_0 [0]),
        .R(1'b0));
  FDRE \data_reg[4] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[4]),
        .Q(\data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_reg[5] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[5]),
        .Q(\data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_reg[6] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[6]),
        .Q(\data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_reg[7] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[7]),
        .Q(\data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_reg[8] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[8]),
        .Q(\data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_reg[9] 
       (.C(s_axi_aclk),
        .CE(m_mem_read),
        .D(data0[9]),
        .Q(\data_reg_n_0_[9] ),
        .R(1'b0));
  zed_axi_dmac_0_0_fifo_address_sync i_address_sync
       (.E(m_mem_read),
        .Q(m_axis_raddr),
        .SR(SR),
        .\level_reg[1]_0 (\level_reg[1] ),
        .m_axis_valid_reg_0(i_address_sync_n_2),
        .p_8_in(p_8_in),
        .req_response_valid_reg(req_response_valid_reg),
        .response_ready_reg(response_ready_reg),
        .s_axi_aclk(s_axi_aclk),
        .up_response_valid(up_response_valid),
        .up_tlf_valid(up_tlf_valid));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M ram_reg_0_3_0_5
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA(s_axis_data[1:0]),
        .DIB(s_axis_data[3:2]),
        .DIC(s_axis_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(data0[1:0]),
        .DOB(data0[3:2]),
        .DOC(data0[5:4]),
        .DOD(NLW_ram_reg_0_3_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M ram_reg_0_3_12_17
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA(s_axis_data[13:12]),
        .DIB(s_axis_data[15:14]),
        .DIC(s_axis_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(data0[13:12]),
        .DOB(data0[15:14]),
        .DOC(data0[17:16]),
        .DOD(NLW_ram_reg_0_3_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M ram_reg_0_3_18_23
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA(s_axis_data[19:18]),
        .DIB(s_axis_data[21:20]),
        .DIC(s_axis_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(data0[19:18]),
        .DOB(data0[21:20]),
        .DOC(data0[23:22]),
        .DOD(NLW_ram_reg_0_3_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M ram_reg_0_3_24_29
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA(s_axis_data[25:24]),
        .DIB(s_axis_data[27:26]),
        .DIC(s_axis_data[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(data0[25:24]),
        .DOB(data0[27:26]),
        .DOC(data0[29:28]),
        .DOD(NLW_ram_reg_0_3_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "33" *) 
  RAM32M ram_reg_0_3_30_33
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA(s_axis_data[31:30]),
        .DIB(s_axis_data[33:32]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(data0[31:30]),
        .DOB(data0[33:32]),
        .DOC(NLW_ram_reg_0_3_30_33_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_ram_reg_0_3_30_33_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M ram_reg_0_3_6_11
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIA(s_axis_data[7:6]),
        .DIB(s_axis_data[9:8]),
        .DIC(s_axis_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(data0[7:6]),
        .DOB(data0[9:8]),
        .DOC(data0[11:10]),
        .DOD(NLW_ram_reg_0_3_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(1'b0));
  LUT3 #(
    .INIT(8'h54)) 
    up_partial_length_valid_i_1
       (.I0(p_8_in),
        .I1(up_tlf_valid),
        .I2(up_partial_length_valid_reg),
        .O(valid_reg_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[0]_i_9 
       (.I0(up_transfer_id_eot[0]),
        .I1(Q[3]),
        .I2(\data_reg_n_0_[0] ),
        .I3(Q[4]),
        .I4(\up_rdata[0]_i_7 ),
        .O(\up_transfer_id_eot_reg[0] ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[10]_i_5 
       (.I0(\up_rdata_reg[23]_i_5_0 [7]),
        .I1(\up_rdata_reg[23]_i_5_1 [6]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[10] ),
        .O(\up_dma_y_length_reg[10] ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[11]_i_5 
       (.I0(\up_rdata_reg[23]_i_5_0 [8]),
        .I1(\up_rdata_reg[23]_i_5_1 [7]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[11] ),
        .O(\up_dma_y_length_reg[11] ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[12]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [9]),
        .I1(\up_rdata_reg[23]_i_5_1 [8]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[12] ),
        .O(\up_rdata[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[13]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [10]),
        .I1(\up_rdata_reg[23]_i_5_1 [9]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[13] ),
        .O(\up_rdata[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[14]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [11]),
        .I1(\up_rdata_reg[23]_i_5_1 [10]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[14] ),
        .O(\up_rdata[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[15]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [12]),
        .I1(\up_rdata_reg[23]_i_5_1 [11]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[15] ),
        .O(\up_rdata[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[16]_i_5 
       (.I0(\up_rdata_reg[23]_i_5_0 [13]),
        .I1(\up_rdata_reg[23]_i_5_1 [12]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[16] ),
        .O(\up_dma_y_length_reg[16] ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[17]_i_5 
       (.I0(\up_rdata_reg[23]_i_5_0 [14]),
        .I1(\up_rdata_reg[23]_i_5_1 [13]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[17] ),
        .O(\up_dma_y_length_reg[17] ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[18]_i_5 
       (.I0(\up_rdata_reg[23]_i_5_0 [15]),
        .I1(\up_rdata_reg[23]_i_5_1 [14]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[18] ),
        .O(\up_dma_y_length_reg[18] ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[19]_i_5 
       (.I0(\up_rdata_reg[23]_i_5_0 [16]),
        .I1(\up_rdata_reg[23]_i_5_1 [15]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[19] ),
        .O(\up_dma_y_length_reg[19] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \up_rdata[1]_i_9 
       (.I0(up_transfer_id_eot[1]),
        .I1(Q[3]),
        .I2(\data_reg_n_0_[1] ),
        .I3(Q[4]),
        .I4(up_dma_last),
        .O(\up_transfer_id_eot_reg[1] ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[20]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [17]),
        .I1(\up_rdata_reg[23]_i_5_1 [16]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[20] ),
        .O(\up_rdata[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[21]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [18]),
        .I1(\up_rdata_reg[23]_i_5_1 [17]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[21] ),
        .O(\up_rdata[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[22]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [19]),
        .I1(\up_rdata_reg[23]_i_5_1 [18]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[22] ),
        .O(\up_rdata[22]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[23]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [20]),
        .I1(\up_rdata_reg[23]_i_5_1 [19]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[23] ),
        .O(\up_rdata[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[24]_i_5 
       (.I0(\data_reg_n_0_[24] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_axis_data[24]),
        .O(\data_reg[24]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[25]_i_5 
       (.I0(\data_reg_n_0_[25] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_axis_data[25]),
        .O(\data_reg[25]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[26]_i_5 
       (.I0(\data_reg_n_0_[26] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_axis_data[26]),
        .O(\data_reg[26]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[27]_i_5 
       (.I0(\data_reg_n_0_[27] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_axis_data[27]),
        .O(\data_reg[27]_0 ));
  LUT4 #(
    .INIT(16'hBC8C)) 
    \up_rdata[28]_i_6 
       (.I0(\data_reg_n_0_[28] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_axis_data[28]),
        .O(\data_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h0033223000002230)) 
    \up_rdata[2]_i_6 
       (.I0(\data_reg_n_0_[2] ),
        .I1(Q[3]),
        .I2(p_3_in),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(\up_rdata_reg[23]_i_5_0 [0]),
        .O(\data_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[4]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [1]),
        .I1(\up_rdata_reg[23]_i_5_1 [0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[4] ),
        .O(\up_rdata[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[5]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [2]),
        .I1(\up_rdata_reg[23]_i_5_1 [1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[5] ),
        .O(\up_rdata[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[6]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [3]),
        .I1(\up_rdata_reg[23]_i_5_1 [2]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[6] ),
        .O(\up_rdata[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[7]_i_7 
       (.I0(\up_rdata_reg[23]_i_5_0 [4]),
        .I1(\up_rdata_reg[23]_i_5_1 [3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[7] ),
        .O(\up_rdata[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[8]_i_5 
       (.I0(\up_rdata_reg[23]_i_5_0 [5]),
        .I1(\up_rdata_reg[23]_i_5_1 [4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[8] ),
        .O(\up_dma_y_length_reg[8] ));
  LUT5 #(
    .INIT(32'hAFFCA0FC)) 
    \up_rdata[9]_i_5 
       (.I0(\up_rdata_reg[23]_i_5_0 [6]),
        .I1(\up_rdata_reg[23]_i_5_1 [5]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\data_reg_n_0_[9] ),
        .O(\up_dma_y_length_reg[9] ));
  MUXF7 \up_rdata_reg[12]_i_5 
       (.I0(\up_rdata[12]_i_4 ),
        .I1(\up_rdata[12]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_3 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[13]_i_5 
       (.I0(\up_rdata[13]_i_4 ),
        .I1(\up_rdata[13]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_4 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[14]_i_5 
       (.I0(\up_rdata[14]_i_4 ),
        .I1(\up_rdata[14]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_5 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[15]_i_5 
       (.I0(\up_rdata[15]_i_4 ),
        .I1(\up_rdata[15]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_6 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[20]_i_5 
       (.I0(\up_rdata[20]_i_4 ),
        .I1(\up_rdata[20]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_7 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[21]_i_5 
       (.I0(\up_rdata[21]_i_4 ),
        .I1(\up_rdata[21]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_8 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[22]_i_5 
       (.I0(\up_rdata[22]_i_4 ),
        .I1(\up_rdata[22]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_9 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[23]_i_5 
       (.I0(\up_rdata[23]_i_4 ),
        .I1(\up_rdata[23]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_10 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[4]_i_5 
       (.I0(\up_rdata[4]_i_4 ),
        .I1(\up_rdata[4]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0] ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[5]_i_5 
       (.I0(\up_rdata[5]_i_4 ),
        .I1(\up_rdata[5]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_0 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[6]_i_5 
       (.I0(\up_rdata[6]_i_4 ),
        .I1(\up_rdata[6]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_1 ),
        .S(Q[0]));
  MUXF7 \up_rdata_reg[7]_i_5 
       (.I0(\up_rdata[7]_i_4 ),
        .I1(\up_rdata[7]_i_7_n_0 ),
        .O(\up_raddr_int_reg[0]_2 ),
        .S(Q[0]));
  FDRE valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_address_sync_n_2),
        .Q(up_tlf_valid),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module zed_axi_dmac_0_0_util_axis_fifo__parameterized0
   (\cdc_sync_fifo_ram_reg[0]_0 ,
    dest_req_valid,
    m_axis_raddr_reg_0,
    m_axis_raddr_reg_1,
    Q,
    m_src_axi_aclk,
    m_axis_aclk,
    data_eot,
    active_reg,
    m_axis_ready,
    dest_fifo_last,
    src_req_dest_address_cur0,
    src_dest_valid_hs,
    src_req_xlast_cur);
  output \cdc_sync_fifo_ram_reg[0]_0 ;
  output dest_req_valid;
  output m_axis_raddr_reg_0;
  output m_axis_raddr_reg_1;
  input [0:0]Q;
  input m_src_axi_aclk;
  input m_axis_aclk;
  input data_eot;
  input active_reg;
  input m_axis_ready;
  input dest_fifo_last;
  input src_req_dest_address_cur0;
  input src_dest_valid_hs;
  input src_req_xlast_cur;

  wire [0:0]Q;
  wire active_reg;
  wire \cdc_sync_fifo_ram[0]_i_1__1_n_0 ;
  wire \cdc_sync_fifo_ram_reg[0]_0 ;
  wire data_eot;
  wire dest_fifo_last;
  wire dest_req_valid;
  wire m_axis_aclk;
  wire m_axis_raddr_i_1_n_0;
  wire m_axis_raddr_reg_0;
  wire m_axis_raddr_reg_1;
  wire m_axis_raddr_reg_n_0;
  wire m_axis_ready;
  wire m_src_axi_aclk;
  wire s_axis_waddr_i_1__1_n_0;
  wire s_axis_waddr_reg_n_0;
  wire src_dest_valid_hs;
  wire src_req_dest_address_cur0;
  wire src_req_xlast_cur;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \acked[1]_i_3 
       (.I0(s_axis_waddr_reg_n_0),
        .I1(m_axis_raddr_reg_n_0),
        .O(dest_req_valid));
  LUT6 #(
    .INIT(64'h6F66FF66FF66FF66)) 
    active_i_1
       (.I0(m_axis_raddr_reg_n_0),
        .I1(s_axis_waddr_reg_n_0),
        .I2(data_eot),
        .I3(active_reg),
        .I4(m_axis_ready),
        .I5(dest_fifo_last),
        .O(m_axis_raddr_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hBFFB8008)) 
    \cdc_sync_fifo_ram[0]_i_1__1 
       (.I0(src_req_xlast_cur),
        .I1(src_dest_valid_hs),
        .I2(m_axis_raddr_reg_n_0),
        .I3(s_axis_waddr_reg_n_0),
        .I4(\cdc_sync_fifo_ram_reg[0]_0 ),
        .O(\cdc_sync_fifo_ram[0]_i_1__1_n_0 ));
  FDRE \cdc_sync_fifo_ram_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_fifo_ram[0]_i_1__1_n_0 ),
        .Q(\cdc_sync_fifo_ram_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF7F0080FF0000)) 
    m_axis_raddr_i_1
       (.I0(data_eot),
        .I1(m_axis_ready),
        .I2(dest_fifo_last),
        .I3(active_reg),
        .I4(s_axis_waddr_reg_n_0),
        .I5(m_axis_raddr_reg_n_0),
        .O(m_axis_raddr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(m_axis_raddr_i_1_n_0),
        .Q(m_axis_raddr_reg_n_0),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h74)) 
    s_axis_waddr_i_1__1
       (.I0(m_axis_raddr_reg_n_0),
        .I1(src_dest_valid_hs),
        .I2(s_axis_waddr_reg_n_0),
        .O(s_axis_waddr_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(s_axis_waddr_i_1__1_n_0),
        .Q(s_axis_waddr_reg_n_0),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hBEAA)) 
    src_dest_valid_hs_i_1
       (.I0(src_req_dest_address_cur0),
        .I1(m_axis_raddr_reg_n_0),
        .I2(s_axis_waddr_reg_n_0),
        .I3(src_dest_valid_hs),
        .O(m_axis_raddr_reg_1));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module zed_axi_dmac_0_0_util_axis_fifo__parameterized1
   (s_axis_waddr_reg_0,
    m_axis_raddr_reg_0,
    E,
    req_ready0__0,
    req_id0,
    src_req_spltr_valid,
    \cdc_sync_fifo_ram_reg[0]_0 ,
    s_axis_waddr_reg_1,
    \cdc_sync_fifo_ram_reg[34]_0 ,
    Q,
    s_axi_aclk,
    m_axis_raddr_reg_1,
    m_src_axi_aclk,
    dest_address1,
    dma_req_valid,
    \cdc_sync_fifo_ram_reg[34]_1 ,
    out_last,
    src_req_dest_address_cur0,
    src_req_xlast_cur,
    D);
  output s_axis_waddr_reg_0;
  output m_axis_raddr_reg_0;
  output [0:0]E;
  output req_ready0__0;
  output req_id0;
  output src_req_spltr_valid;
  output \cdc_sync_fifo_ram_reg[0]_0 ;
  output s_axis_waddr_reg_1;
  output [29:0]\cdc_sync_fifo_ram_reg[34]_0 ;
  input [0:0]Q;
  input s_axi_aclk;
  input m_axis_raddr_reg_1;
  input m_src_axi_aclk;
  input dest_address1;
  input dma_req_valid;
  input \cdc_sync_fifo_ram_reg[34]_1 ;
  input out_last;
  input src_req_dest_address_cur0;
  input src_req_xlast_cur;
  input [30:0]D;

  wire [30:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \cdc_sync_fifo_ram[34]_i_1_n_0 ;
  wire \cdc_sync_fifo_ram_reg[0]_0 ;
  wire [29:0]\cdc_sync_fifo_ram_reg[34]_0 ;
  wire \cdc_sync_fifo_ram_reg[34]_1 ;
  wire \cdc_sync_fifo_ram_reg_n_0_[0] ;
  wire dest_address1;
  wire dma_req_valid;
  wire m_axis_raddr_reg_0;
  wire m_axis_raddr_reg_1;
  wire m_src_axi_aclk;
  wire out_last;
  wire req_id0;
  wire req_ready0__0;
  wire s_axi_aclk;
  wire s_axis_waddr_i_1__0_n_0;
  wire s_axis_waddr_reg_0;
  wire s_axis_waddr_reg_1;
  wire src_req_dest_address_cur0;
  wire src_req_spltr_valid;
  wire src_req_xlast_cur;

  LUT4 #(
    .INIT(16'h8008)) 
    \cdc_sync_fifo_ram[34]_i_1 
       (.I0(\cdc_sync_fifo_ram_reg[34]_1 ),
        .I1(dma_req_valid),
        .I2(m_axis_raddr_reg_0),
        .I3(s_axis_waddr_reg_0),
        .O(\cdc_sync_fifo_ram[34]_i_1_n_0 ));
  FDRE \cdc_sync_fifo_ram_reg[0] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[0]),
        .Q(\cdc_sync_fifo_ram_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[10] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[6]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [5]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[11] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[7]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [6]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[12] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[8]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [7]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[13] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[9]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [8]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[14] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[10]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [9]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[15] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[11]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [10]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[16] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[12]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [11]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[17] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[13]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [12]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[18] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[14]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [13]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[19] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[15]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [14]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[20] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[16]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [15]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[21] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[17]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [16]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[22] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[18]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [17]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[23] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[19]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [18]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[24] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[20]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [19]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[25] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[21]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [20]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[26] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[22]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [21]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[27] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[23]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [22]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[28] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[24]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [23]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[29] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[25]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [24]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[30] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[26]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [25]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[31] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[27]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [26]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[32] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[28]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [27]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[33] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[29]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [28]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[34] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[30]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [29]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[5] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[1]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [0]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[6] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[2]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [1]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[7] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[3]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [2]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[8] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[4]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [3]),
        .R(1'b0));
  FDRE \cdc_sync_fifo_ram_reg[9] 
       (.C(s_axi_aclk),
        .CE(\cdc_sync_fifo_ram[34]_i_1_n_0 ),
        .D(D[5]),
        .Q(\cdc_sync_fifo_ram_reg[34]_0 [4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    \last_req[3]_i_2 
       (.I0(s_axis_waddr_reg_0),
        .I1(m_axis_raddr_reg_0),
        .I2(\cdc_sync_fifo_ram_reg[34]_1 ),
        .I3(dma_req_valid),
        .O(req_id0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(m_axis_raddr_reg_1),
        .Q(m_axis_raddr_reg_0),
        .R(Q));
  LUT6 #(
    .INIT(64'hBEFFAAAAFFFFAAAA)) 
    out_req_valid_i_1
       (.I0(dest_address1),
        .I1(s_axis_waddr_reg_0),
        .I2(m_axis_raddr_reg_0),
        .I3(\cdc_sync_fifo_ram_reg[34]_1 ),
        .I4(dma_req_valid),
        .I5(out_last),
        .O(s_axis_waddr_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h80000080)) 
    req_ready_i_2
       (.I0(out_last),
        .I1(dma_req_valid),
        .I2(\cdc_sync_fifo_ram_reg[34]_1 ),
        .I3(m_axis_raddr_reg_0),
        .I4(s_axis_waddr_reg_0),
        .O(req_ready0__0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h7F40)) 
    s_axis_waddr_i_1__0
       (.I0(m_axis_raddr_reg_0),
        .I1(dma_req_valid),
        .I2(\cdc_sync_fifo_ram_reg[34]_1 ),
        .I3(s_axis_waddr_reg_0),
        .O(s_axis_waddr_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axis_waddr_i_1__0_n_0),
        .Q(s_axis_waddr_reg_0),
        .R(Q));
  LUT3 #(
    .INIT(8'hB8)) 
    src_req_xlast_cur_i_1
       (.I0(\cdc_sync_fifo_ram_reg_n_0_[0] ),
        .I1(src_req_dest_address_cur0),
        .I2(src_req_xlast_cur),
        .O(\cdc_sync_fifo_ram_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \state[0]_i_3 
       (.I0(s_axis_waddr_reg_0),
        .I1(m_axis_raddr_reg_0),
        .O(src_req_spltr_valid));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hEAAAAAEA)) 
    \y_length[23]_i_1 
       (.I0(dest_address1),
        .I1(dma_req_valid),
        .I2(\cdc_sync_fifo_ram_reg[34]_1 ),
        .I3(m_axis_raddr_reg_0),
        .I4(s_axis_waddr_reg_0),
        .O(E));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module zed_axi_dmac_0_0_util_axis_fifo__parameterized2
   (id0,
    D,
    \FSM_sequential_state_reg[2] ,
    out_response_ready_reg,
    \cdc_sync_fifo_ram_reg[0]_0 ,
    Q,
    m_axis_aclk,
    s_axi_aclk,
    response_eot,
    dest_response_valid,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    dma_response_ready,
    response_valid_reg,
    response_dest_ready,
    req_eot,
    transfer_id,
    state_reg);
  output id0;
  output [2:0]D;
  output \FSM_sequential_state_reg[2] ;
  output out_response_ready_reg;
  output \cdc_sync_fifo_ram_reg[0]_0 ;
  input [0:0]Q;
  input m_axis_aclk;
  input s_axi_aclk;
  input response_eot;
  input dest_response_valid;
  input [2:0]\FSM_sequential_state_reg[0] ;
  input \FSM_sequential_state_reg[0]_0 ;
  input dma_response_ready;
  input response_valid_reg;
  input response_dest_ready;
  input req_eot;
  input [1:0]transfer_id;
  input [0:0]state_reg;

  wire [2:0]D;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire [2:0]\FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire [0:0]Q;
  wire cdc_sync_fifo_ram;
  wire cdc_sync_fifo_ram0;
  wire \cdc_sync_fifo_ram_reg[0]_0 ;
  wire dest_response_ready;
  wire dest_response_valid;
  wire dma_response_ready;
  wire id0;
  wire m_axis_aclk;
  wire m_axis_raddr_i_1__1_n_0;
  wire m_axis_raddr_reg_n_0;
  wire out_response_ready_reg;
  wire req_eot;
  wire response_dest_ready;
  wire response_dest_ready_i_2_n_0;
  wire response_dest_ready_i_3_n_0;
  wire response_dest_ready_i_4_n_0;
  wire response_dest_ready_i_5_n_0;
  wire response_dest_ready_i_6_n_0;
  wire response_dest_ready_i_7_n_0;
  wire response_eot;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire s_axis_waddr_i_1_n_0;
  wire s_axis_waddr_reg_n_0;
  wire [0:0]state_reg;
  wire [1:0]transfer_id;

  LUT6 #(
    .INIT(64'hBAB0FFF5BAB0AAA0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0] [2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\FSM_sequential_state_reg[0] [0]),
        .I3(dma_response_ready),
        .I4(\FSM_sequential_state_reg[0] [1]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00000000666F6666)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(s_axis_waddr_reg_n_0),
        .I1(m_axis_raddr_reg_n_0),
        .I2(transfer_id[1]),
        .I3(transfer_id[0]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[0] [0]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBF5AFF5BBF5AFA0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[0] [2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(dma_response_ready),
        .I3(\FSM_sequential_state_reg[0] [1]),
        .I4(\FSM_sequential_state_reg[0] [0]),
        .I5(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h9090909090909990)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(m_axis_raddr_reg_n_0),
        .I1(s_axis_waddr_reg_n_0),
        .I2(\FSM_sequential_state_reg[0] [1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(transfer_id[0]),
        .I5(transfer_id[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4E0A4E0A0A5F0A0A)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg[0] [2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(dma_response_ready),
        .I3(\FSM_sequential_state_reg[0] [1]),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(\FSM_sequential_state_reg[0] [0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h9090909090900090)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(m_axis_raddr_reg_n_0),
        .I1(s_axis_waddr_reg_n_0),
        .I2(\FSM_sequential_state_reg[0] [2]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(transfer_id[0]),
        .I5(transfer_id[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \cdc_sync_fifo_ram[0]_i_1__0 
       (.I0(m_axis_raddr_reg_n_0),
        .I1(s_axis_waddr_reg_n_0),
        .I2(dest_response_valid),
        .O(cdc_sync_fifo_ram0));
  FDRE \cdc_sync_fifo_ram_reg[0] 
       (.C(m_axis_aclk),
        .CE(cdc_sync_fifo_ram0),
        .D(response_eot),
        .Q(cdc_sync_fifo_ram),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_raddr_i_1__1
       (.I0(s_axis_waddr_reg_n_0),
        .I1(response_dest_ready),
        .I2(m_axis_raddr_reg_n_0),
        .O(m_axis_raddr_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_raddr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(m_axis_raddr_i_1__1_n_0),
        .Q(m_axis_raddr_reg_n_0),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFBBF0880)) 
    req_eot_i_1__0
       (.I0(cdc_sync_fifo_ram),
        .I1(response_dest_ready),
        .I2(m_axis_raddr_reg_n_0),
        .I3(s_axis_waddr_reg_n_0),
        .I4(req_eot),
        .O(\cdc_sync_fifo_ram_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h01)) 
    response_dest_ready_i_1
       (.I0(response_dest_ready_i_2_n_0),
        .I1(response_dest_ready_i_3_n_0),
        .I2(response_dest_ready_i_4_n_0),
        .O(\FSM_sequential_state_reg[2] ));
  LUT6 #(
    .INIT(64'h44004400005F000A)) 
    response_dest_ready_i_2
       (.I0(\FSM_sequential_state_reg[0] [2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(dma_response_ready),
        .I3(\FSM_sequential_state_reg[0] [1]),
        .I4(response_dest_ready_i_5_n_0),
        .I5(\FSM_sequential_state_reg[0] [0]),
        .O(response_dest_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'hBA10FF55BA10AA00)) 
    response_dest_ready_i_3
       (.I0(\FSM_sequential_state_reg[0] [2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(\FSM_sequential_state_reg[0] [0]),
        .I3(dma_response_ready),
        .I4(\FSM_sequential_state_reg[0] [1]),
        .I5(response_dest_ready_i_6_n_0),
        .O(response_dest_ready_i_3_n_0));
  LUT6 #(
    .INIT(64'hB1F5A5F5B1F5A5A0)) 
    response_dest_ready_i_4
       (.I0(\FSM_sequential_state_reg[0] [2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(dma_response_ready),
        .I3(\FSM_sequential_state_reg[0] [1]),
        .I4(\FSM_sequential_state_reg[0] [0]),
        .I5(response_dest_ready_i_7_n_0),
        .O(response_dest_ready_i_4_n_0));
  LUT6 #(
    .INIT(64'h9090909090900090)) 
    response_dest_ready_i_5
       (.I0(m_axis_raddr_reg_n_0),
        .I1(s_axis_waddr_reg_n_0),
        .I2(state_reg),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(transfer_id[0]),
        .I5(transfer_id[1]),
        .O(response_dest_ready_i_5_n_0));
  LUT5 #(
    .INIT(32'h00005755)) 
    response_dest_ready_i_6
       (.I0(dest_response_ready),
        .I1(transfer_id[1]),
        .I2(transfer_id[0]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(\FSM_sequential_state_reg[0] [0]),
        .O(response_dest_ready_i_6_n_0));
  LUT6 #(
    .INIT(64'h202020202020AA20)) 
    response_dest_ready_i_7
       (.I0(dest_response_ready),
        .I1(\FSM_sequential_state_reg[0] [2]),
        .I2(\FSM_sequential_state_reg[0] [1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(transfer_id[0]),
        .I5(transfer_id[1]),
        .O(response_dest_ready_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    response_dest_ready_i_9
       (.I0(s_axis_waddr_reg_n_0),
        .I1(m_axis_raddr_reg_n_0),
        .O(dest_response_ready));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \response_id[3]_i_1 
       (.I0(dest_response_valid),
        .I1(m_axis_raddr_reg_n_0),
        .I2(s_axis_waddr_reg_n_0),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h12FF1212)) 
    response_valid_i_1
       (.I0(response_dest_ready_i_2_n_0),
        .I1(response_dest_ready_i_3_n_0),
        .I2(response_dest_ready_i_4_n_0),
        .I3(dma_response_ready),
        .I4(response_valid_reg),
        .O(out_response_ready_reg));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h72)) 
    s_axis_waddr_i_1
       (.I0(dest_response_valid),
        .I1(m_axis_raddr_reg_n_0),
        .I2(s_axis_waddr_reg_n_0),
        .O(s_axis_waddr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_waddr_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(s_axis_waddr_i_1_n_0),
        .Q(s_axis_waddr_reg_n_0),
        .R(Q));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
