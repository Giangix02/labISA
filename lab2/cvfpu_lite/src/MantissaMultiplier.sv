module MantissaMultiplier
( input logic[7:0] A,B,
	output logic[15:0] M
	);
	
//Precalculated inputs


logic[8:0] Ax2,mA,mAx2,A2;
assign A2 = {'0,A[7:0]};
assign Ax2 = A << 1;
assign mA = {1'b1,~A}; //always negative, the input is unsigned
assign mAx2 = ~Ax2;

//expanded B and A vectors
logic[10:0] B_expanded;
assign B_expanded[10:9] = 2'b0;
assign B_expanded[0] = 0;
assign B_expanded[8:1] = B[7:0];

//Allocation of the boothencoder multiplexers
logic[44:0] outboothenc; 
logic[8:0] encoded0,encoded1,encoded2,encoded3,encoded4;
assign encoded0[8:0] = outboothenc[8:0];
assign encoded1[8:0] = outboothenc[17:9];
assign encoded2[8:0] = outboothenc[26:18];
assign encoded3[8:0] = outboothenc[35:27];
assign encoded4[8:0] = outboothenc[44:36];

generate
	genvar i;
	for (i = 0; i < 5;i++)
		MUXBE boothenc('0,A2,Ax2,mA,mAx2,B_expanded[(2+i*2):i*2],outboothenc[(8+9*i):(9*i)]);
endgenerate

//Allocation of the Wallace Tree
WT3 wallTree(encoded0,encoded1,encoded2,encoded3,encoded4,B_expanded[2],B_expanded[4],B_expanded[6],B_expanded[8],M);

endmodule
