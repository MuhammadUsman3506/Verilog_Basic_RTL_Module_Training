module tb_half_adder;
reg in0, in1;
wire sum, carry;

localparam period = 20;

half_adder inst_half_adder
(
.in0(in0), 
.in1(in1), 
.sum(sum), 
.carry(carry)
);

initial 
begin 
    $dumpfile("half_adder_wave.vcd");
	$dumpvars(0, tb_half_adder);
	in0 = 0;
	in1 = 0;
	#period;
	in0 = 0;
	in1 = 1;
	#period;
	in0 = 1;
	in1 = 0;
	#period;
	in0 = 1;
	in1 = 1;
	#period;
	in0 = 0;
	in1 = 1;
	#period;
	in0 = 0;
	in1 = 0;
	#period;
	
$finish;
   
	
end	
endmodule
