module vsps(
    input [2:0] type_i,
    input [7:0] index_i,
    input [7:0] frame_sn_i,
    input [15:0] trail_sn_init_i,
    output reg [7:0] data_o,
    output reg [7:0] data_size_o
);

    // HEVC = VPS + SPS + PPS + IDR + TRAIL * N
    // VPS = START_CODE + VPS_CODE
    // SPS = START_CODE + SPS_CODE
    // PPS = START_CODE + PPS_CODE
    // IDR = START_CODE + IDR_CODE + EBSP
    // TRAIL = START_CODE + TRAIL_CODE + EBSP
    parameter   VSPS_TYPE_START_CODE    =   0,      // START CODE
                VSPS_TYPE_VPS_CODE      =   1,      // VPS CODE
                VSPS_TYPE_SPS_CODE      =   2,      // SPS CODE
                VSPS_TYPE_PPS_CODE      =   3,      // PPS CODE
                VSPS_TYPE_IDR_CODE      =   4,      // IDR CODE
                VSPS_TYPE_TRAIL_CODE    =   5;      // TRAIL CODE
              

    // 序列长度（以字节为单位）
    always@(*) begin
        case(type_i)
            VSPS_TYPE_START_CODE:   data_size_o = 8'd4;
            VSPS_TYPE_VPS_CODE:     data_size_o = 8'd24;
            VSPS_TYPE_SPS_CODE:     data_size_o = 8'd31;
            VSPS_TYPE_PPS_CODE:     data_size_o = 8'd8;
            VSPS_TYPE_IDR_CODE:     data_size_o = 8'd4;
            VSPS_TYPE_TRAIL_CODE:   data_size_o = 8'd5;
        endcase
    end

    // 序列数据
    always@(*) begin
        case(type_i)
            VSPS_TYPE_START_CODE:
                case(index_i)
                    0:  data_o = 8'h00;
                    1:  data_o = 8'h00;
                    2:  data_o = 8'h00;
                    3:  data_o = 8'h01;
                    default: data_o = 8'h00;
                endcase
            VSPS_TYPE_VPS_CODE:
                case(index_i)
                    0:  data_o = 8'h40;
                    1:  data_o = 8'h01;
                    2:  data_o = 8'h0c;
                    3:  data_o = 8'h01;
                    4:  data_o = 8'hff;
                    5:  data_o = 8'hff;
                    6:  data_o = 8'h01;
                    7:  data_o = 8'h60;
                    8:  data_o = 8'h00;
                    9:  data_o = 8'h00;
                    10: data_o = 8'h03;
                    11: data_o = 8'h00;
                    12: data_o = 8'h00;
                    13: data_o = 8'h03;
                    14: data_o = 8'h00;
                    15: data_o = 8'h00;
                    16: data_o = 8'h03;
                    17: data_o = 8'h00;
                    18: data_o = 8'h00;
                    19: data_o = 8'h03;
                    20: data_o = 8'h00;
                    21: data_o = 8'h3f;
                    22: data_o = 8'hf0;
                    23: data_o = 8'h24;
                    default: data_o = 8'h00;
                endcase
            VSPS_TYPE_SPS_CODE:
                case(index_i)
                    0:  data_o = 8'h42;
                    1:  data_o = 8'h01;
                    2:  data_o = 8'h01;
                    3:  data_o = 8'h01;
                    4:  data_o = 8'h60;
                    5:  data_o = 8'h00;
                    6:  data_o = 8'h00;
                    7:  data_o = 8'h03;
                    8:  data_o = 8'h00;
                    9:  data_o = 8'h00;
                    10: data_o = 8'h03;
                    11: data_o = 8'h00;
                    12: data_o = 8'h00;
                    13: data_o = 8'h03;
                    14: data_o = 8'h00;
                    15: data_o = 8'h00;
                    16: data_o = 8'h03;
                    17: data_o = 8'h00;
                    18: data_o = 8'h3f;
                    19: data_o = 8'ha0;
                    20: data_o = 8'h03;
                    21: data_o = 8'hc0;
                    22: data_o = 8'h80;
                    23: data_o = 8'h10;
                    24: data_o = 8'he7;
                    25: data_o = 8'hf9;
                    26: data_o = 8'h7e;
                    27: data_o = 8'h49;
                    28: data_o = 8'h14;
                    29: data_o = 8'h16;
                    30: data_o = 8'h08;
                    default: data_o = 8'h00;
                endcase
            VSPS_TYPE_PPS_CODE:
                case(index_i)
                    0:  data_o = 8'h44;
                    1:  data_o = 8'h01;
                    2:  data_o = 8'hc0;
                    3:  data_o = 8'h90;
                    4:  data_o = 8'h83;
                    5:  data_o = 8'h4f;
                    6:  data_o = 8'h03;
                    7:  data_o = 8'hc9;
                    default: data_o = 8'h00;
                endcase
            VSPS_TYPE_IDR_CODE:
                case(index_i)
                    0:  data_o = 8'h26;
                    1:  data_o = 8'h01;
                    2:  data_o = 8'haf;
                    3:  data_o = 8'hc0;
                    default: data_o = 8'h00;
                endcase
            VSPS_TYPE_TRAIL_CODE:
                case(index_i)
                    0:  data_o = 8'h02;
                    1:  data_o = 8'h01;
                    2:  data_o = (trail_sn_init_i + ((frame_sn_i - 1) << 3)) >> 8;
                    3:  data_o = (trail_sn_init_i + ((frame_sn_i - 1) << 3));
                    4:  data_o = 8'hc0;
                    default: data_o = 8'h00;
                endcase
            default: data_o = 8'h00;
        endcase
    end

endmodule