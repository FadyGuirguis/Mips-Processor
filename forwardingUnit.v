module forwardingUnit(forwardA, forwardB, Rs, Rt, EXMEMRd, MEMWBRd, EXMEMRegWrite, MEMWBRegWrite);

input [4:0] Rs, Rt, EXMEMRd, MEMWBRd;
input EXMEMRegWrite, MEMWBRegWrite;

output reg [1:0] forwardA, forwardB;

initial
begin
	forwardB = 2'b00;
	forwardA = 2'b00;
end

always @ (Rs, Rt, EXMEMRd, MEMWBRd, EXMEMRegWrite, MEMWBRegWrite)
begin 
	//forawardA
	if (EXMEMRegWrite & EXMEMRd > 0 & EXMEMRd == Rs)
	begin
		forwardA = 2'b10;
	end
	else if (MEMWBRegWrite & MEMWBRd > 0 & MEMWBRd == Rs)
	begin
		forwardA = 2'b01;
	end
	else
	begin
		forwardA = 2'b00;
	end

	//forawardB
	if (EXMEMRegWrite & EXMEMRd > 0 & EXMEMRd == Rt)
	begin
		forwardB = 2'b10;
	end
	else if (MEMWBRegWrite & MEMWBRd > 0 & MEMWBRd == Rt)
	begin
		forwardB = 2'b01;
	end
	else
	begin
		forwardB = 2'b00;
	end

	
end

endmodule