module tb_not_gate;
reg in;
wire out;

not_gate inst_note_gate(
.in        (in),
.out       (out)     
);


initial 
begin

    $dumpfile("wave.vcd");
	$dumpvars(0, tb_not_gate);
	
	in = 0;
	#30
	in = 0;
	#30
	in = 1;
	#30
	in = 0;
	#30
	in = 1;
	#30
	
	
$finish;
   
	
end	


endmodule 
