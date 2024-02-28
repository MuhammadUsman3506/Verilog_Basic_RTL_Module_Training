module full_adder
(
input in0,
input in1,
input in2,
output sum,
output carry
);

wire sum1;
wire carry1, carry2;



half_adder inst0
(
.in0	(in0),
.in1    (in1),
.sum    (sum1),
.carry  (carry1)
);

half_adder inst1
(
.in0	(sum1),
.in1    (in2),
.sum    (sum),
.carry  (carry2)
);

assign carry = carry1 | carry2;

endmodule