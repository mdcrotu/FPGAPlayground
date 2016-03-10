`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:47 02/07/2009 
// Design Name: 
// Module Name:    eq2_testbench 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module eq2_testbench;

	// signal declaration
	reg [1:0] test_in0, test_in1;
	wire test_out;
	
	// instantiate the circuit under test
	eq2 uut (.a(test_in0), .b(test_in1), .aeqb(test_out));
	
	// test vector generator
	initial
	begin
		// test vector 1
		test_in0 = 2'b00;
		test_in1 = 2'b00;
		# 200;
		// test vector 2
		test_in0 = 2'b01;
		test_in1 = 2'b00;
		# 200;
		// test vector 3
		test_in0 = 2'b01;
		test_in1 = 2'b11;
		# 200;
		// test vector 4
		test_in0 = 2'b10;
		test_in1 = 2'b10;
		# 200;
		// test vector 5
		test_in0 = 2'b10;
		test_in1 = 2'b00;
		# 200;
		// test vector 6
		test_in0 = 2'b11;
		test_in1 = 2'b11;
		# 200;
		// test vector 7
		test_in0 = 2'b11;
		test_in1 = 2'b01;
		# 200;
		// stop simulation
		$stop;
	end

endmodule
