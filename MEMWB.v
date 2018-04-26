module MEMWB(MemtoRegOut, RegWriteOut,
AluOut,
MemDataOut,
writeRegOut,

MemtoRegIn, RegWriteIn,
clk,
AluIn,
MemDataIn,
writeRegIn

);

output reg MemtoRegOut, RegWriteOut;
output reg [31:0] AluOut, MemDataOut;
output reg [4:0] writeRegOut;

input MemtoRegIn, RegWriteIn, clk;
input [31:0] AluIn, MemDataIn;
input [4:0] writeRegIn;

always @ (posedge clk)
begin
	
	MemtoRegOut <= MemtoRegIn;
	RegWriteOut <= RegWriteIn;
	AluOut <= AluIn;
	MemDataOut <= MemDataIn;
	writeRegOut <= writeRegIn;
	
end


endmodule