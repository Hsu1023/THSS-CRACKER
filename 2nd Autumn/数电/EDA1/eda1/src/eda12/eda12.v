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
			4'b1000: out = 7'b0000000;//8
			4'b1001: out = 7'b0010000;
			4'b1010: out = 7'b0001000;//a
			4'b1011: out = 7'b0000011;//b
			4'b1100: out = 7'b1000110;//c
			4'b1101: out = 7'b0100001;//d
			4'b1110: out = 7'b0000110;//e
			4'b1111: out = 7'b0001110;//f
			default: out = 7'b1111111;
		endcase
	end
endmodule

module clock(clk, clk_);
	input clk;
	reg [30:0] count;
	output clk_;
	always@(posedge clk)
	begin
		count = count + 1;
	end
	assign clk_ = count[15];
endmodule

module counter(clk_, seg);
	input clk_;
	output reg [2:0] seg;
	always@(posedge clk_)
	begin
		seg = seg + 1;
	end
endmodule

module gettempword(a, b, generalans, wordselector, tempword);
	input [7:0]generalans;
	input [2:0]wordselector;
	input [3:0] a, b;
	output reg [3:0]tempword;
	always@(generalans or wordselector)
	begin
		case(wordselector)
			//3'b000: tempword = (generalans/1000)%10;
			3'b000: tempword = a;
			3'b001: tempword = (generalans/100)%10;
			3'b010: tempword = (generalans/10)%10;
			3'b011: tempword = (generalans)%10;
			default: tempword = 0;
		endcase
	end
endmodule

module segselector(wordselector, segout);
	input [2:0]wordselector;
	output reg[3:0] segout;
	always@(wordselector)
	begin
		case(wordselector)
			3'b000: segout = 4'b1110;
			3'b001: segout = 4'b1101;
			3'b010: segout = 4'b1011;
			3'b011: segout = 4'b0111;
			default: segout =4'b1111;
		endcase
	end
endmodule
	
module eda12(a, b, operator, clk, signout, wordout, segout);//sign为1负
	input [3:0]	a, b;
	input	[1:0]	operator;
	input	clk;
	output signout;
	output [6:0] wordout;
	output [3:0] segout;
	 
	wire [7:0]addans, subans, mulans, generalans;
	wire [3:0]tempword;
	wire [2:0]seg;
	wire clk_;
	
	assign signout =(sign)&&(operator==2'b10);
	add32 my_add32(a, b, addans);
	sub32 my_sub32(a, b, sign, subans);
	mul16 my_mul16(a, b, mulans);
	
	operateselector my_operateselector(addans, subans, mulans, generalans, operator);//运算结果
	clock my_clock(clk, clk_);
	counter my_counter(clk_, seg);
	
	gettempword my_gettempword(a, b, generalans, seg, tempword);//获取需要显示的一个十进制数
	wordtranslator my_wordtranslator(tempword, wordout);//将十进制数转化为a-g

	segselector my_segselector(seg, segout);
	
endmodule
			