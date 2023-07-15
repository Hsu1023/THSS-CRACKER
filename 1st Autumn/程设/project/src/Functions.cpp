#include "head.h" 

using namespace std;

extern int line_count,label_count;
extern string str[1000];
extern map<long long,int>head_map,label_map;
extern int reg[32];
extern bool reg_read[32];
extern bool reg_write[32];
extern LABEL labels[1000];
extern vector<STRING>content[1000];

extern char Stack[4*1024*1024];
extern char Memory[4*1024*1024];
extern bool Memory_state[16];
extern int top;
extern bool ifstack;

void load(int rd, int rs)
{
	int times=1;
	reg[rd]=0;
	for(int i=0; i<4; i++)
	{
		reg[rd]+=Memory[reg[rs]+i]*times;
		Memory_state[(reg[rs]+i)/262144]=true;
		times*=256;
	} 
	reg_read[rs]=true;
	reg_write[rd]=true;
	
}
void store(int rs, int rd)
{
	int temp=reg[rs];
	for(int i=0; i<4; i++)
	{
		Memory[reg[rd]+i]=temp%256;
		Memory_state[(reg[rd]+i)/262144]=true;
		temp/=256;
	}
	reg_read[rd]=true;
	reg_read[rs]=true;
}
void push(int rs,int val){//0-reg 1-imm 
	int tmp;
	if(val==0)tmp=reg[rs];
	else tmp=rs;
	for(int i=top-1;i>=top-4;i--){
		Stack[i]=tmp%256;
		tmp=tmp>>8;
	}
	top=top-4;
	ifstack=true;
	if(val==0)reg_read[rs]=true;
}
void pop(int rd){
	int tmp=0;
	for(int i=top;i<top+4;i++){
		tmp=(tmp<<8)+Stack[i];
	}
	top=top+4;
	reg[rd]=tmp;
	ifstack=true;
	reg_write[rd]=true;
}
int pop(){
	int tmp=0;
	for(int i=top;i<top+4;i++){
		tmp=(tmp<<8)+Stack[i];
	}
	top=top+4;
	ifstack=true;
	return tmp;
}
void mov(int rd,int rs,int val)
{
	if (val == 1)
	{
		reg[rd] = reg[rs];
		reg_read[rs] = true;
	}
	else reg[rd] = rs;
	reg_write[rd] = true;
}
void add(int rd,int rs1,int rs2,int val)
{
	if (val == 1)
	{
		reg[rd] = reg[rs1]+reg[rs2];
		reg_read[rs2] = true;
	}
	else reg[rd] = reg[rs1]+rs2;
	reg_read[rs1] = true;
	reg_write[rd] = true;
}
void sub(int rd,int rs1,int rs2,int val)
{
	if (val == 1)
	{
		reg[rd] = reg[rs1]-reg[rs2];
		reg_read[rs2] = true;
	}
	else reg[rd] = reg[rs1]-rs2;
	reg_read[rs1] = true;
	reg_write[rd] = true;
}
void mul(int rd,int rs1,int rs2,int val)
{
	if (val == 1)
	{
		reg[rd] = reg[rs1]*reg[rs2];
		reg_read[rs2] = true;
	}
	else reg[rd] = reg[rs1]*rs2;
	reg_read[rs1] = true;
	reg_write[rd] = true;
}
void div(int rd,int rs1,int rs2,int val)
{
	if (val == 1)
	{
		reg[rd] = reg[rs1]/reg[rs2];
		reg_read[rs2] = true;
	}
	else reg[rd] = reg[rs1]/rs2;
	reg_read[rs1] = true;
	reg_write[rd] = true;
}
void rem(int rd,int rs1,int rs2,int val){
	if (val == 1)
	{
		reg[rd] = reg[rs1]%reg[rs2];
		reg_read[rs2] = true;
	}
	else reg[rd] = reg[rs1]%rs2;
	reg_read[rs1] = true;
	reg_write[rd] = true;
}
void AND(int rd,int rs1,int rs2,int val){
	if (val == 1)
	{
		reg[rd] = reg[rs1]&reg[rs2];
		reg_read[rs2] = true;
	}
	else reg[rd] = reg[rs1]&rs2;
	reg_read[rs1] = true;
	reg_write[rd] = true;
}
void OR(int rd,int rs1,int rs2,int val){
	if (val == 1)
	{
		reg[rd] = reg[rs1]|reg[rs2];
		reg_read[rs2] = true;
	}
	else reg[rd] = reg[rs1]|rs2;
	reg_read[rs1] = true;
	reg_write[rd] = true;
}

long long gethash(string temp,int point,int end)//返回某string哈希值 
{
	long long ret=0;
	while(point<=end)ret=ret*257+temp[point++];
	return ret;
}
long long gethash(string temp)
{
	return gethash(temp,0,temp.length()-1);
}
long long gethead(int line)//返回命令头的哈希值 
{
	string temp;
	int point=0;
	while(str[line][point]!=' '&&str[line][point]!='\n'&&str[line][point]!=':'&&point<str[line].length())
	{
		temp.insert(temp.end(),str[line][point]);
		point++;
	}
	return gethash(temp);
}
int getnumber(string x)//进制转换 
{
	int ret=0;
	int length=x.length();
	if(x[1]=='x')//16
	{
		for(int i=2;i<length;i++)
		{
			int temp;
			switch(x[i])
			{
				case 'a':temp=10;break;
				case 'b':temp=11;break;
				case 'c':temp=12;break;
				case 'd':temp=13;break;
				case 'e':temp=14;break;
				case 'f':temp=15;break;
				default :temp=x[i]-'0';
			}
			ret=ret*16+temp;
		}
	}
	else
	{
		for(int i=0;i<length;i++)
			ret=ret*10+x[i]-'0';
	} 
	return ret;
}	
void WriteTXT (int x, int sum)//输出txt 
{
	char out [10];
	memset(out,0,sizeof out);
	int point = sum;
	while (x)
	{
		int temp = x % 16;
		x /= 16;
		switch(temp)
		{
			case 10 : out[point--] = 'a'; break;
			case 11 : out[point--] = 'b'; break;
			case 12 : out[point--] = 'c'; break;
			case 13 : out[point--] = 'd'; break;
			case 14 : out[point--] = 'e'; break;
			case 15 : out[point--] = 'f'; break;
			default : out[point--] = '0' + temp;
		}
	}
	if(sum==2)for(int i = 1; i <= point; i++) putchar('0');
	else if(point==sum)putchar('0');
	for(int i = point+1; i <= sum; i++) putchar(out[i]);
}
