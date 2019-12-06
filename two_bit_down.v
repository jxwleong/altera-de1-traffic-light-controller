module two_bit_down(
		  CLOCK_50, 				//50 MHZ clock
		  KEY,				// reset
		  SW,	
		  Hex0_value,
		  Hex1_value,
		  Hex0,
	      Hex1
	      );

		input CLOCK_50;				//50 MHZ clock
		input  [0:0] KEY;				// reset
		input  [9:9] SW;	
	    input  [3:0] Hex0_value,Hex1_value;
		output [0:6] Hex0;
		output [0:6] Hex1;
	
		reg [2:0] state;
		reg [3:0] counter;           // for HEX0
		reg [3:0] counter2;			// for HEX1
		reg [3:0] cycles;
		wire clock_oneHz;
						
		Lab4B_modified oneHzClock (CLOCK_50,KEY,clock_oneHz);
		BCD_decoder_modified seven_seg1 (counter,Hex0);
		BCD_decoder_modified seven_seg2 (counter2,Hex1);

			
always@(posedge clock_oneHz, negedge KEY)
		
		if (~KEY)   //reset
		begin
		counter <= 4'd0;
		counter2 <= 4'd0;
		end
		
		else // no reset
		 if(counter == 4'd0)			// 9 to 0
			if(counter2 == 4'd0)
		    begin
			counter <= Hex0_value;
		    counter2 <= Hex1_value;
		    end

			else
			begin
			counter2 <= counter2 - 1'd1;
			counter <= counter;
			end
		 else
		 begin
		 counter <= counter - 1'd1;
		 counter2 <= counter2; 
		 end
endmodule
