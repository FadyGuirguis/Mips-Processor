module registers(readData1, readData2, readRegister1, readRegister2, writeRegister, writeData, regWrite);

output [31:0] readData1, readData2;
input [4:0] readRegister1, readRegister2, writeRegister;
input [31:0] writeData;
input regWrite;
reg[31:0] arr [31:0];
integer i;

initial
begin
	for(i = 0; i < 32; i = i + 1)
	begin
		arr[i] = 0;
	end
	
	arr[1] = 0;
	arr[2] = 1;
	arr[3] = 1;
	arr[4] = 1;
end

assign readData1 = arr[readRegister1];
assign readData2 = arr[readRegister2];

always @ (regWrite, writeData)
begin
	if(regWrite)
		arr[writeRegister] = writeData;
	else
		arr[writeRegister] = arr[writeRegister];
end
endmodule
