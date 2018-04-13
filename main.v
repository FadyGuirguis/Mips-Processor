module main(out_t, zero_flag_t, instruction);

input [31:0] instruction;
wire zero_flag;
wire [31:0] out, read1, read2, imm, res;
wire [4:0] write_reg;
output [31:0] out_t;
output zero_flag_t;
wire clk, RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
wire [1:0] alu_op;
wire [3:0] select;

clock clock(clk);
control control(RegDst, Jump, Branch, MemRead, MemtoReg, alu_op, MemWrite, ALUSrc, RegWrite, instruction[31:26], clk );
sign_extend sign_extend(imm, instruction[15:0]);
mux5 mux5_1(write_reg, instruction[20:16], instruction[15:11], RegDst);
registers registers(read1, read2, instruction[25:21], instruction[20:16], write_reg, out, RegWrite);
alu_control alu_control(select, instruction[5:0], alu_op);
mux32 mux32_2(res, read2, imm, ALUSrc);
alu alu(out, zero_flag, read1, res, instruction[10:6], select);

assign out_t = out;
assign zero_flag_t = zero_flag;

endmodule