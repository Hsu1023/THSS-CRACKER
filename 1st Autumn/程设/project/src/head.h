#ifndef __HEAD_H__
#define __HEAD_H__

#include<bits/stdc++.h>
#include<windows.h>

using namespace std;

struct LABEL
{
	long long name;//name用hash值表示 
	int start,end;
	void clear(){
		name=0;
		start=end=0;
	}
};//行标识 

struct STRING
{
	string s;
	int start,end;//小段字符对应行的string的首尾位置 
	long long hash;
};//每行中用' ' ','或'\n'分隔开的小段字符 

void load(int rd,int rs);
void store(int rs,int rd);
void push(int rs,int val);
void pop(int rd);
int pop();
void mov(int rd,int rs,int val);
void add(int rd,int rs1,int rs2,int val);
void sub(int rd,int rs1,int rs2,int val);
void mul(int rd,int rs1,int rs2,int val);
void div(int rd,int rs1,int rs2,int val);
void rem(int rd,int rs1,int rs2,int val);
void AND(int rd,int rs1,int rs2,int val);
void OR(int rd,int rs1,int rs2,int val);
void init();
void read();
void execute();
void write();
long long gethash(string temp,int point,int end);
long long gethash(string temp);
long long gethead(int line);
int getnumber(string x);
void WriteTXT(int x,int sum);
void WriteBMP();

#endif
