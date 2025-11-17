module FA (
    input logic A ,
    input logic B ,
    input logic Cin ,
    output logic Cout ,
    output logic S 
) ;
assig {Cout, S} = A + B + Cin:
endmodule