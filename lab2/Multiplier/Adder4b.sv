module Adder4b
( input logic[3:0] A,B,
  input logic Cin,
  output logic[3:0] s,
  output logic Cout);
  
  logic c0,c1,c2,c3;
  FA fa0 (A[0],B[0],Cin,c0,s[0]);
  FA fa1 (A[1],B[1],c0,c1,s[1]);
  FA fa2 (A[2],B[2],c1,c2,s[2]);
  FA fa3 (A[3],B[3],c2,Cout,s[3]);
 endmodule 