module sign_extend(out, in);

input [15:0] in;
output reg [31:0] out;

always @ (in)
begin
	if(in[15])
		out = {16'hffff, in};
	else
		out = {16'h0000, in};
end
endmodule