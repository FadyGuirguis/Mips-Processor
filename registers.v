module registers(read1, read2, reg1, reg2, write_reg, write_data, reg_write);

input [4:0] reg1, reg2, write_reg;
input [31:0] write_data;
input reg_write;

output reg [31:0] read1, read2;

reg [31:0] arr [0:31];

initial
begin
	arr[0] = 1;
	arr[1] = 2;
	arr[4] = -1;
end

always @ (reg1, reg2, write_reg, write_data, reg_write)
begin
	read1 <= arr[reg1];
	read2 <= arr[reg2];
	

	if (write_reg)
	begin
		arr[write_reg] <= write_data;
	end
		
end

endmodule
