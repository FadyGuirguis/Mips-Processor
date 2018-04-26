/*module control(RegDst, Jump, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite, Instruction, clk );

	output reg RegDst, Jump, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite;
	input [5:0] Instruction;
	input clk;

	always @ (posedge clk)
	begin
		case (Instruction)
	end

endmodule*/
module control(RegDst, Jump, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite, Instruction);

	output reg RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
	output reg[1:0] ALUOp;
	input [5:0] Instruction;

	always @ (Instruction)
	//always @ (posedge clk)
	begin
		//R-format ---> Hex 0
		if(Instruction == 6'h0)
		begin
			RegDst = 1;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
		end

		//addi ---> Hex 8 
		else if(Instruction == 6'h8 )
		begin
			RegDst = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 0;
			MemWrite = 0;
			ALUSrc = 1;
			RegWrite = 1;
		end

		//beq ---> Hex 4 
		else if(Instruction == 6'h4 )
		begin
			RegDst = 0;
			Jump = 0;
			Branch = 1;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 1;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 0;
		end

		//lw ---> Hex 23 ,dec 35
		else if(Instruction == 6'h23 )
		begin
			RegDst = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 1;
			MemtoReg = 1;
			ALUOp = 0;
			MemWrite = 0;
			ALUSrc = 1;
			RegWrite = 1;
		end

		//sw ---> Hex 2B , dec 43
		if(Instruction == 6'h2b )
		begin
			RegDst = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 0;
			MemWrite = 1;
			ALUSrc = 1;
			RegWrite = 0;
		end

		//lh ---> Hex 21 , dec 33
		else if(Instruction == 6'h21 )
		begin
			RegDst = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 1;
			MemtoReg = 1;
			ALUOp = 0;
			MemWrite = 0;
			ALUSrc = 1;
			RegWrite = 1;
		end

		//sh ---> Hex 29, dec 41 
		else if(Instruction == 6'h29 )
		begin
			RegDst = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 0;
			MemWrite = 1;
			ALUSrc = 1;
			RegWrite = 0;
		end
		
	end

endmodule
