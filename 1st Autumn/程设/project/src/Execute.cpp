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

void init()//初始化变量值及初始化指令
{
	if(fopen("output","r")==NULL) 
		system("md output");
	line_count=0;
	label_count=0;
	for(int i=0;i<1000;i++)str[i].clear();
	head_map.clear(),label_map.clear();
	memset(reg,0,sizeof reg);
	memset(reg_read,0,sizeof reg_read);
	memset(reg_write,0,sizeof reg_write);
	for(int i=0;i<1000;i++)labels[i].clear();
	for(int i=0;i<1000;i++)content[i].clear();
	memset(Stack,0,sizeof Stack);
	memset(Memory,0,sizeof Memory);
	memset(Memory_state,0,sizeof Memory_state);
	top=4194304;
	ifstack=0;
	
	head_map[gethash("load")]=-1; 
	head_map[gethash("store")]=-1; 
	head_map[gethash("push")]=-1; 
	head_map[gethash("pop")]=-1; 
	head_map[gethash("mov")]=-1; 
	head_map[gethash("add")]=-1; 
	head_map[gethash("sub")]=-1; 
	head_map[gethash("mul")]=-1; 
	head_map[gethash("div")]=-1; 
	head_map[gethash("rem")]=-1; 
	head_map[gethash("and")]=-1; 
	head_map[gethash("or")]=-1; 
	head_map[gethash("jal")]=-1; 
	head_map[gethash("beq")]=-1; 
	head_map[gethash("bne")]=-1; 
	head_map[gethash("blt")]=-1; 
	head_map[gethash("bge")]=-1; 
	head_map[gethash("call")]=-1; 
	head_map[gethash("ret")]=-1; 
	head_map[gethash("end")]=-1; 
	head_map[gethash("draw")]=-1;
	head_map[gethash("x0")]=head_map[gethash("zero")]=1;
	head_map[gethash("x1")]=head_map[gethash("ra")]=2;
	head_map[gethash("x2")]=head_map[gethash("sp")]=3;
	head_map[gethash("x3")]=head_map[gethash("gp")]=4;
	head_map[gethash("x4")]=head_map[gethash("tp")]=5;
	head_map[gethash("x5")]=head_map[gethash("t0")]=6;
	head_map[gethash("x6")]=head_map[gethash("t1")]=7;
	head_map[gethash("x7")]=head_map[gethash("t2")]=8;
	head_map[gethash("x8")]=head_map[gethash("fp")]=9;
	head_map[gethash("x9")]=head_map[gethash("s1")]=10;
	head_map[gethash("x10")]=head_map[gethash("a0")]=11;
	head_map[gethash("x11")]=head_map[gethash("a1")]=12;
	head_map[gethash("x12")]=head_map[gethash("a2")]=13;
	head_map[gethash("x13")]=head_map[gethash("a3")]=14;
	head_map[gethash("x14")]=head_map[gethash("a4")]=15;
	head_map[gethash("x15")]=head_map[gethash("a5")]=16;
	head_map[gethash("x16")]=head_map[gethash("a6")]=17;
	head_map[gethash("x17")]=head_map[gethash("a7")]=18;
	head_map[gethash("x18")]=head_map[gethash("s2")]=19;
	head_map[gethash("x19")]=head_map[gethash("s3")]=20;
	head_map[gethash("x20")]=head_map[gethash("s4")]=21;
	head_map[gethash("x21")]=head_map[gethash("s5")]=22;
	head_map[gethash("x22")]=head_map[gethash("s6")]=23;
	head_map[gethash("x23")]=head_map[gethash("s7")]=24;
	head_map[gethash("x24")]=head_map[gethash("s8")]=25;
	head_map[gethash("x25")]=head_map[gethash("s9")]=26;
	head_map[gethash("x26")]=head_map[gethash("s10")]=27;
	head_map[gethash("x27")]=head_map[gethash("s11")]=28;
	head_map[gethash("x28")]=head_map[gethash("t3")]=29;
	head_map[gethash("x29")]=head_map[gethash("t4")]=30;
	head_map[gethash("x30")]=head_map[gethash("t5")]=31;
	head_map[gethash("x31")]=head_map[gethash("t6")]=32;
}
void read()//读入部分 
{
	printf("***********************\n\n");
	printf("欢迎使用本程序!");
	printf("\n\n***********************\n\n");
	printf("若您选择运行程序自带任务文件，请键入任务编号1-4，若您选择运行自行编写文件，请键入0.\n");
	int op;scanf("%d",&op);
	string in;
	if(op)//运行程序自带任务文件 
	{
		stringstream ss;ss<<op;ss>>in;
		in="input\\"+in+".risc";
	}
	else//运行自行编写文件 
	{
		printf("\n***********************\n");
		printf("请键入输入文件地址及文件名，并以.risc格式结尾，输入结束后请键入回车\n");
		cin>>in; 
	}
	
	freopen(&in[0],"r",stdin);
	while(getline(cin,str[line_count]))line_count++;
	fclose(stdin);
}
void execute()//执行部分 
{
	for(int i=0;i<line_count;i++)//第一遍循环剖分每行 
	{
		int point=0,last=0;
		while(point<str[i].length())
		{
			while(str[i][point]!=' '&&str[i][point]!='\n'&&str[i][point]!=':'&&str[i][point]!=','&&point<str[i].length())point++;
			STRING element={str[i].substr(last,point-last),last,point-1,gethash(str[i],last,point-1)};
			content[i].push_back(element);//将每行拆成小段 
			point++;
			while((str[i][point]==' '||str[i][point]=='\n'||str[i][point]==':'||str[i][point]==',')&&point<str[i].length())point++;
			last=point;
		}
		if(head_map[content[i][0].hash]==0)//遇见未知的行标识，寻找末位 
		{
			head_map[content[i][0].hash]=-1;
			int temp_line=i+1;
			while(true)
			{
				long long temp_hash=gethead(temp_line);
				if(temp_hash==gethash("end")||temp_hash==gethash("ret")||!head_map[temp_hash])break;
				temp_line++;
			}
			labels[label_count].start=i+1;
			labels[label_count].end=temp_line;
			if(!head_map[temp_line])temp_line--;
			labels[label_count].name=content[i][0].hash;
			label_map[content[i][0].hash]=label_count;
			label_count++;
		}
	}
	
	int line=0;
	while(true)//第二遍循环模拟程序运行 
	{
		if(line>=line_count)break;
		long long hash=content[line][0].hash;
		if(hash==gethash("end"))break;
		else if(hash==gethash("draw"))
		{
			WriteBMP();//调用输出bmp函数，并清空保存的状态 
			memset(reg_read,0,sizeof reg_read);
			memset(reg_write,0,sizeof reg_write);
			memset(Memory_state,0,sizeof Memory_state);
			ifstack=false; 
			line++;
		}
		else if(hash==gethash("mov"))
		{
			int rd=head_map[content[line][1].hash]-1;
			int rs=head_map[content[line][2].hash]-1;
			if(rs==-1)mov(rd,getnumber(content[line][2].s),0);//0-imm
			else mov(rd,rs,1);//1-rs 
			line++;
		}
		else if(hash==gethash("add"))
		{
			int rd=head_map[content[line][1].hash]-1;
			int rs1=head_map[content[line][2].hash]-1;
			int rs2=head_map[content[line][3].hash]-1;
			if(rs2==-1)add(rd,rs1,getnumber(content[line][3].s),0);//0-imm
			else add(rd,rs1,rs2,1);//1-rs 
			line++;
		}
		else if(hash==gethash("sub"))
		{
			int rd=head_map[content[line][1].hash]-1;
			int rs1=head_map[content[line][2].hash]-1;
			int rs2=head_map[content[line][3].hash]-1;
			if(rs2==-1)sub(rd,rs1,getnumber(content[line][3].s),0);//0-imm
			else sub(rd,rs1,rs2,1);//1-rs 
			line++;
		}
		else if(hash==gethash("mul")) 
		{
			int rd=head_map[content[line][1].hash]-1;
			int rs1=head_map[content[line][2].hash]-1;
			int rs2=head_map[content[line][3].hash]-1;
			if(rs2==-1)mul(rd,rs1,getnumber(content[line][3].s),0);//0-imm
			else mul(rd,rs1,rs2,1);//1-rs 
			line++;
		}
		else if(hash==gethash("div"))
		{
			int rd=head_map[content[line][1].hash]-1;
			int rs1=head_map[content[line][2].hash]-1;
			int rs2=head_map[content[line][3].hash]-1;
			if(rs2==-1)div(rd,rs1,getnumber(content[line][3].s),0);//0-imm
			else div(rd,rs1,rs2,1);//1-rs 
			line++;
		}
		else if(hash==gethash("rem"))
		{
			int rd=head_map[content[line][1].hash]-1;
			int rs1=head_map[content[line][2].hash]-1;
			int rs2=head_map[content[line][3].hash]-1;
			if(rs2==-1)rem(rd,rs1,getnumber(content[line][3].s),0);//0-imm
			else rem(rd,rs1,rs2,1);//1-rs 
			line++;
		}
		else if(hash==gethash("and"))
		{
			int rd=head_map[content[line][1].hash]-1;
			int rs1=head_map[content[line][2].hash]-1;
			int rs2=head_map[content[line][3].hash]-1;
			if(rs2==-1)AND(rd,rs1,getnumber(content[line][3].s),0);//0-imm
			else AND(rd,rs1,rs2,1);//1-rs 
			line++;
		}
		else if(hash==gethash("or"))
		{
			int rd=head_map[content[line][1].hash]-1;
			int rs1=head_map[content[line][2].hash]-1;
			int rs2=head_map[content[line][3].hash]-1;
			if(rs2==-1)OR(rd,rs1,getnumber(content[line][3].s),0);//0-imm
			else OR(rd,rs1,rs2,1);//1-rs 
			line++;
		}
		
		else if(hash==gethash("push"))
		{
			int rs=head_map[content[line][1].hash]-1;
			push(rs,0);
			line++;
		}
		else if(hash==gethash("pop"))
		{
			int rd=head_map[content[line][1].hash]-1;
			pop(rd);
			line++;
		}
		
		else if(hash==gethash("load"))
		{
			int rd=head_map[content[line][1].hash]-1;
			int rs=head_map[content[line][2].hash]-1;
			load(rd,rs);
			line++;
		}
		else if(hash==gethash("store"))
		{
			int rs=head_map[content[line][1].hash]-1;
			int rd=head_map[content[line][2].hash]-1;
			store(rs,rd);
			line++;
		}
		else if(hash==gethash("jal"))
			line=labels[label_map[content[line][1].hash]].start;
		else if(hash==gethash("beq"))//等于 
		{
			int a=head_map[content[line][1].hash]-1;
			int b=head_map[content[line][2].hash]-1;
			reg_read[a]=reg_read[b]=true; 
			if(reg[a]==reg[b])
				line=labels[label_map[content[line][3].hash]].start;
			else line++;
		}
		else if(hash==gethash("bne"))//不等 
		{
			int a=head_map[content[line][1].hash]-1;
			int b=head_map[content[line][2].hash]-1;
			reg_read[a]=reg_read[b]=true; 
			if(reg[a]!=reg[b])
				line=labels[label_map[content[line][3].hash]].start;
			else line++;
		}
		else if(hash==gethash("blt"))//rs1<rs2 
		{
			int a=head_map[content[line][1].hash]-1;
			int b=head_map[content[line][2].hash]-1;
			reg_read[a]=reg_read[b]=true; 
			if(reg[a]<reg[b])
				line=labels[label_map[content[line][3].hash]].start;
			else line++;
		}
		else if(hash==gethash("bge"))//rs1>=rs2
		{
			int a=head_map[content[line][1].hash]-1;
			int b=head_map[content[line][2].hash]-1;
			reg_read[a]=reg_read[b]=true; 
			if(reg[a]>=reg[b])
				line=labels[label_map[content[line][3].hash]].start;
			else line++;
		}
		else if(hash==gethash("call"))
		{
			push(line+1,1);
			line=labels[label_map[content[line][1].hash]].start;
		}
		else if(hash==gethash("ret"))
		{
			line=pop();
		}
		else line++;//遇到某标签，执行下一行 
	}
}
void write()//txt输出部分 
{
	freopen("output//result.txt","w",stdout);
	for(int i=0;i<32;i++)WriteTXT(reg[i],8),putchar(i==31?'\n':' ');
	for(int i=0;i<4*1024*1024;i++)WriteTXT(Memory[i],2),putchar((i+1)%64?' ':'\n');
	fclose(stdout);
	fprintf (stderr,"\n***********************\n运行结束，result.txt文件和bmp文件已成功保存于output文件夹内\n");
	Sleep(500);
	fprintf (stderr,"\n窗口将于5秒后关闭:)\n***********************\n" );
	Sleep(5000);
}
