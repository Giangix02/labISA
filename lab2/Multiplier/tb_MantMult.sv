//'timescale 1ns/10ps
module tb_MantMult ();

logic[7:0] A_tb,B_tb = '0;
logic[15:0] M_tb,M_ideal,diff;

MantissaMultiplier UUT(A_tb,B_tb,M_tb);
assign M_ideal = A_tb*B_tb;
assign diff = A - B;
initial begin 
$monitor("The results different is: %d,diff);
#10;
A_tb = $urandom%255;
B_tb = $urandom%255;
#20
A_tb = $urandom%255;
B_tb = $urandom%255;
#30;
A_tb = $urandom%255;
B_tb = $urandom%255;
#40;
A_tb = $urandom%255;
B_tb = $urandom%255;
#50;
A_tb = $urandom%255;
B_tb = $urandom%255;
end
endmodule




