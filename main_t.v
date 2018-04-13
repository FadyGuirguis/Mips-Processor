`timescale 1ms/1ms

module main_t();
reg [31:0] instruction;
reg [4:0] reg1, reg2;
wire zero_flag;
wire [31:0] out;

main mainTest(out, zero_flag, instruction);

initial 
begin
instruction = 32'b00000000000000010001000000100000;
$display("result");
#10 $display ("%b", out[31:0]); $display ("%d", zero_flag);	

instruction = 32'b000000_00010_00000_00011_00000_100000; 
$display("result");
#10 $display ("%b", out[31:0]); $display ("%d", zero_flag);

instruction = 32'b001000_00100_00101_1111_1111_1111_1111;
$display("result");
#10 $display ("%b", out[31:0]); $display ("%d", zero_flag);

instruction = 32'b001000_00101_00110_0000_0000_0000_0001;
$display("result");
#10 $display ("%b", out[31:0]); $display ("%d", zero_flag);
end
endmodule
