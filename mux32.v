module mux32(out, a, b, select);

output reg [31:0] out;
input [31:0] a, b;
input select;

always @ (select, a, b)
begin
	if (select == 0)
		out = a;
	else
		out = b;
end 

endmodule
