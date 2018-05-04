module main();
wire [9:0] inPC, outPC, outIncrement4, branchOutput, IFIDAddressOutput, branchOffset, EXMEMbranchOutput;
wire [31:0] instructionMemoryOutput, IFIDInstructionOutput, readData1, readData2, writeData,
offset, dataMemOut, MEMWBAluOut, MEMWBMemDataOut, regDataFinal;
wire PCSrc, regWrite, RegDst, Jump, Branch, MemtoReg,  MemWrite, ALUSrc, clk;
wire [1:0] MemRead, MemReadOut, EXMEMMemReadOut, ALUOp, forwardA, forwardB;
wire RegDstOut, JumpOut, BranchOut, MemtoRegOut, MemWriteOut, ALUSrcOut, RegWriteOut,
EXMEMBranchOut, EXMEMMemtoRegOut, EXMEMMemWriteOut,EXMEMRegWriteOut, EXMEMZeroOut, zeroResult,
MEMWBMemtoRegOut, MEMWBRegWriteOut;
wire [1:0] ALUOpOut;
wire [9:0] addressOut, sign10Out, shifterOut, EXMEMbranchInput;
wire [31:0] data1Out, data2Out, EXMEMAluOut, EXMEMReg2Out, aluIn2, aluResult, forward1Out, forward2Out;
wire [31:0] sign32Out;
wire [4:0] writeReg1Out, writeReg2Out, srcRegOut, EXMEMwriteRegOut, EXMEMwriteRegIn, MEMWBwriteRegOut;
wire [3:0] aluSelect;

clock clock(clk);
//IF
pc pc(outPC, inPC, clk);
increment4 increment4(outIncrement4, outPC);
mux10 mux10(inPC, outIncrement4, EXMEMbranchOutput, PCSrc);
instruction_memory instruction_memory(instructionMemoryOutput, outPC);
IFID IFID(IFIDAddressOutput, IFIDInstructionOutput, outIncrement4, instructionMemoryOutput, clk);

//ID
registers registers(readData1, readData2, IFIDInstructionOutput[25:21], IFIDInstructionOutput[20:16],
MEMWBwriteRegOut, regDataFinal, MEMWBRegWriteOut);
sign_extend sign_extend(offset, IFIDInstructionOutput[15:0]);
sign_extend_10 sign_extend_10(branchOffset, IFIDInstructionOutput[15:0]);
control control(RegDst, Jump, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, regWrite, IFIDInstructionOutput[31:26]);
IDEX IDEX(RegDstOut, JumpOut, BranchOut, MemReadOut, MemtoRegOut, ALUOpOut, MemWriteOut, ALUSrcOut, RegWriteOut,
addressOut,
data1Out, data2Out,
sign32Out, sign10Out,
writeReg1Out, writeReg2Out, srcRegOut,
RegDst, Jump, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, regWrite,
IFIDAddressOutput,
readData1, readData2,
offset, branchOffset,
IFIDInstructionOutput[20:16], IFIDInstructionOutput[15:11], IFIDInstructionOutput[25:21], clk);

//EX
alu_control alu_control(aluSelect, sign32Out[5:0], ALUOpOut);
left_shifter_2 left_shifter_2(shifterOut, sign10Out);
adder10 adder10 (EXMEMbranchInput, addressOut, shifterOut);
mux5 mux5 (EXMEMwriteRegIn, writeReg1Out, writeReg2Out, RegDstOut);
mux32 mux32_1 (aluIn2, forward2Out, sign32Out, ALUSrcOut);
forwardingUnit forwardingUnit(forwardA, forwardB, srcRegOut, writeReg1Out, EXMEMwriteRegOut, MEMWBwriteRegOut,
EXMEMRegWriteOut, MEMWBRegWriteOut);
muxALU muxALU_1(forward1Out, data1Out, EXMEMAluOut, regDataFinal, forwardA);
muxALU muxALU_2(forward2Out, data2Out, EXMEMAluOut, regDataFinal, forwardB);
alu alu(aluResult, zeroResult, forward1Out, aluIn2, sign32Out[10:6], aluSelect);
EXMEM EXMEM(EXMEMBranchOut, EXMEMMemReadOut, EXMEMMemtoRegOut, EXMEMMemWriteOut,EXMEMRegWriteOut,
EXMEMbranchOutput,
EXMEMZeroOut,
EXMEMAluOut,
EXMEMReg2Out,
EXMEMwriteRegOut,
BranchOut, MemReadOut, MemtoRegOut, MemWriteOut, RegWriteOut,
EXMEMbranchInput,
zeroResult,
aluResult,
data2Out,
EXMEMwriteRegIn,
clk);

//MEM
and(PCSrc, EXMEMZeroOut, EXMEMBranchOut);
dataMem dataMem(dataMemOut, EXMEMAluOut[9:0], EXMEMReg2Out, EXMEMMemWriteOut, EXMEMMemReadOut);
MEMWB MEMWB(MEMWBMemtoRegOut, MEMWBRegWriteOut,
MEMWBAluOut,
MEMWBMemDataOut,
MEMWBwriteRegOut,
EXMEMMemtoRegOut, EXMEMRegWriteOut,
clk,
EXMEMAluOut,
dataMemOut,
EXMEMwriteRegOut);

//WB
mux32 mux32_2(regDataFinal,  MEMWBAluOut, MEMWBMemDataOut, MEMWBMemtoRegOut);




endmodule