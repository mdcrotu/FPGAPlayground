`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:07 05/03/2009 
// Design Name: 
// Module Name:    sign_mag_add 
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
//   -7 = 1111
//   -6 = 1110
//   -5 = 1101
//   -4 = 1100
//   -3 = 1011
//   -2 = 1010
//   -1 = 1001
//    0 = 0000
//    1 = 0001
//    2 = 0010
//    3 = 0011
//    4 = 0100
//    5 = 0101
//    6 = 0110
//    7 = 0111
//
//////////////////////////////////////////////////////////////////////////////////
module sign_mag_add
	#(
		parameter N=4
	)
	(
		input wire [N-1:0] a, b,
		output reg [N-1:0] sum
    );

	// signal declarations
	reg [N-2:0] mag_a, mag_b, mag_sum, max, min;
	reg sign_a, sign_b, sign_sum;
	
	// body
	always @*
	begin
		// separate magnitude and sign
		mag_a = a[N-2:0];
		mag_b = b[N-2:0];
		sign_a = a[N-1];
		sign_b = b[N-1];

		// sort according to magnitude
		if (mag_a > mag_b)
			begin
				max = mag_a;
				min = mag_b;
				sign_sum = sign_a;
			end
		else
			begin
				max = mag_b;
				min = mag_a;
				sign_sum = sign_b;
			end
		
		// add/sub magnitude
		if (sign_a == sign_b)
			mag_sum = max + min;
		else
			mag_sum = max - min;
		
		// form output
		sum = {sign_sum, mag_sum};

	end

endmodule
