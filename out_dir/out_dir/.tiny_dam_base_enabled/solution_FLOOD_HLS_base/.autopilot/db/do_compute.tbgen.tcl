set moduleName do_compute
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {do_compute}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict p_ground { MEM_WIDTH 32 MEM_SIZE 10000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict p_clouds { MEM_WIDTH 224 MEM_SIZE 196 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ p_ground int 32 regular {array 2500 { 1 1 } 1 1 }  }
	{ p_threshold int 32 regular {pointer 0}  }
	{ p_num_minutes int 32 regular {pointer 0}  }
	{ p_ex_factor int 32 regular {pointer 0}  }
	{ p_clouds int 224 regular {array 7 { 2 1 } 1 1 }  }
	{ r int 416 regular {pointer 2}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_ground", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_threshold", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_num_minutes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_ex_factor", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_clouds", "interface" : "memory", "bitwidth" : 224, "direction" : "READWRITE"} , 
 	{ "Name" : "r", "interface" : "wire", "bitwidth" : 416, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_ground_address0 sc_out sc_lv 12 signal 0 } 
	{ p_ground_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_ground_q0 sc_in sc_lv 32 signal 0 } 
	{ p_ground_address1 sc_out sc_lv 12 signal 0 } 
	{ p_ground_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_ground_q1 sc_in sc_lv 32 signal 0 } 
	{ p_threshold sc_in sc_lv 32 signal 1 } 
	{ p_num_minutes sc_in sc_lv 32 signal 2 } 
	{ p_ex_factor sc_in sc_lv 32 signal 3 } 
	{ p_clouds_address0 sc_out sc_lv 3 signal 4 } 
	{ p_clouds_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_clouds_we0 sc_out sc_logic 1 signal 4 } 
	{ p_clouds_d0 sc_out sc_lv 224 signal 4 } 
	{ p_clouds_q0 sc_in sc_lv 224 signal 4 } 
	{ p_clouds_address1 sc_out sc_lv 3 signal 4 } 
	{ p_clouds_ce1 sc_out sc_logic 1 signal 4 } 
	{ p_clouds_q1 sc_in sc_lv 224 signal 4 } 
	{ r_i sc_in sc_lv 416 signal 5 } 
	{ r_o sc_out sc_lv 416 signal 5 } 
	{ r_o_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_ground_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ground", "role": "address0" }} , 
 	{ "name": "p_ground_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ground", "role": "ce0" }} , 
 	{ "name": "p_ground_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ground", "role": "q0" }} , 
 	{ "name": "p_ground_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_ground", "role": "address1" }} , 
 	{ "name": "p_ground_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_ground", "role": "ce1" }} , 
 	{ "name": "p_ground_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ground", "role": "q1" }} , 
 	{ "name": "p_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_threshold", "role": "default" }} , 
 	{ "name": "p_num_minutes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_num_minutes", "role": "default" }} , 
 	{ "name": "p_ex_factor", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_ex_factor", "role": "default" }} , 
 	{ "name": "p_clouds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_clouds", "role": "address0" }} , 
 	{ "name": "p_clouds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_clouds", "role": "ce0" }} , 
 	{ "name": "p_clouds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_clouds", "role": "we0" }} , 
 	{ "name": "p_clouds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":224, "type": "signal", "bundle":{"name": "p_clouds", "role": "d0" }} , 
 	{ "name": "p_clouds_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":224, "type": "signal", "bundle":{"name": "p_clouds", "role": "q0" }} , 
 	{ "name": "p_clouds_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_clouds", "role": "address1" }} , 
 	{ "name": "p_clouds_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_clouds", "role": "ce1" }} , 
 	{ "name": "p_clouds_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":224, "type": "signal", "bundle":{"name": "p_clouds", "role": "q1" }} , 
 	{ "name": "r_i", "direction": "in", "datatype": "sc_lv", "bitwidth":416, "type": "signal", "bundle":{"name": "r", "role": "i" }} , 
 	{ "name": "r_o", "direction": "out", "datatype": "sc_lv", "bitwidth":416, "type": "signal", "bundle":{"name": "r", "role": "o" }} , 
 	{ "name": "r_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "r", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "15", "17", "22", "41", "78", "87", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108"],
		"CDFG" : "do_compute",
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
			{"Name" : "p_ground", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354", "Port" : "p_ground", "Inst_start_state" : "13", "Inst_end_state" : "68"}]},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_num_minutes", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ex_factor", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "p_ex_factor", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "p_clouds", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "p_clouds", "Inst_start_state" : "65", "Inst_end_state" : "66"},
					{"ID" : "15", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_76_5_fu_338", "Port" : "p_clouds", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "r", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array", "Inst_start_state" : "65", "Inst_end_state" : "66"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "74", "FirstState" : "ap_ST_fsm_state39", "LastState" : ["ap_ST_fsm_state67"], "QuitState" : ["ap_ST_fsm_state40"], "PreState" : ["ap_ST_fsm_state38"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_83_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "74", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state40"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state68"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_70_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "74", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state72"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state73"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.water_level_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.water_level_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.water_level_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.spillage_flag_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.spillage_level_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.spillage_from_neigh_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.spillage_from_neigh_1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.spillage_from_neigh_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.spillage_from_neigh_3_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_316", "Parent" : "0", "Child" : ["11", "12", "13", "14"],
		"CDFG" : "do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2510", "EstimateLatencyMax" : "2510",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "spillage_flag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_level", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "water_level", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "water_level_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "water_level_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_1_VITIS_LOOP_54_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_316.urem_6ns_3ns_2_10_1_U1", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_316.mul_6ns_8ns_13_1_1_U2", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_316.mac_muladd_6ns_6ns_6ns_12_4_1_U3", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_316.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_76_5_fu_338", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "do_compute_Pipeline_VITIS_LOOP_76_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_clouds", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter21", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter21", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_76_5_fu_338.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17_fu_344", "Parent" : "0", "Child" : ["18", "19", "20", "21"],
		"CDFG" : "do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5027", "EstimateLatencyMax" : "5027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "water_level", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "water_level_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "water_level_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add55123_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_249_16_VITIS_LOOP_250_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17_fu_344.urem_6ns_3ns_2_10_1_U188", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17_fu_344.mul_6ns_8ns_13_1_1_U189", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17_fu_344.sparsemux_7_2_32_1_1_U190", "Parent" : "17"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17_fu_344.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7608", "EstimateLatencyMax" : "7608",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ground", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "spillage_flag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_level", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "water_level", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "water_level_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "water_level_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "spillage_from_neigh", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_109_9_VITIS_LOOP_110_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter36", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter35", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.faddfsub_32ns_32ns_32_7_full_dsp_1_U106", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.faddfsub_32ns_32ns_32_7_full_dsp_1_U107", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.fsub_32ns_32ns_32_7_full_dsp_1_U108", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.sitofp_32ns_32_4_no_dsp_1_U115", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.fcmp_32ns_32ns_1_2_no_dsp_1_U120", "Parent" : "22"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.fcmp_32ns_32ns_1_2_no_dsp_1_U121", "Parent" : "22"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.urem_6ns_3ns_2_10_1_U124", "Parent" : "22"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.mul_6ns_8ns_13_1_1_U125", "Parent" : "22"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.sparsemux_7_2_32_1_1_U126", "Parent" : "22"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.mul_6ns_8ns_13_1_1_U127", "Parent" : "22"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.sparsemux_7_2_32_1_1_U128", "Parent" : "22"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.sparsemux_7_2_32_1_1_U129", "Parent" : "22"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.sparsemux_7_2_32_1_1_x_U130", "Parent" : "22"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.sparsemux_7_2_32_1_1_x_U131", "Parent" : "22"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.mul_6ns_7ns_12_1_1_U132", "Parent" : "22"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.mul_7ns_7ns_12_1_1_U133", "Parent" : "22"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.mul_6ns_7ns_12_1_1_U134", "Parent" : "22"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372", "Parent" : "0", "Child" : ["42", "71", "72", "73", "74", "75", "76", "77"],
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
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_pow_generic_double_s_fu_323", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array", "Inst_start_state" : "28", "Inst_end_state" : "101"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323", "Parent" : "41", "Child" : ["43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70"],
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log0_lut_table_array_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_U", "Parent" : "42"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_U", "Parent" : "42"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_U", "Parent" : "42"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_U", "Parent" : "42"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_U", "Parent" : "42"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_U", "Parent" : "42"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_U", "Parent" : "42"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_U", "Parent" : "42"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_U", "Parent" : "42"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_12s_80ns_90_5_0_U21", "Parent" : "42"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_13s_71s_71_5_0_U22", "Parent" : "42"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_40ns_40ns_80_2_0_U23", "Parent" : "42"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_43ns_36ns_79_2_0_U24", "Parent" : "42"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_49ns_44ns_93_3_0_U25", "Parent" : "42"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_50ns_50ns_100_3_0_U26", "Parent" : "42"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_54s_6ns_54_3_0_U27", "Parent" : "42"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_73ns_6ns_79_5_0_U28", "Parent" : "42"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_77ns_6ns_83_5_0_U29", "Parent" : "42"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_82ns_6ns_88_5_0_U30", "Parent" : "42"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_83ns_6ns_89_5_0_U31", "Parent" : "42"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_87ns_6ns_93_5_0_U32", "Parent" : "42"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_92ns_6ns_98_5_0_U33", "Parent" : "42"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mul_71ns_4ns_75_5_0_U34", "Parent" : "42"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.sparsemux_9_3_64_1_0_U35", "Parent" : "42"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.grp_pow_generic_double_s_fu_323.mac_muladd_16s_15ns_19s_31_4_0_U36", "Parent" : "42"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.fptrunc_64ns_32_2_no_dsp_1_U70", "Parent" : "41"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.fsqrt_32ns_32ns_32_12_no_dsp_1_U73", "Parent" : "41"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.dadd_64ns_64ns_64_5_full_dsp_1_U74", "Parent" : "41"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.dsqrt_64ns_64ns_64_21_no_dsp_1_U75", "Parent" : "41"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.urem_32ns_3ns_2_36_1_U77", "Parent" : "41"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.sparsemux_7_2_32_1_1_U78", "Parent" : "41"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423", "Parent" : "0", "Child" : ["79", "80", "81", "82", "83", "84", "85", "86"],
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
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423.grp_p_hls_fptosi_float_i32_fu_309", "Parent" : "78",
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
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423.fmul_32ns_32ns_32_4_max_dsp_1_U156", "Parent" : "78"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423.fmul_32ns_32ns_32_4_max_dsp_1_U157", "Parent" : "78"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423.urem_6ns_3ns_2_10_1_U161", "Parent" : "78"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423.mul_6ns_8ns_13_1_1_U162", "Parent" : "78"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423.sparsemux_7_2_32_1_1_U163", "Parent" : "78"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423.mac_muladd_6ns_6ns_6ns_12_4_1_U164", "Parent" : "78"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_234_13_VITIS_LOOP_235_14_fu_440", "Parent" : "0", "Child" : ["88", "89"],
		"CDFG" : "do_compute_Pipeline_VITIS_LOOP_234_13_VITIS_LOOP_235_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2504", "EstimateLatencyMax" : "2504",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "spillage_flag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_level", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "spillage_from_neigh_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_234_13_VITIS_LOOP_235_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_234_13_VITIS_LOOP_235_14_fu_440.mac_muladd_6ns_6ns_6ns_12_4_1_U178", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_do_compute_Pipeline_VITIS_LOOP_234_13_VITIS_LOOP_235_14_fu_440.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i32_fu_1437", "Parent" : "0",
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
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_hls_fptosi_float_i32_fu_1444", "Parent" : "0",
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
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_7_full_dsp_1_U197", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_7_full_dsp_1_U198", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_7_full_dsp_1_U199", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U200", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U201", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U202", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U203", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U204", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U205", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U206", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U207", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U208", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U209", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U210", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U211", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_34ns_65_2_1_U212", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_4_no_dsp_1_U213", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	do_compute {
		p_ground {Type I LastRead 28 FirstWrite -1}
		p_threshold {Type I LastRead 0 FirstWrite -1}
		p_num_minutes {Type I LastRead 8 FirstWrite -1}
		p_ex_factor {Type I LastRead 157 FirstWrite -1}
		p_clouds {Type IO LastRead 130 FirstWrite -1}
		r {Type IO LastRead 0 FirstWrite 12}
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
	do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2 {
		spillage_flag {Type O LastRead -1 FirstWrite 3}
		spillage_level {Type O LastRead -1 FirstWrite 3}
		spillage_from_neigh {Type O LastRead -1 FirstWrite 3}
		spillage_from_neigh_1 {Type O LastRead -1 FirstWrite 3}
		spillage_from_neigh_2 {Type O LastRead -1 FirstWrite 3}
		spillage_from_neigh_3 {Type O LastRead -1 FirstWrite 3}
		water_level {Type O LastRead -1 FirstWrite 9}
		water_level_1 {Type O LastRead -1 FirstWrite 9}
		water_level_2 {Type O LastRead -1 FirstWrite 9}}
	do_compute_Pipeline_VITIS_LOOP_76_5 {
		p_clouds {Type IO LastRead 0 FirstWrite 21}}
	do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17 {
		trunc_ln2 {Type I LastRead 0 FirstWrite -1}
		water_level {Type I LastRead 2 FirstWrite -1}
		water_level_1 {Type I LastRead 2 FirstWrite -1}
		water_level_2 {Type I LastRead 2 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 25}
		add55123_out {Type O LastRead -1 FirstWrite 25}}
	do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10 {
		empty {Type I LastRead 0 FirstWrite -1}
		p_ground {Type I LastRead 28 FirstWrite -1}
		spillage_flag {Type O LastRead -1 FirstWrite 87}
		spillage_level {Type O LastRead -1 FirstWrite 87}
		water_level {Type I LastRead 13 FirstWrite -1}
		water_level_1 {Type I LastRead 13 FirstWrite -1}
		water_level_2 {Type I LastRead 13 FirstWrite -1}
		spillage_from_neigh {Type O LastRead -1 FirstWrite 98}
		spillage_from_neigh_1 {Type O LastRead -1 FirstWrite 99}
		spillage_from_neigh_2 {Type O LastRead -1 FirstWrite 101}
		spillage_from_neigh_3 {Type O LastRead -1 FirstWrite 102}
		p_out {Type O LastRead -1 FirstWrite 106}}
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
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array {Type I LastRead -1 FirstWrite -1}}
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
		x {Type I LastRead 0 FirstWrite -1}}
	do_compute_Pipeline_VITIS_LOOP_234_13_VITIS_LOOP_235_14 {
		spillage_flag {Type O LastRead -1 FirstWrite 3}
		spillage_level {Type O LastRead -1 FirstWrite 3}
		spillage_from_neigh {Type O LastRead -1 FirstWrite 3}
		spillage_from_neigh_1 {Type O LastRead -1 FirstWrite 3}
		spillage_from_neigh_2 {Type O LastRead -1 FirstWrite 3}
		spillage_from_neigh_3 {Type O LastRead -1 FirstWrite 3}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_ground { ap_memory {  { p_ground_address0 mem_address 1 12 }  { p_ground_ce0 mem_ce 1 1 }  { p_ground_q0 mem_dout 0 32 }  { p_ground_address1 MemPortADDR2 1 12 }  { p_ground_ce1 MemPortCE2 1 1 }  { p_ground_q1 MemPortDOUT2 0 32 } } }
	p_threshold { ap_none {  { p_threshold in_data 0 32 } } }
	p_num_minutes { ap_none {  { p_num_minutes in_data 0 32 } } }
	p_ex_factor { ap_none {  { p_ex_factor in_data 0 32 } } }
	p_clouds { ap_memory {  { p_clouds_address0 mem_address 1 3 }  { p_clouds_ce0 mem_ce 1 1 }  { p_clouds_we0 mem_we 1 1 }  { p_clouds_d0 mem_din 1 224 }  { p_clouds_q0 mem_dout 0 224 }  { p_clouds_address1 MemPortADDR2 1 3 }  { p_clouds_ce1 MemPortCE2 1 1 }  { p_clouds_q1 MemPortDOUT2 0 224 } } }
	r { ap_ovld {  { r_i in_data 0 416 }  { r_o out_data 1 416 }  { r_o_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
