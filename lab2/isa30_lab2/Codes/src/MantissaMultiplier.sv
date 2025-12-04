module MantissaMultiplier
( input logic[7:0] A,B,
	output logic[15:0] M
	);
	
//Precalculated inputs


logic[9:0] Ax2,mA,mAx2,A2;
assign A2 = {2'b0,A[7:0]};
assign Ax2 = A << 1;
assign mA = ~A2; //always negative, the input is unsigned
assign mAx2 = ~Ax2;

//expanded B and A vectors
logic[10:0] B_expanded;
assign B_expanded[10:9] = 2'b0;
assign B_expanded[0] = 0;
assign B_expanded[8:1] = B[7:0];

//Allocation of the boothencoder multiplexers
logic[49:0] outboothenc; 
logic[8:0] encoded0,encoded1,encoded2,encoded3,encoded4;
assign encoded0[8:0] = outboothenc[8:0];
assign encoded1[8:0] = outboothenc[18:10];
assign encoded2[8:0] = outboothenc[28:20];
assign encoded3[8:0] = outboothenc[38:30];
assign encoded4[8:0] = outboothenc[48:40];

generate
	genvar i;
	for (i = 0; i < 5;i++)
		MUXBE boothenc('0,A2,Ax2,mA,mAx2,B_expanded[(2+i*2):i*2],outboothenc[(9+10*i):(10*i)]);
endgenerate

//Allocation of the Wallace Tree
WT3v2 wallTree(encoded0,encoded1,encoded2,encoded3,encoded4,outboothenc[9],outboothenc[19],outboothenc[29],outboothenc[39],M);

endmodule
