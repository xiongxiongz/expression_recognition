// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xpool.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPool_CfgInitialize(XPool *InstancePtr, XPool_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPool_Start(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPool_IsDone(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPool_IsIdle(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPool_IsReady(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPool_EnableAutoRestart(XPool *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPool_DisableAutoRestart(XPool *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_AP_CTRL, 0);
}

void XPool_Set_CHin(XPool *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_CHIN_DATA, Data);
}

u32 XPool_Get_CHin(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_CHIN_DATA);
    return Data;
}

void XPool_Set_Hin(XPool *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_HIN_DATA, Data);
}

u32 XPool_Get_Hin(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_HIN_DATA);
    return Data;
}

void XPool_Set_Win(XPool *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_WIN_DATA, Data);
}

u32 XPool_Get_Win(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_WIN_DATA);
    return Data;
}

void XPool_Set_Kx(XPool *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_KX_DATA, Data);
}

u32 XPool_Get_Kx(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_KX_DATA);
    return Data;
}

void XPool_Set_Ky(XPool *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_KY_DATA, Data);
}

u32 XPool_Get_Ky(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_KY_DATA);
    return Data;
}

void XPool_Set_mode(XPool *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XPool_Get_mode(XPool *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XPool_Set_feature_in(XPool *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_FEATURE_IN_DATA, (u32)(Data));
    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_FEATURE_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XPool_Get_feature_in(XPool *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_FEATURE_IN_DATA);
    Data += (u64)XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_FEATURE_IN_DATA + 4) << 32;
    return Data;
}

void XPool_Set_feature_out(XPool *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_FEATURE_OUT_DATA, (u32)(Data));
    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_FEATURE_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XPool_Get_feature_out(XPool *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_FEATURE_OUT_DATA);
    Data += (u64)XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_FEATURE_OUT_DATA + 4) << 32;
    return Data;
}

void XPool_InterruptGlobalEnable(XPool *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_GIE, 1);
}

void XPool_InterruptGlobalDisable(XPool *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_GIE, 0);
}

void XPool_InterruptEnable(XPool *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_IER);
    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_IER, Register | Mask);
}

void XPool_InterruptDisable(XPool *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_IER);
    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPool_InterruptClear(XPool *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPool_WriteReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_ISR, Mask);
}

u32 XPool_InterruptGetEnabled(XPool *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_IER);
}

u32 XPool_InterruptGetStatus(XPool *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPool_ReadReg(InstancePtr->Control_BaseAddress, XPOOL_CONTROL_ADDR_ISR);
}

