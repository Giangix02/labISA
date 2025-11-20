module MUX3
(    input logic [10:0] A ,
    input logic [10:0] B ,
    input logic [10:0] C ,
    input logic [1:0] s ,
    output logic [10:0] Q
) ;
always_comb begin
    if (s == 2'b00)
        Q = A;
    else if (s == 2'b01)
        Q = B;
    else if (s == 2'b10)
        Q = C;
    else
        Q = C;
    end 
endmodule
