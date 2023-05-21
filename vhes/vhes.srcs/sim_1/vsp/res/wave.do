onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group SYSTEM /vsp_top_tb/ui_clk
add wave -noupdate -expand -group SYSTEM /vsp_top_tb/rst_n
add wave -noupdate -expand -group SYSTEM /vsp_top_tb/rst_done
add wave -noupdate -expand -group SYSTEM /vsp_top_tb/hevc_bs_overflow
add wave -noupdate -expand -group LCU_BARE_BITSTREAM /vsp_top_tb/hevc_encode_start
add wave -noupdate -expand -group LCU_BARE_BITSTREAM /vsp_top_tb/hevc_encode_done
add wave -noupdate -expand -group LCU_BARE_BITSTREAM /vsp_top_tb/bs_valid
add wave -noupdate -expand -group LCU_BARE_BITSTREAM /vsp_top_tb/bs_data
add wave -noupdate -expand -group HEVC_BITSTREAM /vsp_top_tb/bs_rd_clk
add wave -noupdate -expand -group HEVC_BITSTREAM /vsp_top_tb/hevc_bs_rd_en
add wave -noupdate -expand -group HEVC_BITSTREAM /vsp_top_tb/hevc_bs_valid
add wave -noupdate -expand -group HEVC_BITSTREAM /vsp_top_tb/hevc_bs_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {25848 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 251
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
WaveRestoreZoom {0 ps} {54164 ps}
