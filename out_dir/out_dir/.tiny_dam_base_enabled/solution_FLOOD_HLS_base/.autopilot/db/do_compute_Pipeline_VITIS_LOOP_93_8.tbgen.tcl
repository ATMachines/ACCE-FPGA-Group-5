set moduleName do_compute_Pipeline_VITIS_LOOP_93_8
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
set C_modelName {do_compute_Pipeline_VITIS_LOOP_93_8}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict p_clouds { MEM_WIDTH 224 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict water_level { MEM_WIDTH 32 MEM_SIZE 3400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict water_level_1 { MEM_WIDTH 32 MEM_SIZE 3400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict water_level_2 { MEM_WIDTH 32 MEM_SIZE 3400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ empty_67 int 416 regular  }
	{ col_start float 32 regular  }
	{ tmp_37 int 8 regular  }
	{ empty int 23 regular  }
	{ col_end float 32 regular  }
	{ p_clouds int 224 regular {array 7 { 1 3 } 1 1 }  }
	{ zext_ln83 int 3 regular  }
	{ bitcast_ln87 float 32 regular  }
	{ x_assign_1 double 64 regular  }
	{ p_clouds_load_1 int 95 regular  }
	{ trunc_ln97_1 int 23 regular  }
	{ bitcast_ln85_1 float 32 regular  }
	{ p_ex_factor int 32 regular {pointer 0}  }
	{ row_pos_3 float 32 regular  }
	{ water_level int 32 regular {array 850 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ water_level_1 int 32 regular {array 850 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ water_level_2 int 32 regular {array 850 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ p_out int 416 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty_67", "interface" : "wire", "bitwidth" : 416, "direction" : "READONLY"} , 
 	{ "Name" : "col_start", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_37", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "col_end", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_clouds", "interface" : "memory", "bitwidth" : 224, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln83", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln87", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_clouds_load_1", "interface" : "wire", "bitwidth" : 95, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln97_1", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln85_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ex_factor", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_pos_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "water_level", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "water_level_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "water_level_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 416, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty_67 sc_in sc_lv 416 signal 0 } 
	{ col_start sc_in sc_lv 32 signal 1 } 
	{ tmp_37 sc_in sc_lv 8 signal 2 } 
	{ empty sc_in sc_lv 23 signal 3 } 
	{ col_end sc_in sc_lv 32 signal 4 } 
	{ p_clouds_address0 sc_out sc_lv 3 signal 5 } 
	{ p_clouds_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_clouds_q0 sc_in sc_lv 224 signal 5 } 
	{ zext_ln83 sc_in sc_lv 3 signal 6 } 
	{ bitcast_ln87 sc_in sc_lv 32 signal 7 } 
	{ x_assign_1 sc_in sc_lv 64 signal 8 } 
	{ p_clouds_load_1 sc_in sc_lv 95 signal 9 } 
	{ trunc_ln97_1 sc_in sc_lv 23 signal 10 } 
	{ bitcast_ln85_1 sc_in sc_lv 32 signal 11 } 
	{ p_ex_factor sc_in sc_lv 32 signal 12 } 
	{ row_pos_3 sc_in sc_lv 32 signal 13 } 
	{ water_level_address0 sc_out sc_lv 10 signal 14 } 
	{ water_level_ce0 sc_out sc_logic 1 signal 14 } 
	{ water_level_we0 sc_out sc_logic 1 signal 14 } 
	{ water_level_d0 sc_out sc_lv 32 signal 14 } 
	{ water_level_q0 sc_in sc_lv 32 signal 14 } 
	{ water_level_1_address0 sc_out sc_lv 10 signal 15 } 
	{ water_level_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ water_level_1_we0 sc_out sc_logic 1 signal 15 } 
	{ water_level_1_d0 sc_out sc_lv 32 signal 15 } 
	{ water_level_1_q0 sc_in sc_lv 32 signal 15 } 
	{ water_level_2_address0 sc_out sc_lv 10 signal 16 } 
	{ water_level_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ water_level_2_we0 sc_out sc_logic 1 signal 16 } 
	{ water_level_2_d0 sc_out sc_lv 32 signal 16 } 
	{ water_level_2_q0 sc_in sc_lv 32 signal 16 } 
	{ p_out sc_out sc_lv 416 signal 17 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ grp_fu_450_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_450_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_450_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_450_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_450_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_464_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_464_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_464_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_464_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_481_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_481_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_481_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_481_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_497_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_497_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_497_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_503_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_503_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_503_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_503_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_503_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1433_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1433_p_din1 sc_out sc_lv 34 signal -1 } 
	{ grp_fu_1433_p_dout0 sc_in sc_lv 65 signal -1 } 
	{ grp_fu_1433_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_p_hls_fptosi_float_i32_fu_1437_p_idle sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty_67", "direction": "in", "datatype": "sc_lv", "bitwidth":416, "type": "signal", "bundle":{"name": "empty_67", "role": "default" }} , 
 	{ "name": "col_start", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_start", "role": "default" }} , 
 	{ "name": "tmp_37", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_37", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "col_end", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_end", "role": "default" }} , 
 	{ "name": "p_clouds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_clouds", "role": "address0" }} , 
 	{ "name": "p_clouds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_clouds", "role": "ce0" }} , 
 	{ "name": "p_clouds_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":224, "type": "signal", "bundle":{"name": "p_clouds", "role": "q0" }} , 
 	{ "name": "zext_ln83", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln83", "role": "default" }} , 
 	{ "name": "bitcast_ln87", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln87", "role": "default" }} , 
 	{ "name": "x_assign_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_assign_1", "role": "default" }} , 
 	{ "name": "p_clouds_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":95, "type": "signal", "bundle":{"name": "p_clouds_load_1", "role": "default" }} , 
 	{ "name": "trunc_ln97_1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "trunc_ln97_1", "role": "default" }} , 
 	{ "name": "bitcast_ln85_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln85_1", "role": "default" }} , 
 	{ "name": "p_ex_factor", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ex_factor", "role": "default" }} , 
 	{ "name": "row_pos_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_pos_3", "role": "default" }} , 
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
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":416, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_450_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_450_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_450_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_450_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_450_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_450_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_450_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_464_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_464_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_464_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_464_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_481_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_481_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_481_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_481_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_481_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_481_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_481_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_481_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_497_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_497_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_497_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_497_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_497_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_497_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_503_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_503_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_503_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_503_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_503_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1433_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1433_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1433_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":34, "type": "signal", "bundle":{"name": "grp_fu_1433_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1433_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":65, "type": "signal", "bundle":{"name": "grp_fu_1433_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1433_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1433_p_ce", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_din1", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_dout0", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_ce", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_start", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_ready", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_done", "role": "default" }} , 
 	{ "name": "grp_p_hls_fptosi_float_i32_fu_1437_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_p_hls_fptosi_float_i32_fu_1437_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "do_compute_Pipeline_VITIS_LOOP_93_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_clouds", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln83", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_clouds_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln97_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln85_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ex_factor", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_pos_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "water_level", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "water_level_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "water_level_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "72", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log0_lut_table_array_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_12s_80ns_90_5_0_U21", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_13s_71s_71_5_0_U22", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_40ns_40ns_80_2_0_U23", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_43ns_36ns_79_2_0_U24", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_49ns_44ns_93_3_0_U25", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_50ns_50ns_100_3_0_U26", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_54s_6ns_54_3_0_U27", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_73ns_6ns_79_5_0_U28", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_77ns_6ns_83_5_0_U29", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_82ns_6ns_88_5_0_U30", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_83ns_6ns_89_5_0_U31", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_87ns_6ns_93_5_0_U32", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_92ns_6ns_98_5_0_U33", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mul_71ns_4ns_75_5_0_U34", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.sparsemux_9_3_64_1_0_U35", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_323.mac_muladd_16s_15ns_19s_31_4_0_U36", "Parent" : "1"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U70", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_12_no_dsp_1_U73", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U74", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_21_no_dsp_1_U75", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_3ns_2_36_1_U77", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_32_1_1_U78", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	do_compute_Pipeline_VITIS_LOOP_93_8 {
		empty_67 {Type I LastRead 0 FirstWrite -1}
		col_start {Type I LastRead 0 FirstWrite -1}
		tmp_37 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		col_end {Type I LastRead 0 FirstWrite -1}
		p_clouds {Type I LastRead 130 FirstWrite -1}
		zext_ln83 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln87 {Type I LastRead 0 FirstWrite -1}
		x_assign_1 {Type I LastRead 0 FirstWrite -1}
		p_clouds_load_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln97_1 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln85_1 {Type I LastRead 0 FirstWrite -1}
		p_ex_factor {Type I LastRead 157 FirstWrite -1}
		row_pos_3 {Type I LastRead 0 FirstWrite -1}
		water_level {Type IO LastRead 185 FirstWrite 192}
		water_level_1 {Type IO LastRead 185 FirstWrite 192}
		water_level_2 {Type IO LastRead 185 FirstWrite 192}
		p_out {Type O LastRead -1 FirstWrite 184}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty_67 { ap_none {  { empty_67 in_data 0 416 } } }
	col_start { ap_none {  { col_start in_data 0 32 } } }
	tmp_37 { ap_none {  { tmp_37 in_data 0 8 } } }
	empty { ap_none {  { empty in_data 0 23 } } }
	col_end { ap_none {  { col_end in_data 0 32 } } }
	p_clouds { ap_memory {  { p_clouds_address0 mem_address 1 3 }  { p_clouds_ce0 mem_ce 1 1 }  { p_clouds_q0 mem_dout 0 224 } } }
	zext_ln83 { ap_none {  { zext_ln83 in_data 0 3 } } }
	bitcast_ln87 { ap_none {  { bitcast_ln87 in_data 0 32 } } }
	x_assign_1 { ap_none {  { x_assign_1 in_data 0 64 } } }
	p_clouds_load_1 { ap_none {  { p_clouds_load_1 in_data 0 95 } } }
	trunc_ln97_1 { ap_none {  { trunc_ln97_1 in_data 0 23 } } }
	bitcast_ln85_1 { ap_none {  { bitcast_ln85_1 in_data 0 32 } } }
	p_ex_factor { ap_none {  { p_ex_factor in_data 0 32 } } }
	row_pos_3 { ap_none {  { row_pos_3 in_data 0 32 } } }
	water_level { ap_memory {  { water_level_address0 mem_address 1 10 }  { water_level_ce0 mem_ce 1 1 }  { water_level_we0 mem_we 1 1 }  { water_level_d0 mem_din 1 32 }  { water_level_q0 mem_dout 0 32 } } }
	water_level_1 { ap_memory {  { water_level_1_address0 mem_address 1 10 }  { water_level_1_ce0 mem_ce 1 1 }  { water_level_1_we0 mem_we 1 1 }  { water_level_1_d0 mem_din 1 32 }  { water_level_1_q0 mem_dout 0 32 } } }
	water_level_2 { ap_memory {  { water_level_2_address0 mem_address 1 10 }  { water_level_2_ce0 mem_ce 1 1 }  { water_level_2_we0 mem_we 1 1 }  { water_level_2_d0 mem_din 1 32 }  { water_level_2_q0 mem_dout 0 32 } } }
	p_out { ap_vld {  { p_out out_data 1 416 }  { p_out_ap_vld out_vld 1 1 } } }
}
