module tb_mux_2_to_1;
parameter WIDTH = 32;
reg s_l;
reg [WIDTH-1:0] in0;
reg [WIDTH-1:0] in1;
wire [WIDTH-1:0] out;

mux_2_to_1 
#(
	.WIDTH		        (WIDTH	   )
)
inst_mux
(
.s_l    (s_l),
.in0    (in0),
.in1	(in1),    
.out    (out)

);


initial 
begin

    $dumpfile("wave.vcd");
	$dumpvars(0, tb_mux_2_to_1);
	
	s_l = 0;
	in0 = 0;
	in1 = 0;
	#50
	in0 = 32'h0000_0001;
	in1 = 32'h0000_0002;
	#50
	s_l = 1'b0;
	#50 
	s_l = 1'b1;
	#100
	
$finish;	
end	
endmodule 