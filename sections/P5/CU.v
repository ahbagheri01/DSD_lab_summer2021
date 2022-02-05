`timescale 1ns/1ns

module CU
	#(
		parameter nb = 4
	)
	(
		// control inputs
		input clk,
		input start,
		
		// control output
		output valid,
		
		// status input
		input [nb-1:0] Q,
		
		// control outputs
		output load,
		output arithmetic,
		output shift,
		output [$clog2(nb):0] shmnt
	);
	
	// one-hot FSM
	reg[3:0] cs; // holds current state
	reg[3:0] ns; // holds next state
	
	localparam	LOAD = 0,
					ARTH = 1,
					SHFT = 2,
					DONE = 3;
	
	
	// counter of remaining shifts
	reg[$clog2(nb):0] counter;
	
	// generate control outputs
	assign load = cs[LOAD];
	assign arithmetic = cs[ARTH];
	assign shift = cs[SHFT];
	assign valid = cs[DONE];
	
	// generate next state
	always @(cs, counter)
	begin
		ns <= 0;
		
		if(cs[LOAD])
			ns[ARTH] <= 1'b1;
		
		if(cs[ARTH])
			ns[SHFT] <= 1'b1;
			
		if(cs[SHFT])
			if (counter > shmnt)
				ns[ARTH] <= 1'b1;
			else
				ns[DONE] <= 1'b1;
		
		if(cs[DONE])
			ns[DONE] <= 1'b1;
	end
	
	// at clock, go to next state
	always @(posedge clk)
	begin
	
		if (start)
		begin
		
			//
			cs <= 1;
			counter <= nb;
		end
		
		else
		begin
			cs <= ns;
			
			// if old state was a shift, update counter
			if (cs[SHFT])
				counter <= counter - shmnt;
		end
		
	end
	
	// diff_pairs : determine which pair bits of Q are different
	wire [nb-1:0] diff_pairs = ( Q ^ (Q >> 1) ) | (1'b1 << (nb-1'b1));
	
	// lsb_one : position of right-most '1' bit in diff_pairs
	reg [$clog2(nb):0] lsb_one;
	
	integer i;
	always @(*)
	begin
	
		// reset lsb_one
		lsb_one = 0;
		
		// loop through pairs
		for (i = 1; i <= nb; i = i+1)
		begin
			if (diff_pairs[i-1] && !lsb_one)
				lsb_one = i;
		end
		
	end
	
	// shift amount : min(lsb_one, number of shifts left)
	assign shmnt = (counter>lsb_one) ? lsb_one : counter;
	
endmodule
