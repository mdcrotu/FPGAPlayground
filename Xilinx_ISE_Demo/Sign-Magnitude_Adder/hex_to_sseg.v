//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:49 01/24/2009 
// Design Name: 
// Module Name:    hex_to_sseg
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
module hex_to_sseg
  (
   input  wire [3:0]hex,
   input  wire dp,
   output reg  [7:0]sseg // output active low
   );

   always @*
     begin              // sseg[6543210]
	case (hex)          // [abcdefg]
	  4'h0 : sseg[6:0] = 7'b0000001;
	  4'h1 : sseg[6:0] = 7'b1001111;
	  4'h2 : sseg[6:0] = 7'b0010010;
	  4'h3 : sseg[6:0] = 7'b0000110;
	  4'h4 : sseg[6:0] = 7'b1001100;
	  4'h5 : sseg[6:0] = 7'b0100100;
	  4'h6 : sseg[6:0] = 7'b0100000;
	  4'h7 : sseg[6:0] = 7'b0001111;
	  4'h8 : sseg[6:0] = 7'b0000000;
	  4'h9 : sseg[6:0] = 7'b0000100;
	  4'ha : sseg[6:0] = 7'b0001000;
	  4'hb : sseg[6:0] = 7'b1100000;
	  4'hc : sseg[6:0] = 7'b0110001;
	  4'hd : sseg[6:0] = 7'b1000010;
	  4'he : sseg[6:0] = 7'b0110000;
	  default : sseg[6:0] = 7'b0111000; // 4'hF
	  endcase // case (hex)

	sseg[7]  = dp;

     end

endmodule
