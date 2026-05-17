set ModuleHierarchy {[{
"Name" : "do_compute","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_316","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_53_1_VITIS_LOOP_54_2","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17_fu_344","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_249_16_VITIS_LOOP_250_17","ID" : "4","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_70_4","ID" : "5","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_do_compute_Pipeline_VITIS_LOOP_76_5_fu_338","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_76_5","ID" : "7","Type" : "pipeline"},]},
	{"Name" : "grp_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10_fu_354","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_109_9_VITIS_LOOP_110_10","ID" : "9","Type" : "pipeline",
			"SubInsts" : [
			{"Name" : "p_hls_fptosi_float_i32","ID" : "10","Type" : "pipeline"},
			{"Name" : "p_hls_fptosi_float_i32","ID" : "11","Type" : "pipeline"},]},]},
	{"Name" : "grp_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS_fu_423","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PROPAGATION_ROWS_PROPAGATION_COLS","ID" : "13","Type" : "pipeline",
			"SubInsts" : [
			{"Name" : "p_hls_fptosi_float_i32","ID" : "14","Type" : "pipeline"},
			{"Name" : "p_hls_fptosi_float_i32","ID" : "15","Type" : "pipeline"},
			{"Name" : "grp_p_hls_fptosi_float_i32_fu_309","ID" : "16","Type" : "pipeline"},]},]},
	{"Name" : "grp_do_compute_Pipeline_VITIS_LOOP_234_13_VITIS_LOOP_235_14_fu_440","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_234_13_VITIS_LOOP_235_14","ID" : "18","Type" : "pipeline"},]},],
	"SubLoops" : [
	{"Name" : "VITIS_LOOP_83_6","ID" : "19","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_92_7","ID" : "20","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_do_compute_Pipeline_VITIS_LOOP_93_8_fu_372","ID" : "21","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_93_8","ID" : "22","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "grp_pow_generic_double_s_fu_323","ID" : "23","Type" : "pipeline"},
					{"Name" : "p_hls_fptosi_float_i32","ID" : "24","Type" : "pipeline"},]},]},]},]},]},]
}]}