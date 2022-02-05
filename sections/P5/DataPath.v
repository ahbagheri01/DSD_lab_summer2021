`timescale 1ns/1ns

module DataPath
	#(
		parameter nb = 4
	)
	(
		input clk,
		
		// input data
		input [nb-1:0] M_in,
		input [nb-1:0] Q_in,
		
		// output data
		output reg [nb-1:0] A,
		output reg [nb-1:0] Q,
		
		// control signals
		input load,
		input arithmetic,
		input shift,
		input [$clog2(nb):0] shmnt
	);
	
	reg [nb-1:0] M;			// Multiplicand
	reg LSB;				// Previous LSB of {A, Q}
	
	// data path logic
	always @(posedge clk)
	begin
	
	
		// if load=1, update registers
		if (load)
		begin
			 M <= M_in;
			 A <= 0;
			 Q <= Q_in;
			 LSB <= 0;
		end
		
		
		// if add/sub=1, do the math and update A
		else if (arithmetic)
		begin
			if (Q[0] == 1 && LSB == 0)
				A <= A - M;
			else if (Q[0] == 0 && LSB == 1)
				A <= A + M;
		end
		
		
		// if shift=1, signed shift right for 'shmnt' bits
		else if (shift)
		begin
			{A, Q, LSB} <= $signed({A, Q, LSB}) >>> shmnt;
		end
	end
endmodule
