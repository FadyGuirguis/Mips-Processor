module mux10(out, a, b, select);

input [9:0] a, b;
input select;

output reg [9:0] out;

always @ (a, b, select)
begin
	if(select)
		out = b;
	else
		out = a;
end
endmodule