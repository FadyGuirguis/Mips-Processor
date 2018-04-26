module alu(out, zero_flag, reg1, reg2, shamt, select);

output reg [31:0] out;
output reg zero_flag;
input [31:0] reg1, reg2;
input [4:0] shamt;
input [3:0] select;

always @ (out)
begin
	if (out == 0)
		zero_flag = 1;
	else
		zero_flag = 0;
end
always @ (reg1, reg2, select)
begin
	case (select)
	4'b0010: out = reg1 + reg2;//add
	4'b0110: out = reg1 - reg2; //sub
	4'b0000: out = reg1 & reg2; //and
	4'b0001: out = reg1 | reg2; //or
	4'b0111: out = $signed(reg1) < $signed(reg2); //slt
	4'b1000: out = reg1 < reg2; //sltu
	4'b1001: out = reg1 ^ reg2; //xor
	4'b1010: out = ~(reg1 | reg2); //nor
	4'b1011: out = reg2 << shamt; //sll
	4'b1100: out = reg2 >> shamt; //srl
	endcase
end

endmodule

