module encoder
(
input logic [3:0] in,
output logic [1:0] out
);

logic a0;
or_gate inst_or_gate
(
.in0	(in[1]),
.in1    (in[3]),
.out    (a0)
);

logic a1;
or_gate inst_or_gate1
(
.in0	(in[2]),
.in1    (in[3]),
.out    (a1)
);

always@*
out = {a1,a0};

endmodule