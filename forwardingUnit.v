module forwardingUnit(forwardA, forwardB, Rs, Rt, EXMEMRd, MEMWBRd, EXMEMRegWrite, MEMWBRegWrite);

input [4:0] Rs, Rt, EXMEMRd, MEMWBRd;
input EXMEMRegWrite, MEMWBRegWrite;

output reg [1:0] forwardA, forwardB;

endmodule