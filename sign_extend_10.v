module sign_extend_10(out, in);

input [15:0] in;
output reg [9:0] out;

always @ (in)
begin
	out = in[9:0];
end
endmodule
