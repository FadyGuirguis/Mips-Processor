module test3();
reg [31:0] ReadData1,ReadData2;
reg [3:0] ALU_control;
wire [31:0] ALU_result;
wire ZeroFlag;

initial
begin
    
    ALU_control = 0110;
   
   #100 ReadData1 = 2;
    ReadData2 = 3;
    
    #10 $display(ALU_result);
    #10 $display(ZeroFlag);
  
    
end
test2 test2(ZeroFlag, ALU_result, ReadData1, ReadData2, ALU_control);
    
endmodule
