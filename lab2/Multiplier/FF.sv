module FF
(
input logic CLK ,
input logic D ,
input logic RSTn ,
output logic Q
) ;
always @ ( posedge CLK )
if (RSTn == 0)
    q <=  0;
else
    q <= d ;
endmodule