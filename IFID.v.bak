module IFID(addressOutput, instructionOutput, addressInput, instructionInput, clk);

input [9:0] addressInput;
input [31:0] instructionInput;
input clk;
output reg [9:0] addressOutput;
output reg [31:0] instructionOutput;
reg [9:0] address;
reg [31:0] instruction;

always @ (posedge clk)
begin
	addressOutput <= address;
	instructionOutput <= instruction;
	address <= addressInput;
	instruction <= instructionInput;
end

always @ (instructionOutput)
begin
	
	$display("new address: %b", addressOutput);
	$display("new inst: %b", instructionOutput);
end
endmodule
