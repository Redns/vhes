onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group SYSTEM /hdmi2yuv_top_tb/pclk
add wave -noupdate -expand -group SYSTEM /hdmi2yuv_top_tb/rst_n
add wave -noupdate -expand -group SYSTEM /hdmi2yuv_top_tb/rst_done
add wave -noupdate -expand -group SYSTEM /hdmi2yuv_top_tb/convert_en_i
add wave -noupdate -group RGB_IN /hdmi2yuv_top_tb/rgb_vsync
add wave -noupdate -group RGB_IN /hdmi2yuv_top_tb/rgb_hsync
add wave -noupdate -group RGB_IN /hdmi2yuv_top_tb/rgb_de
add wave -noupdate -group RGB_IN /hdmi2yuv_top_tb/rgb_data
add wave -noupdate -expand -group RGB_2_YUV /hdmi2yuv_top_tb/hdmi2yuv_top/rgb2yuv/vsync_o
add wave -noupdate -expand -group RGB_2_YUV /hdmi2yuv_top_tb/hdmi2yuv_top/rgb2yuv/hsync_o
add wave -noupdate -expand -group RGB_2_YUV /hdmi2yuv_top_tb/hdmi2yuv_top/rgb2yuv/de_o
add wave -noupdate -expand -group RGB_2_YUV /hdmi2yuv_top_tb/hdmi2yuv_top/rgb2yuv/yuv_o
add wave -noupdate -expand -group YUV_MERGE_128 /hdmi2yuv_top_tb/yuv_y_de
add wave -noupdate -expand -group YUV_MERGE_128 /hdmi2yuv_top_tb/yuv_y_data
add wave -noupdate -expand -group YUV_MERGE_128 /hdmi2yuv_top_tb/yuv_uv_de
add wave -noupdate -expand -group YUV_MERGE_128 /hdmi2yuv_top_tb/yuv_uv_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4000261 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 118
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
WaveRestoreZoom {0 ps} {7846171 ps}
