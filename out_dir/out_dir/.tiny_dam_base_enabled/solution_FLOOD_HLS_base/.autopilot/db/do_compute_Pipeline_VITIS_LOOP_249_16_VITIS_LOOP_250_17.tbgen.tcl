set moduleName do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17
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
set C_modelName {do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict water_level { MEM_WIDTH 32 MEM_SIZE 3400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict water_level_1 { MEM_WIDTH 32 MEM_SIZE 3400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict water_level_2 { MEM_WIDTH 32 MEM_SIZE 3400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ trunc_ln2 int 64 regular  }
	{ water_level int 32 regular {array 850 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ water_level_1 int 32 regular {array 850 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ water_level_2 int 32 regular {array 850 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ p_out float 32 regular {pointer 1}  }
	{ add55123_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "water_level", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "water_level_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "water_level_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add55123_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trunc_ln2 sc_in sc_lv 64 signal 0 } 
	{ water_level_address0 sc_out sc_lv 10 signal 1 } 
	{ water_level_ce0 sc_out sc_logic 1 signal 1 } 
	{ water_level_q0 sc_in sc_lv 32 signal 1 } 
	{ water_level_1_address0 sc_out sc_lv 10 signal 2 } 
	{ water_level_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ water_level_1_q0 sc_in sc_lv 32 signal 2 } 
	{ water_level_2_address0 sc_out sc_lv 10 signal 3 } 
	{ water_level_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ water_level_2_q0 sc_in sc_lv 32 signal 3 } 
	{ p_out sc_out sc_lv 32 signal 4 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ add55123_out sc_out sc_lv 64 signal 5 } 
	{ add55123_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ grp_fu_481_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_481_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_481_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_481_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1441_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1441_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1441_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_503_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_503_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_503_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_503_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_503_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "trunc_ln2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "trunc_ln2", "role": "default" }} , 
 	{ "name": "water_level_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "water_level", "role": "address0" }} , 
 	{ "name": "water_level_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "water_level", "role": "ce0" }} , 
 	{ "name": "water_level_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "water_level", "role": "q0" }} , 
 	{ "name": "water_level_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "water_level_1", "role": "address0" }} , 
 	{ "name": "water_level_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "water_level_1", "role": "ce0" }} , 
 	{ "name": "water_level_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "water_level_1", "role": "q0" }} , 
 	{ "name": "water_level_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "water_level_2", "role": "address0" }} , 
 	{ "name": "water_level_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "water_level_2", "role": "ce0" }} , 
 	{ "name": "water_level_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "water_level_2", "role": "q0" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "add55123_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add55123_out", "role": "default" }} , 
 	{ "name": "add55123_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add55123_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_481_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_481_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_481_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_481_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_481_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_481_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_481_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_481_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1441_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1441_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1441_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1441_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1441_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1441_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_503_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_503_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_503_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_503_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_503_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_6ns_3ns_2_10_1_U188", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_8ns_13_1_1_U189", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_32_1_1_U190", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17 {
		trunc_ln2 {Type I LastRead 0 FirstWrite -1}
		water_level {Type I LastRead 2 FirstWrite -1}
		water_level_1 {Type I LastRead 2 FirstWrite -1}
		water_level_2 {Type I LastRead 2 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 25}
		add55123_out {Type O LastRead -1 FirstWrite 25}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5027", "Max" : "5027"}
	, {"Name" : "Interval", "Min" : "5027", "Max" : "5027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln2 { ap_none {  { trunc_ln2 in_data 0 64 } } }
	water_level { ap_memory {  { water_level_address0 mem_address 1 10 }  { water_level_ce0 mem_ce 1 1 }  { water_level_q0 mem_dout 0 32 } } }
	water_level_1 { ap_memory {  { water_level_1_address0 mem_address 1 10 }  { water_level_1_ce0 mem_ce 1 1 }  { water_level_1_q0 mem_dout 0 32 } } }
	water_level_2 { ap_memory {  { water_level_2_address0 mem_address 1 10 }  { water_level_2_ce0 mem_ce 1 1 }  { water_level_2_q0 mem_dout 0 32 } } }
	p_out { ap_vld {  { p_out out_data 1 32 }  { p_out_ap_vld out_vld 1 1 } } }
	add55123_out { ap_vld {  { add55123_out out_data 1 64 }  { add55123_out_ap_vld out_vld 1 1 } } }
}
