module CSA2 (
    input logic[11:0] A,
    input logic[11:0] B ,
    input logic Cin , 
    output logic[11:0] S,
    output logic Cout
);

logic c0,c1,cFirstLayer0,cFirstLayer1,cSecondLayer0,cSecondLayer1;
logic[3:0] FirstLayerBuffer0,FirstLayerBuffer1,SecondLayerBuffer0,SecondLayerBuffer1;

//input layer of 4bits
Adder4b InputLayer (A[3:0],B[3:0],Cin,c0,S[3:0]);

//Second layer of 4 bits
Adder4b FirstLayer0 (A[7:4],B[7:4],1'b0,cFirstLayer0,FirstLayerBuffer0[3:0]);
Adder4b FirstLayer1 (A[7:4],B[7:4],1'b1,cFirstLayer1,FirstLayerBuffer1[3:0]);
MUX2 FirstLayerMux (FirstLayerBuffer0[3:0],FirstLayerBuffer1[3:0],c0,S[7:4]);
MUX_unit FirstLayerMuxCarry (cFirstLayer0,cFirstLayer1,c0,c1);

//Third Layer of 4 bits
Adder4b SecondLayer0 (A[11:8],B[11:8],1'b0,cSecondLayer0,SecondLayerBuffer0[3:0]);
Adder4b SecondLayer1 (A[11:8],B[11:8],1'b1,cSecondLayer1,SecondLayerBuffer1[3:0]);
MUX2 SecondLayerMux (SecondLayerBuffer0[3:0],SecondLayerBuffer1[3:0],c1,S[11:8]);
MUX_unit SecondLayerMuxCarry (cSecondLayer0,cSecondLayer1,c0,c1);
endmodule
