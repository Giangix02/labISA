module WALLACETREE
( input logic[7:0] a0,a1,a2,a3,
	input logic c0,c1,c2,
  output logic[13:0] O
  );
  
 //Entry layer partial Sums declaration 
 logic[10:0] add1;
 logic[11:0] add2;
 logic[12:0] add3,add4;
 assign add1[7:0] = a0[7:0];
 assign add1[10:8] = {~c0,c0,c0};
 assign add2[0] = c0;
 assign add2[9:2] = a2[7:0];
 assign add2[11:10] = {1'b1,~c1};
 assign add3[2] = c1;
 assign add3[11:4] = a2[7:0];
 assign add3[12] = ~c2;
 assign add4[4] = c2;
 assign add4[12:6] = a3;
 
 //First Layer partial sums declaration
 logic[12:0] sum1L1,sum2L1,sum3L1;
 
 //Second Layer partial sum declarations
 logic[13:0] sum1L2,sum2L2;
 
 //Third Layer dummy carry out
 logic DummyCout;
 
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
 ha ha3L0(add2[11],add3[11],sum2L1[12],sum1L1[11]);
 assign sum3L1[12:0] = add4[12:0];
 
 //Second layer components assignment and signals propagation
 HA ha1L1 (sum1L1[1],sum2L1[1],sum2L2[2],sum1L2[1]);
 HA ha2L1 (sum1L1[3],sum2L1[3],sum2L2[4],sum1L2[3]);
 FA fa1L1 (sum1L1[4],sum2L1[4],sum3L1[4],sum2L2[5],sum1L2[4]);
 HA ha3L1 (sum1L1[5],sum2L1[5],sum2L2[6],sum1L2[5]); 
 FA fa2L1 (sum1L1[6],sum2L1[6],sum3L1[6],sum2L2[7],sum1L2[6]);
 FA fa3L1 (sum1L1[7],sum2L1[7],sum3L1[7],sum2L2[8],sum1L2[7]);
 FA fa4L1 (sum1L1[8],sum2L1[8],sum3L1[8],sum2L2[9],sum1L2[8]);
 FA fa5L1 (sum1L1[9],sum2L1[9],sum3L1[9],sum2L2[10],sum1L2[9]);
 FA fa6L1 (sum1L1[10],sum2L1[10],sum3L1[10],sum2L2[11],sum1L2[10]);
 FA fa7L1 (sum1L1[11],sum2L1[11],sum3L1[11],sum2L2[12],sum1L2[11]);
 FA fa8L1 (sum1L1[12],sum2L1[12],sum3L1[12],sum2L2[13],sum1L2[12]);
 assign sum1L2[0] = sum1L1[0];
 assign sum1L2[2] = sum1L1[2];
 assign sum1L2[13] = 1'b0;
 assign sum2L2[3] = 1'b0;

//Third layer components assignment and results
  assign O[1:0] = sum1L2[1:0];
  CSA2 CSA (sum1L2[13:2],sum2L2[13:2],1'b0,O[13:2],DummyCout);
  endmodule
  
