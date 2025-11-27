module HA (
    input logic A , 
    input logic B ,
    output logic Cout ,
    output logic S
) ;
assign {Cout,S} = A + B;
endmodule