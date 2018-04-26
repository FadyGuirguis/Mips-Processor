module ALU (ZeroFlag, ALU_result, ReadData1, ReadData2, ALU_control);
    output reg [31:0] ALU_result ;
    output reg ZeroFlag;
    input [31:0] ReadData1,ReadData2;
    input [3:0] ALU_control;

    always @(ReadData1, ReadData2, ALU_control)
        begin
          case(ALU_control)
          
            0110: ALU_result <= ReadData1 - ReadData2;
            0011: ALU_result <= (ReadData1 < ReadData2) ? 1:0;
            0101: ALU_result <= ReadData1 + ReadData2;
            0000: ALU_result <= ReadData1 & ReadData2;
            0001: ALU_result <= ReadData1 | ReadData2;
            
            default: ALU_result <=200;
          endcase
        end
    always @(ReadData1, ReadData2, ALU_control)
        begin
            if (ALU_control == 0110 && ReadData1 == ReadData2) ZeroFlag <= 1;
            else ZeroFlag <= 0;
        end

endmodule



