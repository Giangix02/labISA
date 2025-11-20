module tb_WT ();

logic[8:0] a0_tb,a1_tb,a2_tb,a3_tb,a4_tb;
logic c0_tb,c1_tb,c2_tb,c3_tb;
logic[15:0] o_tb;

WT3 UUT(a0_tb,a1_tb,a2_tb,a3_tb,a4_tb,c0_tb,c1_tb,c2_tb,c3_tb,o_tb);
initial begin
#0
a0_tb = 511;
a1_tb = 511;
a2_tb = 511;
a3_tb = 511; 
a4_tb = 511;
c0_tb = 1'b1;
c1_tb = 1'b1;
c2_tb = 1'b1;
c3_tb = 1'b1;
end
endmodule
