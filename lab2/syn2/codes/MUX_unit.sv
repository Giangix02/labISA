module MUX_unit
(
    input logic A ,
    input logic B ,
    input logic s ,
    output logic Q
) ;
always_comb begin
    if (s == 0)
        Q = A;
    else
        Q = B;
    end 
endmodule
