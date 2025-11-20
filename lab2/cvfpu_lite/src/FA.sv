module FA (
    input logic A , 
    input logic B ,
	input logic Cin ,
    output logic Cout ,
    output logic S
) ;
assign {Cout,S} = A + B + Cin;
endmodule
