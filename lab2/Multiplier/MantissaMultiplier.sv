module MantissaMultiplier
( input logic[6:0] A,B,
	output logic[13:0] M
	);
	
//Precalculated inputs
logic[7:0] Ax2,mA,mAx2;
assign Ax2 = 8'b0;
assign mA = 8'b0;
assign mAx2 = 8'b0;
assign Ax2 = A << 1;
assign mA = ~A;
assign mAx2 = ~Ax2;

//expanded B vector
logic[8:0] B_expanded;
assign B_expanded[8] = 0;
assign B_expanded[0] = 0;
assign B_expanded[7:1] = B[6:0];

//Allocation of the boothencoder multiplexers
logic[31:0] outboothenc; 
logic[7:0] encoded0,encoded1,encoded2,encoded3;
assign encoded0[7:0] = outboothenc[7:0];
assign encoded1[7:0] = outboothenc[15:8];
assign encoded2[7:0] = outboothenc[23:16];
assign encoded3[7:0] = outboothenc[31:24];

generate
	genvar i;
	for (i = 0; i < 5;i++)
		MUXBE boothenc(7'b0,A,Ax2,mA,mAx2,B_expanded[(3+i*2):i*2],outboothenc[(7+8*i):(8*i)]);
endgenerate

//Allocation of the Wallace Tree
WALLACETREE wallTree(encoded0,encoded1,encoded2,encoded3,B_expanded[2],B_expanded[4],B_expanded[6],M);

endmodule
