module IDEX(RegDstOut, JumpOut, BranchOut, MemReadOut, MemtoRegOut, ALUOpOut, MemWriteOut, ALUSrcOut, RegWriteOut,
addressOut,
data1Out, data2Out,
sign32Out, sign10Out,
writeReg1Out, writeReg2Out,
RegDstIn, JumpIn, BranchIn, MemReadIn, MemtoRegIn, ALUOpIn, MemWriteIn, ALUSrcIn, RegWriteIn,
addressIn,
data1In, data2In,
sign32In, sign10In,
writeReg1In, writeReg2In,
clk);

output reg RegDstOut, JumpOut, BranchOut, MemReadOut, MemtoRegOut, MemWriteOut, ALUSrcOut, RegWriteOut;
output reg [1:0] ALUOpOut;
output reg [9:0] addressOut, sign10Out;
output reg [31:0] data1Out, data2Out;
output reg [31:0] sign32Out;
output reg [4:0] writeReg1Out, writeReg2Out;
input RegDstIn, JumpIn, BranchIn, MemReadIn, MemtoRegIn, MemWriteIn, ALUSrcIn, RegWriteIn, clk;
input [1:0] ALUOpIn;
input [9:0] addressIn, sign10In;
input [31:0] data1In, data2In;
input [31:0] sign32In;
input [4:0] writeReg1In, writeReg2In;


always @ (posedge clk)
begin
	RegDstOut <= RegDstIn;
	JumpOut <= RegDstIn;
	BranchOut <= BranchIn;
	MemReadOut <= MemReadIn;
	MemtoRegOut <= MemtoRegIn;
	MemWriteOut <= MemWriteIn;
	ALUSrcOut <= ALUSrcIn;
	RegWriteOut <= RegWriteIn;
	ALUOpOut <= ALUOpIn;
	addressOut <= addressIn;
	sign10Out <= sign10In;
	data1Out <= data1In;
	data2Out <= data2In;
	sign32Out <= sign32In;
	writeReg1Out <= writeReg1In;
	writeReg2Out <= writeReg2In;
	
	
end

endmodule
