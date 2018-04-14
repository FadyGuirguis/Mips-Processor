module dataMem(dataOut, address, dataIn, memWrite, memRead, clk);
    
	reg [7:0] memory [1023:0];

	output reg [31:0] dataOut;

	input [9:0] address;
	input [31:0] dataIn;
  	input memWrite;
    	input memRead;
    	input clk;

	integer i;
	initial 
	begin
    		for (i=0; i<1024; i=i+1)
      			memory[i] <= 8'b00000000;
  	end

	//always @(posedge clk) 
	always @(memWrite or memRead or dataIn or address)
	begin
        	if (memWrite)
		begin 
            		memory[address] <= dataIn[31:24];
			memory[address+1] <= dataIn[23:16];
			memory[address+2] <= dataIn[15:8];
			memory[address+3] <= dataIn[7:0];
		end
        	if(memRead)
		begin
        		dataOut <= {memory[address],memory[address+1],memory[address+2],memory[address+3]};
		end
    	end


endmodule
