`timescale 1ms/1ms
module dataMem_tb();

	wire [31:0] dataOut;

	reg [9:0] address;
	reg [31:0] dataIn;
  	reg memWrite;
    	reg memRead;
    	reg clk;

	dataMem mut(dataOut, address, dataIn, memWrite, memRead, clk);


	initial 
	begin
			#10 memWrite = 1;
			dataIn = 32'h00000022;
			address = 10'b0000000010;
			memWrite = 1;
			
			#10 memWrite = 0;
			memRead = 1;
			address = 10'b0000000010;
		#10 $display("data::: %b", dataOut , " -----from address: %b", address);
		
	end
	
	initial #50000 $finish;


endmodule
