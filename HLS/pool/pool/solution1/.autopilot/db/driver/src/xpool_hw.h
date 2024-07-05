// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of CHin
//        bit 15~0 - CHin[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of Hin
//        bit 15~0 - Hin[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of Win
//        bit 15~0 - Win[15:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// 0x28 : Data signal of Kx
//        bit 7~0 - Kx[7:0] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of Ky
//        bit 7~0 - Ky[7:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of mode
//        bit 1~0 - mode[1:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of feature_in
//        bit 31~0 - feature_in[31:0] (Read/Write)
// 0x44 : Data signal of feature_in
//        bit 31~0 - feature_in[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of feature_out
//        bit 31~0 - feature_out[31:0] (Read/Write)
// 0x50 : Data signal of feature_out
//        bit 31~0 - feature_out[63:32] (Read/Write)
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XPOOL_CONTROL_ADDR_AP_CTRL          0x00
#define XPOOL_CONTROL_ADDR_GIE              0x04
#define XPOOL_CONTROL_ADDR_IER              0x08
#define XPOOL_CONTROL_ADDR_ISR              0x0c
#define XPOOL_CONTROL_ADDR_CHIN_DATA        0x10
#define XPOOL_CONTROL_BITS_CHIN_DATA        16
#define XPOOL_CONTROL_ADDR_HIN_DATA         0x18
#define XPOOL_CONTROL_BITS_HIN_DATA         16
#define XPOOL_CONTROL_ADDR_WIN_DATA         0x20
#define XPOOL_CONTROL_BITS_WIN_DATA         16
#define XPOOL_CONTROL_ADDR_KX_DATA          0x28
#define XPOOL_CONTROL_BITS_KX_DATA          8
#define XPOOL_CONTROL_ADDR_KY_DATA          0x30
#define XPOOL_CONTROL_BITS_KY_DATA          8
#define XPOOL_CONTROL_ADDR_MODE_DATA        0x38
#define XPOOL_CONTROL_BITS_MODE_DATA        2
#define XPOOL_CONTROL_ADDR_FEATURE_IN_DATA  0x40
#define XPOOL_CONTROL_BITS_FEATURE_IN_DATA  64
#define XPOOL_CONTROL_ADDR_FEATURE_OUT_DATA 0x4c
#define XPOOL_CONTROL_BITS_FEATURE_OUT_DATA 64

