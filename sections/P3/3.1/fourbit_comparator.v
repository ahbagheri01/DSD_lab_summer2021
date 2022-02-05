module fourbit_comparator(input [3:0] a, 
	input [3:0] b, 
	output equal, 
	output greater, 
	output less);

	wire [3:0] g;
	wire [3:0] e;
	wire [3:0] l;

	onebit_comparator onebit_comparator0(a[0], b[0], e[0], g[0], l[0]);
	onebit_comparator onebit_comparator1(a[1], b[1], e[1], g[1], l[1]);
	onebit_comparator onebit_comparator2(a[2], b[2], e[2], g[2], l[2]);
	onebit_comparator onebit_comparator3(a[3], b[3], e[3], g[3], l[3]);

	assign equal = & e;
	assign greater = g[3] | (g[2] & e[3]) | (g[1] & e[3] & e[2]) | (g[0] & e[3] & e[2] & e[1]);
	assign less = ~(equal | greater);
endmodule