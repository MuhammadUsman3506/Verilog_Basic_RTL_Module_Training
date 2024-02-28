module tb_comparator; 
parameter WIDTH 		= 4;
reg	 [WIDTH-1:0] in0;
reg  [WIDTH-1:0] in1;
wire  out;

comparator 
#(
	.WIDTH		        (WIDTH	   )
)

inst_comparator
(
.in0   (in0),
.in1   (in1),
.out   (out)
);

initial 
begin

    $dumpfile("wave.vcd");
	$dumpvars(0, tb_comparator);
	in0 = 0;
	in1 = 0;
	#30
	in0 = 4'b0001;
	in1 = 4'b0010;
	#30
	in0 = 4'b0001;
	in1 = 4'b0011;
	#30
	in0 = 4'b0011;
	in1 = 4'b0011;
	#30
	in0 = 4'b0111;
	in1 = 4'b0111;
	#30
	
$finish;
   
	
end	
endmodule