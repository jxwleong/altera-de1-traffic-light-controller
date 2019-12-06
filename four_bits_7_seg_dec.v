module four_bits_7_seg_dec(CLOCK_50,KEY,Hex3,Hex2,Hex1,Hex0,state);

	output reg [0:6] Hex3, Hex2, Hex1, Hex0;
	input  [2:0]state;
	input  CLOCK_50;
	input  [0:0] KEY;
	
	Lab4B_modified oneHzClock (CLOCK_50,KEY,clock_oneHz);
	
	always@(posedge clock_oneHz, negedge KEY)
		if (~KEY)   //reset
		begin
		Hex3 = 7'b1111111;
		Hex2 = 7'b1111111;
		Hex1 = 7'b1111111;
		Hex0 = 7'b1111111;
		end
		
		else // no reset
	case(state)
		3'b000 : 
			begin
			Hex3 = 7'b0001001;
			Hex2 = 7'b0101111;
			Hex1 = 7'b0000010;
			Hex0 = 7'b1000000;
			end
		
		3'b011 :
			begin
			Hex3 = 7'b1000110;
			Hex2 = 7'b0101111;
			Hex1 = 7'b0000010;
			Hex0 = 7'b1000000;
			end
		
		3'b010:	
			begin
			Hex3 = 7'b0010010;
			Hex2 = 7'b0000111;
			Hex1 = 7'b1000000;
			Hex0 = 7'b0001100;
			end
		default:
			begin
			Hex3 = 7'bxxxxxxx;
			Hex2 = 7'bxxxxxxx;
			Hex1 = 7'bxxxxxxx;
			Hex0 = 7'bxxxxxxx;
			end
		endcase
endmodule