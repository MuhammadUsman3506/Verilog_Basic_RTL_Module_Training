module tb_or_op_double; 

reg	  in0;
reg   in1;
wire  out;

or_op_double inst_or_op_double 
(
.in0   (in0),
.in1   (in1),
.out   (out)
);

initial 
begin

    $dumpfile("wave.vcd");
	$dumpvars(0, tb_or_op_double);
	in0 = 0;
	in1 = 0;
	#30
	in0 = 0;
	in1 = 1;
	#30
	in0 = 1;
	in1 = 0;
	#30
	in0 = 1;
	in1 = 1;
	#30
	in0 = 0;
	in1 = 1;
	#30
	in0 = 0;
	in1 = 0;
	#30
	
$finish;
   
	
end	
endmodule