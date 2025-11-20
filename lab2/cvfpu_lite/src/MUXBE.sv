module MUXBE
( input logic[8:0] zero,a, a2, ma, ma2,
	input logic[2:0] sel,
	output logic[8:0] c
	);
always_comb begin
	case (sel)
	3'b000 : c = zero;
	3'b001 : c = a;
	3'b010 : c = a;
	3'b011 : c = a2;
	3'b100 : c = ma2;
	3'b101 : c = ma;
	3'b110 : c = ma;
	3'b111 : c = zero;
	endcase
end
endmodule
	
