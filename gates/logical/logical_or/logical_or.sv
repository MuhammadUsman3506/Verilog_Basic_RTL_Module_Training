module or_gate 
(
	input in0,
	input in1,
	output reg out
);

always@* out = in0 | in1;

endmodule