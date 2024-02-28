module tb_full_adder;
reg in0;
reg in1;
reg in2;
wire sum;
wire carry;

localparam period = 50;

full_adder full_adder_inst0
(
.in0	(in0	),
.in1    (in1	),
.in2    (in2	),
.sum    (sum	),
.carry  (carry	)
);

initial begin 
	$dumpfile("full_adder_wave.vcd");
	$dumpvars(0, tb_full_adder);
	
	in0 = 0;
	in1 = 0;
	in2 = 0;
	
	#period;
	in0 = 0;
	in1 = 0;
	in2 = 0;
	
	#period;
	in0 = 0;
	in1 = 0;
	in2 = 1;
	#100;
	/*
	#period;
	in0 = 0;
    in1 = 1;
    in2 = 0;
	
    #period;
    in0 = 0;
    in1 = 1;
    in2 = 1;
	
    #period;
    in0 = 1;
    in1 = 0;
    in2 = 0;
	
    #period;
    in0 = 1;
    in1 = 0;
    in2 = 1;
	
	#period;
	in0 = 1;
	in1 = 1;
	in2 = 1;
	
    #period;
    in0 = 1;
    in1 = 1;
    in2 = 0;
	
    #period;
    in0 = 1;
    in1 = 1;
    in2 = 1;
	#period;
	#period;
	*/
	$finish;
end
endmodule