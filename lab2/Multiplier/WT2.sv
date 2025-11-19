module WT3
( input logic[8:0] a0,a1,a2,a3,a5
	input logic c0,c1,c2,c3,
  output logic[15:0] O
  );
  
 //Entry layer partial Sums declaration 
 logic[11:0] add1;
 logic[12:0] add2;
 logic[14:0] add3;
 logic[15:0] add4,add5;
 assign add1[11:0] = {~c0,c0,c0,a0[8:0]};
 assign add2[12:0] = {1b'1,~c1,a1[8:0],1b'0,c0};
 assign add3[14:0] = {1'b1,~c2,a2[8:0],1'b0,c1,2'b0};
 assign add4[15:0] = {~c3,a3[8:0],1'b0,c2,4'b0};
 assign add5[15:0] = {a5[8:0],1'b0,c3,6'b0};
 // assign add1[8:0] = a0[8:0];
 // assign add1[11:9] = {~c0,c0,c0};
 // assign add2[1:0] = {1'b0,c0};
 // assign add2[10:2] = a2[8:0];
 // assign add2[12:11] = {1'b1,~c1};
 // assign add3[2] = c1;
 // assign add3[12:4] = a2[8:0];
 // assign add3[14:13] = {1'b1,~c2};
 // assign add4[4] = c2;
 // assign add4[14:6] = a3;
 // assign add4[15] = ~c3;
 // assign add5[6] = c3;
 // assign add5[15:8] = a3;
 
 //First Layer partial sums declaration
 logic[15:0] sum1L1,sum2L1,sum3L1,sum4L1;
 logic dump;
 
 //Second Layer partial sum declarations
 logic[15:0] sum1L2,sum2L2,sum3L2;
 
 //Third Layer dummy carry out
 logic[15:0] sum1L3,sum2L3,sum3L3;
 
 //Entry layer components assignments and signals propagation
 HA ha1L0(add1[0],add2[0],sum2L1[1],sum1L1[0]);
 assign sum1L1[1] = add1[1];
 FA fa1L0(add1[2],add2[2],add3[2],sum2L1[3],sum1L1[2]);
 HA ha2L0(add1[3],add2[3],sum2L1[4],sum1L1[3]);
 FA fa2L0(add1[4],add2[4],add3[4],sum2L1[5],sum1L1[4]);
 FA fa3L0(add1[5],add2[5],add3[5],sum2L1[6],sum1L1[5]);
 FA fa4L0(add1[6],add2[6],add3[6],sum2L1[7],sum1L1[6]);
 FA fa5L0(add1[7],add2[7],add3[7],sum2L1[8],sum1L1[7]);
 FA fa6L0(add1[8],add2[8],add3[8],sum2L1[9],sum1L1[8]);
 FA fa7L0(add1[9],add2[9],add3[9],sum2L1[10],sum1L1[9]);
 FA fa8L0(add1[10],add2[10],add3[10],sum2L1[11],sum1L1[10]);
 FA fa9L0(add1[11],add2[11],add3[11],sum2L1[12],sum1L1[11]);
 HA ha3L0(add2[12],add3[12],sum2L1[13],sum1L1[12]);
 assign sum1L1[14:13] = add3[14:13];
 assign sum3L1[12:0] = add4[12:0];
 HA ha4L0(add4[6],add5[6],sum4L1[7],sum3L1[6]);
 generate
	genvar i
	for (i=8;i <16,i++)
		HA haxL0(add4[i],add5[i],sum4L1[i+1],sum3L1[i]);
endgenerate

 //Second layer components assignment and signals propagation
 HA ha1L1 (sum1L1[1],sum2L1[1],sum2L2[2],sum1L2[1]);
 HA ha2L1 (sum1L1[3],sum2L1[3],sum2L2[4],sum1L2[3]);
 FA fa1L1 (sum1L1[4],sum2L1[4],sum3L1[4],sum2L2[5],sum1L2[4]);
 HA ha3L1 (sum1L1[5],sum2L1[5],sum2L2[6],sum1L2[5]); 
 generate 
	genvar k 
	for (k = 6; k < 14,k++)
		Fa faL1(sum1L1[k],sum2L1[k],sum3L1[k],sum2L2[k+1],sum1L2[k]);
endgenerate
 FA fa2L1(sum1L1[14],sum3L1[14],sum4L1[14],sum2L2[15],sum1L1[14]);
 HA ha4L1(sum3L1[15],sum4L1[15],dump,sum1L2[15]);
 assign sum3L2[13:7] = {sum4L1[13:7]};
 
 // FA fa2L1 (sum1L1[6],sum2L1[6],sum3L1[6],sum2L2[7],sum1L2[6]);
 // FA fa3L1 (sum1L1[7],sum2L1[7],sum3L1[7],sum2L2[8],sum1L2[7]);
 // FA fa4L1 (sum1L1[8],sum2L1[8],sum3L1[8],sum2L2[9],sum1L2[8]);
 // FA fa5L1 (sum1L1[9],sum2L1[9],sum3L1[9],sum2L2[10],sum1L2[9]);
 // FA fa6L1 (sum1L1[10],sum2L1[10],sum3L1[10],sum2L2[11],sum1L2[10]);
 // FA fa7L1 (sum1L1[11],sum2L1[11],sum3L1[11],sum2L2[12],sum1L2[11]);
 // FA fa8L1 (sum1L1[12],sum2L1[12],sum3L1[12],sum2L2[13],sum1L2[12]);
 // assign sum1L2[0] = sum1L1[0];
 // assign sum1L2[2] = sum1L1[2];
 // assign sum1L2[13] = 1'b0;
 // assign sum2L2[3] = 1'b0;

//Third layer components assignment and signals propagation
HA ha1L2(sum1L2[2],sum1L2[2],sum2L3[3],sum1L3[2]};
generate 
	genvar j
	for (j=9,j<14,j++)
		FA faL2 (sum1L2[j],sum2L2[j],sum3L2[j],sum2L3[j+1],sum1L3[j]);
endgenerate
assign sum1L3[8:3] = sum1L2[8:3];
assign sum1L3[1:0] = sum1L2[1:0];
assign sum2L3[8:3] = {sum2L2[8:4],1'b0};
assign sum2L3[2:0] = 3'b0;

//Final Layer 
  assign O[2:0] = sum1L3[2:0];
  logic DummyCout;
  CSA3 CSA (sum1L3[16:3],sum2L3[6:3],1'b0,O[16:3],DummyCout);
  endmodule
  
