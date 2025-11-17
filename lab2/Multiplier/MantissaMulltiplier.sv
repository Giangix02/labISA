module MantissaMultiplier
( input logic[6:0] A,B
	output logic[13:0] M
	);
	
//Precalculated inputs
logic[6:0] Ax2,mA,mAx2;
assign Ax2 = A << 2;
assign mA = ~A;
assign mAx2 = ~Ax2;

//expanded B vector
logic[8:0] B_expanded;
assign B_expanded[8] = 0;
assign B_expanded[0] = 0;
assign B_expanded[7:1] = B[6:0]

//Allocation of the boothencoder multiplexers
logic[27:0] outboothenc; 
logic[6:0] encoded0,encoded1,encoded2,encoded3;
	genvar i;
	for (i = 0, i < 5,i++)
		MUXBE boothenc(7'b0,A,Ax2,mA,mAx2,B_expanded[(3+i*2):i*2],outboothenc[(6+7*i):(7*i)];
endgenerate
assign encoded0[6:0] = outboothenc[6:0];
assign encoded1[6:0] = outboothenc[13:7];
assign encoded2[6:0] = outboothenc[20:14];
assign encoded3[6:0] = outboothenc[27:21];
