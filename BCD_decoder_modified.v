module BCD_decoder_modified(Count,							// Display output 0-9 with 4 bits binary input using case								
		 Output);
				
				
	input [3:0] Count;
	integer i; 
	output reg[0:6]Output;	
			

	
always @ (Count)				
// 0-a, 1-b, 2-c, 3-d, 4-e, 5-f, 6-g
	case (Count)
	4'b0000 : Output[0:6] = 7'b0000001;  // 0
	4'b0001 : Output[0:6] = 7'b1001111;	 // 1
	4'b0010 : Output[0:6] = 7'b0010010;	 // 2
	4'b0011 : Output[0:6] = 7'b0000110;	 // 3
	4'b0100 : Output[0:6] = 7'b1001100;  // 4	
	4'b0101 : Output[0:6] = 7'b0100100;  // 5
	4'b0110 : Output[0:6] = 7'b0100000;  // 6
	4'b0111 : Output[0:6] = 7'b0001111;  // 7
	4'b1000 : Output[0:6] = 7'b0000000;  // 8
	4'b1001 : Output[0:6] = 7'b0001100;  // 9
	endcase
	
	
endmodule


