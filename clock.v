`timescale 1ms/1ms

module clock(clk);
	
 	output reg clk;

	initial 
	begin 
		clk = 0;
		repeat(41)
			#250 clk = ~clk; 
	end

endmodule
