set SynModuleInfo {
  {SRCNAME Pool_Pipeline_VITIS_LOOP_36_4_VITIS_LOOP_37_5 MODELNAME Pool_Pipeline_VITIS_LOOP_36_4_VITIS_LOOP_37_5 RTLNAME Pool_Pool_Pipeline_VITIS_LOOP_36_4_VITIS_LOOP_37_5
    SUBMODULES {
      {MODELNAME Pool_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME Pool_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME Pool_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME Pool_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Pool_mac_muladd_16s_16ns_16ns_48_4_1 RTLNAME Pool_mac_muladd_16s_16ns_16ns_48_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Pool_mul_mul_16s_16ns_32_4_1 RTLNAME Pool_mul_mul_16s_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Pool_flow_control_loop_pipe_sequential_init RTLNAME Pool_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME Pool_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Pool MODELNAME Pool RTLNAME Pool IS_TOP 1
    SUBMODULES {
      {MODELNAME Pool_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME Pool_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME Pool_uitofp_32ns_32_6_no_dsp_1 RTLNAME Pool_uitofp_32ns_32_6_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME Pool_udiv_16ns_8ns_16_20_seq_1 RTLNAME Pool_udiv_16ns_8ns_16_20_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 19 ALLOW_PRAGMA 1}
      {MODELNAME Pool_mul_8ns_8ns_16_1_1 RTLNAME Pool_mul_8ns_8ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Pool_mul_16ns_32ns_48_2_1 RTLNAME Pool_mul_16ns_32ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Pool_mul_32s_16ns_48_2_1 RTLNAME Pool_mul_32s_16ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Pool_mul_32ns_16ns_48_2_1 RTLNAME Pool_mul_32ns_16ns_48_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Pool_mul_mul_16ns_16ns_32_4_1 RTLNAME Pool_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Pool_mul_mul_16ns_8ns_16_4_1 RTLNAME Pool_mul_mul_16ns_8ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Pool_mac_muladd_16ns_16ns_16ns_32_4_1 RTLNAME Pool_mac_muladd_16ns_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Pool_gmem_m_axi RTLNAME Pool_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME Pool_control_s_axi RTLNAME Pool_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
