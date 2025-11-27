module MUX2
(
    input logic[3:0] A ,
    input logic[3:0] B ,
    input logic s ,
    output logic[3:0] Q
) ;
always_comb begin
    if (s == 0)
        Q = A;
    else
        Q = B;
    end 
endmodule
