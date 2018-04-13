module alu_t();
reg [31:0] reg1, reg2;
reg [4:0] shamt;
reg [3:0] select;
wire [31:0] out;
wire zero_flag;

alu aluTest(out, zero_flag, reg1, reg2, shamt, select);

initial 
begin
reg1 = -2;
reg2 = -1;
shamt = 2;

select = 2;
$display("add");
#10 $display ("%b", out[31:0]); $display ("%d", zero_flag);	
select = 6;
$display("sub");
#10 $display ("%b", out[31:0]); $display ("%d", zero_flag);	
select = 0;
$display("and");
#10 $display ("%b", out); $display ("%d", zero_flag);	
select = 1;
$display("or");
#10 $display ("%b", out); $display ("%d", zero_flag);	
select = 7;
$display("slt");
#10 $display ("%b", out); $display ("%d", zero_flag);	
select = 8;
$display("sltu");
#10 $display ("%b", out); $display ("%d", zero_flag);	
select = 9;
$display("xor");
#10 $display ("%b", out); $display ("%d", zero_flag);	
select = 10;
$display("nor");
#10 $display ("%b", out); $display ("%d", zero_flag);	
select = 11;
$display("sll");
#10 $display ("%b", out); $display ("%d", zero_flag);	
select = 12;
$display("srl");
#10 $display ("%b", out); $display ("%d", zero_flag);	
end
endmodule
