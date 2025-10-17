`timescale 1ns/1ps

module tb_fir ();

   logic CLK_i;
   logic RST_n_i;
   logic [10:0] DIN_i;
   logic VIN_i;
   logic [10:0] H0_i;
   logic [10:0] H1_i;
   logic [10:0] H2_i;
   logic [10:0] H3_i;
   logic [10:0] H4_i;
   logic [10:0] H5_i;
   logic [10:0] H6_i;
   logic [10:0] H7_i;
   logic [10:0] H8_i;
   logic [10:0] H9_i;
   logic [10:0] H10_i;
   logic [10:0] DOUT_i;
   logic VOUT_i;
   logic END_SIM_i;

   clk_gen CG(.END_SIM(END_SIM_i),
  	      .CLK(CLK_i),
	      .RST_n(RST_n_i));

   data_maker SM(.CLK(CLK_i),
	         .RST_n(RST_n_i),
		 .VOUT(VIN_i),
		 .DOUT(DIN_i),
		 .B0(H0_i),
		 .B1(H1_i),
		 .B2(H2_i),
		 .B3(H3_i),
		 .B4(H4_i),
		 .B5(H5_i),
		 .B6(H6_i),
		 .B7(H7_i),
		 .B8(H8_i),
		 .B9(H9_i),
		 .B10(H10_i),
		 .END_SIM(END_SIM_i));

   FIRV3 UUT(.CLK(CLK_i),
	     .RSTn(RST_n_i),
	     .DIN(DIN_i),
             .VIN(VIN_i),
	     		 .C0(H0_i),
		 .C1(H1_i),
		 .C2(H2_i),
		 .C3(H3_i),
		 .C4(H4_i),
		 .C5(H5_i),
		 .C6(H6_i),
		 .C7(H7_i),
		 .C8(H8_i),
		 .C9(H9_i),
		 .C10(H10_i),
             .DOUT(DOUT_i),
             .VOUT(VOUT_i));

   data_sink DS(.CLK(CLK_i),
		.RST_n(RST_n_i),
		.VIN(VOUT_i),
		.DIN(DOUT_i));   


	initial begin
		#40000;
		$finish(1);
	end

endmodule


		   