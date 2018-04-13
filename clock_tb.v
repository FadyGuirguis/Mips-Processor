`timescale 1ms/1ms

module clock_tb();

	wire t_clk;

	clock mut(t_clk);

	always @ (posedge t_clk or negedge t_clk)
		$display("time  ",$time, "  clk = " ,t_clk);
	
	
	initial #5000 $finish;



endmodule
