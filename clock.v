`timescale 1ms/1ms

module clock(clk);
	
 	output reg clk;

	initial 
	begin 
		clk = 0;
		forever 
			#500 clk = ~clk; 
	end

endmodule
