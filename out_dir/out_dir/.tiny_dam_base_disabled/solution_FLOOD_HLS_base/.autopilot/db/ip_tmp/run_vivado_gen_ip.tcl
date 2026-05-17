create_project prj -part xcu50-fsvh2104-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_faddfsub_32ns_32ns_32_7_full_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_fdiv_32ns_32ns_32_12_no_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_sitofp_32ns_32_4_no_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_fptrunc_64ns_32_2_no_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_fpext_32ns_64_2_no_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_fsqrt_32ns_32ns_32_12_no_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_dadd_64ns_64ns_64_5_full_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_dcmp_64ns_64ns_1_2_no_dsp_1_ip.tcl"
source "/home/acce2632/acce-fpga/.tiny_dam_base_disabled/solution_FLOOD_HLS_base/syn/verilog/do_compute_dsqrt_64ns_64ns_64_21_no_dsp_1_ip.tcl"
