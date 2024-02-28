module tb_encoder;
logic [3:0] in;
logic [1:0] out;

encoder inst_encoder
(
.in		(in),
.out	(out)
);

initial begin 
in = 0;
#5;
in = 4'b0001;
#5;
in = 4'b0010;
#5;
in = 4'b0100;
#5;
in = 4'b1000;
#10
$finish;
end
endmodule
