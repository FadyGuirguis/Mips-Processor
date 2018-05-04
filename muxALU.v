module muxALU (forwardOut, register, EXMEM, MEMWB, forward);

input [31:0] register, EXMEM, MEMWB;
input [1:0] forward;

output reg [31:0] forwardOut;

always @ (register, EXMEM, MEMWB, forward)
begin
	if(forward == 0)
		forwardOut = register;
	else if(forward == 1)
		forwardOut = MEMWB;
	else if(forward == 2)
		forwardOut = EXMEM;
end

endmodule
