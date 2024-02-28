module tb_add;
parameter WIDTH = 32;
reg [WIDTH-1:0] in1;
reg [WIDTH-1:0] in2;
wire [WIDTH-1:0] out;

add
#(
	.WIDTH		        (WIDTH	   )
)
inst_add
(
.in1 (in1),
.in2 (in2),
.out (out)
);

initial 
begin 
	$dumpfile("wave.vcd");
	$dumpvars(0, tb_add);
	
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