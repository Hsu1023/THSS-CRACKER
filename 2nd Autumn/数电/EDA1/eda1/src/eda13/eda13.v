//加法器，输入in1和in2，输出二者之和
module add32(in1, in2, out);
	input [31:0] in1, in2;
	output [31:0] out;
	assign out = in1 + in2;
endmodule

//除法器，输入in1和in2，输出二者之比
module div32(in1, in2, out);
	input [31:0] in1, in2;
	output [31:0] out;
	assign out = in1 / in2;
endmodule

//减法器，输入in1和in2，输出二者之差以及结果的符号(sign为1表示结果为负；反之为正)
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

//乘法器，输入in1和in2，输出二者之积
module mul16(in1, in2, out);
	input [15:0] in1, in2;
	output [15:0] out;
	assign out = in1 * in2;
endmodule

//四选一选择器，输入四个运算的结果，选择出一个
module selector(in0, in1, in2, in3, out, operator);
	input [31:0] in0, in1, in2, in3;
	input [1:0] operator;
	output reg [31:0] out;
	always@(in1 or in2 or in3 or operator)
	begin
		case(operator)
			2'b00: out = in0;
			2'b01: out = in1;
			2'b10: out = in2;
			2'b11: out = in3;
			default: out = 32'b0;
		endcase
	end
endmodule


//分频模块，输入clk，输出分频后的时钟
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

//时钟计数器，每次时钟上升沿wordselector计数加一
module counter(clk_, wordselector);
	input clk_;
	output reg [2:0] wordselector;
	always@(posedge clk_)
	begin
		wordselector = wordselector + 1;
	end
endmodule

//位选信号，wordselector翻译成哪一位数码管低电平显示
module segtranslator(wordselector, segout);
	input [2:0]wordselector;
	output reg[5:0] segout;
	always@(wordselector)
	begin
		case(wordselector)
			3'b000: segout = 6'b111110;//第1位位选信号
			3'b001: segout = 6'b111101;//第2位位选信号
			3'b010: segout = 6'b111011;//第3位位选信号
			3'b011: segout = 6'b110111;//第4位位选信号
			3'b100: segout = 6'b101111;//第5位位选信号
			3'b101: segout = 6'b011111;//第6位位选信号
			default: segout =6'b111111;//否则都不选
		endcase
	end
endmodule

//获取当前显示的数字，输入当前要显示的位数，输出需要显示的十进制数
module gettempnumber(a, b, sign, generalans, wordselector, tempnumber);
	input [7:0]generalans;
	input [2:0]wordselector;
	input [3:0] a, b;
	input sign;
	output reg [4:0]tempnumber;
	always@(generalans or wordselector)
	begin
		case(wordselector)//（其中输出-2表示该位无显示，-1表示该位显示负号，在七段译码器处可以翻译出相应的段选信号）
			3'b000: tempnumber = a;
			3'b001: tempnumber = b;
			3'b010: tempnumber = (sign == 1? -1: -2);
			3'b011: tempnumber = (generalans/100)%10;
			3'b100: tempnumber = (generalans/10)%10;
			3'b101: tempnumber = (generalans)%10;
			default: tempnumber = -2;
		endcase
	end
endmodule


//七段显示译码器，十/十六进制数转化为段选信号
module numbertranslator(in, out);
	input [4:0] in;
	output reg [6:0] out;
	always@(in)
	begin
		case(in)
			4'b0000: out = 7'b1000000;//0
			4'b0001: out = 7'b1111001;//1
			4'b0010: out = 7'b0100100;//2
			4'b0011: out = 7'b0110000;//3
			4'b0100: out = 7'b0011001;//4
			4'b0101: out = 7'b0010010;//5
			4'b0110: out = 7'b0000010;//6
			4'b0111: out = 7'b1111000;//7
			4'b1000: out = 7'b0000000;//8
			4'b1001: out = 7'b0010000;//9
			4'b1010: out = 7'b0001000;//a
			4'b1011: out = 7'b0000011;//b
			4'b1100: out = 7'b1000110;//c
			4'b1101: out = 7'b0100001;//d
			4'b1110: out = 7'b0000110;//e
			4'b1111: out = 7'b0001110;//f
			5'b11111: out = 7'b0111111;//-（负号）
			default: out = 7'b1111111;
		endcase
	end
endmodule
	
module eda13(a, b, operator, clk, wordout, segout);
	input [3:0]	a, b;// 输入的两个计算数
	input	[1:0]	operator;// 输入的运算操作
	input	clk; //时钟信号
	output [6:0] wordout;//输出的段选信号
	output [5:0] segout;//输出的位选信号
	 
	wire [7:0]addans, subans, mulans, divans;//加减乘除的四个结果
	wire	generalans;//经过选择加减乘除中的一个结果
	wire [2:0]wordselector;//当前显示第几位
	wire [4:0]tempnumber;//当前要显示的位数的十进制数是多少
	wire clk_;// 分频后的时钟
	wire sign, signout;//sign为减法器的输出，sign为1表示结果为负数；否则正数
	assign signout =(sign)&&(operator==2'b10);//signout是整体运算结果的符号，只有当sign为1（结果为负）且运算为减法运算时，整体运算结果符号为负
	
	add32 my_add32(a, b, addans);//加法器
	sub32 my_sub32(a, b, sign, subans);//减法器
	mul16 my_mul16(a, b, mulans);//乘法器
	div32 my_div32(a, b, divans);//除法器
	
	selector my_selector(divans, addans, subans, mulans, generalans, operator);//四选一选择器，输入四个运算的结果，选择出一个
	clock my_clock(clk, clk_);//分频模块，输入clk，输出分频后的时钟
	counter my_counter(clk_, wordselector);//时钟计数器，每次时钟上升沿wordselector计数加一
	segtranslator my_segtranslator(wordselector, segout);//将当前显示第几位转化为位选信号
	
	gettempnumber my_gettempnumber(a, b, signout, generalans, wordselector, tempnumber);//获取当前位需要显示的数，以十进制表示
	numbertranslator my_numbertranslator(tempnumber, wordout);//将十进制数转化为段选信号

	
endmodule
			