// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Apr 19 22:57:26 2023
// Host        : JingDevice running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Project/xk265/hevc_encoder_system/hevc_encoder_system.gen/sources_1/bd/hevc_encoder_system/ip/hevc_encoder_system_hdmi_adv7611_init_0_2/hevc_encoder_system_hdmi_adv7611_init_0_2_sim_netlist.v
// Design      : hevc_encoder_system_hdmi_adv7611_init_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hevc_encoder_system_hdmi_adv7611_init_0_2,hdmi2rgb,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "hdmi2rgb,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module hevc_encoder_system_hdmi_adv7611_init_0_2
   (clk_i,
    rst_n_i,
    adv_sda,
    adv_scl,
    adv_rst_o,
    adv_pen_o,
    adv_cfg_done_o);
  input clk_i;
  input rst_n_i;
  inout adv_sda;
  output adv_scl;
  output adv_rst_o;
  output adv_pen_o;
  output adv_cfg_done_o;

  wire \<const1> ;
  wire adv_cfg_done_o;
  wire adv_scl;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire adv_sda;
  wire clk_i;
  wire rst_n_i;

  assign adv_pen_o = \<const1> ;
  assign adv_rst_o = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  hevc_encoder_system_hdmi_adv7611_init_0_2_hdmi2rgb inst
       (.adv_cfg_done_o(adv_cfg_done_o),
        .adv_scl(adv_scl),
        .adv_sda(adv_sda),
        .clk_i(clk_i),
        .rst_n_i(rst_n_i));
endmodule

(* ORIG_REF_NAME = "hdmi2rgb" *) 
module hevc_encoder_system_hdmi_adv7611_init_0_2_hdmi2rgb
   (adv_cfg_done_o,
    adv_scl,
    adv_sda,
    clk_i,
    rst_n_i);
  output adv_cfg_done_o;
  output adv_scl;
  inout adv_sda;
  input clk_i;
  input rst_n_i;

  wire adv_cfg_done_o;
  wire adv_scl;
  wire adv_sda;
  wire clk_i;
  wire rst_n_i;

  hevc_encoder_system_hdmi_adv7611_init_0_2_uicfg7611 uicfg7611
       (.adv_cfg_done_o(adv_cfg_done_o),
        .adv_scl(adv_scl),
        .adv_sda(adv_sda),
        .clk_i(clk_i),
        .rst_n_i(rst_n_i));
endmodule

(* ORIG_REF_NAME = "uicfg7611" *) 
module hevc_encoder_system_hdmi_adv7611_init_0_2_uicfg7611
   (adv_cfg_done_o,
    adv_scl,
    adv_sda,
    clk_i,
    rst_n_i);
  output adv_cfg_done_o;
  output adv_scl;
  inout adv_sda;
  input clk_i;
  input rst_n_i;

  wire \REG_INDEX[7]_i_2_n_0 ;
  wire [8:0]REG_INDEX_reg;
  wire REG_INDEX_reg_rep_i_10_n_0;
  wire REG_INDEX_reg_rep_i_2_n_0;
  wire REG_INDEX_reg_rep_i_3_n_0;
  wire REG_INDEX_reg_rep_i_4_n_0;
  wire REG_INDEX_reg_rep_i_5_n_0;
  wire REG_INDEX_reg_rep_i_6_n_0;
  wire REG_INDEX_reg_rep_i_7_n_0;
  wire REG_INDEX_reg_rep_i_8_n_0;
  wire REG_INDEX_reg_rep_i_9_n_0;
  wire REG_INDEX_reg_rep_n_0;
  wire REG_INDEX_reg_rep_n_1;
  wire REG_INDEX_reg_rep_n_10;
  wire REG_INDEX_reg_rep_n_11;
  wire REG_INDEX_reg_rep_n_12;
  wire REG_INDEX_reg_rep_n_13;
  wire REG_INDEX_reg_rep_n_14;
  wire REG_INDEX_reg_rep_n_15;
  wire REG_INDEX_reg_rep_n_2;
  wire REG_INDEX_reg_rep_n_28;
  wire REG_INDEX_reg_rep_n_29;
  wire REG_INDEX_reg_rep_n_3;
  wire REG_INDEX_reg_rep_n_30;
  wire REG_INDEX_reg_rep_n_31;
  wire REG_INDEX_reg_rep_n_32;
  wire REG_INDEX_reg_rep_n_33;
  wire REG_INDEX_reg_rep_n_4;
  wire REG_INDEX_reg_rep_n_5;
  wire REG_INDEX_reg_rep_n_6;
  wire REG_INDEX_reg_rep_n_7;
  wire REG_INDEX_reg_rep_n_8;
  wire REG_INDEX_reg_rep_n_9;
  wire [1:0]TS_S;
  wire adv_cfg_done_o;
  wire adv_scl;
  wire adv_sda;
  wire cfg_done_i_1_n_0;
  wire cfg_done_i_2_n_0;
  wire cfg_done_i_3_n_0;
  wire clk_i;
  wire iic_en_reg_n_0;
  wire [8:0]p_0_in__0;
  wire [23:0]p_2_out;
  wire \rst_cnt[7]_i_1_n_0 ;
  wire \rst_cnt[7]_i_3_n_0 ;
  wire [8:8]rst_cnt_reg;
  wire \rst_cnt_reg_n_0_[0] ;
  wire \rst_cnt_reg_n_0_[1] ;
  wire \rst_cnt_reg_n_0_[2] ;
  wire \rst_cnt_reg_n_0_[3] ;
  wire \rst_cnt_reg_n_0_[4] ;
  wire \rst_cnt_reg_n_0_[5] ;
  wire \rst_cnt_reg_n_0_[6] ;
  wire \rst_cnt_reg_n_0_[7] ;
  wire rst_n_i;
  wire uii2c_inst_n_1;
  wire uii2c_inst_n_10;
  wire uii2c_inst_n_11;
  wire uii2c_inst_n_12;
  wire uii2c_inst_n_13;
  wire uii2c_inst_n_14;
  wire uii2c_inst_n_2;
  wire uii2c_inst_n_3;
  wire uii2c_inst_n_4;
  wire uii2c_inst_n_5;
  wire uii2c_inst_n_6;
  wire uii2c_inst_n_7;
  wire uii2c_inst_n_8;
  wire uii2c_inst_n_9;
  wire \wr_data_reg_n_0_[10] ;
  wire \wr_data_reg_n_0_[11] ;
  wire \wr_data_reg_n_0_[12] ;
  wire \wr_data_reg_n_0_[13] ;
  wire \wr_data_reg_n_0_[14] ;
  wire \wr_data_reg_n_0_[15] ;
  wire \wr_data_reg_n_0_[16] ;
  wire \wr_data_reg_n_0_[17] ;
  wire \wr_data_reg_n_0_[18] ;
  wire \wr_data_reg_n_0_[19] ;
  wire \wr_data_reg_n_0_[1] ;
  wire \wr_data_reg_n_0_[20] ;
  wire \wr_data_reg_n_0_[21] ;
  wire \wr_data_reg_n_0_[22] ;
  wire \wr_data_reg_n_0_[23] ;
  wire \wr_data_reg_n_0_[2] ;
  wire \wr_data_reg_n_0_[3] ;
  wire \wr_data_reg_n_0_[5] ;
  wire \wr_data_reg_n_0_[6] ;
  wire \wr_data_reg_n_0_[7] ;
  wire \wr_data_reg_n_0_[8] ;
  wire \wr_data_reg_n_0_[9] ;
  wire [15:4]NLW_REG_INDEX_reg_rep_DOBDO_UNCONNECTED;
  wire [1:0]NLW_REG_INDEX_reg_rep_DOPBDOP_UNCONNECTED;

  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_TS_S_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_5),
        .Q(TS_S[0]),
        .R(rst_cnt_reg));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_TS_S_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_6),
        .Q(TS_S[1]),
        .R(rst_cnt_reg));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \REG_INDEX[7]_i_2 
       (.I0(REG_INDEX_reg[0]),
        .I1(REG_INDEX_reg[1]),
        .I2(REG_INDEX_reg[2]),
        .I3(REG_INDEX_reg[3]),
        .I4(REG_INDEX_reg[4]),
        .I5(REG_INDEX_reg[5]),
        .O(\REG_INDEX[7]_i_2_n_0 ));
  FDRE \REG_INDEX_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_1),
        .Q(REG_INDEX_reg[0]),
        .R(rst_cnt_reg));
  FDRE \REG_INDEX_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_12),
        .Q(REG_INDEX_reg[1]),
        .R(rst_cnt_reg));
  FDRE \REG_INDEX_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_13),
        .Q(REG_INDEX_reg[2]),
        .R(rst_cnt_reg));
  FDRE \REG_INDEX_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_11),
        .Q(REG_INDEX_reg[3]),
        .R(rst_cnt_reg));
  FDRE \REG_INDEX_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_10),
        .Q(REG_INDEX_reg[4]),
        .R(rst_cnt_reg));
  FDRE \REG_INDEX_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_9),
        .Q(REG_INDEX_reg[5]),
        .R(rst_cnt_reg));
  FDRE \REG_INDEX_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_8),
        .Q(REG_INDEX_reg[6]),
        .R(rst_cnt_reg));
  FDRE \REG_INDEX_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_7),
        .Q(REG_INDEX_reg[7]),
        .R(1'b0));
  FDRE \REG_INDEX_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_2),
        .Q(REG_INDEX_reg[8]),
        .R(rst_cnt_reg));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "5632" *) 
  (* RTL_RAM_NAME = "inst/uicfg7611/REG_INDEX_reg_rep" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "256" *) 
  (* ram_ext_slice_begin = "18" *) 
  (* ram_ext_slice_end = "21" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA80000000000002A0000000000),
    .INITP_01(256'h000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAA),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0C420B4406A705280442034002F700130105FD44FB68FA6CF964F84CF57CF480),
    .INIT_01(256'hC801C701C601C501C401C301C201C1019B0340817C01BA01143F3340198A1580),
    .INIT_02(256'h6CA37510580157DA1A8A8E1E8D048770851F6F0883FE0000CC01CB01CA01C901),
    .INIT_03(256'h0D000C010B000A2909A30820070006FF05FF04FF03FF02FF01FF000074002070),
    .INIT_04(256'h1D421C541BA71A3019F3180A177816411573148013031201111210230F000E00),
    .INIT_05(256'h2D012C012B012A0129012801274F2661250024C8232522542150200F1F261EAA),
    .INIT_06(256'h3D403C2D3B383A7139183880373A36023501340133013201310130012F012E01),
    .INIT_07(256'h4DE04C204B8A4AD0490A488C471E46004500444243884280410040453F2C3E58),
    .INIT_08(256'h5DFC5C005B005A0059185800570056425588548053005296513E50104F104E2D),
    .INIT_09(256'h6D006C006B206A2069206820670A66206520642063206249614D60445F485E00),
    .INIT_0A(256'h7D207C207B207A2079207820770A7600750F7445731F7255713270006FFD6E00),
    .INIT_0B(256'h0000000000000000000000000000000000000000F4006CA220F074017F247E01),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0009000900090009000900090009000900090009000900090009000900090009),
    .INIT_21(256'h0007000700070007000700070007000700070006000400040009000900090009),
    .INIT_22(256'h0007000700070007000700070007000700070007000700070007000700070007),
    .INIT_23(256'h0007000700070007000700070007000700070007000700070007000700060009),
    .INIT_24(256'h0007000700070007000700070007000700070007000700070007000700070007),
    .INIT_25(256'h0007000700070007000700070007000700070007000700070007000700070007),
    .INIT_26(256'h0007000700070007000700070007000700070007000700070007000700070007),
    .INIT_27(256'h0007000700070007000700070007000700070007000700070007000700070007),
    .INIT_28(256'h0007000700070007000700070007000700070007000700070007000700070007),
    .INIT_29(256'h0007000700070007000700070007000700070007000700070007000700070007),
    .INIT_2A(256'h0007000700070007000700070007000700070007000700070007000700070007),
    .INIT_2B(256'h0000000000000000000000000000000000000000000900070009000600070007),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    REG_INDEX_reg_rep
       (.ADDRARDADDR({1'b0,1'b0,REG_INDEX_reg_rep_i_2_n_0,REG_INDEX_reg_rep_i_3_n_0,REG_INDEX_reg_rep_i_4_n_0,REG_INDEX_reg_rep_i_5_n_0,REG_INDEX_reg_rep_i_6_n_0,REG_INDEX_reg_rep_i_7_n_0,REG_INDEX_reg_rep_i_8_n_0,REG_INDEX_reg_rep_i_9_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,REG_INDEX_reg_rep_i_2_n_0,REG_INDEX_reg_rep_i_3_n_0,REG_INDEX_reg_rep_i_4_n_0,REG_INDEX_reg_rep_i_5_n_0,REG_INDEX_reg_rep_i_6_n_0,REG_INDEX_reg_rep_i_7_n_0,REG_INDEX_reg_rep_i_8_n_0,REG_INDEX_reg_rep_i_9_n_0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(clk_i),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({REG_INDEX_reg_rep_n_0,REG_INDEX_reg_rep_n_1,REG_INDEX_reg_rep_n_2,REG_INDEX_reg_rep_n_3,REG_INDEX_reg_rep_n_4,REG_INDEX_reg_rep_n_5,REG_INDEX_reg_rep_n_6,REG_INDEX_reg_rep_n_7,REG_INDEX_reg_rep_n_8,REG_INDEX_reg_rep_n_9,REG_INDEX_reg_rep_n_10,REG_INDEX_reg_rep_n_11,REG_INDEX_reg_rep_n_12,REG_INDEX_reg_rep_n_13,REG_INDEX_reg_rep_n_14,REG_INDEX_reg_rep_n_15}),
        .DOBDO({NLW_REG_INDEX_reg_rep_DOBDO_UNCONNECTED[15:4],REG_INDEX_reg_rep_n_28,REG_INDEX_reg_rep_n_29,REG_INDEX_reg_rep_n_30,REG_INDEX_reg_rep_n_31}),
        .DOPADOP({REG_INDEX_reg_rep_n_32,REG_INDEX_reg_rep_n_33}),
        .DOPBDOP(NLW_REG_INDEX_reg_rep_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(uii2c_inst_n_3),
        .ENBWREN(uii2c_inst_n_3),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h8000)) 
    REG_INDEX_reg_rep_i_10
       (.I0(REG_INDEX_reg[3]),
        .I1(REG_INDEX_reg[2]),
        .I2(REG_INDEX_reg[1]),
        .I3(REG_INDEX_reg[0]),
        .O(REG_INDEX_reg_rep_i_10_n_0));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    REG_INDEX_reg_rep_i_2
       (.I0(REG_INDEX_reg[6]),
        .I1(REG_INDEX_reg[5]),
        .I2(REG_INDEX_reg[4]),
        .I3(REG_INDEX_reg_rep_i_10_n_0),
        .I4(REG_INDEX_reg[7]),
        .I5(rst_cnt_reg),
        .O(REG_INDEX_reg_rep_i_2_n_0));
  LUT5 #(
    .INIT(32'h00007F80)) 
    REG_INDEX_reg_rep_i_3
       (.I0(REG_INDEX_reg_rep_i_10_n_0),
        .I1(REG_INDEX_reg[4]),
        .I2(REG_INDEX_reg[5]),
        .I3(REG_INDEX_reg[6]),
        .I4(rst_cnt_reg),
        .O(REG_INDEX_reg_rep_i_3_n_0));
  LUT4 #(
    .INIT(16'h0078)) 
    REG_INDEX_reg_rep_i_4
       (.I0(REG_INDEX_reg[4]),
        .I1(REG_INDEX_reg_rep_i_10_n_0),
        .I2(REG_INDEX_reg[5]),
        .I3(rst_cnt_reg),
        .O(REG_INDEX_reg_rep_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    REG_INDEX_reg_rep_i_5
       (.I0(REG_INDEX_reg[3]),
        .I1(REG_INDEX_reg[2]),
        .I2(REG_INDEX_reg[1]),
        .I3(REG_INDEX_reg[0]),
        .I4(REG_INDEX_reg[4]),
        .I5(rst_cnt_reg),
        .O(REG_INDEX_reg_rep_i_5_n_0));
  LUT5 #(
    .INIT(32'h15554000)) 
    REG_INDEX_reg_rep_i_6
       (.I0(rst_cnt_reg),
        .I1(REG_INDEX_reg[0]),
        .I2(REG_INDEX_reg[1]),
        .I3(REG_INDEX_reg[2]),
        .I4(REG_INDEX_reg[3]),
        .O(REG_INDEX_reg_rep_i_6_n_0));
  LUT4 #(
    .INIT(16'h1540)) 
    REG_INDEX_reg_rep_i_7
       (.I0(rst_cnt_reg),
        .I1(REG_INDEX_reg[1]),
        .I2(REG_INDEX_reg[0]),
        .I3(REG_INDEX_reg[2]),
        .O(REG_INDEX_reg_rep_i_7_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    REG_INDEX_reg_rep_i_8
       (.I0(REG_INDEX_reg[0]),
        .I1(REG_INDEX_reg[1]),
        .I2(rst_cnt_reg),
        .O(REG_INDEX_reg_rep_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    REG_INDEX_reg_rep_i_9
       (.I0(rst_cnt_reg),
        .I1(REG_INDEX_reg[0]),
        .O(REG_INDEX_reg_rep_i_9_n_0));
  LUT4 #(
    .INIT(16'hFF80)) 
    cfg_done_i_1
       (.I0(cfg_done_i_2_n_0),
        .I1(TS_S[0]),
        .I2(TS_S[1]),
        .I3(adv_cfg_done_o),
        .O(cfg_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    cfg_done_i_2
       (.I0(REG_INDEX_reg[3]),
        .I1(REG_INDEX_reg[0]),
        .I2(REG_INDEX_reg[8]),
        .I3(cfg_done_i_3_n_0),
        .O(cfg_done_i_2_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    cfg_done_i_3
       (.I0(REG_INDEX_reg[1]),
        .I1(REG_INDEX_reg[2]),
        .I2(REG_INDEX_reg[6]),
        .I3(REG_INDEX_reg[7]),
        .I4(REG_INDEX_reg[5]),
        .I5(REG_INDEX_reg[4]),
        .O(cfg_done_i_3_n_0));
  FDRE cfg_done_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(cfg_done_i_1_n_0),
        .Q(adv_cfg_done_o),
        .R(rst_cnt_reg));
  FDRE iic_en_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(uii2c_inst_n_14),
        .Q(iic_en_reg_n_0),
        .R(rst_cnt_reg));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rst_cnt[0]_i_1 
       (.I0(\rst_cnt_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rst_cnt[1]_i_1 
       (.I0(\rst_cnt_reg_n_0_[0] ),
        .I1(\rst_cnt_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rst_cnt[2]_i_1 
       (.I0(\rst_cnt_reg_n_0_[2] ),
        .I1(\rst_cnt_reg_n_0_[0] ),
        .I2(\rst_cnt_reg_n_0_[1] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rst_cnt[3]_i_1 
       (.I0(\rst_cnt_reg_n_0_[1] ),
        .I1(\rst_cnt_reg_n_0_[0] ),
        .I2(\rst_cnt_reg_n_0_[2] ),
        .I3(\rst_cnt_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rst_cnt[4]_i_1 
       (.I0(\rst_cnt_reg_n_0_[4] ),
        .I1(\rst_cnt_reg_n_0_[1] ),
        .I2(\rst_cnt_reg_n_0_[0] ),
        .I3(\rst_cnt_reg_n_0_[2] ),
        .I4(\rst_cnt_reg_n_0_[3] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rst_cnt[5]_i_1 
       (.I0(\rst_cnt_reg_n_0_[5] ),
        .I1(\rst_cnt_reg_n_0_[3] ),
        .I2(\rst_cnt_reg_n_0_[2] ),
        .I3(\rst_cnt_reg_n_0_[0] ),
        .I4(\rst_cnt_reg_n_0_[1] ),
        .I5(\rst_cnt_reg_n_0_[4] ),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rst_cnt[6]_i_1 
       (.I0(\rst_cnt_reg_n_0_[6] ),
        .I1(\rst_cnt_reg_n_0_[4] ),
        .I2(\rst_cnt[7]_i_3_n_0 ),
        .I3(\rst_cnt_reg_n_0_[5] ),
        .O(p_0_in__0[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \rst_cnt[7]_i_1 
       (.I0(rst_n_i),
        .O(\rst_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rst_cnt[7]_i_2 
       (.I0(\rst_cnt_reg_n_0_[7] ),
        .I1(\rst_cnt_reg_n_0_[5] ),
        .I2(\rst_cnt[7]_i_3_n_0 ),
        .I3(\rst_cnt_reg_n_0_[4] ),
        .I4(\rst_cnt_reg_n_0_[6] ),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rst_cnt[7]_i_3 
       (.I0(\rst_cnt_reg_n_0_[3] ),
        .I1(\rst_cnt_reg_n_0_[2] ),
        .I2(\rst_cnt_reg_n_0_[0] ),
        .I3(\rst_cnt_reg_n_0_[1] ),
        .O(\rst_cnt[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \rst_cnt[8]_inv_i_1 
       (.I0(\rst_cnt_reg_n_0_[6] ),
        .I1(\rst_cnt_reg_n_0_[4] ),
        .I2(\rst_cnt[7]_i_3_n_0 ),
        .I3(\rst_cnt_reg_n_0_[5] ),
        .I4(\rst_cnt_reg_n_0_[7] ),
        .O(p_0_in__0[8]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[0] 
       (.C(clk_i),
        .CE(rst_cnt_reg),
        .D(p_0_in__0[0]),
        .Q(\rst_cnt_reg_n_0_[0] ),
        .R(\rst_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[1] 
       (.C(clk_i),
        .CE(rst_cnt_reg),
        .D(p_0_in__0[1]),
        .Q(\rst_cnt_reg_n_0_[1] ),
        .R(\rst_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[2] 
       (.C(clk_i),
        .CE(rst_cnt_reg),
        .D(p_0_in__0[2]),
        .Q(\rst_cnt_reg_n_0_[2] ),
        .R(\rst_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[3] 
       (.C(clk_i),
        .CE(rst_cnt_reg),
        .D(p_0_in__0[3]),
        .Q(\rst_cnt_reg_n_0_[3] ),
        .R(\rst_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[4] 
       (.C(clk_i),
        .CE(rst_cnt_reg),
        .D(p_0_in__0[4]),
        .Q(\rst_cnt_reg_n_0_[4] ),
        .R(\rst_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[5] 
       (.C(clk_i),
        .CE(rst_cnt_reg),
        .D(p_0_in__0[5]),
        .Q(\rst_cnt_reg_n_0_[5] ),
        .R(\rst_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[6] 
       (.C(clk_i),
        .CE(rst_cnt_reg),
        .D(p_0_in__0[6]),
        .Q(\rst_cnt_reg_n_0_[6] ),
        .R(\rst_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_cnt_reg[7] 
       (.C(clk_i),
        .CE(rst_cnt_reg),
        .D(p_0_in__0[7]),
        .Q(\rst_cnt_reg_n_0_[7] ),
        .R(\rst_cnt[7]_i_1_n_0 ));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \rst_cnt_reg[8]_inv 
       (.C(clk_i),
        .CE(rst_cnt_reg),
        .D(p_0_in__0[8]),
        .Q(rst_cnt_reg),
        .S(\rst_cnt[7]_i_1_n_0 ));
  hevc_encoder_system_hdmi_adv7611_init_0_2_uii2c uii2c_inst
       (.E(rst_cnt_reg),
        .\FSM_sequential_TS_S_reg[0] (uii2c_inst_n_3),
        .\IIC_S_reg[0]_0 (iic_en_reg_n_0),
        .Q({\wr_data_reg_n_0_[23] ,\wr_data_reg_n_0_[22] ,\wr_data_reg_n_0_[21] ,\wr_data_reg_n_0_[20] ,\wr_data_reg_n_0_[19] ,\wr_data_reg_n_0_[18] ,\wr_data_reg_n_0_[17] ,\wr_data_reg_n_0_[16] ,\wr_data_reg_n_0_[15] ,\wr_data_reg_n_0_[14] ,\wr_data_reg_n_0_[13] ,\wr_data_reg_n_0_[12] ,\wr_data_reg_n_0_[11] ,\wr_data_reg_n_0_[10] ,\wr_data_reg_n_0_[9] ,\wr_data_reg_n_0_[8] ,\wr_data_reg_n_0_[7] ,\wr_data_reg_n_0_[6] ,\wr_data_reg_n_0_[5] ,\wr_data_reg_n_0_[3] ,\wr_data_reg_n_0_[2] ,\wr_data_reg_n_0_[1] }),
        .REG_INDEX_reg(REG_INDEX_reg),
        .\REG_INDEX_reg[0]_0 (uii2c_inst_n_10),
        .\REG_INDEX_reg[0]_1 (uii2c_inst_n_12),
        .\REG_INDEX_reg[6]_0 (REG_INDEX_reg_rep_i_10_n_0),
        .REG_INDEX_reg_0_sp_1(uii2c_inst_n_1),
        .REG_INDEX_reg_2_sp_1(uii2c_inst_n_13),
        .REG_INDEX_reg_3_sp_1(uii2c_inst_n_11),
        .REG_INDEX_reg_4_sp_1(uii2c_inst_n_9),
        .REG_INDEX_reg_5_sp_1(uii2c_inst_n_8),
        .REG_INDEX_reg_6_sp_1(uii2c_inst_n_7),
        .REG_INDEX_reg_7_sp_1(\REG_INDEX[7]_i_2_n_0 ),
        .REG_INDEX_reg_8_sp_1(uii2c_inst_n_2),
        .TS_S(TS_S),
        .adv_cfg_done_o(adv_cfg_done_o),
        .adv_scl(adv_scl),
        .adv_sda(adv_sda),
        .cfg_done_reg(uii2c_inst_n_5),
        .clk_i(clk_i),
        .iic_busy_reg_0(uii2c_inst_n_4),
        .iic_busy_reg_1(uii2c_inst_n_6),
        .iic_busy_reg_2(uii2c_inst_n_14));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[10]_i_1 
       (.I0(REG_INDEX_reg_rep_n_5),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[11]_i_1 
       (.I0(REG_INDEX_reg_rep_n_4),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[12]_i_1 
       (.I0(REG_INDEX_reg_rep_n_3),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[13]_i_1 
       (.I0(REG_INDEX_reg_rep_n_2),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[14]_i_1 
       (.I0(REG_INDEX_reg_rep_n_1),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[15]_i_1 
       (.I0(REG_INDEX_reg_rep_n_0),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[16]_i_1 
       (.I0(REG_INDEX_reg_rep_n_15),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[17]_i_1 
       (.I0(REG_INDEX_reg_rep_n_14),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[18]_i_1 
       (.I0(REG_INDEX_reg_rep_n_13),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[19]_i_1 
       (.I0(REG_INDEX_reg_rep_n_12),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[1]_i_1 
       (.I0(REG_INDEX_reg_rep_n_33),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[20]_i_1 
       (.I0(REG_INDEX_reg_rep_n_11),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[21]_i_1 
       (.I0(REG_INDEX_reg_rep_n_10),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[22]_i_1 
       (.I0(REG_INDEX_reg_rep_n_9),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[23]_i_2 
       (.I0(REG_INDEX_reg_rep_n_8),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[2]_i_1 
       (.I0(REG_INDEX_reg_rep_n_32),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[3]_i_1 
       (.I0(REG_INDEX_reg_rep_n_31),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[5]_i_1 
       (.I0(REG_INDEX_reg_rep_n_30),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[6]_i_1 
       (.I0(REG_INDEX_reg_rep_n_29),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[7]_i_1 
       (.I0(REG_INDEX_reg_rep_n_28),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[8]_i_1 
       (.I0(REG_INDEX_reg_rep_n_7),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data[9]_i_1 
       (.I0(REG_INDEX_reg_rep_n_6),
        .I1(REG_INDEX_reg[8]),
        .O(p_2_out[9]));
  FDRE \wr_data_reg[10] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[10]),
        .Q(\wr_data_reg_n_0_[10] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[11] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[11]),
        .Q(\wr_data_reg_n_0_[11] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[12] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[12]),
        .Q(\wr_data_reg_n_0_[12] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[13] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[13]),
        .Q(\wr_data_reg_n_0_[13] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[14] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[14]),
        .Q(\wr_data_reg_n_0_[14] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[15] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[15]),
        .Q(\wr_data_reg_n_0_[15] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[16] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[0]),
        .Q(\wr_data_reg_n_0_[16] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[17] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[1]),
        .Q(\wr_data_reg_n_0_[17] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[18] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[2]),
        .Q(\wr_data_reg_n_0_[18] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[19] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[3]),
        .Q(\wr_data_reg_n_0_[19] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[1] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[17]),
        .Q(\wr_data_reg_n_0_[1] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[20] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[4]),
        .Q(\wr_data_reg_n_0_[20] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[21] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[5]),
        .Q(\wr_data_reg_n_0_[21] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[22] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[6]),
        .Q(\wr_data_reg_n_0_[22] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[23] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[7]),
        .Q(\wr_data_reg_n_0_[23] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[2] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[18]),
        .Q(\wr_data_reg_n_0_[2] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[3] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[19]),
        .Q(\wr_data_reg_n_0_[3] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[5] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[21]),
        .Q(\wr_data_reg_n_0_[5] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[6] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[22]),
        .Q(\wr_data_reg_n_0_[6] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[7] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[23]),
        .Q(\wr_data_reg_n_0_[7] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[8] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[8]),
        .Q(\wr_data_reg_n_0_[8] ),
        .R(rst_cnt_reg));
  FDRE \wr_data_reg[9] 
       (.C(clk_i),
        .CE(uii2c_inst_n_4),
        .D(p_2_out[9]),
        .Q(\wr_data_reg_n_0_[9] ),
        .R(rst_cnt_reg));
endmodule

(* ORIG_REF_NAME = "uii2c" *) 
module hevc_encoder_system_hdmi_adv7611_init_0_2_uii2c
   (adv_scl,
    REG_INDEX_reg_0_sp_1,
    REG_INDEX_reg_8_sp_1,
    \FSM_sequential_TS_S_reg[0] ,
    iic_busy_reg_0,
    cfg_done_reg,
    iic_busy_reg_1,
    REG_INDEX_reg_6_sp_1,
    REG_INDEX_reg_5_sp_1,
    REG_INDEX_reg_4_sp_1,
    \REG_INDEX_reg[0]_0 ,
    REG_INDEX_reg_3_sp_1,
    \REG_INDEX_reg[0]_1 ,
    REG_INDEX_reg_2_sp_1,
    iic_busy_reg_2,
    adv_sda,
    clk_i,
    REG_INDEX_reg,
    TS_S,
    REG_INDEX_reg_7_sp_1,
    E,
    \IIC_S_reg[0]_0 ,
    adv_cfg_done_o,
    \REG_INDEX_reg[6]_0 ,
    Q);
  output adv_scl;
  output REG_INDEX_reg_0_sp_1;
  output REG_INDEX_reg_8_sp_1;
  output \FSM_sequential_TS_S_reg[0] ;
  output [0:0]iic_busy_reg_0;
  output cfg_done_reg;
  output iic_busy_reg_1;
  output REG_INDEX_reg_6_sp_1;
  output REG_INDEX_reg_5_sp_1;
  output REG_INDEX_reg_4_sp_1;
  output \REG_INDEX_reg[0]_0 ;
  output REG_INDEX_reg_3_sp_1;
  output \REG_INDEX_reg[0]_1 ;
  output REG_INDEX_reg_2_sp_1;
  output iic_busy_reg_2;
  inout adv_sda;
  input clk_i;
  input [8:0]REG_INDEX_reg;
  input [1:0]TS_S;
  input REG_INDEX_reg_7_sp_1;
  input [0:0]E;
  input \IIC_S_reg[0]_0 ;
  input adv_cfg_done_o;
  input \REG_INDEX_reg[6]_0 ;
  input [21:0]Q;

  wire CEA2;
  wire [0:0]E;
  wire \FSM_sequential_TS_S_reg[0] ;
  wire [2:0]IIC_S;
  wire \IIC_S[0]_i_1_n_0 ;
  wire \IIC_S[1]_i_1_n_0 ;
  wire \IIC_S[2]_i_1_n_0 ;
  wire \IIC_S[2]_i_2_n_0 ;
  wire \IIC_S[2]_i_3_n_0 ;
  wire \IIC_S_reg[0]_0 ;
  wire IOBUF_inst_i_2_n_0;
  wire IOBUF_inst_i_3_n_0;
  wire [21:0]Q;
  wire \REG_INDEX[7]_i_3_n_0 ;
  wire [8:0]REG_INDEX_reg;
  wire \REG_INDEX_reg[0]_0 ;
  wire \REG_INDEX_reg[0]_1 ;
  wire \REG_INDEX_reg[6]_0 ;
  wire REG_INDEX_reg_0_sn_1;
  wire REG_INDEX_reg_2_sn_1;
  wire REG_INDEX_reg_3_sn_1;
  wire REG_INDEX_reg_4_sn_1;
  wire REG_INDEX_reg_5_sn_1;
  wire REG_INDEX_reg_6_sn_1;
  wire REG_INDEX_reg_7_sn_1;
  wire REG_INDEX_reg_8_sn_1;
  wire [1:0]TS_S;
  wire adv_cfg_done_o;
  wire adv_scl;
  wire adv_sda;
  wire \bcnt[0]_i_1_n_0 ;
  wire \bcnt[0]_i_2_n_0 ;
  wire \bcnt[1]_i_1_n_0 ;
  wire \bcnt[1]_i_2_n_0 ;
  wire \bcnt[1]_i_3_n_0 ;
  wire \bcnt[2]_i_1_n_0 ;
  wire \bcnt[2]_i_2_n_0 ;
  wire \bcnt[2]_i_3_n_0 ;
  wire \bcnt[2]_i_4_n_0 ;
  wire \bcnt_reg_n_0_[0] ;
  wire \bcnt_reg_n_0_[1] ;
  wire \bcnt_reg_n_0_[2] ;
  wire cfg_done_reg;
  wire clear;
  wire clk_i;
  wire \clkdiv[8]_i_3_n_0 ;
  wire \clkdiv[8]_i_4_n_0 ;
  wire [8:0]clkdiv_reg;
  wire iic_busy;
  wire iic_busy_i_1_n_0;
  wire [0:0]iic_busy_reg_0;
  wire iic_busy_reg_1;
  wire iic_busy_reg_2;
  wire iic_scl_i_1_n_0;
  wire iic_scl_i_3_n_0;
  wire iic_sda_r;
  wire [8:0]p_0_in;
  wire [7:0]rcnt;
  wire \rcnt[0]_i_1_n_0 ;
  wire \rcnt[1]_i_1_n_0 ;
  wire \rcnt[2]_i_1_n_0 ;
  wire \rcnt[3]_i_1_n_0 ;
  wire \rcnt[4]_i_1_n_0 ;
  wire \rcnt[5]_i_1_n_0 ;
  wire \rcnt[6]_i_1_n_0 ;
  wire \rcnt[6]_i_2_n_0 ;
  wire \rcnt[6]_i_3_n_0 ;
  wire \rcnt[6]_i_4_n_0 ;
  wire \rcnt[7]_i_1_n_0 ;
  wire scl_clk;
  wire scl_clk_i_1_n_0;
  wire scl_offset;
  wire sda_i;
  wire sda_o1_out;
  wire [7:0]sda_r;
  wire \sda_r[0]_i_1_n_0 ;
  wire \sda_r[0]_i_2_n_0 ;
  wire \sda_r[1]_i_1_n_0 ;
  wire \sda_r[1]_i_2_n_0 ;
  wire \sda_r[2]_i_1_n_0 ;
  wire \sda_r[2]_i_2_n_0 ;
  wire \sda_r[3]_i_1_n_0 ;
  wire \sda_r[3]_i_2_n_0 ;
  wire \sda_r[4]_i_1_n_0 ;
  wire \sda_r[4]_i_2_n_0 ;
  wire \sda_r[5]_i_1_n_0 ;
  wire \sda_r[5]_i_2_n_0 ;
  wire \sda_r[6]_i_1_n_0 ;
  wire \sda_r[6]_i_2_n_0 ;
  wire \sda_r[7]_i_1_n_0 ;
  wire \sda_r[7]_i_2_n_0 ;
  wire \sda_r[7]_i_3_n_0 ;
  wire [7:0]wcnt;
  wire \wcnt[0]_i_1_n_0 ;
  wire \wcnt[1]_i_1_n_0 ;
  wire \wcnt[2]_i_1_n_0 ;
  wire \wcnt[3]_i_1_n_0 ;
  wire \wcnt[4]_i_1_n_0 ;
  wire \wcnt[5]_i_1_n_0 ;
  wire \wcnt[6]_i_1_n_0 ;
  wire \wcnt[6]_i_3_n_0 ;
  wire \wcnt[6]_i_4_n_0 ;
  wire \wcnt[7]_i_1_n_0 ;
  wire \wcnt[7]_i_2_n_0 ;

  assign REG_INDEX_reg_0_sp_1 = REG_INDEX_reg_0_sn_1;
  assign REG_INDEX_reg_2_sp_1 = REG_INDEX_reg_2_sn_1;
  assign REG_INDEX_reg_3_sp_1 = REG_INDEX_reg_3_sn_1;
  assign REG_INDEX_reg_4_sp_1 = REG_INDEX_reg_4_sn_1;
  assign REG_INDEX_reg_5_sp_1 = REG_INDEX_reg_5_sn_1;
  assign REG_INDEX_reg_6_sp_1 = REG_INDEX_reg_6_sn_1;
  assign REG_INDEX_reg_7_sn_1 = REG_INDEX_reg_7_sp_1;
  assign REG_INDEX_reg_8_sp_1 = REG_INDEX_reg_8_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h031D)) 
    \FSM_sequential_TS_S[0]_i_1 
       (.I0(adv_cfg_done_o),
        .I1(TS_S[1]),
        .I2(iic_busy),
        .I3(TS_S[0]),
        .O(cfg_done_reg));
  LUT3 #(
    .INIT(8'h2C)) 
    \FSM_sequential_TS_S[1]_i_1 
       (.I0(iic_busy),
        .I1(TS_S[1]),
        .I2(TS_S[0]),
        .O(iic_busy_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000FEA4)) 
    \IIC_S[0]_i_1 
       (.I0(IIC_S[2]),
        .I1(\IIC_S_reg[0]_0 ),
        .I2(IIC_S[1]),
        .I3(\bcnt[0]_i_2_n_0 ),
        .I4(IIC_S[0]),
        .O(\IIC_S[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \IIC_S[1]_i_1 
       (.I0(IIC_S[2]),
        .I1(IIC_S[0]),
        .I2(IIC_S[1]),
        .O(\IIC_S[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFFFE0000000)) 
    \IIC_S[2]_i_1 
       (.I0(\IIC_S[2]_i_2_n_0 ),
        .I1(iic_sda_r),
        .I2(IIC_S[1]),
        .I3(IIC_S[0]),
        .I4(\IIC_S[2]_i_3_n_0 ),
        .I5(IIC_S[2]),
        .O(\IIC_S[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFEEEFFFF)) 
    \IIC_S[2]_i_2 
       (.I0(wcnt[3]),
        .I1(wcnt[6]),
        .I2(wcnt[1]),
        .I3(wcnt[0]),
        .I4(\bcnt[2]_i_4_n_0 ),
        .O(\IIC_S[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEFEEFEA)) 
    \IIC_S[2]_i_3 
       (.I0(IIC_S[0]),
        .I1(\bcnt[0]_i_2_n_0 ),
        .I2(IIC_S[1]),
        .I3(\IIC_S_reg[0]_0 ),
        .I4(IIC_S[2]),
        .O(\IIC_S[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \IIC_S_reg[0] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\IIC_S[0]_i_1_n_0 ),
        .Q(IIC_S[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \IIC_S_reg[1] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\IIC_S[1]_i_1_n_0 ),
        .Q(IIC_S[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \IIC_S_reg[2] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\IIC_S[2]_i_1_n_0 ),
        .Q(IIC_S[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    IOBUF_inst
       (.I(sda_o1_out),
        .IO(adv_sda),
        .O(sda_i),
        .T(sda_o1_out));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    IOBUF_inst_i_1
       (.I0(IOBUF_inst_i_2_n_0),
        .I1(rcnt[7]),
        .I2(rcnt[3]),
        .I3(rcnt[5]),
        .I4(IIC_S[1]),
        .I5(IOBUF_inst_i_3_n_0),
        .O(sda_o1_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    IOBUF_inst_i_2
       (.I0(rcnt[0]),
        .I1(rcnt[1]),
        .I2(rcnt[4]),
        .I3(IIC_S[2]),
        .I4(rcnt[2]),
        .I5(rcnt[6]),
        .O(IOBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAA5D)) 
    IOBUF_inst_i_3
       (.I0(IIC_S[1]),
        .I1(sda_r[7]),
        .I2(IIC_S[2]),
        .I3(IIC_S[0]),
        .O(IOBUF_inst_i_3_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PULLUP PULLUP_inst
       (.O(adv_sda));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA9A)) 
    \REG_INDEX[0]_i_1 
       (.I0(REG_INDEX_reg[0]),
        .I1(TS_S[0]),
        .I2(TS_S[1]),
        .I3(iic_busy),
        .O(REG_INDEX_reg_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFDF0020)) 
    \REG_INDEX[1]_i_1 
       (.I0(REG_INDEX_reg[0]),
        .I1(iic_busy),
        .I2(TS_S[1]),
        .I3(TS_S[0]),
        .I4(REG_INDEX_reg[1]),
        .O(\REG_INDEX_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAA9AAAAAAAAAAAAA)) 
    \REG_INDEX[2]_i_1 
       (.I0(REG_INDEX_reg[2]),
        .I1(TS_S[0]),
        .I2(TS_S[1]),
        .I3(iic_busy),
        .I4(REG_INDEX_reg[1]),
        .I5(REG_INDEX_reg[0]),
        .O(REG_INDEX_reg_2_sn_1));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \REG_INDEX[3]_i_1 
       (.I0(REG_INDEX_reg[3]),
        .I1(\REG_INDEX[7]_i_3_n_0 ),
        .I2(REG_INDEX_reg[0]),
        .I3(REG_INDEX_reg[1]),
        .I4(REG_INDEX_reg[2]),
        .O(REG_INDEX_reg_3_sn_1));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \REG_INDEX[4]_i_1 
       (.I0(REG_INDEX_reg[0]),
        .I1(REG_INDEX_reg[1]),
        .I2(REG_INDEX_reg[2]),
        .I3(REG_INDEX_reg[3]),
        .I4(\REG_INDEX[7]_i_3_n_0 ),
        .I5(REG_INDEX_reg[4]),
        .O(\REG_INDEX_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000800)) 
    \REG_INDEX[5]_i_1 
       (.I0(\REG_INDEX_reg[6]_0 ),
        .I1(REG_INDEX_reg[4]),
        .I2(iic_busy),
        .I3(TS_S[1]),
        .I4(TS_S[0]),
        .I5(REG_INDEX_reg[5]),
        .O(REG_INDEX_reg_4_sn_1));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \REG_INDEX[6]_i_1 
       (.I0(REG_INDEX_reg[5]),
        .I1(REG_INDEX_reg[4]),
        .I2(\REG_INDEX_reg[6]_0 ),
        .I3(\REG_INDEX[7]_i_3_n_0 ),
        .I4(REG_INDEX_reg[6]),
        .O(REG_INDEX_reg_5_sn_1));
  LUT5 #(
    .INIT(32'h07080F00)) 
    \REG_INDEX[7]_i_1 
       (.I0(REG_INDEX_reg_7_sn_1),
        .I1(REG_INDEX_reg[6]),
        .I2(E),
        .I3(REG_INDEX_reg[7]),
        .I4(\REG_INDEX[7]_i_3_n_0 ),
        .O(REG_INDEX_reg_6_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_INDEX[7]_i_3 
       (.I0(iic_busy),
        .I1(TS_S[1]),
        .I2(TS_S[0]),
        .O(\REG_INDEX[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \REG_INDEX[8]_i_1 
       (.I0(REG_INDEX_reg[8]),
        .I1(REG_INDEX_reg[7]),
        .I2(\REG_INDEX[7]_i_3_n_0 ),
        .I3(REG_INDEX_reg[6]),
        .I4(REG_INDEX_reg_7_sn_1),
        .O(REG_INDEX_reg_8_sn_1));
  LUT4 #(
    .INIT(16'hFF04)) 
    REG_INDEX_reg_rep_i_1
       (.I0(TS_S[0]),
        .I1(TS_S[1]),
        .I2(iic_busy),
        .I3(E),
        .O(\FSM_sequential_TS_S_reg[0] ));
  LUT6 #(
    .INIT(64'hFCFBFFFB33F40004)) 
    \bcnt[0]_i_1 
       (.I0(\bcnt[0]_i_2_n_0 ),
        .I1(IIC_S[1]),
        .I2(IIC_S[0]),
        .I3(IIC_S[2]),
        .I4(\bcnt[2]_i_3_n_0 ),
        .I5(\bcnt_reg_n_0_[0] ),
        .O(\bcnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bcnt[0]_i_2 
       (.I0(\bcnt_reg_n_0_[2] ),
        .I1(\bcnt_reg_n_0_[1] ),
        .I2(\bcnt_reg_n_0_[0] ),
        .O(\bcnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8FF8B00)) 
    \bcnt[1]_i_1 
       (.I0(\bcnt[2]_i_3_n_0 ),
        .I1(IIC_S[0]),
        .I2(\bcnt_reg_n_0_[0] ),
        .I3(\bcnt[1]_i_2_n_0 ),
        .I4(\bcnt_reg_n_0_[1] ),
        .O(\bcnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3334333433F43334)) 
    \bcnt[1]_i_2 
       (.I0(\bcnt[0]_i_2_n_0 ),
        .I1(IIC_S[1]),
        .I2(IIC_S[0]),
        .I3(IIC_S[2]),
        .I4(\bcnt[2]_i_4_n_0 ),
        .I5(\bcnt[1]_i_3_n_0 ),
        .O(\bcnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \bcnt[1]_i_3 
       (.I0(wcnt[0]),
        .I1(wcnt[1]),
        .I2(wcnt[6]),
        .I3(wcnt[3]),
        .O(\bcnt[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA9FF8AAAAAAA8A)) 
    \bcnt[2]_i_1 
       (.I0(\bcnt_reg_n_0_[2] ),
        .I1(\bcnt[2]_i_2_n_0 ),
        .I2(IIC_S[1]),
        .I3(IIC_S[0]),
        .I4(IIC_S[2]),
        .I5(\bcnt[2]_i_3_n_0 ),
        .O(\bcnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bcnt[2]_i_2 
       (.I0(\bcnt_reg_n_0_[0] ),
        .I1(\bcnt_reg_n_0_[1] ),
        .O(\bcnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555DDD)) 
    \bcnt[2]_i_3 
       (.I0(IIC_S[1]),
        .I1(\bcnt[2]_i_4_n_0 ),
        .I2(wcnt[0]),
        .I3(wcnt[1]),
        .I4(wcnt[6]),
        .I5(wcnt[3]),
        .O(\bcnt[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \bcnt[2]_i_4 
       (.I0(wcnt[4]),
        .I1(wcnt[2]),
        .I2(wcnt[7]),
        .I3(wcnt[5]),
        .O(\bcnt[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bcnt_reg[0] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\bcnt[0]_i_1_n_0 ),
        .Q(\bcnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bcnt_reg[1] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\bcnt[1]_i_1_n_0 ),
        .Q(\bcnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \bcnt_reg[2] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\bcnt[2]_i_1_n_0 ),
        .Q(\bcnt_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \clkdiv[0]_i_1 
       (.I0(clkdiv_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clkdiv[1]_i_1 
       (.I0(clkdiv_reg[0]),
        .I1(clkdiv_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clkdiv[2]_i_1 
       (.I0(clkdiv_reg[2]),
        .I1(clkdiv_reg[1]),
        .I2(clkdiv_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clkdiv[3]_i_1 
       (.I0(clkdiv_reg[2]),
        .I1(clkdiv_reg[1]),
        .I2(clkdiv_reg[0]),
        .I3(clkdiv_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clkdiv[4]_i_1 
       (.I0(clkdiv_reg[4]),
        .I1(clkdiv_reg[2]),
        .I2(clkdiv_reg[1]),
        .I3(clkdiv_reg[0]),
        .I4(clkdiv_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clkdiv[5]_i_1 
       (.I0(clkdiv_reg[5]),
        .I1(clkdiv_reg[3]),
        .I2(clkdiv_reg[0]),
        .I3(clkdiv_reg[1]),
        .I4(clkdiv_reg[2]),
        .I5(clkdiv_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clkdiv[6]_i_1 
       (.I0(clkdiv_reg[6]),
        .I1(clkdiv_reg[4]),
        .I2(clkdiv_reg[5]),
        .I3(\clkdiv[8]_i_4_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clkdiv[7]_i_1 
       (.I0(clkdiv_reg[7]),
        .I1(\clkdiv[8]_i_4_n_0 ),
        .I2(clkdiv_reg[5]),
        .I3(clkdiv_reg[4]),
        .I4(clkdiv_reg[6]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h0000FEEE)) 
    \clkdiv[8]_i_1 
       (.I0(clkdiv_reg[2]),
        .I1(clkdiv_reg[3]),
        .I2(clkdiv_reg[0]),
        .I3(clkdiv_reg[1]),
        .I4(\clkdiv[8]_i_3_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clkdiv[8]_i_2 
       (.I0(clkdiv_reg[8]),
        .I1(clkdiv_reg[7]),
        .I2(clkdiv_reg[6]),
        .I3(clkdiv_reg[4]),
        .I4(clkdiv_reg[5]),
        .I5(\clkdiv[8]_i_4_n_0 ),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \clkdiv[8]_i_3 
       (.I0(clkdiv_reg[8]),
        .I1(clkdiv_reg[6]),
        .I2(clkdiv_reg[7]),
        .I3(clkdiv_reg[4]),
        .I4(clkdiv_reg[5]),
        .O(\clkdiv[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \clkdiv[8]_i_4 
       (.I0(clkdiv_reg[3]),
        .I1(clkdiv_reg[0]),
        .I2(clkdiv_reg[1]),
        .I3(clkdiv_reg[2]),
        .O(\clkdiv[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(clkdiv_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(clkdiv_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(clkdiv_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(clkdiv_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(clkdiv_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(clkdiv_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(clkdiv_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(clkdiv_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(clkdiv_reg[8]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    iic_busy_i_1
       (.I0(\IIC_S_reg[0]_0 ),
        .I1(IIC_S[1]),
        .I2(IIC_S[0]),
        .I3(IIC_S[2]),
        .I4(iic_busy),
        .O(iic_busy_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    iic_busy_reg
       (.C(scl_clk),
        .CE(1'b1),
        .D(iic_busy_i_1_n_0),
        .Q(iic_busy),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF310)) 
    iic_en_i_1
       (.I0(iic_busy),
        .I1(TS_S[1]),
        .I2(TS_S[0]),
        .I3(\IIC_S_reg[0]_0 ),
        .O(iic_busy_reg_2));
  LUT6 #(
    .INIT(64'hF3F3333FAAAAAAAA)) 
    iic_scl_i_1
       (.I0(adv_scl),
        .I1(scl_clk),
        .I2(IIC_S[2]),
        .I3(IIC_S[0]),
        .I4(IIC_S[1]),
        .I5(scl_offset),
        .O(iic_scl_i_1_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    iic_scl_i_2
       (.I0(iic_scl_i_3_n_0),
        .I1(clkdiv_reg[7]),
        .I2(clkdiv_reg[5]),
        .I3(clkdiv_reg[4]),
        .I4(clkdiv_reg[6]),
        .I5(clkdiv_reg[8]),
        .O(scl_offset));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    iic_scl_i_3
       (.I0(clkdiv_reg[3]),
        .I1(clkdiv_reg[0]),
        .I2(clkdiv_reg[1]),
        .I3(clkdiv_reg[2]),
        .O(iic_scl_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    iic_scl_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(iic_scl_i_1_n_0),
        .Q(adv_scl),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    iic_sda_r_reg
       (.C(scl_clk),
        .CE(1'b1),
        .D(sda_i),
        .Q(iic_sda_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rcnt[0]_i_1 
       (.I0(rcnt[0]),
        .O(\rcnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rcnt[1]_i_1 
       (.I0(IIC_S[2]),
        .I1(IIC_S[0]),
        .I2(IIC_S[1]),
        .I3(\IIC_S_reg[0]_0 ),
        .I4(rcnt[1]),
        .O(\rcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rcnt[2]_i_1 
       (.I0(rcnt[2]),
        .I1(rcnt[0]),
        .I2(rcnt[1]),
        .O(\rcnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rcnt[3]_i_1 
       (.I0(rcnt[3]),
        .I1(rcnt[2]),
        .I2(rcnt[1]),
        .I3(rcnt[0]),
        .O(\rcnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rcnt[4]_i_1 
       (.I0(rcnt[4]),
        .I1(rcnt[3]),
        .I2(rcnt[0]),
        .I3(rcnt[1]),
        .I4(rcnt[2]),
        .O(\rcnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rcnt[5]_i_1 
       (.I0(rcnt[5]),
        .I1(rcnt[4]),
        .I2(rcnt[2]),
        .I3(rcnt[1]),
        .I4(rcnt[0]),
        .I5(rcnt[3]),
        .O(\rcnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rcnt[6]_i_1 
       (.I0(\IIC_S_reg[0]_0 ),
        .I1(IIC_S[1]),
        .I2(IIC_S[0]),
        .I3(IIC_S[2]),
        .O(\rcnt[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rcnt[6]_i_2 
       (.I0(IIC_S[2]),
        .I1(IIC_S[0]),
        .I2(IIC_S[1]),
        .I3(\IIC_S_reg[0]_0 ),
        .O(\rcnt[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rcnt[6]_i_3 
       (.I0(rcnt[6]),
        .I1(\rcnt[6]_i_4_n_0 ),
        .O(\rcnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rcnt[6]_i_4 
       (.I0(rcnt[5]),
        .I1(rcnt[4]),
        .I2(rcnt[2]),
        .I3(rcnt[1]),
        .I4(rcnt[0]),
        .I5(rcnt[3]),
        .O(\rcnt[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \rcnt[7]_i_1 
       (.I0(\rcnt[6]_i_4_n_0 ),
        .I1(rcnt[6]),
        .I2(IIC_S[2]),
        .I3(\rcnt[6]_i_2_n_0 ),
        .I4(rcnt[7]),
        .O(\rcnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rcnt_reg[0] 
       (.C(scl_clk),
        .CE(\rcnt[6]_i_2_n_0 ),
        .D(\rcnt[0]_i_1_n_0 ),
        .Q(rcnt[0]),
        .R(\rcnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rcnt_reg[1] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\rcnt[1]_i_1_n_0 ),
        .Q(rcnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rcnt_reg[2] 
       (.C(scl_clk),
        .CE(\rcnt[6]_i_2_n_0 ),
        .D(\rcnt[2]_i_1_n_0 ),
        .Q(rcnt[2]),
        .R(\rcnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rcnt_reg[3] 
       (.C(scl_clk),
        .CE(\rcnt[6]_i_2_n_0 ),
        .D(\rcnt[3]_i_1_n_0 ),
        .Q(rcnt[3]),
        .R(\rcnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rcnt_reg[4] 
       (.C(scl_clk),
        .CE(\rcnt[6]_i_2_n_0 ),
        .D(\rcnt[4]_i_1_n_0 ),
        .Q(rcnt[4]),
        .R(\rcnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rcnt_reg[5] 
       (.C(scl_clk),
        .CE(\rcnt[6]_i_2_n_0 ),
        .D(\rcnt[5]_i_1_n_0 ),
        .Q(rcnt[5]),
        .R(\rcnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rcnt_reg[6] 
       (.C(scl_clk),
        .CE(\rcnt[6]_i_2_n_0 ),
        .D(\rcnt[6]_i_3_n_0 ),
        .Q(rcnt[6]),
        .R(\rcnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rcnt_reg[7] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\rcnt[7]_i_1_n_0 ),
        .Q(rcnt[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF01110000FEEE)) 
    scl_clk_i_1
       (.I0(clkdiv_reg[2]),
        .I1(clkdiv_reg[3]),
        .I2(clkdiv_reg[0]),
        .I3(clkdiv_reg[1]),
        .I4(\clkdiv[8]_i_3_n_0 ),
        .I5(scl_clk),
        .O(scl_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    scl_clk_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(scl_clk_i_1_n_0),
        .Q(scl_clk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAACCFA)) 
    \sda_r[0]_i_1 
       (.I0(sda_r[0]),
        .I1(\sda_r[0]_i_2_n_0 ),
        .I2(IIC_S[1]),
        .I3(IIC_S[0]),
        .I4(IIC_S[2]),
        .O(\sda_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \sda_r[0]_i_2 
       (.I0(Q[0]),
        .I1(wcnt[1]),
        .I2(Q[14]),
        .I3(wcnt[0]),
        .I4(Q[6]),
        .I5(wcnt[2]),
        .O(\sda_r[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \sda_r[1]_i_1 
       (.I0(sda_r[0]),
        .I1(IIC_S[0]),
        .I2(\sda_r[1]_i_2_n_0 ),
        .O(\sda_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \sda_r[1]_i_2 
       (.I0(Q[0]),
        .I1(wcnt[1]),
        .I2(Q[15]),
        .I3(wcnt[0]),
        .I4(Q[7]),
        .I5(wcnt[2]),
        .O(\sda_r[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sda_r[2]_i_1 
       (.I0(sda_r[1]),
        .I1(IIC_S[0]),
        .I2(\sda_r[2]_i_2_n_0 ),
        .O(\sda_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \sda_r[2]_i_2 
       (.I0(Q[1]),
        .I1(wcnt[1]),
        .I2(Q[16]),
        .I3(wcnt[0]),
        .I4(Q[8]),
        .I5(wcnt[2]),
        .O(\sda_r[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sda_r[3]_i_1 
       (.I0(sda_r[2]),
        .I1(IIC_S[0]),
        .I2(\sda_r[3]_i_2_n_0 ),
        .O(\sda_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \sda_r[3]_i_2 
       (.I0(Q[2]),
        .I1(wcnt[1]),
        .I2(Q[17]),
        .I3(wcnt[0]),
        .I4(Q[9]),
        .I5(wcnt[2]),
        .O(\sda_r[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sda_r[4]_i_1 
       (.I0(sda_r[3]),
        .I1(IIC_S[0]),
        .I2(\sda_r[4]_i_2_n_0 ),
        .O(\sda_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \sda_r[4]_i_2 
       (.I0(Q[5]),
        .I1(wcnt[1]),
        .I2(Q[18]),
        .I3(wcnt[0]),
        .I4(Q[10]),
        .I5(wcnt[2]),
        .O(\sda_r[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sda_r[5]_i_1 
       (.I0(sda_r[4]),
        .I1(IIC_S[0]),
        .I2(\sda_r[5]_i_2_n_0 ),
        .O(\sda_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \sda_r[5]_i_2 
       (.I0(Q[3]),
        .I1(wcnt[1]),
        .I2(Q[19]),
        .I3(wcnt[0]),
        .I4(Q[11]),
        .I5(wcnt[2]),
        .O(\sda_r[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sda_r[6]_i_1 
       (.I0(sda_r[5]),
        .I1(IIC_S[0]),
        .I2(\sda_r[6]_i_2_n_0 ),
        .O(\sda_r[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \sda_r[6]_i_2 
       (.I0(Q[4]),
        .I1(wcnt[1]),
        .I2(Q[20]),
        .I3(wcnt[0]),
        .I4(Q[12]),
        .I5(wcnt[2]),
        .O(\sda_r[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \sda_r[7]_i_1 
       (.I0(IIC_S[1]),
        .I1(IIC_S[0]),
        .I2(IIC_S[2]),
        .O(\sda_r[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \sda_r[7]_i_2 
       (.I0(sda_r[6]),
        .I1(IIC_S[0]),
        .I2(\sda_r[7]_i_3_n_0 ),
        .O(\sda_r[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \sda_r[7]_i_3 
       (.I0(Q[5]),
        .I1(wcnt[1]),
        .I2(Q[21]),
        .I3(wcnt[0]),
        .I4(Q[13]),
        .I5(wcnt[2]),
        .O(\sda_r[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_r_reg[0] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\sda_r[0]_i_1_n_0 ),
        .Q(sda_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_r_reg[1] 
       (.C(scl_clk),
        .CE(\sda_r[7]_i_1_n_0 ),
        .D(\sda_r[1]_i_1_n_0 ),
        .Q(sda_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_r_reg[2] 
       (.C(scl_clk),
        .CE(\sda_r[7]_i_1_n_0 ),
        .D(\sda_r[2]_i_1_n_0 ),
        .Q(sda_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_r_reg[3] 
       (.C(scl_clk),
        .CE(\sda_r[7]_i_1_n_0 ),
        .D(\sda_r[3]_i_1_n_0 ),
        .Q(sda_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_r_reg[4] 
       (.C(scl_clk),
        .CE(\sda_r[7]_i_1_n_0 ),
        .D(\sda_r[4]_i_1_n_0 ),
        .Q(sda_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_r_reg[5] 
       (.C(scl_clk),
        .CE(\sda_r[7]_i_1_n_0 ),
        .D(\sda_r[5]_i_1_n_0 ),
        .Q(sda_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_r_reg[6] 
       (.C(scl_clk),
        .CE(\sda_r[7]_i_1_n_0 ),
        .D(\sda_r[6]_i_1_n_0 ),
        .Q(sda_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sda_r_reg[7] 
       (.C(scl_clk),
        .CE(\sda_r[7]_i_1_n_0 ),
        .D(\sda_r[7]_i_2_n_0 ),
        .Q(sda_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wcnt[0]_i_1 
       (.I0(IIC_S[1]),
        .I1(wcnt[0]),
        .O(\wcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \wcnt[1]_i_1 
       (.I0(wcnt[0]),
        .I1(IIC_S[1]),
        .I2(CEA2),
        .I3(wcnt[1]),
        .O(\wcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \wcnt[2]_i_1 
       (.I0(IIC_S[1]),
        .I1(wcnt[2]),
        .I2(wcnt[0]),
        .I3(wcnt[1]),
        .O(\wcnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \wcnt[3]_i_1 
       (.I0(IIC_S[1]),
        .I1(wcnt[3]),
        .I2(wcnt[2]),
        .I3(wcnt[1]),
        .I4(wcnt[0]),
        .O(\wcnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \wcnt[4]_i_1 
       (.I0(IIC_S[1]),
        .I1(wcnt[4]),
        .I2(wcnt[3]),
        .I3(wcnt[0]),
        .I4(wcnt[1]),
        .I5(wcnt[2]),
        .O(\wcnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wcnt[5]_i_1 
       (.I0(wcnt[5]),
        .I1(wcnt[4]),
        .I2(wcnt[2]),
        .I3(wcnt[1]),
        .I4(wcnt[0]),
        .I5(wcnt[3]),
        .O(\wcnt[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wcnt[6]_i_1 
       (.I0(CEA2),
        .I1(IIC_S[1]),
        .O(\wcnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03010001)) 
    \wcnt[6]_i_2 
       (.I0(\IIC_S_reg[0]_0 ),
        .I1(IIC_S[0]),
        .I2(IIC_S[2]),
        .I3(IIC_S[1]),
        .I4(\bcnt[0]_i_2_n_0 ),
        .O(CEA2));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \wcnt[6]_i_3 
       (.I0(wcnt[6]),
        .I1(wcnt[3]),
        .I2(\wcnt[6]_i_4_n_0 ),
        .I3(wcnt[2]),
        .I4(wcnt[4]),
        .I5(wcnt[5]),
        .O(\wcnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \wcnt[6]_i_4 
       (.I0(wcnt[1]),
        .I1(wcnt[0]),
        .O(\wcnt[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \wcnt[7]_i_1 
       (.I0(\wcnt[7]_i_2_n_0 ),
        .I1(wcnt[6]),
        .I2(IIC_S[1]),
        .I3(CEA2),
        .I4(wcnt[7]),
        .O(\wcnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wcnt[7]_i_2 
       (.I0(wcnt[5]),
        .I1(wcnt[4]),
        .I2(wcnt[2]),
        .I3(wcnt[1]),
        .I4(wcnt[0]),
        .I5(wcnt[3]),
        .O(\wcnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \wcnt_reg[0] 
       (.C(scl_clk),
        .CE(CEA2),
        .D(\wcnt[0]_i_1_n_0 ),
        .Q(wcnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \wcnt_reg[1] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\wcnt[1]_i_1_n_0 ),
        .Q(wcnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \wcnt_reg[2] 
       (.C(scl_clk),
        .CE(CEA2),
        .D(\wcnt[2]_i_1_n_0 ),
        .Q(wcnt[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \wcnt_reg[3] 
       (.C(scl_clk),
        .CE(CEA2),
        .D(\wcnt[3]_i_1_n_0 ),
        .Q(wcnt[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \wcnt_reg[4] 
       (.C(scl_clk),
        .CE(CEA2),
        .D(\wcnt[4]_i_1_n_0 ),
        .Q(wcnt[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \wcnt_reg[5] 
       (.C(scl_clk),
        .CE(CEA2),
        .D(\wcnt[5]_i_1_n_0 ),
        .Q(wcnt[5]),
        .R(\wcnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \wcnt_reg[6] 
       (.C(scl_clk),
        .CE(CEA2),
        .D(\wcnt[6]_i_3_n_0 ),
        .Q(wcnt[6]),
        .R(\wcnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \wcnt_reg[7] 
       (.C(scl_clk),
        .CE(1'b1),
        .D(\wcnt[7]_i_1_n_0 ),
        .Q(wcnt[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \wr_data[23]_i_1 
       (.I0(iic_busy),
        .I1(TS_S[0]),
        .I2(TS_S[1]),
        .O(iic_busy_reg_0));
endmodule
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
