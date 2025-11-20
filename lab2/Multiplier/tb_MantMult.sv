//'timescale 1ns/10ps
module tb_MantMult ();

logic[7:0] A_tb,B_tb = '0;
logic[15:0] M_tb;

MantissaMultiplier UUT(A_tb,B_tb,M_tb);
initial begin 
#10;
A_tb = 13;
B_tb = 10;
#20
A_tb = 118;
B_tb = 35;
#30;
A_tb = 224;
B_tb = 224;
#40;
A_tb = 255;
B_tb = 255;
end
endmodule




