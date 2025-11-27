//'timescale 1ns/10ps
module tb_MantMult ();

logic[7:0] A_tb,B_tb = '0;
logic[15:0] M_tb,M_ideal,diff;
int i,f;

MantissaMultiplier UUT(A_tb,B_tb,M_tb);
assign M_ideal = A_tb*B_tb;
assign diff = M_tb - M_ideal;
initial begin 
f = $fopen("./output.txt");
$fmonitor(f,"A:%d | B:%d | M:%d | Ideal_M:%d | Error:%d",A_tb,B_tb,M_tb,M_ideal,diff);
for (i = 0; i < 200; i++) begin
	#1
	A_tb = $urandom%255;
	B_tb = $urandom%255;
end
$fclose(f);
end
endmodule




