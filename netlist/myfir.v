/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Mon Oct 20 16:42:05 2025
/////////////////////////////////////////////////////////////


module myfir ( DIN, C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, VIN, RSTn, 
        clk, DOUT, VOUT );
  input [10:0] DIN;
  input [10:0] C0;
  input [10:0] C1;
  input [10:0] C2;
  input [10:0] C3;
  input [10:0] C4;
  input [10:0] C5;
  input [10:0] C6;
  input [10:0] C7;
  input [10:0] C8;
  input [10:0] C9;
  input [10:0] C10;
  output [10:0] DOUT;
  input VIN, RSTn, clk;
  output VOUT;
  wire   vin_FF_out, DoutReg_0__10_, DoutReg_0__9_, DoutReg_0__8_,
         DoutReg_0__7_, DoutReg_0__6_, DoutReg_0__5_, DoutReg_0__4_,
         DoutReg_0__3_, DoutReg_0__2_, DoutReg_0__1_, DoutReg_0__0_,
         DoutReg_1__10_, DoutReg_1__9_, DoutReg_1__8_, DoutReg_1__7_,
         DoutReg_1__6_, DoutReg_1__5_, DoutReg_1__4_, DoutReg_1__3_,
         DoutReg_1__2_, DoutReg_1__1_, DoutReg_1__0_, DoutReg_2__10_,
         DoutReg_2__9_, DoutReg_2__8_, DoutReg_2__7_, DoutReg_2__6_,
         DoutReg_2__5_, DoutReg_2__4_, DoutReg_2__3_, DoutReg_2__2_,
         DoutReg_2__1_, DoutReg_2__0_, DoutReg_3__10_, DoutReg_3__9_,
         DoutReg_3__8_, DoutReg_3__7_, DoutReg_3__6_, DoutReg_3__5_,
         DoutReg_3__4_, DoutReg_3__3_, DoutReg_3__2_, DoutReg_3__1_,
         DoutReg_3__0_, DoutReg_4__10_, DoutReg_4__9_, DoutReg_4__8_,
         DoutReg_4__7_, DoutReg_4__6_, DoutReg_4__5_, DoutReg_4__4_,
         DoutReg_4__3_, DoutReg_4__2_, DoutReg_4__1_, DoutReg_4__0_,
         DoutReg_5__10_, DoutReg_5__9_, DoutReg_5__8_, DoutReg_5__7_,
         DoutReg_5__6_, DoutReg_5__5_, DoutReg_5__4_, DoutReg_5__3_,
         DoutReg_5__2_, DoutReg_5__1_, DoutReg_5__0_, DoutReg_6__10_,
         DoutReg_6__9_, DoutReg_6__8_, DoutReg_6__7_, DoutReg_6__6_,
         DoutReg_6__5_, DoutReg_6__4_, DoutReg_6__3_, DoutReg_6__2_,
         DoutReg_6__1_, DoutReg_6__0_, DoutReg_7__10_, DoutReg_7__9_,
         DoutReg_7__8_, DoutReg_7__7_, DoutReg_7__6_, DoutReg_7__5_,
         DoutReg_7__4_, DoutReg_7__3_, DoutReg_7__2_, DoutReg_7__1_,
         DoutReg_7__0_, DoutReg_8__10_, DoutReg_8__9_, DoutReg_8__8_,
         DoutReg_8__7_, DoutReg_8__6_, DoutReg_8__5_, DoutReg_8__4_,
         DoutReg_8__3_, DoutReg_8__2_, DoutReg_8__1_, DoutReg_8__0_,
         DoutReg_9__10_, DoutReg_9__9_, DoutReg_9__8_, DoutReg_9__7_,
         DoutReg_9__6_, DoutReg_9__5_, DoutReg_9__4_, DoutReg_9__3_,
         DoutReg_9__2_, DoutReg_9__1_, DoutReg_9__0_, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25;
  wire   [10:0] Coeff0_out;
  wire   [20:13] mult_out;
  wire   [109:0] ADDout;

  FF VIN_FF ( .D(VIN), .CLK(clk), .EN(1'b1), .RSTn(RSTn), .Q(vin_FF_out) );
  FF VOUT_FF ( .D(vin_FF_out), .CLK(clk), .EN(1'b1), .RSTn(RSTn), .Q(VOUT) );
  REG11B Data_reg0 ( .CLK(clk), .EN(VIN), .RSTn(RSTn), .Din(DIN), .Dout({
        DoutReg_0__10_, DoutReg_0__9_, DoutReg_0__8_, DoutReg_0__7_, 
        DoutReg_0__6_, DoutReg_0__5_, DoutReg_0__4_, DoutReg_0__3_, 
        DoutReg_0__2_, DoutReg_0__1_, DoutReg_0__0_}) );
  REG11B Coeff0_reg ( .CLK(clk), .EN(1'b1), .RSTn(RSTn), .Din(C0), .Dout(
        Coeff0_out) );
  Mult mult0 ( .IN0({DoutReg_0__10_, DoutReg_0__9_, DoutReg_0__8_, 
        DoutReg_0__7_, DoutReg_0__6_, DoutReg_0__5_, DoutReg_0__4_, 
        DoutReg_0__3_, DoutReg_0__2_, DoutReg_0__1_, DoutReg_0__0_}), .IN1(
        Coeff0_out), .Molt({SYNOPSYS_UNCONNECTED_1, mult_out, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14}) );
  AddMultBlockV2 cell1 ( .DIN({DoutReg_0__10_, DoutReg_0__9_, DoutReg_0__8_, 
        DoutReg_0__7_, DoutReg_0__6_, DoutReg_0__5_, DoutReg_0__4_, 
        DoutReg_0__3_, DoutReg_0__2_, DoutReg_0__1_, DoutReg_0__0_}), .Coeff(
        C1), .DINadd0({mult_out, 1'b0, 1'b0, 1'b0}), .CLK(clk), .RSTn(RSTn), 
        .Vin(vin_FF_out), .Dout(ADDout[109:99]), .DATA_REG({DoutReg_1__10_, 
        DoutReg_1__9_, DoutReg_1__8_, DoutReg_1__7_, DoutReg_1__6_, 
        DoutReg_1__5_, DoutReg_1__4_, DoutReg_1__3_, DoutReg_1__2_, 
        DoutReg_1__1_, DoutReg_1__0_}) );
  AddMultBlockV2 cell2 ( .DIN({DoutReg_1__10_, DoutReg_1__9_, DoutReg_1__8_, 
        DoutReg_1__7_, DoutReg_1__6_, DoutReg_1__5_, DoutReg_1__4_, 
        DoutReg_1__3_, DoutReg_1__2_, DoutReg_1__1_, DoutReg_1__0_}), .Coeff(
        C2), .DINadd0(ADDout[109:99]), .CLK(clk), .RSTn(RSTn), .Vin(vin_FF_out), .Dout(ADDout[98:88]), .DATA_REG({DoutReg_2__10_, DoutReg_2__9_, 
        DoutReg_2__8_, DoutReg_2__7_, DoutReg_2__6_, DoutReg_2__5_, 
        DoutReg_2__4_, DoutReg_2__3_, DoutReg_2__2_, DoutReg_2__1_, 
        DoutReg_2__0_}) );
  AddMultBlockV2 cell3 ( .DIN({DoutReg_2__10_, DoutReg_2__9_, DoutReg_2__8_, 
        DoutReg_2__7_, DoutReg_2__6_, DoutReg_2__5_, DoutReg_2__4_, 
        DoutReg_2__3_, DoutReg_2__2_, DoutReg_2__1_, DoutReg_2__0_}), .Coeff(
        C3), .DINadd0(ADDout[98:88]), .CLK(clk), .RSTn(RSTn), .Vin(vin_FF_out), 
        .Dout(ADDout[87:77]), .DATA_REG({DoutReg_3__10_, DoutReg_3__9_, 
        DoutReg_3__8_, DoutReg_3__7_, DoutReg_3__6_, DoutReg_3__5_, 
        DoutReg_3__4_, DoutReg_3__3_, DoutReg_3__2_, DoutReg_3__1_, 
        DoutReg_3__0_}) );
  AddMultBlockV2 cell4 ( .DIN({DoutReg_3__10_, DoutReg_3__9_, DoutReg_3__8_, 
        DoutReg_3__7_, DoutReg_3__6_, DoutReg_3__5_, DoutReg_3__4_, 
        DoutReg_3__3_, DoutReg_3__2_, DoutReg_3__1_, DoutReg_3__0_}), .Coeff(
        C4), .DINadd0(ADDout[87:77]), .CLK(clk), .RSTn(RSTn), .Vin(vin_FF_out), 
        .Dout(ADDout[76:66]), .DATA_REG({DoutReg_4__10_, DoutReg_4__9_, 
        DoutReg_4__8_, DoutReg_4__7_, DoutReg_4__6_, DoutReg_4__5_, 
        DoutReg_4__4_, DoutReg_4__3_, DoutReg_4__2_, DoutReg_4__1_, 
        DoutReg_4__0_}) );
  AddMultBlockV2 cell5 ( .DIN({DoutReg_4__10_, DoutReg_4__9_, DoutReg_4__8_, 
        DoutReg_4__7_, DoutReg_4__6_, DoutReg_4__5_, DoutReg_4__4_, 
        DoutReg_4__3_, DoutReg_4__2_, DoutReg_4__1_, DoutReg_4__0_}), .Coeff(
        C5), .DINadd0(ADDout[76:66]), .CLK(clk), .RSTn(RSTn), .Vin(vin_FF_out), 
        .Dout(ADDout[65:55]), .DATA_REG({DoutReg_5__10_, DoutReg_5__9_, 
        DoutReg_5__8_, DoutReg_5__7_, DoutReg_5__6_, DoutReg_5__5_, 
        DoutReg_5__4_, DoutReg_5__3_, DoutReg_5__2_, DoutReg_5__1_, 
        DoutReg_5__0_}) );
  AddMultBlockV2 cell6 ( .DIN({DoutReg_5__10_, DoutReg_5__9_, DoutReg_5__8_, 
        DoutReg_5__7_, DoutReg_5__6_, DoutReg_5__5_, DoutReg_5__4_, 
        DoutReg_5__3_, DoutReg_5__2_, DoutReg_5__1_, DoutReg_5__0_}), .Coeff(
        C6), .DINadd0(ADDout[65:55]), .CLK(clk), .RSTn(RSTn), .Vin(vin_FF_out), 
        .Dout(ADDout[54:44]), .DATA_REG({DoutReg_6__10_, DoutReg_6__9_, 
        DoutReg_6__8_, DoutReg_6__7_, DoutReg_6__6_, DoutReg_6__5_, 
        DoutReg_6__4_, DoutReg_6__3_, DoutReg_6__2_, DoutReg_6__1_, 
        DoutReg_6__0_}) );
  AddMultBlockV2 cell7 ( .DIN({DoutReg_6__10_, DoutReg_6__9_, DoutReg_6__8_, 
        DoutReg_6__7_, DoutReg_6__6_, DoutReg_6__5_, DoutReg_6__4_, 
        DoutReg_6__3_, DoutReg_6__2_, DoutReg_6__1_, DoutReg_6__0_}), .Coeff(
        C7), .DINadd0(ADDout[54:44]), .CLK(clk), .RSTn(RSTn), .Vin(vin_FF_out), 
        .Dout(ADDout[43:33]), .DATA_REG({DoutReg_7__10_, DoutReg_7__9_, 
        DoutReg_7__8_, DoutReg_7__7_, DoutReg_7__6_, DoutReg_7__5_, 
        DoutReg_7__4_, DoutReg_7__3_, DoutReg_7__2_, DoutReg_7__1_, 
        DoutReg_7__0_}) );
  AddMultBlockV2 cell8 ( .DIN({DoutReg_7__10_, DoutReg_7__9_, DoutReg_7__8_, 
        DoutReg_7__7_, DoutReg_7__6_, DoutReg_7__5_, DoutReg_7__4_, 
        DoutReg_7__3_, DoutReg_7__2_, DoutReg_7__1_, DoutReg_7__0_}), .Coeff(
        C8), .DINadd0(ADDout[43:33]), .CLK(clk), .RSTn(RSTn), .Vin(vin_FF_out), 
        .Dout(ADDout[32:22]), .DATA_REG({DoutReg_8__10_, DoutReg_8__9_, 
        DoutReg_8__8_, DoutReg_8__7_, DoutReg_8__6_, DoutReg_8__5_, 
        DoutReg_8__4_, DoutReg_8__3_, DoutReg_8__2_, DoutReg_8__1_, 
        DoutReg_8__0_}) );
  AddMultBlockV2 cell9 ( .DIN({DoutReg_8__10_, DoutReg_8__9_, DoutReg_8__8_, 
        DoutReg_8__7_, DoutReg_8__6_, DoutReg_8__5_, DoutReg_8__4_, 
        DoutReg_8__3_, DoutReg_8__2_, DoutReg_8__1_, DoutReg_8__0_}), .Coeff(
        C9), .DINadd0(ADDout[32:22]), .CLK(clk), .RSTn(RSTn), .Vin(vin_FF_out), 
        .Dout(ADDout[21:11]), .DATA_REG({DoutReg_9__10_, DoutReg_9__9_, 
        DoutReg_9__8_, DoutReg_9__7_, DoutReg_9__6_, DoutReg_9__5_, 
        DoutReg_9__4_, DoutReg_9__3_, DoutReg_9__2_, DoutReg_9__1_, 
        DoutReg_9__0_}) );
  AddMultBlockV2 cell10 ( .DIN({DoutReg_9__10_, DoutReg_9__9_, DoutReg_9__8_, 
        DoutReg_9__7_, DoutReg_9__6_, DoutReg_9__5_, DoutReg_9__4_, 
        DoutReg_9__3_, DoutReg_9__2_, DoutReg_9__1_, DoutReg_9__0_}), .Coeff(
        C10), .DINadd0(ADDout[21:11]), .CLK(clk), .RSTn(RSTn), .Vin(vin_FF_out), .Dout(ADDout[10:0]), .DATA_REG({SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25}) );
  REG11B output_register ( .CLK(clk), .EN(vin_FF_out), .RSTn(RSTn), .Din(
        ADDout[10:0]), .Dout(DOUT) );
endmodule

