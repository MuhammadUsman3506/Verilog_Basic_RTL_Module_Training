module SixToSixtyFourDecoder_TB;

    // Inputs
    reg [5:0] select;
    
    // Outputs
    wire [13:0] segments;

    // Instantiate the module
    SixToSixtyFourDecoder decoder (
        .select(select),
        .segments(segments)
    );
    
    // Stimulus generation
    initial begin
		$dumpfile("wave.vcd");
		$dumpvars(0,SixToSixtyFourDecoder_TB);
        
        // Test all possible inputs
        for (select = 0; select < 60; select = select + 1) begin
			$display("select = %d, segments = %b", select, segments);
            #10; // Wait for a few simulation time units
        end
        
		
		/*
		select = 0;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 1;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 2;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 3;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 4;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 5;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 6;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 7;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 8;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 9;
		#10;
		$display("select = %d, segments = %b", select, segments);
		select = 10;
		#10;
		$display("select = %d, segments = %b", select, segments);
        $finish; // End simulation
		*/
    end

endmodule