#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("p_ground_address0", 13, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("p_ground_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("p_ground_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("p_threshold", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("p_num_minutes", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("p_ex_factor", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("p_clouds_address0", 4, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("p_clouds_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("p_clouds_we0", 1, hls_out, 4, "ap_memory", "mem_we", 1),
	Port_Property("p_clouds_d0", 224, hls_out, 4, "ap_memory", "mem_din", 1),
	Port_Property("p_clouds_q0", 224, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("r_i", 416, hls_in, 5, "ap_ovld", "in_data", 1),
	Port_Property("r_o", 416, hls_out, 5, "ap_ovld", "out_data", 1),
	Port_Property("r_o_ap_vld", 1, hls_out, 5, "ap_ovld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "do_compute";
