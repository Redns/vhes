//---------------------------------------------------------
//
//  File Name     : tb_enc_top.v 
//  Author        : TANG  
//  Date          : 2018-05-24
//  Description   : test bench of enc_top
//
//-----------------------------------------------------------

`include "enc_defines.v"

/* defines */
    `define TB_NAME   tb_enc_top   

    `define TEST_I 1
    `define TEST_P 0  

    // `define FORMAT_NV12

    `define FORMAT_YUV

    // 测试时修改此处的帧大�?
    // TODO �? FRAME_W �? FRAME_H 整除 LCU_SIZE 时会造成内存浪费
    `define FRAME_WIDTH     1920 // (`FRAME_W/`LCU_SIZE + 1)*`LCU_SIZE  // full LCU
    `define FRAME_HEIGHT    1088 // (`FRAME_H/`LCU_SIZE + 1)*`LCU_SIZE  // full LCU

    `define INITIAL_QP      20
    `define GOP_LENGTH      50
    `define FRAME_TOTAL     2
    `define ENABLE_IinP     0
    `define ENABLE_DBSAO    0
    `define POSI4x4BIT      4 

    `define SKIP_COST_THRESH_8  0
    `define SKIP_COST_THRESH_16 (`SKIP_COST_THRESH_8 * 7) / 2
    `define SKIP_COST_THRESH_32 (`SKIP_COST_THRESH_16 * 7) / 2
    `define SKIP_COST_THRESH_64 (`SKIP_COST_THRESH_32 * 7) / 2

    // TODO 此处�?要与 YUV 视频源帧数对�?
    `define CHECK_FRAME_NUM 2 

/* test vectors */
    `ifdef FORMAT_YUV
        `define FILE_CUR_YUV        "./tv/BlowingBubbles.yuv"
        `define FILE_REC_YUV        "./tv/rec.yuv"
    `else 
        `define FILE_CUR_YUV        "./tv/BlowingBubbles_nv12.yuv"
        `define FILE_REC_YUV        "./tv/rec_nv12.yuv"
    `endif 

    `define FILE_REG_K          "./tv/rc_coefficient.txt"
    `define FILE_FRAME_QP       "./tv/rc_frameqp.txt"

    `define FILE_CHECK_BS       "./tv/s_bit_stream.dat"

    // ime 
    `define FILE_IME_CFG        "./tv/ime_cfg.dat"

/* check list */
`define AUTO_CHECK
    `define CHECK_BS 
    `define CHECK_REC 

/* clk */ 
    `define HALF_CLK           5
    `define FULL_CLK           (`HALF_CLK*2)

module `TB_NAME ;

    /* parameter declaration */
        // global
        parameter     CMD_NUM_WIDTH          = 3                  ;

        // local
        parameter     SLOPE_1d2              = 0                  ;
        parameter     SLOPE_1                = 1                  ;
        parameter     SLOPE_2                = 2                  ;
        parameter     SLOPE_INF              = 3                  ;

        // derived
        localparam    CMD_DAT_WIDTH_ONE      =(`IME_MV_WIDTH_X  )      // center_x_o
                                            +(`IME_MV_WIDTH_Y  )      // center_y_o
                                            +(`IME_MV_WIDTH_X-1)      // length_x_o
                                            +(`IME_MV_WIDTH_Y-1)      // length_y_o
                                            +(2                )      // slope_o
                                            +(1                )      // downsample_o
                                            +(1                )      // partition_r
                                            +(1                ) ;    // use_feedback_o
        localparam    CMD_DAT_WIDTH          = CMD_DAT_WIDTH_ONE
                                            *(1<<CMD_NUM_WIDTH ) ;

    /* wire / reg declaration */
        // global
        reg                             clk                   ;
        reg                             rstn                  ;
        // cfg              
        reg                             sys_start             ;
        reg                             sys_type              ;
        // PIC_WIDTH = 6 + 6 + 1
        // 图像�?大宽度为 2^PIC_WIDTH = 8192
        reg   [`PIC_WIDTH      -1 :0]   sys_all_x             ;
        // PIC_HEIGHT = 6 + 6
        // 图像�?大高度为 2^PIC_HEIGHT = 4096
        reg   [`PIC_HEIGHT     -1 :0]   sys_all_y             ;
        reg   [6               -1 :0]   sys_init_qp           ;
        wire                            sys_done              ;
        reg                             sys_IinP_ena          ;
        // 此处解块滤波使能 (sys_db_ena_i) �? 自�?�应补偿使能 (sys_sao_ena_i) 共用信号 sys_dbsao_ena
        reg                             sys_dbsao_ena         ;
        reg   [5               -1 :0]   sys_posi4x4bit        ;
        // skip cost thresh
        // 与帧间预测相�?
        reg   [32-1:0]                  skip_cost_thresh_08   ;
        reg   [32-1:0]                  skip_cost_thresh_16   ;
        reg   [32-1:0]                  skip_cost_thresh_32   ;
        reg   [32-1:0]                  skip_cost_thresh_64   ;

        // rc cfg 
        // 重建配置
        reg   [32              -1 :0]   sys_rc_bitnum_i       ;
        reg   [16              -1 :0]   sys_rc_k              ;
        reg   [6               -1 :0]   sys_rc_roi_height     ;
        reg   [7               -1 :0]   sys_rc_roi_width      ;
        reg   [7               -1 :0]   sys_rc_roi_x          ;
        reg   [7               -1 :0]   sys_rc_roi_y          ;
        reg                             sys_rc_roi_enable     ;
        reg   [10              -1 :0]   sys_rc_L1_frame_byte  ;
        reg   [10              -1 :0]   sys_rc_L2_frame_byte  ;
        reg                             sys_rc_lcu_en         ;
        reg   [6               -1 :0]   sys_rc_max_qp         ;
        reg   [6               -1 :0]   sys_rc_min_qp         ;
        reg   [6               -1 :0]   sys_rc_delta_qp       ;

        // ime_cfg
        // 整数运动估计配置
        reg   [CMD_NUM_WIDTH   -1 :0]   cmd_num_i             ;
        reg   [CMD_DAT_WIDTH   -1 :0]   cmd_dat_i             ;

        // ext if 
        wire  [1-1               : 0]   extif_start_o         ; // ext mem load start
        reg   [1-1               : 0]   extif_done_i          ; // ext mem load done
        wire  [5-1               : 0]   extif_mode_o          ; // "ext mode: {load/store} {luma
        // PIC_X_WIDTH = 6
        // PIC_Y_WIDTH = 6
        wire  [`PIC_X_WIDTH+6-1  : 0]   extif_x_o             ; // x in ref frame
        wire  [`PIC_Y_WIDTH+6-1  : 0]   extif_y_o             ; // y in ref frame
        wire  [8-1               : 0]   extif_width_o         ; // ref window width
        wire  [8-1               : 0]   extif_height_o        ; // ref window height
        reg                             extif_wren_i          ;
        reg                             extif_rden_i          ;
        // PIXEL_WIDTH = 8
        reg   [16*`PIXEL_WIDTH-1 : 0]   extif_data_i          ; // ext data reg
        wire  [16*`PIXEL_WIDTH-1 : 0]   extif_data_o          ; // ext data outp

        // bs
        wire                            bs_val_o              ;
        wire  [8-1                :0]   bs_dat_o              ;

        integer ext_height ;
        integer ext_width ;
        integer ext_addr; 

        integer   fp_cfg ;
        integer   fp_ori ;
        integer   fp_rec ;
        integer   fp_ref ;
        integer   fp_init ;
        integer   fp_check_bs ;
        integer   frame_num ;
        integer   pxl_cnt ;
        integer   pxl_adr ;
        reg [`PIXEL_WIDTH-1:0] ext_tmp_yuv ;
        integer   bs_byte_cnt ;
        reg [8-1 :0] check_bs ;

        // command
        // IME_MV_WIDTH_X = 7
        // IME_MV_WIDTH_Y = 6
        reg signed [`IME_MV_WIDTH_X-1 :0]     center_x_r     ;
        reg signed [`IME_MV_WIDTH_Y-1 :0]     center_y_r     ;
        reg        [`IME_MV_WIDTH_X-2 :0]     length_x_r     ;
        reg        [`IME_MV_WIDTH_Y-2 :0]     length_y_r     ;
        reg        [2              -1 :0]     slope_r        ;
        reg                                   downsample_r   ;
        reg                                   partition_r    ;
        reg                                   use_feedback_r ;

        integer                               ime_cfg        ;
        integer                               fp_ime_cfg     ;
        reg signed [31                :0]     ime_cfg_dat    ; 
        integer                               rc_cfg         ;

        integer fp_reg_k ;
        integer fp_frame_qp ;

    /* main body */
        // clk 
        initial begin 
            clk = 0; 
            forever #5 clk = ~clk ;
        end 

        // rstn
        initial begin 
            rstn = 0;
            #(10*`FULL_CLK);
            @(negedge clk );
            rstn = 1;
        end 

        // 例化 HEVC 编码�?
        h265enc_top u_enc_top(
        // global
        .clk                 ( clk                  ),
        .rstn                ( rstn                 ),
        // sys_cfg_if
        .sys_start_i         ( sys_start            ),
        .sys_type_i          ( sys_type             ),
        .sys_all_x_i         ( sys_all_x            ),
        .sys_all_y_i         ( sys_all_y            ),
        .sys_init_qp_i       ( sys_init_qp          ),
        .sys_done_o          ( sys_done             ),
        .sys_IinP_ena_i      ( sys_IinP_ena         ),
        .sys_db_ena_i        ( sys_dbsao_ena        ),
        .sys_sao_ena_i       ( sys_dbsao_ena        ),
        .sys_posi4x4bit_i    ( sys_posi4x4bit       ),
        // skip thresh
        .skip_cost_thresh_08 ( skip_cost_thresh_08  ),
        .skip_cost_thresh_16 ( skip_cost_thresh_16  ),
        .skip_cost_thresh_32 ( skip_cost_thresh_32  ),
        .skip_cost_thresh_64 ( skip_cost_thresh_64  ),
        // rc_cfg_if
        .sys_rc_mod64_sum_o  (                      ),
        .sys_rc_bitnum_i     ( sys_rc_bitnum_i      ),
        .sys_rc_k            ( sys_rc_k             ),
        .sys_rc_roi_height   ( sys_rc_roi_height    ),
        .sys_rc_roi_width    ( sys_rc_roi_width     ),
        .sys_rc_roi_x        ( sys_rc_roi_x         ),
        .sys_rc_roi_y        ( sys_rc_roi_y         ),
        .sys_rc_roi_enable   ( sys_rc_roi_enable    ),
        .sys_rc_L1_frame_byte( sys_rc_L1_frame_byte ),
        .sys_rc_L2_frame_byte( sys_rc_L2_frame_byte ),
        .sys_rc_lcu_en       ( sys_rc_lcu_en        ),
        .sys_rc_max_qp       ( sys_rc_max_qp        ),
        .sys_rc_min_qp       ( sys_rc_min_qp        ),
        .sys_rc_delta_qp     ( sys_rc_delta_qp      ),
        // ime_cfg_if
        .sys_ime_cmd_num_i   ( cmd_num_i            ),
        .sys_ime_cmd_dat_i   ( cmd_dat_i            ),
        // ext_if
        .extif_start_o       ( extif_start_o        ),
        .extif_done_i        ( extif_done_i         ),
        .extif_mode_o        ( extif_mode_o         ),
        .extif_x_o           ( extif_x_o            ),
        .extif_y_o           ( extif_y_o            ),
        .extif_width_o       ( extif_width_o        ),
        .extif_height_o      ( extif_height_o       ),
        .extif_wren_i        ( extif_wren_i         ),
        .extif_rden_i        ( extif_rden_i         ),
        .extif_data_i        ( extif_data_i         ),
        .extif_data_o        ( extif_data_o         ),
        // bs_if
        .bs_val_o            ( bs_val_o             ),
        .bs_dat_o            ( bs_dat_o             )
        );

        // 外部存储数据访问操作
        parameter   LOAD_CUR_SUB      = 01 ,
                    LOAD_REF_SUB      = 02 ,
                    LOAD_CUR_LUMA     = 03 ,    // 加载当前 LCU 的亮度块
                    LOAD_REF_LUMA     = 04 ,
                    LOAD_CUR_CHROMA   = 05 ,
                    LOAD_REF_CHROMA   = 06 ,
                    LOAD_DB_LUMA      = 07 ,
                    LOAD_DB_CHROMA    = 08 ,
                    STORE_DB_LUMA     = 09 ,
                    STORE_DB_CHROMA   = 10 ;

        /* 原始/重建/参�?�像素阵�? */
        /* YUV420 格式，UV 尺寸为图片尺寸的 1/2，故缓冲区大小为 FRAME_WIDTH * FRAME_HEIGHT * 1.5 */
            // 原始图像阵列
            reg [`PIXEL_WIDTH-1 :0]     ext_ori_yuv [`FRAME_WIDTH*`FRAME_HEIGHT*3/2-1:0] ;
            // 重建图像阵列
            reg [`PIXEL_WIDTH-1 :0]     ext_rec_yuv [`FRAME_WIDTH*`FRAME_HEIGHT*3/2-1:0] ;

        // 外部缓存模拟
        initial begin
            extif_done_i = 0 ;
            extif_wren_i = 0 ;
            extif_data_i = 0 ;
        
            forever begin
                // 等待 HEVC Core 发�?�数据处理命�?
                @(negedge extif_start_o);
                case(extif_mode_o)
                    // 获取当前 LCU 的亮度块
                    LOAD_CUR_LUMA: 
                        begin            
                            @(negedge clk);
                            // extif_x_o       = load_cur_luma_x_i * 64（当�? LCU 左上角亮度块在帧缓存中的列数�?  
                            // extif_y_o       = load_cur_luma_y_i * 64（当�? LCU 左上角亮度块在帧缓存中的行数�?
                            // extif_width_o   = 64（LCU 的宽度）                  
                            // extif_height_o  = 64（LCU 的高度）
                            for(ext_height = 0; ext_height < extif_height_o; ext_height = ext_height + 1) begin
                                // 下方�?次取 16 个亮度块，因此循环一次列数加 16
                                for(ext_width = 0; ext_width < extif_width_o; ext_width = ext_width + 16) begin
                                    extif_wren_i = 1 ;
                                    ext_addr = (extif_y_o + ext_height) * `FRAME_WIDTH + extif_x_o + ext_width;
                                    extif_data_i = 
                                    { 
                                        ext_ori_yuv[ext_addr + 00], ext_ori_yuv[ext_addr + 01],ext_ori_yuv[ext_addr+02] ,ext_ori_yuv[ext_addr+03],
                                        ext_ori_yuv[ext_addr + 04], ext_ori_yuv[ext_addr + 05],ext_ori_yuv[ext_addr+06] ,ext_ori_yuv[ext_addr+07],
                                        ext_ori_yuv[ext_addr + 08], ext_ori_yuv[ext_addr + 09],ext_ori_yuv[ext_addr+10] ,ext_ori_yuv[ext_addr+11],
                                        ext_ori_yuv[ext_addr + 12], ext_ori_yuv[ext_addr + 13],ext_ori_yuv[ext_addr+14] ,ext_ori_yuv[ext_addr+15]
                                    };
                                    @(negedge clk);
                                end
                            end
                            extif_wren_i = 0 ;
                            #100;
                            // 发�?�数据加载完成信�?
                            @(negedge clk)
                            extif_done_i = 1 ;
                            @(negedge clk)
                            extif_done_i = 0 ;
                        end
                    // 加载当前 LCU 的色度块
                    LOAD_CUR_CHROMA: 
                        begin             
                            @(negedge clk);
                            for(ext_height = 0; ext_height < extif_height_o / 2; ext_height = ext_height + 1) begin
                                for(ext_width = 0; ext_width < extif_width_o; ext_width = ext_width + 16) begin
                                    extif_wren_i = 1 ;
                                    ext_addr = `FRAME_WIDTH * `FRAME_HEIGHT + (extif_y_o / 2 + ext_height) * `FRAME_WIDTH + extif_x_o + ext_width;
                                    extif_data_i = 
                                    { 
                                        ext_ori_yuv[ext_addr+00], ext_ori_yuv[ext_addr+01], ext_ori_yuv[ext_addr+02], ext_ori_yuv[ext_addr+03],
                                        ext_ori_yuv[ext_addr+04] ,ext_ori_yuv[ext_addr+05] ,ext_ori_yuv[ext_addr+06] ,ext_ori_yuv[ext_addr+07],
                                        ext_ori_yuv[ext_addr+08] ,ext_ori_yuv[ext_addr+09] ,ext_ori_yuv[ext_addr+10] ,ext_ori_yuv[ext_addr+11],
                                        ext_ori_yuv[ext_addr+12] ,ext_ori_yuv[ext_addr+13] ,ext_ori_yuv[ext_addr+14] ,ext_ori_yuv[ext_addr+15]
                                    };
                                    @(negedge clk);
                                end
                            end
                            extif_wren_i = 0 ;
                            #100;
                            // 发�?�数据加载完成信�?
                            @(negedge clk)
                            extif_done_i = 1 ;
                            @(negedge clk)
                            extif_done_i = 0 ;
                        end
                    // 加载重建后的亮度�?
                    LOAD_DB_LUMA: 
                        begin             
                            @(negedge clk);
                            for(ext_height = 0; ext_height < extif_height_o; ext_height = ext_height + 1) begin
                                for(ext_width = 0; ext_width < extif_width_o; ext_width = ext_width + 16) begin
                                    extif_wren_i = 1 ;
                                    ext_addr = (extif_y_o + ext_height) * `FRAME_WIDTH + extif_x_o + ext_width;
                                    extif_data_i = 
                                    { 
                                        ext_rec_yuv[ext_addr+00] ,ext_rec_yuv[ext_addr+01] ,ext_rec_yuv[ext_addr+02] ,ext_rec_yuv[ext_addr+03],
                                        ext_rec_yuv[ext_addr+04] ,ext_rec_yuv[ext_addr+05] ,ext_rec_yuv[ext_addr+06] ,ext_rec_yuv[ext_addr+07],
                                        ext_rec_yuv[ext_addr+08] ,ext_rec_yuv[ext_addr+09] ,ext_rec_yuv[ext_addr+10] ,ext_rec_yuv[ext_addr+11],
                                        ext_rec_yuv[ext_addr+12] ,ext_rec_yuv[ext_addr+13] ,ext_rec_yuv[ext_addr+14] ,ext_rec_yuv[ext_addr+15]
                                    };
                                    @(negedge clk);
                                end
                            end
                            extif_wren_i = 0;
                            #100 ;
                            @(negedge clk)
                            extif_done_i = 1;
                            @(negedge clk)
                            extif_done_i = 0;
                        end
                    // 加载重建后的色度�?
                    LOAD_DB_CHROMA:  
                        begin             
                            @(negedge clk);
                            for(ext_height = 0; ext_height < extif_height_o / 2; ext_height = ext_height + 1) begin
                                for(ext_width = 0; ext_width < extif_width_o; ext_width = ext_width + 16) begin
                                    extif_wren_i = 1 ;
                                    ext_addr  = `FRAME_WIDTH * `FRAME_HEIGHT + (extif_y_o / 2 + ext_height) * `FRAME_WIDTH + extif_x_o + ext_width;
                                    extif_data_i = 
                                    { 
                                        ext_rec_yuv[ext_addr+00] ,ext_rec_yuv[ext_addr+01] ,ext_rec_yuv[ext_addr+02] ,ext_rec_yuv[ext_addr+03],
                                        ext_rec_yuv[ext_addr+04] ,ext_rec_yuv[ext_addr+05] ,ext_rec_yuv[ext_addr+06] ,ext_rec_yuv[ext_addr+07],
                                        ext_rec_yuv[ext_addr+08] ,ext_rec_yuv[ext_addr+09] ,ext_rec_yuv[ext_addr+10] ,ext_rec_yuv[ext_addr+11],
                                        ext_rec_yuv[ext_addr+12] ,ext_rec_yuv[ext_addr+13] ,ext_rec_yuv[ext_addr+14] ,ext_rec_yuv[ext_addr+15]
                                    };
                                    @(negedge clk);
                                end
                            end
                            extif_wren_i = 0;
                            #100 ;
                            @(negedge clk)
                            extif_done_i = 1;
                            @(negedge clk)
                            extif_done_i = 0;
                        end
                    // 存储重建后的亮度�?
                    STORE_DB_LUMA: 
                        begin             
                            @(negedge clk);
                            for(ext_height = 0; ext_height < extif_height_o; ext_height = ext_height + 1) begin
                                for(ext_width = 0; ext_width < extif_width_o; ext_width = ext_width + 16) begin
                                    extif_rden_i = 1 ;
                                    ext_addr = (extif_y_o + ext_height) * `FRAME_WIDTH + extif_x_o + ext_width;
                                    { 
                                        ext_rec_yuv[ext_addr+00] ,ext_rec_yuv[ext_addr+01] ,ext_rec_yuv[ext_addr+02] ,ext_rec_yuv[ext_addr+03],
                                        ext_rec_yuv[ext_addr+04] ,ext_rec_yuv[ext_addr+05] ,ext_rec_yuv[ext_addr+06] ,ext_rec_yuv[ext_addr+07],
                                        ext_rec_yuv[ext_addr+08] ,ext_rec_yuv[ext_addr+09] ,ext_rec_yuv[ext_addr+10] ,ext_rec_yuv[ext_addr+11],
                                        ext_rec_yuv[ext_addr+12] ,ext_rec_yuv[ext_addr+13] ,ext_rec_yuv[ext_addr+14] ,ext_rec_yuv[ext_addr+15]
                                    } = extif_data_o;
                                    @(negedge clk);
                                end
                            end
                            extif_rden_i = 0;
                            #100;
                            @(negedge clk)
                            extif_done_i = 1;
                            @(negedge clk)
                            extif_done_i = 0;
                        end
                    // 存储重建后的色度�?
                    STORE_DB_CHROMA: 
                        begin             
                            @(negedge clk);
                            for(ext_height = 0; ext_height < extif_height_o / 2; ext_height = ext_height + 1) begin
                                for(ext_width = 0; ext_width < extif_width_o; ext_width = ext_width + 16) begin
                                    extif_rden_i = 1 ;
                                    ext_addr =  `FRAME_WIDTH * `FRAME_HEIGHT + (extif_y_o / 2 + ext_height) * `FRAME_WIDTH+extif_x_o + ext_width;
                                    { 
                                        ext_rec_yuv[ext_addr+00] ,ext_rec_yuv[ext_addr+01] ,ext_rec_yuv[ext_addr+02] ,ext_rec_yuv[ext_addr+03],
                                        ext_rec_yuv[ext_addr+04] ,ext_rec_yuv[ext_addr+05] ,ext_rec_yuv[ext_addr+06] ,ext_rec_yuv[ext_addr+07],
                                        ext_rec_yuv[ext_addr+08] ,ext_rec_yuv[ext_addr+09] ,ext_rec_yuv[ext_addr+10] ,ext_rec_yuv[ext_addr+11],
                                        ext_rec_yuv[ext_addr+12] ,ext_rec_yuv[ext_addr+13] ,ext_rec_yuv[ext_addr+14] ,ext_rec_yuv[ext_addr+15]
                                    } = extif_data_o;
                                    @(negedge clk );
                                end
                            end
                            extif_rden_i = 0;
                            #100 ;
                            @(negedge clk)
                            extif_done_i = 1;
                            @(negedge clk)
                            extif_done_i = 0;
                        end
                    // 默认响应
                    default: 
                        begin             
                            #100;
                            @(negedge clk)
                            extif_done_i = 1;
                            @(negedge clk)
                            extif_done_i = 0 ;
                        end
                endcase
            end
        end

        initial begin 
            /* 初始化变�? */
                // sys if 
                sys_type = `INTRA;
                sys_start = 0;
                // 设置初始量化�?
                sys_init_qp = `INITIAL_QP ;
                // 设置待编码帧尺寸
                sys_all_x = `FRAME_WIDTH ;
                sys_all_y = `FRAME_HEIGHT ;
                // 使能 I in P
                sys_IinP_ena = `ENABLE_IinP;
                // 使能去块滤波
                sys_dbsao_ena  = `ENABLE_DBSAO ;
                sys_posi4x4bit = `POSI4x4BIT ;
                skip_cost_thresh_08 = `SKIP_COST_THRESH_8  ;
                skip_cost_thresh_16 = `SKIP_COST_THRESH_16 ;
                skip_cost_thresh_32 = `SKIP_COST_THRESH_32 ;
                skip_cost_thresh_64 = `SKIP_COST_THRESH_64 ;
                // rate control cfg 
                sys_rc_k             = 0 ;
                sys_rc_bitnum_i      = 'd10000 ;
                sys_rc_roi_height    = 'd1  ;
                sys_rc_roi_width     = 'd1  ;
                sys_rc_roi_x         = 'd4  ;
                sys_rc_roi_y         = 'd2  ;
                sys_rc_roi_enable    = 0  ;
                sys_rc_L1_frame_byte = 'd100 ;
                sys_rc_L2_frame_byte = 'd300 ;
                sys_rc_lcu_en        = 1'b0 ;
                sys_rc_max_qp        = 'd51 ;
                sys_rc_min_qp        = 'd10 ;
                sys_rc_delta_qp      = 'd4  ;
                check_bs             = 0 ;
                bs_byte_cnt          = 0 ;
                // file 
                // 返回值为文件句柄
                fp_ori = $fopen( `FILE_CUR_YUV, "r" );
                fp_rec = $fopen( `FILE_REC_YUV, "r" );
                fp_ref = $fopen( `FILE_REC_YUV, "r" );
                fp_check_bs = $fopen( `FILE_CHECK_BS, "r" );
                fp_ime_cfg = $fopen( `FILE_IME_CFG, "r" );
                fp_reg_k = $fopen(`FILE_REG_K, "r");
                fp_frame_qp = $fopen(`FILE_FRAME_QP, "r");
            
            /* 读取图片配置文件 */
                // lcu index
                ime_cfg = $fscanf( fp_ime_cfg ,"%d" ,ime_cfg_dat );
                ime_cfg = $fscanf( fp_ime_cfg ,"%d" ,ime_cfg_dat );
                // frame size
                // 读取帧尺�?
                // 宽度�?416px
                // 高度�?240px
                ime_cfg = $fscanf( fp_ime_cfg ,"%d" ,ime_cfg_dat );
                ime_cfg = $fscanf( fp_ime_cfg ,"%d" ,ime_cfg_dat );

            /* 读取并拼接命�? */
                // cfg
                // cmd_num_i = 1
                ime_cfg = $fscanf( fp_ime_cfg ,"%d" ,cmd_num_i   );
                // cfg - 0
                begin
                    if (cmd_num_i>=0) begin
                    //   center_x_r     = 0        ;
                    //   center_y_r     = 0        ;
                    //   length_x_r     = 40       ;
                    //   length_y_r     = 20       ;
                    //   slope_r        = 0        ;
                    //   downsample_r   = 1        ;
                    //   partition_r    = 0        ;
                    //   use_feedback_r = 0        ;
                    ime_cfg = $fscanf( fp_ime_cfg, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n", center_x_r, center_y_r, length_x_r, length_y_r, slope_r, downsample_r, partition_r, use_feedback_r );
                    end
                    else begin
                    center_x_r     = 0        ;
                    center_y_r     = 0        ;
                    length_x_r     = 0        ;
                    length_y_r     = 0        ;
                    slope_r        = 0        ;
                    downsample_r   = 0        ;
                    partition_r    = 0        ;
                    use_feedback_r = 0        ;
                    end
                    // 拼接帧间预测命令
                    cmd_dat_i      = { center_x_r
                                    ,center_y_r
                                    ,length_x_r
                                    ,length_y_r
                                    ,slope_r
                                    ,downsample_r
                                    ,partition_r
                                    ,use_feedback_r
                                    ,cmd_dat_i }>>CMD_DAT_WIDTH_ONE ;
                end
                // cfg - 1
                begin
                    if (cmd_num_i>=1) begin
                    ime_cfg = $fscanf( fp_ime_cfg, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n", center_x_r, center_y_r, length_x_r, length_y_r, slope_r, downsample_r, partition_r, use_feedback_r );
                    end
                    else begin
                    center_x_r     = 0        ;
                    center_y_r     = 0        ;
                    length_x_r     = 0        ;
                    length_y_r     = 0        ;
                    slope_r        = 0        ;
                    downsample_r   = 0        ;
                    partition_r    = 0        ;
                    use_feedback_r = 0        ;
                    end
                    cmd_dat_i      = { center_x_r
                                    ,center_y_r
                                    ,length_x_r
                                    ,length_y_r
                                    ,slope_r
                                    ,downsample_r
                                    ,partition_r
                                    ,use_feedback_r
                                    ,cmd_dat_i }>>CMD_DAT_WIDTH_ONE ;
                end
                // cfg - 2
                begin
                    if (cmd_num_i>=2) begin
                    ime_cfg = $fscanf( fp_ime_cfg, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n", center_x_r, center_y_r, length_x_r, length_y_r, slope_r, downsample_r, partition_r, use_feedback_r );
                    end
                    else begin
                    center_x_r     = 0        ;
                    center_y_r     = 0        ;
                    length_x_r     = 0        ;
                    length_y_r     = 0        ;
                    slope_r        = 0        ;
                    downsample_r   = 0        ;
                    partition_r    = 0        ;
                    use_feedback_r = 0        ;
                    end
                    cmd_dat_i    = { center_x_r
                                    ,center_y_r
                                    ,length_x_r
                                    ,length_y_r
                                    ,slope_r
                                    ,downsample_r
                                    ,partition_r
                                    ,use_feedback_r
                                    ,cmd_dat_i }>>CMD_DAT_WIDTH_ONE ;
                end
                // cfg - 3
                begin
                    if (cmd_num_i>=3) begin
                    ime_cfg = $fscanf( fp_ime_cfg, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n", center_x_r, center_y_r, length_x_r, length_y_r, slope_r, downsample_r, partition_r, use_feedback_r );
                    end
                    else begin
                    center_x_r     = 0        ;
                    center_y_r     = 0        ;
                    length_x_r     = 0        ;
                    length_y_r     = 0        ;
                    slope_r        = 0        ;
                    downsample_r   = 0        ;
                    partition_r    = 0        ;
                    use_feedback_r = 0        ;
                    end
                    cmd_dat_i    = { center_x_r
                                    ,center_y_r
                                    ,length_x_r
                                    ,length_y_r
                                    ,slope_r
                                    ,downsample_r
                                    ,partition_r
                                    ,use_feedback_r
                                    ,cmd_dat_i }>>CMD_DAT_WIDTH_ONE ;
                end
                // cfg - 4
                begin
                    if (cmd_num_i>=4) begin
                    ime_cfg = $fscanf( fp_ime_cfg, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n", center_x_r, center_y_r, length_x_r, length_y_r, slope_r, downsample_r, partition_r, use_feedback_r );
                    end
                    else begin
                    center_x_r     = 0        ;
                    center_y_r     = 0        ;
                    length_x_r     = 0        ;
                    length_y_r     = 0        ;
                    slope_r        = 0        ;
                    downsample_r   = 0        ;
                    partition_r    = 0        ;
                    use_feedback_r = 0        ;
                    end
                    cmd_dat_i    = { center_x_r
                                    ,center_y_r
                                    ,length_x_r
                                    ,length_y_r
                                    ,slope_r
                                    ,downsample_r
                                    ,partition_r
                                    ,use_feedback_r
                                    ,cmd_dat_i }>>CMD_DAT_WIDTH_ONE ;
                end
                // cfg - 5
                begin
                    if (cmd_num_i>=5) begin
                    ime_cfg = $fscanf( fp_ime_cfg, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n", center_x_r, center_y_r, length_x_r, length_y_r, slope_r, downsample_r, partition_r, use_feedback_r );
                    end
                    else begin
                    center_x_r     = 0        ;
                    center_y_r     = 0        ;
                    length_x_r     = 0        ;
                    length_y_r     = 0        ;
                    slope_r        = 0        ;
                    downsample_r   = 0        ;
                    partition_r    = 0        ;
                    use_feedback_r = 0        ;
                    end
                    cmd_dat_i    = { center_x_r
                                    ,center_y_r
                                    ,length_x_r
                                    ,length_y_r
                                    ,slope_r
                                    ,downsample_r
                                    ,partition_r
                                    ,use_feedback_r
                                    ,cmd_dat_i }>>CMD_DAT_WIDTH_ONE ;
                end
                // cfg - 6
                begin
                    if (cmd_num_i>=6) begin
                    ime_cfg = $fscanf( fp_ime_cfg, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n", center_x_r, center_y_r, length_x_r, length_y_r, slope_r, downsample_r, partition_r, use_feedback_r );
                    end
                    else begin
                    center_x_r     = 0        ;
                    center_y_r     = 0        ;
                    length_x_r     = 0        ;
                    length_y_r     = 0        ;
                    slope_r        = 0        ;
                    downsample_r   = 0        ;
                    partition_r    = 0        ;
                    use_feedback_r = 0        ;
                    end
                    cmd_dat_i    = { center_x_r
                                    ,center_y_r
                                    ,length_x_r
                                    ,length_y_r
                                    ,slope_r
                                    ,downsample_r
                                    ,partition_r
                                    ,use_feedback_r
                                    ,cmd_dat_i }>>CMD_DAT_WIDTH_ONE ;
                end
                // cfg - 7
                begin
                    if (cmd_num_i>=7) begin
                    ime_cfg = $fscanf( fp_ime_cfg, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n", center_x_r, center_y_r, length_x_r, length_y_r, slope_r, downsample_r, partition_r, use_feedback_r );
                    end
                    else begin
                    center_x_r     = 0        ;
                    center_y_r     = 0        ;
                    length_x_r     = 0        ;
                    length_y_r     = 0        ;
                    slope_r        = 0        ;
                    downsample_r   = 0        ;
                    partition_r    = 0        ;
                    use_feedback_r = 0        ;
                    end
                    cmd_dat_i    = { center_x_r
                                    ,center_y_r
                                    ,length_x_r
                                    ,length_y_r
                                    ,slope_r
                                    ,downsample_r
                                    ,partition_r
                                    ,use_feedback_r
                                    ,cmd_dat_i }>>CMD_DAT_WIDTH_ONE ;
                end

            // 等待复位信号结束
            wait(rstn);

            // 监控变量的任何一个发生变化时打印相关信息
            $monitor( "\tat %08d, Frame Number = %02d, mb_x_first = %02d, mb_y_first = %02d",
                $time, frame_num, u_enc_top.u_enc_ctrl.pre_l_x_o, u_enc_top.u_enc_ctrl.pre_l_y_o );

            // 初始�? YUV 缓存阵列
            for ( frame_num = 0 ; frame_num < `FRAME_TOTAL; frame_num = frame_num + 1 ) begin 
                `ifdef FORMAT_NV12
                    // 将帧数据缓存�? ext_ori_yuv 阵列
                    // 采用 NV12 格式，Y 单独存储，U、V 交替存储
                    // 采样格式 4�?2�?0，因�? Y、U、V 总像素点数为帧尺寸的 1.5 �?
                    for (pxl_cnt = 0 ; pxl_cnt < `FRAME_WIDTH*`FRAME_HEIGHT * 3 / 2; pxl_cnt = pxl_cnt + 1) begin 
                        fp_init = $fread(ext_tmp_yuv, fp_ori) ;
                        ext_ori_yuv[pxl_cnt] = ext_tmp_yuv ;
                    end
                `endif

                // 编码类型控制
                if ( frame_num % `GOP_LENGTH == 0 )
                    // GOP 首帧（即 I 帧）
                    sys_type = `INTRA;
                else 
                    // GOP 未结束，下一拍帧间预测编�? P �?
                    sys_type = `INTER ;

                // 执行编码过程
                // sys_start 上升沿启动编�?
                // sys_type 控制编码类型（帧�?/帧间�?
                // sys_done 上升沿代表编码完�?
                begin
                    @(negedge clk);
                    sys_start = 1 ;
                    @(negedge clk);
                    sys_start = 0;
                    @(posedge sys_done);
                    #100;
                end

                // 重建配置
                if (frame_num > 0) begin 
                    rc_cfg = $fscanf(fp_reg_k , "%d", sys_rc_k); 
                    sys_rc_lcu_en = 1'b0 ;
                end 
                rc_cfg = $fscanf(fp_frame_qp, "%d", sys_init_qp);
            end

            $finish ;
        end 

        // HEVC 字节流检�?
        // bs_val_o 置位时数据有�?
        `ifdef CHECK_BS 
            always@(posedge clk) begin
                if (bs_val_o == 1) begin 
                    fp_init = $fscanf(fp_check_bs, "%h", check_bs);
                    if (check_bs != bs_dat_o) begin
                        $display("ERROR at BS at bs_byte_cnt = %5d, f265 is %h, h265 is %h", bs_byte_cnt, check_bs, bs_dat_o);
                        $finish;
                    end
                    bs_byte_cnt=bs_byte_cnt+1;
                end 
            end 
        `endif

endmodule