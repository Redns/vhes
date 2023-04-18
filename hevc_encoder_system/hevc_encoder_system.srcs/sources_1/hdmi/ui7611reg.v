`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
Company : Liyang Milian Electronic Technology Co., Ltd.
Brand: ������(msxbo)
Technical forum:uisrc.com
taobao: osrc.taobao.com
Create Date: 2019/12/17
Module Name: ui5640reg
Description: 
Configure the ui5640reg register. video format rgb 565
Copyright: Copyright (c) msxbo
Revision: 1.0
Signal description�?
1) _i input
2) _o output
3) _n activ low
4) _dg debug signal 
5) _r delay or register
6) _s state mechine
*/
////////////////////////////////////////////////////////////////////////////////
module ui7611reg
(
input      [8 :0]  REG_INDEX,
output reg [31:0]  REG_DATA,
output     [8 :0]  REG_SIZE  
);

assign	REG_SIZE = 9'd182;

//-----------------------------------------------------------------
/////////////////////	Config Data REG	  //////////////////////////	
always@(*)
case(REG_INDEX)
//write Data Index
    0   : REG_DATA	=	{8'h98,8'hF4, 8'h80};	//Manufacturer ID Byte - High (Read only)
    1   : REG_DATA	=	{8'h98,8'hF5, 8'h7c};	//Manufacturer ID Byte - Low (Read only)
    2   : REG_DATA	= 	{8'h98,8'hF8, 8'h4c};	// BIT[7]-Reset all the Reg 
    3   : REG_DATA	= 	{8'h98,8'hF9, 8'h64};	//DC offset for analog process
    4   : REG_DATA	= 	{8'h98,8'hFA, 8'h6c};	//COM10 : href/vsync/pclk/data reverse(Vsync H valid)
    5   : REG_DATA	= 	{8'h98,8'hFB, 8'h68};	//VGA :	8'h22;	QVGA :	8'h3f;
    6   : REG_DATA	= 	{8'h98,8'hFD, 8'h44};	//VGA :	8'ha4;	QVGA :	8'h50;
    7   : REG_DATA	=	{8'h98,8'h01, 8'h05};	//VGA :	8'h07;	QVGA :	8'h03;
    8   : REG_DATA	= 	{8'h98,8'h00, 8'h13};	//VGA :	8'hf0;	QVGA :	8'h78;
    9   : REG_DATA	= 	{8'h98,8'h02, 8'hF7};	//HREF	/ 8'h80
    10  : REG_DATA  = 	{8'h98,8'h03, 8'h40};	//VGA :	8'hA0;	QVGA :	8'hF0
    11  : REG_DATA  = 	{8'h98,8'h04, 8'h42};	//VGA :	8'hF0;	QVGA :	8'h78
    12  : REG_DATA	=	{8'h98,8'h05, 8'h28};	//
    13  : REG_DATA	= 	{8'h98,8'h06, 8'ha7};	//
    14  : REG_DATA	= 	{8'h98,8'h0b, 8'h44};	//BIT[6] :	0 :VGA; 1;QVGA
    15  : REG_DATA	= 	{8'h98,8'h0C, 8'h42};	//
    16  : REG_DATA	= 	{8'h98,8'h15, 8'h80};	//
    17  : REG_DATA	= 	{8'h98,8'h19, 8'h8a};	//
    18  : REG_DATA	= 	{8'h98,8'h33, 8'h40};	//
    19  : REG_DATA	= 	{8'h98,8'h14, 8'h3f};	//
    20  : REG_DATA	= 	{8'h44,8'hba, 8'h01};	//
    21  : REG_DATA	= 	{8'h44,8'h7c, 8'h01};	//	
    22  : REG_DATA	= 	{8'h64,8'h40, 8'h81};	//DSP_Ctrl4 :00/01 : YUV or RGB; 10 : RAW8; 11 : RAW10		
    23  : REG_DATA	=	{8'h68,8'h9b, 8'h03};   //ADI recommanded setting
    24  : REG_DATA	=	{8'h68,8'hc1, 8'h01};	//ADI recommanded setting
    25  : REG_DATA	=	{8'h68,8'hc2, 8'h01};	//ADI recommanded setting
    26  : REG_DATA	=	{8'h68,8'hc3, 8'h01};	//ADI recommanded setting
    27  : REG_DATA	=	{8'h68,8'hc4, 8'h01};	//ADI recommanded setting
    28  : REG_DATA	=	{8'h68,8'hc5, 8'h01};	//ADI recommanded setting
    29  : REG_DATA	=	{8'h68,8'hc6, 8'h01};	//ADI recommanded setting
    30  : REG_DATA	=	{8'h68,8'hc7, 8'h01};	//ADI recommanded setting
    31  : REG_DATA	=	{8'h68,8'hc8, 8'h01};	//ADI recommanded setting
    32  : REG_DATA	=	{8'h68,8'hc9, 8'h01};	//ADI recommanded settin g
    33  : REG_DATA	=	{8'h68,8'hca, 8'h01};	//ADI recommanded setting
    34  : REG_DATA	=	{8'h68,8'hcb, 8'h01};	//ADI recommanded setting
    35  : REG_DATA	=	{8'h68,8'hcc, 8'h01};	//ADI recommanded setting
    36  : REG_DATA	=	{8'h68,8'h00, 8'h00}; 	//Set HDMI input Port A
    37  : REG_DATA	=	{8'h68,8'h83, 8'hfe};	//terminator for Port A
    38  : REG_DATA	=	{8'h68,8'h6f, 8'h08};	//ADI recommended setting
    39  : REG_DATA	=	{8'h68,8'h85, 8'h1f};	//ADI recommended setting
    40  : REG_DATA	=	{8'h68,8'h87, 8'h70};	//ADI recommended setting
    41  : REG_DATA	=	{8'h68,8'h8d, 8'h04};	//LFG
    42  : REG_DATA	=	{8'h68,8'h8e, 8'h1e};	//HFG
    43  : REG_DATA	=	{8'h68,8'h1a, 8'h8a};	//unmute audio
    44  : REG_DATA	=	{8'h68,8'h57, 8'hda};	// ADI recommended setting
    45  : REG_DATA	=	{8'h68,8'h58, 8'h01};
    46  : REG_DATA	=	{8'h68,8'h75, 8'h10}; 
    47  : REG_DATA	= 	{8'h68,8'h6c ,8'ha3};//enable manual HPA
    48  : REG_DATA	= 	{8'h98,8'h20 ,8'h70};//HPD low
    49  : REG_DATA	= 	{8'h64,8'h74 ,8'h00};//disable internal EDID 
//edid 
//0: REG_DATA	= 	{8'h68,8'h6c ,8'ha3};//// enable manual HPA
//1: REG_DATA	= 	{8'h98,8'h20 ,8'h70};//HPD low
//2: REG_DATA	= 	{8'h64,8'h74 ,8'h00};//disable internal EDID  
//edid par
    50  : REG_DATA	= 	{8'h6c,8'd0  , 8'h00};
    51  : REG_DATA	= 	{8'h6c,8'd1  , 8'hFF};
    52  : REG_DATA	= 	{8'h6c,8'd2  , 8'hFF};
    53  : REG_DATA	= 	{8'h6c,8'd3  , 8'hFF};
    54  : REG_DATA	= 	{8'h6c,8'd4  , 8'hFF};
    55  : REG_DATA	= 	{8'h6c,8'd5  , 8'hFF};
    56  : REG_DATA	= 	{8'h6c,8'd6  , 8'hFF};
    57  : REG_DATA	= 	{8'h6c,8'd7  , 8'h00};
    58  : REG_DATA	= 	{8'h6c,8'd8  , 8'h20};
    59  : REG_DATA	= 	{8'h6c,8'd9  , 8'hA3};
    60  : REG_DATA	= 	{8'h6c,8'd10 , 8'h29};
    61  : REG_DATA	= 	{8'h6c,8'd11 , 8'h00};
    62  : REG_DATA	= 	{8'h6c,8'd12 , 8'h01};
    63  : REG_DATA	= 	{8'h6c,8'd13 , 8'h00};
    64  : REG_DATA	= 	{8'h6c,8'd14 , 8'h00};
    65  : REG_DATA	= 	{8'h6c,8'd15 , 8'h00};
    66  : REG_DATA	= 	{8'h6c,8'd16 , 8'h23};
    67  : REG_DATA	= 	{8'h6c,8'd17 , 8'h12};
    68  : REG_DATA	= 	{8'h6c,8'd18 , 8'h01};
    69  : REG_DATA	= 	{8'h6c,8'd19 , 8'h03};
    70  : REG_DATA	= 	{8'h6c,8'd20 , 8'h80};
    71  : REG_DATA	= 	{8'h6c,8'd21 , 8'h73};
    72  : REG_DATA	= 	{8'h6c,8'd22 , 8'h41};
    73  : REG_DATA	= 	{8'h6c,8'd23 , 8'h78};
    74  : REG_DATA	= 	{8'h6c,8'd24 , 8'h0A};
    75  : REG_DATA	= 	{8'h6c,8'd25 , 8'hF3};
    76  : REG_DATA	= 	{8'h6c,8'd26 , 8'h30};
    77  : REG_DATA	= 	{8'h6c,8'd27 , 8'hA7};
    78  : REG_DATA	= 	{8'h6c,8'd28 , 8'h54};
    79  : REG_DATA	= 	{8'h6c,8'd29 , 8'h42};
    80  : REG_DATA	= 	{8'h6c,8'd30 , 8'hAA};
    81  : REG_DATA	= 	{8'h6c,8'd31 , 8'h26};
    82  : REG_DATA	= 	{8'h6c,8'd32 , 8'h0F};
    83  : REG_DATA	= 	{8'h6c,8'd33 , 8'h50};
    84  : REG_DATA	= 	{8'h6c,8'd34 , 8'h54};
    85  : REG_DATA	= 	{8'h6c,8'd35 , 8'h25};
    86  : REG_DATA	= 	{8'h6c,8'd36 , 8'hC8};
    87  : REG_DATA	= 	{8'h6c,8'd37 , 8'h00};
    88  : REG_DATA	= 	{8'h6c,8'd38 , 8'h61};
    89  : REG_DATA	= 	{8'h6c,8'd39 , 8'h4F};
    90  : REG_DATA	= 	{8'h6c,8'd40 , 8'h01};
    91  : REG_DATA	= 	{8'h6c,8'd41 , 8'h01};
    92  : REG_DATA	= 	{8'h6c,8'd42 , 8'h01};
    93  : REG_DATA	= 	{8'h6c,8'd43 , 8'h01};
    94  : REG_DATA	= 	{8'h6c,8'd44 , 8'h01};
    95  : REG_DATA	= 	{8'h6c,8'd45 , 8'h01};
    96  : REG_DATA	= 	{8'h6c,8'd46 , 8'h01};
    97  : REG_DATA	= 	{8'h6c,8'd47 , 8'h01};
    98  : REG_DATA	= 	{8'h6c,8'd48 , 8'h01};
    99  : REG_DATA	= 	{8'h6c,8'd49 , 8'h01};
    100  : REG_DATA	= 	{8'h6c,8'd50 , 8'h01};
    101  : REG_DATA	= 	{8'h6c,8'd51 , 8'h01};
    102  : REG_DATA	= 	{8'h6c,8'd52 , 8'h01};
    103  : REG_DATA	= 	{8'h6c,8'd53 , 8'h01};
    104  : REG_DATA	= 	{8'h6c,8'd54 , 8'h02};
    105  : REG_DATA	= 	{8'h6c,8'd55 , 8'h3A};
    106  : REG_DATA	= 	{8'h6c,8'd56 , 8'h80};
    107  : REG_DATA	= 	{8'h6c,8'd57 , 8'h18};
    108  : REG_DATA	= 	{8'h6c,8'd58 , 8'h71};
    109  : REG_DATA	= 	{8'h6c,8'd59 , 8'h38};
    110  : REG_DATA	= 	{8'h6c,8'd60 , 8'h2D};
    111  : REG_DATA	= 	{8'h6c,8'd61 , 8'h40};
    112  : REG_DATA	= 	{8'h6c,8'd62 , 8'h58};
    113  : REG_DATA	= 	{8'h6c,8'd63 , 8'h2C};
    114  : REG_DATA	= 	{8'h6c,8'd64 , 8'h45};
    115  : REG_DATA	= 	{8'h6c,8'd65 , 8'h00};
    116  : REG_DATA	= 	{8'h6c,8'd66 , 8'h80};
    117  : REG_DATA	= 	{8'h6c,8'd67 , 8'h88};
    118  : REG_DATA	= 	{8'h6c,8'd68 , 8'h42};
    119  : REG_DATA	= 	{8'h6c,8'd69 , 8'h00};
    120  : REG_DATA	= 	{8'h6c,8'd70 , 8'h00};
    121  : REG_DATA	= 	{8'h6c,8'd71 , 8'h1E};
    122  : REG_DATA	= 	{8'h6c,8'd72 , 8'h8C};
    123  : REG_DATA	= 	{8'h6c,8'd73 , 8'h0A};
    124  : REG_DATA	= 	{8'h6c,8'd74 , 8'hD0};
    125  : REG_DATA	= 	{8'h6c,8'd75 , 8'h8A};
    126  : REG_DATA	= 	{8'h6c,8'd76 , 8'h20};
    127  : REG_DATA	= 	{8'h6c,8'd77 , 8'hE0};
    128  : REG_DATA	= 	{8'h6c,8'd78 , 8'h2D};
    129  : REG_DATA	= 	{8'h6c,8'd79 , 8'h10};
    130  : REG_DATA	= 	{8'h6c,8'd80 , 8'h10};
    131  : REG_DATA	= 	{8'h6c,8'd81 , 8'h3E};
    132  : REG_DATA	= 	{8'h6c,8'd82 , 8'h96};
    133  : REG_DATA	= 	{8'h6c,8'd83 , 8'h00};
    134  : REG_DATA	= 	{8'h6c,8'd84 , 8'h80};
    135  : REG_DATA	= 	{8'h6c,8'd85 , 8'h88};
    136  : REG_DATA	= 	{8'h6c,8'd86 , 8'h42};
    137  : REG_DATA	= 	{8'h6c,8'd87 , 8'h00};
    138  : REG_DATA	= 	{8'h6c,8'd88 , 8'h00};
    139  : REG_DATA	= 	{8'h6c,8'd89 , 8'h18};
    140  : REG_DATA	= 	{8'h6c,8'd90 , 8'h00};
    141  : REG_DATA	= 	{8'h6c,8'd91 , 8'h00};
    142  : REG_DATA	= 	{8'h6c,8'd92 , 8'h00};
    143  : REG_DATA	= 	{8'h6c,8'd93 , 8'hFC};
    144  : REG_DATA	= 	{8'h6c,8'd94 , 8'h00};
    145  : REG_DATA	= 	{8'h6c,8'd95 , 8'h48};
    146  : REG_DATA	= 	{8'h6c,8'd96 , 8'h44};
    147  : REG_DATA	= 	{8'h6c,8'd97 , 8'h4D};
    148  : REG_DATA	= 	{8'h6c,8'd98 , 8'h49};
    149  : REG_DATA	= 	{8'h6c,8'd99 , 8'h20};
    150  : REG_DATA	= 	{8'h6c,8'd100 , 8'h20};
    151  : REG_DATA	= 	{8'h6c,8'd101 , 8'h20};
    152  : REG_DATA	= 	{8'h6c,8'd102 , 8'h20};
    153  : REG_DATA	= 	{8'h6c,8'd103 , 8'h0A};
    154  : REG_DATA	= 	{8'h6c,8'd104 , 8'h20};
    155  : REG_DATA	= 	{8'h6c,8'd105 , 8'h20};
    156  : REG_DATA	= 	{8'h6c,8'd106 , 8'h20};
    157  : REG_DATA	= 	{8'h6c,8'd107 , 8'h20};
    158  : REG_DATA	= 	{8'h6c,8'd108 , 8'h00};
    159  : REG_DATA	= 	{8'h6c,8'd109 , 8'h00};
    160  : REG_DATA	= 	{8'h6c,8'd110 , 8'h00};
    161  : REG_DATA	= 	{8'h6c,8'd111 , 8'hFD};
    162  : REG_DATA	= 	{8'h6c,8'd112 , 8'h00};
    163  : REG_DATA	= 	{8'h6c,8'd113 , 8'h32};
    164  : REG_DATA	= 	{8'h6c,8'd114 , 8'h55};
    165  : REG_DATA	= 	{8'h6c,8'd115 , 8'h1F};
    166  : REG_DATA	= 	{8'h6c,8'd116 , 8'h45};
    167  : REG_DATA	= 	{8'h6c,8'd117 , 8'h0F};
    168  : REG_DATA	= 	{8'h6c,8'd118 , 8'h00};
    169  : REG_DATA	= 	{8'h6c,8'd119 , 8'h0A};
    170  : REG_DATA	= 	{8'h6c,8'd120 , 8'h20};
    171  : REG_DATA	= 	{8'h6c,8'd121 , 8'h20};
    172  : REG_DATA	= 	{8'h6c,8'd122 , 8'h20};
    173  : REG_DATA	= 	{8'h6c,8'd123 , 8'h20};
    174  : REG_DATA	= 	{8'h6c,8'd124 , 8'h20};
    175  : REG_DATA	= 	{8'h6c,8'd125 , 8'h20};
    176  : REG_DATA	= 	{8'h6c,8'd126 , 8'h01};
    177  : REG_DATA	= 	{8'h6c,8'd127 , 8'h24};
    178  : REG_DATA	= 	{8'h64,8'h74  , 8'h01};// enable internal EDID
    179  : REG_DATA	= 	{8'h98,8'h20  , 8'hf0};// HPD high
    180  : REG_DATA	= 	{8'h68,8'h6c  , 8'ha2};// disable manual HPA	
    181  : REG_DATA	=   {8'h98,8'hf4  , 8'h00};
    default:REG_DATA =0;
endcase

endmodule