module memory(clk,reset,address,data_in,data_out,rwn,start,ready,address_test1,address_test2,address_test3,data_test1,data_test2,data_test3);
	input clk,reset,start,rwn;
	input [31:0] address,address_test1,address_test2,address_test3;
	input [31:0] data_in;
	output [31:0] data_test1,data_test2,data_test3;
	output reg [31:0] data_out;
	output ready;
	reg [7:0] array[255:0];
	reg state;
	reg [15:0] ad_t;
	reg [31:0] data_t;
	reg [1:0] counter;
	reg rwn_t;
	integer i;
	assign ready=~state;
	assign data_test1={array[address_test1[15:0]+3][7:0], array[address_test1[15:0]+2][7:0], array[address_test1[15:0]+1][7:0], array[address_test1[15:0]][7:0]};
	assign data_test2={array[address_test2[15:0]+3][7:0], array[address_test2[15:0]+2][7:0], array[address_test2[15:0]+1][7:0], array[address_test2[15:0]][7:0]};
	assign data_test3={array[address_test3[15:0]+3][7:0], array[address_test3[15:0]+2][7:0], array[address_test3[15:0]+1][7:0], array[address_test3[15:0]][7:0]};
	always @(posedge clk or posedge reset)
	begin
		if(reset) begin
			/**    main    **/
			array[0]  <= 8'h10;
			array[1]  <= 8'h00;
			array[2]  <= 8'h10;
			array[3]  <= 8'h0A;
			array[4]  <= 8'h5F;
			array[5]  <= 8'h10;
			array[6]  <= 8'h01;
			array[7]  <= 8'h60;
			array[8]  <= 8'h10;
			array[9]  <= 8'h01;
			array[10]  <= 8'h64;
			array[11]  <= 8'h99;
			array[12]  <= 8'h03;
			array[13]  <= 8'hA7;
			array[14]  <= 8'hF5;
			
			array[48] <= 8'b0000_0000;
			array[49] <= 8'b0000_0000;
			array[50] <= 8'b0000_0000;
			array[51] <= 8'b0000_0000;
			array[52] <= 8'b0000_0000;
			array[53] <= 8'b0000_0000;
			array[54] <= 8'b0000_0000;
			array[55] <= 8'b0000_0000;
			array[56] <= 8'b0000_0000;
			array[57] <= 8'b0000_0000;
			array[58] <= 8'b0000_0000;
			array[59] <= 8'b0000_0000;
			array[60] <= 8'b0000_0000;
			array[61] <= 8'b0000_0000;
			array[62] <= 8'b0000_0000;
			array[63] <= 8'b0000_0000;
			
			array[64] <= 8'h00;
			array[65] <= 8'h00;
			array[66] <= 8'h00;  
			array[67] <= 8'h00;
			
			array[68] <= 8'h00;
			array[69] <= 8'h00;
			array[70] <= 8'h00;
			array[71] <= 8'h00;
			
			array[72] <= 8'h00;
			array[73] <= 8'h00;
			array[74] <= 8'h00;
			array[75] <= 8'h00;
			
			array[76] <= 8'h10;
			array[77] <= 8'h00;
			array[78] <= 8'h00;
			array[79] <= 8'h00;
			
			array[80] <= 8'b0000_0000;
			array[81] <= 8'b0000_0000;
			array[82] <= 8'b0000_0000;
			array[83] <= 8'b0000_0000;
			array[84] <= 8'b0000_0000;
			array[85] <= 8'b0000_0000;
			array[86] <= 8'b0000_0000;
			array[87] <= 8'b0000_0000;
			array[88] <= 8'b0000_0000;
			array[89] <= 8'b0000_0000;
			array[90] <= 8'b0000_0000;
			array[91] <= 8'b0000_0000;
			array[92] <= 8'b0000_0000;
			array[93] <= 8'b0000_0000;
			array[94] <= 8'b0000_0000;
			array[95] <= 8'b0000_0000;
			array[96] <= 8'b0000_0000;
			array[97] <= 8'b0000_0000;
			array[98] <= 8'b0000_0000;
			array[99] <= 8'b0000_0000;
			array[100] <= 8'b0000_0000;
			array[101] <= 8'b0000_0000;
			array[102] <= 8'b0000_0000;
			array[103] <= 8'b0000_0000;
			array[104] <= 8'b0000_0000;
			array[105] <= 8'b0000_0000;
			array[106] <= 8'b0000_0000;
			array[107] <= 8'b0000_0000;
			array[108] <= 8'b0000_0000;
			array[109] <= 8'b0000_0000;
			array[110] <= 8'b0000_0000;
			array[111] <= 8'b0000_0000;
			array[112] <= 8'b0000_0000;
			array[113] <= 8'b0000_0000;
			array[114] <= 8'b0000_0000;
			array[115] <= 8'b0000_0000;
			array[116] <= 8'b0000_0000;
			array[117] <= 8'b0000_0000;
			array[118] <= 8'b0000_0000;
			array[119] <= 8'b0000_0000;
			array[120] <= 8'b0000_0000;
			array[121] <= 8'b0000_0000;
			array[122] <= 8'b0000_0000;
			array[123] <= 8'b0000_0000;
			array[124] <= 8'b0000_0000;
			array[125] <= 8'b0000_0000;
			array[126] <= 8'b0000_0000;
			array[127] <= 8'b0000_0000;
			array[128] <= 8'h28; 
			array[129] <= 8'h29;
			array[130] <= 8'h30;
			array[131] <= 8'h31;
			// var 1
			array[132] <= 8'h11;
			array[133] <= 8'h11;
			array[134] <= 8'h11;
			array[135] <= 8'h11;
			
			// var 2
			array[136] <= 8'h22;
			array[137] <= 8'h22;
			array[138] <= 8'h22;
			array[139] <= 8'h22;
			
			// var 3
			array[140] <= 8'h12;
			array[141] <= 8'h34;
			array[142] <= 8'h56;
			array[143] <= 8'hAD;
			
			// var 4
			array[144] <= 8'b0000_0000;
			array[145] <= 8'b0000_0000;
			array[146] <= 8'b0000_0000;
			array[147] <= 8'b0000_0000;
			
			array[148] <= 8'b0000_0000;
			array[149] <= 8'b0000_0000;
			array[150] <= 8'b0000_0000;
			array[151] <= 8'b0000_0000;
			
			/**    dev0    **/
			array[152] <= 8'h09;
			array[153] <= 8'h10;
			array[154] <= 8'h01;
			array[155] <= 8'h60;
			array[156] <= 8'h49;
			
			array[157] <= 8'b0000_0000;
			array[158] <= 8'b0000_0000;
			array[159] <= 8'b0000_0000;
			
			/**    dev1    **/
			array[160] <= 8'h09;
			array[161] <= 8'h59;
			array[162] <= 8'h49;
			
			array[163] <= 8'b0000_0000;
			array[164] <= 8'b0000_0000;
			array[165] <= 8'b0000_0000;
			array[166] <= 8'b0000_0000;
			array[167] <= 8'b0000_0000;
			
			/**    dev2    **/
			array[168] <= 8'h10;
			array[169] <= 8'h03;
			array[170] <= 8'h10;
			array[171] <= 8'h02;
			array[172] <= 8'h64;
			array[173] <= 8'h09;
			array[174] <= 8'h49;
			
			array[175] <= 8'b0000_0000;
			array[176] <= 8'b0000_0000;
			array[177] <= 8'b0000_0000;
			array[178] <= 8'b0000_0000;
			array[179] <= 8'b0000_0000;
			array[180] <= 8'b0000_0000;
			array[181] <= 8'b0000_0000;
			array[182] <= 8'b0000_0000;
			array[183] <= 8'b0000_0000;
			array[184] <= 8'b0000_0000;
			array[185] <= 8'b0000_0000;
			array[186] <= 8'b0000_0000;
			array[187] <= 8'b0000_0000;
			array[188] <= 8'b0000_0000;
			array[189] <= 8'b0000_0000;
			array[190] <= 8'b0000_0000;
			array[191] <= 8'b0000_0000;
			
			/*** STACK **/
			array[192] <= 8'b0000_0000;
			array[193] <= 8'b0000_0000;
			array[194] <= 8'b0000_0000;
			array[195] <= 8'b0000_0000;
			array[196] <= 8'b0000_0000;
			array[197] <= 8'b0000_0000;
			array[198] <= 8'b0000_0000;
			array[199] <= 8'b0000_0000;
			array[200] <= 8'b0000_0000;
			array[201] <= 8'b0000_0000;
			array[202] <= 8'b0000_0000;
			array[203] <= 8'b0000_0000;
			array[204] <= 8'b0000_0000;
			array[205] <= 8'b0000_0000;
			array[206] <= 8'b0000_0000;
			array[207] <= 8'b0000_0000;
			array[208] <= 8'b0000_0000;
			array[209] <= 8'b0000_0000;
			array[210] <= 8'b0000_0000;
			array[211] <= 8'b0000_0000;
			array[212] <= 8'b0000_0000;
			array[213] <= 8'b0000_0000;
			array[214] <= 8'b0000_0000;
			array[215] <= 8'b0000_0000;
			array[216] <= 8'b0000_0000;
			array[217] <= 8'b0000_0000;
			array[218] <= 8'b0000_0000;
			array[219] <= 8'b0000_0000;
			array[220] <= 8'b0000_0000;
			array[221] <= 8'b0000_0000;
			array[222] <= 8'b0000_0000;
			array[223] <= 8'b0000_0000;
			array[224] <= 8'b0000_0000;
			array[225] <= 8'b0000_0000;
			array[226] <= 8'b0000_0000;
			array[227] <= 8'b0000_0000;
			array[228] <= 8'b0000_0000;
			array[229] <= 8'b0000_0000;
			array[230] <= 8'b0000_0000;
			array[231] <= 8'b0000_0000;
			array[232] <= 8'b0000_0000;
			array[233] <= 8'b0000_0000;
			array[234] <= 8'b0000_0000;
			array[235] <= 8'b0000_0000;
			array[236] <= 8'b0000_0000;
			array[237] <= 8'b0000_0000;
			array[238] <= 8'b0000_0000;
			array[239] <= 8'b0000_0000;
			
			array[240] <= 8'h00;
			array[241] <= 8'h00;
			array[242] <= 8'h00;
			array[243] <= 8'h00;
			array[244] <= 8'h00;
			array[245] <= 8'h00;
			array[246] <= 8'h00;
			array[247] <= 8'h00;
			array[248] <= 8'h00;
			array[249] <= 8'h00;
			array[250] <= 8'h00;
			array[251] <= 8'h00;
			
			array[252] <= 8'b0000_0000;
			array[253] <= 8'b0000_0000;
			array[254] <= 8'b0000_0000;
			array[255] <= 8'b0000_0000;
			
			state=0;
		end
		else if(start & ~state) begin
			ad_t=address[15:0];
			rwn_t=rwn;
			data_t=data_in;
			counter=address[1:0];
			state=1;
		end
		else if(|counter && state)
			counter=counter-1;
		else if(state) begin
			if(rwn_t)
				data_out={array[ad_t+3], array[ad_t+2], array[ad_t+1], array[ad_t]};
			else begin
				array[ad_t]   <= data_t[7:0];
				array[ad_t+1] <= data_t[15:8];
				array[ad_t+2] <= data_t[23:16];
				array[ad_t+3] <= data_t[31:24];
			end
			state=0;
		end
	end
endmodule
