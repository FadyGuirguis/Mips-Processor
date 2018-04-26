module adder10(result, a, b);

input [9:0] a, b;
output reg [9:0] result;

always @ (a, b)
begin
	result = a + b;
end

endmodule
