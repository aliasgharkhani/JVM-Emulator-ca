module Device(PO, handledO, trapType, interruptLevel, hasInterrupt, me, dataOut,
					PI, handledI, interrupt, clk, reset);
	parameter TRAP_TYPE = 8'b0;
	parameter PRIORITY = 4'b0;
	
	output reg [7:0] trapType, dataOut;
	output reg [3:0] interruptLevel;
	output reg hasInterrupt, PO, me, handledO;
	
	input wire PI, interrupt, handledI, clk, reset;
	
	reg [4:0] counter;
	
	always @(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			trapType <= TRAP_TYPE;
			interruptLevel <= PRIORITY;
			hasInterrupt <= 1'b0;
			PO <= 1'b0;
			me <= 1'b0;
			counter <= 5'b0000;
		end
		else
		begin
			counter <= counter + 5'b1;
			if(interrupt & ~handledI)
				hasInterrupt <= 1'b1;
			if(PI)
			begin
				PO = ~hasInterrupt;
			end
			if(handledI)
			begin
				handledO <= ~hasInterrupt;
			end
		
			me <= (~PO) & PI;
			
			if(counter[4] == 1'b0)
				dataOut <= trapType + interruptLevel;
			else
				dataOut <= trapType - interruptLevel;
				
			
			if(handledI)
				hasInterrupt <= 1'b0;
		end
	end
	
endmodule
