module binaryToHex(binary, hex);
	input [3:0] binary;
	output [6:0] hex;
	assign hex = (binary==4'b0000) ? 7'b1000000:
	             (binary==4'b0001) ? 7'b1111001:
					 (binary==4'b0010) ? 7'b0100100:
					 (binary==4'b0011) ? 7'b0011001:
					 (binary==4'b0100) ? 7'b0010010:
					 (binary==4'b0101) ? 7'b0000010:
					 (binary==4'b0110) ? 7'b1111000:
					 (binary==4'b0111) ? 7'b0000000:
					 (binary==4'b1000) ? 7'b0010000:
					 (binary==4'b1001) ? 7'b0001000:
					 (binary==4'b1010) ? 7'b0000011:
					 (binary==4'b1011) ? 7'b1000110:
					 (binary==4'b1100) ? 7'b0100001:
					 (binary==4'b1101) ? 7'b0000110:
					 (binary==4'b1110) ? 7'b0001110:
					 (binary==4'b1111) ? 7'b1000000: 
					 7'b1111111;
endmodule 