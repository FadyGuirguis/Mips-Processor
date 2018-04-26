module EXMEM( BranchOut, MemReadOut, MemtoRegOut, MemWriteOut,RegWriteOut,
branchOutput,
ZeroOut,
AluOut,
Reg2Out,
writeRegOut,

BranchIn, MemReadIn, MemtoRegIn, MemWriteIn,RegWriteIn,
branchInput,
ZeroIn,
AluIn,
Reg2In,
writeRegIn,
clk
);

output reg BranchOut, MemReadOut, MemtoRegOut, MemWriteOut, RegWriteOut, ZeroOut;
output reg [9:0] branchOutput;
output reg [31:0] AluOut, Reg2Out;
output reg [4:0] writeRegOut;

input BranchIn, MemReadIn, MemtoRegIn, MemWriteIn, RegWriteIn, ZeroIn, clk;
input [9:0] branchInput;
input [31:0] AluIn, Reg2In;
input [4:0] writeRegIn;

always @ (posedge clk)
begin
	//JumpOut <= JumpIn;
	BranchOut <= BranchIn;
	MemReadOut <= MemReadIn;
	MemtoRegOut <= MemtoRegIn;
	MemWriteOut <= MemWriteIn;
	RegWriteOut <= RegWriteIn;
	ZeroOut <= ZeroIn;
	branchOutput <= branchInput;
	AluOut <= AluIn;
	Reg2Out <= Reg2In;
	writeRegOut <= writeRegIn;
	
	
end

endmodule