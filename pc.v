module pc(out, next, clk);

input [9:0] next;
input clk;
output reg [9:0] out;

initial 
	out = 0;

always @ (posedge clk)
	out <= next;


endmodule