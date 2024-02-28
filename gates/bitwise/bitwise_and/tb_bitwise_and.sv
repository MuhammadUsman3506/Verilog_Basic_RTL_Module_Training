module tb_and_gate; 

reg	  in0;
reg   in1;
wire  out;

and_gate inst_and_gate 
(
.in0   (in0),
.in1   (in1),
.out   (out)
);

initial 
begin

    $dumpfile("wave.vcd");
	$dumpvars(0, tb_and_gate);
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
	
$finish;
   
	
end	
endmodule