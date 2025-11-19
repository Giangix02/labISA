module CSA3 (
    input logic[12:0] A,
    input logic[12:0] B ,
    input logic Cin , 
    output logic[12:0] S,
    output logic Cout
);

logic c0,c1,cFirstLayer0,cFirstLayer1,cSecondLayer0Temp,cSecondLayer1Temp,cSecondLayer0,cSecondLayer1;
logic[3:0] FirstLayerBuffer0,FirstLayerBuffer1;
logic[4:0] SecondLayerBuffer0,SecondLayerBuffer1;

//input layer of 4bits
Adder4b InputLayer (A[3:0],B[3:0],Cin,S[3:0],c0);

//Second layer of 4 bits
Adder4b FirstLayer0 (A[7:4],B[7:4],1'b0,FirstLayerBuffer0[3:0],cFirstLayer0);
Adder4b FirstLayer1 (A[7:4],B[7:4],1'b1,FirstLayerBuffer1[3:0],cFirstLayer1);
MUX2 FirstLayerMux (FirstLayerBuffer0[3:0],FirstLayerBuffer1[3:0],c0,S[7:4]);
MUX_unit FirstLayerMuxCarry (cFirstLayer0,cFirstLayer1,c0,c1);

//Third Layer of 4 bits
Adder4b SecondLayer0 (A[11:8],B[11:8],1'b0,SecondLayerBuffer0[3:0],cSecondLayer0Temp);
Adder4b SecondLayer1 (A[11:8],B[11:8],1'b1,SecondLayerBuffer1[3:0],cSecondLayer1Temp);
FA FaSecondLayer0 (A[12],B[12],cSecondLayer0Temp,cSecondLayer0,SecondLayerBuffer0[4]);
FA FaSecondLayer1 (A[12],B[12],cSecondLayer1Temp,cSecondLayer1,SecondLayerBuffer1[4]);
MUX2 SecondLayerMuxLSB (SecondLayerBuffer0[3:0],SecondLayerBuffer1[3:0],c1,S[11:8]);
MUX_unit SecondLayerMuxMSB (SecondLayerBuffer0[4],SecondLayerBuffer1[4],c1,S[12]);
MUX_unit SecondLayerMuxCarry (cSecondLayer0,cSecondLayer1,c1,Cout);
endmodule
