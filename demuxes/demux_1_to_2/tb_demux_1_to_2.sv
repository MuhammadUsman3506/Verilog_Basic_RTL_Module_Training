module tb_demux_1_to_2;
parameter WIDTH = 32;
reg [WIDTH-1:0]	i_data;
reg i_sel;
wire [WIDTH-1:0] o_data0;
wire [WIDTH-1:0] o_data1;

demux_1_to_2 
#(
	.WIDTH(WIDTH)
)
inst_demux_1_to_2
(
.i_data	(i_data),
.sel	(i_sel),
.o_data0	(o_data0),
.o_data1	(o_data1)		
);

initial
begin
	$dumpfile("wave.vcd");
	$dumpvars(0,tb_demux_1_to_2);
	
	
	repeat(5)
	begin  
		stimulus();
	end
end

task stimulus();
begin
	i_data =  $urandom_range(0, 31);
	i_sel = $urandom_range(0,1);
	#5;
end
endtask

initial begin
	#500 $finish;
end

endmodule