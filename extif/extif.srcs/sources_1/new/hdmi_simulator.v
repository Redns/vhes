// module hdmi_simulator
// #(
//     parameter FRAME_WIDTH           =   32,
//     parameter FRAME_HEIGHT          =   32,
//     parameter FRAME_H_BLANK         =   2,
//     parameter FRAME_V_BLANK         =   6,
//     parameter FRAME_COUNT           =   3
// )
// (
//     input rst_n_i,
//     input pclk_i,
//     output reg de_o,
//     output reg hsync_o,
//     output reg vsync_o,
//     output reg [23:0] rgb_o
// );

//     reg [31:0] pixel_cnt, frame_cnt;

//     // 模拟像素数据
//     always@(posedge pclk_i or negedge rst_n_i) begin
//         if(!rst_n_i) 
//             rgb_o = 24'hffffff;
//         else
//             rgb_o = rgb_o - 1'b1;
//     end

//     // 模拟 vsync 时序  
//     always@(posedge pclk_i or negedge rst_n_i) begin
//         if(!rst_n_i) begin
//             vsync_o = 1'b0;
            
//         end
//     end

//     always@(posedge pclk_i or negedge rst_n_i) begin
//         if(!rst_n_i) begin
//             de_o = 1'b0;
//             hsync_o = 1'b0;
//             vsync_o = 1'b0;
//         end
//         else begin

//         end
//     end

// endmodule