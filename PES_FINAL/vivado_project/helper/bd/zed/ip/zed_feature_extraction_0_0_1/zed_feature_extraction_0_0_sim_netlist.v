// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (lin64) Build 2489853 Tue Mar 26 04:18:30 MDT 2019
// Date        : Tue Apr 23 18:30:14 2019
// Host        : itiv-work1.itiv.kit.edu running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/hotfilter/lehre/dhl/vivado_project/helper/bd/zed/ip/zed_feature_extraction_0_0_1/zed_feature_extraction_0_0_sim_netlist.v
// Design      : zed_feature_extraction_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_WIDTH = "11" *) (* DATA_WIDTH = "1" *) (* ORIG_REF_NAME = "ram_dp" *) 
(* USE_OUTPUT_REG = "1'b0" *) 
module ram_dp_HD7
   (clk,
    wena,
    wenb,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb);
  input clk;
  input wena;
  input wenb;
  input [10:0]addra;
  input [10:0]addrb;
  input [0:0]dina;
  input [0:0]dinb;
  output [0:0]douta;
  output [0:0]doutb;


endmodule

(* CHECK_LICENSE_TYPE = "zed_feature_extraction_0_0,feature_extraction,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "feature_extraction,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module zed_feature_extraction_0_0
   (data_axis_aclk,
    data_axis_aresetn,
    data_axis_tready,
    data_axis_tdata,
    data_axis_tstrb,
    data_axis_tlast,
    data_axis_tvalid,
    registers_axil_aclk,
    registers_axil_aresetn,
    registers_axil_araddr,
    registers_axil_arprot,
    registers_axil_arready,
    registers_axil_arvalid,
    registers_axil_awaddr,
    registers_axil_awprot,
    registers_axil_awready,
    registers_axil_awvalid,
    registers_axil_bready,
    registers_axil_bresp,
    registers_axil_bvalid,
    registers_axil_rdata,
    registers_axil_rready,
    registers_axil_rresp,
    registers_axil_rvalid,
    registers_axil_wdata,
    registers_axil_wready,
    registers_axil_wstrb,
    registers_axil_wvalid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 data_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME data_axis_aclk, ASSOCIATED_RESET data_axis_aresetn, ASSOCIATED_BUSIF data_axis, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK2, INSERT_VIP 0" *) input data_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 data_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME data_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input data_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_axis TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME data_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK2, LAYERED_METADATA undef, INSERT_VIP 0" *) output data_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_axis TDATA" *) input [31:0]data_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_axis TSTRB" *) input [3:0]data_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_axis TLAST" *) input data_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_axis TVALID" *) input data_axis_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 registers_axil_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME registers_axil_aclk, ASSOCIATED_RESET registers_axil_aresetn, ASSOCIATED_BUSIF registers_axil, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK2, INSERT_VIP 0" *) input registers_axil_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 registers_axil_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME registers_axil_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input registers_axil_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME registers_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zed_processing_system7_0_0_FCLK_CLK2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]registers_axil_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil ARPROT" *) input [2:0]registers_axil_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil ARREADY" *) output registers_axil_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil ARVALID" *) input registers_axil_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil AWADDR" *) input [5:0]registers_axil_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil AWPROT" *) input [2:0]registers_axil_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil AWREADY" *) output registers_axil_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil AWVALID" *) input registers_axil_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil BREADY" *) input registers_axil_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil BRESP" *) output [1:0]registers_axil_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil BVALID" *) output registers_axil_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil RDATA" *) output [31:0]registers_axil_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil RREADY" *) input registers_axil_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil RRESP" *) output [1:0]registers_axil_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil RVALID" *) output registers_axil_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil WDATA" *) input [31:0]registers_axil_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil WREADY" *) output registers_axil_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil WSTRB" *) input [3:0]registers_axil_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 registers_axil WVALID" *) input registers_axil_wvalid;

  wire \<const0> ;
  wire data_axis_aclk;
  wire data_axis_aresetn;
  wire [31:0]data_axis_tdata;
  wire data_axis_tlast;
  wire data_axis_tready;
  wire data_axis_tvalid;
  wire registers_axil_aclk;
  wire [5:0]registers_axil_araddr;
  wire registers_axil_aresetn;
  wire registers_axil_arready;
  wire registers_axil_arvalid;
  wire [5:0]registers_axil_awaddr;
  wire registers_axil_awready;
  wire registers_axil_awvalid;
  wire registers_axil_bready;
  wire registers_axil_bvalid;
  wire [31:0]registers_axil_rdata;
  wire registers_axil_rready;
  wire registers_axil_rvalid;
  wire [31:0]registers_axil_wdata;
  wire registers_axil_wready;
  wire [3:0]registers_axil_wstrb;
  wire registers_axil_wvalid;

  assign registers_axil_bresp[1] = \<const0> ;
  assign registers_axil_bresp[0] = \<const0> ;
  assign registers_axil_rresp[1] = \<const0> ;
  assign registers_axil_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  zed_feature_extraction_0_0_feature_extraction U0
       (.S_AXI_ARREADY(registers_axil_arready),
        .S_AXI_AWREADY(registers_axil_awready),
        .S_AXI_WREADY(registers_axil_wready),
        .data_axis_aclk(data_axis_aclk),
        .data_axis_aresetn(data_axis_aresetn),
        .data_axis_tdata(data_axis_tdata),
        .data_axis_tlast(data_axis_tlast),
        .data_axis_tready(data_axis_tready),
        .data_axis_tvalid(data_axis_tvalid),
        .registers_axil_aclk(registers_axil_aclk),
        .registers_axil_araddr(registers_axil_araddr[5:2]),
        .registers_axil_aresetn(registers_axil_aresetn),
        .registers_axil_arvalid(registers_axil_arvalid),
        .registers_axil_awaddr(registers_axil_awaddr[5:2]),
        .registers_axil_awvalid(registers_axil_awvalid),
        .registers_axil_bready(registers_axil_bready),
        .registers_axil_bvalid(registers_axil_bvalid),
        .registers_axil_rdata(registers_axil_rdata),
        .registers_axil_rready(registers_axil_rready),
        .registers_axil_rvalid(registers_axil_rvalid),
        .registers_axil_wdata(registers_axil_wdata),
        .registers_axil_wstrb(registers_axil_wstrb),
        .registers_axil_wvalid(registers_axil_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_str_core" *) 
module zed_feature_extraction_0_0_axi_str_core
   (WREN,
    Q,
    data_axis_tready,
    data_axis_aclk,
    busy_int_del,
    data_axis_aresetn,
    data_axis_tlast,
    data_axis_tvalid,
    data_axis_tdata,
    pixel_buffer_to_stream_if_busy);
  output WREN;
  output [31:0]Q;
  output data_axis_tready;
  input data_axis_aclk;
  input busy_int_del;
  input data_axis_aresetn;
  input data_axis_tlast;
  input data_axis_tvalid;
  input [31:0]data_axis_tdata;
  input pixel_buffer_to_stream_if_busy;

  wire [31:0]Q;
  wire WREN;
  wire axis_to_pixbuf_en;
  wire busy_int_del;
  wire data_axis_aclk;
  wire data_axis_aresetn;
  wire [31:0]data_axis_tdata;
  wire data_axis_tlast;
  wire data_axis_tready;
  wire data_axis_tvalid;
  wire fifo_wren;
  wire mst_exec_state;
  wire mst_exec_state_i_2_n_0;
  wire p_0_in;
  wire pixel_buffer_to_stream_if_busy;
  wire writes_done;
  wire writes_done_i_1_n_0;

  LUT2 #(
    .INIT(4'h2)) 
    FIFO18E1_inst_i_2
       (.I0(axis_to_pixbuf_en),
        .I1(busy_int_del),
        .O(WREN));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_axis_tready_INST_0
       (.I0(mst_exec_state),
        .I1(pixel_buffer_to_stream_if_busy),
        .O(data_axis_tready));
  LUT1 #(
    .INIT(2'h1)) 
    mst_exec_state_i_1
       (.I0(data_axis_aresetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h74)) 
    mst_exec_state_i_2
       (.I0(writes_done),
        .I1(mst_exec_state),
        .I2(data_axis_tvalid),
        .O(mst_exec_state_i_2_n_0));
  FDRE mst_exec_state_reg
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_2_n_0),
        .Q(mst_exec_state),
        .R(p_0_in));
  FDRE \stream_data_reg[0] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \stream_data_reg[10] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[10]),
        .Q(Q[10]),
        .R(p_0_in));
  FDRE \stream_data_reg[11] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[11]),
        .Q(Q[11]),
        .R(p_0_in));
  FDRE \stream_data_reg[12] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[12]),
        .Q(Q[12]),
        .R(p_0_in));
  FDRE \stream_data_reg[13] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[13]),
        .Q(Q[13]),
        .R(p_0_in));
  FDRE \stream_data_reg[14] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[14]),
        .Q(Q[14]),
        .R(p_0_in));
  FDRE \stream_data_reg[15] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[15]),
        .Q(Q[15]),
        .R(p_0_in));
  FDRE \stream_data_reg[16] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[16]),
        .Q(Q[16]),
        .R(p_0_in));
  FDRE \stream_data_reg[17] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[17]),
        .Q(Q[17]),
        .R(p_0_in));
  FDRE \stream_data_reg[18] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[18]),
        .Q(Q[18]),
        .R(p_0_in));
  FDRE \stream_data_reg[19] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[19]),
        .Q(Q[19]),
        .R(p_0_in));
  FDRE \stream_data_reg[1] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \stream_data_reg[20] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[20]),
        .Q(Q[20]),
        .R(p_0_in));
  FDRE \stream_data_reg[21] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[21]),
        .Q(Q[21]),
        .R(p_0_in));
  FDRE \stream_data_reg[22] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[22]),
        .Q(Q[22]),
        .R(p_0_in));
  FDRE \stream_data_reg[23] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[23]),
        .Q(Q[23]),
        .R(p_0_in));
  FDRE \stream_data_reg[24] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[24]),
        .Q(Q[24]),
        .R(p_0_in));
  FDRE \stream_data_reg[25] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[25]),
        .Q(Q[25]),
        .R(p_0_in));
  FDRE \stream_data_reg[26] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[26]),
        .Q(Q[26]),
        .R(p_0_in));
  FDRE \stream_data_reg[27] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[27]),
        .Q(Q[27]),
        .R(p_0_in));
  FDRE \stream_data_reg[28] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[28]),
        .Q(Q[28]),
        .R(p_0_in));
  FDRE \stream_data_reg[29] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[29]),
        .Q(Q[29]),
        .R(p_0_in));
  FDRE \stream_data_reg[2] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \stream_data_reg[30] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[30]),
        .Q(Q[30]),
        .R(p_0_in));
  FDRE \stream_data_reg[31] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[31]),
        .Q(Q[31]),
        .R(p_0_in));
  FDRE \stream_data_reg[3] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \stream_data_reg[4] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \stream_data_reg[5] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \stream_data_reg[6] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \stream_data_reg[7] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[7]),
        .Q(Q[7]),
        .R(p_0_in));
  FDRE \stream_data_reg[8] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[8]),
        .Q(Q[8]),
        .R(p_0_in));
  FDRE \stream_data_reg[9] 
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(data_axis_tdata[9]),
        .Q(Q[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    stream_enable_i_1
       (.I0(data_axis_tvalid),
        .I1(mst_exec_state),
        .O(fifo_wren));
  FDRE stream_enable_reg
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(fifo_wren),
        .Q(axis_to_pixbuf_en),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    writes_done_i_1
       (.I0(data_axis_tlast),
        .I1(mst_exec_state),
        .I2(data_axis_tvalid),
        .I3(writes_done),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(data_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(p_0_in));
endmodule

(* ORIG_REF_NAME = "feature_calculation" *) 
module zed_feature_extraction_0_0_feature_calculation
   (filter_to_reg_feature_bram_valid_2,
    registers_axil_aclk,
    reg_to_filter_feature_bram_readout_2,
    feature_bram_valid_reg_0,
    Q);
  output filter_to_reg_feature_bram_valid_2;
  input registers_axil_aclk;
  input reg_to_filter_feature_bram_readout_2;
  input feature_bram_valid_reg_0;
  input [10:0]Q;

  wire [10:0]Q;
  wire feature_bram_valid_i_1__0_n_0;
  wire feature_bram_valid_reg_0;
  wire filter_to_reg_feature_bram_valid_2;
  wire [10:0]r_addr_1;
  wire r_readout_reg_n_0;
  wire reg_to_filter_feature_bram_readout_2;
  wire registers_axil_aclk;
  wire valid_read;
  wire [0:0]NLW_bram_valid_douta_UNCONNECTED;

  (* ADDR_WIDTH = "11" *) 
  (* DATA_WIDTH = "1" *) 
  (* USE_OUTPUT_REG = "1'b0" *) 
  ram_dp_HD7 bram_valid
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .addrb(r_addr_1),
        .clk(registers_axil_aclk),
        .dina(1'b1),
        .dinb(1'b0),
        .douta(NLW_bram_valid_douta_UNCONNECTED[0]),
        .doutb(valid_read),
        .wena(1'b0),
        .wenb(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_1
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[10]),
        .O(r_addr_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_10
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[1]),
        .O(r_addr_1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_11
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[0]),
        .O(r_addr_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_2
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[9]),
        .O(r_addr_1[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_3
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[8]),
        .O(r_addr_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_4
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[7]),
        .O(r_addr_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_5
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[6]),
        .O(r_addr_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_6
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[5]),
        .O(r_addr_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_7
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[4]),
        .O(r_addr_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_8
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[3]),
        .O(r_addr_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_9
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(Q[2]),
        .O(r_addr_1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    feature_bram_valid_i_1__0
       (.I0(valid_read),
        .I1(r_readout_reg_n_0),
        .I2(filter_to_reg_feature_bram_valid_2),
        .O(feature_bram_valid_i_1__0_n_0));
  FDCE feature_bram_valid_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .CLR(feature_bram_valid_reg_0),
        .D(feature_bram_valid_i_1__0_n_0),
        .Q(filter_to_reg_feature_bram_valid_2));
  FDRE r_readout_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(reg_to_filter_feature_bram_readout_2),
        .Q(r_readout_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "feature_calculation" *) 
module zed_feature_extraction_0_0_feature_calculation_2
   (filter_to_reg_feature_bram_valid_1,
    registers_axil_aclk,
    reg_to_filter_feature_bram_readout_1,
    feature_bram_valid_reg_0,
    bram_valid_0);
  output filter_to_reg_feature_bram_valid_1;
  input registers_axil_aclk;
  input reg_to_filter_feature_bram_readout_1;
  input feature_bram_valid_reg_0;
  input [10:0]bram_valid_0;

  wire [10:0]bram_valid_0;
  wire feature_bram_valid_i_1_n_0;
  wire feature_bram_valid_reg_0;
  wire filter_to_reg_feature_bram_valid_1;
  wire [10:0]r_addr_1;
  wire r_readout;
  wire reg_to_filter_feature_bram_readout_1;
  wire registers_axil_aclk;
  wire valid_read;
  wire [0:0]NLW_bram_valid_douta_UNCONNECTED;

  (* ADDR_WIDTH = "11" *) 
  (* DATA_WIDTH = "1" *) 
  (* USE_OUTPUT_REG = "1'b0" *) 
  zed_feature_extraction_0_0_zed_feature_extraction_0_0_ram_dp bram_valid
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .addrb(r_addr_1),
        .clk(registers_axil_aclk),
        .dina(1'b1),
        .dinb(1'b0),
        .douta(NLW_bram_valid_douta_UNCONNECTED[0]),
        .doutb(valid_read),
        .wena(1'b0),
        .wenb(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_1
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[10]),
        .O(r_addr_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_10
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[1]),
        .O(r_addr_1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_11
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[0]),
        .O(r_addr_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_2
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[9]),
        .O(r_addr_1[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_3
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[8]),
        .O(r_addr_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_4
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[7]),
        .O(r_addr_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_5
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[6]),
        .O(r_addr_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_6
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[5]),
        .O(r_addr_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_7
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[4]),
        .O(r_addr_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_8
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[3]),
        .O(r_addr_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bram_valid_i_9
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(bram_valid_0[2]),
        .O(r_addr_1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    feature_bram_valid_i_1
       (.I0(valid_read),
        .I1(r_readout),
        .I2(filter_to_reg_feature_bram_valid_1),
        .O(feature_bram_valid_i_1_n_0));
  FDCE feature_bram_valid_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .CLR(feature_bram_valid_reg_0),
        .D(feature_bram_valid_i_1_n_0),
        .Q(filter_to_reg_feature_bram_valid_1));
  FDRE r_readout_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(reg_to_filter_feature_bram_readout_1),
        .Q(r_readout),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "feature_extraction" *) 
module zed_feature_extraction_0_0_feature_extraction
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    registers_axil_rdata,
    registers_axil_rvalid,
    registers_axil_bvalid,
    data_axis_tready,
    registers_axil_aresetn,
    registers_axil_aclk,
    registers_axil_awaddr,
    registers_axil_wdata,
    registers_axil_wstrb,
    registers_axil_araddr,
    registers_axil_awvalid,
    registers_axil_wvalid,
    registers_axil_arvalid,
    registers_axil_bready,
    registers_axil_rready,
    data_axis_aclk,
    data_axis_tdata,
    data_axis_tvalid,
    data_axis_aresetn,
    data_axis_tlast);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]registers_axil_rdata;
  output registers_axil_rvalid;
  output registers_axil_bvalid;
  output data_axis_tready;
  input registers_axil_aresetn;
  input registers_axil_aclk;
  input [3:0]registers_axil_awaddr;
  input [31:0]registers_axil_wdata;
  input [3:0]registers_axil_wstrb;
  input [3:0]registers_axil_araddr;
  input registers_axil_awvalid;
  input registers_axil_wvalid;
  input registers_axil_arvalid;
  input registers_axil_bready;
  input registers_axil_rready;
  input data_axis_aclk;
  input [31:0]data_axis_tdata;
  input data_axis_tvalid;
  input data_axis_aresetn;
  input data_axis_tlast;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire WREN;
  wire aw_en_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_lite_registers_n_21;
  wire axi_lite_registers_n_24;
  wire axi_lite_registers_n_26;
  wire axi_lite_registers_n_4;
  wire axi_lite_registers_n_71;
  wire axi_lite_registers_n_72;
  wire axi_lite_registers_n_73;
  wire axi_lite_registers_n_9;
  wire axi_rvalid_i_1_n_0;
  wire [31:0]axis_to_pixbuf_data;
  wire bram_filter_readout_1_i_1_n_0;
  wire bram_filter_readout_2_i_1_n_0;
  wire busy_int_del;
  wire data_axis_aclk;
  wire data_axis_aresetn;
  wire [31:0]data_axis_tdata;
  wire data_axis_tlast;
  wire data_axis_tready;
  wire data_axis_tvalid;
  wire filter_to_reg_feature_bram_valid_1;
  wire filter_to_reg_feature_bram_valid_2;
  wire [2:1]p_0_in;
  wire p_6_in;
  wire pixel_buffer_to_stream_if_busy;
  wire [10:0]reg_to_filter_feature_bram_raddr_1;
  wire [10:0]reg_to_filter_feature_bram_raddr_2;
  wire reg_to_filter_feature_bram_readout_1;
  wire reg_to_filter_feature_bram_readout_2;
  wire reg_to_filter_software_reset;
  wire register_filter_software_reset_i_1_n_0;
  wire registers_axil_aclk;
  wire [3:0]registers_axil_araddr;
  wire registers_axil_aresetn;
  wire registers_axil_arvalid;
  wire [3:0]registers_axil_awaddr;
  wire registers_axil_awvalid;
  wire registers_axil_bready;
  wire registers_axil_bvalid;
  wire [31:0]registers_axil_rdata;
  wire registers_axil_rready;
  wire registers_axil_rvalid;
  wire [31:0]registers_axil_wdata;
  wire [3:0]registers_axil_wstrb;
  wire registers_axil_wvalid;
  wire slv_reg_wren;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(axi_lite_registers_n_4),
        .I2(registers_axil_wvalid),
        .I3(registers_axil_awvalid),
        .I4(registers_axil_bready),
        .I5(registers_axil_bvalid),
        .O(aw_en_i_1_n_0));
  LUT3 #(
    .INIT(8'h3A)) 
    axi_bvalid_i_1
       (.I0(slv_reg_wren),
        .I1(registers_axil_bready),
        .I2(registers_axil_bvalid),
        .O(axi_bvalid_i_1_n_0));
  zed_feature_extraction_0_0_feature_extraction_registers axi_lite_registers
       (.Q(reg_to_filter_feature_bram_raddr_2),
        .aw_en_reg_0(axi_lite_registers_n_4),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .\axi_awaddr_reg[3]_0 (axi_lite_registers_n_73),
        .\axi_awaddr_reg[4]_0 (axi_lite_registers_n_21),
        .\axi_awaddr_reg[4]_1 (p_0_in),
        .\axi_awaddr_reg[5]_rep__1_0 (axi_lite_registers_n_24),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(S_AXI_WREADY),
        .bram_filter_readout_1_reg_0(bram_filter_readout_1_i_1_n_0),
        .bram_filter_readout_2_reg_0(bram_filter_readout_2_i_1_n_0),
        .filter_to_reg_feature_bram_valid_1(filter_to_reg_feature_bram_valid_1),
        .filter_to_reg_feature_bram_valid_2(filter_to_reg_feature_bram_valid_2),
        .reg_to_filter_feature_bram_readout_1(reg_to_filter_feature_bram_readout_1),
        .reg_to_filter_feature_bram_readout_2(reg_to_filter_feature_bram_readout_2),
        .reg_to_filter_software_reset(reg_to_filter_software_reset),
        .register_filter_software_reset_reg_0(axi_lite_registers_n_9),
        .register_filter_software_reset_reg_1(register_filter_software_reset_i_1_n_0),
        .registers_axil_aclk(registers_axil_aclk),
        .registers_axil_araddr(registers_axil_araddr),
        .registers_axil_aresetn(registers_axil_aresetn),
        .registers_axil_arvalid(registers_axil_arvalid),
        .registers_axil_awaddr(registers_axil_awaddr),
        .registers_axil_awvalid(registers_axil_awvalid),
        .registers_axil_awvalid_0(axi_lite_registers_n_26),
        .registers_axil_bvalid(registers_axil_bvalid),
        .registers_axil_rdata(registers_axil_rdata),
        .registers_axil_rvalid(registers_axil_rvalid),
        .registers_axil_wdata(registers_axil_wdata),
        .\registers_axil_wdata[16]_0 (axi_lite_registers_n_72),
        .registers_axil_wdata_16_sp_1(axi_lite_registers_n_71),
        .registers_axil_wstrb(registers_axil_wstrb),
        .registers_axil_wvalid(registers_axil_wvalid),
        .\slv_reg0_reg[16]_0 (p_6_in),
        .\slv_reg7_reg[10]_0 (reg_to_filter_feature_bram_raddr_1),
        .slv_reg_wren(slv_reg_wren));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(registers_axil_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(registers_axil_rvalid),
        .I3(registers_axil_rready),
        .O(axi_rvalid_i_1_n_0));
  zed_feature_extraction_0_0_axi_str_core axi_stream_interface
       (.Q(axis_to_pixbuf_data),
        .WREN(WREN),
        .busy_int_del(busy_int_del),
        .data_axis_aclk(data_axis_aclk),
        .data_axis_aresetn(data_axis_aresetn),
        .data_axis_tdata(data_axis_tdata),
        .data_axis_tlast(data_axis_tlast),
        .data_axis_tready(data_axis_tready),
        .data_axis_tvalid(data_axis_tvalid),
        .pixel_buffer_to_stream_if_busy(pixel_buffer_to_stream_if_busy));
  LUT6 #(
    .INIT(64'h03000000AAAAAAAA)) 
    bram_filter_readout_1_i_1
       (.I0(reg_to_filter_feature_bram_readout_1),
        .I1(axi_lite_registers_n_73),
        .I2(axi_lite_registers_n_24),
        .I3(p_0_in[2]),
        .I4(axi_lite_registers_n_26),
        .I5(registers_axil_aresetn),
        .O(bram_filter_readout_1_i_1_n_0));
  LUT6 #(
    .INIT(64'h00C00000AAAAAAAA)) 
    bram_filter_readout_2_i_1
       (.I0(reg_to_filter_feature_bram_readout_2),
        .I1(axi_lite_registers_n_24),
        .I2(p_0_in[1]),
        .I3(axi_lite_registers_n_21),
        .I4(axi_lite_registers_n_26),
        .I5(registers_axil_aresetn),
        .O(bram_filter_readout_2_i_1_n_0));
  zed_feature_extraction_0_0_filter_hw filter_hw_instance
       (.Q(reg_to_filter_feature_bram_raddr_2),
        .bram_valid(reg_to_filter_feature_bram_raddr_1),
        .feature_bram_valid_reg(axi_lite_registers_n_9),
        .filter_to_reg_feature_bram_valid_1(filter_to_reg_feature_bram_valid_1),
        .filter_to_reg_feature_bram_valid_2(filter_to_reg_feature_bram_valid_2),
        .reg_to_filter_feature_bram_readout_1(reg_to_filter_feature_bram_readout_1),
        .reg_to_filter_feature_bram_readout_2(reg_to_filter_feature_bram_readout_2),
        .registers_axil_aclk(registers_axil_aclk));
  zed_feature_extraction_0_0_pixel_buffer pixel_buffer_instance
       (.\G_32.busy_int_del_reg_0 (axi_lite_registers_n_9),
        .Q(axis_to_pixbuf_data),
        .WREN(WREN),
        .busy_int_del(busy_int_del),
        .pixel_buffer_to_stream_if_busy(pixel_buffer_to_stream_if_busy),
        .reg_to_filter_software_reset(reg_to_filter_software_reset),
        .registers_axil_aclk(registers_axil_aclk),
        .registers_axil_aresetn(registers_axil_aresetn));
  LUT5 #(
    .INIT(32'hBFBF8F80)) 
    register_filter_software_reset_i_1
       (.I0(axi_lite_registers_n_71),
        .I1(axi_lite_registers_n_72),
        .I2(axi_lite_registers_n_26),
        .I3(p_6_in),
        .I4(reg_to_filter_software_reset),
        .O(register_filter_software_reset_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "feature_extraction_registers" *) 
module zed_feature_extraction_0_0_feature_extraction_registers
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    registers_axil_bvalid,
    aw_en_reg_0,
    reg_to_filter_feature_bram_readout_2,
    reg_to_filter_feature_bram_readout_1,
    reg_to_filter_software_reset,
    registers_axil_rvalid,
    register_filter_software_reset_reg_0,
    Q,
    \axi_awaddr_reg[4]_0 ,
    \axi_awaddr_reg[4]_1 ,
    \axi_awaddr_reg[5]_rep__1_0 ,
    \slv_reg0_reg[16]_0 ,
    registers_axil_awvalid_0,
    \slv_reg7_reg[10]_0 ,
    registers_axil_rdata,
    slv_reg_wren,
    registers_axil_wdata_16_sp_1,
    \registers_axil_wdata[16]_0 ,
    \axi_awaddr_reg[3]_0 ,
    registers_axil_aclk,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    bram_filter_readout_2_reg_0,
    bram_filter_readout_1_reg_0,
    register_filter_software_reset_reg_1,
    axi_rvalid_reg_0,
    registers_axil_aresetn,
    registers_axil_awaddr,
    registers_axil_wdata,
    registers_axil_wstrb,
    registers_axil_araddr,
    registers_axil_awvalid,
    registers_axil_wvalid,
    filter_to_reg_feature_bram_valid_1,
    filter_to_reg_feature_bram_valid_2,
    registers_axil_arvalid);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output registers_axil_bvalid;
  output aw_en_reg_0;
  output reg_to_filter_feature_bram_readout_2;
  output reg_to_filter_feature_bram_readout_1;
  output reg_to_filter_software_reset;
  output registers_axil_rvalid;
  output register_filter_software_reset_reg_0;
  output [10:0]Q;
  output \axi_awaddr_reg[4]_0 ;
  output [1:0]\axi_awaddr_reg[4]_1 ;
  output \axi_awaddr_reg[5]_rep__1_0 ;
  output [0:0]\slv_reg0_reg[16]_0 ;
  output registers_axil_awvalid_0;
  output [10:0]\slv_reg7_reg[10]_0 ;
  output [31:0]registers_axil_rdata;
  output slv_reg_wren;
  output registers_axil_wdata_16_sp_1;
  output \registers_axil_wdata[16]_0 ;
  output \axi_awaddr_reg[3]_0 ;
  input registers_axil_aclk;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input bram_filter_readout_2_reg_0;
  input bram_filter_readout_1_reg_0;
  input register_filter_software_reset_reg_1;
  input axi_rvalid_reg_0;
  input registers_axil_aresetn;
  input [3:0]registers_axil_awaddr;
  input [31:0]registers_axil_wdata;
  input [3:0]registers_axil_wstrb;
  input [3:0]registers_axil_araddr;
  input registers_axil_awvalid;
  input registers_axil_wvalid;
  input filter_to_reg_feature_bram_valid_1;
  input filter_to_reg_feature_bram_valid_2;
  input registers_axil_arvalid;

  wire [10:0]Q;
  wire aw_en_reg_0;
  wire aw_en_reg_1;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr_reg[2]_rep_n_0 ;
  wire \axi_awaddr_reg[3]_0 ;
  wire \axi_awaddr_reg[4]_0 ;
  wire [1:0]\axi_awaddr_reg[4]_1 ;
  wire \axi_awaddr_reg[5]_rep__0_n_0 ;
  wire \axi_awaddr_reg[5]_rep__1_0 ;
  wire \axi_awaddr_reg[5]_rep_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[31]_i_8_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_4_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire bram_filter_readout_1_reg_0;
  wire bram_filter_readout_2_reg_0;
  wire filter_to_reg_feature_bram_valid_1;
  wire filter_to_reg_feature_bram_valid_2;
  wire n_0_695;
  wire [3:0]p_0_in;
  wire p_0_in__0;
  wire [0:0]p_11_out;
  wire [31:0]p_2_in;
  wire [31:0]reg_data_out;
  wire reg_to_filter_feature_bram_readout_1;
  wire reg_to_filter_feature_bram_readout_2;
  wire reg_to_filter_software_reset;
  wire register_filter_software_reset_reg_0;
  wire register_filter_software_reset_reg_1;
  wire registers_axil_aclk;
  wire [3:0]registers_axil_araddr;
  wire registers_axil_aresetn;
  wire registers_axil_arvalid;
  wire [3:0]registers_axil_awaddr;
  wire registers_axil_awvalid;
  wire registers_axil_awvalid_0;
  wire registers_axil_bvalid;
  wire [31:0]registers_axil_rdata;
  wire registers_axil_rvalid;
  wire [31:0]registers_axil_wdata;
  wire \registers_axil_wdata[16]_0 ;
  wire registers_axil_wdata_16_sn_1;
  wire [3:0]registers_axil_wstrb;
  wire registers_axil_wvalid;
  wire [3:0]sel0;
  wire \slv_reg0[15]_i_2_n_0 ;
  wire \slv_reg0[1]_i_1_n_0 ;
  wire \slv_reg0[30]_i_2_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[31]_i_3_n_0 ;
  wire [0:0]\slv_reg0_reg[16]_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:11]slv_reg10;
  wire \slv_reg10[0]_i_1_n_0 ;
  wire \slv_reg10[10]_i_1_n_0 ;
  wire \slv_reg10[11]_i_1_n_0 ;
  wire \slv_reg10[12]_i_1_n_0 ;
  wire \slv_reg10[13]_i_1_n_0 ;
  wire \slv_reg10[14]_i_1_n_0 ;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[15]_i_2_n_0 ;
  wire \slv_reg10[15]_i_3_n_0 ;
  wire \slv_reg10[16]_i_1_n_0 ;
  wire \slv_reg10[17]_i_1_n_0 ;
  wire \slv_reg10[18]_i_1_n_0 ;
  wire \slv_reg10[19]_i_1_n_0 ;
  wire \slv_reg10[1]_i_1_n_0 ;
  wire \slv_reg10[20]_i_1_n_0 ;
  wire \slv_reg10[21]_i_1_n_0 ;
  wire \slv_reg10[22]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[23]_i_2_n_0 ;
  wire \slv_reg10[23]_i_3_n_0 ;
  wire \slv_reg10[24]_i_1_n_0 ;
  wire \slv_reg10[25]_i_1_n_0 ;
  wire \slv_reg10[26]_i_1_n_0 ;
  wire \slv_reg10[27]_i_1_n_0 ;
  wire \slv_reg10[28]_i_1_n_0 ;
  wire \slv_reg10[29]_i_1_n_0 ;
  wire \slv_reg10[2]_i_1_n_0 ;
  wire \slv_reg10[30]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[31]_i_2_n_0 ;
  wire \slv_reg10[31]_i_3_n_0 ;
  wire \slv_reg10[31]_i_4_n_0 ;
  wire \slv_reg10[3]_i_1_n_0 ;
  wire \slv_reg10[4]_i_1_n_0 ;
  wire \slv_reg10[5]_i_1_n_0 ;
  wire \slv_reg10[6]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire \slv_reg10[7]_i_2_n_0 ;
  wire \slv_reg10[7]_i_3_n_0 ;
  wire \slv_reg10[8]_i_1_n_0 ;
  wire \slv_reg10[9]_i_1_n_0 ;
  wire [31:0]slv_reg13;
  wire \slv_reg13[0]_i_1_n_0 ;
  wire \slv_reg13[10]_i_1_n_0 ;
  wire \slv_reg13[11]_i_1_n_0 ;
  wire \slv_reg13[12]_i_1_n_0 ;
  wire \slv_reg13[13]_i_1_n_0 ;
  wire \slv_reg13[14]_i_1_n_0 ;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[15]_i_2_n_0 ;
  wire \slv_reg13[15]_i_3_n_0 ;
  wire \slv_reg13[16]_i_1_n_0 ;
  wire \slv_reg13[17]_i_1_n_0 ;
  wire \slv_reg13[18]_i_1_n_0 ;
  wire \slv_reg13[19]_i_1_n_0 ;
  wire \slv_reg13[1]_i_1_n_0 ;
  wire \slv_reg13[20]_i_1_n_0 ;
  wire \slv_reg13[21]_i_1_n_0 ;
  wire \slv_reg13[22]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[23]_i_2_n_0 ;
  wire \slv_reg13[23]_i_3_n_0 ;
  wire \slv_reg13[24]_i_1_n_0 ;
  wire \slv_reg13[25]_i_1_n_0 ;
  wire \slv_reg13[26]_i_1_n_0 ;
  wire \slv_reg13[27]_i_1_n_0 ;
  wire \slv_reg13[28]_i_1_n_0 ;
  wire \slv_reg13[29]_i_1_n_0 ;
  wire \slv_reg13[2]_i_1_n_0 ;
  wire \slv_reg13[30]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[31]_i_2_n_0 ;
  wire \slv_reg13[31]_i_3_n_0 ;
  wire \slv_reg13[31]_i_4_n_0 ;
  wire \slv_reg13[3]_i_1_n_0 ;
  wire \slv_reg13[4]_i_1_n_0 ;
  wire \slv_reg13[5]_i_1_n_0 ;
  wire \slv_reg13[6]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire \slv_reg13[7]_i_2_n_0 ;
  wire \slv_reg13[7]_i_3_n_0 ;
  wire \slv_reg13[8]_i_1_n_0 ;
  wire \slv_reg13[9]_i_1_n_0 ;
  wire [31:0]slv_reg14;
  wire \slv_reg14[0]_i_1_n_0 ;
  wire \slv_reg14[10]_i_1_n_0 ;
  wire \slv_reg14[11]_i_1_n_0 ;
  wire \slv_reg14[12]_i_1_n_0 ;
  wire \slv_reg14[13]_i_1_n_0 ;
  wire \slv_reg14[14]_i_1_n_0 ;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[15]_i_2_n_0 ;
  wire \slv_reg14[15]_i_3_n_0 ;
  wire \slv_reg14[16]_i_1_n_0 ;
  wire \slv_reg14[17]_i_1_n_0 ;
  wire \slv_reg14[18]_i_1_n_0 ;
  wire \slv_reg14[19]_i_1_n_0 ;
  wire \slv_reg14[1]_i_1_n_0 ;
  wire \slv_reg14[20]_i_1_n_0 ;
  wire \slv_reg14[21]_i_1_n_0 ;
  wire \slv_reg14[22]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[23]_i_2_n_0 ;
  wire \slv_reg14[23]_i_3_n_0 ;
  wire \slv_reg14[24]_i_1_n_0 ;
  wire \slv_reg14[25]_i_1_n_0 ;
  wire \slv_reg14[26]_i_1_n_0 ;
  wire \slv_reg14[27]_i_1_n_0 ;
  wire \slv_reg14[28]_i_1_n_0 ;
  wire \slv_reg14[29]_i_1_n_0 ;
  wire \slv_reg14[2]_i_1_n_0 ;
  wire \slv_reg14[30]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[31]_i_2_n_0 ;
  wire \slv_reg14[31]_i_3_n_0 ;
  wire \slv_reg14[3]_i_1_n_0 ;
  wire \slv_reg14[4]_i_1_n_0 ;
  wire \slv_reg14[5]_i_1_n_0 ;
  wire \slv_reg14[6]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire \slv_reg14[7]_i_2_n_0 ;
  wire \slv_reg14[7]_i_3_n_0 ;
  wire \slv_reg14[8]_i_1_n_0 ;
  wire \slv_reg14[9]_i_1_n_0 ;
  wire \slv_reg15[0]_i_1_n_0 ;
  wire \slv_reg15[10]_i_1_n_0 ;
  wire \slv_reg15[11]_i_1_n_0 ;
  wire \slv_reg15[12]_i_1_n_0 ;
  wire \slv_reg15[13]_i_1_n_0 ;
  wire \slv_reg15[14]_i_1_n_0 ;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[15]_i_2_n_0 ;
  wire \slv_reg15[15]_i_3_n_0 ;
  wire \slv_reg15[16]_i_1_n_0 ;
  wire \slv_reg15[17]_i_1_n_0 ;
  wire \slv_reg15[18]_i_1_n_0 ;
  wire \slv_reg15[19]_i_1_n_0 ;
  wire \slv_reg15[1]_i_1_n_0 ;
  wire \slv_reg15[20]_i_1_n_0 ;
  wire \slv_reg15[21]_i_1_n_0 ;
  wire \slv_reg15[22]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[23]_i_2_n_0 ;
  wire \slv_reg15[23]_i_3_n_0 ;
  wire \slv_reg15[24]_i_1_n_0 ;
  wire \slv_reg15[25]_i_1_n_0 ;
  wire \slv_reg15[26]_i_1_n_0 ;
  wire \slv_reg15[27]_i_1_n_0 ;
  wire \slv_reg15[28]_i_1_n_0 ;
  wire \slv_reg15[29]_i_1_n_0 ;
  wire \slv_reg15[2]_i_1_n_0 ;
  wire \slv_reg15[30]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[31]_i_2_n_0 ;
  wire \slv_reg15[31]_i_3_n_0 ;
  wire \slv_reg15[3]_i_1_n_0 ;
  wire \slv_reg15[4]_i_1_n_0 ;
  wire \slv_reg15[5]_i_1_n_0 ;
  wire \slv_reg15[6]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire \slv_reg15[7]_i_2_n_0 ;
  wire \slv_reg15[7]_i_3_n_0 ;
  wire \slv_reg15[8]_i_1_n_0 ;
  wire \slv_reg15[9]_i_1_n_0 ;
  wire \slv_reg15_reg_n_0_[0] ;
  wire \slv_reg15_reg_n_0_[10] ;
  wire \slv_reg15_reg_n_0_[11] ;
  wire \slv_reg15_reg_n_0_[12] ;
  wire \slv_reg15_reg_n_0_[13] ;
  wire \slv_reg15_reg_n_0_[14] ;
  wire \slv_reg15_reg_n_0_[15] ;
  wire \slv_reg15_reg_n_0_[16] ;
  wire \slv_reg15_reg_n_0_[17] ;
  wire \slv_reg15_reg_n_0_[18] ;
  wire \slv_reg15_reg_n_0_[19] ;
  wire \slv_reg15_reg_n_0_[1] ;
  wire \slv_reg15_reg_n_0_[20] ;
  wire \slv_reg15_reg_n_0_[21] ;
  wire \slv_reg15_reg_n_0_[22] ;
  wire \slv_reg15_reg_n_0_[23] ;
  wire \slv_reg15_reg_n_0_[24] ;
  wire \slv_reg15_reg_n_0_[25] ;
  wire \slv_reg15_reg_n_0_[26] ;
  wire \slv_reg15_reg_n_0_[27] ;
  wire \slv_reg15_reg_n_0_[28] ;
  wire \slv_reg15_reg_n_0_[29] ;
  wire \slv_reg15_reg_n_0_[2] ;
  wire \slv_reg15_reg_n_0_[30] ;
  wire \slv_reg15_reg_n_0_[31] ;
  wire \slv_reg15_reg_n_0_[3] ;
  wire \slv_reg15_reg_n_0_[4] ;
  wire \slv_reg15_reg_n_0_[5] ;
  wire \slv_reg15_reg_n_0_[6] ;
  wire \slv_reg15_reg_n_0_[7] ;
  wire \slv_reg15_reg_n_0_[8] ;
  wire \slv_reg15_reg_n_0_[9] ;
  wire \slv_reg1[0]_i_1_n_0 ;
  wire \slv_reg1[10]_i_1_n_0 ;
  wire \slv_reg1[11]_i_1_n_0 ;
  wire \slv_reg1[12]_i_1_n_0 ;
  wire \slv_reg1[13]_i_1_n_0 ;
  wire \slv_reg1[14]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[15]_i_2_n_0 ;
  wire \slv_reg1[15]_i_3_n_0 ;
  wire \slv_reg1[16]_i_1_n_0 ;
  wire \slv_reg1[17]_i_1_n_0 ;
  wire \slv_reg1[18]_i_1_n_0 ;
  wire \slv_reg1[19]_i_1_n_0 ;
  wire \slv_reg1[1]_i_1_n_0 ;
  wire \slv_reg1[20]_i_1_n_0 ;
  wire \slv_reg1[21]_i_1_n_0 ;
  wire \slv_reg1[22]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[23]_i_2_n_0 ;
  wire \slv_reg1[23]_i_3_n_0 ;
  wire \slv_reg1[24]_i_1_n_0 ;
  wire \slv_reg1[25]_i_1_n_0 ;
  wire \slv_reg1[26]_i_1_n_0 ;
  wire \slv_reg1[27]_i_1_n_0 ;
  wire \slv_reg1[28]_i_1_n_0 ;
  wire \slv_reg1[29]_i_1_n_0 ;
  wire \slv_reg1[2]_i_1_n_0 ;
  wire \slv_reg1[30]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[31]_i_3_n_0 ;
  wire \slv_reg1[3]_i_1_n_0 ;
  wire \slv_reg1[4]_i_1_n_0 ;
  wire \slv_reg1[5]_i_1_n_0 ;
  wire \slv_reg1[6]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1[7]_i_2_n_0 ;
  wire \slv_reg1[7]_i_3_n_0 ;
  wire \slv_reg1[8]_i_1_n_0 ;
  wire \slv_reg1[9]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire [31:9]slv_reg2;
  wire \slv_reg2[0]_i_1_n_0 ;
  wire \slv_reg2[10]_i_1_n_0 ;
  wire \slv_reg2[11]_i_1_n_0 ;
  wire \slv_reg2[12]_i_1_n_0 ;
  wire \slv_reg2[13]_i_1_n_0 ;
  wire \slv_reg2[14]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[15]_i_2_n_0 ;
  wire \slv_reg2[15]_i_3_n_0 ;
  wire \slv_reg2[16]_i_1_n_0 ;
  wire \slv_reg2[17]_i_1_n_0 ;
  wire \slv_reg2[18]_i_1_n_0 ;
  wire \slv_reg2[19]_i_1_n_0 ;
  wire \slv_reg2[1]_i_1_n_0 ;
  wire \slv_reg2[20]_i_1_n_0 ;
  wire \slv_reg2[21]_i_1_n_0 ;
  wire \slv_reg2[22]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[23]_i_2_n_0 ;
  wire \slv_reg2[23]_i_3_n_0 ;
  wire \slv_reg2[24]_i_1_n_0 ;
  wire \slv_reg2[25]_i_1_n_0 ;
  wire \slv_reg2[26]_i_1_n_0 ;
  wire \slv_reg2[27]_i_1_n_0 ;
  wire \slv_reg2[28]_i_1_n_0 ;
  wire \slv_reg2[29]_i_1_n_0 ;
  wire \slv_reg2[2]_i_1_n_0 ;
  wire \slv_reg2[30]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[31]_i_3_n_0 ;
  wire \slv_reg2[3]_i_1_n_0 ;
  wire \slv_reg2[4]_i_1_n_0 ;
  wire \slv_reg2[5]_i_1_n_0 ;
  wire \slv_reg2[6]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2[7]_i_2_n_0 ;
  wire \slv_reg2[7]_i_3_n_0 ;
  wire \slv_reg2[8]_i_1_n_0 ;
  wire \slv_reg2[9]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire [31:9]slv_reg3;
  wire \slv_reg3[0]_i_1_n_0 ;
  wire \slv_reg3[10]_i_1_n_0 ;
  wire \slv_reg3[11]_i_1_n_0 ;
  wire \slv_reg3[12]_i_1_n_0 ;
  wire \slv_reg3[13]_i_1_n_0 ;
  wire \slv_reg3[14]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[15]_i_2_n_0 ;
  wire \slv_reg3[15]_i_3_n_0 ;
  wire \slv_reg3[16]_i_1_n_0 ;
  wire \slv_reg3[17]_i_1_n_0 ;
  wire \slv_reg3[18]_i_1_n_0 ;
  wire \slv_reg3[19]_i_1_n_0 ;
  wire \slv_reg3[1]_i_1_n_0 ;
  wire \slv_reg3[20]_i_1_n_0 ;
  wire \slv_reg3[21]_i_1_n_0 ;
  wire \slv_reg3[22]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[23]_i_2_n_0 ;
  wire \slv_reg3[23]_i_3_n_0 ;
  wire \slv_reg3[24]_i_1_n_0 ;
  wire \slv_reg3[25]_i_1_n_0 ;
  wire \slv_reg3[26]_i_1_n_0 ;
  wire \slv_reg3[27]_i_1_n_0 ;
  wire \slv_reg3[28]_i_1_n_0 ;
  wire \slv_reg3[29]_i_1_n_0 ;
  wire \slv_reg3[2]_i_1_n_0 ;
  wire \slv_reg3[30]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[31]_i_3_n_0 ;
  wire \slv_reg3[31]_i_4_n_0 ;
  wire \slv_reg3[3]_i_1_n_0 ;
  wire \slv_reg3[4]_i_1_n_0 ;
  wire \slv_reg3[5]_i_1_n_0 ;
  wire \slv_reg3[6]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3[7]_i_2_n_0 ;
  wire \slv_reg3[7]_i_3_n_0 ;
  wire \slv_reg3[8]_i_1_n_0 ;
  wire \slv_reg3[9]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire [31:8]slv_reg4;
  wire \slv_reg4[0]_i_1_n_0 ;
  wire \slv_reg4[10]_i_1_n_0 ;
  wire \slv_reg4[11]_i_1_n_0 ;
  wire \slv_reg4[12]_i_1_n_0 ;
  wire \slv_reg4[13]_i_1_n_0 ;
  wire \slv_reg4[14]_i_1_n_0 ;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[15]_i_2_n_0 ;
  wire \slv_reg4[15]_i_3_n_0 ;
  wire \slv_reg4[16]_i_1_n_0 ;
  wire \slv_reg4[17]_i_1_n_0 ;
  wire \slv_reg4[18]_i_1_n_0 ;
  wire \slv_reg4[19]_i_1_n_0 ;
  wire \slv_reg4[1]_i_1_n_0 ;
  wire \slv_reg4[20]_i_1_n_0 ;
  wire \slv_reg4[21]_i_1_n_0 ;
  wire \slv_reg4[22]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[23]_i_2_n_0 ;
  wire \slv_reg4[23]_i_3_n_0 ;
  wire \slv_reg4[24]_i_1_n_0 ;
  wire \slv_reg4[25]_i_1_n_0 ;
  wire \slv_reg4[26]_i_1_n_0 ;
  wire \slv_reg4[27]_i_1_n_0 ;
  wire \slv_reg4[28]_i_1_n_0 ;
  wire \slv_reg4[29]_i_1_n_0 ;
  wire \slv_reg4[2]_i_1_n_0 ;
  wire \slv_reg4[30]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[31]_i_2_n_0 ;
  wire \slv_reg4[31]_i_3_n_0 ;
  wire \slv_reg4[31]_i_4_n_0 ;
  wire \slv_reg4[3]_i_1_n_0 ;
  wire \slv_reg4[4]_i_1_n_0 ;
  wire \slv_reg4[5]_i_1_n_0 ;
  wire \slv_reg4[6]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg4[7]_i_2_n_0 ;
  wire \slv_reg4[7]_i_3_n_0 ;
  wire \slv_reg4[8]_i_1_n_0 ;
  wire \slv_reg4[9]_i_1_n_0 ;
  wire \slv_reg4_reg_n_0_[0] ;
  wire \slv_reg4_reg_n_0_[16] ;
  wire \slv_reg4_reg_n_0_[17] ;
  wire \slv_reg4_reg_n_0_[18] ;
  wire \slv_reg4_reg_n_0_[19] ;
  wire \slv_reg4_reg_n_0_[1] ;
  wire \slv_reg4_reg_n_0_[20] ;
  wire \slv_reg4_reg_n_0_[21] ;
  wire \slv_reg4_reg_n_0_[22] ;
  wire \slv_reg4_reg_n_0_[23] ;
  wire \slv_reg4_reg_n_0_[2] ;
  wire \slv_reg4_reg_n_0_[3] ;
  wire \slv_reg4_reg_n_0_[4] ;
  wire \slv_reg4_reg_n_0_[5] ;
  wire \slv_reg4_reg_n_0_[6] ;
  wire \slv_reg4_reg_n_0_[7] ;
  wire [31:8]slv_reg5;
  wire \slv_reg5[0]_i_1_n_0 ;
  wire \slv_reg5[10]_i_1_n_0 ;
  wire \slv_reg5[11]_i_1_n_0 ;
  wire \slv_reg5[12]_i_1_n_0 ;
  wire \slv_reg5[13]_i_1_n_0 ;
  wire \slv_reg5[14]_i_1_n_0 ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[15]_i_2_n_0 ;
  wire \slv_reg5[15]_i_3_n_0 ;
  wire \slv_reg5[16]_i_1_n_0 ;
  wire \slv_reg5[17]_i_1_n_0 ;
  wire \slv_reg5[18]_i_1_n_0 ;
  wire \slv_reg5[19]_i_1_n_0 ;
  wire \slv_reg5[1]_i_1_n_0 ;
  wire \slv_reg5[20]_i_1_n_0 ;
  wire \slv_reg5[21]_i_1_n_0 ;
  wire \slv_reg5[22]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[23]_i_2_n_0 ;
  wire \slv_reg5[23]_i_3_n_0 ;
  wire \slv_reg5[24]_i_1_n_0 ;
  wire \slv_reg5[25]_i_1_n_0 ;
  wire \slv_reg5[26]_i_1_n_0 ;
  wire \slv_reg5[27]_i_1_n_0 ;
  wire \slv_reg5[28]_i_1_n_0 ;
  wire \slv_reg5[29]_i_1_n_0 ;
  wire \slv_reg5[2]_i_1_n_0 ;
  wire \slv_reg5[30]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[31]_i_2_n_0 ;
  wire \slv_reg5[31]_i_3_n_0 ;
  wire \slv_reg5[31]_i_4_n_0 ;
  wire \slv_reg5[3]_i_1_n_0 ;
  wire \slv_reg5[4]_i_1_n_0 ;
  wire \slv_reg5[5]_i_1_n_0 ;
  wire \slv_reg5[6]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg5[7]_i_2_n_0 ;
  wire \slv_reg5[7]_i_3_n_0 ;
  wire \slv_reg5[8]_i_1_n_0 ;
  wire \slv_reg5[9]_i_1_n_0 ;
  wire \slv_reg5_reg_n_0_[0] ;
  wire \slv_reg5_reg_n_0_[16] ;
  wire \slv_reg5_reg_n_0_[17] ;
  wire \slv_reg5_reg_n_0_[18] ;
  wire \slv_reg5_reg_n_0_[19] ;
  wire \slv_reg5_reg_n_0_[1] ;
  wire \slv_reg5_reg_n_0_[20] ;
  wire \slv_reg5_reg_n_0_[21] ;
  wire \slv_reg5_reg_n_0_[22] ;
  wire \slv_reg5_reg_n_0_[23] ;
  wire \slv_reg5_reg_n_0_[2] ;
  wire \slv_reg5_reg_n_0_[3] ;
  wire \slv_reg5_reg_n_0_[4] ;
  wire \slv_reg5_reg_n_0_[5] ;
  wire \slv_reg5_reg_n_0_[6] ;
  wire \slv_reg5_reg_n_0_[7] ;
  wire [31:11]slv_reg7;
  wire \slv_reg7[0]_i_1_n_0 ;
  wire \slv_reg7[10]_i_1_n_0 ;
  wire \slv_reg7[11]_i_1_n_0 ;
  wire \slv_reg7[12]_i_1_n_0 ;
  wire \slv_reg7[13]_i_1_n_0 ;
  wire \slv_reg7[14]_i_1_n_0 ;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[15]_i_2_n_0 ;
  wire \slv_reg7[15]_i_3_n_0 ;
  wire \slv_reg7[16]_i_1_n_0 ;
  wire \slv_reg7[17]_i_1_n_0 ;
  wire \slv_reg7[18]_i_1_n_0 ;
  wire \slv_reg7[19]_i_1_n_0 ;
  wire \slv_reg7[1]_i_1_n_0 ;
  wire \slv_reg7[20]_i_1_n_0 ;
  wire \slv_reg7[21]_i_1_n_0 ;
  wire \slv_reg7[22]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[23]_i_2_n_0 ;
  wire \slv_reg7[23]_i_3_n_0 ;
  wire \slv_reg7[24]_i_1_n_0 ;
  wire \slv_reg7[25]_i_1_n_0 ;
  wire \slv_reg7[26]_i_1_n_0 ;
  wire \slv_reg7[27]_i_1_n_0 ;
  wire \slv_reg7[28]_i_1_n_0 ;
  wire \slv_reg7[29]_i_1_n_0 ;
  wire \slv_reg7[2]_i_1_n_0 ;
  wire \slv_reg7[30]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[31]_i_2_n_0 ;
  wire \slv_reg7[31]_i_3_n_0 ;
  wire \slv_reg7[3]_i_1_n_0 ;
  wire \slv_reg7[4]_i_1_n_0 ;
  wire \slv_reg7[5]_i_1_n_0 ;
  wire \slv_reg7[6]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire \slv_reg7[7]_i_2_n_0 ;
  wire \slv_reg7[7]_i_3_n_0 ;
  wire \slv_reg7[8]_i_1_n_0 ;
  wire \slv_reg7[9]_i_1_n_0 ;
  wire [10:0]\slv_reg7_reg[10]_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren;

  assign registers_axil_wdata_16_sp_1 = registers_axil_wdata_16_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    FIFO18E1_inst_i_1
       (.I0(reg_to_filter_software_reset),
        .I1(registers_axil_aresetn),
        .O(register_filter_software_reset_reg_0));
  FDSE aw_en_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(p_0_in__0));
  FDSE \axi_araddr_reg[2] 
       (.C(registers_axil_aclk),
        .CE(axi_arready0),
        .D(registers_axil_araddr[0]),
        .Q(sel0[0]),
        .S(p_0_in__0));
  FDSE \axi_araddr_reg[3] 
       (.C(registers_axil_aclk),
        .CE(axi_arready0),
        .D(registers_axil_araddr[1]),
        .Q(sel0[1]),
        .S(p_0_in__0));
  FDSE \axi_araddr_reg[4] 
       (.C(registers_axil_aclk),
        .CE(axi_arready0),
        .D(registers_axil_araddr[2]),
        .Q(sel0[2]),
        .S(p_0_in__0));
  FDSE \axi_araddr_reg[5] 
       (.C(registers_axil_aclk),
        .CE(axi_arready0),
        .D(registers_axil_araddr[3]),
        .Q(sel0[3]),
        .S(p_0_in__0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_arready_i_1
       (.I0(registers_axil_aresetn),
        .O(p_0_in__0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_2
       (.I0(registers_axil_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(p_0_in__0));
  (* ORIG_CELL_NAME = "axi_awaddr_reg[2]" *) 
  FDRE \axi_awaddr_reg[2] 
       (.C(registers_axil_aclk),
        .CE(axi_awready0),
        .D(registers_axil_awaddr[0]),
        .Q(p_0_in[0]),
        .R(p_0_in__0));
  (* ORIG_CELL_NAME = "axi_awaddr_reg[2]" *) 
  FDRE \axi_awaddr_reg[2]_rep 
       (.C(registers_axil_aclk),
        .CE(axi_awready0),
        .D(registers_axil_awaddr[0]),
        .Q(\axi_awaddr_reg[2]_rep_n_0 ),
        .R(p_0_in__0));
  FDRE \axi_awaddr_reg[3] 
       (.C(registers_axil_aclk),
        .CE(axi_awready0),
        .D(registers_axil_awaddr[1]),
        .Q(\axi_awaddr_reg[4]_1 [0]),
        .R(p_0_in__0));
  FDRE \axi_awaddr_reg[4] 
       (.C(registers_axil_aclk),
        .CE(axi_awready0),
        .D(registers_axil_awaddr[2]),
        .Q(\axi_awaddr_reg[4]_1 [1]),
        .R(p_0_in__0));
  (* ORIG_CELL_NAME = "axi_awaddr_reg[5]" *) 
  FDRE \axi_awaddr_reg[5] 
       (.C(registers_axil_aclk),
        .CE(axi_awready0),
        .D(registers_axil_awaddr[3]),
        .Q(p_0_in[3]),
        .R(p_0_in__0));
  (* ORIG_CELL_NAME = "axi_awaddr_reg[5]" *) 
  FDRE \axi_awaddr_reg[5]_rep 
       (.C(registers_axil_aclk),
        .CE(axi_awready0),
        .D(registers_axil_awaddr[3]),
        .Q(\axi_awaddr_reg[5]_rep_n_0 ),
        .R(p_0_in__0));
  (* ORIG_CELL_NAME = "axi_awaddr_reg[5]" *) 
  FDRE \axi_awaddr_reg[5]_rep__0 
       (.C(registers_axil_aclk),
        .CE(axi_awready0),
        .D(registers_axil_awaddr[3]),
        .Q(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .R(p_0_in__0));
  (* ORIG_CELL_NAME = "axi_awaddr_reg[5]" *) 
  FDRE \axi_awaddr_reg[5]_rep__1 
       (.C(registers_axil_aclk),
        .CE(axi_awready0),
        .D(registers_axil_awaddr[3]),
        .Q(\axi_awaddr_reg[5]_rep__1_0 ),
        .R(p_0_in__0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(registers_axil_awvalid),
        .I1(registers_axil_wvalid),
        .I2(aw_en_reg_0),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(p_0_in__0));
  LUT4 #(
    .INIT(16'h8000)) 
    axi_bvalid_i_2
       (.I0(registers_axil_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(registers_axil_wvalid),
        .O(slv_reg_wren));
  FDRE axi_bvalid_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(registers_axil_bvalid),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(\slv_reg2_reg_n_0_[0] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[0]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [0]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[0] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[0]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(\slv_reg15_reg_n_0_[0] ),
        .I1(slv_reg14[0]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[10] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[10]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [10]),
        .I1(sel0[1]),
        .I2(slv_reg5[10]),
        .I3(sel0[0]),
        .I4(slv_reg4[10]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[10]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(\slv_reg15_reg_n_0_[10] ),
        .I1(slv_reg14[10]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[11] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[11]_i_5 
       (.I0(slv_reg7[11]),
        .I1(sel0[1]),
        .I2(slv_reg5[11]),
        .I3(sel0[0]),
        .I4(slv_reg4[11]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[11]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(\slv_reg15_reg_n_0_[11] ),
        .I1(slv_reg14[11]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[12] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[12]_i_5 
       (.I0(slv_reg7[12]),
        .I1(sel0[1]),
        .I2(slv_reg5[12]),
        .I3(sel0[0]),
        .I4(slv_reg4[12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[12]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(\slv_reg15_reg_n_0_[12] ),
        .I1(slv_reg14[12]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[13] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[13]_i_5 
       (.I0(slv_reg7[13]),
        .I1(sel0[1]),
        .I2(slv_reg5[13]),
        .I3(sel0[0]),
        .I4(slv_reg4[13]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[13]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(\slv_reg15_reg_n_0_[13] ),
        .I1(slv_reg14[13]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[14] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[14]_i_5 
       (.I0(slv_reg7[14]),
        .I1(sel0[1]),
        .I2(slv_reg5[14]),
        .I3(sel0[0]),
        .I4(slv_reg4[14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[14]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(\slv_reg15_reg_n_0_[14] ),
        .I1(slv_reg14[14]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[15] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(slv_reg7[15]),
        .I1(filter_to_reg_feature_bram_valid_1),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[15]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(\slv_reg15_reg_n_0_[15] ),
        .I1(slv_reg14[15]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(\slv_reg3_reg_n_0_[16] ),
        .I1(\slv_reg2_reg_n_0_[16] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[16] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[16]_0 ),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[16]_i_5 
       (.I0(slv_reg7[16]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[16] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[16]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(\slv_reg15_reg_n_0_[16] ),
        .I1(slv_reg14[16]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(\slv_reg3_reg_n_0_[17] ),
        .I1(\slv_reg2_reg_n_0_[17] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[17] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[17]_i_5 
       (.I0(slv_reg7[17]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[17] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[17]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(\slv_reg15_reg_n_0_[17] ),
        .I1(slv_reg14[17]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(\slv_reg3_reg_n_0_[18] ),
        .I1(\slv_reg2_reg_n_0_[18] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[18] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[18]_i_5 
       (.I0(slv_reg7[18]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[18] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[18]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(\slv_reg15_reg_n_0_[18] ),
        .I1(slv_reg14[18]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(\slv_reg3_reg_n_0_[19] ),
        .I1(\slv_reg2_reg_n_0_[19] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[19] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[19]_i_5 
       (.I0(slv_reg7[19]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[19] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[19]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(\slv_reg15_reg_n_0_[19] ),
        .I1(slv_reg14[19]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(\slv_reg3_reg_n_0_[1] ),
        .I1(\slv_reg2_reg_n_0_[1] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [1]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[1] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[1]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(\slv_reg15_reg_n_0_[1] ),
        .I1(slv_reg14[1]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(\slv_reg3_reg_n_0_[20] ),
        .I1(\slv_reg2_reg_n_0_[20] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[20] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[20]_i_5 
       (.I0(slv_reg7[20]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[20] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[20]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(\slv_reg15_reg_n_0_[20] ),
        .I1(slv_reg14[20]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(\slv_reg3_reg_n_0_[21] ),
        .I1(\slv_reg2_reg_n_0_[21] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[21] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[21]_i_5 
       (.I0(slv_reg7[21]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[21] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[21]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(\slv_reg15_reg_n_0_[21] ),
        .I1(slv_reg14[21]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(\slv_reg3_reg_n_0_[22] ),
        .I1(\slv_reg2_reg_n_0_[22] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[22] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[22]_i_5 
       (.I0(slv_reg7[22]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[22] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[22]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(\slv_reg15_reg_n_0_[22] ),
        .I1(slv_reg14[22]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(\slv_reg3_reg_n_0_[23] ),
        .I1(\slv_reg2_reg_n_0_[23] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[23] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[23]_i_5 
       (.I0(slv_reg7[23]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[23] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[23]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(\slv_reg15_reg_n_0_[23] ),
        .I1(slv_reg14[23]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(\slv_reg3_reg_n_0_[24] ),
        .I1(\slv_reg2_reg_n_0_[24] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[24] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[24]_i_5 
       (.I0(slv_reg7[24]),
        .I1(sel0[1]),
        .I2(slv_reg5[24]),
        .I3(sel0[0]),
        .I4(slv_reg4[24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[24]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(\slv_reg15_reg_n_0_[24] ),
        .I1(slv_reg14[24]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[25] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_5 
       (.I0(slv_reg7[25]),
        .I1(sel0[1]),
        .I2(slv_reg5[25]),
        .I3(sel0[0]),
        .I4(slv_reg4[25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[25]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(\slv_reg15_reg_n_0_[25] ),
        .I1(slv_reg14[25]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[26] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_5 
       (.I0(slv_reg7[26]),
        .I1(sel0[1]),
        .I2(slv_reg5[26]),
        .I3(sel0[0]),
        .I4(slv_reg4[26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[26]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(\slv_reg15_reg_n_0_[26] ),
        .I1(slv_reg14[26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[27] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_5 
       (.I0(slv_reg7[27]),
        .I1(sel0[1]),
        .I2(slv_reg5[27]),
        .I3(sel0[0]),
        .I4(slv_reg4[27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[27]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(\slv_reg15_reg_n_0_[27] ),
        .I1(slv_reg14[27]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[28] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_5 
       (.I0(slv_reg7[28]),
        .I1(sel0[1]),
        .I2(slv_reg5[28]),
        .I3(sel0[0]),
        .I4(slv_reg4[28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[28]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(\slv_reg15_reg_n_0_[28] ),
        .I1(slv_reg14[28]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[29] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_5 
       (.I0(slv_reg7[29]),
        .I1(sel0[1]),
        .I2(slv_reg5[29]),
        .I3(sel0[0]),
        .I4(slv_reg4[29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[29]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(\slv_reg15_reg_n_0_[29] ),
        .I1(slv_reg14[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(\slv_reg2_reg_n_0_[2] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[2] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[2]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [2]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[2] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[2]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(\slv_reg15_reg_n_0_[2] ),
        .I1(slv_reg14[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[30] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_5 
       (.I0(slv_reg7[30]),
        .I1(sel0[1]),
        .I2(slv_reg5[30]),
        .I3(sel0[0]),
        .I4(slv_reg4[30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[30]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(\slv_reg15_reg_n_0_[30] ),
        .I1(slv_reg14[30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(registers_axil_arvalid),
        .I2(registers_axil_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[31] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg7[31]),
        .I1(filter_to_reg_feature_bram_valid_2),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_7 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(slv_reg10[31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[31]_i_8 
       (.I0(\slv_reg15_reg_n_0_[31] ),
        .I1(slv_reg14[31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[31]),
        .O(\axi_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(\slv_reg3_reg_n_0_[3] ),
        .I1(\slv_reg2_reg_n_0_[3] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[3] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[3]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [3]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[3] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[3]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(\slv_reg15_reg_n_0_[3] ),
        .I1(slv_reg14[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(\slv_reg2_reg_n_0_[4] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[4] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[4]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [4]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[4] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[4]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(\slv_reg15_reg_n_0_[4] ),
        .I1(slv_reg14[4]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(\slv_reg3_reg_n_0_[5] ),
        .I1(\slv_reg2_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[5]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [5]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[5] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[5]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(\slv_reg15_reg_n_0_[5] ),
        .I1(slv_reg14[5]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(\slv_reg2_reg_n_0_[6] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[6] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[6]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [6]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[6] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[6]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(\slv_reg15_reg_n_0_[6] ),
        .I1(slv_reg14[6]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(\slv_reg3_reg_n_0_[7] ),
        .I1(\slv_reg2_reg_n_0_[7] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[7]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [7]),
        .I1(sel0[1]),
        .I2(\slv_reg5_reg_n_0_[7] ),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[7]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(\slv_reg15_reg_n_0_[7] ),
        .I1(slv_reg14[7]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(\slv_reg3_reg_n_0_[8] ),
        .I1(\slv_reg2_reg_n_0_[8] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[8] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[8]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [8]),
        .I1(sel0[1]),
        .I2(slv_reg5[8]),
        .I3(sel0[0]),
        .I4(slv_reg4[8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[8]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(\slv_reg15_reg_n_0_[8] ),
        .I1(slv_reg14[8]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[9]_i_5 
       (.I0(\slv_reg7_reg[10]_0 [9]),
        .I1(sel0[1]),
        .I2(slv_reg5[9]),
        .I3(sel0[0]),
        .I4(slv_reg4[9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[9]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(Q[9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(\slv_reg15_reg_n_0_[9] ),
        .I1(slv_reg14[9]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg13[9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(registers_axil_rdata[0]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_4_n_0 ),
        .I1(\axi_rdata[0]_i_5_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(registers_axil_rdata[10]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_4_n_0 ),
        .I1(\axi_rdata[10]_i_5_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(registers_axil_rdata[11]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_4_n_0 ),
        .I1(\axi_rdata[11]_i_5_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(registers_axil_rdata[12]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_4_n_0 ),
        .I1(\axi_rdata[12]_i_5_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(registers_axil_rdata[13]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(\axi_rdata_reg[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_4_n_0 ),
        .I1(\axi_rdata[13]_i_5_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(registers_axil_rdata[14]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(\axi_rdata[14]_i_5_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(registers_axil_rdata[15]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_rdata_reg[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(\axi_rdata[15]_i_5_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(registers_axil_rdata[16]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(\axi_rdata_reg[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_4_n_0 ),
        .I1(\axi_rdata[16]_i_5_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(registers_axil_rdata[17]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(\axi_rdata_reg[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_4_n_0 ),
        .I1(\axi_rdata[17]_i_5_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(registers_axil_rdata[18]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(\axi_rdata_reg[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_4_n_0 ),
        .I1(\axi_rdata[18]_i_5_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_6_n_0 ),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(registers_axil_rdata[19]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(\axi_rdata_reg[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_4_n_0 ),
        .I1(\axi_rdata[19]_i_5_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_6_n_0 ),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(registers_axil_rdata[1]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_4_n_0 ),
        .I1(\axi_rdata[1]_i_5_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(registers_axil_rdata[20]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(\axi_rdata_reg[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_4_n_0 ),
        .I1(\axi_rdata[20]_i_5_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_6_n_0 ),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(registers_axil_rdata[21]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(\axi_rdata_reg[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_4_n_0 ),
        .I1(\axi_rdata[21]_i_5_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_6_n_0 ),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(registers_axil_rdata[22]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(\axi_rdata_reg[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_4_n_0 ),
        .I1(\axi_rdata[22]_i_5_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_6_n_0 ),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(registers_axil_rdata[23]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(\axi_rdata_reg[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_4_n_0 ),
        .I1(\axi_rdata[23]_i_5_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_6_n_0 ),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(registers_axil_rdata[24]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(\axi_rdata_reg[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(\axi_rdata[24]_i_5_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_6_n_0 ),
        .I1(\axi_rdata[24]_i_7_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(registers_axil_rdata[25]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(\axi_rdata_reg[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_4_n_0 ),
        .I1(\axi_rdata[25]_i_5_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_6_n_0 ),
        .I1(\axi_rdata[25]_i_7_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(registers_axil_rdata[26]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(\axi_rdata_reg[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_4_n_0 ),
        .I1(\axi_rdata[26]_i_5_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_6_n_0 ),
        .I1(\axi_rdata[26]_i_7_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(registers_axil_rdata[27]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(\axi_rdata_reg[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_4_n_0 ),
        .I1(\axi_rdata[27]_i_5_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_6_n_0 ),
        .I1(\axi_rdata[27]_i_7_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(registers_axil_rdata[28]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(\axi_rdata_reg[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_4_n_0 ),
        .I1(\axi_rdata[28]_i_5_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_6_n_0 ),
        .I1(\axi_rdata[28]_i_7_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(registers_axil_rdata[29]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(\axi_rdata_reg[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_4_n_0 ),
        .I1(\axi_rdata[29]_i_5_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_6_n_0 ),
        .I1(\axi_rdata[29]_i_7_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(registers_axil_rdata[2]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_4_n_0 ),
        .I1(\axi_rdata[2]_i_5_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(registers_axil_rdata[30]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(\axi_rdata_reg[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_4_n_0 ),
        .I1(\axi_rdata[30]_i_5_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_6_n_0 ),
        .I1(\axi_rdata[30]_i_7_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(registers_axil_rdata[31]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata_reg[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[31]_i_4_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_5_n_0 ),
        .I1(\axi_rdata[31]_i_6_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[31]_i_4 
       (.I0(\axi_rdata[31]_i_7_n_0 ),
        .I1(\axi_rdata[31]_i_8_n_0 ),
        .O(\axi_rdata_reg[31]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(registers_axil_rdata[3]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_4_n_0 ),
        .I1(\axi_rdata[3]_i_5_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(registers_axil_rdata[4]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_4_n_0 ),
        .I1(\axi_rdata[4]_i_5_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(registers_axil_rdata[5]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_4_n_0 ),
        .I1(\axi_rdata[5]_i_5_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(registers_axil_rdata[6]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_4_n_0 ),
        .I1(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(registers_axil_rdata[7]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_4_n_0 ),
        .I1(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_6_n_0 ),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(registers_axil_rdata[8]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata[8]_i_5_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_6_n_0 ),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(registers_axil_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(registers_axil_rdata[9]),
        .R(p_0_in__0));
  MUXF8 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_4_n_0 ),
        .I1(\axi_rdata[9]_i_5_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_6_n_0 ),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE axi_rvalid_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_0),
        .Q(registers_axil_rvalid),
        .R(p_0_in__0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(registers_axil_awvalid),
        .I1(registers_axil_wvalid),
        .I2(aw_en_reg_0),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(p_0_in__0));
  FDRE bram_filter_readout_1_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(bram_filter_readout_1_reg_0),
        .Q(reg_to_filter_feature_bram_readout_1),
        .R(1'b0));
  FDRE bram_filter_readout_2_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(bram_filter_readout_2_reg_0),
        .Q(reg_to_filter_feature_bram_readout_2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i_695
       (.I0(registers_axil_aresetn),
        .I1(reg_to_filter_software_reset),
        .O(n_0_695));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCC4)) 
    register_filter_software_reset_i_2
       (.I0(registers_axil_wdata[16]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(registers_axil_wdata_16_sn_1));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCCE)) 
    register_filter_software_reset_i_3
       (.I0(registers_axil_wdata[16]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\registers_axil_wdata[16]_0 ));
  FDRE register_filter_software_reset_reg
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(register_filter_software_reset_reg_1),
        .Q(reg_to_filter_software_reset),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[0]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(p_0_in[3]),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_11_out),
        .O(p_2_in[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg0[0]_i_2 
       (.I0(registers_axil_wstrb[0]),
        .I1(registers_axil_wdata[0]),
        .O(p_11_out));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[10]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__1_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[1]),
        .I5(registers_axil_wdata[10]),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[11]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__1_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[1]),
        .I5(registers_axil_wdata[11]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[12]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__1_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[1]),
        .I5(registers_axil_wdata[12]),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[13]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__1_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[1]),
        .I5(registers_axil_wdata[13]),
        .O(p_2_in[13]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[14]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__1_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[1]),
        .I5(registers_axil_wdata[14]),
        .O(p_2_in[14]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__1_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[1]),
        .I5(registers_axil_wdata[15]),
        .O(p_2_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[15]_i_2 
       (.I0(registers_axil_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(registers_axil_wvalid),
        .O(\slv_reg0[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[2]),
        .I5(registers_axil_wdata[16]),
        .O(p_2_in[16]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[2]),
        .I5(registers_axil_wdata[17]),
        .O(p_2_in[17]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[2]),
        .I5(registers_axil_wdata[18]),
        .O(p_2_in[18]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[2]),
        .I5(registers_axil_wdata[19]),
        .O(p_2_in[19]));
  LUT6 #(
    .INIT(64'h2000EFFF20002000)) 
    \slv_reg0[1]_i_1 
       (.I0(registers_axil_wdata[1]),
        .I1(\slv_reg0[31]_i_2_n_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_awvalid_0),
        .I4(\slv_reg0_reg[16]_0 ),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\slv_reg0[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[2]),
        .I5(registers_axil_wdata[20]),
        .O(p_2_in[20]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[2]),
        .I5(registers_axil_wdata[21]),
        .O(p_2_in[21]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[2]),
        .I5(registers_axil_wdata[22]),
        .O(p_2_in[22]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[2]),
        .I5(registers_axil_wdata[23]),
        .O(p_2_in[23]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[3]),
        .I5(registers_axil_wdata[24]),
        .O(p_2_in[24]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[3]),
        .I5(registers_axil_wdata[25]),
        .O(p_2_in[25]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[3]),
        .I5(registers_axil_wdata[26]),
        .O(p_2_in[26]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[3]),
        .I5(registers_axil_wdata[27]),
        .O(p_2_in[27]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[3]),
        .I5(registers_axil_wdata[28]),
        .O(p_2_in[28]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[3]),
        .I5(registers_axil_wdata[29]),
        .O(p_2_in[29]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[2]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[0]),
        .I5(registers_axil_wdata[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[3]),
        .I5(registers_axil_wdata[30]),
        .O(p_2_in[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg0[30]_i_2 
       (.I0(\axi_awaddr_reg[4]_1 [1]),
        .I1(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg0[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4000EFFF)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_2_n_0 ),
        .I1(registers_axil_wdata[31]),
        .I2(registers_axil_wstrb[3]),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .I4(\slv_reg0_reg[16]_0 ),
        .O(p_2_in[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg0[31]_i_2 
       (.I0(\axi_awaddr_reg[5]_rep_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(\axi_awaddr_reg[2]_rep_n_0 ),
        .I3(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_3 
       (.I0(registers_axil_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(registers_axil_wvalid),
        .O(\slv_reg0[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[3]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[0]),
        .I5(registers_axil_wdata[3]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[4]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[0]),
        .I5(registers_axil_wdata[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[5]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[0]),
        .I5(registers_axil_wdata[5]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[6]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[0]),
        .I5(registers_axil_wdata[6]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(p_0_in[3]),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[0]),
        .I5(registers_axil_wdata[7]),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[7]_i_2 
       (.I0(registers_axil_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(registers_axil_wvalid),
        .O(registers_axil_awvalid_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[8]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__1_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[1]),
        .I5(registers_axil_wdata[8]),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \slv_reg0[9]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .I2(\axi_awaddr_reg[5]_rep__1_0 ),
        .I3(\slv_reg0[30]_i_2_n_0 ),
        .I4(registers_axil_wstrb[1]),
        .I5(registers_axil_wdata[9]),
        .O(p_2_in[9]));
  FDRE \slv_reg0_reg[0] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[10] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[11] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[12] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[13] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[14] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[15] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[16] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[16]),
        .Q(\slv_reg0_reg[16]_0 ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[17] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[18] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[19] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[1] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(\slv_reg0[1]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[20] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[21] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[22] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[23] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[24] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[25] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[26] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[27] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[28] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[29] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[2] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[30] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[31] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[3] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[4] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[5] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[6] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[7] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[8] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \slv_reg0_reg[9] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(p_2_in[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[0]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[0]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[10]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[10]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[11]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[11]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[12]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[12]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[13]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[13]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[14]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[14]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg10[15]_i_1 
       (.I0(\slv_reg10[15]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[15]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[15]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \slv_reg10[15]_i_3 
       (.I0(\slv_reg0_reg[16]_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(registers_axil_wstrb[1]),
        .O(\slv_reg10[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[16]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[17]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[18]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[19]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[1]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[1]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[20]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[21]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[22]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg10[23]_i_1 
       (.I0(\slv_reg10[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[23]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \slv_reg10[23]_i_3 
       (.I0(\slv_reg0_reg[16]_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(registers_axil_wstrb[2]),
        .O(\slv_reg10[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[24]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[25]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[26]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[27]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[28]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[29]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[2]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[2]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[30]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg10[31]_i_1 
       (.I0(\slv_reg10[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[31]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \slv_reg10[31]_i_3 
       (.I0(\slv_reg0_reg[16]_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(registers_axil_wstrb[3]),
        .O(\slv_reg10[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg10[31]_i_4 
       (.I0(\axi_awaddr_reg[2]_rep_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg10[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[3]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[3]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[4]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[4]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[5]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[5]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[6]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[6]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg10[7]_i_1 
       (.I0(\slv_reg10[7]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg10[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[7]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[7]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \slv_reg10[7]_i_3 
       (.I0(\slv_reg0_reg[16]_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(registers_axil_wstrb[0]),
        .O(\slv_reg10[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[8]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[8]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[9]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[5]_rep__1_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[9]),
        .I4(\slv_reg10[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg10[9]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\slv_reg10[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(\slv_reg10[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(\slv_reg10[11]_i_1_n_0 ),
        .Q(slv_reg10[11]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(\slv_reg10[12]_i_1_n_0 ),
        .Q(slv_reg10[12]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(\slv_reg10[13]_i_1_n_0 ),
        .Q(slv_reg10[13]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(\slv_reg10[14]_i_1_n_0 ),
        .Q(slv_reg10[14]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(\slv_reg10[15]_i_2_n_0 ),
        .Q(slv_reg10[15]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\slv_reg10[16]_i_1_n_0 ),
        .Q(slv_reg10[16]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\slv_reg10[17]_i_1_n_0 ),
        .Q(slv_reg10[17]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\slv_reg10[18]_i_1_n_0 ),
        .Q(slv_reg10[18]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\slv_reg10[19]_i_1_n_0 ),
        .Q(slv_reg10[19]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\slv_reg10[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\slv_reg10[20]_i_1_n_0 ),
        .Q(slv_reg10[20]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\slv_reg10[21]_i_1_n_0 ),
        .Q(slv_reg10[21]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\slv_reg10[22]_i_1_n_0 ),
        .Q(slv_reg10[22]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(\slv_reg10[23]_i_2_n_0 ),
        .Q(slv_reg10[23]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(\slv_reg10[24]_i_1_n_0 ),
        .Q(slv_reg10[24]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(\slv_reg10[25]_i_1_n_0 ),
        .Q(slv_reg10[25]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(\slv_reg10[26]_i_1_n_0 ),
        .Q(slv_reg10[26]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(\slv_reg10[27]_i_1_n_0 ),
        .Q(slv_reg10[27]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(\slv_reg10[28]_i_1_n_0 ),
        .Q(slv_reg10[28]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(\slv_reg10[29]_i_1_n_0 ),
        .Q(slv_reg10[29]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\slv_reg10[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(\slv_reg10[30]_i_1_n_0 ),
        .Q(slv_reg10[30]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(\slv_reg10[31]_i_2_n_0 ),
        .Q(slv_reg10[31]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\slv_reg10[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\slv_reg10[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\slv_reg10[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\slv_reg10[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(\slv_reg10[7]_i_2_n_0 ),
        .Q(Q[7]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(\slv_reg10[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(p_0_in__0));
  FDRE \slv_reg10_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(\slv_reg10[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[0]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[0]),
        .I4(registers_axil_wdata[0]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[10]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[1]),
        .I4(registers_axil_wdata[10]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[11]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[1]),
        .I4(registers_axil_wdata[11]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[12]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[1]),
        .I4(registers_axil_wdata[12]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[13]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[1]),
        .I4(registers_axil_wdata[13]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[14]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[1]),
        .I4(registers_axil_wdata[14]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg13[15]_i_1 
       (.I0(\slv_reg13[15]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[15]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[1]),
        .I4(registers_axil_wdata[15]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCECCCCCCC)) 
    \slv_reg13[15]_i_3 
       (.I0(registers_axil_wstrb[1]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[2]),
        .I4(registers_axil_wdata[16]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[2]),
        .I4(registers_axil_wdata[17]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[2]),
        .I4(registers_axil_wdata[18]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[2]),
        .I4(registers_axil_wdata[19]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[1]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[0]),
        .I4(registers_axil_wdata[1]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[2]),
        .I4(registers_axil_wdata[20]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[2]),
        .I4(registers_axil_wdata[21]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[2]),
        .I4(registers_axil_wdata[22]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg13[23]_i_1 
       (.I0(\slv_reg13[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[2]),
        .I4(registers_axil_wdata[23]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCECCCCCCC)) 
    \slv_reg13[23]_i_3 
       (.I0(registers_axil_wstrb[2]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[3]),
        .I4(registers_axil_wdata[24]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[3]),
        .I4(registers_axil_wdata[25]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[3]),
        .I4(registers_axil_wdata[26]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[3]),
        .I4(registers_axil_wdata[27]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[3]),
        .I4(registers_axil_wdata[28]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[3]),
        .I4(registers_axil_wdata[29]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[2]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[0]),
        .I4(registers_axil_wdata[2]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[3]),
        .I4(registers_axil_wdata[30]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg13[31]_i_1 
       (.I0(\slv_reg13[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[3]),
        .I4(registers_axil_wdata[31]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCECCCCCCC)) 
    \slv_reg13[31]_i_3 
       (.I0(registers_axil_wstrb[3]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \slv_reg13[31]_i_4 
       (.I0(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg13[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[3]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[0]),
        .I4(registers_axil_wdata[3]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[4]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[0]),
        .I4(registers_axil_wdata[4]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[5]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[0]),
        .I4(registers_axil_wdata[5]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[6]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[0]),
        .I4(registers_axil_wdata[6]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg13[7]_i_1 
       (.I0(\slv_reg13[7]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg13[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[7]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[0]),
        .I4(registers_axil_wdata[7]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCECCCCCCC)) 
    \slv_reg13[7]_i_3 
       (.I0(registers_axil_wstrb[0]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[8]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[1]),
        .I4(registers_axil_wdata[8]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg13[9]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(p_0_in[0]),
        .I3(registers_axil_wstrb[1]),
        .I4(registers_axil_wdata[9]),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg13[9]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(\slv_reg13[0]_i_1_n_0 ),
        .Q(slv_reg13[0]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(\slv_reg13[10]_i_1_n_0 ),
        .Q(slv_reg13[10]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(\slv_reg13[11]_i_1_n_0 ),
        .Q(slv_reg13[11]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(\slv_reg13[12]_i_1_n_0 ),
        .Q(slv_reg13[12]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(\slv_reg13[13]_i_1_n_0 ),
        .Q(slv_reg13[13]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(\slv_reg13[14]_i_1_n_0 ),
        .Q(slv_reg13[14]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(\slv_reg13[15]_i_2_n_0 ),
        .Q(slv_reg13[15]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(\slv_reg13[16]_i_1_n_0 ),
        .Q(slv_reg13[16]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(\slv_reg13[17]_i_1_n_0 ),
        .Q(slv_reg13[17]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(\slv_reg13[18]_i_1_n_0 ),
        .Q(slv_reg13[18]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(\slv_reg13[19]_i_1_n_0 ),
        .Q(slv_reg13[19]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(\slv_reg13[1]_i_1_n_0 ),
        .Q(slv_reg13[1]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(\slv_reg13[20]_i_1_n_0 ),
        .Q(slv_reg13[20]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(\slv_reg13[21]_i_1_n_0 ),
        .Q(slv_reg13[21]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(\slv_reg13[22]_i_1_n_0 ),
        .Q(slv_reg13[22]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(\slv_reg13[23]_i_2_n_0 ),
        .Q(slv_reg13[23]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(\slv_reg13[24]_i_1_n_0 ),
        .Q(slv_reg13[24]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(\slv_reg13[25]_i_1_n_0 ),
        .Q(slv_reg13[25]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(\slv_reg13[26]_i_1_n_0 ),
        .Q(slv_reg13[26]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(\slv_reg13[27]_i_1_n_0 ),
        .Q(slv_reg13[27]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(\slv_reg13[28]_i_1_n_0 ),
        .Q(slv_reg13[28]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(\slv_reg13[29]_i_1_n_0 ),
        .Q(slv_reg13[29]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(\slv_reg13[2]_i_1_n_0 ),
        .Q(slv_reg13[2]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(\slv_reg13[30]_i_1_n_0 ),
        .Q(slv_reg13[30]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(\slv_reg13[31]_i_2_n_0 ),
        .Q(slv_reg13[31]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(\slv_reg13[3]_i_1_n_0 ),
        .Q(slv_reg13[3]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(\slv_reg13[4]_i_1_n_0 ),
        .Q(slv_reg13[4]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(\slv_reg13[5]_i_1_n_0 ),
        .Q(slv_reg13[5]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(\slv_reg13[6]_i_1_n_0 ),
        .Q(slv_reg13[6]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(\slv_reg13[7]_i_2_n_0 ),
        .Q(slv_reg13[7]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(\slv_reg13[8]_i_1_n_0 ),
        .Q(slv_reg13[8]),
        .R(p_0_in__0));
  FDRE \slv_reg13_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(\slv_reg13[9]_i_1_n_0 ),
        .Q(slv_reg13[9]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[0]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[0]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[10]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[10]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[11]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[11]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[12]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[12]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[13]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[13]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[14]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[14]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg14[15]_i_1 
       (.I0(\slv_reg14[15]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[15]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[15]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \slv_reg14[15]_i_3 
       (.I0(\slv_reg0_reg[16]_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(registers_axil_wstrb[1]),
        .O(\slv_reg14[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[16]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[17]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[18]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[19]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[1]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[1]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[20]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[21]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[22]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg14[23]_i_1 
       (.I0(\slv_reg14[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[23]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \slv_reg14[23]_i_3 
       (.I0(\slv_reg0_reg[16]_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(registers_axil_wstrb[2]),
        .O(\slv_reg14[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[24]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[25]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[26]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[27]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[28]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[29]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[2]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[2]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[30]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg14[31]_i_1 
       (.I0(\slv_reg14[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[31]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \slv_reg14[31]_i_3 
       (.I0(\slv_reg0_reg[16]_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(registers_axil_wstrb[3]),
        .O(\slv_reg14[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[3]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[3]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[4]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[4]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[5]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[5]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[6]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[6]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg14[7]_i_1 
       (.I0(\slv_reg14[7]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg14[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[7]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[7]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \slv_reg14[7]_i_3 
       (.I0(\slv_reg0_reg[16]_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(\axi_awaddr_reg[5]_rep_n_0 ),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(registers_axil_wstrb[0]),
        .O(\slv_reg14[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[8]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[8]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg14[9]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\slv_reg13[31]_i_4_n_0 ),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[9]),
        .I4(\axi_awaddr_reg[4]_1 [0]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[9]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(\slv_reg14[0]_i_1_n_0 ),
        .Q(slv_reg14[0]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(\slv_reg14[10]_i_1_n_0 ),
        .Q(slv_reg14[10]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(\slv_reg14[11]_i_1_n_0 ),
        .Q(slv_reg14[11]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(\slv_reg14[12]_i_1_n_0 ),
        .Q(slv_reg14[12]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(\slv_reg14[13]_i_1_n_0 ),
        .Q(slv_reg14[13]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(\slv_reg14[14]_i_1_n_0 ),
        .Q(slv_reg14[14]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(\slv_reg14[15]_i_2_n_0 ),
        .Q(slv_reg14[15]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(\slv_reg14[16]_i_1_n_0 ),
        .Q(slv_reg14[16]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(\slv_reg14[17]_i_1_n_0 ),
        .Q(slv_reg14[17]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(\slv_reg14[18]_i_1_n_0 ),
        .Q(slv_reg14[18]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(\slv_reg14[19]_i_1_n_0 ),
        .Q(slv_reg14[19]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(\slv_reg14[1]_i_1_n_0 ),
        .Q(slv_reg14[1]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(\slv_reg14[20]_i_1_n_0 ),
        .Q(slv_reg14[20]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(\slv_reg14[21]_i_1_n_0 ),
        .Q(slv_reg14[21]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(\slv_reg14[22]_i_1_n_0 ),
        .Q(slv_reg14[22]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(\slv_reg14[23]_i_2_n_0 ),
        .Q(slv_reg14[23]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(\slv_reg14[24]_i_1_n_0 ),
        .Q(slv_reg14[24]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(\slv_reg14[25]_i_1_n_0 ),
        .Q(slv_reg14[25]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(\slv_reg14[26]_i_1_n_0 ),
        .Q(slv_reg14[26]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(\slv_reg14[27]_i_1_n_0 ),
        .Q(slv_reg14[27]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(\slv_reg14[28]_i_1_n_0 ),
        .Q(slv_reg14[28]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(\slv_reg14[29]_i_1_n_0 ),
        .Q(slv_reg14[29]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(\slv_reg14[2]_i_1_n_0 ),
        .Q(slv_reg14[2]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(\slv_reg14[30]_i_1_n_0 ),
        .Q(slv_reg14[30]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(\slv_reg14[31]_i_2_n_0 ),
        .Q(slv_reg14[31]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(\slv_reg14[3]_i_1_n_0 ),
        .Q(slv_reg14[3]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(\slv_reg14[4]_i_1_n_0 ),
        .Q(slv_reg14[4]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(\slv_reg14[5]_i_1_n_0 ),
        .Q(slv_reg14[5]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(\slv_reg14[6]_i_1_n_0 ),
        .Q(slv_reg14[6]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(\slv_reg14[7]_i_2_n_0 ),
        .Q(slv_reg14[7]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(\slv_reg14[8]_i_1_n_0 ),
        .Q(slv_reg14[8]),
        .R(p_0_in__0));
  FDRE \slv_reg14_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(\slv_reg14[9]_i_1_n_0 ),
        .Q(slv_reg14[9]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[0]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[0]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[10]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[10]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[11]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[11]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[12]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[12]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[13]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[13]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[14]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[14]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg15[15]_i_1 
       (.I0(\slv_reg15[15]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[15]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[15]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECCCCCCCCCCCCCCC)) 
    \slv_reg15[15]_i_3 
       (.I0(registers_axil_wstrb[1]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg15[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[16]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[17]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[18]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[19]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[1]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[1]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[20]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[21]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[22]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg15[23]_i_1 
       (.I0(\slv_reg15[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[23]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECCCCCCCCCCCCCCC)) 
    \slv_reg15[23]_i_3 
       (.I0(registers_axil_wstrb[2]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg15[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[24]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[25]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[26]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[27]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[28]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[29]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[2]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[2]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[30]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg15[31]_i_1 
       (.I0(\slv_reg15[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[31]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECCCCCCCCCCCCCCC)) 
    \slv_reg15[31]_i_3 
       (.I0(registers_axil_wstrb[3]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg15[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[3]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[3]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[4]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[4]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[5]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[5]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[6]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[6]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg15[7]_i_1 
       (.I0(\slv_reg15[7]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg15[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[7]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[7]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hECCCCCCCCCCCCCCC)) 
    \slv_reg15[7]_i_3 
       (.I0(registers_axil_wstrb[0]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg15[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[8]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[8]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg15[9]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[9]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg15[9]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(\slv_reg15[0]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(\slv_reg15[10]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(\slv_reg15[11]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(\slv_reg15[12]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(\slv_reg15[13]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(\slv_reg15[14]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(\slv_reg15[15]_i_2_n_0 ),
        .Q(\slv_reg15_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(\slv_reg15[16]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(\slv_reg15[17]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(\slv_reg15[18]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(\slv_reg15[19]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(\slv_reg15[1]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(\slv_reg15[20]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(\slv_reg15[21]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(\slv_reg15[22]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(\slv_reg15[23]_i_2_n_0 ),
        .Q(\slv_reg15_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(\slv_reg15[24]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(\slv_reg15[25]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(\slv_reg15[26]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(\slv_reg15[27]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(\slv_reg15[28]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(\slv_reg15[29]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(\slv_reg15[2]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(\slv_reg15[30]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(\slv_reg15[31]_i_2_n_0 ),
        .Q(\slv_reg15_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(\slv_reg15[3]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(\slv_reg15[4]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(\slv_reg15[5]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(\slv_reg15[6]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(\slv_reg15[7]_i_2_n_0 ),
        .Q(\slv_reg15_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(\slv_reg15[8]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \slv_reg15_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(\slv_reg15[9]_i_1_n_0 ),
        .Q(\slv_reg15_reg_n_0_[9] ),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[0]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[0]),
        .I3(p_0_in[3]),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[10]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[10]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[11]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[11]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[12]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[12]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[13]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[13]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[14]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[14]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg1[15]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[15]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[15]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCECCCC)) 
    \slv_reg1[15]_i_3 
       (.I0(registers_axil_wstrb[1]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg1[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[16]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[17]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[18]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[19]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[1]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[1]),
        .I3(p_0_in[3]),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[20]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[21]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[22]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg1[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[23]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCECCCC)) 
    \slv_reg1[23]_i_3 
       (.I0(registers_axil_wstrb[2]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg1[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[24]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[25]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[26]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[27]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[28]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[29]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[2]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[2]),
        .I3(p_0_in[3]),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[30]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[31]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCECCCC)) 
    \slv_reg1[31]_i_3 
       (.I0(registers_axil_wstrb[3]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg1[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[3]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[3]),
        .I3(p_0_in[3]),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[4]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[4]),
        .I3(p_0_in[3]),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[5]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[5]),
        .I3(p_0_in[3]),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[6]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[6]),
        .I3(p_0_in[3]),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[7]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[7]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[7]),
        .I3(p_0_in[3]),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCECCCC)) 
    \slv_reg1[7]_i_3 
       (.I0(registers_axil_wstrb[0]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg1[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[8]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[8]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg1[9]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[9]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg0[30]_i_2_n_0 ),
        .I5(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\slv_reg1[9]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[0]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[10]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[11]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[12]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[13]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[14]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[15]_i_2_n_0 ),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[16]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[17]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[18]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[19]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[1]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[20]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[21]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[22]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[23]_i_2_n_0 ),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[24]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[25]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[26]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[27]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[28]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[29]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[2]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[30]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[31]_i_2_n_0 ),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[3]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[4]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[5]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[6]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[7]_i_2_n_0 ),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[8]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \slv_reg1_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[9]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[0]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[0]),
        .I3(p_0_in[3]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[10]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[10]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[11]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[11]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[12]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[12]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[13]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[13]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[14]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[14]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg2[15]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[15]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[15]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCECCCCCCCC)) 
    \slv_reg2[15]_i_3 
       (.I0(registers_axil_wstrb[1]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[16]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[17]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[18]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[19]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[1]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[1]),
        .I3(p_0_in[3]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[20]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[21]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[22]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg2[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[23]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCECCCCCCCC)) 
    \slv_reg2[23]_i_3 
       (.I0(registers_axil_wstrb[2]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[24]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[25]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[26]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[27]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[28]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[29]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[2]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[2]),
        .I3(p_0_in[3]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[30]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg2[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[31]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCECCCCCCCC)) 
    \slv_reg2[31]_i_3 
       (.I0(registers_axil_wstrb[3]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg2[31]_i_4 
       (.I0(\axi_awaddr_reg[4]_1 [1]),
        .I1(\axi_awaddr_reg[2]_rep_n_0 ),
        .O(\axi_awaddr_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[3]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[3]),
        .I3(p_0_in[3]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[4]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[4]),
        .I3(p_0_in[3]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[5]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[5]),
        .I3(p_0_in[3]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[6]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[6]),
        .I3(p_0_in[3]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[7]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[7]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[7]),
        .I3(p_0_in[3]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCECCCCCCCC)) 
    \slv_reg2[7]_i_3 
       (.I0(registers_axil_wstrb[0]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[8]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[8]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg2[9]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[9]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\axi_awaddr_reg[4]_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg2[9]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2[0]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2[10]_i_1_n_0 ),
        .Q(slv_reg2[10]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2[11]_i_1_n_0 ),
        .Q(slv_reg2[11]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2[12]_i_1_n_0 ),
        .Q(slv_reg2[12]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2[13]_i_1_n_0 ),
        .Q(slv_reg2[13]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2[14]_i_1_n_0 ),
        .Q(slv_reg2[14]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2[15]_i_2_n_0 ),
        .Q(slv_reg2[15]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2[16]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2[17]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2[18]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2[19]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2[1]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2[20]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2[21]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2[22]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2[23]_i_2_n_0 ),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2[24]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2[25]_i_1_n_0 ),
        .Q(slv_reg2[25]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2[26]_i_1_n_0 ),
        .Q(slv_reg2[26]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2[27]_i_1_n_0 ),
        .Q(slv_reg2[27]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2[28]_i_1_n_0 ),
        .Q(slv_reg2[28]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2[29]_i_1_n_0 ),
        .Q(slv_reg2[29]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2[2]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2[30]_i_1_n_0 ),
        .Q(slv_reg2[30]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2[31]_i_2_n_0 ),
        .Q(slv_reg2[31]),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2[3]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2[4]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2[5]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2[6]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2[7]_i_2_n_0 ),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2[8]_i_1_n_0 ),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \slv_reg2_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2[9]_i_1_n_0 ),
        .Q(slv_reg2[9]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[0]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[0]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(p_0_in[3]),
        .O(\slv_reg3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[10]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[10]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg3[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[11]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[11]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg3[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[12]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[12]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg3[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[13]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[13]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg3[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[14]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[14]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg3[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg3[15]_i_3_n_0 ),
        .I1(\slv_reg0[15]_i_2_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_2 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[15]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg3[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCECCCCCCCCCCCC)) 
    \slv_reg3[15]_i_3 
       (.I0(registers_axil_wstrb[1]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg3[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[16]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg3[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[17]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg3[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[18]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg3[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[19]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg3[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[1]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[1]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(p_0_in[3]),
        .O(\slv_reg3[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[20]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg3[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[21]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg3[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[22]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg3[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg3[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[23]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg3[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCECCCCCCCCCCCC)) 
    \slv_reg3[23]_i_3 
       (.I0(registers_axil_wstrb[2]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg3[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[24]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg3[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[25]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg3[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[26]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg3[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[27]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg3[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[28]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg3[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[29]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg3[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[2]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[2]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(p_0_in[3]),
        .O(\slv_reg3[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[30]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg3[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg3[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[31]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCECCCCCCCCCCCC)) 
    \slv_reg3[31]_i_3 
       (.I0(registers_axil_wstrb[3]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg3[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg3[31]_i_4 
       (.I0(\axi_awaddr_reg[4]_1 [1]),
        .I1(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg3[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[3]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[3]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(p_0_in[3]),
        .O(\slv_reg3[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[4]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[4]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(p_0_in[3]),
        .O(\slv_reg3[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[5]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[5]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(p_0_in[3]),
        .O(\slv_reg3[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[6]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[6]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(p_0_in[3]),
        .O(\slv_reg3[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg3[7]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[7]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(p_0_in[3]),
        .O(\slv_reg3[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCECCCCCCCCCCCC)) 
    \slv_reg3[7]_i_3 
       (.I0(registers_axil_wstrb[0]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg3[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[8]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[8]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg3[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[9]_i_1 
       (.I0(\slv_reg0[15]_i_2_n_0 ),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[9]),
        .I3(\axi_awaddr_reg[2]_rep_n_0 ),
        .I4(\slv_reg3[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg3[9]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3[10]_i_1_n_0 ),
        .Q(slv_reg3[10]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3[11]_i_1_n_0 ),
        .Q(slv_reg3[11]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3[12]_i_1_n_0 ),
        .Q(slv_reg3[12]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3[13]_i_1_n_0 ),
        .Q(slv_reg3[13]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3[14]_i_1_n_0 ),
        .Q(slv_reg3[14]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3[15]_i_2_n_0 ),
        .Q(slv_reg3[15]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3[16]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3[17]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3[18]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3[19]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3[1]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3[20]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3[21]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3[22]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg3[23]_i_2_n_0 ),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3[24]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3[25]_i_1_n_0 ),
        .Q(slv_reg3[25]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3[26]_i_1_n_0 ),
        .Q(slv_reg3[26]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3[27]_i_1_n_0 ),
        .Q(slv_reg3[27]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3[28]_i_1_n_0 ),
        .Q(slv_reg3[28]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3[29]_i_1_n_0 ),
        .Q(slv_reg3[29]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3[2]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3[30]_i_1_n_0 ),
        .Q(slv_reg3[30]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg3[31]_i_2_n_0 ),
        .Q(slv_reg3[31]),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3[3]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3[4]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3[5]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3[6]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg3[7]_i_2_n_0 ),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3[8]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \slv_reg3_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg3[9]_i_1_n_0 ),
        .Q(slv_reg3[9]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[0]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[0]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[10]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[10]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[11]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[11]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[12]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[12]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[13]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[13]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[14]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[14]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg4[15]_i_1 
       (.I0(\slv_reg4[15]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[15]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[15]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCEC)) 
    \slv_reg4[15]_i_3 
       (.I0(registers_axil_wstrb[1]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg4[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[16]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[17]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[18]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[19]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[1]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[1]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[20]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[21]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[22]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg4[23]_i_1 
       (.I0(\slv_reg4[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[23]),
        .I3(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCEC)) 
    \slv_reg4[23]_i_3 
       (.I0(registers_axil_wstrb[2]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg4[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[24]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[25]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[26]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[27]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[28]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[29]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[2]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[2]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[30]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg4[31]_i_1 
       (.I0(\slv_reg4[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[31]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCEC)) 
    \slv_reg4[31]_i_3 
       (.I0(registers_axil_wstrb[3]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg4[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg4[31]_i_4 
       (.I0(p_0_in[0]),
        .I1(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg4[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[3]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[3]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[4]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[4]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[5]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[5]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[6]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[6]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg4[7]_i_1 
       (.I0(\slv_reg4[7]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg4[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[7]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[7]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCEC)) 
    \slv_reg4[7]_i_3 
       (.I0(registers_axil_wstrb[0]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg4[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[8]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[8]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg4[9]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[9]),
        .I3(\axi_awaddr_reg[5]_rep__1_0 ),
        .I4(\slv_reg4[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg4[9]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(\slv_reg4[0]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(\slv_reg4[10]_i_1_n_0 ),
        .Q(slv_reg4[10]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(\slv_reg4[11]_i_1_n_0 ),
        .Q(slv_reg4[11]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(\slv_reg4[12]_i_1_n_0 ),
        .Q(slv_reg4[12]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(\slv_reg4[13]_i_1_n_0 ),
        .Q(slv_reg4[13]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(\slv_reg4[14]_i_1_n_0 ),
        .Q(slv_reg4[14]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(\slv_reg4[15]_i_2_n_0 ),
        .Q(slv_reg4[15]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(\slv_reg4[16]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(\slv_reg4[17]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(\slv_reg4[18]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(\slv_reg4[19]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(\slv_reg4[1]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(\slv_reg4[20]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(\slv_reg4[21]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(\slv_reg4[22]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(\slv_reg4[23]_i_2_n_0 ),
        .Q(\slv_reg4_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(\slv_reg4[24]_i_1_n_0 ),
        .Q(slv_reg4[24]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(\slv_reg4[25]_i_1_n_0 ),
        .Q(slv_reg4[25]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(\slv_reg4[26]_i_1_n_0 ),
        .Q(slv_reg4[26]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(\slv_reg4[27]_i_1_n_0 ),
        .Q(slv_reg4[27]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(\slv_reg4[28]_i_1_n_0 ),
        .Q(slv_reg4[28]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(\slv_reg4[29]_i_1_n_0 ),
        .Q(slv_reg4[29]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(\slv_reg4[2]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(\slv_reg4[30]_i_1_n_0 ),
        .Q(slv_reg4[30]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(\slv_reg4[31]_i_2_n_0 ),
        .Q(slv_reg4[31]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(\slv_reg4[3]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(\slv_reg4[4]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(\slv_reg4[5]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(\slv_reg4[6]_i_1_n_0 ),
        .Q(\slv_reg4_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(\slv_reg4[7]_i_2_n_0 ),
        .Q(\slv_reg4_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(\slv_reg4[8]_i_1_n_0 ),
        .Q(slv_reg4[8]),
        .R(p_0_in__0));
  FDRE \slv_reg4_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(\slv_reg4[9]_i_1_n_0 ),
        .Q(slv_reg4[9]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[0]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[0]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[10]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[10]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[11]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[11]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[12]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[12]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[13]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[13]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[14]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[14]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg5[15]_i_1 
       (.I0(\slv_reg5[15]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[15]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCECCCCC)) 
    \slv_reg5[15]_i_3 
       (.I0(registers_axil_wstrb[1]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg5[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[16]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg5[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[17]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg5[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[18]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg5[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[19]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg5[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[1]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[1]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[20]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg5[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[21]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg5[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[22]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg5[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg5[23]_i_1 
       (.I0(\slv_reg5[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(registers_axil_wstrb[2]),
        .I2(registers_axil_wdata[23]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg5[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCECCCCC)) 
    \slv_reg5[23]_i_3 
       (.I0(registers_axil_wstrb[2]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg5[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[24]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg5[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[25]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg5[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[26]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg5[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[27]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg5[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[28]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg5[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[29]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg5[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[2]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[2]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[30]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg5[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg5[31]_i_1 
       (.I0(\slv_reg5[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(registers_axil_wstrb[3]),
        .I2(registers_axil_wdata[31]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCECCCCC)) 
    \slv_reg5[31]_i_3 
       (.I0(registers_axil_wstrb[3]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg5[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg5[31]_i_4 
       (.I0(\axi_awaddr_reg[4]_1 [0]),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .O(\slv_reg5[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[3]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[3]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[4]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[4]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[5]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[5]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[6]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[6]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg5[7]_i_1 
       (.I0(\slv_reg5[7]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg5[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[0]),
        .I2(registers_axil_wdata[7]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCECCCCC)) 
    \slv_reg5[7]_i_3 
       (.I0(registers_axil_wstrb[0]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg5[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[8]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[8]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[9]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(registers_axil_wstrb[1]),
        .I2(registers_axil_wdata[9]),
        .I3(p_0_in[0]),
        .I4(\slv_reg5[31]_i_4_n_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg5[9]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[0]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[10]_i_1_n_0 ),
        .Q(slv_reg5[10]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[11]_i_1_n_0 ),
        .Q(slv_reg5[11]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[12]_i_1_n_0 ),
        .Q(slv_reg5[12]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[13]_i_1_n_0 ),
        .Q(slv_reg5[13]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[14]_i_1_n_0 ),
        .Q(slv_reg5[14]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[15]_i_2_n_0 ),
        .Q(slv_reg5[15]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[16]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[17]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[18]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[19]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[1]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[20]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[21]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[22]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[23]_i_2_n_0 ),
        .Q(\slv_reg5_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(\slv_reg5[24]_i_1_n_0 ),
        .Q(slv_reg5[24]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(\slv_reg5[25]_i_1_n_0 ),
        .Q(slv_reg5[25]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(\slv_reg5[26]_i_1_n_0 ),
        .Q(slv_reg5[26]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(\slv_reg5[27]_i_1_n_0 ),
        .Q(slv_reg5[27]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(\slv_reg5[28]_i_1_n_0 ),
        .Q(slv_reg5[28]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(\slv_reg5[29]_i_1_n_0 ),
        .Q(slv_reg5[29]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[2]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(\slv_reg5[30]_i_1_n_0 ),
        .Q(slv_reg5[30]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(\slv_reg5[31]_i_2_n_0 ),
        .Q(slv_reg5[31]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[3]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[4]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[5]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[6]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[7]_i_2_n_0 ),
        .Q(\slv_reg5_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[8]_i_1_n_0 ),
        .Q(slv_reg5[8]),
        .R(p_0_in__0));
  FDRE \slv_reg5_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[9]_i_1_n_0 ),
        .Q(slv_reg5[9]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[0]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[0]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[10]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[10]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[11]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[11]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[12]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[12]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[13]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[13]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[14]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[14]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg7[15]_i_1 
       (.I0(\slv_reg7[15]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[15]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[15]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCECCCCCCCCCCCCC)) 
    \slv_reg7[15]_i_3 
       (.I0(registers_axil_wstrb[1]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg7[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[16]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[16]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg7[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[17]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[17]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg7[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[18]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[18]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg7[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[19]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[19]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg7[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[1]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[1]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[20]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[20]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg7[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[21]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[21]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg7[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[22]_i_1 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[22]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg7[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg7[23]_i_1 
       (.I0(\slv_reg7[23]_i_3_n_0 ),
        .I1(slv_reg_wren),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[23]_i_2 
       (.I0(slv_reg_wren),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[2]),
        .I3(registers_axil_wdata[23]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg7[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCECCCCCCCCCCCCC)) 
    \slv_reg7[23]_i_3 
       (.I0(registers_axil_wstrb[2]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg7[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[24]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[24]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__0_n_0 ),
        .O(\slv_reg7[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[25]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[25]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg7[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[26]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[26]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg7[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[27]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[27]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg7[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[28]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[28]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg7[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[29]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[29]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg7[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[2]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[2]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[30]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[30]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg7[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg7[31]_i_1 
       (.I0(\slv_reg7[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_3_n_0 ),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[31]_i_2 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[3]),
        .I3(registers_axil_wdata[31]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep_n_0 ),
        .O(\slv_reg7[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCECCCCCCCCCCCCC)) 
    \slv_reg7[31]_i_3 
       (.I0(registers_axil_wstrb[3]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg7[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \slv_reg7[31]_i_4 
       (.I0(\axi_awaddr_reg[4]_1 [0]),
        .I1(p_0_in[0]),
        .O(\axi_awaddr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[3]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[3]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[4]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[4]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[5]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[5]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[6]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[6]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg7[7]_i_1 
       (.I0(\slv_reg7[7]_i_3_n_0 ),
        .I1(registers_axil_awvalid_0),
        .I2(\slv_reg0_reg[16]_0 ),
        .O(\slv_reg7[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[7]_i_2 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[0]),
        .I3(registers_axil_wdata[7]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCECCCCCCCCCCCCC)) 
    \slv_reg7[7]_i_3 
       (.I0(registers_axil_wstrb[0]),
        .I1(\slv_reg0_reg[16]_0 ),
        .I2(\axi_awaddr_reg[4]_1 [1]),
        .I3(\axi_awaddr_reg[5]_rep_n_0 ),
        .I4(\axi_awaddr_reg[2]_rep_n_0 ),
        .I5(\axi_awaddr_reg[4]_1 [0]),
        .O(\slv_reg7[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[8]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[8]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg7[9]_i_1 
       (.I0(registers_axil_awvalid_0),
        .I1(\axi_awaddr_reg[4]_1 [1]),
        .I2(registers_axil_wstrb[1]),
        .I3(registers_axil_wdata[9]),
        .I4(\axi_awaddr_reg[3]_0 ),
        .I5(\axi_awaddr_reg[5]_rep__1_0 ),
        .O(\slv_reg7[9]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(\slv_reg7[0]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [0]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[10] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(\slv_reg7[10]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [10]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[11] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(\slv_reg7[11]_i_1_n_0 ),
        .Q(slv_reg7[11]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[12] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(\slv_reg7[12]_i_1_n_0 ),
        .Q(slv_reg7[12]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[13] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(\slv_reg7[13]_i_1_n_0 ),
        .Q(slv_reg7[13]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[14] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(\slv_reg7[14]_i_1_n_0 ),
        .Q(slv_reg7[14]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[15] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(\slv_reg7[15]_i_2_n_0 ),
        .Q(slv_reg7[15]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[16] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(\slv_reg7[16]_i_1_n_0 ),
        .Q(slv_reg7[16]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[17] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(\slv_reg7[17]_i_1_n_0 ),
        .Q(slv_reg7[17]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[18] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(\slv_reg7[18]_i_1_n_0 ),
        .Q(slv_reg7[18]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[19] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(\slv_reg7[19]_i_1_n_0 ),
        .Q(slv_reg7[19]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[1] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(\slv_reg7[1]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [1]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[20] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(\slv_reg7[20]_i_1_n_0 ),
        .Q(slv_reg7[20]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[21] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(\slv_reg7[21]_i_1_n_0 ),
        .Q(slv_reg7[21]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[22] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(\slv_reg7[22]_i_1_n_0 ),
        .Q(slv_reg7[22]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[23] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(\slv_reg7[23]_i_2_n_0 ),
        .Q(slv_reg7[23]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[24] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(\slv_reg7[24]_i_1_n_0 ),
        .Q(slv_reg7[24]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[25] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(\slv_reg7[25]_i_1_n_0 ),
        .Q(slv_reg7[25]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[26] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(\slv_reg7[26]_i_1_n_0 ),
        .Q(slv_reg7[26]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[27] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(\slv_reg7[27]_i_1_n_0 ),
        .Q(slv_reg7[27]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[28] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(\slv_reg7[28]_i_1_n_0 ),
        .Q(slv_reg7[28]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[29] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(\slv_reg7[29]_i_1_n_0 ),
        .Q(slv_reg7[29]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[2] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(\slv_reg7[2]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [2]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[30] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(\slv_reg7[30]_i_1_n_0 ),
        .Q(slv_reg7[30]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[31] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(\slv_reg7[31]_i_2_n_0 ),
        .Q(slv_reg7[31]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[3] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(\slv_reg7[3]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [3]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[4] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(\slv_reg7[4]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [4]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[5] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(\slv_reg7[5]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [5]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[6] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(\slv_reg7[6]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [6]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[7] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(\slv_reg7[7]_i_2_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [7]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[8] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(\slv_reg7[8]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [8]),
        .R(p_0_in__0));
  FDRE \slv_reg7_reg[9] 
       (.C(registers_axil_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(\slv_reg7[9]_i_1_n_0 ),
        .Q(\slv_reg7_reg[10]_0 [9]),
        .R(p_0_in__0));
endmodule

(* ORIG_REF_NAME = "filter_hw" *) 
module zed_feature_extraction_0_0_filter_hw
   (filter_to_reg_feature_bram_valid_1,
    filter_to_reg_feature_bram_valid_2,
    registers_axil_aclk,
    reg_to_filter_feature_bram_readout_1,
    reg_to_filter_feature_bram_readout_2,
    feature_bram_valid_reg,
    bram_valid,
    Q);
  output filter_to_reg_feature_bram_valid_1;
  output filter_to_reg_feature_bram_valid_2;
  input registers_axil_aclk;
  input reg_to_filter_feature_bram_readout_1;
  input reg_to_filter_feature_bram_readout_2;
  input feature_bram_valid_reg;
  input [10:0]bram_valid;
  input [10:0]Q;

  wire [10:0]Q;
  wire [10:0]bram_valid;
  wire feature_bram_valid_reg;
  wire filter_to_reg_feature_bram_valid_1;
  wire filter_to_reg_feature_bram_valid_2;
  wire reg_to_filter_feature_bram_readout_1;
  wire reg_to_filter_feature_bram_readout_2;
  wire registers_axil_aclk;

  zed_feature_extraction_0_0_region_detect region_detect_1
       (.bram_valid(bram_valid),
        .feature_bram_valid_reg(feature_bram_valid_reg),
        .filter_to_reg_feature_bram_valid_1(filter_to_reg_feature_bram_valid_1),
        .reg_to_filter_feature_bram_readout_1(reg_to_filter_feature_bram_readout_1),
        .registers_axil_aclk(registers_axil_aclk));
  zed_feature_extraction_0_0_region_detect_0 region_detect_2
       (.Q(Q),
        .feature_bram_valid_reg(feature_bram_valid_reg),
        .filter_to_reg_feature_bram_valid_2(filter_to_reg_feature_bram_valid_2),
        .reg_to_filter_feature_bram_readout_2(reg_to_filter_feature_bram_readout_2),
        .registers_axil_aclk(registers_axil_aclk));
endmodule

(* ORIG_REF_NAME = "label_selection" *) 
module zed_feature_extraction_0_0_label_selection
   (filter_to_reg_feature_bram_valid_2,
    registers_axil_aclk,
    reg_to_filter_feature_bram_readout_2,
    feature_bram_valid_reg,
    Q);
  output filter_to_reg_feature_bram_valid_2;
  input registers_axil_aclk;
  input reg_to_filter_feature_bram_readout_2;
  input feature_bram_valid_reg;
  input [10:0]Q;

  wire [10:0]Q;
  wire feature_bram_valid_reg;
  wire filter_to_reg_feature_bram_valid_2;
  wire reg_to_filter_feature_bram_readout_2;
  wire registers_axil_aclk;

  zed_feature_extraction_0_0_feature_calculation feature_calculation_module
       (.Q(Q),
        .feature_bram_valid_reg_0(feature_bram_valid_reg),
        .filter_to_reg_feature_bram_valid_2(filter_to_reg_feature_bram_valid_2),
        .reg_to_filter_feature_bram_readout_2(reg_to_filter_feature_bram_readout_2),
        .registers_axil_aclk(registers_axil_aclk));
endmodule

(* ORIG_REF_NAME = "label_selection" *) 
module zed_feature_extraction_0_0_label_selection_1
   (filter_to_reg_feature_bram_valid_1,
    registers_axil_aclk,
    reg_to_filter_feature_bram_readout_1,
    feature_bram_valid_reg,
    bram_valid);
  output filter_to_reg_feature_bram_valid_1;
  input registers_axil_aclk;
  input reg_to_filter_feature_bram_readout_1;
  input feature_bram_valid_reg;
  input [10:0]bram_valid;

  wire [10:0]bram_valid;
  wire feature_bram_valid_reg;
  wire filter_to_reg_feature_bram_valid_1;
  wire reg_to_filter_feature_bram_readout_1;
  wire registers_axil_aclk;

  zed_feature_extraction_0_0_feature_calculation_2 feature_calculation_module
       (.bram_valid_0(bram_valid),
        .feature_bram_valid_reg_0(feature_bram_valid_reg),
        .filter_to_reg_feature_bram_valid_1(filter_to_reg_feature_bram_valid_1),
        .reg_to_filter_feature_bram_readout_1(reg_to_filter_feature_bram_readout_1),
        .registers_axil_aclk(registers_axil_aclk));
endmodule

(* ORIG_REF_NAME = "pixel_buffer" *) 
module zed_feature_extraction_0_0_pixel_buffer
   (pixel_buffer_to_stream_if_busy,
    busy_int_del,
    registers_axil_aclk,
    \G_32.busy_int_del_reg_0 ,
    WREN,
    Q,
    registers_axil_aresetn,
    reg_to_filter_software_reset);
  output pixel_buffer_to_stream_if_busy;
  output busy_int_del;
  input registers_axil_aclk;
  input \G_32.busy_int_del_reg_0 ;
  input WREN;
  input [31:0]Q;
  input registers_axil_aresetn;
  input reg_to_filter_software_reset;

  wire \G_32.busy_int_del_reg_0 ;
  wire \G_32.data_en_fifo_i_1_n_0 ;
  wire \G_32.pixel_cnt[0]_i_1_n_0 ;
  wire \G_32.pixel_cnt[1]_i_1_n_0 ;
  wire \G_32.pixel_cnt_reg_n_0_[0] ;
  wire \G_32.pixel_cnt_reg_n_0_[1] ;
  wire [31:0]Q;
  wire RDEN;
  wire WREN;
  wire busy_int_del;
  wire busy_int_n_0;
  wire data_en_fifo;
  wire [31:0]data_in_fifo;
  wire fifo_empty;
  wire pixel_buffer_to_stream_if_busy;
  wire reg_to_filter_software_reset;
  wire registers_axil_aclk;
  wire registers_axil_aresetn;
  wire NLW_FIFO18E1_inst_ALMOSTEMPTY_UNCONNECTED;
  wire NLW_FIFO18E1_inst_ALMOSTFULL_UNCONNECTED;
  wire NLW_FIFO18E1_inst_FULL_UNCONNECTED;
  wire NLW_FIFO18E1_inst_RDERR_UNCONNECTED;
  wire NLW_FIFO18E1_inst_WRERR_UNCONNECTED;
  wire [3:0]NLW_FIFO18E1_inst_DOP_UNCONNECTED;
  wire [11:0]NLW_FIFO18E1_inst_RDCOUNT_UNCONNECTED;
  wire [11:0]NLW_FIFO18E1_inst_WRCOUNT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5155)) 
    \/i_ 
       (.I0(fifo_empty),
        .I1(\G_32.pixel_cnt_reg_n_0_[1] ),
        .I2(\G_32.pixel_cnt_reg_n_0_[0] ),
        .I3(data_en_fifo),
        .O(RDEN));
  (* box_type = "PRIMITIVE" *) 
  FIFO18E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0080),
    .ALMOST_FULL_OFFSET(13'h0080),
    .DATA_WIDTH(36),
    .DO_REG(1),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO18_36"),
    .FIRST_WORD_FALL_THROUGH("FALSE"),
    .INIT(36'h000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(36'h000000000)) 
    FIFO18E1_inst
       (.ALMOSTEMPTY(NLW_FIFO18E1_inst_ALMOSTEMPTY_UNCONNECTED),
        .ALMOSTFULL(NLW_FIFO18E1_inst_ALMOSTFULL_UNCONNECTED),
        .DI(Q),
        .DIP({1'b0,1'b0,1'b0,1'b0}),
        .DO(data_in_fifo),
        .DOP(NLW_FIFO18E1_inst_DOP_UNCONNECTED[3:0]),
        .EMPTY(fifo_empty),
        .FULL(NLW_FIFO18E1_inst_FULL_UNCONNECTED),
        .RDCLK(registers_axil_aclk),
        .RDCOUNT(NLW_FIFO18E1_inst_RDCOUNT_UNCONNECTED[11:0]),
        .RDEN(RDEN),
        .RDERR(NLW_FIFO18E1_inst_RDERR_UNCONNECTED),
        .REGCE(1'b1),
        .RST(\G_32.busy_int_del_reg_0 ),
        .RSTREG(1'b1),
        .WRCLK(registers_axil_aclk),
        .WRCOUNT(NLW_FIFO18E1_inst_WRCOUNT_UNCONNECTED[11:0]),
        .WREN(WREN),
        .WRERR(NLW_FIFO18E1_inst_WRERR_UNCONNECTED));
  FDCE \G_32.busy_int_del_reg 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .CLR(\G_32.busy_int_del_reg_0 ),
        .D(pixel_buffer_to_stream_if_busy),
        .Q(busy_int_del));
  FDCE \G_32.busy_int_reg 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .CLR(\G_32.busy_int_del_reg_0 ),
        .D(busy_int_n_0),
        .Q(pixel_buffer_to_stream_if_busy));
  LUT6 #(
    .INIT(64'h51FFFFFF55000000)) 
    \G_32.data_en_fifo_i_1 
       (.I0(fifo_empty),
        .I1(\G_32.pixel_cnt_reg_n_0_[1] ),
        .I2(\G_32.pixel_cnt_reg_n_0_[0] ),
        .I3(registers_axil_aresetn),
        .I4(reg_to_filter_software_reset),
        .I5(data_en_fifo),
        .O(\G_32.data_en_fifo_i_1_n_0 ));
  FDRE \G_32.data_en_fifo_reg 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .D(\G_32.data_en_fifo_i_1_n_0 ),
        .Q(data_en_fifo),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h1A)) 
    \G_32.pixel_cnt[0]_i_1 
       (.I0(data_en_fifo),
        .I1(\G_32.pixel_cnt_reg_n_0_[1] ),
        .I2(\G_32.pixel_cnt_reg_n_0_[0] ),
        .O(\G_32.pixel_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h2C)) 
    \G_32.pixel_cnt[1]_i_1 
       (.I0(data_en_fifo),
        .I1(\G_32.pixel_cnt_reg_n_0_[1] ),
        .I2(\G_32.pixel_cnt_reg_n_0_[0] ),
        .O(\G_32.pixel_cnt[1]_i_1_n_0 ));
  FDCE \G_32.pixel_cnt_reg[0] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .CLR(\G_32.busy_int_del_reg_0 ),
        .D(\G_32.pixel_cnt[0]_i_1_n_0 ),
        .Q(\G_32.pixel_cnt_reg_n_0_[0] ));
  FDCE \G_32.pixel_cnt_reg[1] 
       (.C(registers_axil_aclk),
        .CE(1'b1),
        .CLR(\G_32.busy_int_del_reg_0 ),
        .D(\G_32.pixel_cnt[1]_i_1_n_0 ),
        .Q(\G_32.pixel_cnt_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    busy_int
       (.I0(data_en_fifo),
        .I1(\G_32.pixel_cnt_reg_n_0_[0] ),
        .I2(\G_32.pixel_cnt_reg_n_0_[1] ),
        .O(busy_int_n_0));
endmodule

(* ORIG_REF_NAME = "region_detect" *) 
module zed_feature_extraction_0_0_region_detect
   (filter_to_reg_feature_bram_valid_1,
    registers_axil_aclk,
    reg_to_filter_feature_bram_readout_1,
    feature_bram_valid_reg,
    bram_valid);
  output filter_to_reg_feature_bram_valid_1;
  input registers_axil_aclk;
  input reg_to_filter_feature_bram_readout_1;
  input feature_bram_valid_reg;
  input [10:0]bram_valid;

  wire [10:0]bram_valid;
  wire feature_bram_valid_reg;
  wire filter_to_reg_feature_bram_valid_1;
  wire reg_to_filter_feature_bram_readout_1;
  wire registers_axil_aclk;

  zed_feature_extraction_0_0_label_selection_1 LABEL_SELECTION_MODULE
       (.bram_valid(bram_valid),
        .feature_bram_valid_reg(feature_bram_valid_reg),
        .filter_to_reg_feature_bram_valid_1(filter_to_reg_feature_bram_valid_1),
        .reg_to_filter_feature_bram_readout_1(reg_to_filter_feature_bram_readout_1),
        .registers_axil_aclk(registers_axil_aclk));
endmodule

(* ORIG_REF_NAME = "region_detect" *) 
module zed_feature_extraction_0_0_region_detect_0
   (filter_to_reg_feature_bram_valid_2,
    registers_axil_aclk,
    reg_to_filter_feature_bram_readout_2,
    feature_bram_valid_reg,
    Q);
  output filter_to_reg_feature_bram_valid_2;
  input registers_axil_aclk;
  input reg_to_filter_feature_bram_readout_2;
  input feature_bram_valid_reg;
  input [10:0]Q;

  wire [10:0]Q;
  wire feature_bram_valid_reg;
  wire filter_to_reg_feature_bram_valid_2;
  wire reg_to_filter_feature_bram_readout_2;
  wire registers_axil_aclk;

  zed_feature_extraction_0_0_label_selection LABEL_SELECTION_MODULE
       (.Q(Q),
        .feature_bram_valid_reg(feature_bram_valid_reg),
        .filter_to_reg_feature_bram_valid_2(filter_to_reg_feature_bram_valid_2),
        .reg_to_filter_feature_bram_readout_2(reg_to_filter_feature_bram_readout_2),
        .registers_axil_aclk(registers_axil_aclk));
endmodule

(* ADDR_WIDTH = "11" *) (* DATA_WIDTH = "1" *) (* ORIG_REF_NAME = "ram_dp" *) 
(* USE_OUTPUT_REG = "1'b0" *) 
module zed_feature_extraction_0_0_zed_feature_extraction_0_0_ram_dp
   (clk,
    wena,
    wenb,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb);
  input clk;
  input wena;
  input wenb;
  input [10:0]addra;
  input [10:0]addrb;
  input [0:0]dina;
  input [0:0]dinb;
  output [0:0]douta;
  output [0:0]doutb;


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
