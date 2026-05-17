set moduleName do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict spillage_flag { MEM_WIDTH 32 MEM_SIZE 10000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict spillage_level { MEM_WIDTH 32 MEM_SIZE 10000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict spillage_from_neigh { MEM_WIDTH 32 MEM_SIZE 10000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict spillage_from_neigh_1 { MEM_WIDTH 32 MEM_SIZE 10000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict spillage_from_neigh_2 { MEM_WIDTH 32 MEM_SIZE 10000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict spillage_from_neigh_3 { MEM_WIDTH 32 MEM_SIZE 10000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict water_level { MEM_WIDTH 32 MEM_SIZE 3400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict water_level_1 { MEM_WIDTH 32 MEM_SIZE 3400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict water_level_2 { MEM_WIDTH 32 MEM_SIZE 3400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ p_reload44 int 416 regular  }
	{ spillage_flag float 32 regular {array 2500 { 1 3 } 1 1 }  }
	{ spillage_level float 32 regular {array 2500 { 1 3 } 1 1 }  }
	{ spillage_from_neigh float 32 regular {array 2500 { 1 3 } 1 1 }  }
	{ spillage_from_neigh_1 float 32 regular {array 2500 { 1 3 } 1 1 }  }
	{ spillage_from_neigh_2 float 32 regular {array 2500 { 1 3 } 1 1 }  }
	{ spillage_from_neigh_3 float 32 regular {array 2500 { 1 3 } 1 1 }  }
	{ water_level int 32 regular {array 850 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ water_level_1 int 32 regular {array 850 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ water_level_2 int 32 regular {array 850 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ empty int 31 regular  }
	{ p_out int 416 regular {pointer 1}  }
	{ max_spillage_iter_3_out double 64 regular {pointer 2}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_reload44", "interface" : "wire", "bitwidth" : 416, "direction" : "READONLY"} , 
 	{ "Name" : "spillage_flag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "spillage_level", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "spillage_from_neigh", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "spillage_from_neigh_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "spillage_from_neigh_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "spillage_from_neigh_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "water_level", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "water_level_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "water_level_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 416, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_spillage_iter_3_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_reload44 sc_in sc_lv 416 signal 0 } 
	{ spillage_flag_address0 sc_out sc_lv 12 signal 1 } 
	{ spillage_flag_ce0 sc_out sc_logic 1 signal 1 } 
	{ spillage_flag_q0 sc_in sc_lv 32 signal 1 } 
	{ spillage_level_address0 sc_out sc_lv 12 signal 2 } 
	{ spillage_level_ce0 sc_out sc_logic 1 signal 2 } 
	{ spillage_level_q0 sc_in sc_lv 32 signal 2 } 
	{ spillage_from_neigh_address0 sc_out sc_lv 12 signal 3 } 
	{ spillage_from_neigh_ce0 sc_out sc_logic 1 signal 3 } 
	{ spillage_from_neigh_q0 sc_in sc_lv 32 signal 3 } 
	{ spillage_from_neigh_1_address0 sc_out sc_lv 12 signal 4 } 
	{ spillage_from_neigh_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ spillage_from_neigh_1_q0 sc_in sc_lv 32 signal 4 } 
	{ spillage_from_neigh_2_address0 sc_out sc_lv 12 signal 5 } 
	{ spillage_from_neigh_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ spillage_from_neigh_2_q0 sc_in sc_lv 32 signal 5 } 
	{ spillage_from_neigh_3_address0 sc_out sc_lv 12 signal 6 } 
	{ spillage_from_neigh_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ spillage_from_neigh_3_q0 sc_in sc_lv 32 signal 6 } 
	{ water_level_address0 sc_out sc_lv 10 signal 7 } 
	{ water_level_ce0 sc_out sc_logic 1 signal 7 } 
	{ water_level_we0 sc_out sc_logic 1 signal 7 } 
	{ water_level_d0 sc_out sc_lv 32 signal 7 } 
	{ water_level_q0 sc_in sc_lv 32 signal 7 } 
	{ water_level_1_address0 sc_out sc_lv 10 signal 8 } 
	{ water_level_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ water_level_1_we0 sc_out sc_logic 1 signal 8 } 
	{ water_level_1_d0 sc_out sc_lv 32 signal 8 } 
	{ water_level_1_q0 sc_in sc_lv 32 signal 8 } 
	{ water_level_2_address0 sc_out sc_lv 10 signal 9 } 
	{ water_level_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ water_level_2_we0 sc_out sc_logic 1 signal 9 } 
	{ water_level_2_d0 sc_out sc_lv 32 signal 9 } 
	{ water_level_2_q0 sc_in sc_lv 32 signal 9 } 
	{ empty sc_in sc_lv 31 signal 10 } 
	{ p_out sc_out sc_lv 416 signal 11 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ max_spillage_iter_3_out_i sc_in sc_lv 64 signal 12 } 
	{ max_spillage_iter_3_out_o sc_out sc_lv 64 signal 12 } 
	{ max_spillage_iter_3_out_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ grp_fu_464_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_464_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_464_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_464_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_469_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_469_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_469_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_469_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_474_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_474_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_474_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_474_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_497_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_497_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_497_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_503_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_503_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_503_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_503_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_503_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_520_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_520_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_520_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_520_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_520_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1444_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1444_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1444_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1444_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1444_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1444_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1444_p_idle sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_reload44", "direction": "in", "datatype": "sc_lv", "bitwidth":416, "type": "signal", "bundle":{"name": "p_reload44", "role": "default" }} , 
 	{ "name": "spillage_flag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "spillage_flag", "role": "address0" }} , 
 	{ "name": "spillage_flag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "spillage_flag", "role": "ce0" }} , 
 	{ "name": "spillage_flag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "spillage_flag", "role": "q0" }} , 
 	{ "name": "spillage_level_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "spillage_level", "role": "address0" }} , 
 	{ "name": "spillage_level_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "spillage_level", "role": "ce0" }} , 
 	{ "name": "spillage_level_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "spillage_level", "role": "q0" }} , 
 	{ "name": "spillage_from_neigh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "spillage_from_neigh", "role": "address0" }} , 
 	{ "name": "spillage_from_neigh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "spillage_from_neigh", "role": "ce0" }} , 
 	{ "name": "spillage_from_neigh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "spillage_from_neigh", "role": "q0" }} , 
 	{ "name": "spillage_from_neigh_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "spillage_from_neigh_1", "role": "address0" }} , 
 	{ "name": "spillage_from_neigh_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "spillage_from_neigh_1", "role": "ce0" }} , 
 	{ "name": "spillage_from_neigh_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "spillage_from_neigh_1", "role": "q0" }} , 
 	{ "name": "spillage_from_neigh_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "spillage_from_neigh_2", "role": "address0" }} , 
 	{ "name": "spillage_from_neigh_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "spillage_from_neigh_2", "role": "ce0" }} , 
 	{ "name": "spillage_from_neigh_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "spillage_from_neigh_2", "role": "q0" }} , 
 	{ "name": "spillage_from_neigh_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "spillage_from_neigh_3", "role": "address0" }} , 
 	{ "name": "spillage_from_neigh_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "spillage_from_neigh_3", "role": "ce0" }} , 
 	{ "name": "spillage_from_neigh_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "spillage_from_neigh_3", "role": "q0" }} , 
 	{ "name": "water_level_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "water_level", "role": "address0" }} , 
 	{ "name": "water_level_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "water_level", "role": "ce0" }} , 
 	{ "name": "water_level_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "water_level", "role": "we0" }} , 
 	{ "name": "water_level_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "water_level", "role": "d0" }} , 
 	{ "name": "water_level_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "water_level", "role": "q0" }} , 
 	{ "name": "water_level_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "water_level_1", "role": "address0" }} , 
 	{ "name": "water_level_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "water_level_1", "role": "ce0" }} , 
 	{ "name": "water_level_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "water_level_1", "role": "we0" }} , 
 	{ "name": "water_level_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "water_level_1", "role": "d0" }} , 
 	{ "name": "water_level_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "water_level_1", "role": "q0" }} , 
 	{ "name": "water_level_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "water_level_2", "role": "address0" }} , 
 	{ "name": "water_level_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "water_level_2", "role": "ce0" }} , 
 	{ "name": "water_level_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "water_level_2", "role": "we0" }} , 
 	{ "name": "water_level_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "water_level_2", "role": "d0" }} , 
 	{ "name": "water_level_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "water_level_2", "role": "q0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":416, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "max_spillage_iter_3_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max_spillage_iter_3_out", "role": "i" }} , 
 	{ "name": "max_spillage_iter_3_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max_spillage_iter_3_out", "role": "o" }} , 
 	{ "name": "max_spillage_iter_3_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "max_spillage_iter_3_out", "role": "o_ap_vld" }} , 
 	{ "name": "grp_fu_464_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_464_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_464_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_464_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_464_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_469_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_469_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_469_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_469_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_469_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_469_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_469_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_469_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_474_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_474_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_474_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_474_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_474_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_497_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_497_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_497_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_497_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_497_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_497_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_503_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_503_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_503_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_503_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_503_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_520_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_520_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_520_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_520_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_520_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_520_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_520_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_520_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_520_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_520_p_ce", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_din1", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_dout0", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_ce", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_start", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_ready", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_done", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_idle", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1444_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1444_p_din1", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1444_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1444_p_dout0", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1444_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1444_p_ce", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1444_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1444_p_start", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1444_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1444_p_ready", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1444_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1444_p_done", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1444_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1444_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5019", "EstimateLatencyMax" : "5019",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload44", "Type" : "None", "Direction" : "I"},
			{"Name" : "spillage_flag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "spillage_level", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "spillage_from_neigh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "spillage_from_neigh_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "spillage_from_neigh_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "spillage_from_neigh_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "water_level", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "water_level_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "water_level_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_spillage_iter_3_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "PROPAGATION_ROWS_PROPAGATION_COLS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i32_fu_309", "Parent" : "0",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U156", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U157", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_6ns_3ns_2_10_1_U161", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_8ns_13_1_1_U162", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_32_1_1_U163", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_6ns_6ns_12_4_1_U164", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS {
		p_reload44 {Type I LastRead 0 FirstWrite -1}
		spillage_flag {Type I LastRead 3 FirstWrite -1}
		spillage_level {Type I LastRead 6 FirstWrite -1}
		spillage_from_neigh {Type I LastRead 3 FirstWrite -1}
		spillage_from_neigh_1 {Type I LastRead 3 FirstWrite -1}
		spillage_from_neigh_2 {Type I LastRead 3 FirstWrite -1}
		spillage_from_neigh_3 {Type I LastRead 3 FirstWrite -1}
		water_level {Type IO LastRead 2 FirstWrite 19}
		water_level_1 {Type IO LastRead 2 FirstWrite 19}
		water_level_2 {Type IO LastRead 2 FirstWrite 19}
		empty {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 17}
		max_spillage_iter_3_out {Type IO LastRead 15 FirstWrite 0}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5019", "Max" : "5019"}
	, {"Name" : "Interval", "Min" : "5019", "Max" : "5019"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_reload44 { ap_none {  { p_reload44 in_data 0 416 } } }
	spillage_flag { ap_memory {  { spillage_flag_address0 mem_address 1 12 }  { spillage_flag_ce0 mem_ce 1 1 }  { spillage_flag_q0 mem_dout 0 32 } } }
	spillage_level { ap_memory {  { spillage_level_address0 mem_address 1 12 }  { spillage_level_ce0 mem_ce 1 1 }  { spillage_level_q0 mem_dout 0 32 } } }
	spillage_from_neigh { ap_memory {  { spillage_from_neigh_address0 mem_address 1 12 }  { spillage_from_neigh_ce0 mem_ce 1 1 }  { spillage_from_neigh_q0 mem_dout 0 32 } } }
	spillage_from_neigh_1 { ap_memory {  { spillage_from_neigh_1_address0 mem_address 1 12 }  { spillage_from_neigh_1_ce0 mem_ce 1 1 }  { spillage_from_neigh_1_q0 mem_dout 0 32 } } }
	spillage_from_neigh_2 { ap_memory {  { spillage_from_neigh_2_address0 mem_address 1 12 }  { spillage_from_neigh_2_ce0 mem_ce 1 1 }  { spillage_from_neigh_2_q0 mem_dout 0 32 } } }
	spillage_from_neigh_3 { ap_memory {  { spillage_from_neigh_3_address0 mem_address 1 12 }  { spillage_from_neigh_3_ce0 mem_ce 1 1 }  { spillage_from_neigh_3_q0 mem_dout 0 32 } } }
	water_level { ap_memory {  { water_level_address0 mem_address 1 10 }  { water_level_ce0 mem_ce 1 1 }  { water_level_we0 mem_we 1 1 }  { water_level_d0 mem_din 1 32 }  { water_level_q0 mem_dout 0 32 } } }
	water_level_1 { ap_memory {  { water_level_1_address0 mem_address 1 10 }  { water_level_1_ce0 mem_ce 1 1 }  { water_level_1_we0 mem_we 1 1 }  { water_level_1_d0 mem_din 1 32 }  { water_level_1_q0 mem_dout 0 32 } } }
	water_level_2 { ap_memory {  { water_level_2_address0 mem_address 1 10 }  { water_level_2_ce0 mem_ce 1 1 }  { water_level_2_we0 mem_we 1 1 }  { water_level_2_d0 mem_din 1 32 }  { water_level_2_q0 mem_dout 0 32 } } }
	empty { ap_none {  { empty in_data 0 31 } } }
	p_out { ap_vld {  { p_out out_data 1 416 }  { p_out_ap_vld out_vld 1 1 } } }
	max_spillage_iter_3_out { ap_ovld {  { max_spillage_iter_3_out_i in_data 0 64 }  { max_spillage_iter_3_out_o out_data 1 64 }  { max_spillage_iter_3_out_o_ap_vld out_vld 1 1 } } }
}
