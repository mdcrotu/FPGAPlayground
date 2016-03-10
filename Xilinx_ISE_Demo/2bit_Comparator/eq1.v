//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:49 01/24/2009 
// Design Name: 
// Module Name:    eq1 
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
module eq1
	(
	input  wire i0, i1,
	output wire eq
   );

	// signal declarations
	wire p0, p1;
	
	// body
	// sum of two product terms
	assign eq = p0 | p1;
	
	// product terms
	assign p0 = ~i0 & ~i1;
	assign p1 = i0 & i1;

endmodule
