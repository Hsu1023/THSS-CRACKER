module add32(in1, in2, out);
	input [31:0] in1, in2;
	output [31:0] out;
	assign out = in1 + in2;
endmodule

module sub32(in1, in2, sign, out);
	input [31:0] in1, in2;
	output reg sign;
	output reg [31:0] out;
	always@(in1 or in2)
	begin
		if(in1>=in2)
		begin
			out = in1 - in2;
			sign = 0;
		end
		else 
		begin
			out = in2 - in1;
			sign = 1;
		end
	end
endmodule

module mul16(in1, in2, out);
	input [15:0] in1, in2;
	output [15:0] out;
	assign out = in1 * in2;
endmodule

module operateselector(in1, in2, in3, out, sel);
	input [31:0] in1, in2, in3;
	input [1:0] sel;
	output reg [31:0] out;
	always@(in1 or in2 or in3 or sel)
	begin
		case(sel)
			2'b01: out = in1;
			2'b10: out = in2;
			2'b11: out = in3;
			default: out = 32'b0;
		endcase
	end
endmodule

module wordtranslator(in, out);
	input [3:0] in;
	output reg [6:0] out;
	always@(in)
	begin
		case(in)
			4'b0000: out = 7'b1000000;
			4'b0001: out = 7'b1111001;
			4'b0010: out = 7'b0100100;
			4'b0011: out = 7'b0110000;
			4'b0100: out = 7'b0011001;
			4'b0101: out = 7'b0010010;
			4'b0110: out = 7'b0000010;
			4'b0111: out = 7'b1111000;
			4'b1000: out = 7'b0000000;
			4'b1001: out = 7'b0010000;
			default: out = 7'b1111111;
		endcase
	end
endmodule

module clock(clk, seg);
	input clk;
	output reg [5:0] seg;
	reg [30:0] count = 31'b0;
	always@(posedge clk)
	begin
		count = count + 1;
		if(count[16])seg = seg + 1;
	end
endmodule

module gettempword(generalans, wordselector, tempword);
	input [7:0]generalans;
	input [1:0]wordselector;
	output reg [3:0]tempword;
	always@(generalans or wordselector)
	begin
		case(wordselector)
			2'b00: tempword = (generalans/1000)%10;
			2'b01: tempword = (generalans/100)%10;
			2'b10: tempword = (generalans/10)%10;
			2'b11: tempword = (generalans)%10;
		endcase
	end
endmodule

module segselector(wordselector, segout);
	input [1:0] wordselector;
	output reg[3:0] segout;
	always@(wordselector)
	begin
		case(wordselector)
			2'b00: segout = 4'b1110;
			2'b01: segout = 4'b1101;
			2'b10: segout = 4'b1011;
			2'b11: segout = 4'b0111;
			default: segout =4'b1111;
		endcase
	end
endmodule
	
module eda10(a, b, operator, wordselector, clk, signout, wordout, segout);//sign为1负
	input [3:0]	a, b;
	input	[1:0]	operator;
	input [1:0]	wordselector;
	input	clk;
	output signout;
	output [6:0] wordout;
	output [3:0] segout;
	 
	wire [7:0]addans, subans, mulans, generalans;
	wire [3:0]tempword;
	
	assign signout =(sign)&&(operator==2'b10);//always
	
	add32 my_add32(a, b, addans);
	sub32 my_sub32(a, b, sign, subans);
	mul16 my_mul16(a, b, mulans);
	operateselector my_operateselector(addans, subans, mulans, generalans, operator);//运算结果
	gettempword my_gettempword(generalans, wordselector, tempword);//获取需要显示的一个十进制数
	wordtranslator my_wordtranslator(tempword, wordout);//将十进制数转化为a-g

	segselector my_segselector(wordselector, segout);
	
endmodule
			