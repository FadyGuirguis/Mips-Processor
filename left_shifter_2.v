module left_shifter_2(out, in);

input [9:0] in;
output reg [9:0] out;

always @(in)
begin
	out = in << 2;
end
endmodule
