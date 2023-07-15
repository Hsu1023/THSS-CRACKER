
/********************防抖模块*****************************/
/*
功能：对于输入的按键和拨码开关信号进行消抖
引脚：
input clk：时钟信号
input reset：重置信号
input in：需要消抖的信号
output out：消抖后的信号
实现方法：采用计数器的方法。时钟上升沿时比较上一次上升沿的输入信号与此次的输入信号
			如果不一致则重新计数，一致则计数器加一；计数器累加到一定值，则说明输入信号在一段时间内已经稳定，
			此时可以将输入信号输出。
*/
module debounce(reset, in, clk, out);
	input in;
	input clk,reset;
	output reg out=1;
	
	parameter DELAY=50;//延迟的时钟次数
	reg [7:0]count=0;
	reg last;
	
	always@(posedge clk or posedge reset)
	begin
		if(reset)//异步重置
		begin
			count<=0;
			last<=in;
			out<=in;
		end
		else if(last!=in)//如果抖动，则重新计数
		begin
			count<=0;
			last<=in;
		end
		else if(count==DELAY)//完成计数则输出
		begin
			out<=in;
		end
		else count<=count+1;//不抖动则计数器加一
	end
endmodule

/********************分频模块*****************************/
/*
功能：将高频率的晶振信号分频至适合电路工作的低频时钟信号
引脚：
input clk：40MHz振动频率，接FPGA板时钟信号引脚
output clk_：250Hz晶振，接FPGA后续所有模块
实现方法：count每遇到一个clk上升沿则加一，count的高位即可分频
*/
module clock(clk, clk_);
	input clk;
	reg [30:0] count=0;//计数器
	output clk_;
	always@(posedge clk)
	begin
		count = count + 1;
	end
	assign clk_ = count[15];
endmodule


/********************显示模块*****************************/
/*
功能：七段式数码管译码器
引脚：
	input in：当前数码管该显示的十进制数
	output out：数字对应的七段式数码管每一段的高低电平
实现方法：对0-9九个数字进行讨论，依次给出数码管每一段高低电平
*/
module numbertranslator(in, out);
	input [3:0] in;
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
			default: out = 7'b1111111;
		endcase
	end
endmodule

/*
功能：获得当前数码管需要显示的十进制数
引脚：
	input outnumber：需要显示的最终结果（三位十进制数）
	input wordselector：该第几个数码管显示数字
	output tempnumber：当前数码管需要显示的十进制数
实现方法：利用case分支语句，对wordselector讨论以通过outnumber计算tempnumber
*/
module gettempnumber(outnumber, wordselector, tempnumber);
	input [9:0]outnumber;
	input [1:0]wordselector;
	output reg [4:0]tempnumber;
	always@(outnumber or wordselector)
	begin
		case(wordselector)
			2'b00: tempnumber = (outnumber/100)%10;//百位数
			2'b01: tempnumber = (outnumber/10)%10;//十位数
			2'b10: tempnumber = (outnumber)%10;//个位数
			default: tempnumber = 0;
		endcase
	end
endmodule

/*
功能：获得位选信号
引脚：
	input wordselector：该第几位数码管显示
	output segout：位选信号
实现方法：对wordselector进行讨论，对于每一个数码管显示的情况均给出对应的位选信号
*/
module segtranslator(wordselector, segout);
	input [1:0]wordselector;
	output reg[5:0] segout;
	always@(wordselector)
	begin
		case(wordselector)
			2'b00: segout = 6'b110111;//第1位位选信号
			2'b01: segout = 6'b101111;//第2位位选信号
			2'b10: segout = 6'b011111;//第3位位选信号
			default: segout =6'b111111;//否则都不选
		endcase
	end
endmodule

/*
counter：
功能：告知该哪一个数码管显示数字
引脚：
	input clk：时钟信号
	output wordselector：表示该第几个数码管显示数字
实现方法：两位二进制数计数器，每一个时钟信号上升沿计数器加一
*/
module counter(clk_, wordselector);
	input clk_;
	output reg [1:0] wordselector;
	always@(posedge clk_)
	begin
		wordselector = wordselector + 1;
	end
endmodule



/********************状态机模块*****************************/
/*
功能：有限状态机，处理输入，并实现状态转换
引脚：
input clk：时钟信号
input reset：重置信号
	input IN_5c：投入五元的信号
	input IN_10c：投入十元的信号
	input IN_50c：投入五十元的信号
	input OUT_15c：购买十五元商品的信号
	input OUT_25c：购买二十五元商品的信号
	output curstate：当前状态机状态
	output nextstate：状态机下一个状态
实现方法：列出状态机的各个状态（如前所述），写出状态方程、驱动方程和输出方程
			通过对当前状态和	输入信号的讨论完成状态转移。
*/
module FSM(clk, reset, IN_5c,IN_10c,IN_50c,OUT_15c,OUT_25c, curstate,nextstate);
	input clk, reset;
	input IN_5c,IN_10c,IN_50c;
	input OUT_15c,OUT_25c;
	
	parameter GOT_WAITING=0;//基础状态，等待投币或者购买信号
	parameter GOT_5c=1;//收到投入5元信号IN_5c后的状态
	parameter GOT_10c=2;//收到投入10元信号IN_5c后的状态
	parameter GOT_50c=3;//收到投入50元信号IN_5c后的状态
	parameter BUY_15c=4;//收到购买15元商品信号BUY_15c后的状态
	parameter BUY_25c=5;//收到购买25元商品信号BUY_25c后的状态
	
	output reg [2:0]curstate=0;
	output reg [2:0]nextstate=0;
	reg[2:0] state=0;//当前状态
	reg[2:0]	next=0;//下一状态
	
	//状态更新
	always@(posedge clk or posedge reset)
	begin
		if(reset) state<=GOT_WAITING;
		else state<=next;
	end
	
	//状态转移
	always@(state or IN_5c or IN_10c or IN_50c or OUT_15c or OUT_25c)
	begin
		case(state)
			GOT_WAITING:
					if(!IN_5c)next=GOT_5c;
					//当收到投入5元信号IN_5c时，跳入GOT_5c状态
					else if(!IN_10c)next=GOT_10c;
					//当收到投入10元信号IN_10c时，跳入GOT_10c状态
					else if(!IN_50c)next=GOT_50c;
					//当收到投入50元信号IN_50c时，跳入GOT_50c状态
					else if(OUT_15c)next=BUY_15c;
					//当收到购买15元商品信号GOT_15c时，跳入BUY_15c状态
					else if(OUT_25c)next=BUY_25c;
					//当收到购买25元商品信号GOT_25c时，跳入BUY_25c状态
					else next=GOT_WAITING;
					//当没有收到任何信号时，仍然保持GOT_WAITING状态
					
			GOT_5c:	if(IN_5c)next=GOT_WAITING;
						//当收到投入5元信号IN_5c时，保持GOT_5c状态
						else next=GOT_5c;			
						//当投入5元信号IN_5c消失时，跳回GOT_WAITING状态
						
			GOT_10c:	if(IN_10c)next=GOT_WAITING;
						//当收到投入10元信号IN_10c时，保持GOT_10c状态
						else next=GOT_10c;	
						//当投入10元信号IN_10c消失时，跳回GOT_WAITING状态	
						
			GOT_50c:	if(IN_50c)next=GOT_WAITING;
						//当收到投入50元信号IN_50c时，保持GOT_50c状态
						else next=GOT_50c;
						//当投入50元信号IN_50c消失时，跳回GOT_WAITING状态
						
			BUY_15c:	if(!OUT_15c)next=GOT_WAITING;
						//当收到购买15元商品信号BUY_15c时，保持BUY_15c状态
						else next=BUY_15c;
						//当购买15元商品信号BUY_15c消失时，跳回GOT_WAITING状态
						
			BUY_25c:	if(!OUT_25c)next=GOT_WAITING;
						//当收到购买25元商品信号BUY_25c时，保持BUY_25c状态
						else next=BUY_25c;
						//当购买25元商品信号BUY_25c消失时，跳回GOT_WAITING状态
						
			default:	next=GOT_WAITING;
		endcase
	end
	
	//输出逻辑
	always@(state)
	begin
		curstate<=state;
		nextstate<=next;
	end
	
endmodule

/*
功能：通过状态机状态进行余额计算并给出提醒信号
引脚：
input clk：时钟信号
input reset：重置信号
	input curstate：当前状态机状态
	input nextstate：状态机下一个状态
output success：购买成功，提醒购买者取走商品
output error：购买失败，余额不足提醒
	output clear：退币，提醒购买者取走余额
	output sum：售货机内余额
实现方法：通过对于状态机当前状态和下一个状态的讨论，完成相应的余额计算和提醒信号的任务
			其中提醒信号安排了一个计数器，当提醒亮起并持续100个时钟上升沿时，提醒熄灭。
*/
module calculator(reset,clk, curstate, nextstate, error, success,clear,sum);
	//状态的注释详见FSM
	parameter GOT_WAITING=0;
	parameter GOT_5c=1;
	parameter GOT_10c=2;
	parameter GOT_50c=3;
	parameter BUY_15c=4;
	parameter BUY_25c=5;
	
	input [2:0]curstate;
	input [2:0]nextstate;
	input reset,clk;
	reg [8:0]count=0;//提示持续事件的计数器
	output reg[9:0]sum=0;//余额
	output reg error=0;
	output reg success=0;
	output reg clear=0;
	
	always@(posedge clk or posedge reset)
	begin
		if(reset)//异步重置
		begin
			sum<=0;
			success<=0;
			error<=0;
			clear<=1;
		end
		else 
		begin
			if(nextstate==GOT_WAITING)//如果下一状态回到出态，判断当前状态
			begin
				case(curstate)
				GOT_5c: 
				begin
					if(sum>=995)error<=1;//上限
					else sum<=sum+5;//余额更新
				end
				GOT_10c: 
				begin
					if(sum>=990)error<=1;//上限
					else sum<=sum+10;//余额更新
				end
				GOT_50c:
				begin
					if(sum>=950)error<=1;//上限
					else sum<=sum+50;//余额更新
				end
				BUY_15c:
					begin
					if(sum>=15)//余额足，更新余额给提示
						begin
							sum<=sum-15;
							success<=1;
						end
						else error<=1;//余额不足给提示
					end
				BUY_25c:
					begin
						if(sum>=25)//余额足，更新余额给提示
						begin
							sum<=sum-25;
							success<=1;
						end
						else error<=1;//余额不足给提示
					end
				default://提示的计数器更新
					begin
						count<=count+1;
						if(count==200)//提示消失
						begin
							error<=0;
							success<=0;
							clear<=0;
							count<=0;
						end
					end
				endcase
			end
			else count<=0;
		end
	end

endmodule

module eda2(clk, reset, in1,in2,in3,out1,out2, error, success, clear, wordout, segout);
	input	clk, reset, in1,in2,in3,out1,out2; //时钟信号
	output [6:0] wordout;//输出的段选信号
	output [5:0] segout;//输出的位选信号
	output success, error, clear;//三个提醒信号
	
	wire [9:0]sum;//余额
	wire [1:0]wordselector;//当前显示第几位
	wire [4:0]tempnumber;//当前要显示的位数的十进制数是多少
	wire clk_;// 分频后的时钟
	wire [2:0]curstate;//当前状态机状态
	wire [2:0]nextstate;//下一个状态机状态
	wire IN_5c,IN_10c,IN_50c,OUT_15c,OUT_25c;//投币和购买的输入信号
	
	/********防抖模块*********/
	debounce in_5c(reset, in1,clk_,IN_5c);
	debounce in_10c(reset, in2,clk_,IN_10c);
	debounce in_50c(reset, in3,clk_,IN_50c);
	debounce out_15c(reset, out1,clk_,OUT_15c);
	debounce out_25c(reset, out2,clk_,OUT_25c);
	
	/********分频模块*********/
	clock my_clock(clk, clk_);
	
	/*******状态机模块********/
	FSM my_FSM(clk_, reset, IN_5c,IN_10c,IN_50c,OUT_15c,OUT_25c, curstate, nextstate);//有限状态机，处理输入，并实现状态转换
	calculator my_calculator(reset,clk_, curstate,nextstate,error,success,clear, sum);//通过状态机状态进行余额计算并给出提醒信号
	
	/*******显示模块*********/
	counter my_counter(clk_, wordselector);//时钟计数器，每次时钟上升沿wordselector计数加一
	segtranslator my_segtranslator(wordselector, segout);//将当前显示第几位转化为位选信号
	gettempnumber my_gettempnumber(sum, wordselector, tempnumber);//获取当前位需要显示的数，以十进制表示
	numbertranslator my_numbertranslator(tempnumber, wordout);//将十进制数转化为段选信号

endmodule
