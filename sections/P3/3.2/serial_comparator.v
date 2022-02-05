module serial_comparator(input x_in, input y_in, input clk, input reset,
		output E, output L, output G);
	
	wire E_d, Ew1, Ew2, Ew3, Ew4, E_bar;
	wire L_d, Lw1, Lw2, Lw3, Lw4, L_bar;
	
	// 1 bit comparator (combinational)
	assign E_d =  reset || ((x_in ~^ y_in) & (E));
	assign L_d = !reset &&((E & y_in & (~x_in)) | L);
	
	// D-flip-flop for E (input(d): E_d, output(Q) : E)
	assign Ew1 = !(Ew4 && Ew2);
	assign Ew2 = !(Ew1 && clk);
	assign Ew3 = !(Ew2 && clk && Ew4);
	assign Ew4 = !(Ew3 && E_d);
	
	assign E   = !(Ew2 && E_bar);
	assign E_bar = !(E && Ew3);
	
	// D-flip-flop for L (input(d): E_d, output(Q) : L)
	assign Lw1 = !(Lw4 && Lw2);
	assign Lw2 = !(Lw1 && clk);
	assign Lw3 = !(Lw2 && clk && Lw4);
	assign Lw4 = !(Lw3 && L_d);
	
	assign L   = !(Lw2 && L_bar);
	assign L_bar = !(L && Lw3);
	
	// greater is when not "equal or less"
	assign G = ~(E | L);
	
endmodule
