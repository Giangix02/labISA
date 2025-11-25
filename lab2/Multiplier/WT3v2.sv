module WT3v2
( input logic[8:0] a0,a1,a2,a3,a4,
	input logic c0,c1,c2,c3,
  output logic[15:0] O
  );
  
 //input vectors for the final CSA
 logic[12:0] sum0;
 logic[12:0] sum1;

 //signal vectors for the outputs of Fa/Ha
 logic[39:1] S; //Sum of the Fa/Ha
 logic[39:1] R; //Carry out of the Fa/Ha

 //first layer
 
 HA ha1(a0[0],c0,R[1],S[1]);
 FA fa2(a0[2],a1[0],c1,R[2],S[2]);
 HA ha3(a0[3],a1[1],R[3],S[3]);
 FA fa4(a0[4],a1[2],a2[0],R[4],S[4]);
 FA fa5(a0[5],a1[3],a2[1],R[5],S[5]);
 FA fa6(a0[6],a1[4],a2[2],R[6],S[6]);
 FA fa7(a0[7],a1[5],a2[3],R[7],S[7]);
 FA fa8(a0[8],a1[6],a2[4],R[8],S[8]);
 FA fa9(c0,a1[7],a2[5],R[9],S[9]);
 FA fa10(c0,a1[8],a2[6],R[10],S[10]);
 FA fa11(~c0,~c1,a2[7],R[11],S[11]);
 HA ha12(1'b1,a2[8],R[12],S[12]);

 //second layer


 HA ha13(a0[1],R[1],R[13],S[13]);
 HA ha14(S[3],R[2],R[14],S[14]);
 FA fa15(S[4],R[3],c2,R[15],S[15]);
 HA ha16(S[5],R[4],R[16],S[16]);
 FA fa17(S[6],R[5],a3[0],R[17],S[17]);
 FA fa18(S[7],R[6],a3[1],R[18],S[18]);
 FA fa19(S[8],R[7],a3[2],R[19],S[19]);
 FA fa20(S[9],R[8],a3[3],R[20],S[20]);
 FA fa21(S[10],R[9],a3[4],R[21],S[21]);
 FA fa22(S[11],R[10],a3[5],R[22],S[22]);
 FA fa23(S[12],R[11],a3[6],R[23],S[23]);
 FA fa24(~c2,R[12],a3[7],R[24],S[24]);
 FA fa25(1'b1,a4[6],a3[8],R[25],S[25]);
 HA ha26(~c3,a4[7],R[26],S[26]);

 //third layer

 HA ha27(S[2],R[13],R[27],S[27]);
 HA ha28(S[15],R[14],R[28],S[28]);
 HA ha29(S[16],R[15],R[29],S[29]);
 FA fa30(S[17],R[16],c3,R[30],S[30]);
 HA ha31(S[18],R[17],R[31],S[31]);
 FA fa32(S[19],R[18],a4[0],R[32],S[32]);
 FA fa33(S[20],R[19],a4[1],R[33],S[33]);
 FA fa34(S[21],R[20],a4[2],R[34],S[34]);
 FA fa35(S[22],R[21],a4[3],R[35],S[35]);
 FA fa36(S[23],R[22],a4[4],R[36],S[36]);
 FA fa37(S[24],R[23],a4[5],R[37],S[37]);
 HA ha38(S[25],R[24],R[38],S[38]);
 HA ha39(S[26],R[25],R[39],S[39]);


//Final Layer 
  assign O[2:0] = {S[27],S[13],S[1]};
  assign sum0 = {S[39],S[38],S[37],S[36],S[35],S[34],S[33],S[32],S[31],S[30],S[29],S[28],S[14]};
  assign sum1 = {R[38],R[37],R[36],R[35],R[34],R[33],R[32],R[31],R[30],R[29],R[28],1'b0,R[27]};
  logic DummyCout;

  CSA3 CSA (sum0,sum1,1'b0,O[15:3],DummyCout);
endmodule
  
