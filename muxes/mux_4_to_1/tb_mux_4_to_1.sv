module tb_mux_4_to_1;
parameter WIDTH = 32;
reg  [WIDTH-1:0]     i_data0;
reg  [WIDTH-1:0]     i_data1;
reg  [WIDTH-1:0]     i_data2;
reg  [WIDTH-1:0]     i_data3;
reg  [1:0]           i_sel;
wire [WIDTH-1:0]     o_data;


mux_4_to_1
#(
	.WIDTH		        	(WIDTH	    )
)

inst_mux_4_to_1
(
	.i_data0(i_data0),
	.i_data1(i_data1),
	.i_data2(i_data2),
	.i_data3(i_data3),
	.i_sel(i_sel),
	.o_data(o_data)
);

initial 
begin
    $dumpfile("wave.vcd");
	$dumpvars(0, tb_mux_4_to_1);	

	repeat (10)
		begin	
			stimulus();
		end
end

task stimulus();
	begin
		i_data0 = $urandom_range(0, 31);
		i_data1 = $urandom_range(0, 31);
		i_data2 = $urandom_range(0, 31);
		i_data3 = $urandom_range(0, 31);
		i_sel = $urandom_range(0,3);#5;
	end
endtask

initial begin
	#500 $finish;
end

endmodule