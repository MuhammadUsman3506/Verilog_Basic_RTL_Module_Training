module or_gate 
(
	input logic in0,
	input logic in1,
	output logic out
);

always@* out = in0 | in1;

endmodule