module half_adder
(
input in0,
input in1,
output sum,
output carry

);

assign sum = in0 ^ in1;
assign carry = in0 & in1;

endmodule