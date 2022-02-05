`timescale 1ns/1ns

module Booth
	#(
		parameter nb = 4
	)
	(
		input clk,
		input start,
		input [nb-1:0] M,
		input [nb-1:0] Q,
		output valid,
		output [2*nb-1:0] O
	);
	
	
	// control wires
	wire load;
	wire arithmetic;
	wire shift;
	wire [$clog2(nb):0] shmnt;
	
	// instance of DataPath
	DataPath #(.nb(nb)) dp
	(
		.clk(clk),
		.M_in(M),
		.Q_in(Q),
		.A(O[2*nb-1:nb]),
		.Q(O[nb-1:0]),
		
		.load(load),
		.arithmetic(arithmetic),
		.shift(shift),
		.shmnt(shmnt)
	);
	
	// instance of CU (Control Unit)
	CU #(.nb(nb)) cu
	(
		.clk(clk),
		.start(start),
		.valid(valid),
		
		.Q(O[nb-1:0]),
		.load(load),
		.arithmetic(arithmetic),
		.shift(shift),
		.shmnt(shmnt)
	);
	
endmodule