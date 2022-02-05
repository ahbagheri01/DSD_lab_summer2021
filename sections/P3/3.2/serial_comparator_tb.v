`timescale 1ns/1ns


module serial_comparator_tb;
	
	parameter num_tests = 30;
	integer i1, i2, i3, x_num, y_num;
	
	reg x_in, y_in, clk, reset;
	wire E, L, G;
	
	serial_comparator comparator(
		.x_in(x_in),
		.y_in(y_in),
		.clk(clk),
		.reset(reset),
		.E(E),
		.L(L),
		.G(G)
	);
	
	
	
	//  clock generator
	initial
	begin
		clk = 0;
		
		for (i1 = 0; i1 < num_tests * (5+1) * 2; i1 = i1+1) begin
			#100;
			clk = ~clk;
		end
	end
	
	// input generator
	initial
	begin
		
      $srandom(100);
		
		for (i2 = 0; i2 < num_tests; i2 = i2+1) begin
			
			// reset for a clock cycle
			reset = 1;
			#200
			reset = 0;
			
			// generate two 5-bit numbers
			x_num = 0;
			y_num = 0;
			
			for (i3 = 0; i3 < 5; i3 = i3+1) begin
				#50;
				x_in = $urandom_range(1,0);
				y_in = $urandom_range(1,0);
				x_num = (x_num << 1) + x_in;
				y_num = (y_num << 1) + y_in;
				#150;
			end
			
			$display("x = %5b(%2d) , y = %5b(%2d) --> E = %b , L = %b , G = %b",
				x_num, x_num, y_num, y_num, E, L, G);
			
			
		end
		
	end
	
	
endmodule
