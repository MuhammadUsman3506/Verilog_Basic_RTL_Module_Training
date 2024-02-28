module tb_nand_gate;
parameter WIDTH = 32;
reg [WIDTH-1:0] in1;
reg [WIDTH-1:0] in2;
wire [WIDTH-1:0] out;

nand_gate
#(
	.WIDTH		        (WIDTH	   )
)
inst_nand_gate
(
.in1 (in1),
.in2 (in2),
.out (out)
);

initial 
begin 
	$dumpfile("wave.vcd");
	$dumpvars(0, tb_nand_gate);
	
	in1 = 0;
	in2 = 0;
	
	repeat(10)
	begin	
			stimulus();
	end
end

task stimulus();
	begin
	in1 = $urandom_range(0, 31);
	in2 = $urandom_range(0, 31);
	#5;	
	end
endtask

initial
begin
#500 $finish;
end


endmodule 