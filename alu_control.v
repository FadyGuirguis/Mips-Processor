module alu_control(select, func, alu_op);

input [5:0] func;
input [1:0] alu_op;
output reg [3:0] select;

always @ (func, alu_op)
begin
	if (alu_op == 0)
	begin
		select = 4'b0010;
	end
	else if (alu_op[0] == 1)
	begin
		select = 4'b0110;
	end
	else
	begin
		case(func[5:0])
			6'b100000: select = 4'b0010; //add
			6'b100010: select = 4'b0110; //sub
			6'b100100: select = 4'b0000; //and
			6'b100101: select = 4'b0001; //or
			6'b101010: select = 4'b0111; //slt
			6'b101011: select = 4'b1000; //sltu
			6'b100110: select = 4'b1001; //xor
			6'b100111: select = 4'b1010; //nor
			6'b000000: select = 4'b1011; //sll
			6'b000010: select = 4'b1100; //srl
		endcase
			
	end
	
end

endmodule
