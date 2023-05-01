onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /xk265_top_tb/xk265_top/xk265_ctrl/clk_ui
add wave -noupdate /xk265_top_tb/xk265_top/xk265_ctrl/state
add wave -noupdate -expand -group {DATA MERGE} /xk265_top_tb/xk265_top/hdmi2yuv_top/y_de_o
add wave -noupdate -expand -group {DATA MERGE} /xk265_top_tb/xk265_top/hdmi2yuv_top/uv_de_o
add wave -noupdate -expand -group {DATA MERGE} /xk265_top_tb/xk265_top/hdmi2yuv_top/y_o
add wave -noupdate -expand -group {DATA MERGE} /xk265_top_tb/xk265_top/hdmi2yuv_top/uv_o
add wave -noupdate -expand -group {VIDEO BUFFER} /xk265_top_tb/xk265_top/xk265_ctrl/pixel_type_o
add wave -noupdate -expand -group {VIDEO BUFFER} /xk265_top_tb/xk265_top/xk265_ctrl/pixel_buffer_rd_en_o
add wave -noupdate -expand -group {VIDEO BUFFER} /xk265_top_tb/xk265_top/xk265_ctrl/pixel_buffer_full_i
add wave -noupdate -expand -group {VIDEO BUFFER} /xk265_top_tb/xk265_top/xk265_ctrl/pixel_buffer_rd_cnt_i
add wave -noupdate -expand -group {VIDEO BUFFER} /xk265_top_tb/xk265_top/xk265_ctrl/frdw_busy
add wave -noupdate -expand -group {VIDEO BUFFER} /xk265_top_tb/xk265_top/xk265_ctrl/current_write_frame_serial_number
add wave -noupdate -expand -group {VIDEO BUFFER} /xk265_top_tb/xk265_top/xk265_ctrl/previous_write_frame_serial_number
add wave -noupdate -expand -group {VIDEO BUFFER} /xk265_top_tb/xk265_top/xk265_ctrl/video_buffer_y_write_in_cnt
add wave -noupdate -expand -group {VIDEO BUFFER} /xk265_top_tb/xk265_top/xk265_ctrl/video_buffer_uv_write_in_cnt
add wave -noupdate /xk265_top_tb/xk265_top/xk265_ctrl/extif_wr_en_o
add wave -noupdate /xk265_top_tb/xk265_top/xk265_ctrl/extif_rd_en_o
add wave -noupdate -expand -group FDMA /xk265_top_tb/xk265_top/xk265_ctrl/fdma_addr_o
add wave -noupdate -expand -group FDMA /xk265_top_tb/xk265_top/xk265_ctrl/fdma_size_o
add wave -noupdate -expand -group FDMA /xk265_top_tb/xk265_top/xk265_ctrl/fdma_busy_i
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_sys_start_o
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_sys_type_o
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_sys_done_i
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_extif_start_i
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_extif_done_o
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_extif_mode_i
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_extif_x_i
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_extif_y_i
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_extif_width_i
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_extif_height_i
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/extif_busy
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_enc_busy
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_enc_frame_nums
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/current_read_frame_serial_number
add wave -noupdate -expand -group EXTIF /xk265_top_tb/xk265_top/xk265_ctrl/hevc_extif_operated_rows
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {79283812860 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 205
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {904821936 fs} {1005009372 fs}
