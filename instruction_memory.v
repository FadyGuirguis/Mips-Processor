module instruction_memory(out, read);

input [9:0] read;

output [31:0] out;

reg [7:0] arr [0:1023];

integer i;

initial 
begin
	for(i = 0; i < 1024; i = i + 1)
	begin
		arr[i] = 0;
	end
	//arr[0] = 8'b101011_00;
	//arr[1] = 8'b010_00001;
	//arr[2] = 8'b00000_000;
	//arr[3] = 8'b00_000000;

	
	//arr[4] = 8'b000000_00;
	//arr[5] = 8'b011_00011;
	//arr[6] = 8'b00011_000;
	//arr[7] = 8'b10_000000;
	
	//arr[8]= 8'b000000_00;
	//arr[9] = 8'b101_00100;
	//arr[10] = 8'b00110_000;
	//arr[11] = 8'b00_100010;
	
	//arr[12] = 8'b100011_00;
	//arr[13] = 8'b010_00111;
	//arr[14] = 8'b0000_0000;
	//arr[15] = 8'b0000_0000;
	
	arr[0] = 8'b001000_00;
	arr[1] = 8'b001_00001;
	arr[2] = 8'b0000_0000;
	arr[3] = 8'b0000_0001;
	
	arr[4] = 8'b000000_11;
	arr[5] = 8'b111_11111;
	arr[6] = 8'b11110_000;
	arr[7] = 8'b00_100000;
	
	arr[8] = 8'b000000_11;
	arr[9] = 8'b111_11111;
	arr[10] = 8'b11110_000;
	arr[11] = 8'b00_100000;
	
	arr[12] = 8'b000100_00;
	arr[13] = 8'b001_00010;
	arr[14] = 8'b1111_1111;
	arr[15] = 8'b1111_1100;
	
	arr[16] = 8'b000000_11;
	arr[17] = 8'b111_11111;
	arr[18] = 8'b11110_000;
	arr[19] = 8'b00_100000;
	
	arr[20] = 8'b000000_11;
	arr[21] = 8'b111_11111;
	arr[22] = 8'b11110_000;
	arr[23] = 8'b00_100000;
	
	arr[24] = 8'b000000_11;
	arr[25] = 8'b111_11111;
	arr[26] = 8'b11110_000;
	arr[27] = 8'b00_100000;
	
	arr[28] = 8'b000000_11;
	arr[29] = 8'b111_11111;
	arr[30] = 8'b11110_000;
	arr[31] = 8'b00_100000;
	
	arr[32] = 8'b000000_00;
	arr[33] = 8'b011_00100;
	arr[34] = 8'b00101_000;
	arr[35] = 8'b00_100000;
	
end
assign out = {arr[read], arr[read + 1], arr[read + 2], arr[read + 3]};

endmodule
	
