set SynModuleInfo {
  {SRCNAME do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2 MODELNAME do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2 RTLNAME do_compute_do_compute_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2
    SUBMODULES {
      {MODELNAME do_compute_urem_6ns_3ns_2_10_1 RTLNAME do_compute_urem_6ns_3ns_2_10_1 BINDTYPE op TYPE urem IMPL auto LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_6ns_8ns_13_1_1 RTLNAME do_compute_mul_6ns_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mac_muladd_6ns_6ns_6ns_12_4_1 RTLNAME do_compute_mac_muladd_6ns_6ns_6ns_12_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME do_compute_flow_control_loop_pipe_sequential_init RTLNAME do_compute_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME do_compute_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME do_compute_Pipeline_VITIS_LOOP_76_5 MODELNAME do_compute_Pipeline_VITIS_LOOP_76_5 RTLNAME do_compute_do_compute_Pipeline_VITIS_LOOP_76_5}
  {SRCNAME pow_generic<double> MODELNAME pow_generic_double_s RTLNAME do_compute_pow_generic_double_s
    SUBMODULES {
      {MODELNAME do_compute_mul_12s_80ns_90_5_0 RTLNAME do_compute_mul_12s_80ns_90_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_13s_71s_71_5_0 RTLNAME do_compute_mul_13s_71s_71_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_40ns_40ns_80_2_0 RTLNAME do_compute_mul_40ns_40ns_80_2_0 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_43ns_36ns_79_2_0 RTLNAME do_compute_mul_43ns_36ns_79_2_0 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_49ns_44ns_93_3_0 RTLNAME do_compute_mul_49ns_44ns_93_3_0 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_50ns_50ns_100_3_0 RTLNAME do_compute_mul_50ns_50ns_100_3_0 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_54s_6ns_54_3_0 RTLNAME do_compute_mul_54s_6ns_54_3_0 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_73ns_6ns_79_5_0 RTLNAME do_compute_mul_73ns_6ns_79_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_77ns_6ns_83_5_0 RTLNAME do_compute_mul_77ns_6ns_83_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_82ns_6ns_88_5_0 RTLNAME do_compute_mul_82ns_6ns_88_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_83ns_6ns_89_5_0 RTLNAME do_compute_mul_83ns_6ns_89_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_87ns_6ns_93_5_0 RTLNAME do_compute_mul_87ns_6ns_93_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_92ns_6ns_98_5_0 RTLNAME do_compute_mul_92ns_6ns_98_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_71ns_4ns_75_5_0 RTLNAME do_compute_mul_71ns_4ns_75_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_sparsemux_9_3_64_1_0 RTLNAME do_compute_sparsemux_9_3_64_1_0 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME do_compute_mac_muladd_16s_15ns_19s_31_4_0 RTLNAME do_compute_mac_muladd_16s_15ns_19s_31_4_0 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_ROM_cud RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_ROM_cud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 RTLNAME do_compute_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME __hls_fptosi_float_i32 MODELNAME p_hls_fptosi_float_i32 RTLNAME do_compute_p_hls_fptosi_float_i32}
  {SRCNAME do_compute_Pipeline_VITIS_LOOP_93_8 MODELNAME do_compute_Pipeline_VITIS_LOOP_93_8 RTLNAME do_compute_do_compute_Pipeline_VITIS_LOOP_93_8
    SUBMODULES {
      {MODELNAME do_compute_fptrunc_64ns_32_2_no_dsp_1 RTLNAME do_compute_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_fsqrt_32ns_32ns_32_12_no_dsp_1 RTLNAME do_compute_fsqrt_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME do_compute_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_dsqrt_64ns_64ns_64_21_no_dsp_1 RTLNAME do_compute_dsqrt_64ns_64ns_64_21_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 20 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_urem_32ns_3ns_2_36_1 RTLNAME do_compute_urem_32ns_3ns_2_36_1 BINDTYPE op TYPE urem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_sparsemux_7_2_32_1_1 RTLNAME do_compute_sparsemux_7_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10 MODELNAME do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10 RTLNAME do_compute_do_compute_Pipeline_VITIS_LOOP_109_9_VITIS_LOOP_110_10
    SUBMODULES {
      {MODELNAME do_compute_fsub_32ns_32ns_32_7_full_dsp_1 RTLNAME do_compute_fsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_sitofp_32ns_32_4_no_dsp_1 RTLNAME do_compute_sitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_sparsemux_7_2_32_1_1_x RTLNAME do_compute_sparsemux_7_2_32_1_1_x BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME do_compute_mul_6ns_7ns_12_1_1 RTLNAME do_compute_mul_6ns_7ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_7ns_7ns_12_1_1 RTLNAME do_compute_mul_7ns_7ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS MODELNAME do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS RTLNAME do_compute_do_compute_Pipeline_PROPAGATION_ROWS_PROPAGATION_COLS}
  {SRCNAME do_compute_Pipeline_VITIS_LOOP_234_13_VITIS_LOOP_235_14 MODELNAME do_compute_Pipeline_VITIS_LOOP_234_13_VITIS_LOOP_235_14 RTLNAME do_compute_do_compute_Pipeline_VITIS_LOOP_234_13_VITIS_LOOP_235_14}
  {SRCNAME do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17 MODELNAME do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17 RTLNAME do_compute_do_compute_Pipeline_VITIS_LOOP_249_16_VITIS_LOOP_250_17}
  {SRCNAME do_compute MODELNAME do_compute RTLNAME do_compute IS_TOP 1
    SUBMODULES {
      {MODELNAME do_compute_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME do_compute_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME do_compute_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME do_compute_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_fdiv_32ns_32ns_32_12_no_dsp_1 RTLNAME do_compute_fdiv_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_fpext_32ns_64_2_no_dsp_1 RTLNAME do_compute_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME do_compute_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME do_compute_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_mul_32ns_34ns_65_2_1 RTLNAME do_compute_mul_32ns_34ns_65_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_sitofp_32s_32_4_no_dsp_1 RTLNAME do_compute_sitofp_32s_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_water_level_RAM_1WNR_AUTO_1R1W RTLNAME do_compute_water_level_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME do_compute_spillage_flag_RAM_AUTO_1R1W RTLNAME do_compute_spillage_flag_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
