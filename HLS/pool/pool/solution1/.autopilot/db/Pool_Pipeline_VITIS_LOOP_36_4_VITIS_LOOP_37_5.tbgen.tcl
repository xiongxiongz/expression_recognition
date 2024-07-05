set moduleName Pool_Pipeline_VITIS_LOOP_36_4_VITIS_LOOP_37_5
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
set C_modelName {Pool_Pipeline_VITIS_LOOP_36_4_VITIS_LOOP_37_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ sum float 32 regular  }
	{ gmem int 32 regular {axi_master 0}  }
	{ mul_i92 int 16 regular  }
	{ Kx int 8 regular  }
	{ select_ln25_1 int 16 regular  }
	{ rhs_V_1 int 16 regular  }
	{ rhs_V_2 int 16 regular  }
	{ mul_ln40 int 16 regular  }
	{ mode int 2 regular  }
	{ zext_ln1495 int 16 regular  }
	{ feature_in int 64 regular  }
	{ sum_3_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sum", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "feature_in","offset": { "type": "dynamic","port_name": "feature_in","bundle": "control"},"direction": "READONLY"},{"cName": "feature_out","offset": { "type": "dynamic","port_name": "feature_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "mul_i92", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "Kx", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln25_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_V_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rhs_V_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln40", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mode", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1495", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "feature_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sum_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sum sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 1 } 
	{ mul_i92 sc_in sc_lv 16 signal 2 } 
	{ Kx sc_in sc_lv 8 signal 3 } 
	{ select_ln25_1 sc_in sc_lv 16 signal 4 } 
	{ rhs_V_1 sc_in sc_lv 16 signal 5 } 
	{ rhs_V_2 sc_in sc_lv 16 signal 6 } 
	{ mul_ln40 sc_in sc_lv 16 signal 7 } 
	{ mode sc_in sc_lv 2 signal 8 } 
	{ zext_ln1495 sc_in sc_lv 16 signal 9 } 
	{ feature_in sc_in sc_lv 64 signal 10 } 
	{ sum_3_out sc_out sc_lv 32 signal 11 } 
	{ sum_3_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ grp_fu_361_p_din0 sc_out sc_lv 33 signal -1 } 
	{ grp_fu_361_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_361_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_361_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "mul_i92", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mul_i92", "role": "default" }} , 
 	{ "name": "Kx", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Kx", "role": "default" }} , 
 	{ "name": "select_ln25_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "select_ln25_1", "role": "default" }} , 
 	{ "name": "rhs_V_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rhs_V_1", "role": "default" }} , 
 	{ "name": "rhs_V_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rhs_V_2", "role": "default" }} , 
 	{ "name": "mul_ln40", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mul_ln40", "role": "default" }} , 
 	{ "name": "mode", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mode", "role": "default" }} , 
 	{ "name": "zext_ln1495", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln1495", "role": "default" }} , 
 	{ "name": "feature_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feature_in", "role": "default" }} , 
 	{ "name": "sum_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_3_out", "role": "default" }} , 
 	{ "name": "sum_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_3_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_361_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "grp_fu_361_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_361_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_361_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_361_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "Pool_Pipeline_VITIS_LOOP_36_4_VITIS_LOOP_37_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "325143",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "mul_i92", "Type" : "None", "Direction" : "I"},
			{"Name" : "Kx", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln25_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "rhs_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln40", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1495", "Type" : "None", "Direction" : "I"},
			{"Name" : "feature_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_36_4_VITIS_LOOP_37_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16ns_16ns_48_4_1_U4", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16ns_16ns_48_4_1_U5", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16ns_16ns_48_4_1_U6", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16ns_32_4_1_U7", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Pool_Pipeline_VITIS_LOOP_36_4_VITIS_LOOP_37_5 {
		sum {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 15 FirstWrite -1}
		mul_i92 {Type I LastRead 0 FirstWrite -1}
		Kx {Type I LastRead 0 FirstWrite -1}
		select_ln25_1 {Type I LastRead 0 FirstWrite -1}
		rhs_V_1 {Type I LastRead 0 FirstWrite -1}
		rhs_V_2 {Type I LastRead 0 FirstWrite -1}
		mul_ln40 {Type I LastRead 0 FirstWrite -1}
		mode {Type I LastRead 0 FirstWrite -1}
		zext_ln1495 {Type I LastRead 0 FirstWrite -1}
		feature_in {Type I LastRead 0 FirstWrite -1}
		sum_3_out {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "325143"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "325143"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sum { ap_none {  { sum in_data 0 32 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	mul_i92 { ap_none {  { mul_i92 in_data 0 16 } } }
	Kx { ap_none {  { Kx in_data 0 8 } } }
	select_ln25_1 { ap_none {  { select_ln25_1 in_data 0 16 } } }
	rhs_V_1 { ap_none {  { rhs_V_1 in_data 0 16 } } }
	rhs_V_2 { ap_none {  { rhs_V_2 in_data 0 16 } } }
	mul_ln40 { ap_none {  { mul_ln40 in_data 0 16 } } }
	mode { ap_none {  { mode in_data 0 2 } } }
	zext_ln1495 { ap_none {  { zext_ln1495 in_data 0 16 } } }
	feature_in { ap_none {  { feature_in in_data 0 64 } } }
	sum_3_out { ap_vld {  { sum_3_out out_data 1 32 }  { sum_3_out_ap_vld out_vld 1 1 } } }
}
