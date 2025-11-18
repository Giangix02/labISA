module WALLACETREE
( input logic[6:0] a0,a1,a2,a3,
	input logic c0,c1,c2,
  output logic[13:0] o
  );

// First layer partial Sums signals declarations
	logic[11:0] AddTemp1;
	logic[8:0] AddTemp2;
	logic[5:0] AddTemp3;
//Second layer partial Sums signals declarations
	logic[12:0] AddTemp4;
	logic[10:0] AddTemp5
//Third Layer 
	logic[10:0] OutAdder;
	logic OutAdderBit;

//Layer 1 components and signals assignment
HA ha1L1 (a0[0],c0,AddTemp2[0],AddTemp1[0]);  
FA Fa1L1 (a0[2],a1[0],c1,AddTemp2[1],AddTemp1[1]);
HA ha2L1 (a0[3],a1[1],AddTemp2[2],AddTemp1[2]); 
FA Fa2L1 (a0[4],a1[2],a2[0],AddTemp2[3],AddTemp1[3]);
FA Fa3L1 (a0[5],a1[3],a2[1],AddTemp2[4],AddTemp1[4]);
FA Fa4L1 (a0[6],a1[4],a2[2],AddTemp2[5],AddTemp1[5]);
HA ha3L1 (a1[5],a2[3],AddTemp2[6],AddTemp1[6]);
HA ha4L1 (a1[6],a1[4],AddTemp2[7],AddTemp1[7]);
assign AddTemp1[9:8] = a2[6:5];
assign AddTemp1[11:10] = a3[6:5];
assign AddTemp2[8] = a3[4];
assign AddTemp3[0] = a0[1];
assign AddTemp3[1] = c0;
assign AddTemp3[5:2] = a3[3:0];

//Layer 2 components and signals assignment
HA ha1L2 (AddTemp2[0],AddTemp3[0],AddTemp5[0],AddTemp4[0]);
HA ha2L2 (AddTemp1[2],AddTemp2[1],AddTemp5[2],AddTemp4[3]);
FA Fa1L2 (AddTemp1[3],AddTemp2[2],AddTemp3[1],AddTemp5[3],AddTemp4[4]);
HA ha3L2 (AddTemp1[4],AddTemp2[3],AddTemp5[4],AddTemp4[5]);
FA Fa2L2 (AddTemp1[5],AddTemp2[4],AddTemp3[2],AddTemp5[5],AddTemp4[6]);
FA Fa3L2 (AddTemp1[6],AddTemp2[5],AddTemp3[3],AddTemp5[6],AddTemp4[7]);
FA Fa4L2 (AddTemp1[7],AddTemp2[6],AddTemp3[4],AddTemp5[7],AddTemp4[8]);
FA Fa5L2 (AddTemp1[8],AddTemp2[7],AddTemp3[5],AddTemp5[8],AddTemp4[9]);
HA ha3L2 (AddTemp1[9],AddTemp2[8],AddTemp5[9],AddTemp4[10]);
assign AddTemp4[12:11] = AddTemp1[11:10];
assign AddTemp5[8] = 0;
assign AddTemp5[10] = 0;

//Layer 3 components and signal assignments
CSA Adder (AddTemp4[12:2],AddTemp5[10:0],0,OutAdder,OutAdderBit);
assign o[13] = OutAdderBit;
assign o[12:2] = OutAdder;
assign o[2:0] = AddTemp4[2:0];

endmodule


  
