`timescale 1ms/1ms

module control_tb();

	reg [5:0] t_Instruction ;
	wire t_RegDst, t_Jump, t_Branch, t_MemRead, t_MemtoReg, t_MemWrite, t_ALUSrc, t_RegWrite;
	wire [1:0] t_ALUOp;
	wire t_clk;

	clock c(t_clk);

	control cont( t_RegDst, t_Jump, t_Branch, t_MemRead, t_MemtoReg, t_ALUOp, t_MemWrite, t_ALUSrc, t_RegWrite, t_Instruction, t_clk );
//RegDst, Jump, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite, Instruction, clk 

	initial 
	begin
		#10 t_Instruction = 6'h0;
		#10 $display("Instruction ::: ", t_Instruction ," -----RegDst: %b ",t_RegDst," Jump: %b ",t_Jump, " Branch: %b ",t_Branch, " MemRead: %b " ,t_MemRead, " MemToReg: %b ", t_MemtoReg, " MemWrite: %b ", t_MemWrite, " ALUSrc: %b ",t_ALUSrc, " RegWrite: %b ", t_RegWrite, " clk: %b ", t_clk );
		#10 t_Instruction = 6'h8;
		#10 $display("Instruction ::: ", t_Instruction ," -----RegDst: %b ",t_RegDst," Jump: %b ",t_Jump, " Branch: %b ",t_Branch, " MemRead: %b " ,t_MemRead, " MemToReg: %b ", t_MemtoReg, " MemWrite: %b ", t_MemWrite, " ALUSrc: %b ",t_ALUSrc, " RegWrite: %b ", t_RegWrite, " clk: %b ", t_clk );
		#10 t_Instruction = 6'hd; 
		#10 $display("Instruction ::: ", t_Instruction ," -----RegDst: %b ",t_RegDst," Jump: %b ",t_Jump, " Branch: %b ",t_Branch, " MemRead: %b " ,t_MemRead, " MemToReg: %b ", t_MemtoReg, " MemWrite: %b ", t_MemWrite, " ALUSrc: %b ",t_ALUSrc, " RegWrite: %b ", t_RegWrite, " clk: %b ", t_clk );
		#10 t_Instruction = 6'hc;
		#10 $display("Instruction ::: ", t_Instruction ," -----RegDst: %b ",t_RegDst," Jump: %b ",t_Jump, " Branch: %b ",t_Branch, " MemRead: %b " ,t_MemRead, " MemToReg: %b ", t_MemtoReg, " MemWrite: %b ", t_MemWrite, " ALUSrc: %b ",t_ALUSrc, " RegWrite: %b ", t_RegWrite, " clk: %b ", t_clk );
		#10 t_Instruction = 6'h4;
		#10 $display("Instruction ::: ", t_Instruction ," -----RegDst: %b ",t_RegDst," Jump: %b ",t_Jump, " Branch: %b ",t_Branch, " MemRead: %b " ,t_MemRead, " MemToReg: %b ", t_MemtoReg, " MemWrite: %b ", t_MemWrite, " ALUSrc: %b ",t_ALUSrc, " RegWrite: %b ", t_RegWrite, " clk: %b ", t_clk );
		#10 t_Instruction = 6'h23;
		#10 $display("Instruction ::: ", t_Instruction ," -----RegDst: %b ",t_RegDst," Jump: %b ",t_Jump, " Branch: %b ",t_Branch, " MemRead: %b " ,t_MemRead, " MemToReg: %b ", t_MemtoReg, " MemWrite: %b ", t_MemWrite, " ALUSrc: %b ",t_ALUSrc, " RegWrite: %b ", t_RegWrite, " clk: %b ", t_clk );
		#10 t_Instruction = 6'h2b;
		#10 $display("Instruction ::: ", t_Instruction ," -----RegDst: %b ",t_RegDst," Jump: %b ",t_Jump, " Branch: %b ",t_Branch, " MemRead: %b " ,t_MemRead, " MemToReg: %b ", t_MemtoReg, " MemWrite: %b ", t_MemWrite, " ALUSrc: %b ",t_ALUSrc, " RegWrite: %b ", t_RegWrite, " clk: %b ", t_clk );
		#10 t_Instruction = 6'h21;
		#10 $display("Instruction ::: ", t_Instruction ," -----RegDst: %b ",t_RegDst," Jump: %b ",t_Jump, " Branch: %b ",t_Branch, " MemRead: %b " ,t_MemRead, " MemToReg: %b ", t_MemtoReg, " MemWrite: %b ", t_MemWrite, " ALUSrc: %b ",t_ALUSrc, " RegWrite: %b ", t_RegWrite, " clk: %b ", t_clk );
		#10 t_Instruction = 6'h29;
		#10 $display("Instruction ::: ", t_Instruction ," -----RegDst: %b ",t_RegDst," Jump: %b ",t_Jump, " Branch: %b ",t_Branch, " MemRead: %b " ,t_MemRead, " MemToReg: %b ", t_MemtoReg, " MemWrite: %b ", t_MemWrite, " ALUSrc: %b ",t_ALUSrc, " RegWrite: %b ", t_RegWrite, " clk: %b ", t_clk );

	end
	
	initial #50000 $finish;


endmodule
