`timescale 1ns/1ns

module TestBench
	#(
		parameter nb = 8
	);
	
	reg clk;
	reg start;
	reg [nb-1:0] M;
	reg [nb-1:0] Q;
	
	wire valid;
	wire [2*nb-1:0] O;
	
	integer outputFile;
	
	Booth #(.nb(nb)) booth
	(
		.clk(clk),
		.start(start),
		.M(M),
		.Q(Q),
		.valid(valid),
		.O(O)
	);
	
	// clock generator
	initial
		clk = 1;
	always
		#5 clk = ~clk;
	
	// variable to save start-time of each test
	time start_time;
	
	// first test
	initial
	begin
		
		outputFile = $fopen("output.txt", "w");
		
		start <= 1;
		M <= 0;
		Q <= 0;
		start_time = $time;
		
		#10;
		start <= 0;
	end
	
	initial begin
		#1000000
		$fclose(outputFile);
	end
	
	// always at end of the test
		
		
	always @(posedge valid)
	begin
		// display result of previous test when it's done
		$fdisplay(outputFile, "%d, %d, %d, %0t",
				$signed(M), $signed(Q), $signed(O), $time - start_time);
		
		// generate next test
		#20;
		start <= 1;
		M <= {$random};
		Q <= {$random};
		start_time = $time;
		
		#10;
		start <= 0;
	end
		
	
endmodule
